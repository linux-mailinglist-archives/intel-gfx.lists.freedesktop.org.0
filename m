Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98359C048A2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 08:40:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EB4610E9E5;
	Fri, 24 Oct 2025 06:40:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F8R9/iaa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A232310E9E0;
 Fri, 24 Oct 2025 06:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761288008; x=1792824008;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qLI+7jCfm/KRG8tBEeETezA41a25lZZcNx7KVlufywA=;
 b=F8R9/iaaS1M8eJaBoGGAosLD2Q4/KPw188XJtBJ7VGWkCIzO/aG6b0gU
 Z1retBpF52ywUhPzQdVbqDyMizMxdKxEm3qLI4ZokMWwrdPJt2Two66gI
 9mu8mR9DE5idpKkLckumCbc7ojJfqY9DiWFRfUJdpnkYbQkh2kAGWCAe+
 ZQ5oEm5H8aLx+DtFtkoG+hJhNPngmRrvu4YebkdB4T8LyWSSrj6a/fsWf
 yEUdPd6A59YYi3uLLErv1IGtjLbpBxkCr15Ca9sr51oqeELY8TmqWrSOQ
 IGxf46ybrEMAdx+UTjq8xmUIyW+VnBfAerRGESWu3zfmG1S088srDbol5 Q==;
