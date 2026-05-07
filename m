Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCt5MxR9/Gl0QgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 13:52:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 322B94E7C72
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 13:52:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8697610F03B;
	Thu,  7 May 2026 11:52:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vi1uE3E6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1300A10F02F;
 Thu,  7 May 2026 11:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778154766; x=1809690766;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=p88mwLl+QP9g4rNV7+xbXkpAflJCR9UdSMblfanWSKU=;
 b=Vi1uE3E6wtTia9izcFMDnZdE9XoRLg3NJZoapvrEUQBvBCOHTBnJmV3O
 lVevcQF3goH/XOHH56qTakRvf9lGoqIS6b7EmPgeq5wNy5KKghNmB1ipw
 zPBaFIIvfRypr9JMydttL6AWYVZ2d5t5Xo0dw2oqoJfmS3KB8rDx16pcU
 RIR5cMx9deuA7VPnZzVvXNA/XpiOGlF8FJCRLRYaSVoX+9pmVhvC7J8om
 tCY+Pv0KrNOyYyplZkUT5iRIiWPHbKt6jjIcqv7BVchFEBTIBUwH3H8mt
 ouD1TveuMIc753uoZRdW7I81WvP4bAEzLov/mo5x2d4XSRzF745VTRB/I w==;
X-CSE-ConnectionGUID: vjQevIcYThiIfdm3ru2Brw==
X-CSE-MsgGUID: kq3Wl84+RSS2gELym4TSCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="89410103"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="89410103"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 04:52:44 -0700
X-CSE-ConnectionGUID: /XRIcTO0Q8ebEZl7/VfACg==
X-CSE-MsgGUID: 7KaHCL+/Rd6DjVAdYi9fgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="238243656"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 04:52:43 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 04:52:43 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 04:52:43 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.44) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 04:52:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QezouUrTNeXmLwsHCAgwIFnquw1aMQXqi9JYIEUN68jK7u9X9adxPRe3XHmXJB2oFus96p/meam3Oiv+jr8jI7x+B+scYdUatrQAJfUaenxsAkZUDBsLi0Yp2LAhcYpuikf2Jl/LqtkkUCuZRW29NYO8JCOjofxeKCTRjZ5Cur65kJjGXEEwk5eXLA4RO3whJhlr3/P8tN62MW+U+tnw9nX3UgRiTB/2TnS1J4FGTsh/AMkGjhYAkppI1XJVaibs/WYOgPy6tBM9F6Gij7UDpjzGf+3cG9DhKzqn2K0AQrWdqcE6kKQVUjhmc0myGgT/LO+3f6CodePCpLt72E/l6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zuGDBL75Mt9qYYJ8WoTSCgaKae+MZPKbgC+e0XX9JCs=;
 b=eXdeqOAxuZ2/EPDNbIxlwDGvoxKwXCqYHJy97HI3PJgBMkgMcHj5NnP+RiKqxwwAIZyEuz3BR2f5WYP3/LHqXBUpcMqfi8B/ia/1lfqX/cgDRfmKaHL5wEvKLNM1N19mhUwjMKHpnucGWQRxcrSRLy+SGp+FqlkB3auRVBVVPG3qGeBbuh/mdHrG5+GvE2o/925yhsCuVdNDs3lmqagQLyqhSPkg018OakR2P51/WBMYspKPxuYm6M431OGQxNwl5/rEMMpdgbxxWsKA3+u802xnwSU5+8nqPTCrqWSlN/agufFGHqg7WgDIqJoyr1W5tKTnwJ0EYVI0P9hUJUUKsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by IA1PR11MB8830.namprd11.prod.outlook.com (2603:10b6:208:599::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Thu, 7 May
 2026 11:52:37 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::8f86:8d08:45bf:ec13%6]) with mapi id 15.20.9891.017; Thu, 7 May 2026
 11:52:37 +0000
Message-ID: <ee4eef18-7901-4e5f-b914-65b01d1fe7fe@intel.com>
Date: Thu, 7 May 2026 17:22:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
To: Manasi Navare <navaremanasi@google.com>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
 <afH2DKWGJs5nmFwh@intel.com> <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
 <8878f6d3-0d38-41f3-a0c5-2c229fd553ec@intel.com>
 <172dd0cf-8e0b-4e00-a50e-708196928a7e@intel.com>
 <CAMNLLoTKjz-Fg7Dp5R6_XG8PEcOAiDfPx+=UVeKkkRoBYeRYug@mail.gmail.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <CAMNLLoTKjz-Fg7Dp5R6_XG8PEcOAiDfPx+=UVeKkkRoBYeRYug@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0211.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::17) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|IA1PR11MB8830:EE_
