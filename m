Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tRwCKCMzRWpJ8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6086EF44E
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UE8O1V2m;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2275310EACA;
	Wed,  1 Jul 2026 15:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E7C710E3DC;
 Wed,  1 Jul 2026 15:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919966; x=1814455966;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=r+m2127aepHDQZwpp9qql4fIWkBmUJj8uRoZce1CfzE=;
 b=UE8O1V2mVWX3/cKemJzxdOiNcEI0rVf1W4JpsvwrNOCo0KICbaDsorS3
 ZVUPosKOZ62OPMXoeJhmOi//9/u8JMHd69NWoAcwteLXj8moE+URTcrEV
 gj1IwPlNw4+9qDOEYSRAaiiRC9FSqDW5URU+vnWXWCCktKcNBDZYQtqzV
 KDAaD4v9Y5dqPFaRMFyGoaqmuWtwGL2fm0KWytKW0kTRjvLhEaLRLcqlt
 7GtiJZ/mFXViRUds9kQqzksdO6KmCjEg/ExuzoNeASGFf30kqOwa5JW0m
 e6Q9qOduwtzWx2WmyFY47ZbLJR9GK/auARhzB+hgkTQ569UnICJL5BsGL g==;
X-CSE-ConnectionGUID: 4oSDYR8mS8Cl9zQNzDdwEA==
X-CSE-MsgGUID: GFa3uf9vS2qNvGNKmScvIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310048"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310048"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:46 -0700
X-CSE-ConnectionGUID: OG6+2zUUTDGuQCvxg4ouMg==
X-CSE-MsgGUID: oBLF/SyHR4+cxO9HGj13RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515566"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:45 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:45 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.38) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VwZLiORAJ8k4WMuOGLZRyEbm1M5tOLztK2oW6XWyj25tURFaJw3ILRiIz2fdzmanQGo3ia4Ab1+quwhcfTsl8Z0A7xCni8tiNpRGI6FeBA8ZEoohsj3o1y+GOWZcA70iBJLd2Stbek/Vv6Ggqr4he09JsAussjsKQv9ygEezAdVT3EBX11lzV7Zon1PzmNKVzPMRS+2dGAfkGh6pruXKwmdahBjBILywU5n1ebdomoqNrCaO3aM40L0DqIOeFxM6BHI10ti0pTNZDbrtrgDkNmV50NLpQ2qPeEFxUeCQAictOzsTJy/gX6E4qNgjck6sOVNAl9EMNy2RwuxQ97geNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AefGBsZUcghBtBLGGIyzhVpMNABoGe37+zx/eBP8Ixo=;
 b=APmTdd2Qyzwg7Y3CnDr0z+pUXEeRhmM1mPlZVxqICSXuYnBIu7nbuB0aeS10NYuSHThOhQS3gayiAU3UgF6AXWWacKMGm0LH7iCydwqeTNQzTkuacgIwdJA57IKEWKZRW0CaN6oFGex44r9W37jYm0OSEPeoFNisHNOkj6kgGeQmTLXjLdv6nGyf5yXA0YAG55pPNo8kZDIEtHXldwQs2LZyuK4pnPd45vLCg+lJARXFwSfzugWxmgtznxpk3rJVsmLZc5vQ/JjT02hUydJpIoJK3QaoA+o9q7pN7QTYlqdcIE4etXU2KOnpHcs83EPjlXW+lyuHR7N21rOri6JYLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MW3PR11MB4699.namprd11.prod.outlook.com (2603:10b6:303:54::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:38 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:38 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 01/34] drm/i915/doc: Document DP link capabilities
