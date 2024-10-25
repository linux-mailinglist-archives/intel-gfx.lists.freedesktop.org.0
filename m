Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF869AF6B2
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 03:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0077A10E370;
	Fri, 25 Oct 2024 01:23:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BzhvIYTp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D566310E274;
 Fri, 25 Oct 2024 01:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729819435; x=1761355435;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IAr0XKPcZMZS/RgZSR2z3yz74VtrnwWiC+ETRgHChkk=;
 b=BzhvIYTpvVgWNZ9ErYHKV8emL4p1z0x4NwjDQkKNMY/UCZTchFvVCred
 TXG1ye0vgibvkf/xOvgw4T7p9NBSFA3B3WCg7OvHdxUppsF0uR6yInXuD
 FLBQkzq6eKoYMnVQMd8mVTxXY2sPv4wORd30n5P3PkmIZi14vhIkGDWUx
 YbPPF5k2nO+Xd0FeG9ppTN4Ks+au6wmZSXnbEClYEh5R3TchBvSsFczc2
 rBEYpaJQw6h0RlrAzrJB93YfDtoJcsvXnY9KKpOlwMrYPOL0aXQflH8wb
 QPx/dUOHQMutyfej+yM7La5X/ognGkOmBaG1DZNCN+P3wf9IGrq4PaFA7 A==;
