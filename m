Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2D693ECE8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 07:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668D710E2F2;
	Mon, 29 Jul 2024 05:19:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RO/PmFFB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5578A10E2F2;
 Mon, 29 Jul 2024 05:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722230377; x=1753766377;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=m8atGrBHT746DS8GmWpEYlZM9lBjuAX1KhDrcil+hTE=;
 b=RO/PmFFBUiledFMlELdVmhm6p3qbAO6Dilmuc+PEde8gymEEYhk9SWAu
 dlxRtBekTOVbn2VRpd4xDXGDrrbBzImvbA8mr86GD4VMJl3z6eDqD7MHB
 CUGMnQIAnFxSIelS4WHyAbbG7fmf/WGnFama8fLt7twS+csI4hLSIMSZA
 mIL0JoH31CMNmTHLfa1VyTJbMMImMK2NSJ5X99yCWSPvUOxUtCGfpvEMz
 XbGNKjjRDtVd9J5r+4wXiI1jV+4qDVe+zChKc/6UbHt62J4/fh4Ou4Hug
 FM9oyTEg8/A3hcKTtGOpCuDvPsr0Fl+dMDR+SH6QRZnpjTwpnaBEeDvSG A==;
X-CSE-ConnectionGUID: oEEUmdN4ScOlkAvoGCqA5w==
X-CSE-MsgGUID: vaPCF/A8SKCYOWp3octN1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11147"; a="42484721"
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="42484721"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2024 22:19:36 -0700
X-CSE-ConnectionGUID: jUj0XSMfRMu7LseSpS+Ufg==
X-CSE-MsgGUID: s2tm/B1aT2ykPmX06RWmlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,245,1716274800"; d="scan'208";a="58147557"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jul 2024 22:19:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 28 Jul 2024 22:19:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 28 Jul 2024 22:19:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 28 Jul 2024 22:19:34 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 28 Jul 2024 22:19:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BUe748WkOmXwJ8y8i8d+Dtg9ijljmWSpB0oFOpJDWwuawhPTrUQ6da6tmOfw0+RzFUgyqA5tnlc4uyULDXOVmxM/G/X5dazk7Xrsw7zBXcU2e3Ufa/MFEAME066z/DrS/VzVuhAO8PDFcCeosr5JuH1JCBZQH7tfMdCrA0N57h8ZwLnpAGq5J/lrWa1v3KfB85JajGszrHNIwvkKFEFXObhCD1+lpSbydL+XHKdE1Ak3jHIIS0XCVyVr0m9/4d78/k9LIS0Kgrbh0/2fXLK0rdYFDlcfIrHEU3IsqJ9VGYPadtAVS2HTJ1Zt25AvrzMaJIHjpLFt8nOdvP62Av63QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cSh+H/hHaa/OM6duK9wImy1jpYfu7G7UHrlPf3PTexM=;
 b=Qb2Qv0xD428320/ccWccUp85pb1a1rcP9V25brAaTIDG+SvlYqPC9KpHZfzaadm3l6ldh0jWvDGclP9fJhu8k89c69t6y7rnxqcmx+PI5m3xY7H57yhPcyIFNvHw0YTbwB/UaCQeKWqq1GfQrZec5CzEyXx81sScglCpyZTfVDRLPkoKplGfk4PQEu+hKtkF3BcRIp1L+je/IioDGSKUa9MFGTns3AoHtgOAmQ3DtXFtjfQWnHl+OMX5Mrc1XyRitIr5n9ElwooqhNbFKObfF1Qw5UQygoB9+JvlAwtoev5P5bX+dRNyFH3ubngOosFZ6VcqUiYeyIltAuBYk7lYww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 DS7PR11MB6151.namprd11.prod.outlook.com (2603:10b6:8:9c::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7807.27; Mon, 29 Jul 2024 05:19:32 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%5]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 05:19:32 +0000
Message-ID: <b3e57ca2-aa12-4dbf-9b9b-7aad3dc71d76@intel.com>
Date: Mon, 29 Jul 2024 10:49:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
To: "Nilawar, Badal" <badal.nilawar@intel.com>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <igt-dev@lists.freedesktop.org>
References: <20240724165952.1605698-1-vinay.belgaumkar@intel.com>
 <5ee20318-0645-44d4-870a-beb58e6d5939@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <5ee20318-0645-44d4-870a-beb58e6d5939@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0097.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::14) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|DS7PR11MB6151:EE_
