Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F18FA13973
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 12:51:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A466B10E949;
	Thu, 16 Jan 2025 11:51:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BaUGv2w3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5786610E949;
 Thu, 16 Jan 2025 11:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737028284; x=1768564284;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KBBaeDaqWnduhlVFB7jZ1Jm4/gEWrih7jqtYnwEQEE0=;
 b=BaUGv2w3XEYR+TrAFkS66ihkzJy5/rop6g9vRuPg1vbRLvxDmF7Nfw+C
 l3QR9VPZCi24AcXzc4LWZ3PbJa81TxRfIo5PBEQlc2CC2Lgx9TkBEOXcG
 83uKL26OiRzmizb37EGJEjhj0ZMeMfjkOUPgk0Tvlt1kI2V/UmvQewOtM
 Igcw/w3VkUENk+MDMlbxmtIeA/m/mQ6AtfD5vWxckkPKmDFxIQz3CKRzy
 xbbGqGY5QWT86Z15gzyhSNx/CLECf+2gPNizGNm2Y4E1xcfYdOF2p9Mjy
 mvBJJlmB5bpSgGGzqb4FDpen0hgMPaReGqwn4qf/u+6FfMKHRzbbu5wJB w==;
X-CSE-ConnectionGUID: /RumBrnKQ0Gg4B3jIKlcSA==
X-CSE-MsgGUID: A4FB1NpfQXG5yn0rpWRAqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="36687301"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="36687301"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 03:51:24 -0800
X-CSE-ConnectionGUID: k3Xe3ibHRO26H1vmLDgFoQ==
X-CSE-MsgGUID: OHOg+rclQ5O2TqKP8l6j2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="136314672"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 03:51:24 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 03:51:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 03:51:23 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 03:51:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fwR25PjTz72ZFTGYnw8Uu2nTvBG5sy35sZV4akFqR7nVoFjNCD5CdGboXO2GOcxEa8UokGTY16waQATf88fVz42RlceInkPCmsyjJKHA1/nbO1A1OKWaQL+piQwRO6qsmIXSxDOpsSa/dH35b2FyturpOcpzvPStwXwPIPmV2/8vKNYv7A6zVK2ZWQZ4Y3S99+WQhRrJiiG7qHHLuJsEMiBUe0M+5dLUUakRD8OTGLcyqTarZcgX9hMwR8SUPvOk9Nl3AzYb16qKhKW+79LIu+CIsIqbVGfmOUuFOYcVwatYrgY0aDvUgOLnMdK6FcjhYXOz8RbLBo6xjqOnCmqG1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TBGA5sTQD4zV412dj4MapoxKqoRdsZUMZyBBlaSUyds=;
 b=QU1BnP/l3WvYKCBILg6DM7fawMct086QeUXoZ4Vzq8QJEusGrPZrl5ZtysUOmZlv7bXrnEwhR/Geac2EDafqHNIlylbAG5u9f3jUVB1LRwRUvSoJx8kwaCOLzlDA8TuVVkyQlsNfAP40wp/HMzMNkDR549G7m8WWxB6y7BAJXXULz+LCUtB4Dtklk2n1+LV0+ouUEfOiYEqrWt1qLp+CX8O6uq2Gs0hZZh2YuZgHX0l/GV63h8HNyrOlpZxeeaKD/K+R8ngaKeFVMslQCuH1vQSrDRNycFUFOtF3UcwgSnVceqKMIO6Nl/2e0E8e7x8fJ02n/3ywFgYmmCWHaqbYhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6660.namprd11.prod.outlook.com (2603:10b6:510:1c3::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 11:51:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 11:51:21 +0000
Message-ID: <6d812066-b2fe-4e8e-a455-bfbafa556210@intel.com>
Date: Thu, 16 Jan 2025 17:21:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/7] drm/i915/scaler: Compute scaling factors for pipe
 scaler
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <v5-000intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250115151714.3665211-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250115151714.3665211-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0152.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6660:EE_
X-MS-Office365-Filtering-Correlation-Id: 80e8df8a-c099-4af3-5b5b-08dd36241833
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eHpCend2b1M0UnAvcGpVVll5dVNtRldhcCtqRUQySlBkRVRxZFV4WU4vNStB?=
 =?utf-8?B?UC9QK0d6MWQxdENFZTBMMGpkMVdYSjJWMnFCWGVaUE5ycGJlekNWTjdxOUJj?=
 =?utf-8?B?NDc0RCszb3NORGFMaUYwSUd0U1poam83YWswczBoeDMyL2ZiajV3WUJqdWU3?=
 =?utf-8?B?Wno5RXNEZlQ4VnVnZDU0bU9TdVJrY082V1RtOVU3MVVyMHpnZW1hZ3B1OXdt?=
 =?utf-8?B?bklUZThtMmcrV25WOWVGM3JKWTBDS0wxU2U4bmJIRTZPd2ZOcHJNOTM1a281?=
 =?utf-8?B?WTMrd3d0U2toSm94YW9sSUhpQzFYNm5FZVBhREZBNzdha1ZrNGs4amlTOTdO?=
 =?utf-8?B?THNRNnRQNXBpUmd0MjU5eWdXQU1pTVhOUzlRZ1NFL2syUWwyYjUvUml2K3Bx?=
 =?utf-8?B?ZTY3VSsrVVdtNGVVd3J3dm5TUHNJd3BZYVE3eWx5TVAvM2NET0FUdjAxSXZS?=
 =?utf-8?B?cWNqNGNVNGhKWkxRNnZLSVR5bFlLZ01KWDU1akpFOXFwdzJkakwrOU82REtz?=
 =?utf-8?B?ME54dTF0bG9MZHEyVTVoZWw2TFNWOStxMktDMFZhQkJWTFE0Rmd0MFFrN0tV?=
 =?utf-8?B?L04wUDMxVUNPT3h0MkwyZzhnbDFORHVNQklsQlJvTmJpelRKL00vQVN6TlpS?=
 =?utf-8?B?QXJKenR2Z1UxV3JkNUJ6blg4OXhjeWpzRjBrOFpqeFNEMHhhcHNkbE9OZDRj?=
 =?utf-8?B?TGFMK1c0YWcySjdGTW9jVUdMTFpOd3prbjRnQW54ako2U0JGd1NvRDg2Q3JS?=
 =?utf-8?B?UGwxWkh0bGhldkpqN3hUSStCQUE2YkdoeG5iNUJlQjVWc1lCV3JPbGdBeXpG?=
 =?utf-8?B?Z0VPYXNGWlRoamNST1ZmZTNVMjFFUHpHL0J0NzcxU0huVFJxWEFkTTJ3VEFO?=
 =?utf-8?B?WkV0VXBiMGlzUFN0UVNIeWlaU1ZBdm5JeWMwbnQvZ25JZTFKYkcva2x2NHZ4?=
 =?utf-8?B?QVhaLzJyWjFpclJwU01YSWxaMFVyY29pQi9aZzBOU0NlVTl0bTZyUlNwZUNQ?=
 =?utf-8?B?bTBaQVdtVFJuelptNVVBWm1keUhkQndhV1E0amRwODVCZ0hHMkZBU0JQY2VP?=
 =?utf-8?B?bFV4dzUvTHBET01udTJ3d0dpZUZFOHV3WXhOZHR2WXZCZVVNcGNmam1ia3Ay?=
 =?utf-8?B?aDc0SWRJSlpFYU94aGxDNmptRTNvbTh4VnM5ZVEzR05UQTlYNzlkaVZ1bG9N?=
 =?utf-8?B?S25PZktNL05oc0IzVEVMaFpYK1VJSVVoVHVkcmk3MHROQ2ZvdGhETGpLcUxj?=
 =?utf-8?B?VENycEtZUGF3RW5hRzExK04zSEJOUVBacWNKcnd5eEpFcUFKaFFMUENTemxx?=
 =?utf-8?B?ZWRSQVVCWmJENmdBdzdUTGUyNXJuSkVFT1JNV1Zrc2l4bDJXa3YwaVpnUHBv?=
 =?utf-8?B?NFEzekFQRXVqdm1WT0JYaE1aSEkxdTY1eElLMDZCMDhFc2MyNmFvV0FpTzE1?=
 =?utf-8?B?MXBZYWM2aFZZajhobTJLSU5oaHZqdnZKOG50ZGF6a05keDV2RC9RQUFyQ1pp?=
 =?utf-8?B?NkxZeWhkQlUrdWFocWFVVURmc1oybkFMSzFNR3ZKbGIyamI0VzZIekNuYW9K?=
 =?utf-8?B?Ums3a1J1MitzTmthNURIakRieEFSeDRvSk1Ba0xib3ZTMEJNWkFBcEpBaFlZ?=
 =?utf-8?B?dFkvMDBFUWlIejJ4Vkw4c0VTRVpxcVErWmRxczlIdVVNNitOdzVIK3FES2tL?=
 =?utf-8?B?TVhPd0dHaytJT1RRbFpRb3U3N3lYMEw4VVpKUFdRVEw0OGJYTDFuUHk5dUFh?=
 =?utf-8?B?UDlxek83OGl0c2RyR3ozaUo2QkZSemlxR3hIMjlCY2xWSEwyU3hWR2d1OEln?=
 =?utf-8?B?N29MQW5RWlZpalRITWNjRk5uanl4S3JJdCtWQ0lxemVNbFFzV092SmtYUEZG?=
 =?utf-8?Q?BJy+wmHiRRy6B?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHovSFFLNmR3bVlWYnVsUUJCbm5aN2JucVVmbDJha2JGcnY1cVJJT0ZvQ0VF?=
 =?utf-8?B?bGw2ZU1CeHhCVHhrbHRVOEROWXp2WndGVWpRSlVLSDdEZ3UyVkZwblJ1UGtw?=
 =?utf-8?B?UXRRWTVmbDhzeTl0dVY1cm9lcENWdlNUNkluY21VbWl1T3JPSFVXOUw1bUVZ?=
 =?utf-8?B?S25SNHlPYzBJaEltVW11NWYraFJZNW1ZR0FwY2Zhb3NuamtUUlFvVmFJeWpG?=
 =?utf-8?B?NVFYQmlpQXVxZkhMemRwSXFkTmRGeVk3VmpvUTVrQ3RUdC81eTlBdmxidEcy?=
 =?utf-8?B?alBCUUMrY3N6YUlIejdNajRRZE03d0JRWkJtaDVVbDRoODRtWXdNUlVBYzVY?=
 =?utf-8?B?Vnc1YW43ejNMMGVFb2VRYTM0Um9QMEsxY3dQWDN1Y2VEbllKWVhzRWlmNVN6?=
 =?utf-8?B?NERPT1gvblZKaWR2Y2R0blg0aDR5UXA3S21yemswVnlYMnIyWUt6ZDhRQ0Zx?=
 =?utf-8?B?VnE2RXFOREFaZytKQWszOW9yREw1TW1lVzVKMzJpSGY3VWtpM0tmcktlRnN2?=
 =?utf-8?B?aGpFdkRwa1MrV0UxNW9NeWZwb0x2anpLWU9ENE4yWGFhYWVOczdtSTYwa01x?=
 =?utf-8?B?TGgrVzUyUE9iYVhpSmI5REFIbFN3ZjlzSXpNQmRybWdRTi9udmNFT2c0UHNZ?=
 =?utf-8?B?YlYwelpFZmJtU2hpL3A5OUNjMGF6SGgxTlhucERsaHdwZ3liejlFWFl4d0t3?=
 =?utf-8?B?ZVduVVovRFFFK1Rpa2poejFnd3ZXMkV6M0pEc1FnT3ZEVlJTdjd1akxIRGNZ?=
 =?utf-8?B?d01IN0pBL2pTeXI0MlEzSkdiWktmZTM1K2hhaHFTbDJaVnhaeTFCRmp5RzNm?=
 =?utf-8?B?UWRIMk1XYU9qam1uRFVjOG1uNDUzWWlYMHgvcVdSUnlBWGY1T1JrK0xwNGdP?=
 =?utf-8?B?aG54ZjU0Mjk4K282d0hVbFdsZGNDeFVRMm5VNXlwTU1uQWF3bzY3Nk9LWGpF?=
 =?utf-8?B?eGR6eUcxZUFvQytCcWdSV1VHYXlBb1JaQmUzY2xtOEdMaUU1QzRZQ1VEMmxM?=
 =?utf-8?B?ZUNZYlN4ajJiWlRTOEpmUlZrVXFIMVBWcy9YekhZRWZ5K0hpTVNkMXdMUFBz?=
 =?utf-8?B?OWp3dlNOZWJMTW5Tc1NIcEIvaHpzZ0NoamJlSEJpT0NUN1RDcEF0YzNoYkp1?=
 =?utf-8?B?RnhSYTJhWnZBcldzL1NIS01QZEMyekQrdkNvVytnbDg1UnVMNU9jSnZrUFB6?=
 =?utf-8?B?d3RkellMNGpGSzM0eVlJUmZRdU9SOGI0cHpjcE5xN0ZEMXVIUzQwQUVzK1E2?=
 =?utf-8?B?bkVlUERhQkVvdEZ6SkFqNHQ1Q3lxKy9ETUVVeFNPNTNwY2lhcFdxL3VaZDJV?=
 =?utf-8?B?YWxrNUhzaVFWSUEvelBRdHhmTGJlSVM1eVR1N1F4dWFianVDbGp3bWtiSmpU?=
 =?utf-8?B?Nm1BblcvTU41MXNVbSs1d1ROdzZMeGJiSi9YL09pTE1RUHR0bVZockY3Vkhh?=
 =?utf-8?B?a1RXVzNhTjZnU0RBRUxkT01Ld1hsVmtZb3M2SDBaTkNJRlJSUjZXUWJ5ZUZu?=
 =?utf-8?B?QzRiNnUwNjBkdFQyd0prdmF0aGlZbGpzOE1GcEtxRWQ1c0VEMm1mMHZJTmE0?=
 =?utf-8?B?Y0d5bTNXYW5NVUdlckFXcXpDazloSDNqOEtVb01zc2o3bzV5S3ZxYjFZTml4?=
 =?utf-8?B?aVBKNmJYNGNJTUxYZnJFL0NHSWFOc2Z2L2phUVNqU2k1SHExWkRZUlRmYmRN?=
 =?utf-8?B?T0lTeXFsQXYwYnR5NW13Z01WYmRmMmFmM0FRbU9tVUQwY0wyV3lncTZYTjNO?=
 =?utf-8?B?NVdlS3hnK1IrSTVraDRKbW5SUFVSSjQ1YjZvUng4aE5tUWh2QnZZbVJ5aWZX?=
 =?utf-8?B?cXFKbTBiVVNObVo2SGNZNjRYbjVnMWhxcmVhMHFxRURqT1RYMERHL3YxbDZV?=
 =?utf-8?B?YUgyTGE0OXY4K2ZFNkJYNUZvNHBWR24reHhQc3YzakNwbU5jU0NyZ3puRGRr?=
 =?utf-8?B?U2c0eldTY3pyUm9CVUZWcnFSQU1PNlZRQlRjRVdMRTN6cE9rWmNZWTNkTVc1?=
 =?utf-8?B?VEM4S3ZTVjlRMGVpS3A0b3NaUlNjMDdpUU5YTDZrYk8vcS9PaW5pclFFa0E5?=
 =?utf-8?B?ZVdZUDB2aVlPWHEzMzBIRXB0UCthK2ZyRHF0T2djRmIrNW5nTS9nNTBoYks2?=
 =?utf-8?B?R3V6NDdsVTFtcFpULzBKSlRUNTh6UjJBWldMZHVVNlROWVc3T1JHM2hUaFVi?=
 =?utf-8?B?S2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80e8df8a-c099-4af3-5b5b-08dd36241833
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 11:51:21.2525 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1FD2u8FE0mSuSjaiMD8maw30TujQj7DHULbUnnx8ztX2xfN6gvw+0kUZEtTF6Dv1c5tDxQVp2VNOW427PQumK4Lj95g2NE9qsYV1uuea9VI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6660
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


