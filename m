Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D4EC9F636
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 15:58:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A489A10E86D;
	Wed,  3 Dec 2025 14:58:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WinViYmh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C6DB10E86D;
 Wed,  3 Dec 2025 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764773913; x=1796309913;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=VRXS7t68cwVlPF34wWzS004NHDl2HvHuDqgtzBCB3EU=;
 b=WinViYmhMNLJaP1wksDEbAs+dOt6f3RdwQqUc8js5jKkfyStiUi+jhVl
 k63YZIRiaOwBuUwxOUutH90tudca5apER1tZ6asJwY4eCBIocsOcd4b5C
 5Khbn0vdFn0Qe4sPZbOToPWIFELh5uDWCgyuNzTx9mKU2Azwh0bfiPqDP
 hrkjo/0aF8U+kst49URRYIFslJqP5dW7Xh2V2c3FqKnOEonHZ4lrlA4T4
 0401zxeDdmrT5T8oH6uCBk7+PnhLmes7KiUVk1NAkXVVU0dqA97W4bKBb
 SsNXvB2l4L5kbEnnp/FkvBoQbhzm4GphrH3gXZNX9A/LACVFqv4FPVo+H A==;
X-CSE-ConnectionGUID: ouSW7r3BQxqvNOqVAvtXzA==
X-CSE-MsgGUID: SExdIJmSQHCp03Y1/YOyAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="54317790"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="54317790"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 06:58:33 -0800
X-CSE-ConnectionGUID: 6hTYwfhRRnuIfBZKakNCnA==
X-CSE-MsgGUID: eTUqBk2nQvGaY2hOT+PVCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="195488250"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 06:58:32 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 06:58:31 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 06:58:31 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.33)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 06:58:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QnGsOR/YSwhDtejtyuz7wXBHJGlg0R6HDQtGmNUF8bPAhVTtsCqRHHnaQ/JETq5f2Kmdashjst4so9PQpTBVEmZYSkGDwHmTXuJtVRU5+Aaln9etYbxo6Hnhqg6uKwDxTw2PhanmvSKYhgOScQDKu/s1Qlu5RAeAmO14FIhgUJVOTDK0UrBrCmv0VJZr2rzXWbzla5hRT0XhtoFW9SvlhTut5W6kYGZvVKzW64AWUcF+pRT/36O9J53M5D1AhKvvWcCNrfssvFwtdfwYEqE8JMLSp3UjugHdkDjwD8IMMftsOYRnUunmuxM+eMWkvBf53UNu2f+IHczeK5ZE2ItB2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cLBuJOERG6NTMHnQ73U2HlbCVJ97XLQEvSf3Im1g6+U=;
 b=e1C0lZgkmB4SUrkdTlh0DkDcWe+cHVHBzkNh5j3GRFyzYWTK+jnbRA7xuONXVZB8nxCigOw516r8HHn3iVehk6oy7c3ZoONC4IdENr//E+of8MCBHc5yNdI0W/ufh+LM3vQWGcdfaZ4XtbMG+mCo+bX8Ik8LHgGZo0Go+wJol/ufBt8UdsqJLvEKaBy+zXVxX3IWzJ7UXLlSIkhYYTrOIwdgYO9tzQg800ovbxn253Zh67H+6g1N7crPw/1Nx2cH3TJqfWkmRy9A/aW66zTe0xWMvdsXNMXCAmc5iRjiXip+BUfyP51U0SgLCZeTZ+yKrTYMRKC0kiEABGWg0MsLfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6749.namprd11.prod.outlook.com (2603:10b6:806:267::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Wed, 3 Dec
 2025 14:58:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Wed, 3 Dec 2025
 14:58:23 +0000
Date: Wed, 3 Dec 2025 16:58:19 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 7/8] drm/i915/psr: Move sink PSR and Panel Replay
 booleans to intel_connector