Date: Wed, 1 Jul 2026 18:31:30 +0300
Message-ID: <20260701153204.4124150-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MW3PR11MB4699:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ba2d31a-33f4-429d-6d5f-08ded785fb2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|376014|1800799024|11063799006|56012099006|6133799003|3023799007|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 0guDk1Kt3a2r3CxOh9HBnO4nGShOviLsrSfUqoC3hIBXRBHFwtQF9Fi/p+7hE8hOkey4wp5xUB+9LNVcQi6Rr7g+SmAJvi5XJMOyd0gQ1AQ6gRc2TndgIilAGyAdnogTyQKTRh4K1BGnI5vaZxM3tyQA5HW47r64AQEWCWulL1tGpLi3+RyJb/gz+jwaUmEYPj3EtNvzIxz8NsjNC9t2aeUhXSXGI5Ak3DJ+WIEkTWIv5DiB48W7pfMAQWGeB893fr+6EzdDAhgCsROcn76bGHGY5DX0uVn4LKHA6gexL+/q1WmHrkdYhpQ+2c0UVDaXY6E5v+/sdPemeZIYdlaytKTFfN+Cc2uS6KlNB0sUCzJ2ap/C9axBUCVQDz3Eo5kuMlSbGV9OneCZjOlrgoqMiSRtyA/sOVbDpNrQHOr844sKC2AObBlc0gIJFzCyPeYUq2RBy5JdlKST6ul69Vgv7qg+Pje1gccOc4YvpZm/gQ+zpy/XCD/b8nlvHuYwDIGvwHcOS9QsX0b4Ty5OUnCwQEMtE7Pi2FUknZx/T4Dl0wMY4/LZUTjUPxKCEbnTjejWA4Mf+ofPQcznYmRaawojHAojTolju7skfNp/6aX/jbPw9ETQe5Pmiw1iLzeb8GgMZQpAvnFqFCzAeEBV+mvWDpjmW8B3KhaBtzT8D4akPXg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(11063799006)(56012099006)(6133799003)(3023799007)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bThZUU5TV29GL25qdTlLWk4zRXk0aVJENnExbER2dHJLZ1pIZnR6QmovZkk0?=
 =?utf-8?B?ZU5YTTc4cG5HTFJMSWlnWHQ0Si83dkhOWCsralErdEtQR0cwc0I5b1E3WDRL?=
 =?utf-8?B?T3MzQUw5dzM0V09PVDFwejB3bi9FNjlHQUVLenVqOUxmRUdtaUdvRm53WXNW?=
 =?utf-8?B?YUFiMjdVbm5uRm8rdElKbmEzandJNGNBVDhZT0t4d0FQMi9Cb2VvSy85dFR0?=
 =?utf-8?B?OUJMVXNTK0FuS2xkQ2NYbWlkYWlRTmpiWnpIc0lXN2xMUHFvNDM2VWNGWXlS?=
 =?utf-8?B?c3FxRUpLRjNkMXZKNEN5VTdVQ1VHaDVnd3ZPY1ZNWjJiQlloMkprOWs5Yk1U?=
 =?utf-8?B?R0kyNXg2NWFzNWg0dFlKaEpGNWxJd2xJdXh2TUNYbVFkaFlUY0dJUk5hdG5C?=
 =?utf-8?B?alcvWUU1akozMVFyRHlRaUYwNFplZitka2M3WnZmVmxRZXJxTFppRmpGK3BS?=
 =?utf-8?B?SVZvMERyM0JUQ3hoTi9MVTRSMWQzYm9kSUNlc2owNHI4aW5uY1FWdjF3ZTBl?=
 =?utf-8?B?Y2VEcmhjUkhTNGxRemtFVTBZMVRBVlpvS042UzE0OWlkVkM2L0piVHRURzJD?=
 =?utf-8?B?aTVHZzZDR2ZWQy9rTlZ3ekFUUDE5YTZVbnNOYjFRbHdSSFg0K0NUN01zOUJ0?=
 =?utf-8?B?N0FhWTZpd3I2RHdpcnNwN2dCM1lVRGxyeU9Vdms2NkxMUkNObmx1UGxkcnJJ?=
 =?utf-8?B?MitVMi8yUU15d0VTZjFMUkwxRU5HR2JjODlpdkJwRFpJM2FITTArYzh4N0V6?=
 =?utf-8?B?RUUyMmIwZWJKNXgzQkM3WHNKSUxaOEFXbmduTENNMHFuQVBBczVtaVpmbGpU?=
 =?utf-8?B?WW9vTmVldWNrbnczMWFOcDM1VTdsbFNUcjhNTzVKekFlbnp0dmpLWU0yc2lC?=
 =?utf-8?B?ekxDWUVIa1ZaYjFvL1dQNktWdFN5akZlL2dmM3BheEhiMzFxMkJ2eWt5WWxY?=
 =?utf-8?B?Q2xMT0s3VDZaYUtoTENHWHVJQnVLQkprbEs1dDI5a25pbVRoRi9NNUhObldK?=
 =?utf-8?B?L0R4c0pUTGJYelc2OW50ZWFtbzYwbU91K2JGeVBWVUc2cE90cXdhQVBUcFVw?=
 =?utf-8?B?NStMeUlNQzVGdVJDVkJCWm8ycm9sWG9IczRoK2pibThvS1FwM3ZwakYrMmk3?=
 =?utf-8?B?SVloY0lqTWx0K1ZKb1pucHdlTUZpYnpqLzY2b2RMSE50TjNxWlRGT2E3NDFJ?=
 =?utf-8?B?L1JzNTRGbzlNUHY4WGJqanZKaDlZbDMxbjFKb0VYS3Uyc0RoTFQrRW95TmhO?=
 =?utf-8?B?N3B5dEYxN0JSdlNLUGNZRzR5MEFWT3UreEE4UG5WN2JTZ1dLdW9QbjdqRU9T?=
 =?utf-8?B?OHdEMU1oOE04TUptMmVwTHdjS1pvanFBNitqUnBld3BBY0c1YmN4bWJwZ200?=
 =?utf-8?B?ZnFqWnRMWWUvU0hxWEp0dHFubnNDWjdsZ1JIeGJpNG44L29zSkxjS2FZTTVk?=
 =?utf-8?B?TnZhblhCaGl4VW1hQkhTVXBzYW1LMVYyanVaOGYvckl0T0x3OVJIR0UwcERD?=
 =?utf-8?B?M0gyVzRQa2pSOHhWUy83d2xYMWU3b2p6SFFFNFZBWDFTOFpLaUVIUVU1Vjh5?=
 =?utf-8?B?ODBEVXY4TDhNamFvaktMZkxQZlJzTE9nOTV5dDN3djFKcEY4dU9QZ0E0K0Jl?=
 =?utf-8?B?TUNOQUtXbjhJZE5FQm5qb2o5emQraEl0QURhVXFtWmJKVERNc3R1UHU4V2Va?=
 =?utf-8?B?bmN2akFJK1QxRVhlc1hkVFQ2T1dxWVB2UzQ5OHVzMVh1YmgvLzhLUjE3WXMz?=
 =?utf-8?B?S0srV2p2bkZFaU53LzNvZ0RnWlNFSk1tbGpCU2tTcVFQV3UxWG1uM0ZjYUZD?=
 =?utf-8?B?NHFkbkgxK1JpMzhicm10d2RZYzFNOXhjTnBqL2c5WldNTFZDSUxValp2OHkw?=
 =?utf-8?B?TnMwTVBvTmlEVDBMYk1Gd2MyQ1N3eGh2elp4cXQrQ1hUWUI1NkNxSDd6WGMz?=
 =?utf-8?B?WmtrYXpuaEszbzNlWW50d2poOStXbEhBQ3NKek0zQ2gvUG91VFhUOFkwZFpR?=
 =?utf-8?B?NTdwQUFvc0grcXl4QkhiWUI5L0NNaVkyRHdVYU10QmwwTGN5aTZiZ3diQ21i?=
 =?utf-8?B?VVg2RnJnS2tra0dwZVFJem5PSjlhNWlvbTN2UlBpOHRhdmtKUDl4WDU1dVJ3?=
 =?utf-8?B?ZUtGQmRIVVJIWm9VTkR0SHhyOUlnaXJ1RW5oYXBvWjdKY3RmSWFqVFNoQXFI?=
 =?utf-8?B?Tjk3c2VRS0ZlaXNNYnBoK1lMUmJ3NzVJeFdTQ1FnU1JpM09ESGlJVEMzWlhu?=
 =?utf-8?B?UVdHaG5GMzMzOS9SVU5hYTVSOW1pRExDUS9Kem5HQm4xZTFGKzBIR2MrMDJ0?=
 =?utf-8?B?TmVCQUhIK0dMQ3QyU0k3TVZIN2RYclpzOEtlUUViNTNuaHY1cDYzZz09?=
