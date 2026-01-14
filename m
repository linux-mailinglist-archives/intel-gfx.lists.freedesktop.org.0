Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8CFD202F1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D4B10E623;
	Wed, 14 Jan 2026 16:23:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FVyB4mm1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45FF710E623;
 Wed, 14 Jan 2026 16:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407791; x=1799943791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=NZVOaf7qhz92pfkYAV2Tm+zj0kdOR0F/dugmGGE8Jmc=;
 b=FVyB4mm1X1rDHnuAD3z3Gl1df1o6jN8iYuT8lCE+cRFgAyMRHCTTlgkg
 yrtyCAklsC1EhSNh9PpFhFvC8JYGOSWJ5wffyzxHQeYRlL99AsbkyXeE5
 Y4iqNagnJZNd1hiB9uzSp/1Z36NnDwMHo8clxVRkNB4CtohWI9ZJVtjsj
 cj4pHPPUCOUdnHmSbIjp8nes94xWJWLPaC+MdRg+sgBAKgBGTQ9uR3xVq
 ZqRjytIx+3Z+y2Px+s9pMt2UCEsFa6MaiMzjiL57Un82tZ3rC+TMksfGl
 wPyLFFa0JThLADtakUelFRGGCCnsFMVYy8HLpiEGTMiug/W8ESsfndOSM A==;
X-CSE-ConnectionGUID: lYfGuCj1RSyYwuUIImvodA==
X-CSE-MsgGUID: k0XiUzWrT86G4nW1YPXEsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="73551576"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="73551576"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:11 -0800
X-CSE-ConnectionGUID: wORPiOXfS3SUECsuXS21lA==
X-CSE-MsgGUID: yOt4Yl0pQO63wbMpnoOcYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="204611147"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:11 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:10 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:10 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ijqTDpzPKRuuPZJIAbzByLYOER7f3ETV1k4+PZUOl+NCWguqalKb9DwrApbW5xDWjPZOiqOCjVuyjEXGPD0Sckr7GgIUQaK0fWWs1cIw9Hxx+wM+ykpAvwEvK1il17gqanGckfKIMB+fy1mOGlQn580d+KXw7/O4Kx4TWELqxd905uXiSKbwRaQwvwHM1XwtJgnOk6/IjZbOCpZ86fMB6v0mISVk1hA3KeJkQbB4he8/QrcYgLcdCTT5Z0d8e6JWi9scRUIFXyEWM8didVj9rpLr3t+KAHhYHO4cHbscuzBBCrFgDl7cryFraNQ5R7zpzL+jaKc25BQZFRrXiCdyqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=apQucapSVQ0OEZNUA5iKGjVedZquT/sIyFIHVtpeyUg=;
 b=nLNvrtc2dub10SydfSPvwMKYfPAnyuylYYn5cAeyg54IDJdLT2jKfxexb0TMTnKuC5NhcObKrW/NQ/LjaUKuC2iq03plHFRM7zcHbVw/fDmB8P7GGJfoGIEwdQl22sphc7dIlqfoCoJSoGLNN2B9hnQNIjo4hxJ017gHmGu8IXR/qM8yQoN9TrKbw2Z4S5w0VjYLs6sktkexxpzkr3EwpW0hJx65Z09YnsI6hs7M+0LwVC0/fLudK/TBa4rrW+m7F9N5VQ+CGYh5FbxsmIh7QOkNtsiyqjtgnBrGEBC47m1BKeGJ4tMT1pj2Ehx6sUdmPmEXaHQTqjePPD9lazzrrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:23:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:23:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 11/15] drm/i915/dsc: Add intel_dsc_get_slice_config()
