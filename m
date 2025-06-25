Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72498AE8545
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 15:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B85F110E72D;
	Wed, 25 Jun 2025 13:54:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RoO5ZSxT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CA7F10E22C;
 Wed, 25 Jun 2025 13:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750859658; x=1782395658;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NH1sXohRod6vgp/PEkuS+sO5cuoZCpPiQ6Ad9PYzz9w=;
 b=RoO5ZSxTuEV5q0Jrf6mxroWuWsCB02MHxEcH+AVo4d0+9kvBDfW/dR7q
 zOVMRZBTemcw2CT33djmRlaJprXoqSbQbt82QKteL2s4EVIyP3p2TBIpd
 ImP5HU14Lb6D6yFNj5pEKPYbFMnDNlK17PmjLvN8yyGTSTGYn45f5jvTV
 9keWGQpoZtpTigDymwXK7Lfic4cE7+oZZuUsG6Fft8uv9oGhssbw0E9u7
 ZRJXwjk0yCJqhi63Oj/kFv/C7Brk5UgNBpDpIt6uiRvaQ+xoX3oAP+9OH
 1msdKjocNwdc1KdlE1asQZ9cMWASIyU3Rft3zbQUV8SFsPiP9qOmAvjrw w==;
X-CSE-ConnectionGUID: a6LxO0iXT8C4EHILIRFVgA==
X-CSE-MsgGUID: 0+UXAzykSMiJe4i2aZwHmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="53002018"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="53002018"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 06:54:17 -0700
X-CSE-ConnectionGUID: uwb6z6vyTMuC7mTmJ7bPrA==
X-CSE-MsgGUID: tM387PX/TM2rgWDCS/sLzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="183116656"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 06:54:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 06:54:16 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 25 Jun 2025 06:54:16 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.49)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 06:54:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cj6acQAkKoTyVYeqyNZ3BI10g3Re6z1ttJdcbPy4OhUz6wm8u2i6/9IQLq97L1wDiJMdlO0Tqlc2nZeUuNZRc3dI60Rc3FYgXLxLe9x0zBCHRMyIIwEuE8L1cvRanm8v6vt3adT9dNolOLDKhtzCUf7HpXL/CKT3QpBF6Vw86hm/JCBOfQ1sphs/a7Fv6KmXAFawdgJdnkU0eCQAkLbxdOY4v2vXfVKJmDCs0pMQdFg89pRkfgp9rC6FbWm6OZ+LBCwknBogklXGvnBvtsmlWm61/H+OQoIqeO+/ZPdMTG/2GikpTdM7pUBWB+Vc8Jl0hMGRftZmfVbKV3jjMgH2NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OLvP1ASwvamC8Cv+D65HkLcrtEQHQ++msjJqq+61DQ4=;
 b=JjOVJkwSy6g1RUnl8LlS2ii3Dc+vsypCZArIEDFy8dtiBZuYjqwartZz3an2k2+vUJwxDDV+ZmvfBfrnOLzqx7jo/uTNJ7W4iNdNoBbYahc9/Vv7nsFK1VF9eeRRU+DS49PU7q9D1KGrhkisKRqu2mWUh6/7UsdyZvSQESqDsbG/UYIKvTAOIkQyKx0tL+hrnW8vADE+e7BndAragVyjBnMnpUCvu0rQcLkdaZh3dLPKdIL0kgptQmwjUHWbcubBQVkdQL1wPQf8OSKF1Ba1EW1Bpl7XmNUsqTd7uSBDZYEWDVlpcU9Udy9t+JLMXou+8n0R5OD0ZtrkiXLDdrQ/gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.17; Wed, 25 Jun
 2025 13:54:14 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8880.015; Wed, 25 Jun 2025
 13:54:14 +0000
Date: Wed, 25 Jun 2025 09:54:11 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>
Subject: Re: [PATCH 3/3] drm/i915/power: convert {SKL,
 ICL}_PW_CTL_IDX_TO_PG() macros to a function
Message-ID: <aFv_g_8vzoRa58nP@intel.com>
References: <cover.1750855147.git.jani.nikula@intel.com>
 <3aa74825db0b900f93b94aa89d0242a354929b85.1750855148.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3aa74825db0b900f93b94aa89d0242a354929b85.1750855148.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0029.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::42) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH0PR11MB5013:EE_