X-CSE-ConnectionGUID: OHSQUgwDSIKL/K4b7X751Q==
X-CSE-MsgGUID: IEPVaLhdTfm5BgrEJoFfYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40020957"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40020957"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 18:23:55 -0700
X-CSE-ConnectionGUID: 9piYibN6RWamTGVO8c35Fg==
X-CSE-MsgGUID: NRbNElZoSL++M0hLF6oF/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80673056"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 18:21:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 18:21:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 18:21:25 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 18:21:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=phrw3n148vbvIT82VFVzZeZeIw/m+hBcgPdfQKj9KEHYhx4X45dyyUlkdMEm4ocAwwpwIbsOf3fgqdHtcAy+F5uWCDhUrtN2dbSmgRXvrwQ/meCyMghToa5e1m+vGRXZDzRMzmlcwcyp75T+urHrggUfErmEumyNB8bAkUpT3RXbxKGg3LRZA5Tu1ssJfP8VogaKDUDWxkPOp9+67+D074gT6NLek3/Heu/M+DgiSFdsImF3oR5kKzhdn42/fe+IwfgIocFYPFu0ZJwmn/lVS/CVorOpNmOUaE6wQfJuR7lc16N1SLVrmZiaYK+cWsjUHYXO/F0oxk6OsJoXARPpvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IAr0XKPcZMZS/RgZSR2z3yz74VtrnwWiC+ETRgHChkk=;
 b=vZvEft5bTTeiEvrFd32FhiAopegbw0g0iloRTXpFXse7uQTA8rv2ARqvTmbf/WeCitiOy9qp0h5K2S4QGxwrlSOnq+vwRZY3M3GmG85A2PPqIBiAU2Q0Fx9V59chOhWrs5sotnCWbR0GsUfxNSIJpXcGE1dGsqwNc9ZD8jteinrw/ZrH0Ha9bZrty0NwKe4e3o9oz5NOoulmONBpKqG1Ukbc5Bt8qHAqEtXi41SiuNBExgtXvRNVNVfYwQ5Hh0Ya9t+fB/k/u+RkXTF6+3BJquRORA6ZZmxGKpq36J0FjZS3Z0fdygTiUdzkOCzF7NvZWo5LjJbMizbW98xDtGLvow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA3PR11MB7555.namprd11.prod.outlook.com (2603:10b6:806:311::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 01:21:23 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.014; Fri, 25 Oct 2024
 01:21:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Ghimiray, Himal Prasad"
 <himal.prasad.ghimiray@intel.com>
Subject: RE: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
Thread-Topic: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
Thread-Index: AQHbJFQvmh2mxVQK0EuLUzPaQgNlSLKWC3UAgACiWYA=
Date: Fri, 25 Oct 2024 01:21:23 +0000
Message-ID: <SN7PR11MB67501BD53C3641C4BB1E9E58E34F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <20241022072920.102033-1-suraj.kandpal@intel.com>
 <5a48a3f3-bda0-45a2-98e1-068165f8e772@intel.com>
In-Reply-To: <5a48a3f3-bda0-45a2-98e1-068165f8e772@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA3PR11MB7555:EE_
x-ms-office365-filtering-correlation-id: 745b87df-4d5b-442e-8b88-08dcf49356b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?WFZXL1VvMUJSa01zREpZckxSV3g5MG80RGw0TGpyN3dzeWdrNTZZSUhGWmlU?=
 =?utf-8?B?Mm5Qdy9TbHhnQ1ZNM05PS2pFUWt0OWhkSGJ1Ry95cEpaM2JoUnBSSWpXQjhv?=
 =?utf-8?B?czlPVkNhWDNWdXQzYnAyMTZ4TTduUHVNK3JKSTVNWVVvbGZSNnk5SlljZEVT?=
 =?utf-8?B?ZUVqaU03VVhvNnNqQWtWNkFuV09vRlFCQklOeXRCQSs4dm42cjl6NkVTYXJo?=
 =?utf-8?B?VDV5S1VRUS9mblIxcStFVXJvUDhxZTNKSDlFTHRsV0wvcUZXVTc0WmxiSXJy?=
 =?utf-8?B?Qk15NzVrV05PWGc1Szl1c0ozb2lkcjFiYXFQODgxTi83RXp3SUtvUXpScWtS?=
 =?utf-8?B?ZnRkUUszZ2ptNHFHb01zaFNaWFYzUllCSW5tZ2JPQkt3NW9YZzRibHYrN1lz?=
 =?utf-8?B?UHZiNGk0TncvTyt2U2ZMVmFrS0ZtSXJvMXJ1NUxTZDdDWHpyRStxeVlvMnN4?=
 =?utf-8?B?QkxXYUdFMklabHMvRXE2NHhaNlBPRHdvTDJOcXpzOVRqTS9OT1U2N0EyaGpt?=
 =?utf-8?B?RTFyRjQyQURGcVF3RVE1U3dTNnJqRVU1alQ5S2dQc1h4b1BBcjU2Z25VVndy?=
 =?utf-8?B?WVZYb0lIRGZIK2NDQmJWWmEreU5NRHoySWFXMDhac2p4dFBhWk41dVprMVYw?=
 =?utf-8?B?V3ROcTVaOFhBK08yWkRJdTRJcWx3WnlzYVYreU5mMzlGNis4cW96bXM0a3E2?=
 =?utf-8?B?ajJIbTVjN2xnTkk5RTYzL2QvWXhTeUFmVTFiSTZFZWdDdERYQjlvVG91R0VP?=
 =?utf-8?B?OFVyQ09VQnZCUXJ3RTZNM3RaTzVRTXhDUzFPN1VEcTVXaE0wZ2RFY0xKRXZy?=
 =?utf-8?B?bVlmZE9hRGdvQ2psR01kb3BYSm4raGwwT3daanZCaWhqR0JWWFpSQWVSMkFF?=
 =?utf-8?B?NSt3bmh4NEN0TGd1czd3a2plcXdXYWVLV082blJKWEpSMHVIWEcrUjFDeE03?=
 =?utf-8?B?cHRVUjloSWZiYWduYVpqN2NtNlprUnVoOW80T1RTYXRiU1ViUWFjS1Bhbnlr?=
 =?utf-8?B?U2lJVk9VeGM2NlpMbnlqR1lxN2EzaTlNZll3Z0tYQ3hwZWZWdVdUeEZ1NTFi?=
 =?utf-8?B?bXJtWDloZEY1ak1xMUdsZHIrOEVBRHVvVjBTTWMwRGRFUG8xVFhmV0VBckJj?=
 =?utf-8?B?ZE5DU1NzTzk5Rjcya0MxT0ltV01qck5xSWo1bGZPaGVYN2g2VTNNWmtCZitn?=
 =?utf-8?B?T2tmVkoxUjBPdVJEV1pQZXAzMFFwWWw1K3FVQmo3K0hpY1ZwMXFYU2hrSlZx?=
 =?utf-8?B?cmU1bGpVSURpbXBKMUwwenZJRUk1QU5sdEExQmR5TXZYZU82OTlQdjlIdWpZ?=
 =?utf-8?B?Si96THlGcUw0clpPTXRzVkJnZngwWnBEc3FJVjM2ZWF4bDNmZHVvOFVZN2Rt?=
 =?utf-8?B?NHdlRVBJNElYK3orZHVNZEMyR3NscExYMWpRU0JKZE91V3IzVE9mY0crRjhY?=
 =?utf-8?B?UXo2RFRza1VkWFAwT21IcjZZN29PS0VWZTJqS0RRNkd3UTNIcDlTZnpTczlq?=
 =?utf-8?B?SEI1WFZWWDROaWYzWUVicDNOMVUwbk56YWZrKzE5QTVKN0hvWVhCU1JuTTZJ?=
 =?utf-8?B?R1lIQjgrTk82dzM2RnMydzd4TWM4aTNxekIwSWgrV0dmYVVuNnhxUlpCMUpi?=
 =?utf-8?B?OGYwcThiQ2NSSXNsQ3UvZmNwVWdYZXl3OThBSEdFaWIvWFZsMkpmbmRkVHM5?=
 =?utf-8?B?SXdtSlhIWVhwajlsTytERUxJaElUUzV5K0t6QWxJRFRYYXp3ZExzYUVFN1A1?=
 =?utf-8?B?Vjh4Y25MVTVRRlY1Wk5yOEtYMExjcjc5MVJRdkFqeitoR3hiRzJnVXF6dTV4?=
 =?utf-8?Q?BQmgsvoHiBXHRGL+KUrr2YhcCRNHU1f+2eFzI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VjBRZWltY0ZiZThaKzErZTlZb2hEMFFQaHVKTDU1dHAvNWhDWWNGZUg4OFUv?=
 =?utf-8?B?d0QzVVlEVnZrZ1Y2emdBSGY3bitPeHdKWkxmQWtmVXc5R2lGa2tDY1ZxVkJu?=
 =?utf-8?B?MjFmTlhOZEs3UzBmR2dGazJ5cXdPZVFSa25hSDRJQjM2aTN4Y0xvTUtJcDc4?=
 =?utf-8?B?dnFlOW01RE12K0sydlErNUhNMnZ0cEl4RWF0d1E1dk9JbHlqZjVnYTdIVWQr?=
 =?utf-8?B?Y21QWTJlUDJOOHRhVVVvZ09ZemNzTVpGaDJFczdSMW5nRzVjSVpweXl1YWR6?=
 =?utf-8?B?Z0tWbjBHd1BNald4aHFGZXRJT3RrVGZZM3lnbStWNGxSRTZJMldNZVhFZGxk?=
 =?utf-8?B?UGtnbEtMQ2JTRUpJZjYydDBoanBTMTVpTzcxRFduRnNiSUN4eVE5SU94SXRp?=
 =?utf-8?B?L2w2b2NLa2NTYTd5cnBaOEtEODYva0JyZE02Z1hPQUdOQ21RM2dIUWM5Q3lq?=
 =?utf-8?B?TlVFRTlKYk5hSUVibEVPNDFBYWxubDVZK2dDaGQ5KzcwSm5hcUFuaHFlNkdq?=
 =?utf-8?B?Rm51SUpYTzc2bUdEYnVnMm1hUDUvMThENnlwUVBDajV0UE5PZzIrRWgwZDBS?=
 =?utf-8?B?ZmcxV2FhalFCeXA1T1FTTTEyK2Rvblp1WGFtb2dVdkNUVkppRHB1ZWZqbERO?=
 =?utf-8?B?MlZMcVdVZUVCeTN3d0lLRTFiaTBMaGJic1BjRThISkJKbW5CbEhpREp1R0xj?=
 =?utf-8?B?enZMdVllOHZuemRoVVhIZHNacmxJaGdhUHA1ZXlNekQ0eXJXYXBodlJBa2hJ?=
 =?utf-8?B?eFFxQ1JDUmNieHptdVNlN3lscDlJbTZGWWRoZUdUNzNMSCtudGNtRnNtTjdF?=
 =?utf-8?B?UmJqdU9JZG1GRlRyaEpjSjBJRUp6VFhFYkdGbTBrZ1drRUtyZ1lhb0RpeGRC?=
 =?utf-8?B?TDZpV29pblIxc1VmMGVpK0NUYUw1VFZnU3VxczZvNmJRUENRdmxBVENvMjN4?=
 =?utf-8?B?UlQwMTJvNGpQOTlXclM0aVlKOFIvNXg1S2Q5bE5QL1FFR3ZKNC9NaXNUQUJu?=
 =?utf-8?B?K1dIb1BpSnVSY1hCYVBHSjNwbDJKWGp4Mk1LbVN2VU1OV3ArWlJlbDNkNG1a?=
 =?utf-8?B?VGNGcXBwVG1SZVhUTjFOanlpQUhNanlLZUFxalhuQTNNK0pGVXdPdlhtQ3FY?=
 =?utf-8?B?VHNxYkdVb1VwS1Fja1JSbzZvSC8vMWMyMzdXYmFEUVNIdnFmTXkxSGFwWC9U?=
 =?utf-8?B?L3dwZkJXcU1WSFNudGlWcjMyM3Z3S3Z3RUtLa2NTNkkrYm1jRkF5ZDZCSGZh?=
 =?utf-8?B?dFBrQ1lENXNQdTB6bDY0YWFHQmVqUFRmZkZUSDJrZDdiOU5RUFJ6ZzNmYUxM?=
 =?utf-8?B?SDJlZDhHd3hIeDZsRWlBR2JXcjd0TXVxektXNkY0VHFqSVlUWXdpcFZ1Uis1?=
 =?utf-8?B?TFQ4bDdqemc0enBCemJXaEN5YVpvOUVGN0VFSU00a2VVaXhINmF3bklYVkt1?=
 =?utf-8?B?aCtXVHJNSGhWSGdTZFJBbkllNExSUFNhODJhczBwQlJ0eU9BdHh5V0ZnQ3pO?=
 =?utf-8?B?NFdpSXIwdjZ2OHF1UTdyOXlBNnoxQis5eElsc1l4ajdkMlBFVXVQQUhaOVBM?=
 =?utf-8?B?djA4eFRWSTVRdFJzb0FYcTJNYkZFMjNLYm5KeVU4MHZHK0g2TkpGRmViZVYz?=
 =?utf-8?B?OVdZeThBWjFPRmZIN1BsbU5xTkRFdW5HbmRPY0VwN2xvK3RvZGhtUUt5K29t?=
 =?utf-8?B?Y3o5emxUY05qWWhGcTdzYkZiZUpWYVBRQjNxSVhzajVmRGtqTWFscHZxWmpN?=
 =?utf-8?B?cHZ1S2xpWkJtcW9RTy9nY1ZNbVduMlhFRFRsTjNNNHdDcVFaNXFOa3phSHZj?=
 =?utf-8?B?dDc3c2s5Z09ubCsrakFFcW9ZQTBYSksxR2VxenJETi82SXJYNTNHUDg3R1lk?=
 =?utf-8?B?d1JabTQ1TXRpVkVVL2dWYzBtemVWY3BjdGh3Z0Vpc2pLeitQWjRzMk04UHZE?=
 =?utf-8?B?dWdLNXFUb3lpaCtkQkYyT0t1RW01NTB3QzVYVkdYWndvZER5aUdoK1YzZHpV?=
 =?utf-8?B?RHZwM3FnWElZWnZ0ejllVERjUzVQMGJ4NVg5QnFwdHo2a2IvQWQxb01zNVh2?=
 =?utf-8?B?UVFEZ0Zvc2xPQ2ErWHJPQ3JiVjNTWlZCbjVKRE1mczdoaXZpamFadXlOaDlk?=
 =?utf-8?Q?/ZsXa+2MokcIkUDgdYrh4+rkt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 745b87df-4d5b-442e-8b88-08dcf49356b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2024 01:21:23.1242 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BcxV9x0+EmDINoKU+Dz6RYOCKriv+mbzuiHtezvczJDFB2J7+lMtU+7E4cyL25vsKs820ltInc6AnH8MqvH0QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7555
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2VyYW9sbyBTcHVyaW8s
IERhbmllbGUgPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJz
ZGF5LCBPY3RvYmVyIDI0LCAyMDI0IDk6MDMgUE0NCj4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJh
ai5rYW5kcGFsQGludGVsLmNvbT47IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4g
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmF1dGl5YWwsIEFua2l0IEsg
PGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPjsgR2hpbWlyYXksIEhpbWFsIFByYXNhZA0KPiA8
aGltYWwucHJhc2FkLmdoaW1pcmF5QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSF0g
ZHJtL3hlL2hkY3A6IEFkZCBjaGVjayB0byByZW1vdmUgaGRjcDIgY29tcGF0aWJpbGl0eQ0KPiAN
Cj4gDQo+IA0KPiANCj4gT24gMTAvMjIvMjAyNCAxMjoyOSBBTSwgU3VyYWogS2FuZHBhbCB3cm90
ZToNCj4gPiBBZGQgY2hlY2sgdG8gcmVtb3ZlIEhEQ1AyIGNvbXBhdGliaWxpdHkgZnJvbSBCTUcg
YXMgaXQgZG9lcyBub3QgaGF2ZQ0KPiA+IEdTQyB3aGljaCBlbmRzIHVwIGNhdXNpbmcgd2Fybmlu
ZyB3aGVuIHdlIHRyeSB0byBnZXQgcmVmZXJlbmNlIG9mIEdTQw0KPiA+IEZXLg0KPiA+DQo+ID4g
Rml4ZXM6IDg5ZDAzMDgwNDgzMSAoImRybS94ZS9oZGNwOiBGaXggY29uZGl0aW9uIGZvciBoZGNw
IGdzYyBjcw0KPiA+IHJlcXVpcmVtZW50IikNCj4gPiBGaXhlczogODgzNjMxNzcxMDM4ICgiZHJt
L2k5MTUvbXRsOiBBZGQgSERDUCBHU0MgaW50ZXJmYWNlIikNCj4gPiBTaWduZWQtb2ZmLWJ5OiBT
dXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTog
QW5raXQgTmF1dGl5YWwgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiA+IFJldmlld2Vk
LWJ5OiBIaW1hbCBQcmFzYWQgR2hpbWlyYXkgPGhpbWFsLnByYXNhZC5naGltaXJheUBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
Y3BfZ3NjLmMgfCAzICsrLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfaGRj
cF9nc2MuYyAgICAgIHwgNCArKystDQo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3BfZ3NjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRjcF9nc2MuYw0KPiA+IGluZGV4IDU1OTY1ODQ0ZDgyOS4uMmMx
ZDBlZThjZWMyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRjcF9nc2MuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRjcF9nc2MuYw0KPiA+IEBAIC0yMSw3ICsyMSw4IEBAIHN0cnVjdCBpbnRlbF9oZGNw
X2dzY19tZXNzYWdlIHsNCj4gPg0KPiA+ICAgYm9vbCBpbnRlbF9oZGNwX2dzY19jc19yZXF1aXJl
ZChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gPiAgIHsNCj4gPiAtCXJldHVybiBE
SVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxNDsNCj4gPiArCXJldHVybiBESVNQTEFZX1ZFUihkaXNw
bGF5KSA+PSAxNCAmJg0KPiA+ICsJCURJU1BMQVlfVkVSX0ZVTEwoZGlzcGxheSkgIT0gSVBfVkVS
KDE0LCAxKTsNCj4gPiAgIH0NCj4gPg0KPiA+ICAgYm9vbCBpbnRlbF9oZGNwX2dzY19jaGVja19z
dGF0dXMoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpIGRpZmYNCj4gPiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2hkY3BfZ3NjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS94ZS9kaXNwbGF5L3hlX2hkY3BfZ3NjLmMNCj4gPiBpbmRleCAyMzE2NzcxMjlhMzUuLmVm
YTM0NDFjMjQ5YyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94
ZV9oZGNwX2dzYy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfaGRj
cF9nc2MuYw0KPiA+IEBAIC04LDYgKzgsNyBAQA0KPiA+ICAgI2luY2x1ZGUgPGxpbnV4L2RlbGF5
Lmg+DQo+ID4NCj4gPiAgICNpbmNsdWRlICJhYmkvZ3NjX2NvbW1hbmRfaGVhZGVyX2FiaS5oIg0K
PiA+ICsjaW5jbHVkZSAiaTkxNV9kcnYuaCINCj4gPiAgICNpbmNsdWRlICJpbnRlbF9oZGNwX2dz
Yy5oIg0KPiA+ICAgI2luY2x1ZGUgImludGVsX2hkY3BfZ3NjX21lc3NhZ2UuaCINCj4gPiAgICNp
bmNsdWRlICJ4ZV9iby5oIg0KPiA+IEBAIC0zMiw3ICszMyw4IEBAIHN0cnVjdCBpbnRlbF9oZGNw
X2dzY19tZXNzYWdlIHsNCj4gPg0KPiA+ICAgYm9vbCBpbnRlbF9oZGNwX2dzY19jc19yZXF1aXJl
ZChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gPiAgIHsNCj4gPiAtCXJldHVybiBE
SVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxNDsNCj4gPiArCXJldHVybiBESVNQTEFZX1ZFUihkaXNw
bGF5KSA+PSAxNCAmJg0KPiA+ICsJCURJU1BMQVlfVkVSX0ZVTEwoZGlzcGxheSkgIT0gSVBfVkVS
KDE0LCAxKTsNCj4gDQo+IEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyB0aGUgY29ycmVjdCBjaGVjayBv
ciB0aGUgY29ycmVjdCBsb2NhdGlvbi4gQk1HIGRvZXMNCj4gcmVxdWlyZSB0aGUgR1NDIGZvciBI
RENQLCBzbyBpbnRlbF9oZGNwX2dzY19jc19yZXF1aXJlZCgpIHNob3VsZCBzdGlsbCByZXR1cm4N
Cj4gdHJ1ZTsgaXQncyBqdXN0IHRoYXQgd2UndmUgZGVjaWRlZCBub3QgdG8gc3VwcG9ydCBHU0Mg
RlcgbG9hZGluZyBvbiB0aGUNCj4gcGxhdGZvcm0sIHNvIHdlIGNhbid0IHN1cHBvcnQgSERDUDIu
eC4gQWxzbyBub3RlIHRoYXQgdGhlIHRoaXMgbWlnaHQgY2hhbmdlDQo+IGFuZC9vciBpdCBtaWdo
dCBhcHBseSB0byBvdGhlciBwbGF0Zm9ybSBpbiB0aGUgZnV0dXJlLCBzbyBhbnkgY2hlY2sgbmVl
ZHMgdG8NCj4gYmUgZG9uZSBiYXNlZCBvbiBHU0Mgc3VwcG9ydCBhbmQgbm90IHBsYXRmb3JtL2Rp
c3BsYXkgSUQuDQo+IA0KPiBJTU8gd2hlbiBpbnRlbF9oZGNwX2dzY19jc19yZXF1aXJlZCgpIHJl
dHVybnMgdHJ1ZSwgdGhlIGNhbGxlciBzaG91bGQgY2hlY2sNCj4gaWYgdGhlIEdTQyBGVyBpcyBk
ZWZpbmVkIChvciBpZiB0aGUgR1NDQ1MgaXMgYXZhaWxhYmxlKSBhbmQgaWYgaXQgaXMgbm90IHJl
dHVybg0KPiB0aGF0IGhkY3AyIGlzIG5vdCBzdXBwb3J0ZWQgZHVlIHRvIHVubWV0IHByZXJlcXVz
aXRlcyBhbmQgZmFsbGJhY2sgdG8gMS40DQo+IHdpdGhvdXQgcHJpbnRpbmcgYW55IGVycm9ycy4N
Cj4gDQoNCkhlcmUgaXMgdGhlIHRoaW5nIGJlZm9yZSB0aGlzIEkgdGhvdWdodCB0aGF0IHNob3Vs
ZCBoYXZlIHdvcmtlZCB0b28gYnV0IGFmdGVyIGhkY3BfZ3NjX2NzX3JlcXVpcmVkKCkNCldlIGNh
bGwgaW50ZWxfaGRjcF9nc2NfY2hlY2tfc3RhdHVzKCkgd2hpY2ggaGFzIHRoZSBmb2xsb3dpbmcg
Y2hlY2sNCg0KaWYgKCFnc2MgJiYgIXhlX3VjX2Z3X2lzX2VuYWJsZWQoJmdzYy0+ZncpKSB7DQog
ICAgICAgICAgICAgICAgZHJtX2RiZ19rbXMoJnhlLT5kcm0sDQogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIkdTQyBDb21wb25lbnRzIG5vdCByZWFkeSBmb3IgSERDUDIueFxuIik7DQogICAg
ICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0KIH0NCg0KQW5kIHRoaXMgc2hvdWxkIGhhdmUgcmV0
dXJuZWQgZnJvbSBoZXJlIGJ1dCBpdCBkb2VzIG5vdCBpdCBnb2VzIGFoZWFkIGFuZCB0cmllcyB0
byBnZXQgYSB4ZV9wbV9ydW50aW1lKCkNCldoaWNoIGNhdXNlcyBpdCB0byBzaG91dCBvdXQgbG91
ZCB3aGljaCBpcyBjdXJyZW50bHkgY2F1c2luZyBhIGxvdCBvZiBub2lzZSBpbiBDSQ0KDQpSZWdh
cmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+IERhbmllbGUNCj4gDQo+ID4gICB9DQo+ID4NCj4gPiAg
IGJvb2wgaW50ZWxfaGRjcF9nc2NfY2hlY2tfc3RhdHVzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5KQ0KDQo=