On 1/15/2025 8:47 PM, Mitul Golani wrote:
> Compute scaling factors and scaler user for pipe scaler if
> particular scaler user is pipe scaler.
>
> --v2:
> - Update typo 'plane scaling' to 'pipe scaling'. [Ankit]
> - Remove FIXME tag which was added to check for pipe scaling
> factors as well. [Ankit]
> - Should be common hscale, vscale instead of local one to
> avoid garbage overwritten.
> - Typo in commit message 'perticular' to 'particular'.

Just "Fix the typos" should be sufficient.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
> --v3:
> - Separate out max_scaling information. [Ankit]
> - Use max_hscale and max_vscale info instead of INT_MAX. [Ankit]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_scaler.c | 36 ++++++++++++++++++-----
>   1 file changed, 29 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index a832cdccd9fa..72344044d9d3 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -368,6 +368,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   					&crtc_state->scaler_state;
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>   	u32 mode;
> +	int hscale, vscale, max_vscale, max_hscale;
>   
>   	if (*scaler_id < 0)
>   		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
> @@ -416,15 +417,10 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   		mode = SKL_PS_SCALER_MODE_DYN;
>   	}
>   
> -	/*
> -	 * FIXME: we should also check the scaler factors for pfit, so
> -	 * this shouldn't be tied directly to planes.
> -	 */
>   	if (plane_state && plane_state->hw.fb) {
>   		const struct drm_framebuffer *fb = plane_state->hw.fb;
>   		const struct drm_rect *src = &plane_state->uapi.src;
>   		const struct drm_rect *dst = &plane_state->uapi.dst;
> -		int hscale, vscale, max_vscale, max_hscale;
>   
>   		calculate_max_scale(crtc,
>   				    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier),
> @@ -448,11 +444,37 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
>   
>   			return -EINVAL;
>   		}
> +	}
> +
> +	if (crtc_state->pch_pfit.enabled) {
> +		struct drm_rect src;
> +
> +		drm_rect_init(&src, 0, 0,
> +			      drm_rect_width(&crtc_state->pipe_src) << 16,
> +			      drm_rect_height(&crtc_state->pipe_src) << 16);
> +
> +		calculate_max_scale(crtc, 0, *scaler_id,
> +				    &max_hscale, &max_vscale);
>   
> -		scaler_state->scalers[*scaler_id].hscale = hscale;
> -		scaler_state->scalers[*scaler_id].vscale = vscale;
> +		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
> +					      0, max_hscale);
> +		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
> +					      0, max_vscale);
> +
> +		if (hscale < 0 || vscale < 0) {
> +			drm_dbg_kms(display->drm,
> +				    "Scaler %d doesn't support required pipe scaling\n",
> +				    *scaler_id);
> +			drm_rect_debug_print("src: ", &src, true);
> +			drm_rect_debug_print("dst: ", &crtc_state->pch_pfit.dst, false);
> +
> +			return -EINVAL;
> +		}
>   	}
>   
> +	scaler_state->scalers[*scaler_id].hscale = hscale;
> +	scaler_state->scalers[*scaler_id].vscale = vscale;
> +
>   	drm_dbg_kms(display->drm, "[CRTC:%d:%s] attached scaler id %u.%u to %s:%d\n",
>   		    crtc->base.base.id, crtc->base.name,
>   		    crtc->pipe, *scaler_id, name, idx);
