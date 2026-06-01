Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0L3JEVdTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB77161C9FD
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6971130D9;
	Mon,  1 Jun 2026 09:39:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BWezRUTE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47601130DB;
 Mon,  1 Jun 2026 09:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306771; x=1811842771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=+Wu3xVDXY5/PE9cMtevuJPq0ITIm44L4Y3vZkDBKCD4=;
 b=BWezRUTEDQvkQOnQ2CnveQ5B977IZHyRLTYbUdsgpTxE2DrDF+Md3Jpd
 lrCjH/aGJ7EiihBLmpR7fw7waX2lloCDDmSV/oGcDsBmn5BewYsSpK3qO
 r2/8yYO6qZ11e/YDJhzVhQTK3sL4fWSijuj4fL7L6TgBek/ogxOZJkKpL
 WUao4l9fyr2CHeJNWOkDGGRS28aBdA8JMejlm9Kv4BFUWOQ8yyHkc06JH
 WU1dGTEhIVjJLDjYqHUkNVrMwB1BOlExR6vQYRrMNvFoEeCf1ryQEn25B
 DY8A/gjNfI3pemLr9ZadGh1+GxYp7DmgPXjFYKizkxMuUkLgzAy0fyYby w==;
X-CSE-ConnectionGUID: L0W2dvJLSTKiZO2wvxECoQ==
X-CSE-MsgGUID: BEkgs/9fSluyVECwJwIqRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094058"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094058"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:30 -0700
X-CSE-ConnectionGUID: uMuOqgXlR5qhCM9QZ+X1IQ==
X-CSE-MsgGUID: YrevqL0HRlmih0VoYHGf1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160624"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:30 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.59)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BZ/6LVyXTePDCUt6uPstYrMhd1otgh4khDyPwcw2txn+SP+9PfSzKUCV5OrvoZoYAVfH20Ubj7szdvrBUYgxBSfsfb1wBuyWXp5qT6gddygsYF+ldTdC6hgpo2Qlpv4tFnyq30i2U3C8sEyBCCiWt9gH+AcIcu+dTWmeJfjYYZMgtTHeq3dc4n5WnzP97773GSoXq3WVd3BjGDlI7jVUe98wnR64dPkBWUDbWRFcOiV4kQdbu9YjaDDYgbnLsfLScbLyJamNPsAhoUF5SQWAPvthg2gVCJkB7EcK7y2Z14EWXcZGo8ctovSbZ43PXftsqLn+rqUajNJNZZ2y8LpNWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Amb9lLDiW+wc31gNlOEg1JhYzGs8D04ll+SccTbeR3M=;
 b=O9RUWqDSmsZpaykmXjCghMD3kP9kUqGQblje9A+EEoqWBjIUbjId+VSjYCifYaVYcHoEHRkKVU4bOYo44cQhF8H5NvNhiHGqQy3h4AQCfOR3WSQRaF9eg0g5IwJoNH1zvuy8hIcF7HsGkb0COtTzFu+YPrq1ZbvbtEsVXil977noVP/XSqXQVuFRdV+1uBzOCXiL7JrbvE7kq1KML+DPDjkraU5kf+tAz98aFVkMdrF4Q9u9QwZnRzbAVfvHQwv6U+XaQgOvPrp18X+l9KujWE0oXbEW8y9mnwQffOh8IhekuLzxKx/pNg+ooCUY+Ytwb54Me1Y8f+JL7a5jIn5Tgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:24 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 22/22] drm/i915/dp_link_training: Document DP link recovery
 logic
