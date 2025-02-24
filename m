Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DAAA4221C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B3FA10E3B5;
	Mon, 24 Feb 2025 13:55:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fA+Pb0n/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F1F610E3B5;
 Mon, 24 Feb 2025 13:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740405346; x=1771941346;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=Lcm2QjorPgA4Xj+8pc6LDRddK0D/ka0jypGfX/Y03bI=;
 b=fA+Pb0n/YpZfF9Rvi0mSeA0SKBkvwv2fpHko5x92VUbf3gO6tLi60dtg
 zHxyz6uilnaG0MjSg8q/9R7YkBmr8lPchaRhysATjxMm7HzEDvHtDpmR6
 +OOOLP9TaeAH8b8J/BtQa394uv3t5566t2vVy8WsaLb9mmZ1V6ET+N7ze
 Pe+9KbTCXWAezseLIhWr+qVz/4MuL0zAA+sBd93EncWD0M66Kqev2qXZP
 hyK1x7CQcTCzVSe4nB8rfk/N2YSwODjtGlAma8GM1oFj8PL62PW1BLfU7
 p0w2L6u3U4gguQj1K2b6ifjpbVWTnGsYw8Mlaakh44NpaDwns/P4uFpic w==;
X-CSE-ConnectionGUID: XV/a1RUDRGWzEK1bzxdyog==
X-CSE-MsgGUID: pdN6iBUVQZujcLVgQqabaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="41175537"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="41175537"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 05:55:46 -0800
X-CSE-ConnectionGUID: ARGxrASQRJuhhCpzobnMCQ==
X-CSE-MsgGUID: 2NOlymmUQqODo/V5HiVNVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="146914198"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 05:55:46 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Mon, 24 Feb 2025 05:55:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 24 Feb 2025 05:55:44 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 05:55:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GGhlzP8g8nYR/WbBzyXnIgEF945R/jLoK8N3FtbUSgXiOXC/C3KFKTzO90tyFaRjiPp1kveF3C/ORBE+RlgC+3dqxUg4x2t1tFSO977EU4xnlwWHTa14ENmZZRpYINPyQ99AYBO4M4OCDIpfkp6F6pixc2BBT3wBjWKirsM2/fe54VIryRhFw3Pc+wFtUHUvXTaxYz1HpHN3pcO6tvtaplnFLvI5WZouOdG+Sgzts9CnfQjYCqvCd4C+l0TIlmXBwaBGaolSyiNkJpSed6ZYWYDiHKgkeqZe5Cfp/rU3nM+FEm61SMcQLpz6yOpgSQe30H4ifwXf0Ha3qpkROb/pzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=38mGmJSCK+CJrvC8KsgzT+i/qqqQerZe+CemrCcyvnk=;
 b=ZWcAmlkOfpmfCw2K8gWcux1IdWBehZOQJwv3Jb6ZvFVR/QTIwLzOI53d3jInce+cSZq4Xhx29Mr3T+V3YcAjRAMfSM5EoNkL3rLY4LM8HznYjGi1dZIqnRC7MX55KGD36mWlRaMbjekeggTAuK72bDxBU7z/rG6cRLtT1YhkDdf00hAWYdu8RlcHof0M+KsSXQM6q7WEIrrv9trCDCnsWxPCEVRV0j1tlzVSdKGfXdxjSP4giWMIu0MG7PbplKhbHDJ+otpbLzg03IyI6IR9GNREAiehFa+yFv78XDOm63oQ9AzQoTlPHsU39NQFIJWkY+wEJBoSnoHWFykIYh3rBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Mon, 24 Feb
 2025 13:55:10 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%4]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 13:55:10 +0000
Date: Mon, 24 Feb 2025 19:25:04 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/gt: Replace TIMESTAMP_OVERRIDE readout
Message-ID: <Z7x6OJRYc-1Y0opW@bvivekan-mobl1>
References: <20250221003843.443559-6-matthew.d.roper@intel.com>
 <20250221003843.443559-8-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250221003843.443559-8-matthew.d.roper@intel.com>