X-MS-Office365-Filtering-Correlation-Id: 417e3a77-a279-407c-7f5f-08ddb3efc506
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TfuU6splN456H1lxI5DfIQ1yAMr5dSSulR5VMTXgjSwr8WATvO12U9uOOdHD?=
 =?us-ascii?Q?UMKa2jKxyhrV7uN8N6PvA/qqdtzPEX28gr5HSGhDcA23aJTGDqqRr718zIZl?=
 =?us-ascii?Q?tbn3o+t79HjJ73034oaVYFkp9XqRoZnzyHU/cX91LhVVkJf0uMqNzYvuh+po?=
 =?us-ascii?Q?AN9UZEF7CX6V1sLl/IEPG401ELaT0d3K7jzmH+nZ7aL60v7ajzs6p8QI7cuj?=
 =?us-ascii?Q?6+n9pj6IgytcafclBNQS5csvq0/2dwxpbOyUwUl7oeHCkit2wVzDWq7R4ZvL?=
 =?us-ascii?Q?/qJHkmtBwUuc7LlG3gGFsEbGBaprbgKvajkj7LJb2HJNxzk4+nnwPMsWpiNb?=
 =?us-ascii?Q?2LedDeehAjwGlt0dHOSrffsotzU24XuEy4h1E+T8xcoft1dz0aGhoRJqI81D?=
 =?us-ascii?Q?3Ko2v7X93h0YQSdpZNn+MbBSmkeIahlRFsA0Y7N3tdqrmbw2mhfpweh8nMQi?=
 =?us-ascii?Q?bSnbfKydBS2SKCVZWoEFak+F1ENAkdUA2tTH3ix2Fki76ulFuOu5ehFhTtht?=
 =?us-ascii?Q?jdPC6wLq9oSepGFWGakeBh0Mksh1S+tHDLX3VHJH5A3lY8FOeIN3eLkBkRu4?=
 =?us-ascii?Q?Y7x2mHoEWRuTPcr9OIHDyYYdDwJaS/Lq6JtmaUg/XKNDw9z0UDU0xcT7GABk?=
 =?us-ascii?Q?8ecsII2C4oOFuti3tdCXbLcH79nngDFRTgKNuwNqSswgE60F3pN8ANjFHv33?=
 =?us-ascii?Q?kgPTzQu4mySxQOFCt94ZIlqxSUZPLWX0OiBVF1xFW77Qe2dNP8ZmqMQkp5UE?=
 =?us-ascii?Q?PfuAE9AiXBbMZacx6L3UMCfR4B/731xni3Xzr+CH4QLdsomvNhNsqU1nC8vB?=
 =?us-ascii?Q?+tVzs7GTMB92ceT1J4obYQoDz4PTQ6IMwn0uSV5d1sAb+OsIda0HPdOVHVll?=
 =?us-ascii?Q?c+lO5YRL71iDwUB7Yo2x9J6vg8J4Aq6WyA/VAuLUCjDrjQKaU6tEjrbYvQvG?=
 =?us-ascii?Q?R+2Xo7fCiNJFfG0LaucnzwfJB60nCr8gSeBIW4k17Ymjv2CuwtKD9Ydc45ss?=
 =?us-ascii?Q?rKS718du/FUuwOp743yW7j65qX7yCgvK3SHwXQPHYgHJOBX69mCnpuc0+xBC?=
 =?us-ascii?Q?fS3tGj+AzxiDdgzNzIl+qsgLEx0rbXF8bPNzrCxrJwUf7xsMWAhp+ggU8HFF?=
 =?us-ascii?Q?jTRopZH4rB7fX29GqgAlG5v0K0kEEQ+Ed6Chq/T+ED7w2HcN4323BzQ6Sw9g?=
 =?us-ascii?Q?EHucsKmWTIiFow7x7jVm6pryFMzqMoEBSByrilqe6vrH5j9J3aFm6XOTY68l?=
 =?us-ascii?Q?+GkLJodMALrhCwxNARGxUQ7iFk4re0rK+adzpBbFEm4UaHV8if/sQM+YzgSo?=
 =?us-ascii?Q?gazkKPTZ/YOfz5eL1CrGCQvwmF/wikxsxP+1zdVERCpfIB+LqHgBU6u7rXW5?=
 =?us-ascii?Q?t9tDPyv2ezfW2ZAnzSw52SLq7eGg+mpnw7U2UzHNeA2swYUSYQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9uE1Nr9iyhqKemW+uEy5fPt7YTA2v8Chg3EDOQrtS1YWC5pB5KDqhD96NUhg?=
 =?us-ascii?Q?pVFA2MplRH3f8MBOAeft8MSg0zINbglfJstSkuDeErpSP22WjW84Itl34/1h?=
 =?us-ascii?Q?2kAjk9mZ2Qep+rk4xkaSMSAZZM7BbUbYu1bK8oPRgnFqbXz37bZ/XgLYxyY9?=
 =?us-ascii?Q?8Af/wnQitNHgq17JuGvV5Wj+tii2So7ajtpqfTF/Xrit9izbY8dY9osMxIga?=
 =?us-ascii?Q?Qm9qOfJpZTkcYs2cXduj9WS/3jJ8AQ0eyWdTRRxHNbRAoB/gpe2g7E6ZLc40?=
 =?us-ascii?Q?TDtwCCkqpp1aRjpjFLF+dwLu8IdEUVBs/li7g1yBBKbgjy0KQjJ70o/jM5LF?=
 =?us-ascii?Q?YwHZ96AOsyg7coEFtCOXaMkhQZT0cfx/kR+QRZZrbz5VPGIysxWSA2U25tXv?=
 =?us-ascii?Q?1l1NHEbd0xdpfSnfHUyv4ti+GEQtN58BEA+E6w9pz7wdFYMUkUJj4lWwc+Gw?=
 =?us-ascii?Q?PbKqjwN42WM0It/yQ2V1UbwB9HEmDYRmORa3oPlDGv8kZk7WcOISiUMgNXo3?=
 =?us-ascii?Q?y2p5cep5uZXaCyUhv8iUQl+C/na9s9EwZ5QgiJBuA+8eGqMSFcGtDzBgRxuN?=
 =?us-ascii?Q?/PiGcYnASUH9UbpFxNvdzNNSIYVpxeBsM8xTaElAjUxP0uYLru5AFXAnSQOu?=
 =?us-ascii?Q?cPSdJ6a58VbRW/yRY42RhHXX5LikDbBCFMBSuyGNbV8E95OHh3XYAmhA30OV?=
 =?us-ascii?Q?RhDFWLJDWWkniXc1bnmlU7K7pMXNndAYQIYVv6dkWt1fzrNj9iRPSiLT9uuf?=
 =?us-ascii?Q?ip0TZYzbvoej8jWoc3rQKm+mugy5IkT/+CZBYjiHD81uM5MxZPlfr8cKYeU6?=
 =?us-ascii?Q?ZpQvbjdnFH34A2P4JOnYJzQunOA6c/q3mV6OZQXsKmXtg2y+s50jxLLUUJEF?=
 =?us-ascii?Q?uZkp+GdUO4irGaJ3FSM8QnVVMPu4UjihKEw6/KxW/frFlDZBsXAR8TNvSVR9?=
 =?us-ascii?Q?abS0CqxfkOryr2xAGSwSUT7cm7W+SR0yEtpemFS+meJd+bbuJ6Htbc3TL9LT?=
 =?us-ascii?Q?FsJd6rZGmwdEAkDJsM3bsW9XgKMslkSNUdZCdVDi5ksX5N4AL+mi5/IUhl5P?=
 =?us-ascii?Q?b4aaTK+Ne+FQT5CguDI+DbgMaXnE3e9X/WoEClskXIKEsmbT6I42eSAXK7WL?=
 =?us-ascii?Q?gnblc6XV+07p0g6Su6sXR+OEafd6wRVDkPUX89joI5X+TpVmksE+Up0uMAwb?=
 =?us-ascii?Q?uY8XHQnxTy0fDE+E/0E8Hagk/Dj1iYxA4noHDB0+JPjJYnDT3Swvm0Sy9ME5?=
 =?us-ascii?Q?93D59xaa4R0kJMfUOT0kIp8GiNLE8gX3XOcOmGg/BIN28uyjZ6oFg/q2fhjN?=
 =?us-ascii?Q?AUrXLk6PLWmaIeveby4XgMhPamH6LV+wvhZ3CcVXRX4elGNgEypOcxWcLfKb?=
 =?us-ascii?Q?Zce63IPjtbxzN5G1LLxb1XjYlrPgFQ+UZIa7f5S0HT7dxzqQM58Yqq4jeT52?=
 =?us-ascii?Q?GecikBtfo9dlSrZUnItdTyBSrBWCp60MX6EJhCMi/eKayD2YkY/C2eZAlm+d?=
 =?us-ascii?Q?Zl7xH/h5Ziaj9PHxHakUpH3dYLU1WHJ0+E7QAgPJskrIQsftcxoTVDhpbd70?=
 =?us-ascii?Q?ZzS+jjooRjNqR4e6jv356Fz4Dq0zUxPelOnNBNYwdMhdEtBARw7oppqDSYYW?=
 =?us-ascii?Q?1g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 417e3a77-a279-407c-7f5f-08ddb3efc506
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2025 13:54:14.2957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cOzgf8kU5GO83oa+k/NKIfOGD9o4mRRxVv5YPOo62bEB1MC5DDLCbdrZqh+WhkT3anHF6lgP9pFzMgMDSj9Npw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5013
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