Date: Mon, 1 Jun 2026 12:38:35 +0300
Message-ID: <20260601093836.3057345-23-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b828f2f-71b1-4623-56be-08debfc1aa2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|6133799003|56012099006|5023799004|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: dkfZDRiKuipda830BciP5kSsVMJsKANEJspYWZ6fD/d/CJQ/+Aoov2/N3lzhMUMwBesqB6k0pSZYCJbLjtGwOsJn8RwE2Fpx77+daOhOcEmWv0r2E1EmFPGfeEhRsoCC+NKna0SE60Jc9UDKWF6V5cl4TSWythhIhD1PskxcXju6hzQBflaJyoFEswzcFlkcPoNCE0BmXlF9kYjVPs6YgstGCNiD4H1DysnPfPWqjpRbh/AdkacDV5c3SAv6RM3xYHYpwhxjvaXYlF8eMiX3ZZpHn0F6Qj+LOi95uqieS/YWdcs+jJRX36aWsNcJ02DZnCCIII8LiQNOoJSu8YuwQnJqC+ANkAKRuVDJb/3b8evbZT82LRkZ80l9ieMUU2hXfhhHI+o3hlFG9raKngeBOjkTDDB2vTYoqM6QlQv+Egfoq2A3Zp40sUxyGzT6YSbUQnwUDbeHYHBgSQ+9YLnYO41N9OLOU3BsHEd5KdaHiF1t8bQRxUen1QwKNL6omZfgxIXZcGJ25sa+/lGrCnznex7iHMFspKA7fUxogbEU+lDzbgG81hF3lV8DQ1Hn9qsUPAE1bAsif3w6f568zaLDmB4gKrPJcGqQ6wUJOzbW7ANezOXgCXyWFirM5JKPFgDtgZ4C5xk74bgLcmvhFaDqtEht6pa77tah5wkdn376i2FUs22UqmWF7N1Q7+Oetc1N
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(6133799003)(56012099006)(5023799004)(3023799007)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Sm5VK3BkUWJxRFhIZWp5K3JDazZPZ081VndmN1ZyRkZ1U3IvQkE0Y2F3T1JV?=
 =?utf-8?B?NTJvNDNQRmI5dUNiZGMvbUJOaUQyQndvQ2xENTc2Um8rTWcwMytveUl3NkJT?=
 =?utf-8?B?TDlub2R0QmpXNExYMFN3bEgzWWZva0lGenoycFZEOHhVZFNqV282K2FZVDcv?=
 =?utf-8?B?R2FHa0cxZUg0aFMvV1pickhzWkJId0t3Mm1NclhxSVJkVXd1b01mbzNXSnBB?=
 =?utf-8?B?QnM1K1NSQi9JbEFldXZCaTBFNzVpeVM5Z0N2b3FTdzRaMW9VdkJGcjd6UFov?=
 =?utf-8?B?UGY5djhNQ2R1WlZ0d3dXYkJDQzRxRG1LMGlnek9ScjJGblJIMXZadFJ5Rm45?=
 =?utf-8?B?QWt3QURzWkoycHNlMFZkL3J3T0NnY2lYTTJSMjlYZzc1d2F4V090M2ljVFJH?=
 =?utf-8?B?ZGwyd1lqNTZGN2c3UUtZNDFVWkhjZXV5andNM0hrSnVEWXV4NE1pRVRrVjcw?=
 =?utf-8?B?QnA2b3Mzdk85dy9iS0Y3aEE5V2tPTFBPWGxlK3dEODNJaldPWkc5eXdFSWtD?=
 =?utf-8?B?TUl6Q1VZUjVxK0gyeWx4K2F1ZHJBRGpHSzlGdkhBR1ZtZXJUaWo4MCtQdVVT?=
 =?utf-8?B?M3JwQ2c5bFRlcTBXNVFQZDNJMjMxbDlXWEM1bHFZZFlJdVZpQ2tKb3lRYWdq?=
 =?utf-8?B?NHA5VzhjTHo4SjI3THA5VWZvRk5XbWgwaTkweXlrU3pGQ3ErbHZqRUFLQy94?=
 =?utf-8?B?Z1ZIbUZYYkdVTTJDU3lsU1dCck9pNCtJVUlBcFp2blQ2WUltY1pnVUhSRTE5?=
 =?utf-8?B?elZzWXAzQ1ZVOE14NE1FakhHUmM3N3VPc21wc0txOGdIQ0lkZzdEYUdZYlFB?=
 =?utf-8?B?VDNIaWFWb29ITUs3SFV3aC9rWDY2Wnl6SElZM2F4YjFKMEtQcysveU5WNk1m?=
 =?utf-8?B?WllsNWVMQ0pZclRGcFZWWkVwcllSYy9vaDJKY3JaQWMxbCszQmdMV2VTb0Vx?=
 =?utf-8?B?ZTFYZEUxL0c3UXgwV3FIazg1dVVlTTNxQ3JmNXF0NCs1MmxWWnFJYUxKRWVL?=
 =?utf-8?B?WUo3S1lhNTlYQjFuMUtDc0FsTDIvaVNYRWM3MlFCcWh2Z2ZzTmRjeG54NGx6?=
 =?utf-8?B?Sk9hVHVUU3RpZ0RvbnhEVHAxajVVNVQyb0lhbmxFUzc1Tm5GNGFMY3UvU1Mx?=
 =?utf-8?B?ZGJNREFkUFQ2SFkwazBJQmt0Mm5xTjlNR1FQMDFVa3NkblJPaUNhSk8zV0F6?=
 =?utf-8?B?eERRMms0UjJPTlRCSUhKNVg0SlYyZEJkZDN3YmhrM3ZpYU0wVit0WG14enZ2?=
 =?utf-8?B?Tm9VRHRXMTVYL1hKSmxkUm9Ua2dhazVtSmh0Q05yUkFYK0k3ZXE0S0xXamdt?=
 =?utf-8?B?UjRqdHlwNUYzRXpENU5yYmFoSTJVSVpldmRWdnJ4TGpqZDJuejd6WkxvTWgw?=
 =?utf-8?B?Y1NqdjdIUDljOTlPdGdYTDJRWG5UOXhPWGJQeVFhNjdPOU54WlhTSjlySUN2?=
 =?utf-8?B?N2R1VzFPZFJSVWNrWmRydnEzL29xQnFBVkVzUm1NUCtCZzZmWktmM1Nndkh2?=
 =?utf-8?B?WU9ZZnRDQ3FFWlNWZXpJdkl0eUFFZFhESEFEMk9LcUVIdHI2ajJ1cS9jWHdm?=
 =?utf-8?B?cjhPU25sSzBtMzBVMHA1QVhHZkh0SVYrRE5iampwd1hxdFBrbzB3OU51U2J2?=
 =?utf-8?B?OVZJNENjbXFtbGNlQ3AwYnZveUNuSVBjanhaaWF4MWV1eUkyNUhPZ3NWT1FK?=
 =?utf-8?B?T2p1QWhiLzFUb3BaSG5HOFNmU1NWbmozakViYkMvblp5L3pEU2RCVHNmZDEw?=
 =?utf-8?B?ajcrai80d2o1OU1wNFpxcDBnZmNSbHZQL0l1enN0UjVLcmpTZVJuQVRGbndx?=
 =?utf-8?B?Y25WTkUxaEZqTXlmZEQvTXpMUVdxdWxsOXN5Nzl4aUtFNnF6WlM1aEhtTkp3?=
 =?utf-8?B?WlB3MEVVdklBVGx1TEJLdzFZbTArTlZObE55S1lsOGoybDVnd3d6VmhQMVBo?=
 =?utf-8?B?cmxsMEtqc09rY2t2aTQ5bXdwOUExK283bTFFL0k4ejBDWTZlMkdnNnphMU5h?=
 =?utf-8?B?UGRZN2VlbEc5UFJCSXhmeksvaktXVFN0Ri9McmMwSEFJVzNvM1Z5RHI4R0JF?=
 =?utf-8?B?NW1hWXFoZ3dyT1YydjQyZEJQNWxoZ1pRTTBLa205aXZtZGZscGtnb2g2dUsx?=
 =?utf-8?B?VGlMODBvWW9aRlVHanhlU1pCUXdWWk1uWnF4cG81cHc3VjBBdkFTNW1NMjNm?=
 =?utf-8?B?T1hxdEpicGtHN01aSzhpb2ljZ00rOWJWN1Q1RzV2MlY5REt5RkdnUmQrV2Y3?=
 =?utf-8?B?bFNCSXYrQlE4THZkVWpiT1cvTi9KS25mbkR2MTBqTUROeTBKaVA4SXNCUDNC?=
 =?utf-8?B?QkoxUTVxTWJoTmxlaUk5RkRGUytEbGdqQnNKMzluNVBsd1QzM1V3Zz09?=
