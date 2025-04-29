Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6943AA0158
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 06:20:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E762510E241;
	Tue, 29 Apr 2025 04:20:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DDs8HRmv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8DA010E241;
 Tue, 29 Apr 2025 04:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745900418; x=1777436418;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jH55DYtS/31LJTDb18Rb3jdKuDauf37iQGQYJIDb9lI=;
 b=DDs8HRmvUuqUA00qO90RNu/cDkPZsWbpCO7FLYraeK/UoQgzZUeGIUOk
 q+LPYxrleQZL5C/iFBhKmVR5wYJlyhjcciSAo90niDxppsk/muX3x4gBH
 aEV4l6ClQSXEoEsrNLh7emcC6hcqn+izYu62rfK6/RUU5vFfV4xZCGWCW
 kjiPua1t4yH7kfDDrPVskP7vlOroqpeD7NHk7RXoIEbsO3ggEQTQFendM
 FlGyk04qQyBTv9/NOGmK/7AyXGnoiNt555I/Qz4EZct1FlZOG7w4SWlay
 fJ2QoKBbPy49WTgjQiWHPEe/Vm/FeWBq3JSynQ4NCAbtmcJ8zpNIRWOfN w==;
X-CSE-ConnectionGUID: xdoyGzFJSC6jZDNwUgBJTg==
X-CSE-MsgGUID: axFtTjGDQmqDmPtywtU/pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="47396374"
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="47396374"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 21:20:18 -0700
X-CSE-ConnectionGUID: Mpm+FBDkS5u4ZEQGdmJ0rw==
X-CSE-MsgGUID: rJRB8/lPTOqKOeV8AesNqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="164662977"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 21:20:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 21:20:16 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 21:20:16 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 21:20:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jSucZC3Jy1Msy4RE69J5mby4BbOw2ujdK9fxXRqPz4tKl2sdTGw0qap6Aklz6VM0iw3NLArjg/OrBP9ZmM+PvGPx5Kfv7A2Tf383RpVwvMniMK4tTfd1Nyi7IzZrwAw6JREUTdvijnYpARf8pSqIngansUOj02c7caCvrulcHufyEM3doOaeFErbSkqPuhO6B+hA1Ft3+gpG2tR19aDyLwIeBBqNtjkx6kXYh6YrjFhpjltj9r0QpJkD0RtSqZHjjDkpPEPWcx0q8nMdEt9s+3q474vwyBuDexyE0t62qcaIDFV3PXgmmFpU1umOQMJt31R+vGf09MifsGu+k25Haw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IdYe2tv2dUpAXF8zf2VpOUtJ5c/Cmh/ekGrGSE3bSIw=;
 b=eC+R6X7WL7o8NmLaNYzrW4QhOqeuHBLG194JCeSNQmHzaBC8P/SIfwXcnhC6EB5QLtk57TlB5m8flaHhMlLaM6b2r8KaTeUN/gMALbtCnbolCjplBAQy2UgX7pf9aaBi/3eEi0jBy+bB+9DAHsCyOXZoMBzekEC/dbWbGl4mhBnq0//IJijFqmYb3c93pIrfl5fIrBD6VLvynhGWuNP58A8ugAhbGCx2T44KWvJOiNhkMJXCY4pjpiunF3drQpS0YmW2gxrrMRqZoeojBiq1oQjgFi6VbRbEUTjAmiJ+Ac/9wMHD+zn18j4gEnYDqbXKH+aXL42UZ1LzXAIb/Xg7MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6437.namprd11.prod.outlook.com (2603:10b6:930:36::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.31; Tue, 29 Apr
 2025 04:20:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.033; Tue, 29 Apr 2025
 04:20:08 +0000
