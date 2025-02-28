Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830A9A4995C
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 13:32:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B5E10E2A3;
	Fri, 28 Feb 2025 12:32:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IeH0hRhu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 358EB10E2A3;
 Fri, 28 Feb 2025 12:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740745920; x=1772281920;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=28jIrlBkZtm0YlRlXGW+pZbcdrGlA5f2YY/XpuR5IXc=;
 b=IeH0hRhuo65yYMOC0CtkOMPn7aNpdpWHHaKyBYynBZucl7Ew1DCuDIYg
 ZlSwYt/bvuOUHH7ZbuLVqhMny8nfWyXJYYRpk6HiK1ghnulu5F1JHQqeR
 HE5penggCnmniRhKpm4o7Pc4nVBMZfJdgeVmzKVANLpDsEuXgYhcSkcNv
 l6+ZbrZ9tUMI4MZ5Jdfs7tXPDOPGAise0u+PQ/h/DTU8edECmB8iz7Rbs
 A830ibwVPNlTL8XEAF5UZlCwOotHGTEpkuangTaDnxAJVy7tv51oWjQpw
 KGp46R5Nq45exC3QOTLGi/rb6YfwlkRPZSnVANudRVMdREpmv13bxHpUS g==;
X-CSE-ConnectionGUID: DPqvYcPmSnGo52b/m+9Otw==
X-CSE-MsgGUID: 2W7JNfcIRrG79DvRm8MVPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41866353"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="41866353"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 04:31:47 -0800
X-CSE-ConnectionGUID: R8SSbgjpQYKFOpXOBGazbA==
X-CSE-MsgGUID: SXSKEY8rTq21Y8b4FQKZxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122556188"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 04:31:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Feb 2025 04:31:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Feb 2025 04:31:46 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Feb 2025 04:31:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dJsFDAtvWYfBO/svTrygkAoKjYf/eFRvAxD2CCg5EVQFWTn9QRyJJUnZSTZhX66jbEyiUhB1Rv7e8SWtEKSVT/+vGoHUn3G0K4VvuyKKWb7vN1T9XMYGp4758KFGiWOaMEbfGoqZX6zLmILg+fCqjwx61ToNDScGhN61e+T8agaPgL0nTGzFdet3DQYHVjAGmblluDY+ygj5kisCRgxskQdangD6YHmCPIg/cX9gJhdJjcveMWdhrkFze3C4xww9rqccXR/UApkH2suSyWUHc3xDokM9qE70yCFP1yA45qYGDL3TiAhLoThB0rRxVeJn4Gt2tB34Cibo8yq1M+gfTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V1QSGkzTi5KBaOCUqLABD/4wVrOwXDa2647tzXDc3/Q=;
 b=vRAHYGhAi25g1gP/o2P0H8mODSsCpHQqenmvRoMX5I14j4vWypBG+S11b0ybDkvIsg5wDcXNvavBegWGFrnenaGIhQAQ/396MA4gQcEwTC1Z7zI+pzITeVdG7JsuMREWJSjJPAZMd1A/wNfrf5ATQq3jArE05l7nA7ufNZE1C2FWYzhSSkqUFLhVqNRSJxBF32vQiuxM9Jl49HvTHQBFspMZVlGEelqMCfcR+Wxqts6FKlBaEt40Fyt9IkvHAahtZY5m3c99bSOb9UO84RcrSPg2rcdzayDGBM4slKAmUVZWMCc9f0T5LcFB/Aq8Qm38pUGOly5mRlW9w18ZIjiEng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6861.namprd11.prod.outlook.com (2603:10b6:303:213::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.22; Fri, 28 Feb
 2025 12:31:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 12:31:44 +0000
Message-ID: <a9bc6c3b-ee6f-48ed-9601-53112deb88db@intel.com>
Date: Fri, 28 Feb 2025 18:01:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/20] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-19-ankit.k.nautiyal@intel.com>
 <Z78vB6J2BWXvXhPK@intel.com> <844651a6-372d-4a1f-8772-e947d61a8559@intel.com>
 <Z8DTmGHA4qptFxjG@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z8DTmGHA4qptFxjG@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0052.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6861:EE_
