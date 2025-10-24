Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1963EC06AB8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 16:19:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6724110EAA5;
	Fri, 24 Oct 2025 14:19:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lPolkrbJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD55C10EAA4;
 Fri, 24 Oct 2025 14:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761315538; x=1792851538;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OKoY5X81ISowWNLqlJblKFZK/TyVXYx5arsHF49SYlA=;
 b=lPolkrbJEqeJODrXqQ+ffSEVUmB99H7RkmAJnJOFLyWur7DuOhji64hO
 kq1+ugNrGK0yNRuNkfGs3bdPUPo4qlcUhicFGcJCDoDVOElu2RPc9Kh6c
 iIIRvr/WZeP6VXrCu6S6DR23hDomhwBF1McwU6TJnT9enwhC1QtJukbdG
 n5ytbBcIVQm8bV6Nqr1mGeO5N7XOQmYxcPpj5hQhaEfPnKcKrmHdZDEQp
 CthrwXaDsR6JIbXOIYHTC3nhiOLyRjlJKOJfwEt+4TWK0YyBzL4SuZdXT
 mMMRZSGR5r2xF2XQdRoI6/acionEVDBmdKPPa+trWtQd5Z4FYoKhyOfWH w==;
X-CSE-ConnectionGUID: bcP/wv7ISa+Cfly0Y8VkKQ==
X-CSE-MsgGUID: 5l2a4hOaS6q+OplWXKSLzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63592968"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63592968"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:18:58 -0700
X-CSE-ConnectionGUID: dpcIH/6MRQq6dU0AQero+w==
X-CSE-MsgGUID: A4W5pSrIQQq7wDQTJPB9ug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="188733477"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:18:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:18:57 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 07:18:57 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.66) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:18:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DKEXtu4ajtVA1EMTjmrJofWBwDrcvsOzAWlcipdbWoCenkbXTWcN5YS2I7+aUYSWDpOXxHC3dg0MTs0gXb111E7jxZxSwWDhlGyCpuGG/5YhJVDkaEvZ7e3UXTCFHbkDurmeEMf59bJD2umOCXD9Ll/BkCHDD7dUlOi3/KOJf6uygv4aXcQT7q46ukkwbso4J238a7f7LLJT7ck7YwtzWN0yk3AVQZ1jayGRG8Vrr1w2N9kKncEFsh+utriO9mzhW1JyaP1gSVmBpZ1Z9V9ql1A/bMZI5/hSiZTZCCwiPYCKXfch3rhktDu9yCABmzEeAkgfFX/ck5vkBCJcCIGpMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PSGD4SZl5WVOM9Oy5VszZ22uERUoBqRJCHsBul0A4h8=;
 b=F2Z1A9AexF6mE+hvzL5BAOIgG2Ionu2wUSsiUHSK68sM/s58S5nUKCLHe0Y2Jun4aijCEqyZFAb+zYnc88yWvZ1fw700zigK1nKNrsJfvCIEn5S+YcoU+HwmXUBH1ucqZBGhEtyqNj95GH6Nk8C5cGZ2pE/X68AmT1RLRsb0srGEkN6xB8WL6bt4sn9csxptew6Rer6Wu1sNPrObB+oxyeXUA56+O6kgUhLeDA430VhMtFSCCFVclfapSVH8cs13dMdoJH8FmaYVAPjE/5SR84Bmw3vIHgw7QhU5jPmzHQWDbp9UYkokLHkcpjr6kRefQNEmR/n67dDCydVDPd3G5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4651.namprd11.prod.outlook.com (2603:10b6:303:2c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 14:18:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 14:18:55 +0000
Message-ID: <62bb4ecb-60e4-443a-9c86-bda21038f3df@intel.com>
Date: Fri, 24 Oct 2025 19:48:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 19/22] drm/i915/vrr: Nuke intel_vrr_vblank_exit_length()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-20-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-20-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0069.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b7::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4651:EE_
X-MS-Office365-Filtering-Correlation-Id: 46825d96-32b4-43c8-7570-08de130842bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?akNPdHFEc2lpT2RJZDhCcS9ZNCtwRjdWYmpYNGJ0N2lXeWFOWHF1d1dCSE1U?=
 =?utf-8?B?c2NTVWp4REJGZXA4azFRclZ3ZDkvZVRDSUlISXA5THp2Q2xyKzVsb0NkZ1BQ?=
 =?utf-8?B?VnlwM1R2ajRSVG16N2w0ZVhYd25GVU96MUZxUHU4MU1RTXZqMUY0TjhsbXhW?=
 =?utf-8?B?T1h3dEZ3K3VnSUZIYTY4QmJ4VHllaGczTHBiZ3JnakNINW5QRlJPVnFPQzlN?=
 =?utf-8?B?UnR6d0UvcEhGWHkxM1NxNzhXMHMrMW03ZHE5ZnFjdUV0MnN1RVFaM0w2aTBw?=
 =?utf-8?B?L3JuN2RNODBqaDJOVnpGeTdWZWdnL25LU2F4b3BIdlhCOTZBdldQcDdhWDBD?=
 =?utf-8?B?VkhUNVVMVm5ZTmd4ZW4wNGdheVJSaWlsL0kvV2tjeGVsR0ExVDNueEVrOFZl?=
 =?utf-8?B?V0tUTFpOMno0T2NWK1dkY0E0ZmRZUmcxa0oxT3hWSW1IWkx6KytQOW00S1Bw?=
 =?utf-8?B?T1g1SmRKbE1XY2JpNzE1WXlqTXVBb2c3cERXbVA3MXpnWkc1Ti8wZVFuKzB3?=
 =?utf-8?B?QjhrbEFLdk5xZWdSUlNLUlVPdFJlU0JCMTBwczBUUVd4dmxuNC9MV3NERzRS?=
 =?utf-8?B?dEdkUG4rQ2phYmtZaWtkZXFpWWNSSUJrZzg2Nkhsb1c0L0VNVGVLRkRUQnVS?=
 =?utf-8?B?SDZtRUV6eFNEU1ltTTVEazJocjZqL2lsc3JFTnU2YTRuMnAxZFlGcENYRmQ2?=
 =?utf-8?B?OVUxMFAzRDRVUlJsaC93azNzVDltNzQ5VlJsQXpOYWI4cTdFcEo5V21taXR6?=
 =?utf-8?B?bkcyclVES2VRR0VENVlRQi8zcjAwZjhKbHJFUzFIRkFaL3FlTWt5YzFQZ05I?=
 =?utf-8?B?clhYaTBSZHJWSkxIV3Z2VlB5SEpvOFh0UC9IY3lwb2NmNCtyOHB2dG02M2V6?=
 =?utf-8?B?bDEwaWpQOVFFWVRWTWJobkthMGUrSWlCbVFrWHY5U2lmTkd2TWF1eGkzMjd1?=
 =?utf-8?B?Uk9YVkIwKzRWcmJFN1pyL29SZnMvQWREYWxIRUxjWUNBTm8wTXRtQnptZDRW?=
 =?utf-8?B?QmFwZGx6aTNuVkFrMmFGRU8zak84bU9ReWVuYUEyQXhSa01md2xyK3dGZXh4?=
 =?utf-8?B?Q0s3WEM2VW9Bd1gyNTVBcXErbEU3YlpRU1FmOEttSXR5dE5wMVJZdU9jR0xa?=
 =?utf-8?B?dmpKQThaeGdWbnBJcHBDY0lRb1FNN1pmek1icHlaUXpFZUdoRjNGcDNXOURK?=
 =?utf-8?B?dmp4ODZSUmZNMnBJVS9ES3FGRzFtUkxXSGRzcitwbTdKcEFYMDJZVGVWeG9p?=
 =?utf-8?B?bzRLQmtxR2VpemJIN3hiMlVXQ0Zlc3dXaGV0QzYvZURQVENTbHdpMnpHdmd3?=
 =?utf-8?B?V3lsWVEzNkN1bzQrQzFkOXhGa0t0NTkxcmRQNlFPM2kvOERTcW5tM1dleno0?=
 =?utf-8?B?QjQ2TEFldU0raWdzSjFsVm9rU1lKWjB2VkQwZndqeVY3cUlOWXkxUW1mVXJh?=
 =?utf-8?B?OE16QjlhOEVpNVlWdFMra0N5czBadWtHOGhxUExMeFo1b2tpZ3pFbGtEaHVv?=
 =?utf-8?B?RTlzQjIyYXE3Q2tUNWhUUDZKRU5wSlRMWjhVdmorcUZZSE4yN2xuYzdFZlVy?=
 =?utf-8?B?TWE2R1R3bXpzdHhQS1JKSnV4VHVIRzZLNFhsamVaNXBGRDhza0gwemYxbkZs?=
 =?utf-8?B?ZWtOMFNSU01SV3NBRUtNWlgrb1RYb1MxQXROcnowVS9ocDFZMmpLTzcwTHBi?=
 =?utf-8?B?WXNabG5nemZQNnlGRUMwL1lja1Vrb2RTT3V6SlJUZjRMVUxSbEFZaFhCQndQ?=
 =?utf-8?B?TVZSNFZOb0wybkdON1lrZllwa3NOSFBUYVU1YmptcS9DN01FN2dEWE94Vm45?=
 =?utf-8?B?S1hMM3NrMmJEZGZZWUhyVWR0bTQ4anAzQXpQTno5dXhKMmg0azEwUm5odGhY?=
 =?utf-8?B?N2didlNYMC9GU25TK0FyNTZOQndQYUJ1ZGltNFZERVVMeHNRSnFVbkJHbUdB?=
 =?utf-8?Q?H/pzLPfDBD+m92lGzOzqP5iWCw+81Oh0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?emNOYTI1NFZQOW9sbmRHYnZmU1JqVklZS0h2am9WbnM1OGloak9HaHJobitj?=
 =?utf-8?B?NVFTczMvbjYrb09JVVdCZVZjREFYWHAxdWVnc3lXbG8xR2pIeTlHV3dyY2l5?=
 =?utf-8?B?OXRtbjRVTmFtWHpTUEMvSEVjUk54WnZhdktTRG12WWQrRUhLNnBpenZFbVEy?=
 =?utf-8?B?YXhmSXdrMlVXOUtjTk9udHEvb25lUkVKZUZZVkxDV1haVXlES1BiSlJJN2tW?=
 =?utf-8?B?Z053ZzNZWmlhWUlCTWs1cUQ2T01TS051Z0lLWnZ6UVkrRmJ6UHNqZ3F4T3k4?=
 =?utf-8?B?STF4aVQ3QzVWUlZRSGJYTzRDRk1sU05CbG4wSG9vcXNNQUpDcWxkSlpFSDhW?=
 =?utf-8?B?M2t3clhEUlhzaVZnYTQ3Mk90QlNrbnV3WlBLVzNtallvNXJ6UUI1OXFSZlBW?=
 =?utf-8?B?RFJYQ2FEUWpxVEF3V1hkQ1prNDdEd3FCK2dyUVB1U1g2dHJ6ZFBGTUdzR2RN?=
 =?utf-8?B?empSYWh2LzVQSStPMmZveHd2ZStGRVBXbWlwMm4zVnh0ajJrZjJDL0ppaElB?=
 =?utf-8?B?M0g4RU53UkVDTE1yNmx5dEpJSHB5VGpWQ3hBWUVPK2VKVU9pclUzbm9BOW5S?=
 =?utf-8?B?aTg0czhKOFpQZWI1aG9YN0FzSFlKRUZqanBwcGd3czBBN3hIUE45NFM2Q3R2?=
 =?utf-8?B?MXZHMGR5WHEwL2txd3pISWJQZGFWVURWTjMzWUlyVVVmODdKUzcrUlhzb0JM?=
 =?utf-8?B?STJYbG9XOC9OaTZlY1FEZVExd1pRc3g3U1EyZmE0cDlORGJ1S1N2c2V3dEpV?=
 =?utf-8?B?cHZsMG93Yk1KemQzQ3hmSlJzRDVEMzJncGlJOUxRRnpUVklrU08veURQdWpo?=
 =?utf-8?B?eEhoVFducHluZ3p2bGptbjJGUTNhRzBDTmNRNlRZanNNZWJ5dGxaWEhWM21o?=
 =?utf-8?B?eEhMMm01TXlnN21IUXMwMTNaZFFXN0M4VDJqNjV1U0o3SkpxdFZ4ajFUdndK?=
 =?utf-8?B?eW91c2VWQmxKWlI2d3FNYlNHQkU2N0owR2cyakJ0RUpSYm0wem55Ti9XWTFr?=
 =?utf-8?B?ZytVZS9DN1h3RVZCSzlYMFVRS21kSUdTNjdUcmJxY3NnZm5CSk5zNFBBdGdn?=
 =?utf-8?B?N2NHR3ZmbHo2K3hYWE5TOXBTRXFINEN4Sk9xZ3JWeXNkd0JkNnN2ZSszRFZn?=
 =?utf-8?B?Ryt6YkE0aVUwdTBCc0RXdEprOHBvV2E2RG5oOUxsWE1zTHV5MStZUGV1VjB1?=
 =?utf-8?B?U3RPeHZBMDE1eWpyV1NPaFVGVnN1STZrSjd1RWx2cHd4aTBtREJ1aGo5dUQ0?=
 =?utf-8?B?c2ZuT3o4azdLSm1oVVRUQWlwQ1E3VldlSmdPdHNQUytyeVJyc3pwc1VtWlYr?=
 =?utf-8?B?andmcnMydlFMR2VlNDhvL3hRN3d0NHYxSUI1YjlYeEFUSGs2TVcycFZ4cmNH?=
 =?utf-8?B?NWozSHlIVmwvdEUxelFYRWhNdVEzazlHN3R4N20zZEs5a3FCcVVBSG94OXU4?=
 =?utf-8?B?QVBzZ0Y3MnFYd2dlUGlKOVdsSExaNStNbHdoL2hCb1hOME5URHFPc1JBc1BU?=
 =?utf-8?B?YUZCcHJCQmFyMDE2bTVSOW81VWZaMWl3T2xwWWEvZHorVDZxcXRQZWJ4Z1k0?=
 =?utf-8?B?SmpsQlJxT2lJeGN5aUFxZUJicmRRNU1NdjIxaEphV0pxRmJTQkhST2pBanNR?=
 =?utf-8?B?akxjMU4veGpOQU92YkFIWVVDNldrZEJWQUk4SENwemhJUFcyTHZKNVAvSHpq?=
 =?utf-8?B?TGVzUmh2L2NXNkxIbTduQzVSSTFiY0x4K3Q0Q3l6R25ncDdwZ21ER3h2QzRu?=
 =?utf-8?B?dXRycXVKSitQNWdTSzZreGZIbCsyZUFVRFFyUTE4SUdTWTlTdmpJdnh6KzVV?=
 =?utf-8?B?U0VJa3ZKOHQrM1ZBR0QrSG9oV1lEWmFKdndRRVBIRmFoUlhlamFoWVROelVP?=
 =?utf-8?B?MjhZcTNYbjJKRURnZnFuWDNxWHV5TldPcWtCWnhEK0tTa3Q4eWcreGJDMHVz?=
 =?utf-8?B?Rk5GNnM5NVJrR0FFY242NUd0OUhUNWVBV3g5bE9DT09FNE1SVTA2bmVDQm1i?=
 =?utf-8?B?VzdmNU1hQ0ZUdUprdkZtK0J6MmxuT2dDUUhUUGk4elFZMlhmRWkxQnRUSFhJ?=
 =?utf-8?B?MXBVSDVBaTBpaUM4WDVhSnNKR2VMYlhOVVJ5a05kblQzb05oYkNxVEIwT0hs?=
 =?utf-8?B?UnArcFBzc3laUFNZNjcyZTRiREtLdlpHL1NTS0crTVVYMk8yQmdSZ3h6dGtO?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46825d96-32b4-43c8-7570-08de130842bf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 14:18:55.0005 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: COLQxucbMuOHyVwq0EoxRDjRcwDbSkjTjWjvHHXzzL2ooY7PNvvw8gf3E0B25HzoZGGK3EOERf1qaHs7o9GR9gmQm6h+47ojmfyBRyPlu6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4651
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Now that we always populate crtc_state->vrr.guardband even on
> ICL/TGL intel_vrr_vblank_exit_length() has become rather pointless.
> Get rid of it.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 71c5d8bf7557..ba92e0a76855 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -143,10 +143,6 @@ static int intel_vrr_pipeline_full_to_guardband(const struct intel_crtc_state *c
>    *
>    * framestart_delay is programmable 1-4.
>    */
> -static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_state)
> -{
> -	return crtc_state->vrr.guardband;
> -}
>   
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>   {
> @@ -161,12 +157,12 @@ int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
>   
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_vmin_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
> +	return intel_vrr_vmin_vtotal(crtc_state) - crtc_state->vrr.guardband;
>   }
>   
>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_vmax_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
> +	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
>   }
>   
>   static bool