Date: Wed, 14 Jan 2026 18:22:28 +0200
Message-ID: <20260114162232.92731-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: ff2bfd96-a48b-4a10-518a-08de5389339d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1JKK2NCTzBNTWgrY2JITWk2UEFwNEtaR0orNGF4elRjWENKeHBFZkdiQXJF?=
 =?utf-8?B?emZHTmNYS1RCVWkwS2ZFY0RHdmVldWtydUhsMCtIREg4d0hBMHU4Y0FjMDEr?=
 =?utf-8?B?N09yWFNucVpHWTkyOFVjOHNOdFpoQkRNaWxDaFpNeTNJUUUzRUxqcG5Da1l4?=
 =?utf-8?B?N0E1QzhZbjNhMGRnN1dNbk42aURBSk1Cd2xlRDZwSTF2enpKM1hNVGVRVWx0?=
 =?utf-8?B?NFdrYkRNMzN5aU5IYWorbkNrd2NVZ01rU21YZ2lVNERUKzY3RE9GcWhPNkdI?=
 =?utf-8?B?OWhnQ0FPOWYzcmNxV2IrQ21yVG5QeFlmSFd5aENoVjRnZHA5bFc0QlpSZU9N?=
 =?utf-8?B?T3o3Y3VJblBBNlhuVkNpKzlxU2dLdEx1OVJqbnJUendiZVRkL2NScG5zQWln?=
 =?utf-8?B?S0poOGtEKzBHczRQM3EyVitlMlpPRUNDRE1KNW1sT2xveGx4VXA4UjlwaVZx?=
 =?utf-8?B?RXYrdU56UnNaQ0cxRjhwM1MvTW9MdjdKK1cyVE82ZFNYVkVWb3A2YmpyclJK?=
 =?utf-8?B?d3lkcjZKOVJxamY3VmtoN3NSdFlNRS9aNWM1MmxOYmVPSmNGaVI5UUV1SGRk?=
 =?utf-8?B?YkxIVFlTKy9tSi9yMFQrZXpIOU1YYjhIOFpueW5vTS9TRmJvZnlpQTNqa0xJ?=
 =?utf-8?B?RVNBdVVDTktobDhjUklQY0FIOWZyV2RhZ2VDdkpUc3Z3S0ZXZjQ1QTdxS1Vy?=
 =?utf-8?B?N3IvKy9nSk5mcHBESmljYURXRjBNWXFEUzJHUUo0YVplc2x5b3hvRTBqWnVy?=
 =?utf-8?B?TnhxdlNXbU94VVBnTFNRaEVyOE9PTXJrR0dLb2RBQmR0djUrU0cvMVFGWUtL?=
 =?utf-8?B?MnM1UE94c0NCelF3NFZvMW5wYVRqWS9wOVVOSUdSMFdIRzFqVTU2T1R1dTN0?=
 =?utf-8?B?bytpaDJPNGtCNVphRjJHNlNNM3ZsaGQ1TmtidkNYUldlUVlSd2VVU2V2WmRt?=
 =?utf-8?B?WDBnc1FUSk1CbFlJTytFQ0ZpYmtNY1RQUG5BVE5BN3M4RDNzd0VFWWhUVVlL?=
 =?utf-8?B?V25DZytuam9sSU4rU3dRWDFJZi9LYkhxK2RkbFI1cGJCVUhTVHBkRU5RV2RI?=
 =?utf-8?B?NHM2V2VzREhzdXF0V2ErN012T24vdTZYY2cxZ1FzbklOQUxWMkE3ckVZVUhk?=
 =?utf-8?B?cmdNTkxOTDFXcTJhR2dlZDRBcDhwWXFrQlJRTDkvcXhiN3BvMXJuTVBzU1BG?=
 =?utf-8?B?eVBsVjg4SlY4bnltbzl1QkJDdDRQdTFIOU5uSWoyb1JRQnd4ZXp6ajJlVXAr?=
 =?utf-8?B?QTBvaG10SVpJb2tUc1ZBaW44anJJZ1V3VU12ZVVPcTRtMjAwS0Q0aVN1VGpy?=
 =?utf-8?B?NGErbG03OW5KRExPM2ora2U3c2I4dHd0WGxRbkRjWGVSYmw2SkkraGhtZWQ0?=
 =?utf-8?B?ZmVGeGs0M0RNYW9oSkRRS2x0T1dpWWZCWEdNaTBIelZwaEpWNVZzd0dQT20v?=
 =?utf-8?B?RjVXbnhmbVpPVzh6SHpCTG5mQm8yaVdTODJSQk5VMm5CMGpxUDBBdkFYTUVt?=
 =?utf-8?B?ZHlkVGZFU1gyM0QwV3NoeG81c3FlM3Rzc20rQU9zS2N6Yk5EUXlQdWcyMW1w?=
 =?utf-8?B?RG1ncnE5L3RYay81SWE1aWNlZG9vSG1GLzFNVkFSUkJjRjNDV2QweWJkak13?=
 =?utf-8?B?SXhVb2J2eUM3a2hsbEphWDYrYVJzbjNnR3JYL1ljNlVhSTdZMEZXcVE3NG9O?=
 =?utf-8?B?TWFMZWFPckR0K1hPa0c5OVJSSUcwRFQwaklXLzRKa2NPczFlblBHNmVodi9l?=
 =?utf-8?B?SGpWL29rTFJMR3R1T3YybWRhRUlrNTZYY0ExL2tvdEIzaWI4b29oNjFsbk0r?=
 =?utf-8?B?R1Z6TExFM3IvakdNdXJnWVhqMkVNNHdnSnIzTVp6RXpUS28wbXcvY3gvbDV0?=
 =?utf-8?B?dGxWVDlsaWV5TXVCUTVYRFBiZ2wzalVaRnNHZTJKOXFyRTZka3N4bGZWQUxW?=
 =?utf-8?B?SlhKU0VNUXZoSjJPQkROVzhkVXlhZm1DWlZGYmVicU9zcEpiaXQ1WGEvV1NV?=
 =?utf-8?B?cnBrd21Qa1pOckZsVXlocWQrd2UyYk1tbERGTDdKcGFqTzdlbitEZk81eHhy?=
 =?utf-8?B?VUxpellEZ0tuUS9lY1plUGFsSDJYVExveitUeWprL3V3Y1BCbGYrNDVUTURi?=
 =?utf-8?Q?Ann4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGQ4UTRkOUIwU0pRVVV6ektEdHlmeGtOQTcwWjd6S2hMd1RQcmZoQU4vWm1E?=
 =?utf-8?B?R2FjWkwxdXY1K1VENkFWOFVDWk5uY1NjSlZMR0VTM294aSttZk1qb2oxdDJV?=
 =?utf-8?B?SVhHOFJEYnpFcUZaWnVtRUJiYXczWUxVbkF3WUtTcmhzZ2Vrc3Z0MUVDNEZ1?=
 =?utf-8?B?cXZlQ09XSzAyWWpJNGlUaDJsYkZOeWxXOHlDdUxqZGpXWjdPelNvcUdZTTds?=
 =?utf-8?B?dWhPQllocUFqUWZvM2puM1ZudXJWS3psb01FUnNNV2VVUG0zR2RkUVIxeFht?=
 =?utf-8?B?U2Z4Y3RxUUNvVGdqWFRCUUtnQUFtVWJVb2RCa3JjQ29OU1hmZldpRWc2MVBu?=
 =?utf-8?B?clU0RE9lWmdCdk5Wdk4weElESmdwTnFkTS83VnFLb0t2Y2pld1o4dGc1SXVN?=
 =?utf-8?B?Qi9HTURsWlJXeE1VNnNWVURIWlBPTmkxUU5kUTd4MlpKMnp5VWw2KzRHbjUx?=
 =?utf-8?B?R3pGSHQyb0p3bnA4L052Rmd3V01oajZnU0RWTlJTaC9hQkJqY2w3U3h6Z1Iy?=
 =?utf-8?B?MlhJNGx4cjhRSi9XdnRCVkFXVGJkSm1uY2lnbTF3akV5OVZxN2FsTFIvWkx1?=
 =?utf-8?B?Y0tMK2puYUVvdytUdDJqd0tQVGo4YS9pdlZObENZL3FFcGttM2tobXNmT3lK?=
 =?utf-8?B?Smd5cjJtd2xMd2d4YThSMVYwelI5L1Vmd3h4TDl4TlRkVkhteTVCL09qV3Fy?=
 =?utf-8?B?bWRyWEtJTGpwamdqTWV6cnlvR0JncFc3bFBzWS91alFENXd4Y3RLSXVwNGN6?=
 =?utf-8?B?T3ZmTmNUMkZsenVOMnZTZ1phRDRMWFAreElKK0o4aWp1WEZldzBHNVJibTRy?=
 =?utf-8?B?L3k5Z0VmQXJoc3h1UjluL1k1eTZiMC8wQmR5bS9lMGwxOUo4ZFFGem04MWxx?=
 =?utf-8?B?cDA0S2VUVUJkT2k3RjhIMlRZd0hKaXBXbXhSZ3FUUlpYclg5VXZjY3NJcEk3?=
 =?utf-8?B?WXdSZW1aYndLY2lRaitZU3FScFhBaEFJc091cFRiMzlqV3RqWXVXTEJiVDg0?=
 =?utf-8?B?eVduRTRkT1hXTnNjYktGbVBkV2pSZFRJQ092dkMrWTVpUldCdm5oUWFnaTFt?=
 =?utf-8?B?S29yR21PeDllZ0l6QTY0UDduOWV6V3k0LzMyV05qempOZnEwRWNIT3F5UGRI?=
 =?utf-8?B?VDJpZGlkV2FSeDZvZEVFNVpNNjNmNG5SQzkvc0k4L1hLallBZkozOXZVNUZ6?=
 =?utf-8?B?cmpqY1M5MDU3dFdqekx5Tkw0bXdyN0JvUVdLNXhCQjhROEdVVGt2Um54bHFy?=
 =?utf-8?B?cEFiS1BTNzM1b1NmS2lFZW5OUmtGMFlOYkcxVEs2bjZCSTdPRFJHR0trYmRV?=
 =?utf-8?B?cThnVlJlZ0I0allWVnNTSXBzVThSZWdtYmIxRmo5M1R3bzJHb1h3bFV3Tnl2?=
 =?utf-8?B?NmFrSkdRcUtrcmh4L1d6UlRSVWlEY3BoOElMN0JoNjRRWGpnWUc1VWEzUTl6?=
 =?utf-8?B?VStIMytvSWl0aUU0dk5DbHJiQXhrYUlVeXZWUmU3V2xUTkloL3ZXSjhZNkRV?=
 =?utf-8?B?MVhSelBJYW1yejI4SWp6bmZJQ2lEbVZTUnZuNE9yVU9GMU9ERzZPSDdFLzI5?=
 =?utf-8?B?MnVxWVBQSzl2dTdyOGtBU01hSHo4a2d6SnBaSUZLbTBjcGJNQ0JPdi9hL281?=
 =?utf-8?B?S3hVZW5FMWwxak40L2sxTkxaOUVENStMUDNDMGFuVXlNK2ZIWkQrZTR3Qm5n?=
 =?utf-8?B?Z3g1V1Q4S3JoV1FBNDM0R2tHMlpUcEUwRjhaTXpKQlp6K2R5Z0N1NFVZK3JJ?=
 =?utf-8?B?SWQ5V2tDck5HSGxLOEwvUGNORW1oUUVtMGxRcjlFRk9wMjRPR0RLS2p3VlMr?=
 =?utf-8?B?MGMyL0hmUEdvMi9IZGxiTG1IbUxaR1dxN0lRSVN0cTVkRzRCK3dyMVNwN3Bm?=
 =?utf-8?B?M0c3Q1U2ZUlYNzQ3T3lxazF2SGJGSXZZUkdEcGJCM1RrcHZDTFN3SWtWWUI2?=
 =?utf-8?B?cVdKS0RsZHdnSTR3NVNYd3lLcnVicGZoN0lFdzlGd3B3cHllQUNUVzhqZmIz?=
 =?utf-8?B?RU8veWIzNVQxOWhEVXVzQmR4aGFOUytybW1ScWJpZlJWamtCOG5xSWkvOGlK?=
 =?utf-8?B?T2VDdGlFcWVTQ2YxM1BaUm9NN3hpNzZYdUtvUUN4S3ZUQXBIL2NXNmdCdEtB?=
 =?utf-8?B?aHB4U0MxYW1zZ2dYQUduQXR4cUJhYkgzRXFmRjRZOFpxSkRpYnh3NG5ENWNq?=
 =?utf-8?B?akl4SS92UjdvQVcreE4rMlF0elhUQWxNbi9ObERuU1BZRXVqWXJ5R2tkWWw0?=
 =?utf-8?B?a0lLZ0U5NUsxTWNWM0hkUHpqcWhIdEdFSjUyU0hQVXR5VkpJMjdPZE1GRm1S?=
 =?utf-8?B?OE0wTG56SlFKQXIyaGpWMjlvT3k1SE5pK3l6M2NrTjdVMjVJQWNORUtMdjZR?=
 =?utf-8?Q?LnAf0BsuBcuL6lIV6aldX9DJNVQiddX3Qh4gtj1rOSo11?=
