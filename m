Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 386D0C33F30
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 05:51:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F6410E6AE;
	Wed,  5 Nov 2025 04:51:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Czhx/UrL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8629110E6AE;
 Wed,  5 Nov 2025 04:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762318287; x=1793854287;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rsKNsg/cqjI9UT7pgrS9ohCkemQiuYTERDPzrcIfm8U=;
 b=Czhx/UrLJajHwm3X/rkZbOLxyDeWQVAYeO9xfataktyIcnm9b9sC3rls
 zrxjGBx411i9zNIVgjN/UYN9yjcZSVEZ8sTgOh9cXI14kWJ1587D5NaU1
 go5yl6WuwIFF67uE6To5viT0AE+uIbr2WGscdXaqJzZZMe9wQabZQrQfN
 3fh+pDiwzwR2HN/5nDW+EWhZzhbxOjAxVKnhzM8tnyoqUVl4+AJE4E2pe
 Re1ASvCXKeSR3l61KuQOEMTOylc4kIPdwHAts6r2fa9NQXDIVc2omrTgw
 DOnSCVo87/ur5VGJuJF3aot2rNNR5+SKKTx16nbQ5CLwurxoJ/V50w1LA w==;
X-CSE-ConnectionGUID: 09x0wqZNSBOjb0s36uWDEQ==
X-CSE-MsgGUID: iorPGfZtRiuWyD4xys19rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64573166"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="64573166"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:51:27 -0800
X-CSE-ConnectionGUID: G8odZzrFQGy1gQdfKKTRtg==
X-CSE-MsgGUID: F+Q3n3JFS1OpNUXXTyzYxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="224597876"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 20:51:26 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:51:25 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 20:51:25 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.19)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 20:51:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XKM787NRPG31EXZsRLbiRTj+jFI43cvAuDBgLg5BHF9Li23bG7Jo1u5NOuvrbO9gU9TeOWutGcyxw3wnb/NKMApsQBUQWYvkdzFaWmT/XvX5daKtutbeBjlJvS2UxT+B1lcMZ2NfCSYxbLsPC3U0hGGGiP2T40NvCGT2HdfoRFo6MwQODt5li4zMZNfpay0S1Z1809urE+BDLur/Y0NpU+T1uIxJ6kf8FR3iXvN9Ud6A7z5DywfX4GnNrtiNYwhHvLq2aEzQnNUm7jjoeFVGPyTTpKyZawPnUprq4LgJ/pgbzwliwQuuajdSvn4PeOlrsWA0EBXiJssM5Ing7COEEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y0/zOQqnrYjdl0euY0T9VQFByD9hzXIQGAXK31AyG/w=;
 b=d5EOtHBq6G3v/48iImc2RogFg2pH3jAjIBaBM+O7dsM6LlXngjAv7a6BmFNLWnxImcIInTYCDVMwA1V/G0np7CEFQ9UiSRTNOAaPHoE77BN5QWw9PxtbjcFbI4GLqj9N+dsqiJVPAjX2/VPN7MgT3fx9hNCLexAWql+kW/1lVbnOIJcFhA6LGl4XbxP3MrCOLtcF8yya3Zd6EhUKxQxazTLKk6J5Ky/s5al/XBNi9rRFHOFy3reM933bf99CDB86OkhedDdV2nKzhsK0LYd4MK9GlwLgIzwkVKG5iCjLIoFUc+gU1XVxuNqIUv30cOHODreJ2ntrS3OqfzIEcK+IgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8319.namprd11.prod.outlook.com (2603:10b6:806:38c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Wed, 5 Nov
 2025 04:51:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Wed, 5 Nov 2025
 04:51:23 +0000
Message-ID: <10514139-6943-4988-8585-5c7ad5987635@intel.com>
Date: Wed, 5 Nov 2025 10:21:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND, 09/22] drm/i915/vrr: Increment DC balance flip count on
 every flip
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251103053002.3002695-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0103.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8319:EE_
X-MS-Office365-Filtering-Correlation-Id: bc17dfb2-e3c4-4663-bb2b-08de1c26f7ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDFibjlZUjVSdm1aUlkwM0hHa0duNjJYdXZZVmx0S0svUzRiUEt3eENnZ2lQ?=
 =?utf-8?B?K2NnQ3ZoQi9Wcmszalh1dFY4djhQb0ExZzdkajJsb2gvQ3BubVpHdUs0YVNw?=
 =?utf-8?B?bWtVbVQ1UWJUWGFiR0FVc1Jad1dTMFM4V25QaG9QdnpUS3FzNXNtQkZZU3BZ?=
 =?utf-8?B?YklFbnZmM2M5N3hiS1ZqN0N5VzNkMzI0TFVIaXdlbUVyRGsrTDdDZTdlTDc1?=
 =?utf-8?B?OE43MDdyM2ZPR1A0OVVFYVJ2KzlkY3lTZ2NSUlh0VGM2ZGhBVHBoZHlZMVVl?=
 =?utf-8?B?Znc2eCtOSDBtZkYyb3VxbmNvV1hHdXlDS0NDTTRvcXp6cE1mQk9wSTU2dE5a?=
 =?utf-8?B?TUVuNkJsTG0xMTBiWXRiMG9weW8xNkJEblI1RWk0TEpIc1o2aFVDNUhxaDJX?=
 =?utf-8?B?M01LWCtweFJTelg4WEVrekgwR0RCbUdiZ29JemNaci9uTzA4UXl2WERNVTM2?=
 =?utf-8?B?ZVZBUjFybktxSjQ4NGJEWkxDREpyelo4WVgveFo3enlDRzJEQktMTFFGN3BJ?=
 =?utf-8?B?WlZTYVFqUDd4bTZZeE9CZWV1alpOeGhmamdPcTBGcGlXU2xJOXJCYzVnOVZx?=
 =?utf-8?B?Z0VmT1loMHErZnRMeXkwOTRIaHZ6QlRsNko2YU9HTHp3RGxkY3ovZEFDVFJY?=
 =?utf-8?B?YlhNRWFMOHV2RVNhNjJhajQ3TG41bDlnMjNMelg3VTNwRGVMNHk1U2tpdmtq?=
 =?utf-8?B?MjYwNFNIb2lxVnFUQjZOc1hQelFDTFVKTWRUMG5zL0NjVktvLzkxaS9nS01q?=
 =?utf-8?B?OHYvSlQyaC9pOUZNeFVTTC93dWtUMGxrSWtYQndPbXplcHYxb0w0bjhPNUZ5?=
 =?utf-8?B?bEdCRTBuMm9wNVhTVWhCNTd1aFU0Q0N4WE1raXBaam81Rm1ITys5OUdiWDhm?=
 =?utf-8?B?d3VyV28zc2JQNTVXS2xxQ2NqcktaNmllSks3ZWpyVS9neVBjWjVjT3Mzdy9L?=
 =?utf-8?B?TnlibWdjR1pSK2I3QVV0MS9EZkZYMThzM3AvSnhNN0l4ZTRPZE9oQW1lN0FE?=
 =?utf-8?B?MFJRSnVGRmcyeUowVitucmdkVHFBbU9vU3FCTk1IRzRPTXFDbFNpeEZNUFVG?=
 =?utf-8?B?aTBqNk90YW9xcHNkSE5OM1pFLzl0KzR3L1RNcWZxT3l2K3hqamk5USt1K3d5?=
 =?utf-8?B?cGwwVUg3TVRSakRMMitCazVIa3luK0p1NGM4L1J4Y1htcUlROEZBbE5sZzZK?=
 =?utf-8?B?UExxWlRXYklhNk1DbFl4RncxUVlHb0orVkM0cEVWQ0dId0o5MkMyVUgvVjhs?=
 =?utf-8?B?RmJOc1VITWtIblNaY0ZmeUhGc1JvcmN4c2dvQ3BOR0dVZnkwVW5mSUdpRmJS?=
 =?utf-8?B?alI2WnBxNEdsaGVsS2ZrbzFsVHMzY1VyQmtLamY2Y2pDRE1yak5oOWRXSkkz?=
 =?utf-8?B?SHE2WG1GdTRzVUtTSkg5TEc2cWFZekprTFlDU2hjSUVOZFNqU3FhcjJrajkr?=
 =?utf-8?B?OGdndXRIYzkvVDlXc0ZwT3E3VHVmOWlLZVFmeUlkWmxnRHoyVXZGMEhDdmVB?=
 =?utf-8?B?VFBDMzNKa2FEUzlFUXlKTFJ3a25rVEJoUGRhdnBSUk1KL0V2ZFVBNlZvbUJ1?=
 =?utf-8?B?UjlNQ1lWNGpGa0Q5ZEdTUkhnWGNsUk4vM2lsNXc4bTEyU0xDWG1WT0R0ODlD?=
 =?utf-8?B?Qms5WGhxQkpMMDd5eEk5cDN1bWlNUmQyN2JxcFc0VTdsY0FkbFVBdVZnVnl1?=
 =?utf-8?B?dlA0elRkMUpDekZJeitPRlE4Z2x4b2plY1NNU1hZU0xtSnFwZGtPQUZoeXVn?=
 =?utf-8?B?SG1yT0hNaGdHaVNjdjUvTDRQTlh0NlNra1VDbXU5V3VBajQ3SmRDZnkzWDR0?=
 =?utf-8?B?eFdtU2swWFFoZmZoVlJPSDVneUZSN0szNnJvYUdsam9QZ3NMUm1NdW9SM0pm?=
 =?utf-8?B?N2JYS3RKNWxyMnpKUWhJNDc2Y3RGc3IzdUVyYlVOSm55QjlwZWV2Z2E2Q0NR?=
 =?utf-8?Q?az+9+fc7/Vhx/J2EkISjYVnRL4RypJg+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkxpSkdQeUpHTVBWSTZmY3NKRXZCR1pZVmEyQTlaWnNPb0Uzb0kyNG4rRDhG?=
 =?utf-8?B?RnhLSlZrT2JlUnJEbEVXTVZYVit3ajdLY3M2VXRFM3BDcnZ3MU9sVW5PQ1Bz?=
 =?utf-8?B?ZWtCV0cwMGVSVWNXMWxmVm50Y2U4QmU5Y05CVG9rTFZNdmc2QllVK1Q0Z1Rx?=
 =?utf-8?B?cUJPTHNZOVl0eDR3Wjk2ek1SSzdFTFZ1TG43ckRXV0VVb1NrZTVQYUY3Vll6?=
 =?utf-8?B?YllBTzU1R04xVnRoWngvZWhWbDdYRWFoY1FSNmk5TXVyc0s4c0F4YjdabWJK?=
 =?utf-8?B?d240SitmUmhFQVJ5L0p5V0MyMm1wQ2dDNnR3aTQ5eG0wUUlSQ0dzUWZLQ21s?=
 =?utf-8?B?Qmg3M2Q4MzhUOTZHbVRERWxMMXI2cjdrekFZYk0yQVMrbGptYkdLNTJjQmlp?=
 =?utf-8?B?akRiOUIxQ1g2KytjeXJHaGl5emtoVENSSjBySEJNQ01MME9CV2hMaDBtQkR0?=
 =?utf-8?B?bE9QVHlRRXdkVkRHMWpySzJPQnBpM3RZMTJnbEorb2FhWjIzaHNqZWZVVG1v?=
 =?utf-8?B?bVhXTUNMT1NYRXg0LzNEMWRZN09ta00yRy9hZUNlZ2UwVHZIWG5yREJ0TStJ?=
 =?utf-8?B?dC9PTVExT0NFc1h2U25Fc1RDRS81d3NKOUkvQk9rNWlGQndMd0xEQ1ZmWjBW?=
 =?utf-8?B?clZlV1hESjVLZHR3R2d4TG1hUkQxNnZWUnZZK0UxbTlUU1JReVlCclJIYWJv?=
 =?utf-8?B?TGYyMVUzbGZmVlRINUhtNzZZMm9PMlppM1pjSWtmK2FiQVRSSXVJS1ZqSjZs?=
 =?utf-8?B?K2NTT29RRUtKYTJoUFB4U2NzcHJrdEFkS1FoVEJST01OaG4zc1BTUXd4RDVh?=
 =?utf-8?B?LzVYeVJrU3JveG9oK0pKNU5KamFmczNBQzJPSHA1Y21RWm9sVng1NDVQRkpm?=
 =?utf-8?B?d1BwdEl5alZMdTZQMUhsYURNR2VyYlRGdzQvYzFwTnFZRDQ4cUUreFJrQ0FY?=
 =?utf-8?B?S0NJV2w5ZElHQjVtUnl1VW1zVkIyUnZoQU1YYXU3NTVZMFV6YlpING9RS3Bh?=
 =?utf-8?B?U0xwc2hBVGVHOUdGN2lNaVZaUmNiZXAzc096R1VrYTZ3dkRFSGR3UjNNcDAz?=
 =?utf-8?B?L2xWRnBONHNNZ3BSWnl4TVNBOHRINDNxZmNHVjlEb2VmVUxWbVRtK3RKRGtw?=
 =?utf-8?B?WEtWNzJBRzJUcks4dGZUMU54eHpRNjBvdGNUdzk0TU0vQmx0S1lqbmRUN3Nv?=
 =?utf-8?B?SlFnd0p1VW1jaWFRWlo4ZUlvd0dRcFAvTEQ1RTNEVHlCZHBQL1V6MjIxMXUy?=
 =?utf-8?B?N1hhbWdGOHplbTcxRk8wY3NBV3R3VENhZTE2Sld0SlIvd05hUU5WQ2xSR1d2?=
 =?utf-8?B?d0dPQldRazQ4djJZajY3VGRoT3hKckVqcGIzbXhOK0Z3d1FDQTdLWUhTY0Q0?=
 =?utf-8?B?eXFSaTh3L2FkbkxwODZuS1hWRlZSNDZ3S0dmT3p1VDNSbWowVVB4OXQyR3lh?=
 =?utf-8?B?VFJjbXRybnRQRkd0Y1JrRkhPa1FkRUllTjNIbFJaUjhIS3BtakYyb08vRk9G?=
 =?utf-8?B?YjZZN0VrRTlBSWNuOEVtSE5mdmdTdEpyTWhoM0t3Q2JXNzZFQnlmVU5VT09v?=
 =?utf-8?B?bkVCdnc3WEN6cndXZ3FaNForVXJOVlhqVGVINmF5MEw1ZEo2OVkxVWIvdXNo?=
 =?utf-8?B?ekZ4SlZDV1hia1BHbTVId3hEeDRkR3BwQytiU2tBbG9vM1owVGpIWC9TTkFw?=
 =?utf-8?B?NDB4N1lyMmpOdDF5L0VhR0JXakluK1FaajA3RmVtR3cvQkZrb0VqZXEvOFFy?=
 =?utf-8?B?d2JmUEQzRUZZT1A1SmpUUDhFa0lZTVpTUXBadHppR0ZGb00zVEhOUjlUQmlz?=
 =?utf-8?B?QWJrbmNjTWlGQ3dGaGFGWG1wdmx0eVlTVlRHNkRjTFQxekJ1aG15dkVEcDRw?=
 =?utf-8?B?UzdYb2d5bmJoZ1BVSHV5WEMrejRmTGZOU3B4dE1ySiszbDFpanpoazBJbSs3?=
 =?utf-8?B?TGQrazdHTGNLMHloUUpENWVPMFdPTCtCRUFRd3hNdDNFMDgySE1Kd2J2a1Zn?=
 =?utf-8?B?U0h6ZHlmMGQwTVNOY0R6NjF2ZUttcTN1M0psK0dja3pyYXYvd3dtZExvbXdF?=
 =?utf-8?B?S1VsaWM3VTJkeG9VZmJLcGNyNDVuTk53NFhCNk5odnZhaUtnTDYzSkVPRllV?=
 =?utf-8?B?WGgxZFlKL00vY0N6M25lemlIQVk4R0t6Mlp0eHZyTkF5VjZONEcwWSthMkxU?=
 =?utf-8?B?NVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc17dfb2-e3c4-4663-bb2b-08de1c26f7ed
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 04:51:23.3288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hXYg1VWbh6fRfgz/ecXckIE2whEqXWQ2ttrvaNGswRLekEBwZZwV1fv5UobeE/n5+ESQQoTrHOgd2/2cAwuaRxanpkVRT3s3XiyYA3xuXeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8319
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


