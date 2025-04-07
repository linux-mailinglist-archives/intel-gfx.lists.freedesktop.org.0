Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 036A8A7DC31
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 13:26:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D2DB10E433;
	Mon,  7 Apr 2025 11:25:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3M8iXzB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05A0510E432;
 Mon,  7 Apr 2025 11:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744025156; x=1775561156;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=s5TdVFUpUwL+coeoYp5nX9AxenXYdhcLXcvG6eimdrA=;
 b=k3M8iXzBGgxKKfBH0uet5FUenxEu41ommMWKVWr38twvQ0mIeIHxp/rr
 hD4O+74NQOCd0of9RrGUmpeO8n1tv5AlwZTyGp7mIExLGvNGgD7cPe/2f
 FL7NYhu/dg887hem2MWaW0Yrqb1DHLHYEkbstb/C2RjoHDkyR8DSyWG8F
 jqKHUFqEr9u/uk82gkcb1gauTPdwpK3mfeBW2tpnFFIaVTxTj3SFFkeai
 PWSi1Og7KQrNLcWCJMls7DMkSwHV1g5t9FJ+pgZek1JEj9LOCZNJn0dZk
 QES5w5naoYUark3WVRnCigjcnU8ErP3uBHeOTbY41uur5X2n7UmbpRonA g==;