X-MS-Office365-Filtering-Correlation-Id: 4210018c-73e1-4f13-4ade-08deac2f21a6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003|18092099006|3023799003;
X-Microsoft-Antispam-Message-Info: iKCVdsm5lqwGD/Biik/CS/p1K07+tyrAPIwnL4Uajb/Xn/HP3H+HWYjGQKX66znYzgSSNebJcAFTuVyo/A7pJ/33SeD44eVfnV0cAKYB6Nq7d1jVQV13+q16aYPPgg+iIxr/d2+g2R4QvA3JnQ4moFVov8bNCCgXSUQ83ka0gWhagJa+kyuW8mnfdm5lKjkFKC8K62R+y2S6oeY9VSNq9RmI3gRLx0UuzwV0nvqgX0lvPKv/sIz1bWTqvNEKBFURn1yPAeDtSoEd6FwFMJ9X4TRmGZocj99VG6SoixgjZD7Pmr2wZMp7SnHTKAyweKyRRoR9w1B5pGWNC5bESeT8AVqV3LEncOwR+aHS1r4PVZm2Ncc8QeRI8X9S5jbhSUXtHNmg0TBVJD2Bu3uRoQF3Q2YDtuPqsZ0vN1wRvxkigZ05vbJ9ungJy7uXCgPLGql+lMVef8JfUOQvxe4fyZrQVvQ1rkivGAEwfwl3Dlio8CDTWPruQbtizxUetzcITalVjuWTLsAlMj7JGA+BctJt4P+mc0fwOWPa2OlpXJV8e8oTtDFz9k6Rn8EM4rFZHpBqy3q7FNIrZ9LuJFID2HafEzv1/p/2XamPORuVMkAsliaoCGlFqeExUdRSMr4g2EI2gqdp0UhLekQy8fjhNd01E9D+hwDSM9dVS8cRnDhbLJrFHlrmhi4ltq5OOomKScmI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003)(18092099006)(3023799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0FydHBwaEhSeHk1TzNzL3FaWVVlaGROYlFhcTE1YnpUU2Y0RTJBeUdrQ1Vx?=
 =?utf-8?B?SHlDUWhWZXBnUzU4WW0yZ3RlT1d5RG1jcTl5SmFmd1d5WkFQWHlIR0krWEZz?=
 =?utf-8?B?czdQTElMelErci95MTRpZitMMUxPRU5INlgwcHdtcGZHcllyTkprWEZ3aGM1?=
 =?utf-8?B?Mk1oNVFaSDFxeEsvQzhiQlhrK2srUkVhOGFwWEtiVU5iUTlFWkpmTjV1WUpG?=
 =?utf-8?B?MFo0SldYQWxCOVlHc0xqVjVMWENjTkRYNUFyNThuSWlOYnZVUXpVa21ZYjdr?=
 =?utf-8?B?Tk5UNG5IMm9mc09xSlJWbFllVXp3ZFlsaTNUcVQ0WStPVUFGWC9TT2k2enM1?=
 =?utf-8?B?cGo4L005RitIdDVvTGgxWU5MaVhXWkVhTkt3aTFWVGh5Q3U0U1YxRE5CY1N6?=
 =?utf-8?B?aEpHNFoxNDRZY1dCUUZqNHJ3UEdoRHJzTGtxNXJZZXpiYUVJVHJ2MVk1Qndh?=
 =?utf-8?B?eTRaMkZ2UG5Gd3RnMkM1K3cwbFFMQXExUVFWRVJXU0t0dWNaZkRBbDA3dmw1?=
 =?utf-8?B?UTNCTTJkeHNtMDEzTVlya2o4U0tkcHYvdWVEeUJUL2J6eFlpTlhzODg0eHB2?=
 =?utf-8?B?M05aRUNTVm5hZ2NKTmR0endFa2VJZTNFL3pqRWFGRStiWDhYZFkzNEs1Qjd3?=
 =?utf-8?B?YnRlcGFRZkY2S2ZKakZEY040dm9jK05YRnFKdy9ORnc0aHJWOCs2Y0xWQ29B?=
 =?utf-8?B?TFRNa256QnRScUtSUlNkR1JwNnNoTWlOdndPRlkxMmxRYXFwYmE2U3lEdkZq?=
 =?utf-8?B?bmc3TFdHSHlzS3VXaUdjY0lLSHJvZEY0TWhFVXQzTEk5eUhBUEF4bU1NenNL?=
 =?utf-8?B?N2V3dllYQUlIL2pPTEdVNUVTUWR3NnRGWkhPYUo4dUUxeHdEMFJjZ0FOOERW?=
 =?utf-8?B?SzRaS0NEVDhSNWZQUFRaYndDNmNURDRFM3NKdUNqUW5hR0NEemhROTVsYWZS?=
 =?utf-8?B?bEZ0cUFnNlpNMnIrclF1UndzeXdnTnh3aWZldWRFMFpnRllKZFdhTmxGd0dP?=
 =?utf-8?B?Y0dZWTFqYXpyT3F4ZmdkUE5vTTFJSkg0WjRrU25EZ0lkamZkT0thZUJkMmht?=
 =?utf-8?B?NnMyVXF5UnhmT3VEV1Iyb1BSdnI5V3VJc05ZVWlPSCs0TGlNN1JvMjJtVFhz?=
 =?utf-8?B?Ukg0N0FzR09yWStYVXk2SzlKdCtkU2VZMVdqSUF3STJKVkJUMzRwbGtuSXpi?=
 =?utf-8?B?akpXQ0FkZW9pUnM2SkpJMkVlRW1BVENCT3pqSmlDWjc3SGxwTVhIOXFpbHcz?=
 =?utf-8?B?VURrRjRCYW9ONE1yc0RsZWdya1BJZWhwUC92YlMyOHFYdUQwMjI4WTROVXFY?=
 =?utf-8?B?ZGNQa0F1RmdjVWZLb1FuSkQvTWpkWXA1bzdqTzRiOHUrN09ZYW93eXI0Q1Rv?=
 =?utf-8?B?eGlwQ3pHYXpaMmlRWnVDUnQ3ZlAwc0xPS3dQWWJ2aUtybW1sbWxJTlo5aGRr?=
 =?utf-8?B?ZUNWcTN4SmVWMHo4a1Bta3FncFgwMmh0L0x3aER0ZlU1MFF5VHFPdFBaSW5V?=
 =?utf-8?B?a2g5eVk1L0NsOXV5NDNzeFlrRXh2REw0TVBEUHVrbTFOS1pmQnZPZFdBbHRO?=
 =?utf-8?B?RFdvV015Y2ptUGhXMlJFM0lUMVg2ejNjWXNYZm8yZE1sWGp0bjdCTGM2TnQz?=
 =?utf-8?B?VzFUalJBRENMczlCUDVNZVIvVXhueThoMFZVbW1YSWJONmZYRnRzdzdLWmJ3?=
 =?utf-8?B?YmJtVHZRZm91ckdUVHRlYyt2S1kveXpGTGdSdlAxVzVLSVNzYXlMQnQ0Y3hB?=
 =?utf-8?B?aUNzcU01T1Yrb1ZhUWN3YW84azZpdDNZZzBjYlp1ZUFycjMxUW1RZUIvZFdz?=
 =?utf-8?B?TmhmUjI1d1Q0NWl0QzlhK3Noa0ZRQWdOcmdCSW11cWNZWVlwNzgxSks4QldI?=
 =?utf-8?B?cGdZb0JyNHVscGJoSlJZU2MyL2Z2SkJlUXNqYjc1aFlXUEdtQisxcHRJNWhR?=
 =?utf-8?B?TkhEditQS21LWnFMK2l4SkI4WWVEM2N0c0xIWldBWGs0b0k0R1F6Q0JWY1RW?=
 =?utf-8?B?RmVmUC8vd2VxVHNTT0VwQUpEWmkzZ0E0cTJiRlZPL2oxMDcxMHlrNzFYWmVu?=
 =?utf-8?B?QjFBMVB0aWF4c2YxYWRRVFEwbjlEVHU5NGpjd20rRVh2aFc1NFA2ZldURnVP?=
 =?utf-8?B?WS9vUTdFSzFYcWdDTFVKT2pVNllVVjJkeHQxZG05T2tCZXRmTzZramRjRDRY?=
 =?utf-8?B?VjdvODJDUWVSTVk0c1VLUzdlaHF2c1QyZGEwTlhNaUxHclBEdloySHYwR1FS?=
 =?utf-8?B?YWw1VzJ6Yk9kYkVaclBuVHJ1ekxYMnlCMSt1SmhCWWFQRGkvR2drU3Q3VDJp?=
 =?utf-8?B?SkRZTFM4OGtvQ0pINjNFalBLbE1WWEhIa0xFcmdkRk05aHZNbjVkbGpobFkw?=
 =?utf-8?Q?i2J6JDBEHzzkQqsI=3D?=
X-Exchange-RoutingPolicyChecked: eO/s15Levfrq6hnbt2Hj24Qk09hBsegn0IVDG/9i1q9paa6EHUSoaw2dJfORzT1X9pAgWl2oKBq/xDpMGK8cXJjG0KH0MTwhUkTn1tO35WrI33BMBw0DzAonC0N4lTQ3oItquPm6+ZCGgCiiEP9SdDKwqLlW/FtJtSaPhSUAlO2wgGF4e38jhdtX+yk8o3fMSeZVybbOLslIgqR+eVR905+B1VXCxJboUf6RnALyORFvcYAYWoLrDEvYcyGsUXYQUfyMGW7arycLErEqgUzhfUnTpzKsaIa4PB+66uW49YRQn1KNkNKVkfxFP5s+xAzRzGXd9fPl2JVemTcFiNyVUw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4210018c-73e1-4f13-4ade-08deac2f21a6
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 11:52:36.8631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uukIm9fAdVKifq+/7/RumYyCnHWaGCrGOhhXSLew7iZSeJQV6BZsYentCmeaj5ND5Gy2d6JX0lbVGeN4Ye5aNO9IrEcy34GTO1pZjB6woE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8830
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
X-Rspamd-Queue-Id: 322B94E7C72
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action


On 5/6/2026 9:23 PM, Manasi Navare wrote:
> Hi Ankit, Ville, Jani,
>
> Thank you for the patch and the discussion here. Please see some of my 
> comments/feedback below:
>
> On Wed, May 6, 2026 at 12:25 AM Nautiyal, Ankit K 
> <ankit.k.nautiyal@intel.com> wrote:
>
>
>     On 5/4/2026 6:47 PM, Nautiyal, Ankit K wrote:
>     >
>     > On 4/29/2026 10:30 PM, Nautiyal, Ankit K wrote:
>     >>
>     >> On 4/29/2026 5:44 PM, Ville Syrjälä wrote:
>     >>> On Tue, Apr 28, 2026 at 02:03:23PM +0530, Ankit Nautiyal wrote:
>     >>>> intel_panel_fixed_mode() intends to choose a fixed mode at or
>     above
>     >>>> the
>     >>>> requested refresh rate for VRR panels, so the requested
>     refresh can be
>     >>>> reached by extending vblank.
>     >>>>
>     >>>> This is called in compute config to find the 'best' fixed
>     mode for a
>     >>>> requested mode and also called during mode valid phase to
>     prune the
>     >>>> unsupported fixed modes.
>     >>>>
>     >>>> For Non-VRR panels there is no issue:
>     >>>> - When a user wants to do a full modeset (sets
>     DRM_MODE_ALLOW_MODESET
>     >>>>    flag) with a custom mode, the intel_panel_fixed_mode()
>     gives the
>     >>>> mode
>     >>>>    with refresh rate nearest to the requested mode.
>     >>>> - Seamless switch to a lower mode is only possible if the
>     platform has
>     >>>>    support for Double buffered MN and the sink is Seamless-DRRS
>     >>>> capable.
>     >>>>    In this case the user sets a lower refresh rate mode and
>     doesn't
>     >>>> set
>     >>>>    the DRM_MODE_ALLOW_MODESET flag the intel_panel_fixed_mode()
>     >>>> returns
>     >>>>    again the fixed mode whose refresh rate is nearest to the
>     requested
>     >>>>    mode.
>     >>>> - Since Duble buffered MN is not supported on LNL+, the seamless
>     >>>> switch
>     >>>>    is not possible for such panels from LNL+.
>     >>>>
>     >>>> For VRR panels the current logic has some issues:
>     >>>> - For VRR panels intel_panel_fixed_mode() intends to choose a
>     fixed
>     >>>> mode
>     >>>>    at or above the requested refresh rate so the requested
>     refresh
>     >>>> can be
>     >>>>    reached by extending vblank.
>     >>>> - However, as per the current logic the helper can return a
>     lower
>     >>>> refresh
>     >>>>    rate mode, if the lower refresh rate mode is first in the
>     list
>     >>>> of fixed
>     >>>>    mode. Later, if the selected fixed mode's refresh rate < the
>     >>>> requested
>     >>>>    mode's refresh rate, then the requested rate is matched by
>     >>>> extending
>     >>>>    the vblank.
>     >>>> - In case of a full modeset request with a custom mode this
>     is not a
>     >>>>    problem. But for the seamless switch features like LRR (Lower
>     >>>> Refresh
>     >>>>    Rate) and the Seamless-DRRS this creates a problem as this
>     >>>> results in
>     >>>>    change in vsync_start/end and resulting in a full modeset.
>     >>>> - Furthermore, as with the Non-VRR panel case, the
>     Seamless-DRRS is
>     >>>> not
>     >>>>    supported on LNL+, but for VRR panels, the vblank can be
>     extended
>     >>>>    similar to LRR case. But due to the above mentioned
>     problem in the
>     >>>>    intel_panel_fixed_mode() this also results in full modeset.
>     >>>>
>     >>>> To solve these problems for the VRR panels, identify if the user
>     >>>> wants a
>     >>>> full modeset or expects seamless switch. If seamless switch
>     to a lower
>     >>>> mode is desired, make intel_panel_fixed_mode() return the highest
>     >>>> refresh rate mode, provided the requested rate is in vrr
>     range. This
>     >>>> will then be modified to extend the vblank to provide the desired
>     >>>> refresh rate.
>     >>>>
>     >>>> This is particularly needed for DRRS panels on platforms
>     without the
>     >>>> double buffered M/N support (display version 20+), where
>     seamless
>     >>>> clock
>     >>>> changes are not possible.
>     >>>>
>     >>>> To understand the user requirement for full modeset/seamless
>     >>>> switch, the
>     >>>> intel_panel_fixed_mode() and intel_panel_compute_config() need
>     >>>> access to
>     >>>> the connector state to check the allow_modeset flag.
>     >>>>
>     >>>> Add a nullable conn_state parameter to both. The mode_valid
>     callers
>     >>>> pass
>     >>>> NULL since they have no atomic state and the compute_config
>     callers
>     >>>> pass
>     >>>> their conn_state.
>     >>>>
>     >>>> Also remove the VRR check from is_best_fixed_mode() since the
>     >>>> selection is
>     >>>> handled upfront in intel_panel_fixed_mode().
>     >>>>
>     >>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>     >>>> ---
>     >>>> drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
>     >>>> drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
>     >>>> drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
>     >>>> drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
>     >>>> drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
>     >>>> drivers/gpu/drm/i915/display/intel_panel.c | 35
>     >>>> +++++++++++-----------
>     >>>> drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
>     >>>> drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
>     >>>> drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
>     >>>>   9 files changed, 37 insertions(+), 34 deletions(-)
>     >>>>
>     >>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
>     >>>> b/drivers/gpu/drm/i915/display/icl_dsi.c
>     >>>> index afbaa0465842..1efe81404d01 100644
>     >>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>     >>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>     >>>> @@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(struct
>     >>>> intel_encoder *encoder,
>     >>>>       pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>     >>>>       pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>     >>>>   -    ret = intel_panel_compute_config(intel_connector,
>     >>>> adjusted_mode);
>     >>>> +    ret = intel_panel_compute_config(intel_connector,
>     >>>> adjusted_mode, conn_state);
>     >>>>       if (ret)
>     >>>>           return ret;
>     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>     >>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>     >>>> index 35b8fb5740aa..f014ce28e69f 100644
>     >>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>     >>>> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct drm_connector
>     >>>> *_connector,
>     >>>>       if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>     >>>>           return MODE_H_ILLEGAL;
>     >>>>   -    fixed_mode = intel_panel_fixed_mode(connector, mode);
>     >>>> +    fixed_mode = intel_panel_fixed_mode(connector, mode, NULL);
>     >>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>     >>>>           status = intel_panel_mode_valid(connector, mode);
>     >>>>           if (status != MODE_OK)
>     >>>> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct
>     intel_encoder
>     >>>> *encoder,
>     >>>>       struct intel_connector *connector =
>     >>>> intel_dp->attached_connector;
>     >>>>       int ret = 0, link_bpp_x16;
>     >>>>   -    fixed_mode = intel_panel_fixed_mode(connector,
>     adjusted_mode);
>     >>>> +    fixed_mode = intel_panel_fixed_mode(connector,
>     adjusted_mode,
>     >>>> conn_state);
>     >>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>     >>>> -        ret = intel_panel_compute_config(connector,
>     adjusted_mode);
>     >>>> +        ret = intel_panel_compute_config(connector,
>     adjusted_mode,
>     >>>> conn_state);
>     >>>>           if (ret)
>     >>>>               return ret;
>     >>>>       }
>     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c
>     >>>> b/drivers/gpu/drm/i915/display/intel_dsi.c
>     >>>> index 9005c1f5d857..a480bb79dca7 100644
>     >>>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
>     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
>     >>>> @@ -64,7 +64,7 @@ enum drm_mode_status
>     intel_dsi_mode_valid(struct
>     >>>> drm_connector *connector,
>     >>>>       struct intel_display *display =
>     >>>> to_intel_display(connector->dev);
>     >>>>       struct intel_connector *intel_connector =
>     >>>> to_intel_connector(connector);
>     >>>>       const struct drm_display_mode *fixed_mode =
>     >>>> - intel_panel_fixed_mode(intel_connector, mode);
>     >>>> + intel_panel_fixed_mode(intel_connector, mode, NULL);
>     >>>>       int max_dotclk = display->cdclk.max_dotclk_freq;
>     >>>>       enum drm_mode_status status;
>     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
>     >>>> b/drivers/gpu/drm/i915/display/intel_dvo.c
>     >>>> index 405b33aca9dd..0ec25d895777 100644
>     >>>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>     >>>> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct drm_connector
>     >>>> *_connector,
>     >>>>       struct intel_connector *connector =
>     >>>> to_intel_connector(_connector);
>     >>>>       struct intel_dvo *intel_dvo =
>     intel_attached_dvo(connector);
>     >>>>       const struct drm_display_mode *fixed_mode =
>     >>>> - intel_panel_fixed_mode(connector, mode);
>     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
>     >>>>       int max_dotclk = display->cdclk.max_dotclk_freq;
>     >>>>       int target_clock = mode->clock;
>     >>>>       enum drm_mode_status status;
>     >>>> @@ -259,7 +259,7 @@ static int intel_dvo_compute_config(struct
>     >>>> intel_encoder *encoder,
>     >>>>       struct intel_connector *connector =
>     >>>> to_intel_connector(conn_state->connector);
>     >>>>       struct drm_display_mode *adjusted_mode =
>     >>>> &pipe_config->hw.adjusted_mode;
>     >>>>       const struct drm_display_mode *fixed_mode =
>     >>>> - intel_panel_fixed_mode(intel_dvo->attached_connector,
>     >>>> adjusted_mode);
>     >>>> + intel_panel_fixed_mode(intel_dvo->attached_connector,
>     >>>> adjusted_mode, conn_state);
>     >>>>         /*
>     >>>>        * If we have timings from the BIOS for the panel, put
>     them in
>     >>>> @@ -270,7 +270,7 @@ static int intel_dvo_compute_config(struct
>     >>>> intel_encoder *encoder,
>     >>>>       if (fixed_mode) {
>     >>>>           int ret;
>     >>>>   -        ret = intel_panel_compute_config(connector,
>     adjusted_mode);
>     >>>> +        ret = intel_panel_compute_config(connector,
>     adjusted_mode,
>     >>>> conn_state);
>     >>>>           if (ret)
>     >>>>               return ret;
>     >>>>       }
>     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
>     >>>> b/drivers/gpu/drm/i915/display/intel_lvds.c
>     >>>> index cc6d4bfcff10..2e30bc3f1e62 100644
>     >>>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>     >>>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>     >>>> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct drm_connector
>     >>>> *_connector,
>     >>>>       struct intel_display *display =
>     >>>> to_intel_display(_connector->dev);
>     >>>>       struct intel_connector *connector =
>     >>>> to_intel_connector(_connector);
>     >>>>       const struct drm_display_mode *fixed_mode =
>     >>>> - intel_panel_fixed_mode(connector, mode);
>     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
>     >>>>       int max_pixclk = display->cdclk.max_dotclk_freq;
>     >>>>       enum drm_mode_status status;
>     >>>>   @@ -460,7 +460,7 @@ static int
>     intel_lvds_compute_config(struct
>     >>>> intel_encoder *encoder,
>     >>>>        * with the panel scaling set up to source from the
>     H/VDisplay
>     >>>>        * of the original mode.
>     >>>>        */
>     >>>> -    ret = intel_panel_compute_config(connector, adjusted_mode);
>     >>>> +    ret = intel_panel_compute_config(connector, adjusted_mode,
>     >>>> conn_state);
>     >>>>       if (ret)
>     >>>>           return ret;
>     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
>     >>>> b/drivers/gpu/drm/i915/display/intel_panel.c
>     >>>> index 5e918ee0c8ea..65d017371d78 100644
>     >>>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>     >>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>     >>>> @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struct
>     >>>> intel_connector *connector)
>     >>>>                       struct drm_display_mode, head);
>     >>>>   }
>     >>>>   -static bool is_best_fixed_mode(struct intel_connector
>     *connector,
>     >>>> -                   int vrefresh, int fixed_mode_vrefresh,
>     >>>> +static bool is_best_fixed_mode(int vrefresh, int
>     fixed_mode_vrefresh,
>     >>>>                      const struct drm_display_mode *best_mode)
>     >>>>   {
>     >>>>       /* we want to always return something */
>     >>>>       if (!best_mode)
>     >>>>           return true;
>     >>>>   -    /*
>     >>>> -     * With VRR always pick a mode with equal/higher than
>     requested
>     >>>> -     * vrefresh, which we can then reduce to match the requested
>     >>>> -     * vrefresh by extending the vblank length.
>     >>>> -     */
>     >>>> -    if (intel_vrr_is_in_range(connector, vrefresh) &&
>     >>>> -        intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
>     >>>> -        fixed_mode_vrefresh < vrefresh)
>     >>>> -        return false;
>     >>>> -
>     >>>>       /* pick the fixed_mode that is closest in terms of
>     vrefresh */
>     >>>>       return abs(fixed_mode_vrefresh - vrefresh) <
>     >>>> abs(drm_mode_vrefresh(best_mode) - vrefresh);
>     >>>> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct
>     >>>> intel_connector *connector,
>     >>>>     const struct drm_display_mode *
>     >>>>   intel_panel_fixed_mode(struct intel_connector *connector,
>     >>>> -               const struct drm_display_mode *mode)
>     >>>> +               const struct drm_display_mode *mode,
>     >>>> +               const struct drm_connector_state *conn_state)
>     >>>>   {
>     >>>>       const struct drm_display_mode *fixed_mode, *best_mode =
>     NULL;
>     >>>>       int vrefresh = drm_mode_vrefresh(mode);
>     >>>>   +    /*
>     >>>> +     * With VRR always pick the highest refresh rate mode,
>     >>>> +     * which we can then reduce to match the requested
>     >>>> +     * vrefresh by extending the vblank length.
>     >>>> +     */
>     >>>> +    if (conn_state && !conn_state->state->allow_modeset &&
>     >>> The foo_state->state pointer should never be used. If you need
>     the full
>     >>> atomic state then plumb it through from the top.
>     >>
>     >> Hmm noted.
>     >>
>     >>
>     >>>
>     >>>> + intel_vrr_is_capable(connector) &&
>     >>>> +        intel_vrr_is_in_range(connector, vrefresh))
>     >>>> +        return intel_panel_highest_vrefresh_mode(connector);
>     >>> What we want is the fixed mode that matches the current
>     adjusted mode
>     >>> exactly except for vtotal, and I think we also want to
>     maintain the
>     >>> vsync pulse location relative to vtotal.
>     >>
>     >> Oh alright. I was thinking the issue is in the best mode logic
>     which
>     >> is resulting in lower mode getting picked when we wanted a higher
>     >> mode as best fixed mode.
>     >>
>     >> I was under the impression that since the vsync start/end of
>     lower is
>     >> not the same with the higher mode and since this cannot be
>     modified
>     >> on the fly, it results in full modeset.
>     >>
>     >> However, as you said, vsync start/end can be modified indeed the
>     >> problem becomes:
>     >>
>     >> - we are not scaling the vsync start/end similar to what we are
>     doing
>     >> for vtotal.
>     >> - even if we do that, we need to remove the check for vsync
>     start/end
>     >> for fastboot.
>     >>
>     >> Another consideration is that is the vsync_start should be
>     inside the
>     >> vrr guardband, but I think if the vsync_start scales up then it
>     will
>     >> still be inside the guardband so we should be covered.
>     >>
>     >>
>     >>>
>     >>> We should in fact fix the vsync_start/end mess first.
>     >>
>     >> You mean the existing vsync_start/end change due to AS SDP
>     thing? Or
>     >> you mean the above mentioned scaling up?
>     >>
>     >>
>     >>> We need to add
>     >>> TRANS_VSYNC handling to the LRR codepaths and allow that to change
>     >>> during fastsets. And intel_panel_compute_config() needs to
>     preserve
>     >>> the vtotal-vsync distance when adjusting vtotal. I think that
>     should
>     >>> all be fine for DP since it doesn't really use TRANS_VSYNC for
>     >>> anything.
>     >>
>     >> Hmm I think I got some direction here. Thanks for making it
>     clearer.
>     >
>     >
>     > Hi Ville,
>     >
>     > Going through the Bspec, I have a query on the TRANS_VSYNC part.
>     >
>     > For NVL onwards, the TRANS_VSYNC seems to be deprecated. As I
>     > understand, this is no more used with VRR timing generator, instead
>     > TRANS_VRR_VSYNC is used.
>     > So we can avoid reading/writing it completely for platforms that
>     > support VRR Timing Generator.
>     >
>     > But for platforms using the legacy timing generator, BSpec says
>     > TRANS_VSYNC should not be changed while transcoder/port are enabled.
>     > Given that, should we treat TRANS_VSYNC updates as modeset-only on
>     > legacy TG platforms, and only allow the fastset path where VRR
>     TG is
>     > always used?
>     >
>     > Just wanted to make sure I’m interpreting your suggestion correctly
>     > before changing the fastset checks.
>     >
>     > Thanks,
>     > Ankit
>     >
>
>     Just an update:
>
>     Maintaining vtotal-vsync pulse seems to be working, along with the
>     change to always use highest RR mode as best mode.
>
>
> I see that the patch selects the highest refresh rate during 
> compute_config.
> Would that be sufficient to allow VRR based fastset when userspace 
> requests 60Hz at the initial modeset from userspace?


With this patch we only select the highest refresh rate mode when 
allow_modeset is not set (i.e. seamless path).
For the initial modeset from userspace, I think the allow_modeset is 
set, so we still pick the nearest fixed mode for the requested refresh rate.

>
> I think what we might need is that during the very first hand off to 
> the kernel driver, is when it always internally sets the crtc state 
> mode timings
> for the highest refresh rate mode such that when the usersapce 
> requests to set the preferred mode of 60 Hz,
> the mode or the crtc timings would be set the only difference would be 
> the Vtotal and it will meet the VRR fastset requirements and will be 
> able to achieve this 60 Hz using VRR

To clarify, there are two kinds of panels with fixed modes we need to 
consider here:

Type 1: Modes with different clocks (e.g. 60Hz @ 347MHz, 120Hz @ 695MHz)

"2880x1800": 60 347660 2880 2928 2960 3040 1800 1803 1809 1906 0x48 0xa
"2880x1800": 120 695310 2880 2928 2960 3040 1800 1803 1809 1906 0x40 0xa
For such panels, it is not possible to seamlessly switch from a lower RR 
mode to a higher RR mode, since at lower clock we cannot increase the 
clock without a full modeset.
But seamless switch from 120Hz to 60Hz can be achieved by running at the 
same (higher) clock and just extending the vtotal.

Type 2: Modes with same clock but different vtotal

"2880x1800": 60 709633 2880 2888 2920 3080 1800 3800 3816 3840 0x48 0xa

"2880x1800": 120 709633 2880 2888 2920 3080 1800 1880 1896 1920 0x40 0xa

Here the clock is the same, so we can go from higher RR to lower RR or 
vice versa just by changing the vtotal.
Seamless switching is possible in both directions.

So if the initial modeset is at a lower RR:
For Type 1: a full modeset is needed to go to higher RR. After that, any 
lower RR can be reached seamlessly.
For Type 2: switching to higher RR and back to lower RR can both be done 
seamlessly.


>
> From the userspace perspective, 60Hz will still be the preferred mode 
> as advertised by the panel, but internally if the driver can always 
> set the timings for the highest refresh rate, then switching from 
> lower refresh rate 60 Hz to higher refresh rate 120Hz would be 
> possible seamlessly.


The problem with always programming the highest refresh rate timings on 
the initial modeset is Type 1 panels.

Suppose the user explicitly requests 60Hz (with allow_modeset flag) 
which on a Type 1 panel means 347MHz clock for power savings.

If the driver internally programs 120Hz @ 695MHz timings with vtotal 
extended to produce 60Hz output,

the user ends up running at the higher clock. This defeats the purpose 
of selecting the lower RR mode.

So in the patch I have gone with the approach:

If user sets allow_modeset, then do not go with highest RR mode, but 
find the best fixed mode as per existing logic.

But if it does not sets allow_modeset, then go with the highest RR mode 
(later adjust the vtotal).


Regards,

Ankit


>
> Regards
> Manasi
>
>
>     I still need to address the comment about avoid
>     deriving allow_modeset
>     from connector state directly.
>
>     Cc:
>
>     Manasi Navare <navaremanasi@google.com>
>
>
>     Regards,
>
>     Ankit
>
>
>     >
>     >>
>     >>
>     >> Regards,
>     >>
>     >> Ankit
>     >>
>     >>>
>     >>> +
>     >>>>       list_for_each_entry(fixed_mode,
>     >>>> &connector->panel.fixed_modes, head) {
>     >>>>           int fixed_mode_vrefresh =
>     drm_mode_vrefresh(fixed_mode);
>     >>>>   -        if (is_best_fixed_mode(connector, vrefresh,
>     >>>> +        if (is_best_fixed_mode(vrefresh,
>     >>>> fixed_mode_vrefresh, best_mode))
>     >>>>               best_mode = fixed_mode;
>     >>>>       }
>     >>>> @@ -213,10 +213,11 @@ enum drrs_type
>     intel_panel_drrs_type(struct
>     >>>> intel_connector *connector)
>     >>>>   }
>     >>>>     int intel_panel_compute_config(struct intel_connector
>     *connector,
>     >>>> -                   struct drm_display_mode *adjusted_mode)
>     >>>> +                   struct drm_display_mode *adjusted_mode,
>     >>>> +                   const struct drm_connector_state *conn_state)
>     >>>>   {
>     >>>>       const struct drm_display_mode *fixed_mode =
>     >>>> - intel_panel_fixed_mode(connector, adjusted_mode);
>     >>>> + intel_panel_fixed_mode(connector, adjusted_mode, conn_state);
>     >>>>       int vrefresh, fixed_mode_vrefresh;
>     >>>>       bool is_vrr;
>     >>>>   @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct
>     intel_connector
>     >>>> *connector,
>     >>>>                  const struct drm_display_mode *mode)
>     >>>>   {
>     >>>>       const struct drm_display_mode *fixed_mode =
>     >>>> - intel_panel_fixed_mode(connector, mode);
>     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
>     >>>>         if (!fixed_mode)
>     >>>>           return MODE_OK;
>     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h
>     >>>> b/drivers/gpu/drm/i915/display/intel_panel.h
>     >>>> index 2f7a317995ea..c1189a20c8b2 100644
>     >>>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>     >>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>     >>>> @@ -32,7 +32,8 @@ const struct drm_display_mode *
>     >>>>   intel_panel_preferred_fixed_mode(struct intel_connector
>     *connector);
>     >>>>   const struct drm_display_mode *
>     >>>>   intel_panel_fixed_mode(struct intel_connector *connector,
>     >>>> -               const struct drm_display_mode *mode);
>     >>>> +               const struct drm_display_mode *mode,
>     >>>> +               const struct drm_connector_state *conn_state);
>     >>>>   const struct drm_display_mode *
>     >>>>   intel_panel_downclock_mode(struct intel_connector *connector,
>     >>>>                  const struct drm_display_mode *adjusted_mode);
>     >>>> @@ -47,7 +48,8 @@ enum drm_mode_status
>     >>>>   intel_panel_mode_valid(struct intel_connector *connector,
>     >>>>                  const struct drm_display_mode *mode);
>     >>>>   int intel_panel_compute_config(struct intel_connector
>     *connector,
>     >>>> -                   struct drm_display_mode *adjusted_mode);
>     >>>> +                   struct drm_display_mode *adjusted_mode,
>     >>>> +                   const struct drm_connector_state
>     *conn_state);
>     >>>>   void intel_panel_add_edid_fixed_modes(struct intel_connector
>     >>>> *connector,
>     >>>>                         bool use_alt_fixed_modes);
>     >>>>   void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector
>     >>>> *connector);
>     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
>     >>>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
>     >>>> index 2e1af9e869de..e07c1070a3ec 100644
>     >>>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>     >>>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>     >>>> @@ -797,7 +797,7 @@
>     intel_sdvo_create_preferred_input_timing(struct
>     >>>> intel_sdvo *intel_sdvo,
>     >>>>         if (IS_LVDS(intel_sdvo_connector)) {
>     >>>>           const struct drm_display_mode *fixed_mode =
>     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
>     NULL);
>     >>>>             if (fixed_mode->hdisplay != args.width ||
>     >>>>               fixed_mode->vdisplay != args.height)
>     >>>> @@ -1396,11 +1396,11 @@ static int
>     intel_sdvo_compute_config(struct
>     >>>> intel_encoder *encoder,
>     >>>>           pipe_config->sdvo_tv_clock = true;
>     >>>>       } else if (IS_LVDS(intel_sdvo_connector)) {
>     >>>>           const struct drm_display_mode *fixed_mode =
>     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
>     >>>> conn_state);
>     >>>>           int ret;
>     >>>>             ret =
>     >>>> intel_panel_compute_config(&intel_sdvo_connector->base,
>     >>>> -                         adjusted_mode);
>     >>>> +                         adjusted_mode, conn_state);
>     >>>>           if (ret)
>     >>>>               return ret;
>     >>>>   @@ -1562,7 +1562,7 @@ static void intel_sdvo_pre_enable(struct
>     >>>> intel_atomic_state *state,
>     >>>>       /* lvds has a special fixed output timing. */
>     >>>>       if (IS_LVDS(intel_sdvo_connector)) {
>     >>>>           const struct drm_display_mode *fixed_mode =
>     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
>     >>>> conn_state);
>     >>>> intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
>     >>>>       } else {
>     >>>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
>     >>>> b/drivers/gpu/drm/i915/display/vlv_dsi.c
>     >>>> index 76e8cd0f65a4..bfe465443d20 100644
>     >>>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>     >>>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>     >>>> @@ -280,7 +280,7 @@ static int intel_dsi_compute_config(struct
>     >>>> intel_encoder *encoder,
>     >>>>       pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>     >>>>       pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>     >>>>   -    ret = intel_panel_compute_config(intel_connector,
>     >>>> adjusted_mode);
>     >>>> +    ret = intel_panel_compute_config(intel_connector,
>     >>>> adjusted_mode, conn_state);
>     >>>>       if (ret)
>     >>>>           return ret;
>     >>>>   --
>     >>>> 2.45.2
>