Message-ID: <202a58d7-75c1-4372-a001-17a32aa462bd@intel.com>
Date: Tue, 29 Apr 2025 09:50:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/15] drm/i915/vrr: Pause DC balancing for DSB commits
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250428062058.2811655-15-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428062058.2811655-15-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6437:EE_
X-MS-Office365-Filtering-Correlation-Id: 62abd632-d1d4-48f1-0103-08dd86d52026
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzNaYWgrcURlVEVtWExWNW9tMXVTWkxRQTdwOEhsWjZzQXZKMkdnYVN4Zmps?=
 =?utf-8?B?VmkyTXRxTzE5aVdjemMyUkEzMmtWcFRlTHVxNHdGUmNCUTU0Z015akxXZ1RQ?=
 =?utf-8?B?WEx2OHRTaXlsUjRYY0tRYU11TjhycGhXVVV6TmNaSlk4aGUrY3BBUFk3MEJC?=
 =?utf-8?B?TVJNdkZid2xzL0hVbU5KeUFoVTQxMlhZWDdWSDQ2U0E5MGpueHBsSVY4NjB1?=
 =?utf-8?B?b29NdHl6b0xjWXJRT3ZjSElxWktwWWNaWXUzMTIrSVdabkF4QnJWVUlkdUFj?=
 =?utf-8?B?M2V3dVR4RHUvQkhRN2E3WXpKamhVcHlPMVdpRWFjZXcvRE9uSkVHVlZvYW9n?=
 =?utf-8?B?S0tjZWtXcXd0Q2RPL3NxZ1pVdGtsYnlDMnNKU3QyV2xBdld4Yy8vd2tKYTJv?=
 =?utf-8?B?WlcvTzVEc1VEUTNZWmY0MmN6UWt4ZVAwUkt2ODBZb0NwRk5Qd0htcDdwdDYr?=
 =?utf-8?B?MUtyMGVVbGdrU2taZHllN09nQVhsalVYN2h5Y2VKOUlUd3dzZWhvcWNKMTQ5?=
 =?utf-8?B?RHRtUHhpSTNrUDl1NUdxR1V0Rm82djNTdXJwNnVSeHUwOXVCWWE3dUpGRWdI?=
 =?utf-8?B?dEJBMEtIQzZxNis5MUxFUUo4bmdYNDJTUTJxTTJmUjIvckpKZlI4NHA0emhP?=
 =?utf-8?B?Y1RNZk4wZ0oyZ0tQUUNZVHBtVGhzVDJvRm9yYzhPdlAvQ1ZXK3V0Y1E5Tmx4?=
 =?utf-8?B?T200ZnZLclptc05pWmd5c0RQbVN0a1NQb3BSdHR2ZTNFbDFZdGc4QU5RdXE0?=
 =?utf-8?B?VnZBMkVrNUhGZnBNSU4vSmtqSkdQWUJHWjZCZHFiMVV4UTJBQ3ZoNlBTcnhy?=
 =?utf-8?B?WmtKb1hGTzRwdkh6R1BoNUllYkFNYUUvZDB6OUJMYWFKVTIzNXVBQzhLenNT?=
 =?utf-8?B?UjdrcGxUT1NpM2QxK3U2U3cvYUtMWTN1VnJveWlRNUtzNnBIUGo3cGc2YjQ5?=
 =?utf-8?B?NHlKVSsvWUJXUEtncklwbTFWakZWVW1LZ1BRVmx0VzJsaFhLYTd5WWlZTTFi?=
 =?utf-8?B?V0hER01mY0RPV0pkTWVURTdrdnF3MlpwUEZKWllNbU5QbVZJenRiUXFWeGM2?=
 =?utf-8?B?OFpMdU5qY2g3TUpIbGVTUGpJdmVIcytFYWhVbWxRMnBPekNiUDZQZGNIL3Fv?=
 =?utf-8?B?R241SFNlbjg1ZXhtRURUVEVUYTlGR0xmcHhaUkNOWnd3MWpTbUoweVAxSWwr?=
 =?utf-8?B?UFhEcDNvRXdSTFJZWExycGw4MFJNRzRrK3V4UXhQSnpnTFFYaU9IMXU3ZDY1?=
 =?utf-8?B?dUIrbnRNa215aVd4ZjZjRVVKZlFWRVpKWnBxcXlXR0tvQ0oxdzF4VmpPTHRU?=
 =?utf-8?B?UFFnbmFKdDVqM0dRT2JTalhtR0xnWlphU3dmTWI3dC9EeXo2aXBtR3lVVEhm?=
 =?utf-8?B?OUtMQUJCWjFWeHlmMk1pei9tbFlTTUtSK3l4azVLcHZnbUxnNFFpc01XYVlK?=
 =?utf-8?B?L0Z3T3p4R2F2RzhHbFR1dCt3azI2Snovd3czUEJ1T3pzYnR3ZVV0aUlUcUc3?=
 =?utf-8?B?UUhJL3B4VG5aMlFHcHV1eXB1NnhzOTRyYy95VFBJVFZwZThzNkY5Q1lKNkZV?=
 =?utf-8?B?Wmdob3VVSU1UK3FJbnJkeFlhWW51eVVTQ3ZzYXFlZy9OUDEzRFRUU3hBakhG?=
 =?utf-8?B?M3lYT25qeHRmNTZtWDNkLzdabDFNb0RiZ21lNVJxTmJEVVRvNDR5eGowQ3FG?=
 =?utf-8?B?VnJ5STVrSTR6cjc2WHpyWnAzSE5TbnJRNG5VQTcxV2tiVE94ZU1DZnFLaUxk?=
 =?utf-8?B?TlJrdnVTL1hrdy96My9Fc21MY05QOG00U25WaVNES0s0aTNMdkxYVm9RL2sy?=
 =?utf-8?B?WlZKSVdMQWp0eExJZDF3WWhVZWs1bDNwdGY5UUVUaW5Id2ViVTFSNndESXI5?=
 =?utf-8?B?ZWxrdzdLNU95VlVxMFpndkdVVUZFdXNRY2JJRXYwaVFuclE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTFEcUZjcFk5bjJjZHFDUzFyRU5HYjZPbVFjS05RdUhGNUR5eHZFd3pnQUsr?=
 =?utf-8?B?K0R3bHFQMjVLN2Y3RVhuNU42MGhZWGpXL01RaDhrODVZZVJhQ2htTkxCaXpF?=
 =?utf-8?B?TFo3dWNGVEIweElkRXRQdk9IUHBkV3ppWDhaYXFsNVBwZVdkcHpzaEZKVFRw?=
 =?utf-8?B?Nk8vd3YrZWhyMURiRGRmOUFrS2wyTjFQRjFPVmtuV0dQcmRqM1I4M01ic3FH?=
 =?utf-8?B?ZmVaZEo0a2JBTm1QR1I2VkF1UWxsU2ZYTmtqSlF5OVpqd09IVmJkSUJ0TC9X?=
 =?utf-8?B?K3h2ampsSmx1Nk1ZaDhmakZiV1VvcCtMQytEam82UDJhemdIbjNFTjh2NVlu?=
 =?utf-8?B?UmRJQyt0NGY2ck4wUkRHalFFem44V2NZTUN5M1I4VGM3SHdhWnkvYlkwcE9C?=
 =?utf-8?B?Q0p3QmpZVi85TnpORkZkMUhNbkt4RlFkc0kzUFZ3MEpvWGM2a1lmeVNzTnp4?=
 =?utf-8?B?L0NkUmpWUVZjN3J3M05yZ3J6R2svRlhYY1ExdnFMZ1V2UVBuQkllS1lNMjVC?=
 =?utf-8?B?S0FUQ2d5S3JseG9XRVJzaGFVQVpkYkRGeEFSbS9xUll4SjlhUk9qV2N6UkVP?=
 =?utf-8?B?Q1RQeUt5TksvY1JIeUZreTZGSVJmWldJbjJRWDZNNXc4NUM2N0srZkhEbkM1?=
 =?utf-8?B?dm01MGkxRjU0bWhWeWsxcXM4K2lzZGw4dldxQkhoRDJJdDJURXlVZUZkcEpM?=
 =?utf-8?B?M0lZS0RrbzRhbXFXSDB3SU85SmRUeTV5WnY0MXNITTZtazhHVlltdWFaOUpH?=
 =?utf-8?B?STd2VDBnWXY0ZWhJeWs1U3U2MkRtTkV2ZmtnTVIveFJodWYvbFlndWhkTWIy?=
 =?utf-8?B?eEQ0WjdlRENCY3VrNXFzLzg2R0N1UDZqOVFpeUR0ek5ZTW5qWG0rZUJuNitw?=
 =?utf-8?B?VmFPRitIV25KcWQ1U3JzK2lBVGx0aU5ZSXZPYk5OeDNjMDBIRHF5a2svRFFY?=
 =?utf-8?B?cVBZYk40K1cyOERkSTU4V1NySElNcGpZeWMrSzZXNlNLNGxzT3BsdWdrdklL?=
 =?utf-8?B?dFJmNmJYUWlNclBKS2I5ZWo4N1JFbE1PSlgxZUdIQ2ZTZHN3RUFCb3RBdzl5?=
 =?utf-8?B?dGtJc1h1Q2hncjlUSWdSWDROY2xQRkdkZi83dWZkb25uNTRIWnRYM0hWRmMr?=
 =?utf-8?B?K045d2pKdXpsS0FuQ0NiRnVOTG5ZcUg2QW5xZUoxZE1LZzJGMHNud1o1cHlm?=
 =?utf-8?B?c0c1ZFNETmoxaDdTa3ZpaEcrRUsrSjcyQkxKV2hEcVI2dTcyL254SXZ0U1Fs?=
 =?utf-8?B?ejd3Q25Za1gybVcwdlpHbVEwQ3VDem44eElrM0FxZHZHaWUvQU9razJyOTRV?=
 =?utf-8?B?bnE0aElZQ3NtZm1SS0lIZ3lWWFg3d0JNSzRVdGplclY4QXNFZHlQeTQ0RHRq?=
 =?utf-8?B?Z0xzTm8xaDlkVjlva013NUZoalM0UkYza01LTDg1WnZQWllqVlppZktrM0Vh?=
 =?utf-8?B?LzNqTWlRZEJkTG16WDcxclNLeEQ0bThDbW5qbUovdXVpL2U5RzU2ZlJnbUlh?=
 =?utf-8?B?WWVhWEpVMUJ3c3RLeCt0S1F4VjFldXRxNXJkTzB3ZGVLSHNldVQrbWZtT2pj?=
 =?utf-8?B?aC9rMDNzaWM5b040S1JZeTlLaXI1Qnh0RHJoSjZCbms4S3JKN0twT3lwQUxP?=
 =?utf-8?B?YXhiN0xxZVpWNng2YzVwOVYxcUFkSllLMDV4M0NqUE16SVNPMkpqT2VDNFND?=
 =?utf-8?B?ZXR5cDVSY3ZZUXg0Yk9QR2FlMjlxL2w0aFNMRnRKaDk2TGNoUkhJQ01LSWZl?=
 =?utf-8?B?ZUk0YnRlM0VBMEJXQUNhWERrUVlYeExuL3IvZDBIaUNrYzBaTi81c2g1VExL?=
 =?utf-8?B?VnpMd21CU3ozQ0JXRzQ3WmpQOTdab28rdHhtVGJrUEsvRFFZYUU3cU42SGZ5?=
 =?utf-8?B?Uk5YQ05renZKL3k2L0UwcXg3MENOV1hiOHlLQm5DRzNOaWZVSElkUjBPSWo2?=
 =?utf-8?B?M2ZycWRuR1NyTWNkOUF3a01vWnhFb1VhY0NaN2h2b2l0UWQrdWV5N2hEQ1VJ?=
 =?utf-8?B?UXRwZ1AxWjF4VHgyc3hpRkpMMzNnOUl4WEFkUW81d1JsZWNNVEZKVHljSGpZ?=
 =?utf-8?B?UGhERVhRaTB2ZXBiNHAySEI1SHVMOEs0QnpRdlhZeXBzcGxnalBVNk5YVmQw?=
 =?utf-8?B?bWtsR0NRMW1BMVN5bXJVdzhjWVMyVDgva3krenpjWUdoQU5yTkV3SmFhejR1?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62abd632-d1d4-48f1-0103-08dd86d52026
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 04:20:08.3242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6DiQjtenV/9NgJk5GaSnlkyZZMTMXMpXhZi9f6K3lhB8IY7jXQcBubQSay4dwbZ1Ps48zg8QapAotTh6IKLzPHeixFUFWbsB0uQQzYajkAE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6437
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