X-ClientProxiedBy: MA1P287CA0013.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::26) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|MW5PR11MB5859:EE_
X-MS-Office365-Filtering-Correlation-Id: 53e672e8-175b-4467-06e0-08dd54dadaab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vm1ZMEtWVTNsMk1aWFdkTW1KeGVjSEN4MjN4WDU0eDdTQURabjFMbFMwa0JK?=
 =?utf-8?B?YS9RNTN2TmJUQU9hTzE4aEtDOVhVZzZuNXdMNHA1d0tnMUNmWUErUHFUQXI2?=
 =?utf-8?B?dDh4dnJVUUJPTTU4Mll2cndobmsxT1JrbmpkSkx2NmZXb080cHNpOWNwUFVi?=
 =?utf-8?B?d01mcWUxZThJRS9ISksxLytwamdqbkdyWGx3NUNoMFlnYlp5WlRFMEJnd2NK?=
 =?utf-8?B?TTVDTDhzT1RtUWlEQk5MNGpERzVHTFVYQnBJU3hndWRsK1Fwdk93ODRxZkNH?=
 =?utf-8?B?SVV0Y2x2ODVIS1RKSXM2R2lkY0Q5QW1VbWljNVBaWlE2bzg3RzRuaTZsYTA2?=
 =?utf-8?B?MGhkMkdzdFpUc2Jza0JOclp1cDRBTUNFOHVyWEw4N01qOHdsc3I0RkJEdHBu?=
 =?utf-8?B?dTNBNW5VV3ZLdmZVZ1R1Y0hQNk9kMkZwRnBvSmd3cXh6NDg4T2p2VzdqQmp3?=
 =?utf-8?B?U3V6NEhwU0lHRmpTYno5U1F2Z2dTSEY1bWg1RVlWR2pBUTM3S3lnb0NZeUtt?=
 =?utf-8?B?c0tWbU1jbUt5enFXRTJyeXZ1NjYrNnNEWXZWK0NNNTBQU0dHMDIwajMxNldJ?=
 =?utf-8?B?WE43WWhEN0FjNnlaL2N3ZkNRZFhYWVM3Zm56U1dSaUl3OS9KOVFQaGo0YVVT?=
 =?utf-8?B?K0RpQWZFdU9uQld1UWpzMnFLRXVZTStCQldMd0d4Wm52bDNFY2dhZ2tKM3hD?=
 =?utf-8?B?all6b3d0TFM5TC95S0tTTEh4KzVmWDBwdkV3L1FNWkJmMVdsZW10UzQ2c3RD?=
 =?utf-8?B?Nm5lT1VUUFR3L3RmZS9URUJQZHVPL0VjNktRTG9wemZmckxzWUFWVFNDU0Ix?=
 =?utf-8?B?TzhmTklnZ1d1WTljNkFnblRFVUR4RDV5YUNDZU1YS2lsVjZvMXhXY3oxcmNM?=
 =?utf-8?B?Lytqcm1kYlJtTEUrdzV4OTdMVGVCVDBlSUNLR0FDZi9sTi94Qm9GaFFtUE90?=
 =?utf-8?B?a05KZktwc056RHBaYy9WR2hGOTZOb2Jna2JrNTNLajRJekl0RkFyZGxCZU9E?=
 =?utf-8?B?dkU4dG12SFlDcGR5Smp0ZzB4NXpGY2dRVitXT2pUTXowb0dmMWFNNGppWmU1?=
 =?utf-8?B?Ly8zRWlZWUgvQStQV2tqbXhKUHk2NW1ud3JKZm1OWE53R2h0OTl5VDlRazUz?=
 =?utf-8?B?LytIQ1FhL3hHZGQ1dUJ1MVVuMzJLak5RcS9iL0grRnVWT29POVFPazd3d2s0?=
 =?utf-8?B?NmVTbktIK0NnUDEzK0phclJPb1RBRWtvZjB0VXZnVDVqaWcvTUlKamRQb2Er?=
 =?utf-8?B?d2xYNUV2UkcvdEU0R1lYV3lIUDAwelRmRXEyeENoUnExOHdvd2FzZDhRa0NU?=
 =?utf-8?B?RnE0SHI5VEtHQTdBTFlaMm9LSVllRmFUNW5KdHF0bzlSVk1kRXlDOC8zMC9L?=
 =?utf-8?B?MzFrMHNGeEVTcDZwdi9OVS9iM3B5ZWlZZDFCbjZISFRYZnNiMW13TWN6WTFp?=
 =?utf-8?B?alkyczRIR0R5UDVKa0Q3WVBSemVRcTZRKzI5TVQxYUoxeTBVWHpOeEJ1ZklW?=
 =?utf-8?B?RWNXVlFTanZjT3pvOEpHMnQ4dVlnWjlrWFNFR3hkdGF3NjZtUGFlbjZLekp1?=
 =?utf-8?B?QkxWTjVpNDA5bEVFVXVwNEF5eGYxcU14WktRVXQ3dnlPWmw4MEVib0o0WVBV?=
 =?utf-8?B?a2pvaWhNSmFUMHRDVHhyamZrM3ZIR0M4UGp1K1FVcWgwWVVrM2xvOHdjVEFQ?=
 =?utf-8?B?NkVrR3lWa1plRVF1Q2g2a3dadzBJb0RGVDlBTFdwMDNrY2xvTlZiL1F6dWZ4?=
 =?utf-8?B?bDhFMlNOenBTK3JGTFBSU2hta3dhRXlSUzRwa3QwVGkwR1VVSzFZNHFTWmdX?=
 =?utf-8?B?NHVzOEhqRmp2UkZIVlN0WGFydVF2TysyMTlTSVZ4NEsvN2Y0Y0V2V29wcC95?=
 =?utf-8?Q?npCr0kd6daoFF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEpyUUdPbXdDcHl0WjMzdWVsQW1NdlB2VU8wdFJtbjlHSkZCUXc5dWlsQmdX?=
 =?utf-8?B?TnFkUVNCU2NObkY0alBLY1oxQVJaWnhBVUk0WGNlZFlTQXdwMDVXQmtJZG1i?=
 =?utf-8?B?UTdTZGNIOStTR2NFQ0x0VTlHeGJDZEZFRGlDMWJEYkVXWEMzUDRRaDJsSTU4?=
 =?utf-8?B?TU4xTjAwRUV3YTFpM0R1NTdsdXBQTlZYUlBlMENIc052SDR1dmt4bWpKcnIz?=
 =?utf-8?B?ZTdtR3ZnbGZXN3ZKYTNZbEhoQnRkdk9NWkpMWlArRXNZVC9EbmNQeGlET1Bz?=
 =?utf-8?B?VXZoRUU4b29Sd0VtMXZuT2ZpenVFekE5djFlbTNYSTJDeEJrRW0rU3pBQVI2?=
 =?utf-8?B?TmVhL2lPRnd4bXVVdzYvZGJTWS94UUdHUS9kV1g1Q2FGYXV6R0NtTTZIVEpG?=
 =?utf-8?B?eW5Qa2x4aWo3VFROTHZCSVBVTHBiTEIvaERMUzR6VnVHdjEzcWt2dlpiTVF1?=
 =?utf-8?B?MGR3V3ZtV25xRUFQTXgwZlRVdnl2N01MclFDZHh0N3l4YXZBeVltR3BnbkVj?=
 =?utf-8?B?SmJDK1BNaCtlV3lWZit3b3h4WTI1NXJqdVo0ZVJQQ2RmRDUrWCtSRU1YbTZu?=
 =?utf-8?B?WGpUTStMSXJGRTg0QTYzbndZenNULzFrclpZajhjM05QRGdmaU1vS2RTUFRK?=
 =?utf-8?B?TE9DdkFzNWZKeUdYU2J6RTMyREVjc09PcHZvV250eVY3RWllUTBCYktLc0dV?=
 =?utf-8?B?bkZKTnVJWmk5SW1FZ0ViVmZKT1VUUThNTFVVOVBxaWFRL1VJWHpyTUxCbDRj?=
 =?utf-8?B?VU1zeDBJVHl4bUdDTmxoL0YrWXBZZ2ZqemltZWt0RXV2dXJCTDk0V0c1VHVn?=
 =?utf-8?B?VENqdmc2Q3ZjVVZKQUdqSzBDSnJJM0crTTdDa0dBUHlSS0xGL09ybHNxMWRw?=
 =?utf-8?B?c1FkMXdWUS9md0R5T0NaT2JxSnV0cVJvYUhocE4wbHAyZVFCZ2tVdzN4VE56?=
 =?utf-8?B?cUl0ejR5VXZUV091SDI2OGVzT2Q0OExQTTZUb2o4WkZOKzhVd3lrTC8rdDJO?=
 =?utf-8?B?d1hsTnBYb055WXVBVDBkVE5RYTN4R25Nc0VZZkg5RG8zNWJ1WFV2aUxUeWZB?=
 =?utf-8?B?MXVwdk5XRFhEeFMxbDY0MDFnWndRSGtKN29Ua3IydTRiSFF5V3huMkNKaXNI?=
 =?utf-8?B?R1lPa0REMjdnMUZMRVdSYjdrSWxWelc4bmlQVWcyQlliMnNtRDVndUZHcUdJ?=
 =?utf-8?B?bmVjWStoSFJnZVBVQjJrb2tuUUI3emNIV1lDbnR4WGZOaU5DTVc0REV0dDNI?=
 =?utf-8?B?S1ZOTkllQkU3eHVsNlgzMDVDVXZIbDZna3RveXdVNHJoK1hwUzg0TmpRU2V1?=
 =?utf-8?B?amEraUU1cDNWaFl2NHA1cnhxWGlDV3RvTkMwM0xwWS9UNkl4VGZlUDlIVnNH?=
 =?utf-8?B?WHRXdW9iM0FLN3ZxOHczUUUwWm16NzFzSVNrcTRPRlhTRDZ5WGY0VVBaNmVW?=
 =?utf-8?B?S3g0S3VGRkF4VXZocTJJNHhubVlPS1YvcDBXei9sUjR0ZjhGeEJuRGZaR3Nz?=
 =?utf-8?B?R3FuOWJNajVIWGtNdGpTZFBVTUFSMTFrUjMwdlVsY1h5T2c2enZmZ3AyMmNO?=
 =?utf-8?B?Zmpxdm15TEhzejFnRXRoZFB1ekFaZFdVQkkwKzhEODE5Q2dDd1RYQU5sM2hS?=
 =?utf-8?B?aGg2ZWpRMjVvdUtoUDhmM1VhTitZRXpiQ2VnQXJhY2xGRUIwODNEeGRGZjBC?=
 =?utf-8?B?QzA1QldUYW5ROUhKOVc4SHJveVFDM09xTFQvNFdZVSsrSDYzUlN4SE9TaHdp?=
 =?utf-8?B?ZDREbWl3amI2ZXNMRCtCUnFORWI0NzIvSkt3YUZPMHRZN01PeGFqWVdtRlhP?=
 =?utf-8?B?R3R1TkRSaFNEK0lleUdkUktINmVTL3duTUFPdE5CcVdrQ2tPeGJORE8yQlZy?=
 =?utf-8?B?aXltb0ljb3I5Umd4ay9DN0lUaFRWVER1M0ZqbnY5elVwOGpFUFhTQXp4cXRV?=
 =?utf-8?B?eVlaZmxGN2xucldsT0F2RUJ5WjhBMG5mck1FM2ltSW9TVDAyQS9xUC9lZ29F?=
 =?utf-8?B?QjF1bWRsQnpPMDUzQlB5ait0Wmc0STk4R0JoZkVVcnZWRkI4MjlWOUlkSndv?=
 =?utf-8?B?TC9zUjluaGdjdmtIVFRiVUdhc3FYbi9WTko1akFNQWFSYlRYNmdqTVZVYTVF?=
 =?utf-8?B?bzdiKzJvZ1REYmVvWWhRYVJEajIxNU1ZSjFnUFYrVU1kNElDK0VyWGpmN1Zz?=
 =?utf-8?Q?zLEmTm+/IhN0PJDNB/ICl98=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53e672e8-175b-4467-06e0-08dd54dadaab
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 13:55:10.6567 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Tgv1vb/RY6F5Zndg1GaNnEiUcVc70e/pbGv0KlfOvSQ6+/JdrSpeBF174EnT84Orf87vmlLHfsQru0gz4ir8nqLNyMzNNQBX6rSJA19MKaaxch/wjmydR6u9IVzf17cx
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