X-Exchange-RoutingPolicyChecked: QiBAcSYXAVtvc/TSMysDFK7jsIsy9lJJb/ZWizBRbEkU0YGNNcXp9nfHlfZXXExfgAFpwJUKmvaMtkRjW7XiqjCDu/EF2l9QfhIj51EVJswEKnK/gR89I1ji3rQFIvIfrihEWenYtfw16jQlKq5V5z8530jg8ts0KaYSuUC4TOHYZtWdmRTWLN//sEl3TiE68HPTNwrvOACYtfqSNq1YZxr97pXDztoZeWkjvlH2RayLBhq8s9JfH4Nr+vHK+GUUJKx+dFBe8pmNBOsRU6/K569R5WsEQBUz2EAPdz54jVuCUIvLEsL0G1rxp8WBBps3C2LVTPYjGG2m/tMbLl3M8w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ba2d31a-33f4-429d-6d5f-08ded785fb2c
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:37.9724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZL/DQpfORbmvuwDSIFI9tcMtTDBix2d2VKcktxI4sMlzZj4TPOV/qrK7olyfbic1KtEY1FlsL1i7BGVegE19kQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4699
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4C6086EF44E

Add documentation for the DP link capabilities interface.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../intel-display/dp-link-capabilities.rst    | 11 +++
 Documentation/gpu/intel-display/index.rst     |  1 +
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 81 +++++++++++++++++++
 3 files changed, 93 insertions(+)
 create mode 100644 Documentation/gpu/intel-display/dp-link-capabilities.rst

