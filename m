Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CC09F6885
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 15:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 910AB10EBDB;
	Wed, 18 Dec 2024 14:32:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E9x15Xyf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A708C10EBCE;
 Wed, 18 Dec 2024 14:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734532360; x=1766068360;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=nvNu0NzLBnRTv8IxJw0PTes85MFX6CsQDHyO5fOCZ90=;
 b=E9x15XyfWnlEvQdlQOzBvOdgV3Nh2pmgV2fI/Rr5CWM4RSpEfmh6a8JP
 y3/gAqOZx4Ja7ZVB5dIMCTJIOP9ekTqdGDnEQu0yaPVxnAKgfCkKRDb6w
 EQggPPMrwzhG+1Rae5yVCyGxlbeUCLkBft6RC5H/doOFRrRz47yvSrCsF
 M8RNXH9ZSJjmZPzrdtu1pB0qT9Jeni2vsm74LFrqGbXcPGvLRn1dD//0k
 sjSbSeiR/lyDSC99vkI8hD+UKmr3sb05rgRJP46dDtDfjDbZ/348gm9+L
 YI2nof7JiI6cNIIJqzeqbnTG60/fA9dN558jucVQy464IE76irqk/kCmP Q==;
X-CSE-ConnectionGUID: j1+kE10TThKhnO4TpNnSdg==
X-CSE-MsgGUID: hlbhpCoUTAW2JKfs2VSUDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="37849175"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="37849175"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 06:28:54 -0800
X-CSE-ConnectionGUID: 5KzggG6tSlqE3CUqIAIkQw==
X-CSE-MsgGUID: gw5BxiV0Tuav2akYTwmxlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="97672697"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 06:28:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 06:28:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 06:28:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 06:28:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RtwZM5nJJiCwmKV7hsifYNOU/ivlEVMZ4S5BU6j3U+AOU9in0tCsIlW4BAHZemk7x7NyulS+z/Tsxhu4p+deQS8b+bkuRprJ3uzOjb4oNrs9z4iOvWFZbuFRb2ULjdBNzwVGWqQD7W1bqxvEALnuRf8JoFfzRMPke8hfxt5iPgQdxPZNXvbMtztmCwg9sIXClyYmU0QbdT3P3mVOqg6k1QaWD/vg83HmlPxus75x7aNO6oVyuRjbr3tGSvcyvxh5xr/b7gvQqLJHvP8HY2X3WgmPJlzFDBh8vEsFfBP2vUpeCekZrfHestVHZWPMExAf5vvcGf2MZmAcdisWWltLrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kM6Z7R+DJKivjtUjHL/keDWUSY5jqNssAvRUywhllBU=;
 b=evpF+1ZABbFAnEhRbEUM/vGm4fro85PXCAunLw3rxcOXQCbnJmwEfPjWUpRT/8IVEc+lHHpDa1oJQeS/jj9mEQLOWUwGPP4/bC34oC8wrKnhlBlw0MiSs36ICqNPPfLAoCMcuVQFOe9BXv9gw+R2WJMi8ul80weGQ0mfwVVI62bdGu9/3quZVLClNeWF2PIMfFRR00wTuPDhLCTlEfUOVSjg4EVoK+fcHgmvMXqpYViw1wRHc/1sl2apw3ogLf0s9OSTzuaRYVVxGIMluFJI/JSFpMK7vvIyMZ/5ApnZNEyvZU0Wn9EID9fSe3t/sULezHkH/G84eW3ZU4Z889XzKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB7017.namprd11.prod.outlook.com (2603:10b6:806:2ac::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Wed, 18 Dec
 2024 14:28:44 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 14:28:44 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241218141734.2583601-1-jani.nikula@intel.com>
References: <20241218141734.2583601-1-jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/dmc_wl: store register ranges in rodata
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Wed, 18 Dec 2024 11:28:38 -0300
Message-ID: <173453211835.3475.8229112069297893910@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0139.namprd03.prod.outlook.com
 (2603:10b6:303:8c::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB7017:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bcc5f50-a462-4bf4-7215-08dd1f7046b5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WXkvOC8rcjdDWmV2eHR1OVFRSDljaXVVNkl2WllFZGhGcVJpSGYyQmU4WExi?=
 =?utf-8?B?czFTTXN0cEpaL2FsMXBwcWs1YlhyTDlHbWNjd3BOZENRVWxwblVQTjdtYzdR?=
 =?utf-8?B?Nm1XcXZKdXFVSis3dzNSMzdFanN4WnBYcjFkcERsTEJOeWVoVmh6b2Q5UlJZ?=
 =?utf-8?B?UXNxdTcrOVdYNFZ0UjdZblJMWHQzZ2FId0UzV2oxZXNWODJ6cXlQaEJVU1Np?=
 =?utf-8?B?ZmhNWGVCR3ZVZlB5SGNJOVhBSko3RmpRN2lTTmFseEV6TS9mODQyNWhWNUE5?=
 =?utf-8?B?QjBYTThzNFV6MFoxZUx6L0kvT1JPWmU0ZU1pSVFoUzVhQmcwckwvM0FwN1Ri?=
 =?utf-8?B?Wk5uT0M1SFY0RUJNay90SXVadWw3bjZVZkdsSHRmOUI2VTlLNm9oRURRZ013?=
 =?utf-8?B?NVR0cm5DSmJZUWgxV0lPbDN1NG9pVUhSbDA0aEFya1VtUjJIaE1DZUtoaW5L?=
 =?utf-8?B?RHpSYlVHalZnMWI1MFNWcXppdjJqbFU1R1kweE1mMVRaS2twbkNON2FjZEEv?=
 =?utf-8?B?Tkx3eHA2NCtlN3BTd0dKaTVQL2NwUUthUFU1S3lzamg2bHF3YUk3UmtDUzg2?=
 =?utf-8?B?cHRNc1lCVVljd1RDY1hjenpCdGlnc012djNBSVhNWVVaZEdleXhDRXk0YWg1?=
 =?utf-8?B?dG1BMjl4dnQ0SjVCMlFLckJ0TnJ5UHlBRlA1U2JOYlBRSTVOUCtqYmlmeG4z?=
 =?utf-8?B?UjBrKzlPUXhJOU42cWtsbTdDK01BTXdPNTYxMkRHYktvUGdsbis5RGVHWkRu?=
 =?utf-8?B?aDdFdThrSitjcEJWZnR2NkRCT3JKL0F3dVloU0puWWJtVWxoTXhSRXNhR0xS?=
 =?utf-8?B?cGxKampVZ0d2d3RaNjU4OHU1M3ZkTTF4TWh4NTZoVVJFM1J6VGVIL3Y3aHZV?=
 =?utf-8?B?V0FQUmtaSDN3UytoZFVLOXVEcDFRQk9rWTg0bUxsVllrSlIxTFdFdVlOcXRj?=
 =?utf-8?B?c21IZ3VJNm5qUlRVOHltUzQwV3ltUmVMcDhJWjR0eFc3czhBT1ltR0hLQnBx?=
 =?utf-8?B?TElwVloyTXl1bkQ1Ry9QcUNkTWVhdnFmVTAzMzhMZmJaZzlRUG1CM2ozRXAr?=
 =?utf-8?B?Y1AwM29CUDdtRGxOcWM0MEFiaHliVFp3d3g1T1I3TWxJTWxqTDUrUjlxS2ZT?=
 =?utf-8?B?TDYvekZSNDltL21vOGZtbXM4TW01STZicXdQMktMVVQ2QUFIV3djNVZCRGd0?=
 =?utf-8?B?UTg2U0RiSTFqM1J6eW5GckxkN0FJVEtZaEJmeGpSQnAzNlR1QmpoSHpNOUtW?=
 =?utf-8?B?N3dLUE1JamhiOTZkekJ6RWJucnoxUUhHa0xiay9tVHJSYXNvNnIzNG1EdDNL?=
 =?utf-8?B?UEgzSlNYUCs1d3AvZDRENTVOcWlCWWZ6RzRnWncvKzMrSUc2b0JzdWVVdVJJ?=
 =?utf-8?B?ZVlKN2FxcnNjZlRIV0VTbTV5eGVYdlNQZTJqNEFBL1F1SUYybTl2TldwMXRY?=
 =?utf-8?B?cElvaUY4Y01HOVVTWkxwdjBQbXR2ZStma2NZZE9nMTBMeUkremVPTGowZ3BL?=
 =?utf-8?B?NVpqSEh4aWNSNU1RRGRvcWpNek01VFU1aFhrcHhaVFhPQXFMc1VHYVoxT1Aw?=
 =?utf-8?B?UWVnR0hyUW9OdzJzeHR4WC8zZlowTUpYRmpsSy9BNCswN2Z5dzg2SXYwSHlh?=
 =?utf-8?B?aWdCSDlaVTFpQWROS2pydWd2cFdaVEtiMzJKQmxQWDdMQ0FLU1hPR0NJK2Rz?=
 =?utf-8?B?M05aQng5TlZZaFJRRWFBc2M0Yk56NnQrTk5Qc1NrSU1EU3kxbnZkdW5tcUJN?=
 =?utf-8?B?ZnFxMjA5bTg3OWZCZUYycHFNQWIwWllLRVcya00vampPa3hHN3pMRmQxODl5?=
 =?utf-8?B?djRrd0RjNk5QOTBIaDQ2SDFqU0c4ckg1bndTYUFUR2JqTHZ2MUhPSXpwdkF2?=
 =?utf-8?Q?WiFPIX0GQrUuV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0Uya3hRYjJ3bnNFWCtIKzlrQ0RtdStvUTMrekVVd3FucjZOd1pDTllnUUgv?=
 =?utf-8?B?bG9kMVZOZnUwbnVuaGJlQkxET0Q3WERWcFlSMXplZ0g3alRYK0hhczRndXk3?=
 =?utf-8?B?Sm9kSUtpK3VkQW9Gd21rcDA2dWZBQ3pwTjlLTWtNWGJaZm5oVStBNXJXMEhs?=
 =?utf-8?B?VG9wRFRmV0dRbmxyNEVwbzdJYmd4RTZrRjNCNzR4RE9mS3g3SEh2cE5XZmJh?=
 =?utf-8?B?dkxmZlFRVWJzd1U1QTlRTHdBcXhHQnljT3JQOTVieTVQd2tpMmh1UGVMMS9J?=
 =?utf-8?B?aml6a1NCQ1FSc1lKSTNJbDc2Zm9OMktuclZ5bzR0Q09QYy9UNFppL3lzbjMv?=
 =?utf-8?B?enZnY3JJVG1DdkN5WFh5WDBLWGdHcndtZ3kxTTMwamYvbVM0WktrTlp1YkEv?=
 =?utf-8?B?WDNjdTlkSFN0TnhMWXJPRTV2enA0RUEyZ0F4YzZqNG5zK2hpOUtOV0pobjNH?=
 =?utf-8?B?T3ozWHZoWEc5T0ErbWVURHRWb1dEMDJhVDA5K2VUc1c4dVBtdGNqKzVBN3p4?=
 =?utf-8?B?dW1mRDV4Rzd5a3lxVXZJbDN6THc5MnJ0czd6SVFXY0xzVnlRQWMrM2dVZDh2?=
 =?utf-8?B?azhRUnBTT2VpWElLR1U0U0JJejNnMTRFT0xSbnYxQzN4NU81VlBsS1BPcTRF?=
 =?utf-8?B?VmpKS3RpNnQzdkQwM2Z4RUxLajVkVGw3ZjlkZ1dnYTdkK3JBN2cxSGRkUzlr?=
 =?utf-8?B?aDVUT2lKMlFaTXpzaXZuVmt1TUhGc2lVZU5Rb2ZiMTAyVGRVYnE4SlNPMUZ4?=
 =?utf-8?B?bys3UHFxMjZ3dkdZMHpSU0F3U3JKb1NMRjYwMHhlT0NjRWVkRXJ6RlJXWjVz?=
 =?utf-8?B?dkV4eWQ2UGhXSnNsMzk2VU9Gb21GRjBkWUc3QXMyRGNxeEk1b25PVk5YVHR5?=
 =?utf-8?B?WDQvRXJZanp1UDZaQWhhejU0NDMzWVJtbEhnQVlRZFBhS284SmZTTHV1aU9i?=
 =?utf-8?B?VkFBYzZCNkVxWEtLV29hNkdrcFFhWHpRamFVVk94akxrQzViQ0RxNUdwRGJn?=
 =?utf-8?B?eUNYbnFmUXVZKzlETC9FeVN1NlhGSFNjTGRldUk4RWVwaUFlbnVZVjJWb0k3?=
 =?utf-8?B?NHVRQjBHaVhmQTA2d2FTbUVQNVNJa09majRVQkV6czZzeUMwMTFrc29ZWTB2?=
 =?utf-8?B?ZlhPbVJRZ0YwK1h3S2Jad1Q2dTZ5WW9XZmhScjRkbWpyWGxVN0tHT0tOOWdO?=
 =?utf-8?B?RGhlandGVmoxazFMRG5vWVZGbUFLZ2FURDh3ZGh0cUp1R0RSK3VjUW1NZU13?=
 =?utf-8?B?WVY4ZVBKV2hyQUc3b1hHWlFSZ25FeUhXYXg4SEQyOXY0U3pjaklqSitQdkVj?=
 =?utf-8?B?T2NwR3dRdDR2Uk1vNWczU29yVzdJZFQ2YUlhQXU5SVUwRlkrdmZkdVA1NCtG?=
 =?utf-8?B?QVJmYW5HWTNwRUdKT2t4Y1ZrdmVlWHRFWkpXNE9PQmFQZUVhdUwxTER5TE5L?=
 =?utf-8?B?RWRLTlFKdE5MWlZGRmx3S1J1ZVJTOHNNNWpFVUMyYkVZa2JXMU9rY1FGT1J2?=
 =?utf-8?B?V1lidEpCNVFmZW8yS2lrOGFOSW9yRWNWbHFtYXRPRHNuRitWR1NQcTJ5ZGJI?=
 =?utf-8?B?N1p1Z25vWHRIajlhajZLVmFBVks0L3FjVUJsUFd1cmZWOUJLNE9lK2ptYXFL?=
 =?utf-8?B?TkxDZW14bkNtVDV5QjFUd2ptekc4NFF0MkszazFqMktsSlk2QkV4dGNCLzZi?=
 =?utf-8?B?bjQ1alc3Y09OTmMvQzFnYkt4cjBZTklrU3psd3RpK2Fuc3hNU1M1QVBCL0Nj?=
 =?utf-8?B?b1dvbitIajJvbkNVdmovT2xOMnZHNHVYZDlodlNsOHFUcUk3ME9EbTdMNkx2?=
 =?utf-8?B?ckpHUU5OR2FvVVUveTVnWnRxeDdYOGNNb0ppUmVsZGRCbzdzWHI2aWNBTzlY?=
 =?utf-8?B?WlBXQktvVDJURmpjRk9DSm04TUFpRGFJSW03dWFxVTZQMEZZaWdBTzZWQXE1?=
 =?utf-8?B?NHlQNTlxblErUnVObkV6NkhqYTZvYjhwUDB6U0pPSVZidXQvNzd1czh1RkFs?=
 =?utf-8?B?L3A4c056ZC85dFdQcElVcDA5RmdPMll4WWo0UllGMmJDTWczY0RLZnpOMllu?=
 =?utf-8?B?M3NqQTNQbXhRTFRmbGtoRWZLK0RLVDZjYjhQb3JGaGxRb2pWVytaZzU1aVF5?=
 =?utf-8?B?dUlTRk5VUlljRVN5Rk83bFp3Yk1TUzZNTk95aENFczBvNVBHR2hFYVdwK09O?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bcc5f50-a462-4bf4-7215-08dd1f7046b5
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2024 14:28:44.1594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: quIeG7u2dsfnsbv5ZpopFABy1XBy95+4A66xM1RddfVL6yvShTWnyh1jIMNZhfkzNBtjYFeGTOEcbKzLE1nE7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7017
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

Quoting Jani Nikula (2024-12-18 11:17:34-03:00)
>Add const to register range arrays to store them in rodata. They don't
>need to be modified.
>
>Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Good idea.

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_dmc_wl.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm=
/i915/display/intel_dmc_wl.c
>index 3ac44151aab5..02de3ae15074 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>@@ -55,12 +55,12 @@ struct intel_dmc_wl_range {
>         u32 end;
> };
>=20
>-static struct intel_dmc_wl_range powered_off_ranges[] =3D {
>+static const struct intel_dmc_wl_range powered_off_ranges[] =3D {
>         { .start =3D 0x60000, .end =3D 0x7ffff },
>         {},
> };
>=20
>-static struct intel_dmc_wl_range xe3lpd_dc5_dc6_dmc_ranges[] =3D {
>+static const struct intel_dmc_wl_range xe3lpd_dc5_dc6_dmc_ranges[] =3D {
>         { .start =3D 0x45500 }, /* DC_STATE_SEL */
>         { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_COUNTE=
R */
>         { .start =3D 0x45504 }, /* DC_STATE_EN */
>@@ -94,7 +94,7 @@ static struct intel_dmc_wl_range xe3lpd_dc5_dc6_dmc_rang=
es[] =3D {
>         {},
> };
>=20
>-static struct intel_dmc_wl_range xe3lpd_dc3co_dmc_ranges[] =3D {
>+static const struct intel_dmc_wl_range xe3lpd_dc3co_dmc_ranges[] =3D {
>         { .start =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>=20
>         { .start =3D 0x45504 }, /* DC_STATE_EN */
>--=20
>2.39.5
>