X-Exchange-RoutingPolicyChecked: ifVcpeDYyUIQgNFiGbhzezi0i5wBNhMy32s3Dc1zU3BSMSS7jT3QDDlC5P4gaSV+Hk/4WYVgVmjTe9jM4A7KXVG5mBo0VVtul8Gm57VAZ1FH6d29UvoaeQ4s7KhNrcsAIKX6t4p7ah2xXpq6vu8kSs7mk/pn/ZfNDHeMgs/ItT/iOwRsYq/zWjJYqX8V+foYQymvlwdwYQ6CUbSo/uB5bQg7KGZPvVi296KHsETn4+YdtWuSlv1DtqnniIOhiLGLZlFokc809tPyZ0+CN6NdjRnrEjgI7ASjejmSGIZth3xvso/6JRM8QxKTE+A83eW3R83rv+ouwXTOs+NSV07Cdg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b828f2f-71b1-4623-56be-08debfc1aa2b
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:23.9712 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p+JpdFmpBE8mLhqOdvGCxjR4Tbv1Vf5kmCku9w290Q++qH9cUNwCd1xcnlWQ8Q2Ckmn5MQpMMmWIn1EvUSEy2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EB77161C9FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add kernel-doc documentation describing the Intel DP link training
recovery state machine and the sequence of automatic retraining,
fallback selection, and userspace notification.