diff --git a/Documentation/gpu/intel-display/dp-link-capabilities.rst b/Documentation/gpu/intel-display/dp-link-capabilities.rst
new file mode 100644
index 0000000000000..331cc69d13a04
--- /dev/null
+++ b/Documentation/gpu/intel-display/dp-link-capabilities.rst
@@ -0,0 +1,11 @@
+.. SPDX-License-Identifier: MIT
+.. Copyright © 2026 Intel Corporation
+
+DisplayPort Link Capabilities
+=============================
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+   :doc: DisplayPort link capabilities
+
+.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+   :internal:
diff --git a/Documentation/gpu/intel-display/index.rst b/Documentation/gpu/intel-display/index.rst
index 6fa929d82c38c..e81f49bf20df6 100644
--- a/Documentation/gpu/intel-display/index.rst
+++ b/Documentation/gpu/intel-display/index.rst
@@ -39,6 +39,7 @@ driver. The display driver isn't an independent driver in that sense.
    frontbuffer
    hotplug
    dp-link-training
+   dp-link-capabilities
    plane
    psr
    snps-phy
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 1c34ba6c49c35..2c656c2c036cc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -19,6 +19,87 @@
 #include "intel_dp.h"
 #include "intel_dp_link_caps.h"
 
+/**
+ * DOC: DisplayPort link capabilities
+ *
+ * The Intel DP link caps API tracks the supported and allowed
+ * DisplayPort link configurations for a DP encoder and its attached
+ * connectors, and provides helpers to iterate over the allowed
+ * configurations and constrain them by filtering, disabling, or
+ * limiting them to maximum link parameters.
+ *
+ * Locking
+ * -------
+ *
+ * All accesses to this API must be serialized. The only exception
+ * is intel_dp_link_caps_get_max_limits(), which allow lockless
+ * lookup. Such lookups may observe an out-of-sync &struct
+ * intel_dp_link_config tuple, i.e. a rate from one state and a lane
+ * count from another.
+ *
+ * The Intel i915/xe drivers ensure the above serialization by holding
+ * &drm_mode_config.connection_mutex and, while holding the lock,
+ * waiting for any pending asynchronous atomic commits. This also allows
+ * use of the API from the tails of asynchronous atomic commits, which
+ * cannot hold the lock.
+ *
+ * Iterating and restricting link configurations
+ * ---------------------------------------------
+ *
+ * The link configuration iterators can iterate the ``allowed
+ * configurations`` during modeset configuration selection or link
+ * training fallback handling in a configurable order.
+ *
+ * The iteration order can depend on connector type (eDP, DP SST,
+ * DP MST) and modeset-specific conditions or driver policies, such
+ * as DSC vs. non-DSC modes, power saving vs. better user experience,
+ * or policy changes after a link training failure.
+ *
+ * The configurations exposed via the iterators can be additionally
+ * constrained in the following ways:
+ *
+ * - Filtered for a given modeset based on modeset-specific conditions.
+ *   Examples for such conditions include driver policies preferring
+ *   power saving or better user experience, post-link training failure
+ *   preference changes, or sink automated test requests limiting the
+ *   usable configurations.
+ *
+ * - Disabled permanently for the connected sink. Examples of reasons
+ *   to disable a configuration include a link training failure for a
+ *   given configuration or a driver workaround preventing the use of
+ *   a particular configuration.
+ *
+ * - Limited via a maximum link rate and lane count. For example, after
+ *   a link training failure, subsequent modesets may be limited to
+ *   configurations at or below the failed parameters.
+ *
+ *   This mechanism exists for backward compatibility only. Eventually,
+ *   it will be removed in favor of relying solely on individually
+ *   disabled configurations, as described above.
+ *
+ * Terminology
+ * -----------
+ *
+ * ``Common link capabilities`` (or ``common caps``) refer to the link
+ * rates and maximum lane count supported by both the source and the
+ * sink, i.e. the intersection of their respective capabilities.
+ *
+ * ``Supported configurations`` are all configurations defined by the
+ * ``Common link capabilities``' link rates and maximum lane count.
+ *
+ * ``Disabled configurations`` are ``Supported configurations`` disabled
+ * via this API.
+ *
+ * ``Enabled configurations`` are ``Supported configurations`` that are
+ * not disabled.
+ *
+ * ``Forced configurations`` are ``Enabled configurations`` forced via
+ * forced link parameter debugfs entries.
+ *
+ * ``Allowed configurations`` are the ``Enabled configurations``, or if
+ * forcing is in effect the ``Forced configurations``, constrained by a
+ * maximum rate and lane count set via the API.
+ */
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 
-- 
2.49.1