On Wed, Jun 25, 2025 at 03:39:38PM +0300, Jani Nikula wrote:
> Add pw_ctl_idx_to_pg() helper function to deduplicate the open-coded
> usage of the {SKL,ICL}_PW_CTL_IDX_TO_PG() macros.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   | 24 +++++++++----------
>  1 file changed, 11 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 9d60dfc4939d..4a876fa815bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -36,16 +36,15 @@
>  
>  /*
>   * PG0 is HW controlled, so doesn't have a corresponding power well control knob
> - * SKL_DISP_PW1_IDX..SKL_DISP_PW2_IDX -> PG1..PG2
> - */
> -#define  SKL_PW_CTL_IDX_TO_PG(pw_idx)		\
> -	((pw_idx) - SKL_PW_CTL_IDX_PW_1 + SKL_PG1)
> -/*
> - * PG0 is HW controlled, so doesn't have a corresponding power well control knob
> - * ICL_DISP_PW1_IDX..ICL_DISP_PW4_IDX -> PG1..PG4
> + *
> + * {ICL,SKL}_DISP_PW1_IDX..{ICL,SKL}_DISP_PW4_IDX -> PG1..PG4
>   */
> -#define  ICL_PW_CTL_IDX_TO_PG(pw_idx)		\
> -	((pw_idx) - ICL_PW_CTL_IDX_PW_1 + SKL_PG1)
> +static enum skl_power_gate pw_idx_to_pg(struct intel_display *display, int pw_idx)
> +{
> +	int pw1_idx = DISPLAY_VER(display) >= 11 ? ICL_PW_CTL_IDX_PW_1 : SKL_PW_CTL_IDX_PW_1;
> +
> +	return pw_idx - pw1_idx + SKL_PG1;

\o/ I hate macros! :)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +}
>  
>  struct i915_power_well_regs {
>  	i915_reg_t bios;
> @@ -363,8 +362,7 @@ static void hsw_power_well_enable(struct intel_display *display,
>  	if (power_well->desc->has_fuses) {
>  		enum skl_power_gate pg;
>  
> -		pg = DISPLAY_VER(display) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
> -						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
> +		pg = pw_idx_to_pg(display, pw_idx);
>  
>  		/* Wa_16013190616:adlp */
>  		if (display->platform.alderlake_p && pg == SKL_PG1)
> @@ -388,8 +386,8 @@ static void hsw_power_well_enable(struct intel_display *display,
>  	if (power_well->desc->has_fuses) {
>  		enum skl_power_gate pg;
>  
> -		pg = DISPLAY_VER(display) >= 11 ? ICL_PW_CTL_IDX_TO_PG(pw_idx) :
> -						 SKL_PW_CTL_IDX_TO_PG(pw_idx);
> +		pg = pw_idx_to_pg(display, pw_idx);
> +
>  		gen9_wait_for_power_well_fuses(display, pg);
>  	}
>  
> -- 
> 2.39.5
> 