X-MS-Exchange-AntiSpam-MessageData-1: kggDT3Kka6g3sg==
X-MS-Exchange-CrossTenant-Network-Message-Id: ff2bfd96-a48b-4a10-518a-08de5389339d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:23:07.6080 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jk4hmoRaKdYxbrABrHyGldvC399xwVm2gobG+A2Exi0eRjWFqod3RZ3/ceDe8CBii6TpcyILAHW5UFa57K4rIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

Add intel_dsc_get_slice_config() and move the logic to select a given
slice configuration to that function from the configuration loop in
intel_dp_dsc_get_slice_count(). The same functionality can be used by
other outputs like DSI as well, done as a follow-up.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 22 ++++-------
 drivers/gpu/drm/i915/display/intel_vdsc.c | 48 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h |  4 ++
 3 files changed, 59 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index eff4ea998a948..1d6009b994977 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1030,28 +1030,20 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	 * TGL+: 2x4 (TODO: Add support for this)
 	 */
 	for (slices_per_pipe = 1; slices_per_pipe <= 4; slices_per_pipe++) {
-		int slices_per_line = slices_per_pipe * num_joined_pipes;
+		struct intel_dsc_slice_config config;
+		int slices_per_line;
 
-		/*
-		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
-		 * with Ultrajoiner only for some platforms.
-		 */
-		if (slices_per_pipe == 3 &&
-		    (!HAS_DSC_3ENGINES(display) || num_joined_pipes != 4))
+		if (!intel_dsc_get_slice_config(display,
+						num_joined_pipes, slices_per_pipe,
+						&config))
 			continue;
 
+		slices_per_line = intel_dsc_line_slice_count(&config);
+
 		if (!(drm_dp_dsc_slice_count_to_mask(slices_per_line) &
 		      sink_slice_count_mask))
 			continue;
 
-		 /*
-		  * Bigjoiner needs small joiner to be enabled.
-		  * So there should be at least 2 dsc slices per pipe,
-		  * whenever bigjoiner is enabled.
-		  */
-		if (num_joined_pipes > 1 && slices_per_pipe < 2)
-			continue;
-
 		if (mode_hdisplay % slices_per_line)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index d213947103b51..fd3b4fc85e557 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -40,6 +40,54 @@ int intel_dsc_line_slice_count(const struct intel_dsc_slice_config *config)
 	return config->pipes_per_line * config->streams_per_pipe * config->slices_per_stream;
 }
 
