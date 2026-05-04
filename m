Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEbCLq5s+GnPuQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 11:53:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0AA4BB468
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 11:53:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8FB510E5F6;
	Mon,  4 May 2026 09:53:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NnQ9Waz1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E230F10E5F3;
 Mon,  4 May 2026 09:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777888426; x=1809424426;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SF3ldGqtyOFM5wDzL0qeKzEA2to4Yrpbs8IktT1IKMY=;
 b=NnQ9Waz1Y7q+qNbCO8Mm4gIfL5119t0lgYx5Msa3h5q3F9ylRCnKLDnA
 u9w9xsUEtwrlvStjFV+zCzTuIw27UgXMSL89bkCC7Wf1ON7CkJ9bCbtrJ
 BoIbiZSJV1Ic5P3awlRfzdQejdyVaPljkg6K5iCJ6z14vltoGCSDOch6p
 dQBjComjSGSzgnO9RMqM9vdeo9bfkUcddtLA7GJtf9jiPvQwuhg3kVVVr
 IDZST+kB4ZSRQXdi94IxgtuKxci2IxcpCZ2ddm6y5GQTPxNBfCVyFcbDN
 yGL5ZIhR1yt+W26XT4u2Rc1zDGgcqf4XmofWKfmjJ8Rx9WX7mvB/gEIIx w==;