X-MS-Office365-Filtering-Correlation-Id: a9960a91-02c1-449b-50c1-08dcaf8e0718
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TEFXN3ZYOWJoVCtXM0hjQ2RFOXdJLzRPUlJxR0xJSFI0cmVzVnR0dDM4ZGl0?=
 =?utf-8?B?aWwwQ0FCOXBjVXlyRm5CbVdhNnJ1RVU0dVZ2ZzJvUHN1N0ZOcS9zQVEyTWNQ?=
 =?utf-8?B?R0JBKytiT0VqaU5zeTExYlczT09meUJ2dXphcUQwdS84MnJtKzNib290cVBw?=
 =?utf-8?B?elNNMGtuUkZZa1FUeGp5Vk5JRkZ2TmU4WDliV2JhRmZMeDN0NVNVOTFSQzA4?=
 =?utf-8?B?Mm5zNndod2RDdkhQMzlXZm82bGw3Sk1vMXluUTNMMllNMnNUc2VhRFZGa2tB?=
 =?utf-8?B?V3gxTUVBNTBCZkVyMzdoUncrazJIMG56TW9GTUJJSGpJQ1lyK1l2UCtSYzFy?=
 =?utf-8?B?Ui9kd3gyS1cxYnpYZ0IvdWFEZlRDbDc5alFERk4vMVJCeGJSdmxVSmRST2dR?=
 =?utf-8?B?NHFZYWNzay9BblorUWZtamJhMnAyU1lVRnJObGlXZGRFRHBZNmRGNkdack9r?=
 =?utf-8?B?NFg0UWdmNlZsem5JTStPTTN1bXJFd09JWHU4b09uRnVDTjJiYnJlSjh1S3c3?=
 =?utf-8?B?K29wbDdLY0N0WTdVU3lXZ0pDNStnNGxuQW43ZUZWdzF2eW91NXpwZzAyUnBY?=
 =?utf-8?B?VGIrZnUvektZNjJ4MTRwSmJxSS9uM1A0OXNDK3JxNFRHaW4vSlNjSTFlbmtx?=
 =?utf-8?B?c21iaTYrMXQ2MXlQODdlL1Y1Nm9CanhWWUZGTjNrVmNPR0FmYVBwcXQvTjRO?=
 =?utf-8?B?Rk5NQ2lEeklSMlpYcmd5b1Z2bTM5SWlBdWdVRGR3dWFKU1p0WnZZOTRtb0JU?=
 =?utf-8?B?WGtOT2F4TmlacG1xQ1VyMXFYTmV5TDVVV1B1endtUDMwbUFQMFA1c29YYkFP?=
 =?utf-8?B?SEhZMk5VbXFmdm9rNWNqc3hURi9sanl4amZvbER2bzRzU2RZVlkrTEJnV3dB?=
 =?utf-8?B?R3RVVUQ2TDVMdkJ0T0xMRVRCL0xrdWdLL2FoTm1lZEIzaHV2RHVOck9kNVl3?=
 =?utf-8?B?Qzc1VnY3V1JRN01EUmhTcnNPamhHWmdaMUhzSlhoYzNZcWRtbVA0OHU4TTFv?=
 =?utf-8?B?WkRISUZrTjZwNUdLVUl5aTJuRFVhTUtpbE42YXJnRmNCMkZ4UHhKaWxOYXRl?=
 =?utf-8?B?alpmb0pYNXcvMEY4YXk3YkdGc1g0VXpVTTZSb1dpbHE5cVpGUTFuRDk2aTJX?=
 =?utf-8?B?Yjd5S0pzT1BOS3V5a2JPZWZTZzkzSnFaZVhkWkM0Um5LVWRmbVFlcHUvck1R?=
 =?utf-8?B?eEdzL1NGdWdqT3BYekMyWlNMZ1F1M3pHZXc0K0U0ZmUzUUFtN1VZT21Xb1F5?=
 =?utf-8?B?clZKV3FVSURBZFQ1aEpORVF1WXJhN295UVZUenVEb0VMaGp4QzZ3OVM4WUZo?=
 =?utf-8?B?SVQ1NUhZd2ZLc3ZWeVcrTjR3TlF6U1A3OFh5bDgyUXlTMVg4Vkc1Z3Qzd1hr?=
 =?utf-8?B?akFVYXZvUHk2K2dxd1ljRThwZjdKbmdsTDJmOFI0OVRVaG9tdDhTU25iaHRS?=
 =?utf-8?B?NFVWa05RNlVzZHdvdjhXNDdHb0VScnQrQm5RTk5WcE9MdnR5cTNZaDc5SG4v?=
 =?utf-8?B?R0xpa3V3TUw4TTJlcG9VbmpnT01uSDIzbXBGUXdaVGI4YU9lemlsaGxyMWR4?=
 =?utf-8?B?dkJ3TTZJSCtMTHF6aHhKUzN0N2lyeXlYUzF1YWN6SFlWQ3JwSStFekpkSmUr?=
 =?utf-8?B?RHZybDgrRkJJbnF4emVQS29kTlRnc1hRZEg0RkJEMXV1bmZBcjIwMzlwTGht?=
 =?utf-8?B?d2szYm12ZkJacG1sSHZZdnNmRFJGMXJNUCthMVlhQjFHOC9VdmdLU3Jmam5V?=
 =?utf-8?Q?JblDq9AjLlRln0pkqw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEx5NXliM3RPL1hSTG5nWGxUbkJkK3ZyQTdYaTlmY2NaYy9jMFVRdTlZNENM?=
 =?utf-8?B?L1ROd0pHaWN6d1hLSndXYkFadDRwUStFNUlqT29RbWFTS3dvT3Vuczh5cExw?=
 =?utf-8?B?bXlmd0ZhNWpad3FkSHk5dis5ZUcwSitnSzFnODBjNk80NFQxSjlvT3h0OTg0?=
 =?utf-8?B?L1h2NE9FMWRsZno1NDRXRzRqL2w1anJxZW44NmdUQ09uY1V1WUVuZTJhRjdt?=
 =?utf-8?B?SWVENVk5VWRKVUZHczFvYVNkb3hwUkVlRXRuMzU5MmU4ZWUzdjQ2eHB5NjVm?=
 =?utf-8?B?WGpVaDU5OG9MZXE2dFlxSlpnSGZMZWE4K2d0OFhNTUtmZFhNdjlDOU8zcjZv?=
 =?utf-8?B?a2JkSnJvK1ZsMkV6NXBVYmRVdEFTN3NqUHBzQ09ZSGs5SkZGcDJCbkZXemVL?=
 =?utf-8?B?bVpBUVFzZC95M2xRYWJUZmRQM3h4MHdEK1UzZGU2NkpqYkxYdFZqUS9rTnlO?=
 =?utf-8?B?WGZ5RUZURjRKMGRnQW8wT2RiV2dGbzVZSmZCOWFKMnNZNEk4eDhZMWFoajFB?=
 =?utf-8?B?VmNNaUN3SUFxUkFQcEVZaExTZkx5VjBoSGZmTXFGRTdvTUNWcXdIcnJEcHhr?=
 =?utf-8?B?Yy83SXBtS1k0TEU4V28rUk55bkdaY2c4SW1qOU42TEI3NCtUdFpiVnZ6QlFy?=
 =?utf-8?B?aXRZc1VGV0hyMzdWZXUrRzBXaE1pNTFIdjFpT1puYW1EbE1zdnhXTmpGRGQ3?=
 =?utf-8?B?bnZIY2dReURHTjVGVDE1NDRSY0JuVFVmbjhoSjBWNThMaXBYbm9wOFFYSkRZ?=
 =?utf-8?B?SXFqVXFlTFZ4YnNiTHRITVhKVXhsNWR1WWtzWldCR1RaVm91UlVUWVhhbFVU?=
 =?utf-8?B?L3ZzYjlPY0wvd0J5QURrbUhMdlk4WFRkdUVXQU9JazlveEE4UnR4TmVtWS9x?=
 =?utf-8?B?WWZWSXp3dDFFaHRBY1E4b0ZBY0tGQ25UQmJBc2kyVWJEeFBVVGlaZDVYS3hy?=
 =?utf-8?B?UVJ4MEdacWdXRFRiOWl1ZVl4NUtKQm5HR0VNNjRvUGV2WStuUmFxTFQ2b2l5?=
 =?utf-8?B?RG95M3B4ZjVTTTgwN24rS2FwMllWaUlwdEo4Qk11bDR0NURiNWY2SmhYS3NQ?=
 =?utf-8?B?WG1LNDAyL3VySTZhMTRzSC9YdjFDTGpaZkV6OGJNSkJsdStLMVBvRm1Dd1VC?=
 =?utf-8?B?U3o4QjRjSTYzT3JzazI4SXM5YWUxV2NJR3RaQ2IySThHdFllZVNpYTEwMU5w?=
 =?utf-8?B?OU15VVl2c3J5WEE2Q0Fibkc4M0pQMzd4QmlMZjUyWERqelJ6akRucFR4YUxo?=
 =?utf-8?B?NkxBQ1VHeG4xK2t2MXZxSEpkK1lLS3Z1ZHp3djdEUGplengzenkxM2ZrSXBI?=
 =?utf-8?B?NDYyejF0Y0lGaEJlUjRwcFJvdmRhRDJzdG0wWFhiWU96ZG0vdTl3UXhyYnpO?=
 =?utf-8?B?Z3RjQnpkNVFVUWk1eTZiTlIvbUFOelMwZE8vMXl3ejJuNzhpVDJ4K0kyVk9E?=
 =?utf-8?B?TmxiUzNmZkY0ZkxOcWtYSUpWNDBnQ0c3elpaekgwS1VFN2hGcDFQMlpySGdp?=
 =?utf-8?B?ZUNDeDh4U0ExZHE3THJUeUZXQWJpUTFJU2J2M0NZV0krajAxMDgxUC9pZTlD?=
 =?utf-8?B?VjdzRFBCU1dMRWN2cVRabnpxNjkzc2VUM0tpMnVqVllHTXNMaHh1a2wrUXVE?=
 =?utf-8?B?MXd3SUpybHRHRmJseDUzYnJya0R5ZGRMb2lYKyt6cCtxbjUzc3ZWaTYwbldi?=
 =?utf-8?B?NEZlK1lLdFFVR0hiLzN0M0thWFo3endHZEh4WXVnMElpSHVEa1FYSml6eWxv?=
 =?utf-8?B?eTRVTlhCTmVzalBzR1JieDREVy9pblp4YzEyaGZUNnl2RXpDVE9PVE1jR3Rw?=
 =?utf-8?B?YVhnZ3FCNXRTOW1Yc01renVEVjN0Sit1RHBTRGFUN29iT2lCTmZNdXRMck9u?=
 =?utf-8?B?akkvRE5hQ1lQM1NlVHVsNlVTSlJ3VERjdmhPRVBGeFhsNUwwdW4zYThmK0JX?=
 =?utf-8?B?UUlrTVBhWEVoY0hUbkEvdDFrZUMrSjJBaXkwTEpGVXF5WDdnVHVFeC8reWZZ?=
 =?utf-8?B?V2tLU0x3a2hMb2Y1Y2lIRlRrYk13QU5vNFdoOGlWVXNOaTlJUFA3ZCt6NXkx?=
 =?utf-8?B?YXhKZC9YVFJtK00rOHYyNy9nMEhUVlBsRTZjeCtTQ2dzdjNPUG8xUm5ZVW95?=
 =?utf-8?Q?B9oB7jnRTS/VJQck+Yxc2ZWuL?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9960a91-02c1-449b-50c1-08dcaf8e0718
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 05:19:32.2346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m93YZX2RC6ys0SYGZS3HS6GaSEI/+m3G8TLXE1xdHTt9D0JciSRKuYasagn46J2Qmou1tFedidigdzrPsyBVJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6151
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

