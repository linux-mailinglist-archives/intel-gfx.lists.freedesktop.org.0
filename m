Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3A5AEB7B3
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 14:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1441010E9EF;
	Fri, 27 Jun 2025 12:30:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b6ERqPo8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 844EF10E9EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jun 2025 12:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751027423; x=1782563423;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Kp9ZhMncj6tOujQGvkhI8vmwAaEWITVBVClhMnT4aQM=;
 b=b6ERqPo88rK+Vx+olHq5NKlsBYaF47QEKNhMVTT4V8L6V5esJvLG90z2
 UgKZivXqz7fU4tsJK0uzx4eZWYKJIrxfxq0U0OzYxHVAQ+3oL5EqKtxMF
 06flVkwVTyHaowg5TxtKyXudHkVVIQa6dx1mCK+Bvy5VAerSPdA3HwBLb
 36OzkELqjUmRJb0AS/1Q+wP2p48Dapc+paHtkL1Ws5WBzacQa+VjCwEiD
 jgsw834TIeiVFdatdlVTGNRGhTpJpKOS7w4EhI4t9zPezYyg6eOdHJ6R+
 RRjSEQIhaQHeCM9l+2rxm/dEF15EnaB1JBFwEKxSv/mqZs2EraKc8u1yF Q==;
X-CSE-ConnectionGUID: Rk1VmzvQRgOPArtua93+Pw==
X-CSE-MsgGUID: HOJS/JQoSd+sH2B0fWtJkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="63936532"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="63936532"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 05:30:23 -0700
X-CSE-ConnectionGUID: o2LidTZoQgary+P0oSF/pw==
X-CSE-MsgGUID: K+mn2eCbTTiN20KbMWcixg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="176474521"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 05:30:23 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 05:30:22 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 05:30:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.65)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 05:30:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hrnfGmeottNWRfgthoxj5hYB2SS1XKHRHAw79wHuAY55XUhPEyDcjsgP3JQCDh1bBSmTknITopyfWV2uyDvj4ci1OuSzD9j881KQyGiQ2eVsy1xeQDZPPvx1EIQEFpb04Ye/vAenMNHkpCkkkL6Qk8KS0AgcLG51H7zyc6670nLJTpuk30GfJRf4c4Rnut3GCOHTtNil5Se5Fi6Rx+c/1MYVRcqJwCOpljJxnfE/vryTdv0nyCVyad+ApXr6KBQ9SDVb5dIuiBNCnJVkZl8oXsdtvCz1pdYhJhjfxp3//KT1Fh6ttaV11QG/qFUNdNrfppfHyMpXVQ86x4VDq/TFEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z3IJMWun/2jF4wtlFDL3AEr2czCLlH4qR5Mh/uuPPh0=;
 b=K/2FEq7iwO3FJADOLoruUvWy2ri1XYiP1UBG9EhlHnvFEXh/imOyqas25Kog7ilFWuUr2DInh19JLYmBcnDiWaXMnfK6z4knZRhPqO04zcs5W2EUrDSEOFFb8PIent59qgPcZZmGau1CGuTvHQLhj+l2LPWBq0pNmXUF0P8ljWq+yxKg/KGdw8i9Mdib61PIjODEtengn6S97qyTObLynbCE76sEYYPUcHO2Qh3M6Kr+2sIoDMfmAQSVEST2mWRxBn6GsoCqVTKaXf/U6AM1FAEucZoogLdmfy+c1R8hkzEP8BjggJV5stR77XWYYUBPXEK7ExygjdF78GFAfcUJyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ2PR11MB8497.namprd11.prod.outlook.com (2603:10b6:a03:57b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.26; Fri, 27 Jun
 2025 12:30:20 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8857.026; Fri, 27 Jun 2025
 12:30:20 +0000
Date: Fri, 27 Jun 2025 12:30:14 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: move GEM_QUIRK_PIN_SWIZZLED_PAGES to
 i915_gem.h
Message-ID: <duggwwakcbxtcdbidvxpr2ibqdv4w4m3xuiktjftgsf2qny5cl@z4zgvcevuojq>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1750251040.git.krzysztof.karas@intel.com>
 <ca83a9d8aa86bb92de84c31fd075e92a61f78895.1750251040.git.krzysztof.karas@intel.com>
 <mdow4gnanrdt42vfhfaok3vw74tjnamb5lkrozi42nsim7oe5c@dtiydxukilwv>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <mdow4gnanrdt42vfhfaok3vw74tjnamb5lkrozi42nsim7oe5c@dtiydxukilwv>
X-ClientProxiedBy: DUZPR01CA0115.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bc::27) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ2PR11MB8497:EE_
X-MS-Office365-Filtering-Correlation-Id: 04c28553-e500-4277-5f2e-08ddb576614f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b3huNzR3U3hQNXViV1BWa0FsTXdKVGRWbENyUWcva1VCYkVneFJYY1A0UTdr?=
 =?utf-8?B?VXNUNTBjZWxPZVdFMm1nbXFTV21EOXhvMUJLMUUvMkp1WnplbEJHcjFCaXRu?=
 =?utf-8?B?YnNKaHBYUjdwR1ZZZkluL0U0NUlHekpDK1ZnRVJJNTFhYjcxa0FrcXdDZk0w?=
 =?utf-8?B?QXpGREtxaHRSc1YwOEFad2NPZEY0aDg3cHNONElWRHY5alhQK0k4RHNodTJl?=
 =?utf-8?B?bnc4eEh5QTZNZ3lpQnBSM0Fud0xWZnBEeUhDQ2JveHdDNXZvR1BNaGM2NHdV?=
 =?utf-8?B?SHBCbG1HdEZsZ0dIcXdPMDVLdGU0SlNDUXpBVE1iT3FoZDlUYkNEZWdCMDUw?=
 =?utf-8?B?R1d6d0pOQnlzOEZIU1haa0dTREpuUFZZZHFZbm9ETDFKYnZ6QVZBN3RvbGhT?=
 =?utf-8?B?UmJGdE13Y3hrcUNYUW0yelorUkdRK2FJMjV1YTBPUTBXTGM2aVhERU0vdHNo?=
 =?utf-8?B?ZWtiMDJ3R2NLNkg2U2tIenBlN3lqYnY4eFJITWZ6UUFJclBXem1lLzVKb3or?=
 =?utf-8?B?clZlQzhEbFNPRDVGdTRadE9JZTQxa1RpM0hnMWNQRGlsVFhsY1pqTkhJT0I1?=
 =?utf-8?B?NnJpSEYvVHdvMW9HSUFGd3VYMlBVd2xxK2FnRlBzUUcyVTlQWmtGY2gvcWNN?=
 =?utf-8?B?V2pxaGtzbSt1RVVnRkgvQ2hlNFJ4NzZZdEw0Mjg0eUV3THZUNElhUFdQVG5I?=
 =?utf-8?B?eDNPbXJUTWVoejBNd2o2WkZ6aGMxZ1hpSmJmNlhOUjJra2Jjc0JlWVZiczB0?=
 =?utf-8?B?RWVmc2RJWHUwa3FlOUpzOXlPdUJWcUtBbXhWWlV5Y1B6VDY0aENDbkZaczVP?=
 =?utf-8?B?ajVuMDJ5T2JZOVBLVXVPWGR5ODd6TjlrL0xuNkJ6WkZEbUlRb1FYNll5UU4r?=
 =?utf-8?B?YjRhVDhDMmFqUElZY2JwVXBTancvUGFjZzAxVW9LajJ5VVlYb2wvRE9iQ0xK?=
 =?utf-8?B?RERTeDdYajRPV1ZsTVdjWGp4T0FndXFyNjUzdHVTUjI4TENPeE1xSnFDdnRr?=
 =?utf-8?B?VkRXbnR0dkVHL0pkTGJFQnRWWVpnd0NQNTA4RjNBQlMyWDNteVo5ejEvcmxY?=
 =?utf-8?B?OFBnL3d2TWJJNlNRTXh1N3cwSXJDTmVGbGwyTGFVQXIyTm9raFA5MXBpbm5h?=
 =?utf-8?B?OHZNYlUrSGVWZ2xjbWpmY21LSlhia01aL1NtcGdBZFBJa2x5SmRUUTZ4L0tU?=
 =?utf-8?B?aVpxUytuQXEwZEg5UThtL0pUeVRqbXJuVWRJZnoxaXdBUDAyc01WSXoyVGJR?=
 =?utf-8?B?NDVVbkJkeEdNTm81NU5LdHJucFFtUG5RZzd4SElLUDExY3pMTkpnd2hkR1ZT?=
 =?utf-8?B?dEp1TVdTclI4TGM2ZWo2ek11RjdBaWlkUWdjYm1ySTRwa2xBM3pmSFV1c0Vn?=
 =?utf-8?B?ZXVwSVVaV1E4d3ZwYTdSYklsSEprbllsWDZ5bkhjQVlienBNNCtUSVlnWWRS?=
 =?utf-8?B?SVAvWTgvdG5HS3VKQWJUZ1NUS2xuNzNHQW5DNUxSelZiZ3VmUlhOQUk3L0ta?=
 =?utf-8?B?MUl1Y2oxcUNtVVVZK1BNYm1WZnd4TUNicW51eldtay8wOUtaRVBhcEJ1NnJG?=
 =?utf-8?B?VGMraHU5YUErTU5WREpGMlEydWZnRVdWaisxWloxUTVlNG00d3Z2Ni83SjVF?=
 =?utf-8?B?MEJZOHQxa0hRSmN4UlM1RlJkN2FSbzlYYy9icjI0dUhaeExEdm13ekpwOEZF?=
 =?utf-8?B?TnBkdmhiWDZUV2Z2TEtCM0VDK0lhVVZPWTF2cXJlMWFqUDlZMW15Zm5veEZT?=
 =?utf-8?B?ODJJZGIzOTRJcjJQT2E4U2Z5R1ZwT0hKTUNndW05ZDgvUHJFbVY4SEdmeldX?=
 =?utf-8?B?c09pWFIxOFNvTDJneXNCODJvcDJxMmN6dFhmSnZqajZWRUk3VlZwKzJFclYx?=
 =?utf-8?B?YUVjVkwwSHNLejVMdVBwcy9WQ2NiaWRmY214NVNFaHprQ3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTdaWXBiUVcrcmtZR1ZJSUVIRkZBRytnN2ZZemo5NmpVaERkczNXTC93L1Va?=
 =?utf-8?B?QVhLem42TE05eUJscDlkK3NQSEFkTStqaGtlSzJJd2xYUXNta1dCWVlRNmtx?=
 =?utf-8?B?MEhGUURSSDZQbnMvUit3YkZuOHNja3dqUjl2WVZ1TjR3QUd4TVlrVFN2OWF0?=
 =?utf-8?B?b1J5SUhPUXBZWkRCM2U0VHkwWFdRZzFnaC9nZ3VkODRFYko5NGp6R21YQm9l?=
 =?utf-8?B?WGp0QjZ0eitvd0x3b01JOGJnNWZhVDUzbG5GUnVKRUE1a2p5VDVMY0tPb3lY?=
 =?utf-8?B?LzRWRjQwbXBwblNTaVVjQ2VkWWlqU01JalowNWE5NWRXUkU2LzIvM0FwM0t1?=
 =?utf-8?B?bjNGRTZTOXY4cDkrUGFLRzdqWmRpaDFyM2xEZU9wVlZoYjBaWlRXOU81R2Ex?=
 =?utf-8?B?blZ1YWVTT2pYOHBPQ0NVM1NwSklOMDV0S2tyNjJyRjY0NUo4bXVxQlYyRzFQ?=
 =?utf-8?B?YjBKc1FGL2toNmNHUWVSSCs0eTFyazBSckIweUVTbWdIT3RiSitvVnFLRElh?=
 =?utf-8?B?dnpkMWlEbkh3Y25yTkhMS2p1UmNDRUFEd09TMk5NSUpBZXJQUW9yZFZneFc2?=
 =?utf-8?B?Y2FTNXcrS0hyR3Y3T2xqak9sbHJsVGJaNHI0eHhjbjN5dGdBTVBOeWxYbDhO?=
 =?utf-8?B?YTFneWxYa3VJempVOHZoODlwSms2UjE5SlJhZGxnSzg5WUxPc1NidWlFMVdR?=
 =?utf-8?B?RmljSXdhYUhueC9lYWpQRzZpaEdLa3N6ZDcyTzVuN1pqL0diTmNqYmJTUlpF?=
 =?utf-8?B?cmd4aklBQXlvaXBWWkFGbWtvd1VYeTdoeW5KeWNQRGN1ZWJWWGd1dXRyTnpM?=
 =?utf-8?B?bDFGY3kxcDkyZTl1L1JzSVVySkppUXFycFFVR2J0Q0puMGVReW9mcXlzV2Vt?=
 =?utf-8?B?MG8yb2V4OHUvZWJudi9oaEYzOU96aHBVc2JVOVhYU1Z4ekkxSUpMWjY3SDg1?=
 =?utf-8?B?d3Y0UjNBQ2xCcVhsSnF1TjdMTGNHaFJRcENLK01IVm5LdlNuRWtMbkJvS2wv?=
 =?utf-8?B?clRJd1RPWkp5MHhOd3djNk1KSm5CZktXSUFEdVFCQnJwcytsdmtYbGNVSVl4?=
 =?utf-8?B?NFdLdTJMekY0SjZrc2xRbWJGUUhvOWo4dHRUd3I0VDNEZG9hOFpLNVFLSFM5?=
 =?utf-8?B?U0RGZlpCK0ZmRS9hSGZ5cFVhL2xhNzZ6RmdjWjY3UXZLNlBLek5vcVZXNGJI?=
 =?utf-8?B?NFlOdjRvYjkzOEZxQXUzYWgreXA5ZEZrVlZKTThMK0h2a0w2KzQvVTVCMnk4?=
 =?utf-8?B?d0tuaWhONEtWbFdQMDhvUU1JUDdpR1I2RFVFdU5rcEQ2bllLcWtVblFlTm1S?=
 =?utf-8?B?UTVwaVNzMlNYbTRXOFhSNnFkTWNVT0Q3QUpNTDZmVE1iTmxramJIbVhMK3Nz?=
 =?utf-8?B?ZVdQWk9Sb1RYMDJ2Y21rT0xpR3l5eU5xRFV5WllvY2FXMWNDa2tzWlpNSGhM?=
 =?utf-8?B?a2p4aVdoWWdlU29VTkRuSi9rLzBybW0zSUo4cUNyUHRvckZDWTFhVkZiUUZa?=
 =?utf-8?B?ZFE0SUxoeTRmMjBrSXBnL0xsU2NNWnlCTzJtdFZTd2hNLzhUb3FURXlENU80?=
 =?utf-8?B?SVJqZ3JjV2xxN1ZPbHdZRFhjNVpvOVA5TG50V25pcWFXZEN2eEp1RUZkZkMr?=
 =?utf-8?B?UWNuSmw0V2VlTGwydS9OZk9WaXdLdHM4QzF1aGNkOFRaNVRGRCtrc3RrM3Iw?=
 =?utf-8?B?V1U1NjB6NGRWVEw4eUpWcE9qczFpK2IrMUlTbmNGWElDUHdDTkQyMmN3ZUhy?=
 =?utf-8?B?UHA1NEd0Zmx0K3pRSis0b0crK0djMkIwVGc1WDdHNXFhVHFaRGszUkhjSDFR?=
 =?utf-8?B?bVpVZEF4SzNDdGtMRHhFZTRmNDE4enkxczlTMmV3QzVKMnVNTWorU2F1TEVJ?=
 =?utf-8?B?b2tnOGs2QlVHMjIwMUE2NkNMY2xLOEtLRkg5OUlWSG56RS91NnR0MklrS2FE?=
 =?utf-8?B?RkV1d0lWbXNoZVhJZVBlc1dibzJadEU2Y3FwQnN6QmdrQm1BSTNuSDR6TkJm?=
 =?utf-8?B?aHphOXB6bWdIOElaOC9TakovdnY2L01Bd1ZlNEFWdEttNWVBRFc5M0UvTDFs?=
 =?utf-8?B?MFdZL3VLbGdlK1hVUlhEcE9mNGZFTmNjUkhKVldMNW5GTnB2cnFReld2UTFq?=
 =?utf-8?B?WmdWdjhOaEZ0ZU55Y2NIaldBRW13MDlvVG9Tc0c4MWRTaGk1dDREUUczR0tj?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04c28553-e500-4277-5f2e-08ddb576614f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2025 12:30:20.0931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eFCJ0UnOvaxWwnUdVC4mF6K7g/M713QVdYckelCm3KFd4Oh1cVrLTqAqbOzhUiarceWVi5Q+G1/55moQreCuJN66bilAhDrLr6fhgol1GUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8497
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

Hi Andi,

> Hi Krzysztof,
> 
> On Wed, Jun 18, 2025 at 01:52:22PM +0000, Krzysztof Karas wrote:
> > Move this macro where other GEM_* definitions live.
> 
> too eager to send the patch here that you forgot your SoB? :-D
Yes, I did forget that :)

> No worries, I will add it.
Thanks!

> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> Thanks,
> Andi
 
---
Best Regards,
Krzysztof