X-MS-Office365-Filtering-Correlation-Id: c2209f27-bc9e-4fdd-6a93-08dd57f3dc3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?anhqeEVaN1paaCtnWW5EOGp3VTJqQzlUQnlYQ044enl5UnFidjNtM0EvbFFW?=
 =?utf-8?B?Yjl5Nk4rb2w2TGJ6Z1gxa0JJaFlTbDV0RFdpdTdTaEFSZGo2OGZhYS96a3JJ?=
 =?utf-8?B?d0RIdnZJcmFBT0JzamRJdC9nb0hPcTdYeUdKSlJLSnE1STlKRyt4SVhPTi9J?=
 =?utf-8?B?ZFFJcWpEWGJvWWtDaWs1dThUTVJRUXRjNk9Zdjd3WWViZDRpdURRejlVenBV?=
 =?utf-8?B?ZEdteDdHR2RLSFAyaUJBNW9UNHV4VW5oQk5EeHFEczBzb3hFMzd2dkVzM21O?=
 =?utf-8?B?cVErMnVTMjJENjRPd3U2NTFQRXRXa1JFZkhUeUZNdWU0UnpRZC9EMFAyN3Jm?=
 =?utf-8?B?aFM2cVRMRURZakZHZTlvM1g5Nlk0Y25rd3cva3hEWkVrK0FkcGM2NHYyWkhh?=
 =?utf-8?B?V29UYW0zZEhuNGdOVmNQRG1QU2lOMjlsYThXWmpXR05DeUtnOWdSKzFJcXZV?=
 =?utf-8?B?NjJuTEluSDUxUzBZaGdPUlE4UC9LMnJMNDdnRDZHYzRITzROYzVrd1UyMGhw?=
 =?utf-8?B?LzBxNWI0UnZQYnY3RmErYVFkM1lEYUFNQ1NTL1lWMUg0akZQaFgrSnBwZW51?=
 =?utf-8?B?Kys4MzQ4a0hVTnB0bUtXL0tFN1NCSFUwdVFObWg3TytxWkwrdmV2WFI0K0VG?=
 =?utf-8?B?MU5GanI1SHBoSDduUiswb2IrL1lCWFBjRjlVaFJqZmtJRlpNVUdaMTF2L2RV?=
 =?utf-8?B?Zm1ESXZOMnhWTWlLN0ZXclNIc1lWcm12a1RDdFpTRTJhVzZnNGVlTytvSXRI?=
 =?utf-8?B?K1J3TVRBQko0b3JxVDlzeU5hazg1QlE5ZFZjS0V5U3lPME1DMmo1dTRSQmdI?=
 =?utf-8?B?K0ptNGU0L2ZsWTRhd2lEb2gvbDNPRnVDZm1RaURRRTZBWnUxWHhiUlVuallo?=
 =?utf-8?B?MkRIa21XeEpidHhrOTM4NHp3VHpwYjhqeHc5akZOVEZ2WTE2a1ZYOG1RamRV?=
 =?utf-8?B?QzhCZjBzbkluV0djaWpmS3h4M0NaSTlMRjR5UkdvTlA3UW4vbjhwcjl1MW12?=
 =?utf-8?B?QzFzWS9lOFp2UDJCeUNSYVpBN2VGV3VGNFY0andWVy92YXB4cTZjUHVuSG9M?=
 =?utf-8?B?MzJadldWQVl5NUVPSGF6QjRZSWNQc0hPc3pnWEFjdkhocU41TXB0TGVQUG9p?=
 =?utf-8?B?NTBnUS9TZkR6bUJZNEVxWlNMZWxsa2JYQmlnUWdlTG1jemdnbXdvMy9oSUU3?=
 =?utf-8?B?VVQ2dDR4bjM0Q25jSEhNZnFZdEpQU0JUem5iNVp1TGZBRndOdUluRGVaV0dl?=
 =?utf-8?B?NVpNaGJjN0wyYlcxSm9jaTY3TFNEZzBNSXVMS0ZPQ3l1RHFpeitGTmV5WXJY?=
 =?utf-8?B?dXIrWGhEZkM2bnJ1Z1dkZTVUakI2b3FxQTI0bHpUUlhkZE5FaTcvNE8vdkhx?=
 =?utf-8?B?RWk1M1hXT1QzaHdqYTVXNTZycWUrNG9YUGJkNVZ5SDZ2dGkvVk9XZXVIQTFw?=
 =?utf-8?B?T0svNTljSWtPbHVWTUJEZldKMVU0ajZaQUhVTVoxMTlJK2Q3bnd6dG5uZDdN?=
 =?utf-8?B?elEvTkRSTzZ1Q1pMeUx1aHJnenVFcWQzQlQwcWljV3RXeE9FRkR4WWNybHZ4?=
 =?utf-8?B?eXZHTTB4TUsvd2tmSDVqYVFWV3hJbzRGVkRpdS9lQ3ZPWUYzNXhVVWlhd1Fz?=
 =?utf-8?B?S2g3eHN0dHJOR0ZVY2tGRktsUlJibks5NUt4bjZES25lZ2IzZTdJTk96UjF2?=
 =?utf-8?B?K1BGRGtlQkVkLzJBaUsxSHdiT0pYKzRGdUQyZ0Nlei96ZTNNQWFseHpPNytB?=
 =?utf-8?B?bGpCNVBVYmZyNTVvTjdPWVVhd2U0MVF1VzF6Tk85b3VZWXVRR0RkUjRWUFBO?=
 =?utf-8?B?b3VSZ2tDUFlBc3VoQXZ6cVpoV0FaM2tFa3hRWUhVM2NlWnhVbWt6ZlR1T0hQ?=
 =?utf-8?Q?cQOV/R9/51gMP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amZuK0kvczJKeFN3ajBjN2JnRGgvWHc2ejVYeTg0TDlldTVPNnZ5UE5SUGV3?=
 =?utf-8?B?WG1JclJXREdZV1hZTy9iTUxyU0JXdTZOUWd1TEdmYjErSHlMb1p4OER6QTNz?=
 =?utf-8?B?eTJzbFp5REhmR3JmZ3BhWFh4NklOS0lmV2xoQnFtb0F6Y0E4VzBRazlrUFQz?=
 =?utf-8?B?cjgxbmZiWlhUdlNjZjM1Z3BzUWU1NCtPd1lvTVpBWEcyeG9rNUl6UDkvMnVr?=
 =?utf-8?B?aVVJdGMvanlucnp1L2JiSjdkSENrTnFmbWlobWZZTEZuejl2OE9sd0o4SC92?=
 =?utf-8?B?bG8rSjhhRWczYkQ0b2s2dW1KcjQ2TXF2a3d4YVJDekFwSGNpTG9MNVp0VzdQ?=
 =?utf-8?B?V3VBVGh0bWx2L3VxZTJUVGlxTFgxb1JPTjNEWmdQSGFEeU15RUxOWk5JSjBR?=
 =?utf-8?B?cUhad3VEL1I1V1IyT1BPZHcwcmNWTVBpcmJXVEsvTHJTbmE0OEdJelNtdzZs?=
 =?utf-8?B?UEFUYUY5S2tFdTRtN1RlODIzUkpyOFArbiszSEhESjdOWC9kdEpEdzBFUytX?=
 =?utf-8?B?ZkUwRjVZUnkwbmtWSVBmSHdnR1A3QXAva0lZNEc2aEw3bnBhb1JKRjhkTlhS?=
 =?utf-8?B?Qm9LV3RSZTA3Q0RvQ3l1NFNVT3hKVVUvT3RQaDZod29Fa3VvdW1QZ0swWWw4?=
 =?utf-8?B?WTVWdUI0SzRPOHpqbGtMTWZuT0tjOENHdlI5Z0o3OWxMN0ZuL0JSdkNBMkdY?=
 =?utf-8?B?dUJRaHZia2xFVTdycGRYNWJTREZ1YzBnY2xlMVpwU28zWkV6SDU2UDdybHpZ?=
 =?utf-8?B?OFZaYis5d05FeEtpanpVZHViS2hyZHUzTnUySk0xSWUvRmlNRlJ1Z2szVHVS?=
 =?utf-8?B?UlpFemNZVUkyZGVoeDBPQWpnMmpzRmdPSit0ZklTUWsxQnp0a2JFcTJjTVVI?=
 =?utf-8?B?eTBHVXRmODdJbVAxU2xiNll5VUxRRTV2RmEzZVJqRytaY2dJb0o5bm9iaWRL?=
 =?utf-8?B?MXlOdE4zZDFrV1FuMHFiRFJRMm55eEd5ZU9ubnhDVEp3LzdlbVMxWXVhZW9h?=
 =?utf-8?B?ZllPMWdpbVplY08wMWFJaFJONlhOUWN0MkZOQnFMR3ovaEJrcnRld1BNTEs1?=
 =?utf-8?B?L3AwaXZXbDExaFA5WTNVR3VqbGxLeXV3aVFVK0V2TUo1TFVHaDdIZWw1aUZH?=
 =?utf-8?B?OW1aNEJRdEN2bTZhdTZoazBpcWJxMzNFL2FXbFhOK2VFVnhkdm1PblIzRHRU?=
 =?utf-8?B?cG5YTnNLd3VMWGJnd0xDekFFdVdDS0RoV2FMRjZzZUcvU1RML0kzbGhtbEVM?=
 =?utf-8?B?ZE9oYXdWWWdxR0IrckJFbDE3VDMreHB1b1QycHFVZ1ZJVlBHTER6NnhGWXcv?=
 =?utf-8?B?NTVOSFY3d3E4TElHWEIvSk55N0dJN3g2aXRXZEw1enpBcDJvRkQrbnphSHFB?=
 =?utf-8?B?MjZJcDRpYURqc2xmZDVwUDZhU2VueFBsT0NwbHo1VFdGZnJOM3ZJbVo3eXll?=
 =?utf-8?B?dThpTlpRcGE1ME1hR0NPdDJRQkZQV3V2SU1JenNvMmhwSmhhN1VPczczajJw?=
 =?utf-8?B?U3RBVkVMVlVtSWkyYWp5by9rbVlKV2pGOW51NUNCYzluSnBhZHFkK3V6d09K?=
 =?utf-8?B?MXM1d3ZzVTRoMyt3bkdsd3Y4VzVUMUcxN2RPL25ET1pjaXZtS1h5bUVPanQz?=
 =?utf-8?B?VDQ3c2g0VXF1eUpoOTJIWlY2TFNocmxranpMYWltQUorNUpvUElvRldDWGVL?=
 =?utf-8?B?Rk1DUEI2ZHdGUmxYMzRBTEhGbnVXdmhBQzk0UTRvUFgrNDRueXM1MEVHb1ha?=
 =?utf-8?B?Y2lpYS81N2JTdXNxQ0dPc0VndWNPRzVEU2ZNdit1bjJJSzVPM1lXa1BhRWhE?=
 =?utf-8?B?dlpuamttMzhWMWJrcDZjTTJGUHNVVm5OOTFSVGRxZUNndU9BZnMyN28xWkFp?=
 =?utf-8?B?d3F6MzFmakNUVy9RQkx0bEgwWWd4L1FDOG9waUYyQmtyZ1lVT3RTMmR2Tnda?=
 =?utf-8?B?enkyTGtJYjNGYmtTempMcmZHRlhvU3cvaEZuWEhvZlNmZ1cvYVVrbnUyMU5R?=
 =?utf-8?B?WHAvTWhZbFFRVzd3YUxNVy9qSU01QmI1dW9kZFJSZDhqOTVzVTlvbWdsRmpU?=
 =?utf-8?B?Wjl4bVBRK2tZU05NOXNxakNjS0NxaVhGNkp6bzJ1NThYQzE1ZXE4dFY1ZkJ4?=
 =?utf-8?B?c3Q1ZFBaYlZjbjkvZ2dMU0h1ckZpVGt1VkROOTNvNXpEMWF2eUV1eit2SnVM?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2209f27-bc9e-4fdd-6a93-08dd57f3dc3e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 12:31:44.4048 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a9JubLlogaJWhjD/AV/APqKglaijSEmIzP61M/jR5WWm7EAo8xlpnxS5P5uPvd8B8rrqxLai9ayqniMFpChWUxQB1hAum2R/uJw26nXrQkw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6861
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