Hi Vinay

On 7/26/2024 10:38 AM, Nilawar, Badal wrote:
> Hi Vinay,
> 
> On 24-07-2024 22:29, Vinay Belgaumkar wrote:
>> We are seeing several instances where the RPe, which can be altered by
>> pcode dynamically, is causing subtests to fail randomly. Instead of 
>> relying
>> on it, we can use a mid frequency value for these subtests and avoid 
>> these
>> failures.
>>
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/intel/xe_gt_freq.c | 37 +++++++++++++++++++++++++++++--------
>>   1 file changed, 29 insertions(+), 8 deletions(-)
>>
>> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
>> index 93ebb5ed0..442f5658f 100644
>> --- a/tests/intel/xe_gt_freq.c
>> +++ b/tests/intel/xe_gt_freq.c
>> @@ -26,6 +26,9 @@
>>   #include <sys/time.h>
>>   #define MAX_N_EXEC_QUEUES 16
>> +#define GT_FREQUENCY_MULTIPLIER    50
>> +#define GT_FREQUENCY_SCALER    3
>> +#define FREQ_UNIT_MHZ (GT_FREQUENCY_MULTIPLIER / GT_FREQUENCY_SCALER)
>>   /*
>>    * Too many intermediate components and steps before freq is adjusted
>> @@ -70,6 +73,16 @@ static uint32_t get_freq(int fd, int gt_id, const 
>> char *freq_name)
>>       return freq;
>>   }
>> +static bool within_expected_range(uint32_t freq, uint32_t val)
>> +{
>> +    /*
>> +     * GT Frequencies are requested at units of 16.66 Mhz, so allow
>> +     * that tolerance.
>> +     */
>> +    return (freq <= val + FREQ_UNIT_MHZ) ||
>> +        (freq >= val - FREQ_UNIT_MHZ);
>> +}
>> +
>>   static uint32_t rpe(int fd, int gt_id)
>>   {
>>       return get_freq(fd, gt_id, "rpe");
>> @@ -128,6 +141,8 @@ static void test_freq_basic_api(int fd, int gt_id)
This test doesn't need the current rpe since it only sets min and max to 
rpe and reads it back.

We could use the previous saved value here
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>>       uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>> +    uint32_t min_freq, max_freq;
>>       /*
>>        * Negative bound tests
>> @@ -142,16 +157,18 @@ static void test_freq_basic_api(int fd, int gt_id)
>>       /* Assert min requests are respected from rp0 to rpn */
>>       igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>>       igt_assert(get_freq(fd, gt_id, "min") == rp0);
>> -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>> -    igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>> +    min_freq = get_freq(fd, gt_id, "min");
>> +    igt_assert(within_expected_range(min_freq, rpmid));
>>       igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>>       igt_assert(get_freq(fd, gt_id, "min") == rpn);
>>       /* Assert max requests are respected from rpn to rp0 */
>>       igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>>       igt_assert(get_freq(fd, gt_id, "max") == rpn);
>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>> -    igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>> +    max_freq = get_freq(fd, gt_id, "min");
get_freq(fd, gt_id, "max")
>> +    igt_assert(within_expected_range(max_freq, rpmid));
>>       igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>>       igt_assert(get_freq(fd, gt_id, "max") == rp0);
>>   }
>> @@ -168,6 +185,8 @@ static void test_freq_fixed(int fd, int gt_id, 
>> bool gt_idle)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>>       uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>> +    uint32_t cur_freq, act_freq;
>>       igt_debug("Starting testing fixed request\n");
>> @@ -190,17 +209,19 @@ static void test_freq_fixed(int fd, int gt_id, 
>> bool gt_idle)