X-CSE-ConnectionGUID: crGOArHxT/60u1EwaybXhw==
X-CSE-MsgGUID: nIe2BkwFQmOBN2FXmxOjiA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49060086"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="49060086"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 04:25:55 -0700
X-CSE-ConnectionGUID: 88CXrVdLRhOspraBrJ4Btw==
X-CSE-MsgGUID: qJR4veEuROyYp/EZn9m9jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="127781961"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2025 04:25:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 7 Apr 2025 04:25:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 04:25:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 04:25:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TI0gkOhzgFNtJ7SOkQMs3IpuevjHLi2AYjPADZJ+DG0YE20h3a+ptsafvg2eb98vT2NSqekRUkc+AC/EK/YxIgOC5ohzXVRQxSjRRQdfgSofIRDNyLfWGHxJCBm0nn1iz6c5MCgbLvr3T1EuB3ua6VUQBAkwFikuSy3JC3a2MKN5a+zt3kj16bcABaHRiy3eolfI388zqdGqPugVxWzJT5DUCBMwkSBsRdB+cblAnMoed5An820EdjMrRkTir8G0/fxbGWX+vIoj74ITO4ZH9mKKCZS0+A66pjPP4O1LBC1bIQbyf6WhskT1wwOhb+pIb1s6C+ontifKjY7MHsWWUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sTIa0ieBVkTkHy8AAEm76nTeBjrLC3pPsI8dXCkTpCY=;
 b=KuAgCKu2LCc582B5j+ROARiQ94DWtOpEIoUl8fhXmmCEQbijBH+YQGp5L6RMD3KvnDN6TicRWKEX0+GFOBh3/313Q82GRIkpZB9/8fVmbS4+oCgjbBVS+pPUR1dc3eArOAFdIWywnGpvy4wzR9Z45Hn7R5WnnRl24S7JUdkEF8gNWiecpM+ewm+sMpYHw09vHZZdHojGvuOfXUXoVP3r9PjfN7tEMPbIur5XjFRyw3rIx83Fc2r0DG1Ulx3m9Y7moXtlwc9/H9TpSZyV0iB6SFEkSSNHXZFoLkDlmD2DCwtUR2e/+x2oKhMmptLe92l9uHbkYXzpEJB2C8ZbB90uNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7479.namprd11.prod.outlook.com (2603:10b6:510:27f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.46; Mon, 7 Apr
 2025 11:25:34 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 11:25:34 +0000
Message-ID: <af069dda-95f5-41f0-9ff5-707759e5dc6a@intel.com>
Date: Mon, 7 Apr 2025 16:55:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Stop writing VRR_CTL_IGN_MAX_SHIFT for LNL
 onwards
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250407063758.3131498-1-jouni.hogander@intel.com>
 <ac0c7885-ce03-4bdd-979c-5d1c050b3fa4@intel.com>
Content-Language: en-US
In-Reply-To: <ac0c7885-ce03-4bdd-979c-5d1c050b3fa4@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0085.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7479:EE_
X-MS-Office365-Filtering-Correlation-Id: 64ab3a01-2701-4787-4fe8-08dd75c6e95e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c3dzSGJKbjh5MXRzaXdzVjRCYWN4TkJLOU5wdHkvVFRKdE1YQWdweHkwTVRY?=
 =?utf-8?B?UjVnWkVFeXUxeXV6RVpTS0dEK0tXc3dhdnZMRS8yMlNwbGdlN3pSVjhSdTVo?=
 =?utf-8?B?bmk1V0h1bVBTeEg2bm9rY2dMNFZJd3g3a25pQThab1E3dkxiOWN3cHFFeFRN?=
 =?utf-8?B?Z2FBZnJiVm82N0JTY0NKMXJXcHRVd21NMWcxNHZkNlJqNUtWQXlSSmFHaXB5?=
 =?utf-8?B?NUNGSTgzMW8yWkdMeS9VZ2I4dE1RVG1YQlBFWXNxZDlhN2o0WTE3NWFOMk9y?=
 =?utf-8?B?cXFRYjN0d0V2UEtoNTlMTXJwUGZJSUdTRTI3Vk4xZTRpdkhxeFhzb3JsTlJi?=
 =?utf-8?B?bGtBTElENGU1RXdYVzBOUnpHNHV0QytNRnRyR1NSbngvY2ZEdEt2ZEozS044?=
 =?utf-8?B?ZTFYUm5YM0dPbStXMGFsMU1vamx3cWUrb3g5SFJPMHVzMDlSSG5pcXBwVGhM?=
 =?utf-8?B?N2I3VWdPYWFtdEd5RXZRTXlvRnRBblFiaDBNQm1qTjhvakxpS3oxSU4zUHVK?=
 =?utf-8?B?b0U3MjJpUmlEN3lOWGZsQ2UyOWpmU01ZUXExWWFkMzlIQ1BmYVJyWk95ZUkr?=
 =?utf-8?B?cnFMRVhZZGllVUNlWHBObWJwa1FZVXBOamk1QVExN1MrTEg4bU1CcWh2NERC?=
 =?utf-8?B?TmNLL3pacmJYeGg5Sk56ZHpTVEo0KzR0Ry8zU3kvcUtrVCtCSFdtbHZCeHU0?=
 =?utf-8?B?YXFlTFVHczBTRTlKU2RqUGt4eGgzMk5WWXRlVUdrQThma2U0ak1Uc1FBeW1N?=
 =?utf-8?B?NjR5TjBQN2JGbmc5Tk1TVGkwR1hVcXdUK1FmWVdmejl3Ynpib0NONTBIN3NY?=
 =?utf-8?B?bWRDRS9VdUl1eUdvMWh0SFBvbEpraGppYXM4U1FaRWFXZUR4djVvd09YMUZD?=
 =?utf-8?B?UTVIM3FacDF3amdwNGNzTTdxV0l6OE5rNXkvakRlUzVLQ0RUaEE5NnJmVWdF?=
 =?utf-8?B?S3dObnc3dG5MdG1Ob0o3d2dKazdYT0U1Vmx0UnYyMkxsY2Z6QWJEdW9kV0Jz?=
 =?utf-8?B?cFBJZ01XYUFFNk4xY0haWCtWK3ZlMEpEbjlJYVlKelBkNEloazJEdWE4OGtV?=
 =?utf-8?B?SmFPZUttNXJDM25UMFdRek1yVkduMWU3SGRIZ1FyeTE3MzlNSzA5bHF1SXJs?=
 =?utf-8?B?TzZBSkd3b2pzLy96TkdCaUwwbUpBRkZLVUQ4ZStsUmxMUVhhMlpuNWoycldL?=
 =?utf-8?B?aEUyVlBmWmhiWWwrMUJya0U0Qk1maHU1bnBndGtsTkNlNit5MTJBSyt3Nm1Y?=
 =?utf-8?B?YTZuMG5RUTJHUjgrbTRyT1RJdEpxVFVxQnNBYm9SYSt1ZmVoSk95TytBZytj?=
 =?utf-8?B?SnhHaDdvUEc5MDUwcVZ3cTA2T0tsWkFQcDJPQ21VOTUvcEZCS2RmSTZ1em9T?=
 =?utf-8?B?N0xzUHJpdCtRaTlwanJndzhoU3pWVVlNaXMxYzIrMTdhblN6Q1NaYU5RZENI?=
 =?utf-8?B?THNkNWp3K2J5VTdNMVNmT1NUejhhZVh0VDNtMWxzMFJWbXRHdXJBTWJKc1Zh?=
 =?utf-8?B?NWxqRHJDM2tTTHc1RDVldEdUcmFMbGZZMWRiRGlKODZEdXRXQlMzSjJmSGx5?=
 =?utf-8?B?aFZPRHlpUi9oNVRmN1l4SlIxc3lLY1RSZGxXc0hvWG0rVFkzcFFmWnVoQjlF?=
 =?utf-8?B?QkJoaG9YNXEwWHorZTZqSTh5U3BRcnlIN2lFbktKeUJ2ZThoQnNkR04raEIz?=
 =?utf-8?B?clZiVEtCZTd0UkV0TVhPditHcVZQY1BzWnVlZDNveXNvS053Q1o5QkhycFFr?=
 =?utf-8?B?N2xzeTFDTnA2MmtwTTh0Z3hFaHBKMHNrdUFXcnV4cmhLeUNjQkc1T2FCQjcx?=
 =?utf-8?B?aDdVWGlta0cxRzJnVU9tQmo5TFhqOVlJb0pJVWlJNmg5V1B3VWJ0Vy9LZDIx?=
 =?utf-8?Q?SkDOHy+dqq4uf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXFwRXpoM0YzK2drQmdqczIrYmQ2SWNDL3gvWmp0TVZqMHZiWkN4NllrbkJ5?=
 =?utf-8?B?YUFWazR2c3kxRmtKeG8vSHZ5a3I5MGY1KzVMdnVmMVJsY2phNE8vQW1jSHlO?=
 =?utf-8?B?QzVPWmFzbGE1YUN2SUJKRlBGT3Z4S1RPMkN2ZnJ3MzVWb0NOVzJIMXBtRllF?=
 =?utf-8?B?RFUwNHNtTXZ0L0p3ZVNaQ2pOL0loUy9Jd1d2TjdFRjBzeDFnSzhXU1BXK1ln?=
 =?utf-8?B?Sk1EZjZjZWdUQ1ZQWE5qOHg0QWtKZ2t4eXNxUjBvUlpieUlNMHRBcmd4MlhU?=
 =?utf-8?B?S3dPdHFzczYvN1I0VmtuSEx3ZlhMbktxa3poZDRXQzdCWUJ0elYvS21wTmtJ?=
 =?utf-8?B?dUNLNldVYUJBOU84c2dQWDY3ZVk1dFpNeU5VVDRYOWlUOHhhRmh0SDMyM0pz?=
 =?utf-8?B?eUpFMm90N3piR3VuUzRoZTJQVUhWY21QRVpBZERRclFGOFZBZnMxdmR3ckFt?=
 =?utf-8?B?VVlvNFRVWnVPbEZLOVVwa3BwY2ZwWWV0NFV5ajRuK0VMeGlLbXljRU8rUEJ5?=
 =?utf-8?B?c01OZjlnVldBRXZJK0lVMmVoemZZYU5HbTJaZ3NrRXRxZnVoY3BDdkdEdVRU?=
 =?utf-8?B?QjVLdHR5dk5Qd3BRVHRENzgvOFFzSFB1SnZUTkJOZ0hVcDFDYVdiQlppVnpu?=
 =?utf-8?B?VC9tVEV3cE05R2F4ckN6c3h5a29NYkg5eVUwYVlQc1hVWm4yR2NRaUJydWNj?=
 =?utf-8?B?cnREWERSckR6eHRDeVE5TVpsVWxvZ2xpbUhUVTIzNmthcEc1OTBoTzIvNTNG?=
 =?utf-8?B?VDUyamFSY0xqdm9iSnE1bnRNbi8vNU55Sy8rcHVlNmVIakNGK1JxY2dxM1BL?=
 =?utf-8?B?ZGNPQTBPSHFnNUNRZUllU3drdUFqeUpPL0JpZ1ljRzNlYVFVeUMrWXhnOFQw?=
 =?utf-8?B?QUpZZEZOd245V0drQWppT0RWWDdtdkV5bWNCOGdvcHlEa3hEVXFPS3RSUzZS?=
 =?utf-8?B?NzVmcnlDTGZnZm1Jc3NvMmRFSldwd0tZbVpyeWFyRkhmS3VEWVFSdWxqNUgz?=
 =?utf-8?B?UVo0WWVNNHNyd0YwNEtiOHk1OGVGaUJFaUdNUTdXeGpWNHRHZGd6UlJEa0o5?=
 =?utf-8?B?YXNtOHMwUmlKYWVwL3kwalViOE9ackpxOENwQUVjWjZLcFRINk94N05uaERS?=
 =?utf-8?B?VmFScXpuOEFvQW8yK05RYTdXM3dpMjNsODRuNE1QaVZpRE1ySGh5V0xHcGx2?=
 =?utf-8?B?NlJRSUtDSzJEZ0R1Vlh2MzJrSDhpbUx6ald0M21SSUF1NHJTdXZLUVZEVEtP?=
 =?utf-8?B?eTE2NGVvY0FWWU8xQTZBZUE3enp6SmVVSUlzcXZhcDFvUHQ2b3FsNkRQOFFC?=
 =?utf-8?B?V1FyN2RYWkJSTmpVL2ZCS1FYU3pCWksyRXBXTllkSDU4eTROTEM1NDdHZzRQ?=
 =?utf-8?B?ZGJ4U1hMVlFZSGxRTkRTcURBVmV4UkVJTHk4d0JRNnB4dUNwQ0prN2FDdnJr?=
 =?utf-8?B?OGZDTVE4SzI4anZ1VkpXNlhkWGRNOFhsMWlZUGNjMTVwbk9oSisvLzllUVlV?=
 =?utf-8?B?SHBaOU1mOVVYdk82M2NiTEhsZlY4bXdRY3hJdGVUNVVJSE1sTDZBeDlqVDhI?=
 =?utf-8?B?aXN3SGZEejMzc2RZTEdUS2ZJWFkwYlJxTkhHSklway8rYjc4c2VJdEVmUmlt?=
 =?utf-8?B?RytGTUsrYzllcVlzRGJISXBKdEtCVUtIaitSVlBVbVdiQUROQ1gzOCs0L3Vr?=
 =?utf-8?B?eE1ScTg4SDAvZ2RESG5HbVU5TVd6bVhIUkZ3Y0VkUnJYald3NEFsWTFCVXU4?=
 =?utf-8?B?S2g1Q0hLOHVVbW84UUFDMVhXdlVKekRhY1JoVFlYbDlDTGZ5WlExSHF3dXNO?=
 =?utf-8?B?aDJ3U3NTMmswZjdsN1dlTlVWUjc5cDlpZkYrRUp5WEwzeXFlMjJSaDd4WUhs?=
 =?utf-8?B?N1pDRnU0Z2JpaFJEY01PT1VNbXhpaDZWaU9sTWcvK1NpdnAyS2hBWm1maldT?=
 =?utf-8?B?WUJXUzcwM0lGSGR3Y3B3ZHYySXQvSDZzVmttMGlQRFdWRnpSSHJ5TEh3dzRB?=
 =?utf-8?B?a1BQSnVZbWFNRXNzNFRzV0NHelVyL20rbE1nS0pOT3JybTVRTUI0dzlPYXZw?=
 =?utf-8?B?Q3dOOVlNZ2pXak5oaTk5YU1MWk9xalVJWWF5UTg4cXlTTVhKZlltT2R2ajNi?=
 =?utf-8?B?OXhJOXNINGpIdExGcXl3MUZlVTFNMnBXaWJnbnJTbVhiSm43WEFFakl0L3d4?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64ab3a01-2701-4787-4fe8-08dd75c6e95e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2025 11:25:33.9737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SBTjWOIFPuMJ3x6ohaeLXgCVJkY+7DGQzq1HxD1GBR+ImeavILCzEDgXjPV0La1A4N5MlMu+ExkCuR68WwfBvnTBOmbKyizxHHsBGmwjGnE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7479
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


On 4/7/2025 4:46 PM, Nautiyal, Ankit K wrote:
>
> On 4/7/2025 12:07 PM, Jouni Högander wrote:
>> According to Bspec VRR_CTL_IGN_MAX_SHIFT doesn't exist for LunarLake and
>> onwards. Bit 30 is "Mask Block PkgC" instead. Stop writing that for
>> LunarLake and onwards.

Seems like this is not there for MTL onward: Bspec: 71956.

Till Alderlake the bit is valid.


Regards,

Ankit


>
> Good catch! I Agree with the change.
>
>
>>
>> Bspec: 68925
>
>
> Should remove the extra line so that Bspec# is part of the trailer.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com
>
>> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 5 ++++-
>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c 
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 633a66f6b73be..ed59e83a3857b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -444,7 +444,10 @@ static u32 trans_vrr_ctl(const struct 
>> intel_crtc_state *crtc_state)
>>   {
>>       struct intel_display *display = to_intel_display(crtc_state);
>>   -    if (DISPLAY_VER(display) >= 13)
>> +    if (DISPLAY_VER(display) >= 20)
>> +        return VRR_CTL_FLIP_LINE_EN |
>> + XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
>> +    else if (DISPLAY_VER(display) >= 13)
>>           return VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
>> XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
>>       else