v2:
- Rebase on dedicated intel-display documentation change.
- Remove unnecessary indent in section bodies. (Jani)
- Add recovery flowcharts. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/intel-display/dp-link-training.rst    |   8 +
 Documentation/gpu/intel-display/index.rst     |   1 +
 .../drm/i915/display/intel_dp_link_training.c | 323 ++++++++++++++++++
 3 files changed, 332 insertions(+)
 create mode 100644 Documentation/gpu/intel-display/dp-link-training.rst

diff --git a/Documentation/gpu/intel-display/dp-link-training.rst b/Documentation/gpu/intel-display/dp-link-training.rst
new file mode 100644
index 0000000000000..d0bde965021d9
--- /dev/null
+++ b/Documentation/gpu/intel-display/dp-link-training.rst
@@ -0,0 +1,8 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+DisplayPort Link Training
+=========================
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp_link_training.c
+   :doc: DisplayPort link training
diff --git a/Documentation/gpu/intel-display/index.rst b/Documentation/gpu/intel-display/index.rst
index 01c3d1e576b71..6fa929d82c38c 100644
--- a/Documentation/gpu/intel-display/index.rst
+++ b/Documentation/gpu/intel-display/index.rst
@@ -38,6 +38,7 @@ driver. The display driver isn't an independent driver in that sense.
    fifo-underrun
    frontbuffer
    hotplug
+   dp-link-training
    plane
    psr
    snps-phy
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index db7b47665cb76..97cb407d084cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -42,6 +42,328 @@
 #include "intel_panel.h"
 #include "intel_psr.h"
 