+bool intel_dsc_get_slice_config(struct intel_display *display,
+				int pipes_per_line, int slices_per_pipe,
+				struct intel_dsc_slice_config *config)
+{
+	int streams_per_pipe;
+
+	/* TODO: Add support for 8 slices per pipe on TGL+. */
+	switch (slices_per_pipe) {
+	case 3:
+		/*
+		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
+		 * with Ultrajoiner only for some platforms.
+		 */
+		if (!HAS_DSC_3ENGINES(display) || pipes_per_line != 4)
+			return false;
+
+		streams_per_pipe = 3;
+		break;
+	case 4:
+		/* TODO: Consider using 1 DSC engine stream x 4 slices instead. */
+	case 2:
+		/* TODO: Consider using 1 DSC engine stream x 2 slices instead. */
+		streams_per_pipe = 2;
+		break;
+	case 1:
+		 /*
+		  * Bigjoiner needs small joiner to be enabled.
+		  * So there should be at least 2 dsc slices per pipe,
+		  * whenever bigjoiner is enabled.
+		  */
+		if (pipes_per_line > 1)
+			return false;
+
+		streams_per_pipe = 1;
+		break;
+	default:
+		MISSING_CASE(slices_per_pipe);
+		return false;
+	}
+
+	config->pipes_per_line = pipes_per_line;
+	config->streams_per_pipe = streams_per_pipe;
+	config->slices_per_stream = slices_per_pipe / streams_per_pipe;
+
+	return true;
+}
+
+
 static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
 	struct intel_display *display = to_intel_display(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index e61116d5297c8..aeb17670307b1 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -13,11 +13,15 @@ struct drm_printer;
 enum transcoder;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dsc_slice_config;
 struct intel_encoder;
 
 bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
 int intel_dsc_line_slice_count(const struct intel_dsc_slice_config *config);
+bool intel_dsc_get_slice_config(struct intel_display *display,
+				int num_joined_pipes, int slice_per_pipe,
+				struct intel_dsc_slice_config *config);
 void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
 void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
-- 
2.49.1