The comment in this test needs to be modified since we are not using Rpe 
here anymore


/*
  * For Fixed freq we need to set both min and max to the desired value
  * Then we check if hardware is actually operating at the desired freq
  * And let's do this for all the 3 known Render Performance (RP) values.
  */

Thanks,
Riana

>>           igt_assert(get_freq(fd, gt_id, "act") == rpn);
>>       }
>> -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>>       usleep(ACT_FREQ_LATENCY_US);
>> -    igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
>> +    cur_freq = get_freq(fd, gt_id, "cur");
>> +    igt_assert(within_expected_range(cur_freq, rpmid));
>>       if (gt_idle) {
>>           igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>>                    "GT %d should be in C6\n", gt_id);
>>           igt_assert(get_freq(fd, gt_id, "act") == 0);
>>       } else {
>> -        igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
>> +        act_freq = get_freq(fd, gt_id, "act");
>> +        igt_assert(within_expected_range(act_freq, rpmid));
>>       }
>>       igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
> 
> We should cover freq range subtests as well.
> 
> https://intel-gfx-ci.01.org/tree/intel-xe/xe-1667-9f8e597a1c39d7e316f9479e6f627c15dbc58e1d/shard-lnl-7/igt@xe_gt_freq@freq_range_exec.html
> 
> Regards,
> Badal