On 4/28/2025 11:50 AM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Pause the DMC DC balancing for the remainder of the
> commit so that vmin/vmax won't change after we've baked
> them into the DSB vblank evasion commands.
>
> --v2:
> - Remove typo of readding sending PUSH. (Ankit)
> - Separate vrr enable structuring from Pause DSB patch. (Ankit)
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.c     |  5 +++++
>   2 files changed, 18 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1cd9c65da576..e6d7a0a145d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7206,6 +7206,17 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   	}
>   
>   	if (new_crtc_state->use_dsb) {
> +		/*
> +		 * Pause the DMC DC balancing for the remainder of the
> +		 * commit so that vmin/vmax won't change after we've baked
> +		 * them into the DSB vblank evasion commands.
> +		 *
> +		 * FIXME maybe need a small delay here to make sure DMC has
> +		 * finished updating the values? Or we need a better DMC<->driver
> +		 * protocol that gives is real guarantees about that...
> +		 */
> +		intel_pipedmc_dcb_disable(NULL, crtc);
> +
>   		if (intel_crtc_needs_color_update(new_crtc_state))
>   			intel_color_commit_noarm(new_crtc_state->dsb_commit,
>   						 new_crtc_state);
> @@ -7242,6 +7253,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>   			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
>   			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
> +			if (new_crtc_state->vrr.dc_balance.enable)
> +				intel_pipedmc_dcb_enable(new_crtc_state->dsb_commit, crtc);
>   			intel_dsb_interrupt(new_crtc_state->dsb_commit);
>   		}
>   	}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 86b858222b6e..0f0e21cb05a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -9,6 +9,7 @@
>   #include "i915_reg.h"
>   #include "intel_de.h"
>   #include "intel_display_types.h"
> +#include "intel_dmc.h"
>   #include "intel_dp.h"
>   #include "intel_dmc_regs.h"
>   #include "intel_vrr.h"
> @@ -602,6 +603,7 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   	u32 ctl;
>   
> @@ -639,12 +641,14 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   			       crtc_state->vrr.dc_balance.slope);
>   		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder),
>   			       crtc_state->vrr.dc_balance.vblank_target);
> +		intel_pipedmc_dcb_enable(NULL, crtc);
>   	}
>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(old_crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>   	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>   	u32 ctl;
>   
> @@ -652,6 +656,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   		return;
>   
>   	if (HAS_VRR_DC_BALANCE(display) && old_crtc_state->vrr.dc_balance.enable) {
> +		intel_pipedmc_dcb_disable(NULL, crtc);
>   		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
>   		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder), 0);
>   		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder), 0);