+/**
+ * DOC: DisplayPort link training
+ *
+ * This documents the Intel DisplayPort link training implementation and
+ * its internal interfaces, with a current focus on link recovery.
+ *
+ * Documentation of the full link training procedure is not yet included.
+ *
+ * The Intel DP link recovery logic governs how the driver reacts to
+ * link training failures and to links that degrade asynchronously
+ * after a previously successful training. Recovery is first attempted
+ * via automatic retraining (``autoretrain``) and, when that is no
+ * longer possible, by selecting fallback link configurations and
+ * notifying userspace to recover the link via a modeset.
+ *
+ * Recovery sequence and userspace notification
+ * --------------------------------------------
+ *
+ * After the first link training failure following initialization or a
+ * previously successful training, recovery is first attempted by the
+ * driver via automatic retraining, without userspace involvement.
+ * During this phase, a given link configuration is attempted twice
+ * before being abandoned: after the initial link training failure, an
+ * automatic retraining modeset is performed with the same link
+ * parameters, constituting the second attempt.
+ *
+ * Once automatic retraining is no longer possible, recovery is delegated
+ * to userspace, which must select a new modeset configuration, as the
+ * kernel must not do so. From this point onwards, each link configuration
+ * may be attempted only once as userspace iterates through alternative
+ * configurations. A successful link training restores the automatic
+ * retraining model for subsequent failures.
+ *
+ * The failure of the last automatic retraining attempt is reported to
+ * userspace, and from that point onward the driver notifies userspace of
+ * each subsequent failure. This allows userspace to both initiate
+ * recovery via modesets and observe the outcome of those recovery
+ * attempts, even when no further fallback configurations remain.
+ *
+ * Link training failures are always reported to userspace, even when they
+ * result from a kernel-internal modeset. Such modesets only re-apply the
+ * existing userspace-provided state and must not modify it. A failure
+ * triggered by such a modeset is therefore treated the same as a link
+ * degradation after a previously successful training, and recovery is
+ * handled by userspace in place of the kernel caller.
+ *
+ * Contexts
+ * --------
+ *
+ * The following execution contexts (A/B/C) describe how the different
+ * recovery states are reached but are not themselves implementation
+ * states. The actual state machine is defined by &enum
+ * intel_dp_link_training_recovery_state.
+ *
+ * A. Modeset context:
+ *
+ *   Triggered by:
+ *     - link training during a modeset, or
+ *     - via the "i915_dp_force_link_training_failure" debugfs entry,
+ *       forcing this path by emulating a link training failure.
+ *
+ *   Transitions:
+ *     - A1 Link training succeeds.
+ *
+ *       A link check work to recover any degraded link is scheduled
+ *       (and handled if needed in context B).
+ *
+ *       State -> %INTEL_DP_LINK_RECOVERY_IDLE.
+ *
+ *     - A2 First link training fails after initialization or a previously
+ *       successful link training.
+ *
+ *       An automatic retraining work is scheduled (and handled in
+ *       context B) with the same link parameters with which the link
+ *       training failed.
+ *
+ *       State -> %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING.
+ *
+ *     - A3 Link training fails again after A2 or A3.
+ *
+ *       Through fallback selection, the driver attempts to restrict the
+ *       allowed link configurations for subsequent modesets. This may
+ *       be done either by lowering global limits (rate/lane caps), or by
+ *       disabling only the currently failing configuration while leaving
+ *       all other configurations allowed, even if they use higher rate or
+ *       lane count.
+ *
+ *       (The current implementation may still apply parameter capping as
+ *       a coarse fallback selection mechanism. This is transitional and is
+ *       expected to be replaced by a scheme that disables only the failing
+ *       configuration, rather than removing configurations that have not
+ *       been observed to fail and may still train successfully.)
+ *
+ *       This case may repeat in a loop:
+ *           %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED ->
+ *           %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED
+ *
+ *       via repeated A3a -> A3a transitions until the configuration fallback
+ *       space is exhausted, reaching the A3b terminal case.
+ *
+ *       - A3a Fallback selection succeeds.
+ *
+ *         Userspace is notified to retry the modeset.
+ *
+ *         State -> %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED.
+ *
+ *       - A3b Fallback selection fails.
+ *
+ *         Userspace is notified of the failure and may continue recovery
+ *         by retrying the modeset with the remaining allowed link
+ *         configuration.
+ *
+ *         State -> %INTEL_DP_LINK_RECOVERY_NO_FALLBACK.
+ *
+ * B. Automatic retraining context:
+ *
+ *   Triggered by:
+ *     - after a successful link training in context A1 followed by
+ *       asynchronous link degradation, or
+ *     - after the first failed link training attempt in context A2, or
+ *     - via the "i915_dp_force_link_retrain" debugfs entry, which may
+ *       bypass normal gating and force this path.
+ *
+ *   Transitions:
+ *     - B1 ``Autoretrain`` modeset check and link training succeeds.
+ *
+ *       The case is handled as in A1, scheduling a link check work to
+ *       recover any degraded link.
+ *
+ *       State -> %INTEL_DP_LINK_RECOVERY_IDLE.
+ *
+ *     - B2 ``Autoretrain`` modeset check succeeds but link training fails.
+ *
+ *       - B2a Previously the link degraded asynchronously (current state
+ *         is %INTEL_DP_LINK_RECOVERY_IDLE).
+ *
+ *         This corresponds to a first failure in a new failure
+ *         sequence and is handled as in A2: an automatic retraining
+ *         attempt is scheduled with the same link parameters.
+ *
+ *         State -> %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING.
+ *
+ *       - B2b Previously a link training failed (current state is
+ *         %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING).
+ *
+ *         In non-regular (debug-forced) scenarios this may also be
+ *         reached from
+ *         %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED or
+ *         %INTEL_DP_LINK_RECOVERY_NO_FALLBACK, effectively behaving
+ *         like a userspace-driven recovery attempt.
+ *
+ *         The failure is handled as in A3, performing a fallback selection:
+ *
+ *         State -> %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED (via A3a).
+ *
+ *         or
+ *
+ *         State -> %INTEL_DP_LINK_RECOVERY_NO_FALLBACK (via A3b).
+ *
+ *     - B3 ``Autoretrain`` modeset check fails (and hence the link training
+ *       cannot be started).
+ *
+ *       The modeset check may fail, for example, due to external conditions
+ *       such as changed shared link bandwidth, which can make previously
+ *       valid modeset parameters no longer acceptable.
+ *
+ *       In this case, automatic retraining is disabled without selecting
+ *       a fallback configuration. The driver hands recovery over to
+ *       userspace without modifying the allowed configuration set, so a
+ *       subsequent userspace modeset will retry with the current link
+ *       configuration. Userspace is in a better position to select new
+ *       modeset parameters (e.g. video mode or enabled outputs) that
+ *       satisfy the updated constraints, as the driver is only allowed
+ *       to retry the modeset with the existing userspace-provided modeset
+ *       configuration.
+ *
+ *       This policy preserves the normal retry model, where a given link
+ *       configuration is attempted twice in the automatic retraining
+ *       flow before being abandoned: after a first link training failure,
+ *       an automatic retraining modeset is performed with the same link
+ *       parameters, and if its atomic check passes, the link training
+ *       itself may either succeed or fail, constituting the second
+ *       attempt. In this case, however, the retry modeset's atomic check
+ *       failed, so no second link training attempt with those parameters
+ *       was performed, and selecting a fallback would cause that
+ *       configuration to be tried only once rather than twice.
+ *
+ *       The userspace-driven link recovery continues with subsequent
+ *       userspace modesets handled in A3.
+ *
+ *       State -> %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED.
+ *
+ * C. State reset context:
+ *
+ *   Triggered by:
+ *     - sink capability changes, or
+ *     - sink disconnect/reconnect, or
+ *     - system suspend/resume or power transitions where HPD
+ *       handling may have been suppressed, or
+ *     - successful link training.
+ *
+ *   Transitions:
+ *     - The recovery state is reset from any of the recovery states
+ *
+ *       State -> %INTEL_DP_LINK_RECOVERY_IDLE.
+ *
+ *       After reset, the driver may re-check link status and schedule
+ *       retraining if the link is found to remain degraded.
+ *
+ * State transition summary
+ * ------------------------
+ *
+ * - From %INTEL_DP_LINK_RECOVERY_IDLE
+ *
+ *   - To %INTEL_DP_LINK_RECOVERY_IDLE
+ *
+ *     - | In context: B1
+ *       | Action: no action
+ *
+ *   - To %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING
+ *
+ *     - | In contexts: A2, B2a
+ *       | Action: queue ``autoretrain`` work
+ *
+ *   - To %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED
+ *
+ *     - | In context: B3
+ *       | Action: notify userspace
+ *
+ * - From %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_PENDING
+ *
+ *   - To %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED
+ *
+ *     - | In contexts: A3a, B2b
+ *       | Action: select fallback configurations, notify userspace
+ *
+ *     - | In context: B3
+ *       | Action: notify userspace
+ *
+ *   - To %INTEL_DP_LINK_RECOVERY_NO_FALLBACK
+ *
+ *     - | In contexts: A3b, B2b
+ *       | Action: notify userspace
+ *
+ * - From %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED
+ *
+ *   - To %INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED
+ *
+ *     - | In contexts: A3a, B2b
+ *       | Action: select fallback configurations, notify userspace
+ *
+ *   - To %INTEL_DP_LINK_RECOVERY_NO_FALLBACK
+ *
+ *     - | In contexts: A3b, B2b
+ *       | Action: notify userspace
+ *
+ * - From %INTEL_DP_LINK_RECOVERY_NO_FALLBACK
+ *
+ *   - To %INTEL_DP_LINK_RECOVERY_NO_FALLBACK
+ *
+ *     - | In contexts: A3b
+ *       | Action: notify userspace
+ *
+ * - From any state
+ *
+ *   - To %INTEL_DP_LINK_RECOVERY_IDLE
+ *
+ *     - | In contexts: C
+ *       | Action: no action
+ *
+ * Recovery flows
+ * --------------
+ *
+ * Userspace modeset link recovery::
+ *
+ *                       [IDLE]
+ *                          |
+ *                          | userspace modeset link training fails
+ *                          | (autoretrain link recovery work scheduled)
+ *                          v
+ *               [AUTORETRAIN_PENDING]-- autoretrain link recovery succeeds -> [IDLE]
+ *                          |
+ *                          | autoretrain link recovery modeset check or link training fails
+ *                          |
+ *                       +--o--+
+ *  modeset check fails  |     | link training fails
+ *  (userspace notified) |     |
+ *                       |     o-------- no fallback (userspace notified) ---> [NO_FALLBACK]
+ *                       |     |
+ *   +-------------+     |     | fallback selected (userspace notified)
+ *   |             |     |     |
+ *   |             v     v     v
+ *   |        [AUTORETRAIN_DISABLED]--- userspace link recovery succeeds ----> [IDLE]
+ *   |                   |
+ *   |                   | userspace link recovery fails
+ *   |                   |
+ *   +-------------------o------------- no fallback (userspace notified) ----> [NO_FALLBACK]
+ *   fallback selected
+ *   (userspace notified)
+ *
+ * Asynchronous link degradation recovery::
+ *
+ *                       [IDLE]
+ *                          |
+ *                          | link degrades
+ *                          | (autoretrain link recovery performed)
+ *                          |
+ *                          o--- autoretrain link recovery succeeds ---> [IDLE]
+ *                          |
+ *                          | autoretrain link recovery modeset check or link training fails
+ *                          |
+ *                       +--o--+
+ *  modeset check fails  |     | link training fails
+ *  (userspace notified) |     | (autoretrain work scheduled)
+ *                       v     v
+ *  [AUTORETRAIN_DISABLED*]   [AUTORETRAIN_PENDING*]
+ *
+ * ``*`` marks states where the sequence continues from the corresponding state
+ * in the Userspace modeset link recovery flow above.
+ *
+ */
+
 #define LT_MSG_PREFIX			"[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] "
 #define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
 					(_intel_dp)->attached_connector->base.name, \
@@ -96,6 +418,7 @@
  * logic.
  *
  * See also:
+ *   - DOC: DisplayPort link training
  *   - link_recovery_autoretrain_pending()
  *   - link_recovery_autoretrain_allowed()
  *   - link_recovery_has_no_fallback()
-- 
2.49.1

