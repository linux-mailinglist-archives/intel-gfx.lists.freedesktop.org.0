Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67266BDF98E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 18:13:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C47B010E86E;
	Wed, 15 Oct 2025 16:13:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OR/sFAlY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C78810E858;
 Wed, 15 Oct 2025 16:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760544822; x=1792080822;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=grooqYsdcTiQdwVMKrFVuBfJsCRw1EAXV1aJhXiWKnA=;
 b=OR/sFAlYra7Emn/+j/DrLE62GmfW0f3aYRHD4DlUSxbOLFqnB3H/gMcy
 xVDC+s67vM89F+8VIE8cttg96TcoAT+GpJrwnudDP/1jCAg1DoYAs3F+1
 HLeuGhYgLjl5y+ttlihEBwDwSLKO74crsKI3DqjmKzI/9jywUv+E5bz2h
 vHyYxYJ9dxvhsNsPaLbfAsNA51p+YwtspLezcUp87KeEqUHXQFDi2qptz
 DoYIIdElNeXc9k5T/f5UyiForYYsrp0fqMk3ZJHBusQIU6DjLhwMH0PXy
 1RVDo4YZe0Ca0HlFjhGspQU6Son36MGf1EbvfeopfxfejODinRhZO4eGv w==;
X-CSE-ConnectionGUID: 6+hbfAnHTWyhm+0Qozgu+A==
X-CSE-MsgGUID: d7dmUIlzTDGP9e3xSsgZCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="66587834"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="66587834"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:13:41 -0700
X-CSE-ConnectionGUID: XBZH6tI5QwmoupD0HG7rzA==
X-CSE-MsgGUID: D6AOSgNWSkKq2Qp7a7iG7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="187312141"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 09:13:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:13:40 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 09:13:40 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.29)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 09:13:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RMAjQjuVHuZA+1i2zX9+VyJP2Hs0D21BlZT1DSAba/kJuV4H1HFpzyRdETdUk2Jaobaor6pZs1IL4iiNIMOEGkMaFttC9URDWkZEH+xgDQoarvr7pJRpWm+ljXwm9GoRr/PAMT2te/xw8g1ADFfBn8VEMIae5kHDFKXGPLHMeM17a9HkkuLcKcPiQAXeKBPk089OSWqv1tGXtloQ1JaT2YGN4W9RmSWUgZYZ7KfbOPhg9vQ3QCXFk9oSY0jgEciUtgGPT5kpw5RAOfZl7H1AHFU7FPsJ7/u84cJ0frfBf62W9ZB88VinMLW/tf3rTUPbr9AjBpc0nVH9H6kxrKJ0mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3cetqBJMxZ33uRyaYo/3UR/Aa62F6RLw94ZVOEk/pew=;
 b=yoJ5XKiaOhbCcYeLy7SG2U4ji6Z5b/yOg4GVfVLnu2XLyhCwi3U3UVNkW998toPbfVqfYghIpTSyiBnJR9onJgg/f/PgOfJfWQNmIeAbDowlfSPeItKp/s48zNu/FdCpJ0w48VVvwte3N+axblU1YOIP+/AG0cNcubK/aTrpah9u78S6sgct8MPCjZmUj5H83qyTt0AhmZwGBghFDZIR2tZI3IxQOjl6iYT4eGIlWQ14rHtQwX0oz43BWQdHrsxZ2Gu13/5sgvGx9qiIPp7GtLzl/Q6kDxqtnjHxq6EOfB+fic3wP0Qj2bhAAyE1cvJo11naeDMeELWy9RbFGBEDwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM3PR11MB8757.namprd11.prod.outlook.com (2603:10b6:8:1af::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.11; Wed, 15 Oct
 2025 16:13:38 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9203.009; Wed, 15 Oct 2025
 16:13:37 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3a8d9b266399ddf75dcd173e86b57d5b1b7635fa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-5-d2d1e26520aa@intel.com>
 <3a8d9b266399ddf75dcd173e86b57d5b1b7635fa@intel.com>
Subject: Re: [PATCH 05/32] drm/i915/dram: Add field ecc_impacting_de
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 15 Oct 2025 13:13:33 -0300
Message-ID: <176054481318.3168.14888319303121640191@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY5PR17CA0028.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::41) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM3PR11MB8757:EE_
X-MS-Office365-Filtering-Correlation-Id: d2140305-4367-4fab-869b-08de0c05cc35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWF2UllZREM0ZEsyNGNSWWlFbUxtaHM5VEhhV1FxVktxMEZLUFRrZ2RsVmFK?=
 =?utf-8?B?WWt5ZFhMYThPaklZY2JVbU5FbHF2SDlZRVhTN2c0YTM3N24vb3JsVFJNSWRI?=
 =?utf-8?B?dUcrYjB4citVajdWeTY5YnlTYWU4ZVY1bENlcG1Uekc2TDE4czRmT3ZNVG8z?=
 =?utf-8?B?aHFYdEFnaUpva212aVlCdWF4SzArc3JKY2JjYWQ5Ujh4Sk9DeU9IMkZlbjZz?=
 =?utf-8?B?eTVsRHpQY2lmT0xaZjlIUC9Qakh0eEp4L3duSXExTk0yQXZOYTYxam92U2pP?=
 =?utf-8?B?VzBFVEtMdDFmL2xQanFFS29hN2FjOTZGY2Jab0lvUWl6amRROTQ2QitWeTVW?=
 =?utf-8?B?QUJZb3FiUzBadHVXMnlKenJ0dkhmR2orNVZaWmNQdXBQK2U2T2dOVEVDbk9B?=
 =?utf-8?B?akhWMnZtRDlYZDA3NUZsTENhNFl0NW15bjVobitQSkUzTU5hU2NXZWVXU0hr?=
 =?utf-8?B?bXpEY1hwRWRDQTVkRlI1Vzh4Rkt1SWhwL2ptWGxBQ1grbWYzdmtIR1BYaXA0?=
 =?utf-8?B?OCtnOHhVdGp2Wm1idXZwakpiYy94cmR5c1YxYzFENUJWSHQ1TWVJcXBReHV4?=
 =?utf-8?B?enQ2UUlQRWUxZDBxL2p4dmI5UFZkdXZvK2hvcDY2TThldTcxMWdSNmJuWFda?=
 =?utf-8?B?a2dNcUtjSnllME83b3lnSUtKSnJOMEIvUjdVUW9oRGNEd1BYT2JCbnpjbHRx?=
 =?utf-8?B?eG9GTTRDeWcwbUF2R1phTWZiT2d3Qzc1S1Y5ZE8xVXFVa21aMndEbVA4bVVt?=
 =?utf-8?B?aWRIUERNdS8vRjJmUmVCNzdJQ0dlU0R3ZGhmZkNvb1VBYlBIODBNMVRudGVW?=
 =?utf-8?B?R0xMNHlmaVJMWGxRS2ZNMVYyVnBHY0d0US9zbWFRMmtYNWNwaVlYem9GMnJS?=
 =?utf-8?B?a3VKTDJXd2I3NEc0QzAwYTl5Mk9LMUlraVlFaDFrazhjZUZWQ0NIZlpSbTNP?=
 =?utf-8?B?eDZid0pqMUNoZEN6ZnIyR0pRMklYRmdaTnZOL3U0U3hKMDNsd0pSbWYyblJq?=
 =?utf-8?B?aldVTmNqK1hJYWFaeWNpNjRCRlNxb2oyUG1WTzJRR1J5SDR6cTdxeXFab1ds?=
 =?utf-8?B?eU1MWnFVUmd2ZUhuVEU5alladWx1VnNVSXNWUm14ZnhVL3FaR2lRZ0dZVmxi?=
 =?utf-8?B?M00xRzlRbXJyWG1EdjNiSGl5V2RKbmlTTXJFVTNpb3FsUnNxUDQ0NFlQcEhY?=
 =?utf-8?B?ekxzRGhnOStTNVVXMTRBNzE0bXpMS2lsNjVROFZlczhGekF2amllYVBiN2hB?=
 =?utf-8?B?WG9LbGliblBLclowYTNQZmdnb1creEwzWGhrc2wrdnNkTkk5b0xXRTN4VnFk?=
 =?utf-8?B?QmZvcDQrUDRkMEliN3laWWhleXMyWC9ocDltMnNVS0s3a2V1ekx0bFNSbTVv?=
 =?utf-8?B?SHRuUjA2b3lJcGRDcGdvNHF4aXdVb0VRdlZ6eEcrdm96NHpHWTA4R0tpSjJL?=
 =?utf-8?B?c2szOU1wR2Y2aDduVnZtaVdEbDhzYmJ6WEw5L0tKaEdWeWNpNjVJU2k4R2E5?=
 =?utf-8?B?cW0xaWYyb0g0VGRuMWt5TGhFTUtBQlBUTktaaENRcFdHV2hyeG1zSzBJQzh6?=
 =?utf-8?B?M0krRDQrampQU25wS051bERWeEhVQyt2VHJhbW1kYllKOHZtVFR6M1ozaHM4?=
 =?utf-8?B?dHNCNXFZRm5QZmh2cHdqRmhGSXh4VFprVVcyY0tsd3dLRUVVbDBRRU9RYVQx?=
 =?utf-8?B?N3E1UWdSR3h4WHdlMDVUMEo5MUVEZGxPL2FRYkQ3UTB4VTdZbnBHbzNhMHYy?=
 =?utf-8?B?bDVsRjQrS1ExQnFoTE51MmJwZ0pza1hxaWI4eEk0bUF4V3JQb295RzhvNFpE?=
 =?utf-8?B?RVgzWE5CaHB4d1BGcVBNelBrRngwZXRSZ2dacXIwREg2d3d5MGdWdzBIZGRH?=
 =?utf-8?B?blI5U21iK29PeVFGRGFvb3VMQ1l0RnJhSkluampvbHJIQ0M4RS90UFIvaDFo?=
 =?utf-8?Q?jnDNhpQylhxE8jGgw/qWY1Je3eNGyQv+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWhhN0ZzWGdVcFh0MkxlTUlNUG5pMGZqZlBpcmljc2U1aE82S3dNMHlKQ0t6?=
 =?utf-8?B?U0RlbERnRFRkVGJFc1MxTjdpMWN1bm4wejZ1dWcwQ2hMMnVYU3I4cWlOeFBt?=
 =?utf-8?B?WlU3TDNtam02TVo2UGNTVDFtTU00SGF5Q3U1Z1JKU2xCbW05c0psbmw1VUZ4?=
 =?utf-8?B?bWlLK1orc1JmWWxQUDQ1a3FicFF4UjNVV3dUQzl2TDNFNldZNDdtMjNLZTdT?=
 =?utf-8?B?bzIzUlFtSzg3WnZOVElTdXFRQU9mejhUOXZ4K2VQUVBKVSs1TFJHQXpoMWJn?=
 =?utf-8?B?T2VKU0RuZEhaczVMZldMTEc1VkxOaVl0SlJ2UlNGU0IzOGE4VEcwL3Evb3JK?=
 =?utf-8?B?MFhpRUdUV1RKR0sycGYzQmFEQ3JLL29MN3JTeXJyaVVZV1ZVUUpqSUFjcU53?=
 =?utf-8?B?TUdrT2t2WnQyRzhTUVRzL2JzUzVSa3JDNmNCN2h3dVU4U1ZkYmV5MFVia244?=
 =?utf-8?B?MVJnTDk5bTZJZmZjK3pUeUpna3ZQRTBTRkh6bVM3Q1FFdkc5TDcwdzd1ZlZL?=
 =?utf-8?B?YlJWTmNYTERUZ3RsRVhRc0hkTW5PTTdRaGlXdzJzZGdjYnA3QTBkbnkwYUdv?=
 =?utf-8?B?aWxkSlpjK2lPb0dVRWVOTnd5QUJveUtSVUhteFQreGFBVUQ3YVdybWNBNWVC?=
 =?utf-8?B?OWp6NjFqcDBXRS9paUhzZTFwUSs1bG1uNUQ4TEdQKzN1L0pSVUlwQVhmd3U0?=
 =?utf-8?B?KzJCK25Da3ZpalNaN1p4T0JVOEl4SkF0ZlM5eTN5N2lLZEpLK3A1MHJhQ015?=
 =?utf-8?B?MFVsaGppL2FUNzVYQURlY1VFT0tGSUUwZ2grMWVpMER0YzlMQllSWFVSdEZM?=
 =?utf-8?B?N25PWm9PTXRMVTFlSVRhUDNSak9wY1dkTWJJQ0Ztck9BOFpRRkRKVHJzM09V?=
 =?utf-8?B?VmNJNlBLYUxnc2srMlBGWVVwZUJ4M01qYnkzYTlMREs1T09qT1pDL3RHT3FF?=
 =?utf-8?B?eXZxaGRhbGlNSTBIM202dzhNUHBZUGpPVmplN3k4WDZteGl6b1JmQjZGSlV3?=
 =?utf-8?B?RUdpSGpaMVFLbStnbnRZMjFkNTBEU3VFS1hRMUtlaWNvRWlRejErcTZUMHd4?=
 =?utf-8?B?OE1aQXlMeVVscExDVEp5aEtnMDVsdG5KSUtVQnRHVGNXWEw1QmRPRjJ0OURu?=
 =?utf-8?B?U2EwYjJYZHZqalRhTm1QdG9BOUFRUmwxVTR3TTdPcXFsdUhPSHNPZGxRTm8y?=
 =?utf-8?B?c3gzbkt3cUlxc3pIQ245d0JsYlM2NmtGN004ZUdNaWM1V3BtRzFqZjlGdUpq?=
 =?utf-8?B?eS9kWGN0aWxXbDNjdWIrRkdjVUdvS3dndnZDaTNDNDhoRnRNUDlKU2VrV1M5?=
 =?utf-8?B?YnhrYTVZSnpwejFEWGE4K29rWWxUOEE1RE10cEtSd0FJc2dLNDJ6Vkt2aFla?=
 =?utf-8?B?MDBPQy9ic212NWlrNkpwaVBtc3pYY3B5R3dDTXQvZGN4M1FmcnRTWnhBRnlX?=
 =?utf-8?B?Q085MHNBK3VhQ1B2Nnc3REpKa0ZQWHFaV2xBam0vODJDblNQdzVmVmtLbjh0?=
 =?utf-8?B?d3o4dVA1d1JwSTRxS1dKSzVZR2x6ajVnZm9waitMb1o2b3VjeXZ5RERHckI0?=
 =?utf-8?B?M0dkc2FZRVkrMTZ2M2hnWXBqeWhTUTN2RkxRdTdQbFQ1REFMSW9ZSzM1K1lZ?=
 =?utf-8?B?NWNUbElld0tMRjI0RnpNRG1vSG81TzNTUEhhbmxibjlYa3VWbC9YYVNlM2pu?=
 =?utf-8?B?ZlpUMmtKQWF1SWwwOW9sQTlUZVNKUzFVa0V1Vi8ySUpheWM0MldENlUzQmU3?=
 =?utf-8?B?b3dhRlo4VnJ3YmdDYnJnVk9sVmJWcnRnQVIzQ2hjR1QwTDBWd0pQUk95eXBr?=
 =?utf-8?B?RHgwUHRDREhzc3JWamtOS2pCQklsaXFkd3YrWlhhYngxQUtJblg2K2VOejVt?=
 =?utf-8?B?MVVYdVBiQTFHL0crUVk0bDdxcERNL3FaZ29RUDR5MXB5NTl1UXArdURWa2RM?=
 =?utf-8?B?SmRIVWZwOVM4T0lhQ1V1UXhWNXJmV2piSVVyV3pwWmdWbkhJN3h2UDQ4cy9P?=
 =?utf-8?B?b01YTFFsSlNkNm9zYWdyNTR3TVRaZkRVOURUdGxIUkdrSnNIN256OFJ0QmJP?=
 =?utf-8?B?NEUyTG10M1JTWmcwZ0NPM2lWd2FsVEQ3ak9ObmxkNVdqVEpWVzYvdmtZc2Rw?=
 =?utf-8?B?dFkwcDk4ZlJlWlpwbU5hOFBpeVI3aHQ5cXlVNlJwem9lTHErc1lKZlduWUpH?=
 =?utf-8?B?Znc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2140305-4367-4fab-869b-08de0c05cc35
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 16:13:37.7897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mQsOLpBl4gDKWfzUT6uKzEobWUwbNPkR/X9fQwOjwx/udeBykbToV2GcBiVrOZ0clmFLNP4q07iJdh1AQToYdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8757
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

