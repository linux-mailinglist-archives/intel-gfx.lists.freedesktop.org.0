Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CAFA18775
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 22:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B12710E226;
	Tue, 21 Jan 2025 21:43:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MTyUKdUO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E102E10E226
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 21:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737495819; x=1769031819;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=bELQYtIOtBcMbP1B6y/8/Dc8lk+MNk+M2uWj9CM1xhw=;
 b=MTyUKdUOc2bD8E0Fipdn+/4Q27v1U93qPFJYUKFJk6o584EwReHwj1zc
 fVqvHviHLuXuDk3sgybLsmGLrE92bzWQA6NQzf6/IW77KydrsMOrb2xht
 Iv8xWAa8FC/slIfkUzqwXwUpQORABJMySJztiKG7cCTi74nzC8DZDnT/L
 F1FcWz+Ck7kOoVuMUSUmgADc+gitKusaYbnpM/T9iD9klPU+1Qq5ZGmDL
 Wo7+tqWSKcGhqORAoKiQCcmHqjrpbWfMvRTxKzqUS1KWG6kUQI3G+qlDO
 KC3xCEKsRxPjaKghlkunT2yPK0jcibycg3Rocaaq0u/Foq1aJjGQxzaXf A==;
X-CSE-ConnectionGUID: kKulVbZgS7qC+/F8ao+PLg==
X-CSE-MsgGUID: PglA5KpxTYeYHwXyfCH3/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="37807406"
X-IronPort-AV: E=Sophos;i="6.13,223,1732608000"; d="scan'208";a="37807406"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 13:43:38 -0800
X-CSE-ConnectionGUID: fpusbz2mQfmcaHERW1fsng==
X-CSE-MsgGUID: Mqe0hnsPQ3uT3XujLByIxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,223,1732608000"; d="scan'208";a="106846851"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 13:43:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 13:43:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 13:43:37 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 13:43:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zTxK2F/8J5PwWjeqErUROuor1huGvkFEby2JIiOQUVckjDixm4OfpoB0LMWsFG3kK4MJynddU8uQCB8Z9lyIGQHWRC09CvSBVMoy+etulIcEWNU9ZNrA7Islt48GDtRhJtN7/DGt+e5TkVnE/BhYklO+HmjQDvbzLoXGod1HYNqhHlXa03hrTwFgL+ss38EJHOiKECtSZrUSU3/PFw1OrllooodTyJ33kTjOjefUBDE7pdjFlFwL534MntfaDGi/76kHQ/lH0WzEw7cWMnUL4juA2Xfb+33tO+GlHFNzBuOknI3RvCFmCwPRbMrRCqaJdBijKonr4dmz22BBdb8BFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6AmyKWSXGGpNTQEomngiiGg8iwQLAv0fEP7uv91aunw=;
 b=VrUT8BivfH14BFQg4xVx+NlL9VoVKYu/TbIpOBs8nUTXjg6ZiiBECKiPiltZ+VBVoH2T2NlHE2rnxlgW8FB1HYziFe6MHSYlJapa7dP1ul3x+oiZj7o1FRuOTqmMiCkmpHi94np3ZTshfnYXF2zUccDf9n1x05TzCnt78BdzSrheoRTkZXHzZOzYCu1sz6rgjD9I9MT+ZA6W6XtsuWZMIxkMv1DtDRnZ17s3quDUA+6K0ZwksFlVz9lfq2cU3ITAI25hG0p8l0+Mv7HvCIsi+rXP2fb4Dyld/s5VnmAAynKLyYlT5bz+5kDYqIJzCsP5nlsVSu2Zud/mVbfmtutilQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA3PR11MB8001.namprd11.prod.outlook.com (2603:10b6:806:2f5::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Tue, 21 Jan
 2025 21:43:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 21:43:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173749497860.2760265.1169233750767476035@b555e5b46a47>
References: <20250121202806.76103-1-gustavo.sousa@intel.com>
 <173749497860.2760265.1169233750767476035@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.BAT: failure for drm/i915/cmtg: Disable
 the CMTG (rev7)
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, Ville Syrjala
 <ville.syrjala@linux.intel.com>
Date: Tue, 21 Jan 2025 18:43:28 -0300
Message-ID: <173749580853.2761.3475424263746475959@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0243.namprd04.prod.outlook.com
 (2603:10b6:303:88::8) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA3PR11MB8001:EE_
X-MS-Office365-Filtering-Correlation-Id: e39b8ad0-519a-4ecf-1ff3-08dd3a64a767
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MDJBNVNTMlBCMlpJSlY2bXlybTZ0QmxNdUZwcHJLVDJDMno3YVZkTjJrVXI5?=
 =?utf-8?B?OGRPaDhsUytLYWFac0ZsNkcrWnRvNDBSOE9kNFJoanhTZmZleEE3YisySkVV?=
 =?utf-8?B?bm80VWR3NDFncFREbnBCVmtqcnpyOW1RRzgvbEV3RFZnZUh0VUJVblViVjJS?=
 =?utf-8?B?K2hveGFjTlk3UDhSOWZsN2pxN3hpRTd2TmoxZ2s1aFpJUU9YMi9ycUZmWnRR?=
 =?utf-8?B?b0NZU3VHY3JTNEpvSUg2K05CSWpwZTRrNEN5R29IU3lVNm5xL1NiYjRxcmg0?=
 =?utf-8?B?OHQ5OGhQWHJ1OWZtem1DMXh1V0E2ekVOSm4xN1dMeTVpVFF1S2NHNzFnN2ds?=
 =?utf-8?B?MXFKL2VLTlMvTTdUUzIyR05sZXJ5VnZmc1pFcWFsTytoWXpUWkN2Ykc1alBY?=
 =?utf-8?B?My84UmNUMzJTMnlaUFVwQStsNVFyNmZkcmNobzlpTWJnbmNDRkhMdVZLczUx?=
 =?utf-8?B?OGJyNWk5VHdoa1JsdWxFT2JDNlkyUDFyU3YxUXI4Q0F4VWd1dENJVk5kdFpo?=
 =?utf-8?B?K0h1UHo0eHRkSEJBS1UzOWUyQVRPc1ovMk4wWWVEWkZ2RHpNVnFmY1FSSVZI?=
 =?utf-8?B?b1BCRW9qWGNNamJCQ1Bidm1xYTdtclJ4cFN2b2RJb0hIZ3l4TDgweUZWaFBw?=
 =?utf-8?B?YUpSeWZmSlQxNTB6QU1oYmNhWkg4ZEhxWGsrMWFJNHl5WCtURGd3eHNkMDRU?=
 =?utf-8?B?a2dRQjlpMkFxQmIrbUU1blJ6VXR1eVNqdVdRc0Z4TmFQVkNKYis3SFNxNjAy?=
 =?utf-8?B?N0dXbGlPbnVoSjRVQ1UyMkdZaVZnTWEzMStlaktQMitpZ0cza0NjUXdTUHVv?=
 =?utf-8?B?N3NCT3pkTHBRMGFxUkxEd3dBWHZvbGFsTlJZM0thTVFxZXJNYjNkb2s5N0cz?=
 =?utf-8?B?Y25kd1pRaVF5S0xSYy9wOTRDUldtMkJoSUYvZ01NOVd1TFYzbG5JK1VrT1Ez?=
 =?utf-8?B?ZnVwQTBnNVdSSjc0azNtWmp5Nk9TN3FGRlI4UDRPRVcwZXFYMzJyN202L0kw?=
 =?utf-8?B?VDgyT1hmWDVka0k3czhISUtmK0FZdEl3emx6VWhXeXlMdDV2VGtpOG1MVUdp?=
 =?utf-8?B?UUdSODFYRENqSFVzc0hKOUgrVXMwSndTWlNuWmJjTXpYbGJMM000RXlyS095?=
 =?utf-8?B?b2lyeWtYRGRCNm8wSEpIZUZ2ME84VmZQdXVwemdXR2dMRjd3MFdpVW11WXJG?=
 =?utf-8?B?WjdjSDFNQWNqRzdTWXA1MzM1YU02SVlrSU5ENzdLcWJrTFBVK2RFVVJNZDd6?=
 =?utf-8?B?WlFFUnJ3NUxMaDIwa2x4Nm5HNnN0bjdhdDVKZDNBNUc2VWZad0lMa2NSK21K?=
 =?utf-8?B?cWxENWdJbkZoUk54M1czSnp0UU1rZlVUZlA2SnpXenJEZUtXc3d2NXJFT0pV?=
 =?utf-8?B?MUZ4QURrN1M0L2p1VmloUG9PU2ZwaVJXWk1HdFMzeXBxUWVaclZHeXE2bm9n?=
 =?utf-8?B?SWhTVUZkdVlQUEYrOWpHZGVoa0lydVByc2RpekZwU0dGUWptZTVPNHdDL21q?=
 =?utf-8?B?ZHkwbzFXY0VLRkxsdHgwS0FJOVpIb0lDNXJKeVE1WlA2VWRrTWQxWmF1RmRV?=
 =?utf-8?B?SVZWdjJMakx1ejR6ODRYOWhDaXJzaVcyVGhSc2VNYXQyNUdUTHcvYWRVMFQw?=
 =?utf-8?B?UjErMXNId09YUzhtUG16cG9LSVdmRy9udXhreEdEZlhROE5qUllvRWtKRWN5?=
 =?utf-8?B?M3ZHMDB3c0wxL0dEc3M5R2VrUU1ET1RVenlCYm1nOXMvUmQ3RnNwTnBlMHRr?=
 =?utf-8?B?Nm5KNGh4cVo1djBtb1hHeHA3cG0wUXRxcXA4KzN6S284WUIyamgyVmVRM3Qx?=
 =?utf-8?B?U3ZMOVhYUDJCZEFpZWdRUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVpqY2luOG95dGpxaUtRZWFIblFESVdFSTZEQlBETFRXdFEvdXR4ZWZTY3Ru?=
 =?utf-8?B?MGxDQ25xM2hHM1lnU0hzTTVQa1JyT09NK1M3UDJWVU10NFJsOTJDSkFnVHhs?=
 =?utf-8?B?aVZUZG9kS0lOck85bW14ZjZjNlZpUjQ4VTZkanNrUVJad0ZCazA1V0hNSEYz?=
 =?utf-8?B?QW1HTy9BL21YeG4yQXJ6anMrMFV2bEsrSW8zaGJVejN2aDUwcWZLWDhWUmU3?=
 =?utf-8?B?dTRIVVdYN0N0bExYZ004d09xT09HQUg1UDVieDBscjdYUS8yQjdxL2J0RFVp?=
 =?utf-8?B?T2RvMWtNTURTTmNDZ0s2eWhoYXZRRTA1eHd2SWFqSkpPdWV4T29tWk96SjJx?=
 =?utf-8?B?TW5YS0h4bGV0U3B3UkU0bitZcHM0ZHI5U2oyelZDd3pqeFdFcGdFRnBjcUR6?=
 =?utf-8?B?dCtmTGtmYnZMeThGWWVnSWZ2dDVJbVQzaDZ6Y3NpNWo0aUZkU1QwUzQwbGpq?=
 =?utf-8?B?N3pNN25jR3lxaWRQQityK0VvNDNmV2JheEpIWENVaDlVZENmblVjZGU1MGV6?=
 =?utf-8?B?ZksxYUpnL08yeGJZSjNyZS9aeThtbGxQbTdueExCb1dXWTFUN1ZuMlNQK09w?=
 =?utf-8?B?NnhYZ3RwaGt4TG9EeEcwOTUzTlp4SHk5L3RycEVzNithYk9TQ2U0eDdMOG9i?=
 =?utf-8?B?cU0rQUp5Vkd2VkkwbmpmYmxDcFdqaHVDS0FvcnF2blhLNUduMk5QYi8ya3JC?=
 =?utf-8?B?OHMzd0NQTVVna21WWTRma3lQUVJNa05ScVhwbE1qdG5IYUo2QVR6cjkra3hR?=
 =?utf-8?B?MU1qZjhhSGZpVk5HS3NsMHJKVHZwU0ZUU0hXUndOWGQ1VVZPNCtxMXhsL1o1?=
 =?utf-8?B?VENxUzA2Uyt0QTdTeTN6T2lUOS9KZ0UrMXpVV3FzdDVDQ2dzdGorOVVhRmZv?=
 =?utf-8?B?TFp6VlBzWDhSVThTWTB6c25kYklxMjhLVm1VY0s0aXY0bUdYT0x1TGVSNlZ0?=
 =?utf-8?B?aUtHcUxFa0pvNk9GYUsraTA1UWgxanVWTTFzQnFTVFhyRzIyVlBtTFJHeUxB?=
 =?utf-8?B?STBRczRiYUxqT0FWL0VIMjZTTDY3cS9qQVoyU1RBNFk5V085emJHSHZzUmNh?=
 =?utf-8?B?WDQyVVdZZEk4QS9LemZoSUtldVV3eGRRb1FEdEhTYzFlSEFqdk9xVU1sRllR?=
 =?utf-8?B?NjloejI3NHVlTWV2S01WREQyWUZsQ1VUOEo4N0FCM0djMUtENTBxTENPd2Qx?=
 =?utf-8?B?MFJidURIdXVGY0NOTjFnKzFoYTZzTitHUDk0MkJTUlZSc1dtbHNVR2d5eE5s?=
 =?utf-8?B?MVJsMDhaMXVvTFd1dGRoNUZlUXlia3U1bHRLL0EyS0FJYXdNTnpkZzFDdWY0?=
 =?utf-8?B?d05SdUJJbjRtcE1yVkJTMTk4QWVTVVA5UmVseHVCaW9TbUNmSUxRR1dzaHBo?=
 =?utf-8?B?c2dNLzBKYTZ5dHVETk83Q0szUDdIUTRITnI1d3lFa3ZtTjlmV1F1Y2tMZHVX?=
 =?utf-8?B?MjJGQW9zWXQvUmdTL3VIWCtwbEJId0NBTEdUUG5MMys2RTJWVVh1U21saGR1?=
 =?utf-8?B?THlFdHgvSUYxczE0RkZzSHBqS2FseWFaUTJwemRxYjdya09Wd1ZqemFXNDNk?=
 =?utf-8?B?Y0V3aDlkaWhZaTNiY1cwV1IyelFpNHJvNXFDZXU0VXV4RjNKR01yMm9vUkdX?=
 =?utf-8?B?Skc1TVpTMmJYTE9PZXpEVzBYeWJCQjU3V09SQlFEMEZRaXczcTVXeXZ0VnJw?=
 =?utf-8?B?WG5xem1ReThmQkVIZDdmcGhpMXNlQyt0dHB0NG5IZkRuRU9xL2ptUFc1Y3A1?=
 =?utf-8?B?YzBrMjRDaWh5MTJySzBSWUtKUENjblpZVUZJQ0twYWVwVkZOaEswMW4xZmtT?=
 =?utf-8?B?M3hETGxuU1JlUUNrSFY5OE54d2JWOStmbGFFWHdsaTV4T0pneDJaNW1nbmxR?=
 =?utf-8?B?N00wTXhIRGF4b2M1L0E5Y1VxOXJoam96Z1o4ZkRBSTA3UGZqblE1WWZ1bXRy?=
 =?utf-8?B?YVNqUkYyNFZlZkRsSWdjdWphMzlLNVN5cjlYU0psbkVXNytyMkltc0QwcVda?=
 =?utf-8?B?a1pPVjF5b3dIRDM4Qlpja0tCdWVzT0lMMWZKOE5ReVU4ZlpRN1Y4L3d2K2ZT?=
 =?utf-8?B?MWR3OHFzOGtoRXVsVE9ZWitoeVM1bFhCdmowTWtQbU9TMGM4ZVZpaDNoZ3NK?=
 =?utf-8?B?dnlhbndBTFA4SFc4ZGJjRHVVUGs1RDNDVXRkZmFCS1pRRlo5OTJyOVJoUC9M?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e39b8ad0-519a-4ecf-1ff3-08dd3a64a767
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 21:43:33.9388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mYlNM0lDFwX80FujaYYVZa3LVZyqhEDuEJUxclA8EFoXywCn4w+ixhBLxKNdlibmX2hpCMi6/zi5JRACQWWlLA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8001
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

Quoting Patchwork (2025-01-21 18:29:38-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/cmtg: Disable the CMTG (rev7)
>URL   : https://patchwork.freedesktop.org/series/142947/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15994 -> Patchwork_142947v7
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_142947v7 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_142947v7, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v=
7/index.html
>
>Participating hosts (39 -> 39)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
142947v7:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_module_load@load:
>    - bat-arlh-3:         [PASS][1] -> [ABORT][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-arlh-3/i=
gt@i915_module_load@load.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-ar=
lh-3/igt@i915_module_load@load.html
>    - bat-twl-1:          [PASS][3] -> [ABORT][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-twl-1/ig=
t@i915_module_load@load.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-tw=
l-1/igt@i915_module_load@load.html
>    - bat-adlp-6:         [PASS][5] -> [ABORT][6]
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-adlp-6/i=
gt@i915_module_load@load.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-ad=
lp-6/igt@i915_module_load@load.html
>    - bat-twl-2:          [PASS][7] -> [ABORT][8]
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-twl-2/ig=
t@i915_module_load@load.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-tw=
l-2/igt@i915_module_load@load.html
>    - bat-mtlp-8:         [PASS][9] -> [ABORT][10]
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-mtlp-8/i=
gt@i915_module_load@load.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-m=
tlp-8/igt@i915_module_load@load.html


Oh... Looks like GOP also enables CMTG, so it seems we do need to also
tackle the case where we need to sync CMTG disabling with a modeset.

--
Gustavo Sousa

>
>  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1:
>    - bat-rplp-1:         [PASS][11] -> [INCOMPLETE][12] +1 other test inc=
omplete
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-rplp-1/=
igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-r=
plp-1/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1.html
>
> =20
>Known issues
>------------
>
>  Here are the changes found in Patchwork_142947v7 that come from known is=
sues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@i915_pm_rpm@module-reload:
>    - bat-dg2-11:         [PASS][13] -> [FAIL][14] ([i915#13401])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-dg2-11/=
igt@i915_pm_rpm@module-reload.html
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-d=
g2-11/igt@i915_pm_rpm@module-reload.html
>    - bat-apl-1:          [PASS][15] -> [FAIL][16] ([i915#13401])
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-apl-1/i=
gt@i915_pm_rpm@module-reload.html
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-a=
pl-1/igt@i915_pm_rpm@module-reload.html
>    - bat-dg1-7:          [PASS][17] -> [FAIL][18] ([i915#13401])
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-dg1-7/i=
gt@i915_pm_rpm@module-reload.html
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-d=
g1-7/igt@i915_pm_rpm@module-reload.html
>
>  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>    - bat-dg2-11:         [PASS][19] -> [SKIP][20] ([i915#9197]) +3 other =
tests skip
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-dg2-11/=
igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-d=
g2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>
> =20
>#### Possible fixes ####
>
>  * igt@i915_selftest@live:
>    - bat-adlp-9:         [INCOMPLETE][21] ([i915#9413]) -> [PASS][22] +1 =
other test pass
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15994/bat-adlp-9/=
igt@i915_selftest@live.html
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142947v7/bat-a=
dlp-9/igt@i915_selftest@live.html
>
> =20
>  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13=
401
>  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/919=
7
>  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/941=
3
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_15994 -> Patchwork_142947v7
>
>  CI-20190529: 20190529
>  CI_DRM_15994: 400d5a3912504bf740150101c9e5884eae2630ea @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_8203: 3dce04be4ed4c0e729d80f70caff8ae8a869b5c0 @ https://gitlab.free=
desktop.org/drm/igt-gpu-tools.git
>  Patchwork_142947v7: 400d5a3912504bf740150101c9e5884eae2630ea @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
42947v7/index.html