X-CSE-ConnectionGUID: NbnMbY0iS1eRyCNW7BEUnQ==
X-CSE-MsgGUID: w9kAdZu9SzWRqclBlA3zMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63614534"
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="63614534"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 23:39:15 -0700
X-CSE-ConnectionGUID: 9w9J0v5gSCOJ9r67hGQh8g==
X-CSE-MsgGUID: 3nL03DcsS4WilErDcz9Zcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="188648851"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 23:39:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 23:39:14 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 23:39:14 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.46) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 23:39:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EMAPOyPSTp+S3PZpVbYqQzWBLOA/wvY2+F/Ce40pt1mWzspBiITG084QRindQCmSc+CaYbnlSdzH9wpeIhaRDK1TlEKrNDnamNQ9KnKnV2hMVv0Ou8iMfonLap/pYc5Yp4m2y6prb27ZPAso4+70Bud2FiMaBeIGu3zK+FuT5vxZgTaWG5/QBmca+agimek42Z1KlqT0aDoOVAvRuM22Eo4g+C8SJzHmWCd4aQJWB5FOUWlayehHSlndmoPNtlsFePRYw+Fcc3k1Vx1Z9fo/s50rI645ME5K26Y2JpYLcuWHeOqz62v65GazpFPTQOAjDjfHuYAdJHk67yrWk5iTyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J+rDeFXDh4q0WM2W8KFgpOQJ7c0vRFJWZ6usrDv+PSM=;
 b=JeHnriOjStcpcReDIJVC1mBRYLIW3bFOWvpNWuY40Bfmh1X5cLq/4J78Wj60KQzrZEZZAuB4rTxs67rl6cersRelrwwqr7dodlZA/AN2eC2DczqOdJ+J9t4GfwsZhls92yYYyLHLm3Nq3aYC5HpQYahOJ1uHb7/In5BLJOXhU2888i68lJ3u08P5XQhd9cowj9a8+fX2w9gSJSVTGf+LYO1krJgi+sVxlV/HxUQy9lMh1EI6AABOPMppxO+U5snlg5R+kKtp37+4EmKMB9WY4/5IO9T2b00DT9erkG+JhyERlwY20EwudWTkR3l11eSPJeLbT/Jyve8iOx0OzJyIdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CO1PR11MB4868.namprd11.prod.outlook.com (2603:10b6:303:90::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 06:39:12 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 06:39:12 +0000
Message-ID: <c7c8c712-4b71-431c-93dd-1720761dd824@intel.com>
Date: Fri, 24 Oct 2025 12:09:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/25] drm/i915/ltphy: Program LT Phy Voltage Swing
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-19-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-19-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0210.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b0::15) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CO1PR11MB4868:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bce859a-c5a0-4f1b-ffbb-08de12c80adb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VWV6OGhZa2tVb1dZQ01tT0R3b0NTZkl6b0dpQW1WbGdxYTNkMHNEM1JUV0xH?=
 =?utf-8?B?WDlIQURLcnEwVGNKV0J2S2FkS1hwMVJvSW9qSG9XZlZGdE03OFlrZGxOb1U5?=
 =?utf-8?B?cHgvaHFnTld2eXU4SHFSSFhPRW9lYWEwbDVhQXpTSVFGMDJzd1AvRVVRRjdn?=
 =?utf-8?B?VGkzd2syK2huaUVlUU9udEdFMjdmMjJydHVwZFlmamJLSVdBKzNRSDR4MHBX?=
 =?utf-8?B?bEgzcXhlR1pUSGRuTzRmRUpmZjJVcUJQa0RZWUkwSlFBUzNtUE4wOFVtNUVu?=
 =?utf-8?B?eFhQOVNsa3lUNXRqTEY2dG5VY05WenFFa2JZMHlTUWRJckt3MUVka1hLdEhV?=
 =?utf-8?B?Vkt5b1c4U0hqUVFzb21ycldFakdJYzhGbG1jT2Rwc0U1UlQ1ZUZ3aG84UTVX?=
 =?utf-8?B?WVhCMjlhVE1kcWNQS0tobFNjbFIzZkFuMXlhamM0VnQrQ2tnZkkyRElsQmlO?=
 =?utf-8?B?N3hnSDJHRnJmL2MrQUNPTUhacm0zVFMwSEh3T3Q3UkFIM3BCVkRwOTIydnJZ?=
 =?utf-8?B?cllJekdLTDM3RDNDeWI2d0VGTmt6em93bW1IQkRnRG56Q3VMN1B6WkJCMGsw?=
 =?utf-8?B?azJnOWhqTTE1T0M0QjlvTUtEcmhQQVVYQktqbHNzNzYyZFhFSVAwTGFvb1BE?=
 =?utf-8?B?Z1ZtMmxCWm5PbnlLd2pJaHV4QTlzYTMzQlJTU0M0emJYWUR5ZXg0N3VaNmJK?=
 =?utf-8?B?MzVJZHp4YjVCcWkzcVZpU3l3QzBTdDdtSXVEeityMGZkbFc4UmdPRm4rUVpF?=
 =?utf-8?B?cTl4ckRrVDd4cTJhcDA3Y0k0UU1ScFhQNXc3RXNBbWw5RUJORUtEa3hTNjJl?=
 =?utf-8?B?WDhOb3oyVlE5UmY2Q0ZhUlFvcVAzMWRGZDM5ZFNMVk9zMGJHS2xRT3pMOXNL?=
 =?utf-8?B?OHZSQTZZYndOdWxwNVVEenJOUnhWVXFHMXN3RFdHTUxONUN0TEIvR2llZ2gw?=
 =?utf-8?B?enBYc0ozZWI1Vldxc0dFdUFqdCs4dUVYektvcGNsaTk0UG03YUtFSDR3M0Nj?=
 =?utf-8?B?aHlMeVYza1Z2Wnc2QkhyTFJzMWRaRW5ZdjAvbjZkdm96Z2VlTWw4Nk93T3VU?=
 =?utf-8?B?VWhzVUJvRXRvZm5GS3RsYWJYZ0FaTUV3RUxjeEpVK2JCWEYwY1dIemZrZWRB?=
 =?utf-8?B?YVJVS2xMM1plWWpPMTU0RFR5OC9sMEpRdTh5dlJNaHVyTXVFSVloNTY4VlNm?=
 =?utf-8?B?MVIvamxiNmVFSlVNSGJma3YzNjh2ZGNORExPYmpaZlJDV3dXcThVNmpDdHdX?=
 =?utf-8?B?Wkl3czUzUUUwZ0RYZ0FmNCs0djkyQ3VLOHZPam00cUxYQnk4UjNGMkhwTEJS?=
 =?utf-8?B?b1NJOW5rd3pMalpMTXY1a0U3ZUw1NExIOFVNdkxwWkNRbGVGSGF0WXZkUE5K?=
 =?utf-8?B?ZzJJRGFqWmJTc0lJV0RrbGNodE84Q1E4ejVQWGJJR1RTcHAzSExNem5yLzMw?=
 =?utf-8?B?cXpzKzBkU0NuUTJJNWxBSndyQ1NTWGw3Y2NUM1pmZEV1b0NhN0FVdDlVeXdu?=
 =?utf-8?B?T3JCUjRCa0JpbDV1dXZMQVpQbEo4bSsxWmd4WXVNemF1TWNlZE5nK2tjSURm?=
 =?utf-8?B?WmVzVGovOEZNUTBLcFAzNVZtRHJMSXM1ZkVvTmYvOWh6NExhN0lGd3lnSFBH?=
 =?utf-8?B?Y0J0NU1oaGU3SG5YeWxtY1p5TUFtVmFrS3FnSVFqTlBxZ2MzUU5qUVFyUTVO?=
 =?utf-8?B?TnhVRmVnL1Y5RUFPUXVYNmsxUlVkckV4aUtua0VoZmw1UFBXbzVtWFpEUTl4?=
 =?utf-8?B?Y1ZHcjRnR1FxQ3RBUlBya0VrTFMwRXpDMy9GZTZtNjZFTFVCblZNR1plWHFK?=
 =?utf-8?B?bDhVQlkxK2VtYi90VzBSdHlnY00vTGpQWi81VTlIdyt5ZGhlWE5lQ0EreUJj?=
 =?utf-8?B?dXhhd3BHdmdzaDRkcXVtbUsxNWIzd1A0UVg3UUNpYzN0eEpUQnk2eFg0Vzg4?=
 =?utf-8?Q?rqPUMZMqt601FpcSPbriMxAhbg1qWf31?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFRSQTdiZXFlQmpJNVpMcncwTUxQVGcxZWRnUU9LSWpvYWx4ZHAyZHdES3Fr?=
 =?utf-8?B?cmFmbXA3L1VpWEJJWDh0TlgrbVNRc3VxRWZBcjl1TU1HYS9ERExWRDNqWkhF?=
 =?utf-8?B?aXRLSzRReTlLelljZm9mTGVFekZnQW1jdkJUK3BPOWNrUXYvVXpudGpISjZu?=
 =?utf-8?B?dlY5dDBtVHhzK3Y3d0FCYXl4RTZsaXdUWUg3S25QM2VlVmZRN21RSlV4aXFF?=
 =?utf-8?B?UzVjYjQzUXlJYWFvaWNXVW9qRXlONi93VnRUYWlYZWppb0tkN2VILzJQbVhy?=
 =?utf-8?B?dkhkSW5pWGJheGNPSXg5Y0VNT0dyZFdRTG01VnF2NzdXMjZFSjhTRE1tcUhl?=
 =?utf-8?B?bEF1aXhVUktNQkFNNHNRdnU0cTIyWmFGSHhDZWN3QlVLNkhRS2Jtc2tXeXRn?=
 =?utf-8?B?M1BVU2Z0Rmk0bDArRE1FYW5SNVZLWnZDampWdXhnZmNTWVVUS2dXaXJreVNj?=
 =?utf-8?B?aDlOa292SThLd0dJU1FoSDU5NGZ1VGFFUWNReTFhWmFkdWd4OHFzR0pQTFJy?=
 =?utf-8?B?cEs3MCtybWJPWkNPVjBESHBlZytvbDE0aVdOL0VQQUlERUwwTnUybnRrMzMw?=
 =?utf-8?B?SVFqM25pV1FvdUNWc1dzMnVMZ21uVXByU1BiQUI5RCtvTlBxaFlqeWVhUlpZ?=
 =?utf-8?B?NVg1QVVlcHF5WVFGT1BYUVhsZjlJRDN1b3pMN0FKUGdXMXZTcTlYKzRtQXVB?=
 =?utf-8?B?eGF6MWQyallESTJzT1BiU3dSOU9tbmZaa205eW9wUGFQWXhZMVY3Nm5nMytO?=
 =?utf-8?B?R29nWlk4dVJ4R0t3OGlabmNSSE1EcTM2T3dVMzBrL2NRTkF6WHF5OElTaktL?=
 =?utf-8?B?YWxCVEFUaHF0VzNiK1JHcjVVZXVkSGtZUlBaK3NmbXNvRmlsZEwvSjF6ME40?=
 =?utf-8?B?UUNBeXRSK3ZDdGJPUDBXK0hPTmFCMXB6TE5EQnpkMmcxcU11MkxJMWtPcE9X?=
 =?utf-8?B?bE1GWEpQRVNmYlNNdnVoNldrWUdOTUZPT0xFUEc1M1hCZ1VhNmF0WnJaTzF5?=
 =?utf-8?B?UjRZeVB2N0Y1a3o3bmlKN2d3WVl0amNCYVRoc0N1bGVLdTVXSHZsUWpVdWJB?=
 =?utf-8?B?eHA0SWY2eFlqK0VRaWFsVVQ3L1dTOGtJZURxYi9JaUtGT0lhMUVsbzIzcXlX?=
 =?utf-8?B?OXlQZ09QR2F4eHh4ZkcvQTJzR1VCUkh2bnVIUWhnNnFNTmNFcGZXTDVLcUU5?=
 =?utf-8?B?Z29BWkNRSCtPYjJFLzAzR2c5eFhhMzFYelU2ekNnWlZ1aHp2VDNqUlJJN0Fv?=
 =?utf-8?B?ZjcxZDVtWEJiTndaZzU2djE3bEM1eGNMYjloajJZSHk2dXJoWU82RFhOc1Rn?=
 =?utf-8?B?NlMvRFJQSm1OVDNwUi93WUYrRk4zbmdjUG1jcWtLVzF1cmRpUXBjVXVpb1U1?=
 =?utf-8?B?Y2FNdVhSUjNzNlRjcDY1M3VGQnlsUU1uZ1pmaGJ4ei9QcTkvSGVqZnp2aHNz?=
 =?utf-8?B?M0IyZm9XaXFmV3E4czJTaTgzaXR0U2ZMR2R0ZTA5eEg4ckdISWxObTM0Z0Z4?=
 =?utf-8?B?ZGU4N1hYQVFhaGE3SnVaODNrbXJtSVVWWnIvYWg5dGgxaVVFa3BkbUNGWllm?=
 =?utf-8?B?MXZyWTA5QytrN1lTaHQ3ck5HZW1ZQkcvcmF3bTQ2cUJmbXh3SHVWeHNyTjE4?=
 =?utf-8?B?em5RYVl4RFBUK3E2N1BaSTltcHhITnhiYi9QbFUzVCszc1RHUnRqUXp1Vmd2?=
 =?utf-8?B?bVBhdy8vb0oxRjJ4emlXSkVMWEJyS2ZrRmsrYVRJdHZXcS83T1NUZHVzaUMr?=
 =?utf-8?B?eVcxRmNYc2xvdDFLZzNHUTV2R0JIdHFJcUJpdzNWOVIvNTFLT0dTdmpPQWVF?=
 =?utf-8?B?ZVJSYnk2RTZIWnZ6dU1SV3JuSzlSdjRkMjZQTE9LakZ0L0RmQ05OSHlrZzE4?=
 =?utf-8?B?bG9JOXlZbDd4ODc5TEYrTzMvS25BMk9HWmVYR2Rtc0VWVmt4bFh6Ui9aMm42?=
 =?utf-8?B?ejVaWjJjbEx0OUx3cXVZYVNoc1U0UC8wcUR1dzU1cjZaZXVEL2RScHVsNFZm?=
 =?utf-8?B?QURDMlBaeHV1V3MwZVlxNEk3eU1ESWVmdXI2ZFRsM2xscWl1c1pKaEhyUkx4?=
 =?utf-8?B?cG0raTBzYU9FVFY2SE5uRm1LMHgwMWFMMTRKbHl5Wmt4QlF0RGR5SlJTV3dh?=
 =?utf-8?B?eFBRUU9teXh6QjdYaW5vdCthNVMzNjdTSEwwekxoUDhqSkx3a29kTE1Eci90?=
 =?utf-8?B?RHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bce859a-c5a0-4f1b-ffbb-08de12c80adb
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 06:39:12.2932 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /CHDZsVEdiw1ckFQ6HNlrmhYXENzd5HEXesdZjpWY64H3Cg4m+qD+KaZlkHDjxaWLdZqCuj4xbVXuU+jILOoMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4868
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> Program LT Phy voltage swing using the Swing tables and plug in the
> function at encoder->set_signal_level
>
> Bspec: 74493
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   drivers/gpu/drm/i915/display/intel_ddi.c      | 13 +++-
>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 63 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h   |  2 +
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  | 13 ++++
>   4 files changed, 88 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 6fcfdd0b0103..b6345508cb66 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1467,10 +1467,15 @@ static int translate_signal_level(struct intel_dp *intel_dp,
>   				  u8 signal_levels)
>   {
>   	struct intel_display *display = to_intel_display(intel_dp);
> +	const u8 *signal_array;
> +	size_t array_size;
>   	int i;
>   
> -	for (i = 0; i < ARRAY_SIZE(index_to_dp_signal_levels); i++) {
> -		if (index_to_dp_signal_levels[i] == signal_levels)
> +	signal_array = index_to_dp_signal_levels;
> +	array_size = ARRAY_SIZE(index_to_dp_signal_levels);
> +
> +	for (i = 0; i < array_size; i++) {
> +		if (signal_array[i] == signal_levels)
>   			return i;
>   	}
>   
> @@ -5294,7 +5299,9 @@ void intel_ddi_init(struct intel_display *display,
>   		encoder->get_config = hsw_ddi_get_config;
>   	}
>   
> -	if (DISPLAY_VER(display) >= 14) {
> +	if (HAS_LT_PHY(display)) {
> +		encoder->set_signal_levels = intel_lt_phy_set_signal_levels;
> +	} else if (DISPLAY_VER(display) >= 14) {
>   		encoder->set_signal_levels = intel_cx0_phy_set_signal_levels;
>   	} else if (display->platform.dg2) {
>   		encoder->set_signal_levels = intel_snps_phy_set_signal_levels;
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index d458909b5f12..359a2dbf0847 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -9,6 +9,8 @@
>   #include "i915_utils.h"
>   #include "intel_cx0_phy.h"
>   #include "intel_cx0_phy_regs.h"
> +#include "intel_ddi.h"
> +#include "intel_ddi_buf_trans.h"
>   #include "intel_de.h"
>   #include "intel_display.h"
>   #include "intel_display_types.h"
> @@ -1003,6 +1005,12 @@ static void intel_lt_phy_write(struct intel_encoder *encoder,
>   	intel_cx0_write(encoder, lane_mask, addr, data, committed);
>   }
>   
> +static void intel_lt_phy_rmw(struct intel_encoder *encoder,
> +			     u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed)
> +{
> +	intel_cx0_rmw(encoder, lane_mask, addr, clear, set, committed);
> +}
> +
>   static void intel_lt_phy_clear_status_p2p(struct intel_encoder *encoder,
>   					  int lane)
>   {
> @@ -1693,6 +1701,61 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
>   	intel_lt_phy_transaction_end(encoder, wakeref);
>   }
>   
> +void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	const struct intel_ddi_buf_trans *trans;
> +	u8 owned_lane_mask;
> +	intel_wakeref_t wakeref;
> +	int n_entries, ln;
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +		return;
> +
> +	owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
> +
> +	wakeref = intel_lt_phy_transaction_begin(encoder);
> +
> +	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> +	if (drm_WARN_ON_ONCE(display->drm, !trans)) {
> +		intel_lt_phy_transaction_end(encoder, wakeref);
> +		return;
> +	}
> +
> +	for (ln = 0; ln < crtc_state->lane_count; ln++) {
> +		int level = intel_ddi_level(encoder, crtc_state, ln);
> +		int lane = ln / 2;
> +		int tx = ln % 2;
> +		u8 lane_mask = lane == 0 ? INTEL_LT_PHY_LANE0 : INTEL_LT_PHY_LANE1;
> +
> +		if (!(lane_mask & owned_lane_mask))
> +			continue;
> +
> +		intel_lt_phy_rmw(encoder, lane_mask, LT_PHY_TXY_CTL8(tx),
> +				 LT_PHY_TX_SWING_LEVEL_MASK | LT_PHY_TX_SWING_MASK,
> +				 LT_PHY_TX_SWING_LEVEL(trans->entries[level].lt.txswing_level) |
> +				 LT_PHY_TX_SWING(trans->entries[level].lt.txswing),
> +				 MB_WRITE_COMMITTED);
> +
> +		intel_lt_phy_rmw(encoder, lane_mask, LT_PHY_TXY_CTL2(tx),
> +				 LT_PHY_TX_CURSOR_MASK,
> +				 LT_PHY_TX_CURSOR(trans->entries[level].lt.pre_cursor),
> +				 MB_WRITE_COMMITTED);
> +		intel_lt_phy_rmw(encoder, lane_mask, LT_PHY_TXY_CTL3(tx),
> +				 LT_PHY_TX_CURSOR_MASK,
> +				 LT_PHY_TX_CURSOR(trans->entries[level].lt.main_cursor),
> +				 MB_WRITE_COMMITTED);
> +		intel_lt_phy_rmw(encoder, lane_mask, LT_PHY_TXY_CTL4(tx),
> +				 LT_PHY_TX_CURSOR_MASK,
> +				 LT_PHY_TX_CURSOR(trans->entries[level].lt.post_cursor),
> +				 MB_WRITE_COMMITTED);
> +	}
> +
> +	intel_lt_phy_transaction_end(encoder, wakeref);
> +}
> +
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 15d3d680871c..6e67ae78801c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -20,6 +20,8 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   			    struct intel_encoder *encoder);
>   int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
>   				 const struct intel_crtc_state *crtc_state);
> +void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
> +				    const struct intel_crtc_state *crtc_state);
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state);
>   void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> index c641cc957f1b..1eab328c70f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -22,6 +22,19 @@
>   #define LT_PHY_MAC_VDR			_MMIO(0xC00)
>   #define    LT_PHY_PCLKIN_GATE		REG_BIT8(0)
>   
> +/* LT Phy Pipe Spec Registers */
> +#define LT_PHY_TXY_CTL8(idx)		(0x408 + (0x200 * (idx)))
> +#define  LT_PHY_TX_SWING_LEVEL_MASK	REG_GENMASK8(7, 4)
> +#define  LT_PHY_TX_SWING_LEVEL(val)	REG_FIELD_PREP8(LT_PHY_TX_SWING_LEVEL_MASK, val)
> +#define  LT_PHY_TX_SWING_MASK		REG_BIT8(3)
> +#define  LT_PHY_TX_SWING(val)		REG_FIELD_PREP8(LT_PHY_TX_SWING_MASK, val)
> +
> +#define LT_PHY_TXY_CTL2(idx)		(0x402 + (0x200 * (idx)))
> +#define LT_PHY_TXY_CTL3(idx)		(0x403 + (0x200 * (idx)))
> +#define LT_PHY_TXY_CTL4(idx)		(0x404 + (0x200 * (idx)))
> +#define  LT_PHY_TX_CURSOR_MASK		REG_GENMASK8(5, 0)
> +#define  LT_PHY_TX_CURSOR(val)		REG_FIELD_PREP8(LT_PHY_TX_CURSOR_MASK, val)
> +
>   /* LT Phy Vendor Register */
>   #define LT_PHY_VDR_0_CONFIG	0xC02
>   #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