On 2/28/2025 2:35 AM, Ville Syrjälä wrote:
> On Thu, Feb 27, 2025 at 04:31:28PM +0530, Nautiyal, Ankit K wrote:
>> On 2/26/2025 8:41 PM, Ville Syrjälä wrote:
>>> On Mon, Feb 24, 2025 at 11:47:15AM +0530, Ankit Nautiyal wrote:
>>>> For fixed refresh rate use fixed timings for all platforms that support
>>>> VRR. For this add checks to avoid computing and reading VRR for
>>>> platforms that do not support VRR.
>>>> For platforms that do support VRR, readback vrr timings whether or not
>>>> VRR_CTL_FLIP_LINE_EN is set in VRR_CTL or not.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_vrr.c | 43 ++++++++++++------------
>>>>    1 file changed, 22 insertions(+), 21 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> index 551dcc16f0d4..975fed9930c1 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> @@ -344,6 +344,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>>>    	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>>>    	int vmin = 0, vmax = 0;
>>>>    
>>>> +	if (!HAS_VRR(display))
>>>> +		return;
>>>> +
>>>>    	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>>>>    		return;
>>>>    
>>>> @@ -358,9 +361,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>>>    
>>>>    	vmin = intel_vrr_compute_vmin(crtc_state);
>>>>    
>>>> -	if (vmin >= vmax)
>>>> -		return;
>>>> -
>>>>    	crtc_state->vrr.vmin = vmin;
>>>>    	crtc_state->vrr.vmax = vmax;
>>> I think your earlier pathc left vmax==0 here for the !in_range so
>>> this looks a bit wrong. But if you change the earlier patch like I
>>> suggested to set vmax=vmin then this would be fine.
>> Right, will set the vmax=vmin, as discussed in the earlier patch.
>>
>>
>>>>    
>>>> @@ -373,7 +373,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>>>    	 */
>>>>    	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
>>>>    
>>>> -	if (crtc_state->uapi.vrr_enabled)
>>>> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
>>>>    		intel_vrr_compute_vrr_timings(crtc_state);
>>>>    	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>>>>    		intel_vrr_compute_cmrr_timings(crtc_state);
>>>> @@ -640,6 +640,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>>>    	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>>    	u32 trans_vrr_ctl, trans_vrr_vsync;
>>>>    
>>>> +	if (!HAS_VRR(display))
>>>> +		return;
>>> I think the caller is already checking that. But I suppose we could
>>> move the checks into the VRR code.
>>>
>>>> +
>>>>    	trans_vrr_ctl = intel_de_read(display,
>>>>    				      TRANS_VRR_CTL(display, cpu_transcoder));
>>>>    
>>>> @@ -663,23 +666,21 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>>>    			crtc_state->vrr.pipeline_full =
>>>>    				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
>>>>    
>>>> -	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
>>>> -		crtc_state->vrr.flipline = intel_de_read(display,
>>>> -							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
>>>> -		crtc_state->vrr.vmax = intel_de_read(display,
>>>> -						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
>>>> -		crtc_state->vrr.vmin = intel_de_read(display,
>>>> -						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>>>> -
>>>> -		if (HAS_AS_SDP(display)) {
>>>> -			trans_vrr_vsync =
>>>> -				intel_de_read(display,
>>>> -					      TRANS_VRR_VSYNC(display, cpu_transcoder));
>>>> -			crtc_state->vrr.vsync_start =
>>>> -				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
>>>> -			crtc_state->vrr.vsync_end =
>>>> -				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
>>>> -		}
>>> I think you want to keep the VRR_CTL_FLIP_LINE_EN check around the
>>> TRANS_VRR_FLIPLINE read at least, because we want the state checker
>>> to catch any misprogrammng of VRR_CTL_FLIP_LINE_EN.
>> Alright, will remove this change.
>>
>>
>> There is one more thing I wanted your opinion on:
>>
>> For PTL+, the support for TRANS_VTOTAL.Vtotal bits is going away.
> Aren't we still using the legacy timing gnerator currently on ptl?
> I think I did manage to run upstream code on a ptl somehwat
> succesfully, and I don't remeber any state checker warns or other
> real problems (which I would expect to happen if we don't have a
> working vtotal programmed in).

For PTL the support for legacy timing generator is still there but its 
recommended to switch to VRR Timing generator.

GOP I think has already moved in that direction.

>
>> I can
>> skip writing it based on the intel_vrr_always_use_vrr_tg(), but how
>> should I fill adjusted_mode->crtc_vtotal during readout?
>>
>> Can we use vrr.vmin for that? Or should we just remove the state checker
>> for crtc_vtotal for platforms where this applies?
> I think reading it out from VMIN would be the way to go. Otherwise
> we'd have to somehow stop using crtc_vtotal everywhere and that sounds
> like a lot of work.

Will try to have this read from VRR.Vmin.

Regards,

Ankit

>
>> I am intending to include this change as the last patch of the series.
>>
>> Thanks again for all the reviews and suggestions.
>>
>>
>> Regards,
>>
>> Ankit
>>
>>
>>>> +	crtc_state->vrr.flipline = intel_de_read(display,
>>>> +						 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
>>>> +	crtc_state->vrr.vmax = intel_de_read(display,
>>>> +					     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
>>>> +	crtc_state->vrr.vmin = intel_de_read(display,
>>>> +					     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>>>> +
>>>> +	if (HAS_AS_SDP(display)) {
>>>> +		trans_vrr_vsync =
>>>> +			intel_de_read(display,
>>>> +				      TRANS_VRR_VSYNC(display, cpu_transcoder));
>>>> +		crtc_state->vrr.vsync_start =
>>>> +			REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
>>>> +		crtc_state->vrr.vsync_end =
>>>> +			REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
>>>>    	}
>>>>    
>>>>    	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
>>>> -- 
>>>> 2.45.2