On 20.02.2025 16:38, Matt Roper wrote:
> The whole GT CS clock initialization area is poorly documented in the
> specs and a lot of this code seems to have been inherited from the
> Windows driver team long ago.  There's nothing in the specs that
> specifically explains using the display reference frequency, as taken
> from TIMESTAMP_OVERRIDE register, to determine the GT command streamer
> clock.  But if the goal is just to get the display reference clock, we
> already have existing display code that takes care of that in a more
> straightforward manner (i.e., by either reading the strap register or
> using a per-platform constant).  Let's drop the usage of
> TIMESTAMP_OVERRIDE (which is a bit questionable to begin with since this
> is a display debug register) and replace it with a call to our existing
> display function.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Looks good to me.

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Regards,
Bala

> ---
>  .../gpu/drm/i915/gt/intel_gt_clock_utils.c    | 31 ++++++-------------
>  1 file changed, 9 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> index 6e63505fe478..adc21c3322da 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> @@ -11,23 +11,6 @@
>  #include "intel_gt_regs.h"
>  #include "soc/intel_dram.h"
>  
> -static u32 read_reference_ts_freq(struct intel_uncore *uncore)
> -{
> -	u32 ts_override = intel_uncore_read(uncore, GEN9_TIMESTAMP_OVERRIDE);
> -	u32 base_freq, frac_freq;
> -
> -	base_freq = ((ts_override & GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK) >>
> -		     GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_SHIFT) + 1;
> -	base_freq *= 1000000;
> -
> -	frac_freq = ((ts_override &
> -		      GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK) >>
> -		     GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_SHIFT);
> -	frac_freq = 1000000 / (frac_freq + 1);
> -
> -	return base_freq + frac_freq;
> -}
> -
>  static u32 gen11_get_crystal_clock_freq(struct intel_uncore *uncore,
>  					u32 rpm_config_reg)
>  {
> @@ -64,12 +47,14 @@ static u32 gen11_read_clock_frequency(struct intel_uncore *uncore)
>  	 * We do not, and we assume nobody else does.
>  	 *
>  	 * First figure out the reference frequency. There are 2 ways
> -	 * we can compute the frequency, either through the
> -	 * TIMESTAMP_OVERRIDE register or through RPM_CONFIG. CTC_MODE
> -	 * tells us which one we should use.
> +	 * we can compute the frequency, either from the display reference
> +	 * clock or through RPM_CONFIG. CTC_MODE tells us which one we should
> +	 * use.
>  	 */
>  	if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
> -		freq = read_reference_ts_freq(uncore);
> +		struct intel_display *display = &uncore->i915->display;
> +
> +		freq = intel_display_get_refclk(display) * 1000;
>  	} else {
>  		u32 c0 = intel_uncore_read(uncore, RPM_CONFIG0);
>  
> @@ -93,7 +78,9 @@ static u32 gen9_read_clock_frequency(struct intel_uncore *uncore)
>  	u32 freq = 0;
>  
>  	if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
> -		freq = read_reference_ts_freq(uncore);
> +		struct intel_display *display = &uncore->i915->display;
> +
> +		freq = intel_display_get_refclk(display) * 1000;
>  	} else {
>  		freq = IS_GEN9_LP(uncore->i915) ? 19200000 : 24000000;
>  
> -- 
> 2.48.1
> 