X-CSE-ConnectionGUID: TbACx2RxQDaei3ucrNeJyA==
X-CSE-MsgGUID: KYAhAwkqQpS77sGbD1jOog==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="89434345"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="89434345"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 02:53:45 -0700
X-CSE-ConnectionGUID: jONxtREcTPCJGmCV4KLAsg==
X-CSE-MsgGUID: pVDPFjWkTXOYBXMwQyGWTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="231116804"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 02:53:45 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 02:53:45 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 02:53:45 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.21) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 02:53:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lwBR+78+876uIfULwcrl9EfOuM7fJet/dJyENsAbb3Jp4IAh+gkWAmfQtJ1n0cNVrhvPQmzyLMpQGoyLhN35scYPCaLu02YyxN68jF/21VpN42oJHGtnHH8N70EtEUrp+NcjX0BJewiJk5UPt1VM5JO9Yjoa0gZsp3j/Z3ctY2syvedACOXKL8YLZ4F9I9f2so9oHHzvTF8pRmBlh9P3jW055E3BKBziIdGlIQbxtMmN26VspKa1NdxL0g32WqwsSHJ33hiseSuYAy7gNHatIun5F/2VSdXgESQoP2GTBXf2UfJh7KfYK1Z+XXmt49m+k1bb+/q+9aqeZt7+JWaEuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2XiqBxHPefBcihlrFQKhLILv/jewWuMzlIhM3/KPCgo=;
 b=jlp4Z7V3Jd56peRqueIFYw4XSPKLd6sK+0GL9U3IIZW0xx1vO9sUZ0gMf2clX2Od/mL50I0RKDy1Kr1O/wi7ZXsNP+1tdS4wy1fEveONql4zhxdkUgumzEtOXggXQb+Ag2bGTh+fbq8SsfdIoFHKngWNd1+jQO2A2QImDjjcnT03CapvV4gNluz8I5toFhQFa6KqrjWwJWTzafAwQvBP1SZ0h4HdbP7dJi18r8RdhtiYcfl08uTT3/rMWdGl8ysRWAVEpfmR+qVIjkhDoeA3n4d7RB23wmK/imqsoMHtD/GRI0ohcy2Pep10x44RTstfaNefpK1MNoLMUXx2rWNAKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5309.namprd11.prod.outlook.com (2603:10b6:5:390::5) by
 PH7PR11MB6475.namprd11.prod.outlook.com (2603:10b6:510:1f1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 09:53:42 +0000
Received: from DM4PR11MB5309.namprd11.prod.outlook.com
 ([fe80::89e3:7ceb:6511:dd36]) by DM4PR11MB5309.namprd11.prod.outlook.com
 ([fe80::89e3:7ceb:6511:dd36%4]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 09:53:42 +0000
Message-ID: <8c67967d-9a53-43d0-a454-b9ece1934db7@intel.com>
Date: Mon, 4 May 2026 15:23:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/hdcp: Drop mgr->base.lock acquisition in
 intel_conn_to_vcpi()
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <fnu.vishwanatha@intel.com>
References: <20260430032902.3409731-1-suraj.kandpal@intel.com>
 <20260430032902.3409731-3-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Reddy Guddati, Santhosh" <santhosh.reddy.guddati@intel.com>
In-Reply-To: <20260430032902.3409731-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0129.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d5::15) To DM4PR11MB5309.namprd11.prod.outlook.com
 (2603:10b6:5:390::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5309:EE_|PH7PR11MB6475:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ec2984a-8a69-46dc-9385-08dea9c30655
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: TVSWIjFs9nmhaBzCxf184FIfo9cztyXvvacUSZy8tcxWe4E5PtmCwR5ycJ4E1Sjmj4wEN+8AC4gr0cggZ0RNfkjfx7dX/aDMZwWua5Qz/L0jLmL3x5CK7YX0VbcKlCN0kI+3jEBHFohr3gsxh5dHVSy8u0rJgYtBDS7LpZbhSI2t3iTOysoCAQpP2s5FKyq2/44WbzCXx9Ph1M29OTVFDjE2ahaDA8t0g0qGJgtFbjeSH8zsZVtw/n7DlABGZYKUxH06zKTb1C1vPKggdif1R6AqQyhD8pE1OCTr9o/gpQxmqcsvSrIKxi8Yd+WTKVGg2+t640mKVg4tqt+FyCzFdYsCfzG581CZm8/HTGNDrWcrtD+i8qB4Zx0breeEKXaCzg/bD1iHeebLIP8clQCCk5upztS793GOnDlDRmnLQDDaDIF0zFWCSJ1oKPpBw0C5AqIaxggU1C9j0ssn3AYDurbHLbyHhvcvkto7Xj0ndErY5I1RAWntGuFqNHGZCxYOZU4G1aV4HPIcpmRjOlV3SejRZvJdTzD1Z0ypavw80Jy4eAeQVNsSseLROiAB7RPrw/A2S1oj/QgbtxjAA6aGXcDbTMVeoTaGy9u8z3B5bM0WIbF53YuUgPfp/d7Li/PSShDh4V0zVgLg8Q/VZuZF00y/HfUEMqcKy0Vb4npdzZGbgoiolzU80ilgC0jRWZ6P
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5309.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UlVRelVYRENwV1NaOEZNTDdsUVBuRUtXcHk0cndBc3EvYlZ2USt5eXMyVExz?=
 =?utf-8?B?RFJTbVFTbUl6YjdVTmRzQ2J4dkp4aVp0d3kzby9qaTd0MTlRMy9qeWNiVzdH?=
 =?utf-8?B?Vzc2cnhtdDJ3b0I0M2FsZkF1MXJVcTBBb2NUdjEvTS9BbTBuWDlMWTZQUmNL?=
 =?utf-8?B?Yis4c0tlNmpiS0ZkRTR4aUFkVitwOG9PYzBnanAzM3IvZTVRTEFDMjFiWWpo?=
 =?utf-8?B?cW8xUkY0bXBzYkowVGFVaW9TSENpZndQdXArN1RTN1kwSk5GU3A3aTc1dWNw?=
 =?utf-8?B?d1pteHo1K0h2RGpyRCt0UlQ5NEhudnJpZXUwb2dwSzNCeFkweTRkbjZ3RElG?=
 =?utf-8?B?K2ZpZU4veTJyQWI1TnN3Q0NxZzI1bWEra2UyRjhsSjRhYTcrSEdDMnpya1JC?=
 =?utf-8?B?bHFzeTFNWkZVN3BBbUZwRi9xa0Frd3lUWDk5R05LOWUwdmN5UE1JWk5Hc2o0?=
 =?utf-8?B?ZmVkN3Y0STJnSjVRUXErNUI1czBLaDUrZmFjM1hRWnphV0pVdUs0bzdrbENC?=
 =?utf-8?B?TFYwRmdBN2xiNDIxU092ZXFESFlicThCbWhSVlJOaFl2Qmk5ejV0KzlSdDVi?=
 =?utf-8?B?eUtXYjQxT1Zib3E3T2NGaVAzOFdMYUJ3QlNVam9SaVowcmpIaTFNWG44Wnkw?=
 =?utf-8?B?Vldta3NCbXVwUEVudWNUUjNod2lUM3Y5Y0dHbEpSOHoyNWNJbVFVWkFucTM2?=
 =?utf-8?B?dlJncnpvL0c5cEw0TVZPVlJpRmZKOGlWeC9Vd0d1WW1iTjNZS2cwNzZ6dlN6?=
 =?utf-8?B?Wm1aYWNDUHNLeUVjcDlJajR5bjZUbkJ0UmRWVk5seDlZMDJhbnFQeUk4TnZL?=
 =?utf-8?B?aE5LdlBNQVIvQ1k2ZDdVbU1CWVFZMkt3VFRZSEhMckFScklraGR2OFA1cHJ0?=
 =?utf-8?B?R0FJdFBLL2tNZ3ByUFMxMnlBRXlIOFIvWmxlZGhHelllSHFVYkV3by8yUy9q?=
 =?utf-8?B?dXV4Ulc1S1loNitVUi9FRGRxQzlIUlJoTnZvM240NXdDZGNrdFlFNHZ3NmI2?=
 =?utf-8?B?eFNSeU1rZHMrVkFDVmZnNmk0ZUplKzZ2Zi9qWDhpbFJRWWk2VmZaVm8rb0Zs?=
 =?utf-8?B?NFhZaVEwOUpzQkNVRTdWMTZkTjJUUDBlUkVRZzNzMTR2NVdpcjRxU21PNlNR?=
 =?utf-8?B?SnVUNXJ2bDlpSytFODV1cDhtNElhRXlQZTEzV3VyU09UdnJMRHY1b3YrU2h2?=
 =?utf-8?B?eWZqampZa1ZZUk5kdnVJRE5TYlJEUnNoY3VVd0FxNkg1WGJ5ZVk4elRBbXZJ?=
 =?utf-8?B?bG96d1I5bitLM2dJN081QUUycHliUkE4WVQ5blRHSkRsTTRMQzE0MVdmaE5l?=
 =?utf-8?B?YTQzdWh0Z1c0SGFNNm1UYUp2UUNtZXF0ZXBTTTlpSk1NbVJYVzEyVVFVMW9U?=
 =?utf-8?B?aW02UzZWcjc1enh5ckg2YVFnRnYxVFJBN2l2MmM4TGs1WUkzcWp6WWJhaVBj?=
 =?utf-8?B?OTc2N0lwL1BlS2cyalV2eWJMRHNZcGFvdkVob0IzNkkzRVlmSW9aWlRVeHpS?=
 =?utf-8?B?T2J3TkM1cnVFbnRLQXlqdWZDNW55MmttREI1UFlzS21LUE94bWhOcnNRUCtz?=
 =?utf-8?B?R0I1THI2bi9rVEZUQTNMaGVMOWlLazdGeTUyQ29tUlY4ZlhzT1pzbHJjVHN4?=
 =?utf-8?B?d25md0FWVDdFTHB6cDc2c0oyaHRTNWNORkpMSHRRMVBNTmFqZSsvYWFtMnVE?=
 =?utf-8?B?TTBTcitpMnJ5YS9scTFqZUNTTEpDdTNnOFB6WldKRTVYWU54bGo1MTJ6R3Y5?=
 =?utf-8?B?bWZSTHVJLyszUTNPblV6T0IyYkpRSS9uNGx5SWhBeTc0UFBXSnNBRTRxd2R2?=
 =?utf-8?B?NGF5KzgxejUzdlRWNm1Hc1lnOENyeFJMbXJILzhFREtiMG91ZllRbmlNZk5s?=
 =?utf-8?B?Ynpzc21BU2w5VVJid2ZOaGNvWjF6ZzFKWTFtbm0xRzg4WGpVOVpJZU4rR1N0?=
 =?utf-8?B?R0JXZDlhYUk3dFlJWGJiTUFuVTIwakhjU1VQYzMzVklGc3R0MFVHN296cDNy?=
 =?utf-8?B?MzR0NEkwVDNwbGI5WUlVQkF2d1hFalJLZE1EUUdWMDdtR3RJSUhtb3FCckU1?=
 =?utf-8?B?cmYwby9iaWlGZnkyZ1JtRjM0TnJqd3NCbW9EVUxuOTZqUmR0WUs5dGQ1aHFZ?=
 =?utf-8?B?QUJ4eUFneXdsTUR4a281SVc4bXQweFVudWhTVkM2SFVDcFpISUUrRnZhdzZw?=
 =?utf-8?B?N1YvRmFFOHRHSTNQZ1NzZlNSVUd3aGRoWUgrU3JDbGhZQjU3OERPRnB0czZH?=
 =?utf-8?B?YnNtRFgrVVB4UkU2aVZsNUdPVkM5RDNwSklPMmhqMEhHYXFZaWY5a1NsTGw5?=
 =?utf-8?B?WDNLbXZKUjBvNDE4YmpYcjFCMG5aUTFIZjFWeWhBVWpPcTBBY1lWWGRCQ2Jj?=
 =?utf-8?Q?/DENYe5R/XM/VPnCIgPtymLuKQ69Dd9Ubtjdv?=
X-Exchange-RoutingPolicyChecked: K+XuGz5hTxzrARz6B9vEwefe5UVSBOMoybPjcO8N8uKlBztV+mZBZZr7txQtZHraiMVjjhmo2S+6YCr8yE3IWS3yA9D+dVJfV3K967silAfQDfZvivhym0KbBG1wVaNUW/kxa6tazn43Cq4dJPkGEYkaAsOoOoD71t4PyOewyU11HPH+6jtHz7/3OaNeJ6qsd80ZVddgsedaWhaKK17V9M9a2mpAVsYhmv7NBo9lWMLPBcDNdKr5y2VYViiJ6FWfb12yUziJXkExbslIbmotWxYOqVLeYnbxPG0738To8WcJ4V9hlFjR5hTREvUDf1FCxLe7L+rt2Sa/OjejhrxdXQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ec2984a-8a69-46dc-9385-08dea9c30655
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5309.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 09:53:42.5583 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RmoVtEFsuXq0V6B9n84SQpIm3H4f7tZrpOJI8ZSs5Yu9d52wXdKYik0hCBxXX3AzQUQoGgOrsRTrGlRIeR094cE+huYCtZpnW8lkx6C7+GETJdtLOHuk2FI7WpUa8M2Q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6475
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
X-Rspamd-Queue-Id: 1D0AA4BB468
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[santhosh.reddy.guddati@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

Hi Suraj,

LGTM,
Tested-by: Santhosh Reddy Guddati <santhosh.reddy.guddati@intel.com>
Reviewed-by: Santhosh Reddy Guddati <santhosh.reddy.guddati@intel.com>

On 30-04-2026 08:59, Suraj Kandpal wrote:
> Now that intel_conn_to_vcpi() reads the MST topology state via
> drm_atomic_get_new_mst_topology_state(), the topology state belongs
> to this atomic commit and is already serialized through the atomic
> state's private object machinery. There is no need to additionally
> take mgr->base.lock here.
> Taking it from the HDCP enable path in commit_tail with
> state->base.acquire_ctx is also unsafe: by this point the
> acquire_ctx is no longer in a state where new modeset locks may be
> acquired through it, which produces a modeset-lock splat on MST +
> HDCP. Drop the drm_modeset_lock() call.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 91d2d7d823cc..a5d4e77f810f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -80,9 +80,8 @@ static int intel_conn_to_vcpi(struct intel_atomic_state *state,
>   	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
>   	if (!connector->mst.port)
>   		return 0;
> -	mgr = connector->mst.port->mgr;
>   
> -	drm_modeset_lock(&mgr->base.lock, state->base.acquire_ctx);
> +	mgr = connector->mst.port->mgr;
>   	mst_state = drm_atomic_get_new_mst_topology_state(&state->base, mgr);
>   	if (!mst_state) {
>   		drm_dbg_kms(display->drm, "MST topology still not created\n");

