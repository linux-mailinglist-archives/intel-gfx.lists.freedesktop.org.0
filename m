Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B03ABD1BD
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:22:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319EF10E4EA;
	Tue, 20 May 2025 08:22:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YM5O7PoX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3709510E500;
 Tue, 20 May 2025 08:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747729369; x=1779265369;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=IU2FPAQCLriwRxKveQR/XxiMFaA6oecFCsPJ4yX3GaA=;
 b=YM5O7PoXwod6FY913Mkp0dvs4LSlXd0JjEtDJrEJCgO0boEboqP1/E8m
 Up3gOezGiZAxFgxvSaZPCmGFS4xSwaYOuzqsQPkxRtpsZs0p0VOtgE5sK
 gMWheiqknRsvajtRvxfLvJH2F5J4cBOX51CUwP0FgejEAasz84lSL1Rp1
 UmgkL3mOsjNP3efuY6Wop9B/dNtTWZTX1M10SnhLRGAyaO816RVYEtQpP
 YqCqlkfRKQX0VopLj6giSJV3ZgX7lkOUK8XMeATse7lpfO4ydwzcwKxnY
 P6YQsYwRJzwrC2CVw3hjtllL9h4nZL45Xx9nOhAiQ6M0lEha9oYqi6XVb w==;
X-CSE-ConnectionGUID: b1gD4+XXRsWcubhxMtUNAA==
X-CSE-MsgGUID: xuc+jKZgQguDAX1xZ8eAlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="60308254"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="60308254"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:22:44 -0700
X-CSE-ConnectionGUID: +tKANREvThW/tyRMpntNmw==
X-CSE-MsgGUID: GYtYllmGQjmGCgxJ0J5V8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140150241"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:22:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 01:22:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 01:22:34 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 01:22:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hcwetgtBOgQ5Yeux5N4OdFZ0x3RKn9m9qn7gCcqD+YnP3lVTUI/26Nz7n/lcYC4v3EeHxF68bIl8FpwScHbEXQdFuPHwHGYI12XmrOg/zcuL9+cD+8KvxuOqH8JUFfP5cvWYZIE+xTj9327g2vSYfdh72RvpgJSfEdNNM9hewt5KxgFgyyTqZHkIHk2CBSVrMrs3y6UkInMrpwKfbbmYJhVBu6Ha/iSzTnpVfXnRg6eB3uOcMdoengwMhb6qlRipRBMyamgmYpnJOtknU9I8SlKJUhPFixcHq8T1zWWC0r7OtdGknADNgXIJfrLaqhmo4IKTOMlSoA/CU/Ao6ZtIRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bmf4+wjNip3oNDfBbwSNDe0zGBW1bjrJyxsR7zNI9yg=;
 b=uizxLqajOFsO2fe51oLjboX98YpVFQF0XSlBYnldD2uvUdqA88aAYAUqkFk8JdSwoD32IXKF2DZtPReXenU5AU8b4jc+2LU6sygO+H82HInk8MGf987AeV/Kies9SVMrFqGKEiT7fIJr1LaK7d6jLbfwKnDJYlFT3bIhCKCBLki2FFqLYLCBmz/bKpM6/fXdY2EJS2exC7urb1AVOLKrNS7u87mICVPEPh+uDbQblX5mOaxnLbEl6PRw3hxVR84kqvR3BKy9kgqX5TM5kTCSfraf/bjOgg7cGxUZNT7rnqpsVklddLAD3mQp45z70/UnwAnAqoHW65o3LzoiYgeIXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB6374.namprd11.prod.outlook.com (2603:10b6:8:ca::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.31; Tue, 20 May 2025 08:22:26 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 08:22:26 +0000
Date: Tue, 20 May 2025 11:22:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Westerberg <mika.westerberg@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?=
 =?utf-8?Q?cess_for_drm=2Fi915=2Fdp=5Fmst=3A_Work_aroun?= =?utf-8?Q?d?=
 Thunderbolt sink disconnect after SINK_COUNT_ESI read (rev2)
Message-ID: <aCw7yow9neVukecQ@ideak-desk.fi.intel.com>
References: <20250516170946.1313722-1-imre.deak@intel.com>
 <174768218390.1600.3724916932387168483@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174768218390.1600.3724916932387168483@1538d3639d33>
X-ClientProxiedBy: LO4P123CA0043.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:152::12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB6374:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cbacfbf-eeac-4a52-8ea8-08dd977773dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|13003099007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?52GEYgzpwVt+NsEuv5FUHe0vY8Dsqi2+nPWuZogZsda58Jtcz+oobda0v8Vb?=
 =?us-ascii?Q?2H1u9xM+r2zBrSS7JbmDe0BItrcUGw2Dsr8mkBszCo3SNXAtwzUZZA38ZjBf?=
 =?us-ascii?Q?/OA+5/XQjqJiqdb/24QHIgKXu0+VrZmajT66TKYPouoCogjF0065Zp8wfjyY?=
 =?us-ascii?Q?YVUh2aQ+0CULhl0CKtl2RcPaNe3ODfb2udztSG9shKPm+3X+N810Uz1iazo+?=
 =?us-ascii?Q?gt0zXDnnu9HaYt6bzs25XXfKTs0Vu8KhE2phDjOahM88ib+ZOAN0kpmucIPN?=
 =?us-ascii?Q?vABVZgaK5AUqyz1hqJkXRy+GGPumwXaQNipHiu5iMN+CboTkEdVE4+9q0J1d?=
 =?us-ascii?Q?Gfc50S73UuUSkqG0D/aTZLlMhPyc7k3KAoHb7nUwcrILpX8nMZs3zA1BxqN7?=
 =?us-ascii?Q?q0BYXbQYIMfJAGSM2U4LbwyzxcyZp4JxECmr4dk7D6492SBGZiikJNfGc3ul?=
 =?us-ascii?Q?2oYRaIWfRZmtIlyCHAIvGRwEFsb4blv7vYcdnu9/p7LNAhtEUxpDKO6l+ucj?=
 =?us-ascii?Q?VI7q7hPvXaoYBrTvo9vwhoSa4x1q+cUdUijSkk4HuEcr7iZaGBgsO5luR+8k?=
 =?us-ascii?Q?aN8dZE6ltWPNwFkXyeimSgHoJKVZjoOICJ+ge/ax0g/mo6Pnt5Q++OALa+uc?=
 =?us-ascii?Q?6nUr+pVxzcjQHzNajIpbJlHag34AsNt503wz798W2+0OBmyi6SGajPTNXLn8?=
 =?us-ascii?Q?HlBpwiofD7DknLdGtAFxpFoa+5RSrCpCL9Ei1xbL8mKT8Bh71pkYcvQu9T2G?=
 =?us-ascii?Q?4HdiafX6E8dvA0neNBFrbcT6m64txXsZjdhluKpH9CNl4p5aVpNk/ZFklKdo?=
 =?us-ascii?Q?Wu/PsgWnKyk0/8OhICnCcvDRy+H8Aaelm1rGCoyDg0/yWpgLwPE/RCvoJpnU?=
 =?us-ascii?Q?kF+kJ444zWZ6JEntuzmYDE1XV04zH1veS+iF0eo7XudItnBSL7/xmpt4tlgs?=
 =?us-ascii?Q?of1lRW+CoZ2xuUlTEl2XB7ig8bRx/sRMjlCGpdoj9pNkAHti4hnojItsjbKz?=
 =?us-ascii?Q?7I/ZwZrQEisQ5h7BbnaaSfmT4M57XT+yLR9kSN5PjkQV6gQWzFrQaGnexW30?=
 =?us-ascii?Q?U/Crax++/ulFlKcAclMENYeXBXri0GSuBP8wvAQREUBm8paAMArykuhnCt/X?=
 =?us-ascii?Q?8nshQoK7WPFDxW7+YSX7uRRqm5IiLTZPqZORzJX53Wt6Zj3B3VjOvKaAr31d?=
 =?us-ascii?Q?Dr2vfHE8eeV4WzbdNgSVvy6ujU46G8u2p+46PKutlr8xNEnLzLE2aIpkq+mv?=
 =?us-ascii?Q?gXq+xLvKaZrGAJJig65eEWUkp0/ryp1/xWJa5UVFkQXL7S51ScoCTafc4Jn/?=
 =?us-ascii?Q?2CSOoF6YWFTw+9kv3/Pz8wtFldXb/p6IToiCoNfyga9h96GGVPTjDux5seoq?=
 =?us-ascii?Q?FVRYo3M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hgIuoqu8M9+cqlN51W4lsnMxPCnNmCyFJfA8cjHrHzWosCI4U/mQX389hI85?=
 =?us-ascii?Q?ZCmwwH32YhWwJD9I2Zx8q2KSVgthW/pM7AW4cNE4F/vI7Dep7xr/5Gf4LUIA?=
 =?us-ascii?Q?uZWvchtfuLa2Z4mF43oT6N2EklM0RJEsA1Nviu9sfq50ZlNQJr5LZVPz6mZt?=
 =?us-ascii?Q?sVjgIcNQmlXb8UQ7sdhvmX2f1BiNGquZEjiEI8cMkQ6pYwoJDxHuGottIOV3?=
 =?us-ascii?Q?Iag50hhe3eO5HdLL0zTS0RTvWWx9/VBmada0EgSk7CK26ujUHDH5K9Qz34yO?=
 =?us-ascii?Q?vqpDoI3uXQEGBtCtO4bu+jfghxdR6fD/H3MdGvzdwclWEi9SJJ/QG/0Mg/Va?=
 =?us-ascii?Q?J3iv4x/fHB8CDS7ZbnwoN4bCqgiU+8JQ4+YBlBT2ns8UwpdG5zSRt9LdFEEe?=
 =?us-ascii?Q?kBmvWy5VrpCoMA2tzigJEPP0G8V+OpHZ2YCKIcVuJCqpxnb56q+M+WdTzdUy?=
 =?us-ascii?Q?LuLOer1jdiLHAG5JGHe+6TBSeuY5LBgBo5Ta71hmF+r+8i87/09Aj4LzaE4+?=
 =?us-ascii?Q?cfz8Heo89Na6WjvOOu/XsekHq9iJWU8nqBgAiG66H3R9YH/HVBNDXUqwd9C3?=
 =?us-ascii?Q?0zLFL8VNUfyuiAoL6tBoYcK73hdcBJcZG5vrLNqCvxT0e3DWa89o65a1b3sh?=
 =?us-ascii?Q?LokJJZtoqff/J9w6U9KNjngJLaKOwgEmhgUVj1D21FMkPzZD36FT9Fed6uPR?=
 =?us-ascii?Q?8syaai6owGQa41rD5YCA16XZEsiFuPdbrs5GfOwrNH3OBS5vts5p/8neZudY?=
 =?us-ascii?Q?1luj/o1taGGau6fST6Ta3H2jGyCXgsYME++pgLF5zOB0KFXx9CGj5e/3qcDA?=
 =?us-ascii?Q?iof3H0pyRt67Ot0PV+zDhSjSMcyHifw0JicnEkxDHGWoJrS0rKCsJRbSnjq7?=
 =?us-ascii?Q?cZt6msdna8+OIwzkGfphBwvBTkOQLLw0o42c5daY8vrJNeCfoVQBaUePZszv?=
 =?us-ascii?Q?YBjuCS1WSWx/lQX2Xua157Rtamfu5h6vz/5sSXsVOV2gZEEISon4BYGIoMnS?=
 =?us-ascii?Q?17BfN9EFjtqwhmt//PT7eAxNsHhVsgbgmV08CILYbAGNpvoa8RV+WszBYdiy?=
 =?us-ascii?Q?oOoeBmxRqs+AloezY7vo52omNLmqvWDkVyLJCQpSkbvfm8LLB7a9UsQtXqBv?=
 =?us-ascii?Q?BC3yGoA0tjKg7J1XCadUdWjY1eToNV/DorNCxK36XLzJcFChvqSopXklhgZp?=
 =?us-ascii?Q?5zB6EaOoB9kj8r4zrl/DF094nnoAsTU9OIisOnd4iOL5WODjTC5CipB2L/Ea?=
 =?us-ascii?Q?bw3gTKYfG0iMFQEQsoeFGC4p6t8M5mNOcDztW8Mi/k/EbxQIFAFpjJaStXJ5?=
 =?us-ascii?Q?LyXn/gW/ZvQjI1RtoOr4mbA8Qykz7CfSwRJTZhpb9WnMPff16lD8RnEdxbKU?=
 =?us-ascii?Q?wFznxNm3KgkY29RAsLGgNX8arVA12WdVuXJUWnonp5uxoFkDq128AmYvWMPX?=
 =?us-ascii?Q?6EQEshGYm44HCfc8F4pcr59kSioWrp+3xzVBPUu/o0YFHXzrgBGWsrnfQTSW?=
 =?us-ascii?Q?KkfzlKT4VDuOCfPzHxSoQN3d8YLvaytXefMVURCx5tAKu5Y3gC2nU2aOs7T+?=
 =?us-ascii?Q?lZYXjkftG7F3KUW02ZQane5FIFkUcyql0BCzht8f?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cbacfbf-eeac-4a52-8ea8-08dd977773dc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 08:22:26.2619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ad58GXMiuyeUd6l36HMyp2Bmb2D0TX3fjvwxd5/oKSb2iRzNRdVLvBGGWa+kf+ucGJFm6jLSt8ZAMlkRKJZRcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6374
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

On Mon, May 19, 2025 at 07:16:23PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Work around Thunderbolt sink disconnect after SINK_COUNT_ESI read (rev2)
> URL   : https://patchwork.freedesktop.org/series/149129/
> State : success

Thanks for the review, patch is pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16565_full -> Patchwork_149129v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_149129v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][1] ([i915#6230])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@api_intel_bb@crc32.html
>     - shard-dg1:          NOTRUN -> [SKIP][2] ([i915#6230])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@api_intel_bb@crc32.html
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][3] ([i915#8411]) +1 other test skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#3555] / [i915#9323])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#9323])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#7697])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#6335]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-dg1:          NOTRUN -> [SKIP][8] +19 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][9] ([i915#5882]) +7 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs1.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#280])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@gem_ctx_sseu@engines.html
>     - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#280])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][12] ([i915#4391] / [i915#4423])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#4525])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu:         NOTRUN -> [ABORT][14] ([i915#11713])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-5/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#6344])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_fence@submit:
>     - shard-dg1:          NOTRUN -> [SKIP][16] ([i915#4812]) +2 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@gem_exec_fence@submit.html
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4812])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_exec_fence@submit.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#3539] / [i915#4852])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][19] ([i915#3539] / [i915#4852])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_flush@basic-wb-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#3539] / [i915#4852])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_exec_flush@basic-wb-pro-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3281]) +12 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#3281]) +4 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#3281]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#3281]) +13 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#3281]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#4537] / [i915#4812])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4860]) +2 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#4860])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#2190])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@gem_huc_copy@huc-copy.html
>     - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#2190])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#4613]) +3 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#4613])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#12193])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#4565])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2-9:        NOTRUN -> [SKIP][35] ([i915#8289])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_media_vme:
>     - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#284])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@basic-short:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4077]) +1 other test skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-4/igt@gem_mmap_gtt@basic-short.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4077]) +5 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_mmap_gtt@basic-small-bo.html
> 
>   * igt@gem_mmap_gtt@big-copy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][39] ([i915#4077]) +3 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_mmap_gtt@big-copy.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#4077]) +6 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_mmap_gtt@medium-copy-odd:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][41] ([i915#12917] / [i915#12964])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@gem_mmap_gtt@medium-copy-odd.html
> 
>   * igt@gem_mmap_wc@bad-size:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4083])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_mmap_wc@bad-size.html
>     - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4083])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@gem_mmap_wc@bad-size.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#4083])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg2-9:        NOTRUN -> [SKIP][45] ([i915#4083]) +2 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-dg2-9:        NOTRUN -> [SKIP][46] ([i915#3282])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#3282])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][48] ([i915#2658])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-snb4/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pread@self:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#3282])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@gem_pread@self.html
> 
>   * igt@gem_pread@snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#3282]) +7 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@gem_pread@snoop.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-rkl:          [PASS][51] -> [TIMEOUT][52] ([i915#12964])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-rkl-8/igt@gem_pxp@create-protected-buffer.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg2-9:        NOTRUN -> [SKIP][53] ([i915#4270]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][54] ([i915#12917] / [i915#12964]) +4 other tests timeout
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4270]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][56] ([i915#12964])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4270]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_readwrite@new-obj:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#3282]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_readwrite@new-obj.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][60] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4079]) +1 other test skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#4079])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#4885])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#3297] / [i915#3323])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@gem_userptr_blits@dmabuf-sync.html
>     - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#3297])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3297])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#3297])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-dg2-9:        NOTRUN -> [SKIP][68] ([i915#3297])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#3281] / [i915#3297])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3297]) +1 other test skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-rkl:          [PASS][71] -> [INCOMPLETE][72] ([i915#13356])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-rkl-8/igt@gem_workarounds@suspend-resume-fd.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-3/igt@gem_workarounds@suspend-resume-fd.html
>     - shard-glk:          [PASS][73] -> [INCOMPLETE][74] ([i915#13356])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-glk3/igt@gem_workarounds@suspend-resume-fd.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-glk5/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-dg2-9:        NOTRUN -> [SKIP][75] +7 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#2527] / [i915#2856])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#2527]) +3 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg2-9:        NOTRUN -> [SKIP][78] ([i915#2856]) +1 other test skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#2856])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_drm_fdinfo@all-busy-check-all:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#14123])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@i915_drm_fdinfo@all-busy-check-all.html
> 
>   * igt@i915_drm_fdinfo@all-busy-idle-check-all:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#14123])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@i915_drm_fdinfo@all-busy-idle-check-all.html
> 
>   * igt@i915_drm_fdinfo@busy-hang@rcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#14073]) +7 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@i915_drm_fdinfo@busy-hang@rcs0.html
> 
>   * igt@i915_drm_fdinfo@busy-hang@vcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#14073]) +5 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@i915_drm_fdinfo@busy-hang@vcs0.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][84] ([i915#14118])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#14118]) +2 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@i915_drm_fdinfo@virtual-busy-idle.html
>     - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#14118])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@i915_drm_fdinfo@virtual-busy-idle.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#6412])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-1/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#8399])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglu:         NOTRUN -> [WARN][89] ([i915#13790] / [i915#2681]) +4 other tests warn
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-dg2-9:        NOTRUN -> [SKIP][90] ([i915#11681] / [i915#6621])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg2-9:        NOTRUN -> [SKIP][91] ([i915#11681])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@i915_pm_rps@thresholds.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-tglu-1:       NOTRUN -> [INCOMPLETE][92] ([i915#4817] / [i915#7443])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#4212])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#4212]) +2 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-a-hdmi-a-2-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#8709]) +2 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_async_flips@async-flip-with-page-flip-events-tiled@pipe-a-hdmi-a-2-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@invalid-async-flip-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#12967])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@kms_async_flips@invalid-async-flip-atomic.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#9531])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#9531])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#5286]) +5 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#5286]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#5286])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#4538] / [i915#5286]) +2 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][103] +8 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#3638]) +1 other test skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#3638]) +6 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#5190]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] +3 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#4538]) +2 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][110] ([i915#4538] / [i915#5190]) +5 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][111] +46 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#6095]) +165 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-15/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][113] ([i915#10307] / [i915#6095]) +24 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-8/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#12313]) +2 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#6095]) +19 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#10307] / [i915#6095]) +191 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#6095]) +9 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#6095]) +45 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][120] ([i915#12805])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#6095]) +24 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][122] ([i915#6095]) +4 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#12313])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#6095]) +4 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-edp-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#12313]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][126] ([i915#12313]) +1 other test skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#14098] / [i915#6095]) +51 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3742]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#13781]) +3 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#3742])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#13783]) +3 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html
> 
>   * igt@kms_chamelium_edid@dp-mode-timings:
>     - shard-dg2-9:        NOTRUN -> [SKIP][132] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_chamelium_edid@dp-mode-timings.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
>     - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#11151] / [i915#7828]) +1 other test skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#11151] / [i915#7828]) +11 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#3555])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][139] ([i915#7118] / [i915#9424])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#9424])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3299])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_content_protection@dp-mst-lic-type-0.html
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#3116])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][144] ([i915#7173])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#9424])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_content_protection@lic-type-1.html
>     - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#9424])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#7118])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#7118] / [i915#9424])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#7118] / [i915#9424]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3555]) +7 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#3555])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2-9:        NOTRUN -> [SKIP][152] ([i915#13049])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#13049]) +3 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][154] ([i915#13566]) +3 other tests fail
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-tglu:         NOTRUN -> [FAIL][155] ([i915#13566]) +1 other test fail
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_cursor_crc@cursor-random-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#13049]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_cursor_crc@cursor-random-512x170.html
>     - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#13049])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][158] ([i915#3555]) +3 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#3555] / [i915#8814])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][160] ([i915#13046] / [i915#5354]) +1 other test skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#4103]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][162] ([i915#4103] / [i915#4213])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
>     - shard-glk:          [PASS][163] -> [FAIL][164] ([i915#2346])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-glk3/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-glk8/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#13046] / [i915#5354]) +2 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][166] +30 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#9809]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [FAIL][168] ([i915#2346])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#9067])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#9067])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#9723])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#9833])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#1257])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#13749])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#13748])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#13707])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#13707])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][178] ([i915#8812])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#3840])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#3840])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#3555] / [i915#3840])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#3555] / [i915#3840])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#2575])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#1839])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#1839])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#658])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_feature_discovery@psr1.html
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#658]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#658])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2-9:        NOTRUN -> [SKIP][189] ([i915#4881])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-tglu-1:       NOTRUN -> [SKIP][190] ([i915#3637] / [i915#9934])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#9934]) +7 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#3637] / [i915#9934])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#9934]) +7 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-dg2-9:        NOTRUN -> [SKIP][194] ([i915#9934]) +2 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#9934]) +4 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [FAIL][197] ([i915#13734])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@blocking-wf_vblank@b-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [FAIL][198] ([i915#11832] / [i915#13734]) +1 other test fail
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_flip@blocking-wf_vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:
>     - shard-tglu:         [PASS][199] -> [FAIL][200] ([i915#13734])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-tglu-3/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-4/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-panning-interruptible:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][201] ([i915#12964]) +12 other tests dmesg-warn
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_flip@flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-mtlp:         [PASS][202] -> [FAIL][203] ([i915#13734]) +4 other tests fail
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-mtlp-8/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-snb:          [PASS][204] -> [FAIL][205] ([i915#13734]) +2 other tests fail
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-snb1/igt@kms_flip@wf_vblank-ts-check.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-snb1/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][206] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#2672]) +4 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#2672] / [i915#3555]) +4 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#3555] / [i915#8810] / [i915#8813]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#2672] / [i915#3555])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#2672]) +2 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][214] ([i915#2672] / [i915#3555] / [i915#5190])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][215] ([i915#2672])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#1825]) +48 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#1825]) +6 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-snb:          NOTRUN -> [SKIP][218] +14 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#3458]) +9 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][220] ([i915#3458]) +7 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][221] ([i915#8708]) +7 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2-9:        NOTRUN -> [SKIP][222] ([i915#3458]) +8 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#8708]) +13 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen:
>     - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#5354]) +14 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
>     - shard-dg2-9:        NOTRUN -> [SKIP][225] ([i915#5354]) +11 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#9766])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#3023]) +34 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#8708]) +9 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][229] +3 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#12713])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#3555] / [i915#8228])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_hdr@static-swap.html
>     - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#3555] / [i915#8228])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2:          [PASS][233] -> [SKIP][234] ([i915#3555] / [i915#8228])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-2/igt@kms_hdr@static-toggle-dpms.html
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#3555] / [i915#8228]) +1 other test skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_hdr@static-toggle-dpms.html
>     - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#3555] / [i915#8228])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][237] ([i915#10656])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#12388])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#12339])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_joiner@basic-ultra-joiner.html
>     - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#12339])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#10656])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-dg2-9:        NOTRUN -> [SKIP][242] ([i915#10656])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#4816])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#6301])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane_lowres@tiling-x:
>     - shard-dg2:          [PASS][245] -> [DMESG-WARN][246] ([i915#13890])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-6/igt@kms_plane_lowres@tiling-x.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-11/igt@kms_plane_lowres@tiling-x.html
> 
>   * igt@kms_plane_lowres@tiling-x@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][247] ([i915#13890])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-11/igt@kms_plane_lowres@tiling-x@pipe-b-dp-3.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#13958])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_plane_multiple@2x-tiling-none.html
>     - shard-rkl:          NOTRUN -> [SKIP][249] ([i915#13958])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][250] ([i915#13958])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][251] ([i915#14259])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#6953])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:
>     - shard-dg2-9:        NOTRUN -> [SKIP][253] ([i915#12247] / [i915#9423])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a:
>     - shard-dg1:          NOTRUN -> [SKIP][254] ([i915#12247]) +8 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#12247]) +4 other tests skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#12247]) +11 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#12247] / [i915#6953] / [i915#9423])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#12247]) +3 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-dg1:          NOTRUN -> [SKIP][259] ([i915#12247] / [i915#3555])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
>     - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#12247] / [i915#3555])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
>     - shard-dg2-9:        NOTRUN -> [SKIP][261] ([i915#12247] / [i915#6953] / [i915#9423])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d:
>     - shard-dg2-9:        NOTRUN -> [SKIP][262] ([i915#12247]) +7 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#5354])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_pm_backlight@basic-brightness.html
>     - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#5354])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2-9:        NOTRUN -> [SKIP][265] ([i915#9685]) +1 other test skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         NOTRUN -> [FAIL][266] ([i915#9295])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#4281])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_pm_dc@dc9-dpms.html
>     - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#4281])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#9519]) +1 other test skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg1:          [PASS][270] -> [DMESG-WARN][271] ([i915#4423])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-17/igt@kms_pm_rpm@i2c.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-18/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#9519])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][273] -> [SKIP][274] ([i915#9519])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][275] ([i915#9519])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#6524] / [i915#6805])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_prime@basic-crc-hybrid.html
>     - shard-dg1:          NOTRUN -> [SKIP][277] ([i915#6524])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#6524])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@kms_prime@basic-modeset-hybrid.html
>     - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#6524])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_properties@get_properties-sanity-atomic:
>     - shard-dg2-9:        NOTRUN -> [FAIL][280] ([i915#14036])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_properties@get_properties-sanity-atomic.html
> 
>   * igt@kms_properties@get_properties-sanity-non-atomic:
>     - shard-rkl:          NOTRUN -> [FAIL][281] ([i915#14036])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_properties@get_properties-sanity-non-atomic.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][282] ([i915#11520]) +3 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#11520]) +3 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][284] ([i915#11520]) +3 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][285] ([i915#11520]) +10 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-dg2-9:        NOTRUN -> [SKIP][286] ([i915#11520]) +3 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][287] ([i915#9683])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_psr2_su@page_flip-nv12.html
>     - shard-dg1:          NOTRUN -> [SKIP][288] ([i915#9683])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-pr-basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#9688]) +7 other tests skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-4/igt@kms_psr@fbc-pr-basic.html
> 
>   * igt@kms_psr@fbc-psr-cursor-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][290] ([i915#9732])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-1/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][292] ([i915#1072] / [i915#9732]) +8 other tests skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_psr@fbc-psr2-sprite-blt.html
> 
>   * igt@kms_psr@pr-sprite-plane-onoff:
>     - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_psr@pr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@pr-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][294] ([i915#9732]) +12 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_psr@pr-suspend.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][295] ([i915#1072] / [i915#9732]) +33 other tests skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-dg2-9:        NOTRUN -> [SKIP][296] ([i915#12755])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#12755] / [i915#5190])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#5289]) +1 other test skip
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#12755])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-rkl:          NOTRUN -> [ABORT][300] ([i915#13179]) +1 other test abort
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
>     - shard-dg2:          NOTRUN -> [ABORT][301] ([i915#13179]) +1 other test abort
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-dg1:          NOTRUN -> [SKIP][302] ([i915#3555])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg2:          NOTRUN -> [SKIP][303] ([i915#8623])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          NOTRUN -> [SKIP][304] ([i915#11920])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-dg1:          NOTRUN -> [SKIP][305] ([i915#9906])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@kms_vrr@max-min.html
>     - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#9906])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          [PASS][307] -> [SKIP][308] ([i915#3555] / [i915#9906])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-11/igt@kms_vrr@negative-basic.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-4/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][309] ([i915#9906])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#2437]) +1 other test skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglu:         NOTRUN -> [SKIP][311] ([i915#2437])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][312] ([i915#2437] / [i915#9412])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#2437])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2-9:        NOTRUN -> [SKIP][314] ([i915#2436])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-tglu:         NOTRUN -> [SKIP][315] ([i915#8516])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][316] ([i915#3708])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][317] ([i915#3708])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-9/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg2:          NOTRUN -> [SKIP][318] ([i915#9917])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-3/igt@sriov_basic@enable-vfs-autoprobe-off.html
>     - shard-dg1:          NOTRUN -> [SKIP][319] ([i915#9917])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          NOTRUN -> [SKIP][320] ([i915#9917]) +1 other test skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu:         NOTRUN -> [FAIL][321] ([i915#12910])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-7/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   * igt@syncobj_eventfd@binary-wait:
>     - shard-rkl:          [PASS][322] -> [DMESG-WARN][323] ([i915#12964]) +1 other test dmesg-warn
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-rkl-8/igt@syncobj_eventfd@binary-wait.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@syncobj_eventfd@binary-wait.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_freq@sysfs:
>     - shard-dg2:          [FAIL][324] ([i915#9561]) -> [PASS][325] +1 other test pass
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-2/igt@gem_ctx_freq@sysfs.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-5/igt@gem_ctx_freq@sysfs.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-rkl:          [TIMEOUT][326] ([i915#12964]) -> [PASS][327]
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-rkl-4/igt@gem_pxp@create-valid-protected-context.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg1:          ([PASS][328], [PASS][329], [PASS][330], [PASS][331], [PASS][332], [PASS][333], [PASS][334], [PASS][335], [PASS][336], [PASS][337], [PASS][338], [PASS][339], [PASS][340], [PASS][341], [PASS][342], [PASS][343], [PASS][344], [PASS][345], [PASS][346], [PASS][347], [PASS][348], [PASS][349], [DMESG-WARN][350], [PASS][351], [PASS][352]) ([i915#4423]) -> ([PASS][353], [PASS][354], [PASS][355], [PASS][356], [PASS][357], [PASS][358], [PASS][359], [PASS][360], [PASS][361], [PASS][362], [PASS][363], [PASS][364], [PASS][365], [PASS][366], [PASS][367], [PASS][368], [PASS][369], [PASS][370], [PASS][371], [PASS][372], [PASS][373], [PASS][374], [PASS][375], [PASS][376], [PASS][377])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-15/igt@i915_module_load@load.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-12/igt@i915_module_load@load.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-12/igt@i915_module_load@load.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-12/igt@i915_module_load@load.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-13/igt@i915_module_load@load.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-13/igt@i915_module_load@load.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-13/igt@i915_module_load@load.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-14/igt@i915_module_load@load.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-14/igt@i915_module_load@load.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-14/igt@i915_module_load@load.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-15/igt@i915_module_load@load.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-15/igt@i915_module_load@load.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-16/igt@i915_module_load@load.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-16/igt@i915_module_load@load.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-16/igt@i915_module_load@load.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-17/igt@i915_module_load@load.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-17/igt@i915_module_load@load.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-17/igt@i915_module_load@load.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-18/igt@i915_module_load@load.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-18/igt@i915_module_load@load.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-18/igt@i915_module_load@load.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-19/igt@i915_module_load@load.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-19/igt@i915_module_load@load.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-19/igt@i915_module_load@load.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-19/igt@i915_module_load@load.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-19/igt@i915_module_load@load.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-15/igt@i915_module_load@load.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-17/igt@i915_module_load@load.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-12/igt@i915_module_load@load.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@i915_module_load@load.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-12/igt@i915_module_load@load.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-18/igt@i915_module_load@load.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@i915_module_load@load.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@i915_module_load@load.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-18/igt@i915_module_load@load.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-19/igt@i915_module_load@load.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-19/igt@i915_module_load@load.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-13/igt@i915_module_load@load.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-15/igt@i915_module_load@load.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-13/igt@i915_module_load@load.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-18/igt@i915_module_load@load.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-17/igt@i915_module_load@load.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@i915_module_load@load.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-15/igt@i915_module_load@load.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-13/igt@i915_module_load@load.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@i915_module_load@load.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-18/igt@i915_module_load@load.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-17/igt@i915_module_load@load.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@i915_module_load@load.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-12/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload:
>     - shard-mtlp:         [INCOMPLETE][378] -> [PASS][379]
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-mtlp-4/igt@i915_module_load@reload.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-2/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [FAIL][380] ([i915#3591]) -> [PASS][381] +1 other test pass
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][382] ([i915#13729] / [i915#13821]) -> [PASS][383]
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-snb2/igt@i915_pm_rps@reset.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-snb4/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [INCOMPLETE][384] ([i915#4817]) -> [PASS][385]
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-rkl-3/igt@i915_suspend@forcewake.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-7/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking:
>     - shard-glk:          [FAIL][386] ([i915#12177]) -> [PASS][387]
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
>     - shard-glk:          [FAIL][388] ([i915#11859]) -> [PASS][389]
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][390] ([i915#11808]) -> [PASS][391] +1 other test pass
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_busy@extended-modeset-hang-newfb-with-reset:
>     - shard-rkl:          [DMESG-WARN][392] ([i915#12964]) -> [PASS][393] +3 other tests pass
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-rkl-4/igt@kms_busy@extended-modeset-hang-newfb-with-reset.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_busy@extended-modeset-hang-newfb-with-reset.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [INCOMPLETE][394] ([i915#12796]) -> [PASS][395] +1 other test pass
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [TIMEOUT][396] ([i915#14033]) -> [PASS][397] +1 other test pass
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-snb5/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:
>     - shard-tglu:         [FAIL][398] ([i915#13734]) -> [PASS][399] +1 other test pass
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-tglu-3/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [SKIP][400] ([i915#3555] / [i915#8228]) -> [PASS][401]
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_lease@lease-uevent:
>     - shard-dg1:          [DMESG-WARN][402] ([i915#4423]) -> [PASS][403] +2 other tests pass
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-13/igt@kms_lease@lease-uevent.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-19/igt@kms_lease@lease-uevent.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][404] ([i915#9519]) -> [PASS][405] +1 other test pass
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html
>     - shard-rkl:          [SKIP][406] ([i915#9519]) -> [PASS][407]
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-mtlp:         [INCOMPLETE][408] ([i915#13520]) -> [PASS][409]
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-mtlp-6/igt@perf_pmu@module-unload.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-4/igt@perf_pmu@module-unload.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_chamelium_hpd@dp-hpd:
>     - shard-dg1:          [SKIP][410] ([i915#11151] / [i915#4423] / [i915#7828]) -> [SKIP][411] ([i915#11151] / [i915#7828])
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-13/igt@kms_chamelium_hpd@dp-hpd.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          [SKIP][412] ([i915#7118] / [i915#9424]) -> [FAIL][413] ([i915#7173])
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-6/igt@kms_content_protection@legacy.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-11/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [FAIL][414] ([i915#7173]) -> [SKIP][415] ([i915#9424])
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-7/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          [FAIL][416] ([i915#1339] / [i915#7173]) -> [SKIP][417] ([i915#7118] / [i915#9424])
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-11/igt@kms_content_protection@uevent.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-2/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-dg1:          [SKIP][418] ([i915#13049] / [i915#4423]) -> [SKIP][419] ([i915#13049])
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-16/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-16/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [SKIP][420] ([i915#13707]) -> [FAIL][421] ([i915#14087])
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          [SKIP][422] ([i915#10433] / [i915#3458]) -> [SKIP][423] ([i915#3458]) +2 other tests skip
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [SKIP][424] ([i915#3458]) -> [SKIP][425] ([i915#10433] / [i915#3458]) +4 other tests skip
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen:
>     - shard-dg1:          [SKIP][426] -> [SKIP][427] ([i915#4423])
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-mtlp:         [SKIP][428] ([i915#12713]) -> [SKIP][429] ([i915#1187] / [i915#12713])
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-mtlp-8/igt@kms_hdr@brightness-with-hdr.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [SKIP][430] ([i915#3361]) -> [FAIL][431] ([i915#9295])
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][432] ([i915#3828]) -> [SKIP][433] ([i915#9340])
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-dg1:          [SKIP][434] ([i915#11520] / [i915#4423]) -> [SKIP][435] ([i915#11520])
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16565/shard-dg1-13/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/shard-dg1-19/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
>   [i915#12193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14036
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14087
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16565 -> Patchwork_149129v2
> 
>   CI-20190529: 20190529
>   CI_DRM_16565: 36da6a9300fc8686d01b5450723200dafd89526f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8366: 8366
>   Patchwork_149129v2: 36da6a9300fc8686d01b5450723200dafd89526f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149129v2/index.html