Quoting Jani Nikula (2025-10-15 11:46:52-03:00)
>On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Starting with Xe3p_LPD, we now have a new field in MEM_SS_INFO_GLOBAL
>> that indicates whether the memory has enabled ECC that limits display
>> bandwidth.  Add the field ecc_impacting_de to struct dram_info to
>> contain that information and set it appropriately when probing for
>> memory info.  We will use that field when updating bandwidth parameters
>> for Xe3p_LPD.
>
>Could the field name be more accurate than "ecc impacting de"? It sounds
>quite handwavy to me.

Well, perhaps the innacurate part would be the generic "de" instead of
something that refers to the bandwidth?

If so, would you be fine with ecc_impacting_bandwidth?

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>
>> Bspec: 69131
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_reg.h       | 1 +
>>  drivers/gpu/drm/i915/soc/intel_dram.c | 4 ++++
>>  drivers/gpu/drm/i915/soc/intel_dram.h | 1 +
>>  3 files changed, 6 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 354ef75ef6a5..5bf3b4ab2baa 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -1233,6 +1233,7 @@
>>  #define   OROM_OFFSET_MASK                        REG_GENMASK(20, 16)
>> =20
>>  #define MTL_MEM_SS_INFO_GLOBAL                        _MMIO(0x45700)
>> +#define   XE3P_ECC_IMPACTING_DE                        REG_BIT(12)
>>  #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK        REG_GENMASK(11, 8)
>>  #define   MTL_N_OF_POPULATED_CH_MASK                REG_GENMASK(7, 4)
>>  #define   MTL_DDR_TYPE_MASK                        REG_GENMASK(3, 0)
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i91=
5/soc/intel_dram.c
>> index 8841cfe1cac8..bf9f8e38d6ba 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
>> @@ -685,6 +685,7 @@ static int gen12_get_dram_info(struct drm_i915_priva=
te *i915, struct dram_info *
>> =20
>>  static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct d=
ram_info *dram_info)
>>  {
>> +        struct intel_display *display =3D i915->display;
>>          u32 val =3D intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GL=
OBAL);
>> =20
>>          switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
>> @@ -723,6 +724,9 @@ static int xelpdp_get_dram_info(struct drm_i915_priv=
ate *i915, struct dram_info
>>          dram_info->num_qgv_points =3D REG_FIELD_GET(MTL_N_OF_ENABLED_QG=
V_POINTS_MASK, val);
>>          /* PSF GV points not supported in D14+ */
>> =20
>> +        if (DISPLAY_VER(display) >=3D 35)
>> +                dram_info->ecc_impacting_de =3D REG_FIELD_GET(XE3P_ECC_=
IMPACTING_DE, val);
>> +
>>          return 0;
>>  }
>> =20
>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i91=
5/soc/intel_dram.h
>> index 03a973f1c941..ac77f1ab409f 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
>> @@ -30,6 +30,7 @@ struct dram_info {
>>          u8 num_channels;
>>          u8 num_qgv_points;
>>          u8 num_psf_gv_points;
>> +        bool ecc_impacting_de; /* Only valid from Xe3p_LPD onward. */
>>          bool symmetric_memory;
>>          bool has_16gb_dimms;
>>  };
>
>--=20
>Jani Nikula, Intel
