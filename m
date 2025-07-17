Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC1EB08FA8
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 16:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 183CC10E838;
	Thu, 17 Jul 2025 14:38:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZqvAeq89";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C15E10E84D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752763133; x=1784299133;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UKo4q72fHeR2f0UpMxS4+EY1Ne9I164KKq8l7NjP8rA=;
 b=ZqvAeq897XPZNMi7IoTCxL4mKlu/BeeY5IbXljcKu/2swvskgCcxzJzq
 9xtP2esbjA707Eue9uvc09JpK5k374NzeOhQNTaGgpzwNCUUkMK6PVgy9
 ClDyrlj/ZkL2q/qdyHPJQj+xBDF6BUUQdkRTW+KMfPA2pRDlOCN7mJ071
 dS5gMiNyxPjaVLm3VTaA7SHgP5bwzbW43WK2rLjfEPm2K3ZbLIeraqIrJ
 VdOktHpAYWkcBPiqhtW2GwuOiV6lc78oK73y22qqfkSjuVsizL9jLojd9
 n9JhTeW+j/x9Id8Ixvsf08glExCUwbhLi3Ppp+fDcQgZpHmV1zmvHKXPA A==;
X-CSE-ConnectionGUID: QSNdbgtES2qvtGLpF8sGPw==
X-CSE-MsgGUID: aw2bBbzDQcqgkae8mPX3Jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55190988"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="55190988"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 07:38:52 -0700
X-CSE-ConnectionGUID: Uihy0R46SZOjyK73/rDudw==
X-CSE-MsgGUID: 4h48Gda1TZqoAyIyaDmDRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="162102560"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 07:38:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 07:38:52 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 07:38:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.89)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 07:38:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xo3nINQX2+YPeQV8L9IcvX9w+GBS5BbL6Kc8j6uGXxXZCwAPugsfuh85iduDPh39S52DUq9eRVdJY5Y+cCpE3Iu/qBirYx6PPefVE1ixy9cxM0/1etXh+rdI4JePcUE03v2+4Z+iz/jFmkPzv47iOegjGnORh7lU41XQET6HNf1hM72QOpaPIWJT7EMlZlr8f30CL/Zo4hNAYOWPRQwOjMzYwGBmQ510/UGdeZOp1/jCAZox1ieeTneH36g/mVRQJW0HassYRFNeSc6rBJFcT2wJ7plCXuPOKrT8pWYF9wFUsENvk1dmcALLTw5pB9/jIjJBC7n4O4nu7+2Du2973w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m4Fc/25sY+wYpWEatKRWB5Wa0lBKobCnNx6TLtq6gQQ=;
 b=a9ftTelYW8IYGMni8pJk4zgvFB6xQxALdJG8VWkBfJpvQ3ixogNHbSN+yuAJ1Zclb/pajEY8g2Q/42o0M0CeW2xOuklmxHZ5wtGWwFI0urfL1S34H6hCO+iSa0UdK7VmmYo1HLHSyQPJ3ZgmmNMmR0Yy9W+QSpVPpkCmdklLFkc1O7nWTsfx8eBpRxZsooY7x+iInmSqeSrBbTNyS6UFA8C8PQtJsGy9XZX1J/qI6GlBuI/KvqxgAOiiuqHeInvVZw6zByNU9+A6B63z6+YIjhEM4aNqKWaTvOaNGfAvSRwD/sBTpKpdXL4iW4iRi0L10BFKuWZpawZbzQG3G4x3dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS0PR11MB6518.namprd11.prod.outlook.com (2603:10b6:8:d2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.27; Thu, 17 Jul
 2025 14:38:47 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8922.037; Thu, 17 Jul 2025
 14:38:46 +0000
Date: Thu, 17 Jul 2025 14:38:37 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>
Subject: Re: [PATCH v2 1/3] drm/i915: Improve readability of eb_relocate_vma
Message-ID: <wrum6ugu3qzexliktlvkz45uc5okcs5peiqrx63hfzmpb2ujko@do3mxsmdeaty>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
 <20250717123824.676605-2-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250717123824.676605-2-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: WA0P291CA0013.POLP291.PROD.OUTLOOK.COM (2603:10a6:1d0:1::8)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS0PR11MB6518:EE_
X-MS-Office365-Filtering-Correlation-Id: dc415915-f04d-4459-c155-08ddc53fa27c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UTRMdDBrQytjZmU1dS9GdHQ4UU1IWDdZUm44V2NIZmwxeS91MmN2ay9GWEw5?=
 =?utf-8?B?R1lSUTYzRGRBQmUzcjB0M1d2VjFKZThUWU1xc0U3c0RqdmdnLzFoaFoyMzFz?=
 =?utf-8?B?V2FBb0NFdWw1emxCd3VrQzhmZ1hKVCszVkRUQy93RFdRRmF1QWFWZ1B4RnpY?=
 =?utf-8?B?ekRCQXgvT05iSmFka2pkZ3N4bm5Cak9jaC9ISjRDcWtERVNqN29yYWpuRC9y?=
 =?utf-8?B?LzFNdWdtTHBaeWV4NEtxL2doeGpZcU5uV1NZUllSY0g5cW9xbHRiRFcyY3F5?=
 =?utf-8?B?Q2dCdkx5ejR5N2ovTG9wc2JmL1RkZDNkdncybWtJQUtWUlJhb3ZSVWhSd2hX?=
 =?utf-8?B?Mm9oc2p3Y2dGQTBSV1JGZWdIcldaby9iRnBaM3FjQVlROHFrL3dIUGtPNUt6?=
 =?utf-8?B?cFBkdGJGcXlrMDJ3VTBwM2g0dEN1eFc0dDU1bitrd0ZZRXZrdDM3eEJwdEhU?=
 =?utf-8?B?OG9pWGhPV3BqUVg1NlA4cmdZb2lOMDhnUDNLUlRqSjUwRVMxS3ZHSHJpTmNt?=
 =?utf-8?B?MnI1U1RBa3BNSjEzdWJsak5kWVRXbTZMU3BPbUxPQUtFRDcveUZOMGdtc0RX?=
 =?utf-8?B?ZnE4V3NlNjRXTlRpSWZTZm5oMkIrUCtSMWlnakFIeEJESGY2MkdROGxabVJz?=
 =?utf-8?B?QmtmSCtHNWN6MjcvYis2UTJ2RE9tY3R3OXhlN3V6MHlsSGFBd3NFc0YvT2Y2?=
 =?utf-8?B?Y3RTZUpuY2s0WnJyWmpjU2Vtc1VxUWNpSHF3TktsN3ZDSUZzVzMzczdJU0h3?=
 =?utf-8?B?MXlaY05JQ0lNWVdWcWxOYWJkUUNpQXdXbDdCT3ZhS2VQU1FWWlpRME9hYXNx?=
 =?utf-8?B?dGxRZ3IzeGt0WlRPZXdVUG1aK1pRc1Y0ZDNkWDgxUjFDa2QzOGFSd3VUaHR6?=
 =?utf-8?B?OWFvYkJ4Tm1LZzRsUXVtWlVQKzArcGM3aU1FTm9rdFdXSFlTZU1DN0pIWHNm?=
 =?utf-8?B?OE9JQkpKRzlSU2RrNVlIQ2w0RTZhL1FBQjQ1UTlDM0s3SVp4bzVGc3B4dkFS?=
 =?utf-8?B?T2FCTWhuU3JSbmlCT2Y5dmh3akNrK2lJZXdlWmdQMDRQamN6M1hXbDhLcjRx?=
 =?utf-8?B?LzQ4R1gxSitDTzQzVVhyUFozaXBXRCtvRit2ZWZOUW0vdVpHN055RHRQOHph?=
 =?utf-8?B?aDBMaXloYXN4SXVrSEk0MjdEcWJaMVliSE1pUjIyVlB2UWJJRUViUVZDdEVX?=
 =?utf-8?B?a3ZlMlRscXBrd0hNR3laYWVsalBYRG54V0tDNUZ6SDhqYmw4cVF0TzdqWjND?=
 =?utf-8?B?d3FNWmdybzNMeXJicXc2eUc5KytzQ0N4Zi9KYSs4THFQOXg2YVZjNk0vbVQ0?=
 =?utf-8?B?elo1K2g4d0s2MlJXVE05MnFnM1l5bGozUVA1TGNtSVdVa3dKSzNUVG1HcVEx?=
 =?utf-8?B?VEVSblViQ3lBM3l5anVyUnAzdUpYcDZwcDExYitGalhJQkhSOUVwcmFSbzhP?=
 =?utf-8?B?bThuY1RTaitUNlhGcGxzc2hpWVpmREwrczBZVTJNYVQwUUJDZmcrZVdsdStB?=
 =?utf-8?B?dHNiRGdWcysrSDZuT2RNV1Vya2pCZkVBQUFOZTJDTFR4UjhtNnVvUmlHbUV6?=
 =?utf-8?B?KzZoSlNITitCNktBSHBEVzRDcllBUDFKNDBKNXFwSFRZV1h6ampLUDh4V3cx?=
 =?utf-8?B?MDhaaVlBVHRTajlEcmMrVjR0VGNoeWxPb1l6U1Y2NnlpbDBnUk96VktoN2E4?=
 =?utf-8?B?RU5aVXd2djhQNmNORmkyUFhLekV2NjdFRXdUU3dsUGluK2xPTDgzYWcveUdI?=
 =?utf-8?B?WDNQVGV5YVpKT2ZjQmx0YzhiNkE4clBSdlBHUHVkQW93aXcrWGdzYzVQZEZs?=
 =?utf-8?B?V1NDbHVSRWUvNER6NU1WU3pvS0lqejQ1TGRXWm5DcWFTMm50MFhsdVlNdDgx?=
 =?utf-8?B?UXhFZUg3eVc3dGI3U0hwSjU4bGx1M3hKSDlyQUZLZ1lCRVlsc200M0k3Nm5I?=
 =?utf-8?Q?9q+8ACd3GjA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MnFVdm40WVJNYWM3aUpSMHM5Q2RoVXRDT0poRU53SUlJM3BoMzZFZkkvYjF2?=
 =?utf-8?B?b0Zkb3RoaXZUWFhsMUxkS0JHWlBMUm5jOGpXdU56cmsxamNRWE1KZWRNTGFp?=
 =?utf-8?B?d3RLUTgyWSs5RGF6VlJNWUFoSVdZOTdkVFBwMHBaZW1ubExNR2wvaVhISDhx?=
 =?utf-8?B?d3BsVjRXTEkveFRGQlBlcmlRdTFGYit5QTRhdWc4a2JtNmxzTDI2cU9rdHFL?=
 =?utf-8?B?OU5zSm1EbXRtZTY1bWJXSlc4emxqK2lSU0N6dmdPUlZibmRocjR4bVdOYmRm?=
 =?utf-8?B?aFFkR3VUd014K1B3bVJ2MDg2L3ZoN1U0anVoSjFkQ1RBc2NxYmtvVndTYWU5?=
 =?utf-8?B?TjhJbEVSTkhJc3BrcFJua1M2MU5LMkJmZjVobFRQUjYybEZ1VGFtam9DVGlB?=
 =?utf-8?B?a0FLcUxFcy9nR2FOeFpKZmhZS09YNEtBOTl0bnZXRmg4dVlrUGhhQ21RYXda?=
 =?utf-8?B?NjFzL1ZRbDJwUUthSTl0dW1Rek4weGp1Q2F4bG53dVpxdnJhQXdXK1JUV1Ju?=
 =?utf-8?B?VVk4azk0OWlZcnhWS0R3Q2lqSWR1ZmhpZSs2dEI5L0l6VStmc1BVWE1GRGJh?=
 =?utf-8?B?bFdjajFqUVBiczNMMEpndkFicDIzQitPSnoxZzJEU2hNRWxNZjFQVmZwSTNt?=
 =?utf-8?B?Smx3TmQvaWhLbHI1TEM1Z3YrMzVYY3BFemVUMzB0c3ZDUFRzVjFFKysyRlk0?=
 =?utf-8?B?Yk5Yc3pLUy9RcFlpRlNaNG5WMFc1N1lqMit0U2pkMHJhTm9mQXZSeWRJU1hw?=
 =?utf-8?B?THIxYTh0UmV4R1N6UzJieE96VWl2WWhSVGpKUFlCTmRiQmZvd2FHdDRDOU5q?=
 =?utf-8?B?eTNyYzNNZ2xKL0dHODNpakV1eWxpOFZJS1VnbEMwVkdsOXZxREd1VW1OQ0t4?=
 =?utf-8?B?dVV5MUt4Tmc4Yk5UaitDRDVndXF1NnJ3RHVpN1E5Smw5N1VXYVYxbzRISjgy?=
 =?utf-8?B?ZXBPWmtVY01PZlh1d1BEQTAyTHVYdStpUmljYktvbW40amtFTWVkd0tCdUVy?=
 =?utf-8?B?dGk2V3cwVncxVnIyTi8rUVA5cmsySlpETWM0ZFdtM0I0ekduR29mWElmQnMz?=
 =?utf-8?B?VzU3VlAyc0Q4VTJhRzVaQVNUQnlrZFBqS2hqSmU4QWJhVTlmeVJmM0ZLS3BO?=
 =?utf-8?B?Q2V0SVhRMjgxTWErMUVPK0JNNlA3Z3p1TjVpTU5HRkFrRmRHUDQ3YTBPaWEv?=
 =?utf-8?B?R28wbmJqRC9pRkViUEhQL1paak96bzBMWVBhbXpodXRoSzdCTWJQeHVLaVR6?=
 =?utf-8?B?M1ZoOThzZE4yaU1tcGI0ejNhR09vMWhiYmZJUkJFcGhtVzdxZmY5YzRvQ0lm?=
 =?utf-8?B?dGVIdDRTVHdmUlNkbWQvQW9idkdTZ2FNYUlNeGVxSjZUYW1nUkw0SmpOaGxB?=
 =?utf-8?B?NERqUVpCbVFxb1RKeTVjWDNSbUFFVU5TRmZrY1Z0bnB1RWF6RWZZZjBsdnF1?=
 =?utf-8?B?ZFhFZCtzTU5HRlU1WXNGWlZ0blhtclBaTnR4ZTR4V25ZR2xRdlAzZ01RS2Z0?=
 =?utf-8?B?emhSdUxoZXZIa0tJTm54SnN4MmFiMDdZZ1M1Y2hmRFUya3ZCSjFBR0hsQmx4?=
 =?utf-8?B?NG9ZaEdnRExqZVF1MjIyZ2sxQU1pWWJwRHpiQktJSGJOb3orWUE0K1FjT2tP?=
 =?utf-8?B?UytoT3VNTmhUbFc4bE5KZ0UxN0tVRkRwMnhUV3ZQajBBaWV3Y1V3Z2F2R2Jt?=
 =?utf-8?B?NFdmTFZzRnJZeE9qdTBkUGxweUd6eUFncXNlNTgxSWxaN0kxUGxsRGVTb2lP?=
 =?utf-8?B?dXptRjFuR1lFWW0zTDJPUkpqbFRSeUZaaGJMOE92dWljWVNRR0wvYmwwREIz?=
 =?utf-8?B?RnpkNVBGYlR4NkF3NWN0VGNFQXFPNTU1b3RtYVY2bk5yY0hRMjBFYU5zS3Zv?=
 =?utf-8?B?WEtpKys4QURZdk9hNFEvN1pnTm5UWXljMFk1RHFsQm1wb0c3K1pCOWdLUkRm?=
 =?utf-8?B?Tk5uT0FMbG1TS0xKMnZkNWNPZ2E0STBPcVdqbVFGUWNvKzZYWkJ4TEVBa2lm?=
 =?utf-8?B?ZWt1SjM2c2hyTEdhbkg4bkFKcGE3SlZLeDVyQXJQTE9Ka2V6QjVGL1NEMnR2?=
 =?utf-8?B?dW1pMVFsc0FNeHBDMFYySWQ3YkQ2WGNPNUlxZ3VINXdSdTc2aHA3Qk5JREFU?=
 =?utf-8?B?eG41UUlQV0Y0OXp1NEJXQmdDeUxjazhvU2lDS2lTVm9Jam5xYmVTbWsyWVA4?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc415915-f04d-4459-c155-08ddc53fa27c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 14:38:46.1171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1dCyEwbrbqbVp2xEI/x+FUpFZ7KY8gVv4ZAq3Fhscn7FWF+p5/pMkw/VhYh/mL1qNEP8IhaCNNJ+fQmzVzyEmd5mNeXruU97lwNBMo20FKE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6518
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

Hi Sebastian,

> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1529,6 +1529,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  	struct drm_i915_gem_relocation_entry __user *urelocs =
>  		u64_to_user_ptr(entry->relocs_ptr);
>  	unsigned long remain = entry->relocation_count;
> +	int ret = 0;
>  
>  	if (unlikely(remain > N_RELOC(INT_MAX)))
>  		return -EINVAL;
> @@ -1541,11 +1542,10 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
>  	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
>  		return -EFAULT;
>  
> -	do {
> -		struct drm_i915_gem_relocation_entry *r = stack;
> -		unsigned int count =
> -			min_t(unsigned long, remain, ARRAY_SIZE(stack));
> +	while (remain > 0) {
Is it possible for "remain" variable to be initialized to 0?
If that would be the case then after your change we'd skip this
loop entirely, where previously we'd run at least one iteration.
Would that be a problem?

Apart from that, I like that you removed the empty "if" and
reduced indentation :)

-- 
Best Regards,
Krzysztof
