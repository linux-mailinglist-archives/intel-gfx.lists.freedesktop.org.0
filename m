Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC0E8FF0EE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F88810E9C1;
	Thu,  6 Jun 2024 15:41:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+nyvNG8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16B3310E9C4
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688510; x=1749224510;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2JZQGKIVOP6LAx+yX1Bqxgh6g8uDQoO/gHQk9lRMB/s=;
 b=c+nyvNG81P9/MJZpJKPHpBcvuxaF3wx4F7OoV85MQtxsj0Xt1cqO3PR7
 RIBQGB3f5tvzwbF4kIcVI10aercEKxmKGyE473ziJMwwT7pfwGTG8t/2v
 kJxz3mNahSP5EmnpylZozDC85zX76o3b0fpXe72SusitOxRuEFYjDOLkT
 fENNjjAev8d3jxvfCeJx4rHe1z72sKgDsKNRqEJKFeANtxVi1V1VAQH+/
 Wakic4g7QUgRkFY62bjhss9wqBWQhWxA6FwfNacZXDeORvhKWo0Q5Fs9S
 jBc119F9e7XAxUltftoGyWEwlz8GYusUV+StAcS5YrbsPSwFpKuGHKWwZ Q==;
X-CSE-ConnectionGUID: n+hR0DiVQ4exJ89oCE5oSw==
X-CSE-MsgGUID: tJzK2rbqTm+c5TUNZPG5jQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14173497"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14173497"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:41:48 -0700
X-CSE-ConnectionGUID: f8MXTc4xRuiDP0X91cWEpQ==
X-CSE-MsgGUID: iqCUFCFqS4KZDhGkduql8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38568704"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:41:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:41:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:41:47 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:41:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G3yozCLQI1czLN1M1AILMEm6D0AKC0bH4gqwjX1ZctjFwDeukPtvzeF2f8sMGEcAoKU5aKWN3bMx8QAMPefc4KbjmTcMhr5YbWv2XYOvjZbbr63Dp35c4nN6UJ6/4DdDzPfddBXN4+H6gLS4TacnpnXhZdHqeWcp7aXQH3WFIVDRZ7+MPsa690Et/N13VeIlztlUo0y/d5QsqdE4xM6E7OCznWX0YbFVsSpMKsbY5wZXFKDJhb/BbgSL/MtyY+8gatJgB0Fdnfo5a4C3EdnzK1xaSf6CNBrK8LyFu7/HJGOeewGm6rI+fV2bfpSUNbKACgNgvr+uZpRvL4f0qNMrsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2JZQGKIVOP6LAx+yX1Bqxgh6g8uDQoO/gHQk9lRMB/s=;
 b=FfDb1fFaBOvv8i3t8UU10MUXrlT19S/7kISlxx0x9ki+j6frKI+KonKjPS64uB5pB3drbt0vvSr3HYi3EfCsFLow/9EjBQ7sEdZ3CnDDMZrFK7HkoubwiOVihhf72uBX02syhWRhsqEZOFOJcY81tKDF0YJ7ByWPnoWTrVCu99zsbKN/LQ1mueCR3m0FBZPizW7qo96u2yWG0PH2l3pUOzICG/G3UtD7pNaGjQjgb8Gq1VuktQ8SCQiQhIiIiXrVHss0UKuHVAo/RSMmnk426nG9qBGXdcmGR2X/Nwp719cXGcosmCL5UDTDfQxxLw0cqBJjl9YIPMrXcVvHSpUIKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB6296.namprd11.prod.outlook.com (2603:10b6:8:94::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.22; Thu, 6 Jun 2024 15:41:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.021; Thu, 6 Jun 2024
 15:41:44 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: Re: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to
 separate function
Thread-Topic: [PATCH v6 11/26] drm/i915/psr: Move vblank length check to
 separate function
Thread-Index: AQHatzLfWf8fm6o1xkS5TQuwQg1fU7G61bAAgAAL94A=
Date: Thu, 6 Jun 2024 15:41:44 +0000
Message-ID: <dca159f3bc64a46aa16c47d2a058effd341b9560.camel@intel.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-12-jouni.hogander@intel.com>
 <PH7PR11MB59814F6E88C3E874C2BC89EDF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59814F6E88C3E874C2BC89EDF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB6296:EE_
x-ms-office365-filtering-correlation-id: 9cb755c1-9f49-44c1-e636-08dc863f2b2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bDBlUlRTRlJ6ODhiaWZtdVhadms1dDlqMkZWSmRjaU8yUjdwNlFlTURZMWd0?=
 =?utf-8?B?Sk5wYWpXaFZoZEI4K3NwUncwWHhhUlZmZmJYY1g4aE5sTVVwaVMrWEJIUm9U?=
 =?utf-8?B?N3I0Vk5pN1RQUlFJOURSdkRMUkRNT1JUNTNRaUZETlh6UEx6QzdnazZSYWsr?=
 =?utf-8?B?dHpmcUwyTXJyeFNoeFRCVE5HOGV5SjB0QVB4SUdjQTExRGptOTkyUHdtKzJ0?=
 =?utf-8?B?dDRQZFVjMGhPZ1pFUlc0ZXBYeUFPOENwenZHSWVhL0F0NzdrNzBQZjlUcWlF?=
 =?utf-8?B?ZE14WFZnK0F6WG11bUROOUU0Zk5ZcmwrRWFVSHpwWlR2TloyT0lQMVpNOEsx?=
 =?utf-8?B?T1pKMkFHN1RnU0JOS3lNMk9SU0xHM3oxT1B5N0txSzF2VmZmekxRa3crVDF5?=
 =?utf-8?B?L3VyMXlKYWUxNW1wRzdoUk1FeEo4UVdsVjVTNGkrQVRXc09DZWlMSzlCN1Mv?=
 =?utf-8?B?YmVsTU5xMDN2Y1YwV0UycXVlaU50bXQzZWxEV1EzVlNpOU9rYUpMejhxWVAw?=
 =?utf-8?B?TzV3UEVEajYzQkhvZWdYN1p5ZllCTFFnT1p6aHFTV2dWVXhnNGM1b1RSbWpJ?=
 =?utf-8?B?bldIYzB1Y01BNm5zZVZDcFdRTDcrRjMrYnkxUG9KaEpKeTJFRk5vaW05clFQ?=
 =?utf-8?B?UE1tWmxQam5JaGtSSGcyTVNKRnFGZVJHdnhCK1J5dHNJOTIrb2NXb01BZTNT?=
 =?utf-8?B?SCtFbTR3d0JXQld3d2h2SW1UYTNHWm9uS2xub1hKTk9LK2tWUWd0RlVCY3lu?=
 =?utf-8?B?MFFJcVZsdTF2ZkVFblBUTlZ5ckNIa1NjZFFYWXExV2s4YUJnR0RwUkJTY09u?=
 =?utf-8?B?bVBqcmlTWmVNQ0xUSVFZZ3p5aXlZM0p3di9TYTJYbjJucWlKQktrNFY4Nmxw?=
 =?utf-8?B?YTNwMTJiNi94c1dtYzlpM0ZNMjRBc3dmcnp6RXg5TEZPbE1LeUI3VisvcGF3?=
 =?utf-8?B?aDUrbjRQaFQ2MzRwbUpseEFyQ2hyTWI5SHB2WDd0RFdxalhGd2dXVVdOVHVO?=
 =?utf-8?B?ckt2SWVNRkxkeW1sTGpSSzdzUitvdG5FeDlKYjNVTmFPdFhXbWhGYzZhYWE1?=
 =?utf-8?B?YkRjTTV4UzZMRlRMbkdGMndCS0JmcmdUd1hoWXpMTGlRNlMxaWkyVGh4eWVr?=
 =?utf-8?B?VG9rc1NPd1d1VXJ4SGNMM3Q5N0FsYlVOM3VwZE5UMWtTNU5FZVY4QWFMQStv?=
 =?utf-8?B?QjM5NitqaERvb0w4ZUpBUWp0d3BMVWtlVXMzTzd3VXN2K0Q1YmYxMWlHbVR3?=
 =?utf-8?B?SEJaVHhnVmwwU0RPODM0SEt4akhUanl2aDRoQjVhekJUc2xlVDcweFRlMnpX?=
 =?utf-8?B?Yzd6S05pb2NHUWRIakd3bFVjUEdicUpsbWladjIwa2Y3RlM0ekgwYk1zNFVE?=
 =?utf-8?B?aG9XblA5Y2cySHg5RUhZNENOQW9VVmV2K3Zvb25SRW1FYWJ2U2xZNU5oc0VY?=
 =?utf-8?B?dHo4MXVYNkJma0pOV2JvVFYzc29CZVF3WjAzelRrYnZZYmxtbDEvOG05L2xR?=
 =?utf-8?B?c0tjWmgvNmZiamZJb2RTc3hQL0FSN3grTEdCemUvNEk5WDgwWExhQXQ4dlBX?=
 =?utf-8?B?TEpmWjFvSGd1MnM2RUJGSzBBUEwwb2Z3NlNGWkhZRHBYQ2VmbkFOT2s3UDBX?=
 =?utf-8?B?WlU0c05nTW01L0RONkJsSTZNTXV3VlNMNmNhQ0pHMHNHYmNwV294OGRnNWdY?=
 =?utf-8?B?WnNySi9GaFE3MU9GUURTaFAwam4xU0VheFFtWkl6TlJVUXF2Y1pjWGhHc1Vp?=
 =?utf-8?B?TFFXNEpJSHlSS3BtOHZZTWpNblhXaWF3eC92R2FSeVFyeUdxV1huYVlLdlMz?=
 =?utf-8?Q?kmbP5dm/WMq653jF6ThlUssEC8FlzFVzxX0Ss=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eDlpaFVzbVZUc3d1NXlYenBQeDhPTHc2RExEMER6M09DT2NodmhhT1RhdUs4?=
 =?utf-8?B?RnJCV3JCMXhIOXZueUtmQnZFb3VJekw0eFNzcU1KYlVmang1UFN2U2Y0L2xv?=
 =?utf-8?B?R1EwUVA5dExFZXNNWkhsRlgxM0RoVnhObkF6ZVlPbWlyMS9hSXQ1ZksyeXJU?=
 =?utf-8?B?ZmFzSHozRk4zZjVQTnNzR2hyWDRDbTJzc0xaNFYwaXA4N3Y1cDI1d1VVL0ZI?=
 =?utf-8?B?MXJPQnFXUFo5YXpMcUZEQ2FRWU11d0FGdW84Nmt4cVc4b2dWQUczUUV1RG8y?=
 =?utf-8?B?L2EyRXZ2dWUyM3NQMEh0Umx4UDV4MXhSY09nSDBrU3BqOUZEVzlPU21yZzhu?=
 =?utf-8?B?bzN3NEdQQnJyeitETG1rSnZwYjBkZENWK0t1ZjZUdWo4VHVINVRxeWhvMUJq?=
 =?utf-8?B?RjRxRXdVVzk0SnR2a0xjcGcvdmVrOEx2VEZtSXRJVXV1NVR4WXZ4aGdVMFBm?=
 =?utf-8?B?M1FhekpvU05CSlBwYWY1UTQ5VU1iVmZacnF1bkdSN1ZZdzBEOGlrMkhsRWxZ?=
 =?utf-8?B?SjJDVTRGVkpzdlkxbjk5eU9sSTRGK05jRnJxRWJGRTAxUzNRcDBzN2tiVDN6?=
 =?utf-8?B?ZzVjeDdDTjBFRERURWg4NXYxN3FadGlFZHhobDIwNVcyOW1YMEQwVytkd1gy?=
 =?utf-8?B?Z0EwRXdTMEk3aGVZRVpodGdHbUtkWERHZEZSWHBoZkJVQSt2VzJTdFI2Nnc3?=
 =?utf-8?B?cGpKWnlVbmVGOGZZZG04YjVwOVpha0sxVXkwRHhtNHNhWTAyR21Ub2pUZTEx?=
 =?utf-8?B?TG15VzRhc2hJL1IyWGFWMG02RCtMbDZEY2tQMTUzUTFwWlBLZnRucVhQYU5z?=
 =?utf-8?B?MnJzSjZxcEtXTTcrWnBvZHBMcDdwU09uUjAwaGd6ZER0MHh3Q1E0Z0NobjZI?=
 =?utf-8?B?SDljWEFQM2ZQRllnc0pKMDVsUlVoM3JZZGhtRndnZTh1SXdyVExuN2ZhcGRU?=
 =?utf-8?B?N1Ayc1E2NTFCRHlhTkd0NSs0bGZNdm1qQ3p1QmlubC9HVXcrQU4xOXJVUUF6?=
 =?utf-8?B?QjROZytoc3dxekZ4dlFQeW9SaWhtYWlOQmREYW9QSGZrd2VMc2xPbTRYNCta?=
 =?utf-8?B?M2lxb1VheGRMdHRFUE9ES0M4dTJ3Z3Y3b1RvVzlNV0JiUjdSVzZ3RWV6dzZW?=
 =?utf-8?B?bVdpWi85WTZYNnZqR0ZkbXRaVGZrOTNTMFJBbk5oSDR4RjRjdGpTak0zaEtv?=
 =?utf-8?B?UjFGOVZ2aVBlZTdRdzVqZEJwYlV6VzhwWVlPTjJ5ejFMWkU3M3pUMDY3VHN1?=
 =?utf-8?B?UTBXTXRLSVdCd0dYWnExSHFmYWgvcVRQaTdXV0graHgvRWllVU1KdUdkSTJh?=
 =?utf-8?B?SlF1RjlsS0krK3grWk9WemNpdUtyay9teXpwaGp6YTY0ZElhS3dXU1NtMXdH?=
 =?utf-8?B?U1lRYkQxbE5zTmduVFhvbm1iYWpkUTM2YUZpNG8xNXFqanRTcHowS3E1a1k1?=
 =?utf-8?B?U1dEN2gyclFUZnJZcmVPN2pmSVdzczN4ZVVRNzRZakF0WEFMU0Y5UHNrTUM3?=
 =?utf-8?B?QzUyeXhzVWRYdVVvMVRJNkVnU1dqN0hIRWZZeGFjSjZGOTNoY0s0d0RvQnBa?=
 =?utf-8?B?MEtvRFlDdnR6ektKK0JrWFVsNjBEaGpBVXM2SGh2RWJpaW1XcmJhQklEaUsv?=
 =?utf-8?B?dmhHMVl5cVZFL0ZjL3g3bUQwWGluQmdGRy9seEhvb29sODVZVEgvNkw0bExQ?=
 =?utf-8?B?dElzTDVsUXBQVVpNVkg4MTl0THdQUjBXc2czWUFOUVJqejdmdXRYRjc4NnlS?=
 =?utf-8?B?K1dBM2tDZk1vSFZ2RFNkeEFUN0JYWmxxaFVjRi92UDhjNU8ycEIyYjBYRmFO?=
 =?utf-8?B?dk9OUFBuL29mcG16VGRIY2wwZWQybkV2cHdsUGVpQzhSUW5YaGFSd091RktF?=
 =?utf-8?B?REc1MUErSmJJMk9CaHZ0RjZTQktlVkRtV3Q3SFVjYmZNYno0RVZ0bXpGc1pQ?=
 =?utf-8?B?bDZBdFBWUHl4WGU3eHlWMUxmYUtSQzRZOVBzTlhteW9pQWFzYWM2WTlRNnZH?=
 =?utf-8?B?UWx2Y2RQYU1XMjBHbWplUlROMXhlWHpGdVNKOTIySzNzaWh1MytiL1dRdUFx?=
 =?utf-8?B?RXhTQWtPaEZtWktXYUVXLytqWm44cW5FY3JhbWxNS1RHUFRPRjhSMVlVamY2?=
 =?utf-8?B?ZzNqWEZHeFljcDE1cTBERnVLMTVYKzBFa0dOZnZZVlRrYlFmZVMwRFdhYlFp?=
 =?utf-8?B?S1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5D433B7843C2304EB5DA76272FBEA705@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cb755c1-9f49-44c1-e636-08dc863f2b2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 15:41:44.4847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kdOTR++Nk/oWzdubi2kX3VIahM58hxw6uOwRVnAtu5AtVNs3WGbDFF53i4AJxPHd74YOxIj900XpgIHm5Wom21UHPnr3VT4pR4LKCizXLiI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6296
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

T24gVGh1LCAyMDI0LTA2LTA2IGF0IDE0OjU4ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogV2VkbmVzZGF5
LCBKdW5lIDUsIDIwMjQgMzo1NiBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47
IEthaG9sYSwgTWlrYQ0KPiA+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjYgMTEv
MjZdIGRybS9pOTE1L3BzcjogTW92ZSB2YmxhbmsgbGVuZ3RoIGNoZWNrIHRvDQo+ID4gc2VwYXJh
dGUgZnVuY3Rpb24NCj4gPiANCj4gPiBXZSBhcmUgYWJvdXQgdG8gYWRkIG1vcmUgY29tcGxleGl0
eSB0byB2YmxhbmsgbGVuZ3RoIGNoZWNrLiBJdA0KPiA+IG1ha2VzIHNlbnNlDQo+ID4gdG8gbW92
ZSBpdCB0byBzZXBhcmF0ZSBmdW5jdGlvbiBmb3Igc2FrZSBvZiBjbGFyaXR5Lg0KPiA+IA0KPiA+
IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyB8IDE4ICsrKysrKysrKysrKysrKy0tLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCAzNTMwZTVmNDQwOTYuLjIzYzNmZWQx
Zjk4MyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IEBAIC0xMjQzLDYgKzEyNDMsMjAgQEAgc3RhdGljIGludA0KPiA+IGludGVsX3Bzcl9l
bnRyeV9zZXR1cF9mcmFtZXMoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gZW50cnlfc2V0dXBfZnJhbWVzOw0KPiA+IMKgfQ0KPiA+IA0K
PiA+ICtzdGF0aWMgYm9vbCB2YmxhbmtfbGVuZ3RoX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0
Y19zdGF0ZSkgew0KPiANCj4gQXMgdGhpcyBmdW5jdGlvbiBzcGVjaWZpYyB0byBwc3IyLCBtYXli
ZSBnb29kIHRvIGhhdmUgbmFtZSBhcw0KPiBwc3IyX3ZibGFua19sZW5ndGhfdmFsaWQoKS4gT3Ro
ZXJ3aXNlIHRoZSBjaGFuZ2VzIGxvb2tzIG9rIHRvIG1lLg0KDQpQbGVhc2UgY2hlY2sgcGF0Y2gg
MTkuIFRoYXQgaXMgYWN0dWFsbHkgbW92aW5nIHRoaXMgdG8gYmUgY29tbW9uIGZvcg0KUGFuZWwg
UmVwbGF5IGFuZCBQU1IuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gUmVnYXJk
cywNCj4gQW5pbWVzaA0KPiA+ICvCoMKgwqDCoMKgwqDCoGludCB2YmxhbmsgPSBjcnRjX3N0YXRl
LT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmJsYW5rX2VuZCAtDQo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192Ymxhbmtf
c3RhcnQ7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHdha2VfbGluZXMgPSBwc3IyX2Jsb2NrX2Nv
dW50X2xpbmVzKGludGVsX2RwKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgLyogVmJsYW5r
ID49IFBTUjJfQ1RMIEJsb2NrIENvdW50IE51bWJlciBtYXhpbXVtIGxpbmUgY291bnQNCj4gPiAq
Lw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmICh2YmxhbmsgPCB3YWtlX2xpbmVzKQ0KPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICvCoMKg
wqDCoMKgwqDCoHJldHVybiB0cnVlOw0KPiA+ICt9DQo+ID4gKw0KPiA+IMKgc3RhdGljIGJvb2wg
aW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpwqAg
eyBAQCAtDQo+ID4gMTMzMyw5ICsxMzQ3LDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25m
aWdfdmFsaWQoc3RydWN0DQo+ID4gaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoH0NCj4gPiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgLyogVmJsYW5rID49IFBTUjJf
Q1RMIEJsb2NrIENvdW50IE51bWJlciBtYXhpbXVtIGxpbmUgY291bnQNCj4gPiAqLw0KPiA+IC3C
oMKgwqDCoMKgwqDCoGlmIChjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfdmJsYW5r
X2VuZCAtDQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtPmh3LmFkanVzdGVk
X21vZGUuY3J0Y192Ymxhbmtfc3RhcnQgPA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoCBwc3Iy
X2Jsb2NrX2NvdW50X2xpbmVzKGludGVsX2RwKSkgew0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmICgh
dmJsYW5rX2xlbmd0aF92YWxpZChpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpIHsNCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
UFNSMiBub3QgZW5hYmxlZCwgdG9vIHNob3J0IHZibGFuaw0KPiA+IHRpbWVcbiIpOw0KPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+IC0tDQo+ID4g
Mi4zNC4xDQo+IA0KDQo=