On 11/3/2025 10:59 AM, Mitul Golani wrote:
> Increment DC Balance Flip count before every send push to indicate
> DMC firmware about new flip occurrence. This is tracked separately
> from legacy FLIP_COUNT register.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c   |  1 +
>   drivers/gpu/drm/i915/display/intel_display.c |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 15 +++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +++
>   4 files changed, 20 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 1e97020e7304..47a732ae2448 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -2012,6 +2012,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>   	display->funcs.color->load_luts(crtc_state);
>   
>   	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
> +		intel_vrr_dcb_increment_flip_count(crtc_state, crtc);
>   		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
>   		intel_dsb_wait_for_delayed_vblank(state, crtc_state->dsb_color);
>   		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a00625f882e8..1a3e7a6e4ab7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7366,6 +7366,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
>   		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>   
> +		intel_vrr_dcb_increment_flip_count(new_crtc_state, crtc);

Shouldn't these have DSB context? We are asking DSB to write these 
registers.

We need to increment flip_count after  intel_vrr_send_push() not before 
as per the spec.

Also we need to do this for MMIO path along with the DSB path.

So IMO, add this flip count increment at last in intel_update_crtc() 
instead, then we do not need to use DSB.


Regards,

Ankit



>   		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>   		intel_dsb_wait_for_delayed_vblank(state, new_crtc_state->dsb_commit);
>   		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 2948abc90c69..87bd722aa32d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -14,6 +14,7 @@
>   #include "intel_psr.h"
>   #include "intel_vrr.h"
>   #include "intel_vrr_regs.h"
> +#include "intel_dmc_regs.h"
>   #include "skl_prefill.h"
>   #include "skl_watermark.h"
>   
> @@ -612,6 +613,20 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>   }
>   
> +void
> +intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
> +				   struct intel_crtc *crtc)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum pipe pipe = crtc->pipe;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;
> +
> +	intel_de_write(display, PIPEDMC_DCB_FLIP_COUNT(pipe),
> +		       ++crtc->dc_balance.flip_count);



> +}
> +
>   void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 66fb9ad846f2..eebc7be309db 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -14,6 +14,7 @@ struct intel_connector;
>   struct intel_crtc_state;
>   struct intel_dsb;
>   struct intel_display;
> +struct intel_crtc;
>   
>   bool intel_vrr_is_capable(struct intel_connector *connector);
>   bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
> @@ -39,6 +40,8 @@ bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
> +void intel_vrr_dcb_increment_flip_count(struct intel_crtc_state *crtc_state,
> +					struct intel_crtc *crtc);
>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>   int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state);