Message-ID: <aTBQCx60u-wsEtof@ideak-desk>
References: <20251203103134.1054430-1-jouni.hogander@intel.com>
 <20251203103134.1054430-8-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251203103134.1054430-8-jouni.hogander@intel.com>
X-ClientProxiedBy: LO4P265CA0027.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ae::17) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB6749:EE_
X-MS-Office365-Filtering-Correlation-Id: d3b8e72a-a440-4c70-b683-08de327c6803
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?bU6xE1yFysJSxJWnQWe0VHcTam9VSvyBj/7INsICY2KQVfKCGIGIbin3Gr?=
 =?iso-8859-1?Q?gr6iLdOARVbVxZcy+znUkDIIIX24XWLZbzM13LZ3mwagLFVS7eDrg2m01u?=
 =?iso-8859-1?Q?+ym4AnMtbshtILLSUPDT9ph9vrgiuds8PuqTKfahCSFCgrNPraAkv0oqA8?=
 =?iso-8859-1?Q?1kL6jJOFO9AAbxL/Ayx6oCgVmoASrNiZX4pAsnd0LZ6b9QLoHA5jD0hNo8?=
 =?iso-8859-1?Q?bBp1ubB7TVUQAfZD+fAddIJk/xfbMSwe6ryiJhI8mg/F/Ky0HvH0OynfJn?=
 =?iso-8859-1?Q?xbwg9xrwy24D7/C7q6Gt1XLltNET42p1tJ4jpbW4PBfqYy3xP29t+Fh3vZ?=
 =?iso-8859-1?Q?XQDnt9FqajJc158DCkxfMoX3pmykOcA3um6kd/GXyQ3NLQZfFCv1DO2PBX?=
 =?iso-8859-1?Q?Ym/JISH9WLRMK7LMDcKNT4WNVqU/xKYkg9ezSQIkYflyqoIkP4OpohH+yg?=
 =?iso-8859-1?Q?HoudnWNe8HmQYHvasYyoN+C3dI9CI/XIKENLG2S8+RIRLeq8Z+r8dQDBx7?=
 =?iso-8859-1?Q?VVrpZCNxCdkLwFbSetzhu1tg3A5zn/d6wJ0DPJ+4zR/AE+jDqaSczvajwE?=
 =?iso-8859-1?Q?008CxJQDGtRBJdRI7gEgd3Njae/ermwRhzKX7zAX4Jo+DkiuobEKi1eef/?=
 =?iso-8859-1?Q?aqYCSBo7VbMcgFuARyoHTTpJn3H/0xjCOSgdbcExjz4ghaVqNvmkdSl42u?=
 =?iso-8859-1?Q?K7ONmoYCpAupezR4QaT2PQlKaO/7tk3s/AJURVNcz5PSQEBnJ5NtoeT4I+?=
 =?iso-8859-1?Q?2qNtGWrL0aBwCtPo/xlDe33e1rEGAWkmXU/PYPuDtOTJVvhSxmFfjcF5So?=
 =?iso-8859-1?Q?TqoslTdYn2G8YhCpECvw8hyJBgHDEBkGcvnkHbLb+QooRIG9oKuOfL86L+?=
 =?iso-8859-1?Q?1HD+HaD/twopC6meLSbqECiD5/knZ5uj4lQaA28MKckj6omimN5EqKUvT5?=
 =?iso-8859-1?Q?et0YHgXIbrFQERtzEQtXCVBIPS2DEH2Hoq3RY7UyYFgE7SQThboGrC9Wv9?=
 =?iso-8859-1?Q?WNyZWM3i8tG17oo8CXDTFih0Z/8SqFV9tgw6yebZh2JGuWSFZfmtcNF9Uy?=
 =?iso-8859-1?Q?RGeE7h9xNBJjx1Efs+ibbc3wd4sFJWwu/KlqELED40y3Nfzjx4z4x8pkRQ?=
 =?iso-8859-1?Q?Lt2KON9fanK+srs+1WKbcdrLJpSPdwhvPhd7xg7qRZGBytEJK+FiftMDM9?=
 =?iso-8859-1?Q?c13fp259Zcz+LDXv2n3lRAJq2jyil+VJpmo3oSL56GP7ya+Yk7bYkKEn4t?=
 =?iso-8859-1?Q?LM0fwsAs8VKjzDiatYCqdFEwCCBH7auWhh4mJ7U/o4IqWHoLKrePPJJOph?=
 =?iso-8859-1?Q?oGNBzOjnjfNgNZ1qKbh85B6kCp3Q019GfBgMRt9HHN23bMrg3apfPPRuT0?=
 =?iso-8859-1?Q?hn79oJRjpugxEov5/qS8YwrJfXFmYHWN3obfOi8NxU0N1XMuJi5hCs+YTg?=
 =?iso-8859-1?Q?NUXCe/By/aIQcmADAD05Kqkk5jd1CYCszx+PnTUjbJ0RU8pYYWzUATLC/n?=
 =?iso-8859-1?Q?NL1BULj6cAQQ7ULjMuHxKK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?V6v2FE/6vGZjgWksa7qauVxrozHsRxPfSZhnWV5EDMjIaSntrLQ7QXkH5f?=
 =?iso-8859-1?Q?95kkWNIAF2V62txYdirl6vYE9zsjCaMrVWWz+Y0zLCavUPIEqOsRJdcHLe?=
 =?iso-8859-1?Q?PQ3cddtaCbMj1GeeoYh2Ij3zR5V9sB5qqaB3rKgK1W3ec3Gq73I758jlzs?=
 =?iso-8859-1?Q?xP6guAA16lu1gw+TriUHh/WDCoS++SssgZTWligsZu13kiVf8W41m3kiIb?=
 =?iso-8859-1?Q?qxczuKPe9YmTGCX89BKdE0Qy8Vxm0Pqex3V3RIZDmYowRVk1ar67ZJokTl?=
 =?iso-8859-1?Q?ZanuHmQV02T1uqnD/lI61UDeodQqun/xaywCB0bnBWeAKKYoYS4Dm5HZUU?=
 =?iso-8859-1?Q?QOCugN4rvRh2evjpkP48+spVkCJts6kLZ8aVg1rTB9sleu1ggsfQqWR51g?=
 =?iso-8859-1?Q?c1d6vjsfgYxH659nRI1gtqLZpZm9Xwjdf/T8jnNoA1eJZYP/td/jTDS86f?=
 =?iso-8859-1?Q?vBo5lhlXjddDpkpjr8C7Scdgi6UQvrh8OGqhNIpA+Vm1noihw6j71a3Wc7?=
 =?iso-8859-1?Q?viDPCkW6vGaIScb9gZs9+ljfx5bcU2cdW5711oxQl2S/xeQ72So5M3Mqmb?=
 =?iso-8859-1?Q?cL8IDr0736ZhD5dysBfN1cw57XWinMxtJRggAUuq01BoSHoxPdHbiSG+ED?=
 =?iso-8859-1?Q?UYu4KcIqKIawITn0rWxt/WnbN0nDjll8jKou0YRVA+VXq1UW1QXJzDOlu7?=
 =?iso-8859-1?Q?sbPDQz1EMiKgHC4hLnJDWYjgFziSmDWbudJnmX5ihoLlAX4E6vS6JPOVkX?=
 =?iso-8859-1?Q?l16eo3NkbMM20hKB9sP05MZ8jd4f/LFG9lTfvd9Z1YzFwFMpfGlgTubU7E?=
 =?iso-8859-1?Q?vRbVIncrcV1XZHdyLBOQO/CYp+UxP5ao3kbmbMQR6n2WmKAVCdS+c05XIH?=
 =?iso-8859-1?Q?D7qemDbBw8iEOwt50T3+GPscY0RnQP+e4aq8KrtajlgPnYqF3aDxjIxpyh?=
 =?iso-8859-1?Q?lk7XS/q25nhbYQNi8tf86LVtsnnRWhaaoCjFtQIv+/nIT4mG8/gwC1j5rg?=
 =?iso-8859-1?Q?7mKASCd4AxA35rWqeLUxPOmsz7FUbudSd587L8awW3ifK79sVSWcN5Bzb+?=
 =?iso-8859-1?Q?tnjrGO4NlajmclTiLv6Z/qiBi1U3NNa89oHDK7D0WDeUzQNddHJUgw4VD6?=
 =?iso-8859-1?Q?dRvgxaYJPWwwccgI4jTVXkF0Egm2qzWBhxZXNSGkmjxjLlKuheikx42rde?=
 =?iso-8859-1?Q?1SYnNImJo1wITG7xOA5LlRJKBmaCD5CG1/ksZMYFZ4d91VNScbrHb6z39i?=
 =?iso-8859-1?Q?CxVVi7EKGmh9G3LZMsAsFydfH6ZHU83MtdTW/qWjEmSPaP2Mx9F2z5eyJZ?=
 =?iso-8859-1?Q?jNYC7dWhMv5ePo0m/aZ+v3+thpUYBU+pMVzc6PFrkVtQAGcUND+p8EHoFJ?=
 =?iso-8859-1?Q?FkwZ+ArQNQM24PRv8gGNbwn3O8VByf5tTcuJZkRNLiQoIT0Bj4Z8ibkfAH?=
 =?iso-8859-1?Q?DFgSlmOWFWNi3Szrpjjr2Jz1MI68g5T7ZMsDbAD/Zg+6fbdAgrO/0Hhmjd?=
 =?iso-8859-1?Q?52QFX+ULf96gxZs9T6H36+8lQormKiENnZilEO0ohplIZGuwro8HwmaYeh?=
 =?iso-8859-1?Q?iuDWDGSPDyxTzRy0HhTHcxDgDUkax3fSQQsNohh9/FDZUTN4O0QuQAAxjk?=
 =?iso-8859-1?Q?K7cyIMeM60NTWnc43UIPf2hlxE3CggXvV2ahHBH1BO4BKgB6RsCEzk75Z7?=
 =?iso-8859-1?Q?palZwllQ0fegY4/KG8eljUJJ84X1FOwl3QzRbT/Y?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3b8e72a-a440-4c70-b683-08de327c6803
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2025 14:58:23.6644 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fu1fDVqmuS6r4Pwqy39cfRCGm1lNM0PXnR/7VvFad/bAL9Wivislvkqlr6oPxciGJbCLUWahXOWJobshfo85Fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6749
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 03, 2025 at 12:31:33PM +0200, Jouni Högander wrote:
> As a preparation for MST Panel Replay we need to move Panel Replay sink
> related data into intel_connector. Move sink support booleans as well
> into intel_connector. Generally this is more correct place for this data so
> move PSR versions as well.
> 
> Still sink_support and sink_panel_replay_support are kept to keep CAN_PSR
> and CAN_PANEL_REPLAY macros. Plan is to keep them that way as they are
> widely used from patch where connector is not available.
> 
> Later we might want to clear intel_dp->psr.sink_panel_replay_support if any
> of the devices in branch is not supporting Panel Replay (mst).
> 
> v2:
>   - commit message updated
>   - Extra w/s removed
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  .../drm/i915/display/intel_display_types.h    |  7 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 44 +++++++++++--------
>  3 files changed, 32 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index b5641698db695..fb1c8b2d3979f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -572,6 +572,8 @@ struct intel_connector {
>  			u8 dpcd[DP_PANEL_REPLAY_CAP_SIZE];
>  #define INTEL_PR_DPCD_INDEX(pr_dpcd_register)	((pr_dpcd_register) - DP_PANEL_REPLAY_CAP_SUPPORT)
>  
> +			bool support;
> +			bool su_support;
>  			enum intel_panel_replay_dsc_support dsc_support;
>  
>  			u16 su_w_granularity;
> @@ -581,6 +583,9 @@ struct intel_connector {
>  		struct {
>  			u8 dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
>  
> +			bool support;
> +			bool su_support;
> +
>  			u16 su_w_granularity;
>  			u16 su_y_granularity;
>  		} psr_caps;
> @@ -1731,7 +1736,6 @@ struct intel_psr {
>  	bool active;
>  	struct work_struct work;
>  	unsigned int busy_frontbuffer_bits;
> -	bool sink_psr2_support;
>  	bool link_standby;
>  	bool sel_update_enabled;
>  	bool psr2_sel_fetch_enabled;
> @@ -1747,7 +1751,6 @@ struct intel_psr {
>  	u16 su_y_granularity;
>  	bool source_panel_replay_support;
>  	bool sink_panel_replay_support;
> -	bool sink_panel_replay_su_support;
>  	bool panel_replay_enabled;
>  	u32 dc3co_exitline;
>  	u32 dc3co_exit_delay;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8c5ddf0b09d25..4419954867455 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6058,7 +6058,8 @@ intel_dp_detect(struct drm_connector *_connector,
>  		memset(connector->dp.panel_replay_caps.dpcd, 0,
>  		       sizeof(connector->dp.panel_replay_caps.dpcd));
>  		intel_dp->psr.sink_panel_replay_support = false;
> -		intel_dp->psr.sink_panel_replay_su_support = false;
> +		connector->dp.panel_replay_caps.support = false;
> +		connector->dp.panel_replay_caps.su_support = false;
>  		connector->dp.panel_replay_caps.dsc_support =
>  			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 1d3864405c850..c01e06f9cf643 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -634,11 +634,12 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  		}
>  	}
>  
> +	connector->dp.panel_replay_caps.support = true;
>  	intel_dp->psr.sink_panel_replay_support = true;
>  
>  	if (connector->dp.panel_replay_caps.dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
>  	    DP_PANEL_REPLAY_SU_SUPPORT) {
> -		intel_dp->psr.sink_panel_replay_su_support = true;
> +		connector->dp.panel_replay_caps.su_support = true;
>  
>  		_panel_replay_compute_su_granularity(connector);
>  	}
> @@ -647,7 +648,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
>  
>  	drm_dbg_kms(display->drm,
>  		    "Panel replay %sis supported by panel (in DSC mode: %s)\n",
> -		    intel_dp->psr.sink_panel_replay_su_support ?
> +		    connector->dp.panel_replay_caps.su_support ?
>  		    "selective_update " : "",
>  		    panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
>  }
> @@ -680,7 +681,9 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
>  		return;
>  	}
>  
> +	connector->dp.psr_caps.support = true;
>  	intel_dp->psr.sink_support = true;
> +
>  	intel_dp->psr.sink_sync_latency =
>  		intel_dp_get_sink_sync_latency(intel_dp);
>  
> @@ -700,13 +703,13 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
>  		 * Y-coordinate requirement panels we would need to enable
>  		 * GTC first.
>  		 */
> -		intel_dp->psr.sink_psr2_support = y_req &&
> +		connector->dp.psr_caps.su_support = y_req &&
>  			intel_alpm_aux_wake_supported(intel_dp);
>  		drm_dbg_kms(display->drm, "PSR2 %ssupported\n",
> -			    intel_dp->psr.sink_psr2_support ? "" : "not ");
> +			    connector->dp.psr_caps.su_support ? "" : "not ");
>  	}
>  
> -	if (intel_dp->psr.sink_psr2_support)
> +	if (connector->dp.psr_caps.su_support)
>  		_psr_compute_su_granularity(intel_dp, connector);
>  }
>  
> @@ -1514,14 +1517,16 @@ static bool alpm_config_valid(struct intel_dp *intel_dp,
>  }
>  
>  static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
> -				    struct intel_crtc_state *crtc_state)
> +				    struct intel_crtc_state *crtc_state,
> +				    struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> +	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
>  	int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>  	int psr_max_h = 0, psr_max_v = 0, max_bpp = 0;
>  
> -	if (!intel_dp->psr.sink_psr2_support || display->params.enable_psr == 1)
> +	if (!connector->dp.psr_caps.su_support || display->params.enable_psr == 1)
>  		return false;
>  
>  	/* JSL and EHL only supports eDP 1.3 */
> @@ -1634,7 +1639,8 @@ static bool intel_sel_update_config_valid(struct intel_crtc_state *crtc_state,
>  		goto unsupported;
>  	}
>  
> -	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state))
> +	if (!crtc_state->has_panel_replay && !intel_psr2_config_valid(intel_dp, crtc_state,
> +								      conn_state))
>  		goto unsupported;
>  
>  	if (!_compute_psr2_sdp_prior_scanline_indication(intel_dp, crtc_state)) {
> @@ -1647,7 +1653,7 @@ static bool intel_sel_update_config_valid(struct intel_crtc_state *crtc_state,
>  		if (DISPLAY_VER(display) < 14)
>  			goto unsupported;
>  
> -		if (!intel_dp->psr.sink_panel_replay_su_support)
> +		if (!connector->dp.panel_replay_caps.su_support)
>  			goto unsupported;
>  
>  		if (intel_dsc_enabled_on_link(crtc_state) &&
> @@ -1736,6 +1742,9 @@ static bool _panel_replay_compute_config(struct intel_crtc_state *crtc_state,
>  	if (!CAN_PANEL_REPLAY(intel_dp))
>  		return false;
>  
> +	if (!connector->dp.panel_replay_caps.support)
> +		return false;
> +
>  	if (!panel_replay_global_enabled(intel_dp)) {
>  		drm_dbg_kms(display->drm, "Panel Replay disabled by flag\n");
>  		return false;
> @@ -4117,22 +4126,19 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
>  	seq_printf(m, "Source PSR/PanelReplay status: %s [0x%08x]\n", status, val);
>  }
>  
> -static void intel_psr_sink_capability(struct intel_dp *intel_dp,
> -				      struct intel_connector *connector,
> +static void intel_psr_sink_capability(struct intel_connector *connector,
>  				      struct seq_file *m)
>  {
> -	struct intel_psr *psr = &intel_dp->psr;
> -
>  	seq_printf(m, "Sink support: PSR = %s",
> -		   str_yes_no(psr->sink_support));
> +		   str_yes_no(connector->dp.psr_caps.support));
>  
> -	if (psr->sink_support)
> +	if (connector->dp.psr_caps.support)
>  		seq_printf(m, " [0x%02x]", connector->dp.psr_caps.dpcd[0]);
>  	if (connector->dp.psr_caps.dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED)
>  		seq_printf(m, " (Early Transport)");
> -	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
> +	seq_printf(m, ", Panel Replay = %s", str_yes_no(connector->dp.panel_replay_caps.support));
>  	seq_printf(m, ", Panel Replay Selective Update = %s",
> -		   str_yes_no(psr->sink_panel_replay_su_support));
> +		   str_yes_no(connector->dp.panel_replay_caps.su_support));
>  	seq_printf(m, ", Panel Replay DSC support = %s",
>  		   panel_replay_dsc_support_str(connector->dp.panel_replay_caps.dsc_support));
>  	if (connector->dp.panel_replay_caps.dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
> @@ -4183,9 +4189,9 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp,
>  	bool enabled;
>  	u32 val, psr2_ctl;
>  
> -	intel_psr_sink_capability(intel_dp, connector, m);
> +	intel_psr_sink_capability(connector, m);
>  
> -	if (!(psr->sink_support || psr->sink_panel_replay_support))
> +	if (!(connector->dp.psr_caps.support || connector->dp.panel_replay_caps.support))
>  		return 0;
>  
>  	wakeref = intel_display_rpm_get(display);
> -- 
> 2.43.0
> 
