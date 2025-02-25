Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E39C8A441E9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 15:10:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6686510E6C0;
	Tue, 25 Feb 2025 14:10:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cqR6OM/j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 119AB10E6BE;
 Tue, 25 Feb 2025 14:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740492616; x=1772028616;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=mdQdfvbN3MIwNwnmnb0+ScIDz8myjrlZ77RdDt46fEU=;
 b=cqR6OM/jz0YonqRTXUPPFqgsTVLnlVdGb1xX32yI/5Z6y+XUzhe7tYJj
 Z/QWQtkBddhZlFt8Ep0nRecpgk10k8KYOCkAz+g/adqYNdMlb5SaWRRFi
 /IaUPaCjB36FpenVmKyDlQBw8kIrej0fBTi1/OQt6l/bBdJ0edrSsLMO8
 +F71/4AgZoHYYyWZ3V9LiM9WQDYL4rbahMli0PvGw7XCESN+CxF4pAxdq
 1+MxKGAD7Y8BRNIQVW8NEotlA5k5Vs0B9YBV7LPiB7I/RTcStg17qHCNi
 Mosech/FFP0u5AE4cFajWAGGT47csOX4o7M9NG/FE2OTGZWF67merSmUy Q==;
X-CSE-ConnectionGUID: Sz9NgediSdWdR969PquXdw==
X-CSE-MsgGUID: LV2YYIknRTSxhGtYyyGd7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41426320"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41426320"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 06:10:15 -0800
X-CSE-ConnectionGUID: 0JBVdTzSRCOkPlD37iZ/hA==
X-CSE-MsgGUID: 6zl32odyTqmFBZvPdMR4kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="121488357"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 06:10:12 -0800
Date: Tue, 25 Feb 2025 16:11:10 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure_fo?=
 =?utf-8?Q?r?= drm/i915/dp_mst: Fix encoder HW state readout for UHBR MST
Message-ID: <Z73PfgYG6dN8sBHy@ideak-desk.fi.intel.com>
References: <20250224093242.1859583-1-imre.deak@intel.com>
 <174042173000.1684818.4587169648660624677@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <174042173000.1684818.4587169648660624677@b555e5b46a47>
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

On Mon, Feb 24, 2025 at 06:28:50PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Fix encoder HW state readout for UHBR MST
> URL   : https://patchwork.freedesktop.org/series/145300/
> State : failure

Thanks for the review, patch is pushed to drm-intel-next.

The failure is unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16170_full -> Patchwork_145300v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_145300v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_145300v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_145300v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
>     - shard-mtlp:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-mtlp-4/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

There is no UHBR sink connected on the above host, so the changes are
not relevant to it.

The issue is:

vblank interval differs from modeline! expected 11111.1us, measured 11186us +- 2.235us, difference 74.8us (33.5 sigma)

The closest ticket I found:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734

although it's on another host/output type.

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_16170_full and Patchwork_145300v1_full:
> 
> ### New IGT tests (202) ###
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-a-dp-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-dp-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-c-dp-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-d-dp-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - Statuses : 1 pass(s) 1 skip(s)
>     - Exec time: [0.0, 3.76] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - Statuses : 1 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - Statuses : 1 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - Statuses : 1 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.01] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 pass(s) 1 skip(s)
>     - Exec time: [0.0, 2.03] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.88] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.09] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.09] s
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.08] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-d-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-dp-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [8.91] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-dp-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.78] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-dp-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.81] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-d-dp-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.81] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [2.41] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.68] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.69] s
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.70] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [9.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.67] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.67] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.67] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-d-hdmi-a-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.28] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - Statuses : 2 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-a-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.01] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-b-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.07] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.07] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-d-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.05] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-4:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-b-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-dp-3:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_145300v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8411])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@debugfs_test@basic-hwmon:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#9318])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#11078])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@device_reset@cold-reset-bound.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-tglu:         [PASS][6] -> [ABORT][7] ([i915#12817] / [i915#5507])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-tglu-8/igt@device_reset@unbind-reset-rebind.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-9/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-hang@bcs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][8] ([i915#8414]) +24 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@drm_fdinfo@busy-hang@bcs0.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vcs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][9] ([i915#11527] / [i915#8414]) +6 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@drm_fdinfo@busy-idle-check-all@vcs0.html
> 
>   * igt@drm_fdinfo@isolation:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#8414]) +8 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@drm_fdinfo@isolation.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#13008])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#9323]) +2 other tests skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][13] -> [INCOMPLETE][14] ([i915#12392] / [i915#13356])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2-9:        NOTRUN -> [SKIP][15] ([i915#7697])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_close_race@multigpu-basic-threads.html
>     - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#7697])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_compute@compute-square:
>     - shard-dg2-9:        NOTRUN -> [FAIL][17] ([i915#13665])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_compute@compute-square.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-tglu-1:       NOTRUN -> [SKIP][18] ([i915#6335])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#6335])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg2-9:        NOTRUN -> [SKIP][20] ([i915#8555])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#5882]) +7 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#280])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg2:          [PASS][23] -> [FAIL][24] ([i915#5784])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-11/igt@gem_eio@kms.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@wait-wedge-immediate:
>     - shard-mtlp:         [PASS][25] -> [ABORT][26] ([i915#13193]) +2 other tests abort
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-mtlp-7/igt@gem_eio@wait-wedge-immediate.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-7/igt@gem_eio@wait-wedge-immediate.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4812]) +4 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg2-9:        NOTRUN -> [SKIP][28] ([i915#4771])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@noheartbeat:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#8555]) +1 other test skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@gem_exec_balancer@noheartbeat.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#4525]) +2 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3539] / [i915#4852])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#3539])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][33] ([i915#3539] / [i915#4852])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-dg2-9:        NOTRUN -> [SKIP][34] +6 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#3281])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3281]) +15 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-dg2-9:        NOTRUN -> [SKIP][37] ([i915#3281]) +3 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3281]) +6 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4537] / [i915#4812]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2-9:        NOTRUN -> [SKIP][40] ([i915#4537] / [i915#4812])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-threaded-none:
>     - shard-dg2-9:        NOTRUN -> [SKIP][41] ([i915#4860])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4860]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4613])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#4613]) +2 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-tglu:         NOTRUN -> [SKIP][45] ([i915#4613])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#4613])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#8289])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo:
>     - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#4077]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@gem_mmap_gtt@basic-small-bo.html
> 
>   * igt@gem_mmap_gtt@basic-write:
>     - shard-dg2-9:        NOTRUN -> [SKIP][49] ([i915#4077]) +2 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_mmap_gtt@basic-write.html
> 
>   * igt@gem_mmap_gtt@big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4077]) +14 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@gem_mmap_gtt@big-copy-odd.html
> 
>   * igt@gem_mmap_wc@pf-nonblock:
>     - shard-dg2-9:        NOTRUN -> [SKIP][51] ([i915#4083]) +1 other test skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_mmap_wc@pf-nonblock.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4083]) +4 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3282]) +4 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-dg2-9:        NOTRUN -> [SKIP][54] ([i915#3282])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#3282])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#4270]) +2 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][57] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-tglu:         NOTRUN -> [SKIP][58] ([i915#13398])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#4270])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3282]) +6 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_render_copy@yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#8428]) +2 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@gem_render_copy@yf-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][62] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#5190] / [i915#8428]) +5 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-rkl:          NOTRUN -> [FAIL][64] ([i915#12941])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@gem_tiled_swapping@non-threaded.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-dg2-9:        NOTRUN -> [SKIP][65] ([i915#3297])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg2-9:        NOTRUN -> [SKIP][66] ([i915#3281] / [i915#3297])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#3297]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-mtlp:         NOTRUN -> [SKIP][68] +7 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@gen3_render_linear_blits.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#2856]) +1 other test skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#2527] / [i915#2856])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#2856]) +2 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#2527] / [i915#2856])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@gen9_exec_parse@bb-start-out.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][73] ([i915#2856])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#2527]) +2 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@load:
>     - shard-glk:          ([PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97]) -> ([PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [DMESG-WARN][111], [PASS][112], [PASS][113], [PASS][114], [PASS][115]) ([i915#118])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk3/igt@i915_module_load@load.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk4/igt@i915_module_load@load.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk4/igt@i915_module_load@load.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk3/igt@i915_module_load@load.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk4/igt@i915_module_load@load.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk3/igt@i915_module_load@load.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk6/igt@i915_module_load@load.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk6/igt@i915_module_load@load.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk2/igt@i915_module_load@load.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk6/igt@i915_module_load@load.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk7/igt@i915_module_load@load.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk2/igt@i915_module_load@load.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk7/igt@i915_module_load@load.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk2/igt@i915_module_load@load.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk7/igt@i915_module_load@load.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk8/igt@i915_module_load@load.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk1/igt@i915_module_load@load.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk8/igt@i915_module_load@load.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk9/igt@i915_module_load@load.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk1/igt@i915_module_load@load.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk9/igt@i915_module_load@load.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk1/igt@i915_module_load@load.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk9/igt@i915_module_load@load.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk1/igt@i915_module_load@load.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk1/igt@i915_module_load@load.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk2/igt@i915_module_load@load.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk2/igt@i915_module_load@load.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk3/igt@i915_module_load@load.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk3/igt@i915_module_load@load.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk4/igt@i915_module_load@load.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk4/igt@i915_module_load@load.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk4/igt@i915_module_load@load.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk6/igt@i915_module_load@load.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk6/igt@i915_module_load@load.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk7/igt@i915_module_load@load.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk7/igt@i915_module_load@load.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk7/igt@i915_module_load@load.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk8/igt@i915_module_load@load.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk8/igt@i915_module_load@load.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk9/igt@i915_module_load@load.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk9/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [PASS][116] -> [ABORT][117] ([i915#9820])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#11681])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@i915_pm_rps@thresholds.html
> 
>   * igt@i915_pm_rps@thresholds-idle:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#11681])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@i915_pm_rps@thresholds-idle.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][120] ([i915#9311]) +1 other test dmesg-warn
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@i915_selftest@mock@memory_region.html
>     - shard-tglu-1:       NOTRUN -> [DMESG-WARN][121] ([i915#9311]) +1 other test dmesg-warn
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][122] ([i915#4212])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#12454] / [i915#12712])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4212])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#8709]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#8709]) +15 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@invalid-async-flip-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#12967])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_async_flips@invalid-async-flip-atomic.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#9531])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#5286]) +3 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#5286])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#5286])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-mtlp:         [PASS][132] -> [FAIL][133] ([i915#5138])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][134] +10 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4538] / [i915#5190]) +9 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3638]) +1 other test skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2-9:        NOTRUN -> [SKIP][137] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-addfb:
>     - shard-dg2-9:        NOTRUN -> [SKIP][138] ([i915#5190])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_big_fb@y-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#5190])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][140] +12 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#6095]) +14 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-8/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#10307] / [i915#6095]) +34 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#6095]) +9 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#12313]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#6095]) +19 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3 (NEW):
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#6095]) +131 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][148] ([i915#6095]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#6095]) +20 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-dp-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#12313]) +1 other test skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#6095]) +82 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#10307] / [i915#6095]) +161 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-10/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-c-dp-4.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#12313])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#11616] / [i915#7213])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#4087]) +3 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#11151] / [i915#7828]) +8 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#11151] / [i915#7828]) +10 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2-9:        NOTRUN -> [SKIP][158] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#7118] / [i915#9424])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#9424])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_content_protection@content-type-change.html
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#9424])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][165] ([i915#3299])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_content_protection@dp-mst-type-0.html
>     - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#3116] / [i915#3299])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#3299])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          NOTRUN -> [FAIL][168] ([i915#7173]) +2 other tests fail
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#7118])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_content_protection@srm.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#6944] / [i915#7116] / [i915#7118])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][171] ([i915#12964]) +5 other tests dmesg-warn
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-256x85@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-max-size:
>     - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#3555])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#13049]) +1 other test skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#13049]) +1 other test skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#4103] / [i915#4213])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#13046] / [i915#5354]) +2 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][177] ([i915#13046] / [i915#5354]) +1 other test skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#9067])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#4103])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#8588])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2:          [PASS][181] -> [SKIP][182] ([i915#13707])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#13707])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#13707])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#8812])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3555] / [i915#3840])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_dsc@dsc-with-bpc-formats.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#3555] / [i915#3840])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg2-9:        NOTRUN -> [SKIP][188] ([i915#3555] / [i915#3840])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#3555] / [i915#3840])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#3840] / [i915#9053])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-dg2:          [PASS][191] -> [FAIL][192] ([i915#4767])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-5/igt@kms_fbcon_fbt@fbc-suspend.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#3955]) +1 other test skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#1839])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_feature_discovery@display-3x.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#1839])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#1839]) +1 other test skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_feature_discovery@display-4x.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][197] ([i915#1839])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#9337])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank:
>     - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#3637]) +2 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#3637]) +2 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#9934]) +1 other test skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
>     - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#3637])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#9934]) +9 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-snb:          [PASS][204] -> [FAIL][205] ([i915#11832]) +1 other test fail
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-snb4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-snb7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#9934]) +8 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank:
>     - shard-mtlp:         [PASS][207] -> [FAIL][208] ([i915#13690])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-mtlp-4/igt@kms_flip@flip-vs-absolute-wf_vblank.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@kms_flip@flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-panning-vs-hang:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][209] ([i915#12314] / [i915#6113]) +1 other test incomplete
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_flip@flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#2672]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#2672] / [i915#3555]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][212] ([i915#2672] / [i915#3555] / [i915#5190])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][213] ([i915#2672])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][214] ([i915#2672] / [i915#3555] / [i915#8813])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#2672] / [i915#8813])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#2672]) +1 other test skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#2672] / [i915#3555]) +1 other test skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-rte:
>     - shard-dg2-9:        NOTRUN -> [FAIL][219] ([i915#6880])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][220] +18 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
>     - shard-dg2:          [PASS][221] -> [FAIL][222] ([i915#6880]) +3 other tests fail
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#3458]) +17 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#3023]) +18 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#8708]) +14 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][226] ([i915#5354]) +14 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#5354]) +18 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#1825]) +35 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][229] ([i915#3458]) +5 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#10055])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#1825]) +5 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][232] ([i915#8708]) +10 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][233] +17 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8228])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#12713])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#3555] / [i915#8228]) +3 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [PASS][237] -> [SKIP][238] ([i915#3555] / [i915#8228]) +1 other test skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#10656])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#12339])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [PASS][241] -> [SKIP][242] ([i915#12388])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#10656])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-dg2-9:        NOTRUN -> [SKIP][244] ([i915#13522])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-dg2-9:        NOTRUN -> [SKIP][245] ([i915#4816])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#6301])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][247] ([i915#8821])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#3555] / [i915#8821])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_plane_lowres@tiling-yf.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][249] ([i915#3555])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#3555]) +4 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:
>     - shard-dg2-9:        NOTRUN -> [SKIP][251] ([i915#12247] / [i915#9423])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#12247]) +12 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation:
>     - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#12247] / [i915#9423])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25:
>     - shard-dg2-9:        NOTRUN -> [SKIP][254] ([i915#12247] / [i915#6953] / [i915#9423])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][255] ([i915#12247] / [i915#6953] / [i915#9423])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#12247] / [i915#6953])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a:
>     - shard-dg2:          NOTRUN -> [SKIP][257] ([i915#12247]) +7 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d:
>     - shard-dg2-9:        NOTRUN -> [SKIP][258] ([i915#12247]) +7 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#12247] / [i915#3555])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
>     - shard-mtlp:         NOTRUN -> [SKIP][260] ([i915#12247] / [i915#3555] / [i915#6953])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a:
>     - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#12247]) +3 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-dg2-9:        NOTRUN -> [SKIP][262] ([i915#12343])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-tglu:         NOTRUN -> [SKIP][263] ([i915#9812])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-tglu-1:       NOTRUN -> [SKIP][264] ([i915#9812])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#3361])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][266] ([i915#9340])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_pm_lpsp@kms-lpsp.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][267] ([i915#3828])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2:          [PASS][268] -> [SKIP][269] ([i915#9519])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][270] ([i915#9519])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][271] ([i915#9519])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>     - shard-rkl:          [PASS][272] -> [SKIP][273] ([i915#9519])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#9519]) +1 other test skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][275] ([i915#6524])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html
>     - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#6524] / [i915#6805])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#9808])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][278] ([i915#12316]) +1 other test skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][279] ([i915#11520]) +5 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][280] ([i915#11520]) +1 other test skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#11520])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#11520]) +7 other tests skip
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:
>     - shard-dg2-9:        NOTRUN -> [SKIP][283] ([i915#11520]) +2 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-pr-primary-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][284] ([i915#9688]) +3 other tests skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_psr@fbc-pr-primary-blt.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][285] ([i915#1072] / [i915#9732]) +10 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@fbc-psr-sprite-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#1072] / [i915#9732]) +19 other tests skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_psr@fbc-psr-sprite-blt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#1072] / [i915#9732]) +19 other tests skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@pr-cursor-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][288] ([i915#9732]) +4 other tests skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_psr@pr-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-primary-render:
>     - shard-tglu:         NOTRUN -> [SKIP][289] ([i915#9732]) +5 other tests skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_psr@psr2-primary-render.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#9685]) +2 other tests skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-dg2:          NOTRUN -> [SKIP][291] ([i915#9685])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][292] ([i915#5289])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#12755] / [i915#5190])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#12755])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-tglu-1:       NOTRUN -> [ABORT][295] ([i915#13179]) +1 other test abort
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][296] ([i915#3555]) +1 other test skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#8623])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_tiled_display@basic-test-pattern.html
>     - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#8623])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#3555]) +2 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-11/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-mtlp:         NOTRUN -> [SKIP][300] ([i915#3555] / [i915#8808])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#3555] / [i915#9906])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-3/igt@kms_vrr@negative-basic.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][302] ([i915#3555] / [i915#9906])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-1/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][303] ([i915#9906])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#9906]) +1 other test skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#2437])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-mtlp:         NOTRUN -> [SKIP][306] ([i915#2437])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-5/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][307] ([i915#2437] / [i915#9412])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@kms_writeback@writeback-pixel-formats.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][308] ([i915#2437] / [i915#9412])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@mi-rpc:
>     - shard-mtlp:         NOTRUN -> [SKIP][309] ([i915#2434])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@perf@mi-rpc.html
> 
>   * igt@perf@polling@0-rcs0:
>     - shard-rkl:          [PASS][310] -> [DMESG-WARN][311] ([i915#12964]) +4 other tests dmesg-warn
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-rkl-8/igt@perf@polling@0-rcs0.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-1/igt@perf@polling@0-rcs0.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#8516])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_mmap@test_aperture_limit:
>     - shard-dg2:          NOTRUN -> [WARN][313] ([i915#9351])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@prime_mmap@test_aperture_limit.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          NOTRUN -> [CRASH][314] ([i915#9351])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#3291] / [i915#3708])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#3291] / [i915#3708])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][317] ([i915#3708] / [i915#4077])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][318] ([i915#3708])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-5/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-dg2:          NOTRUN -> [SKIP][319] ([i915#9917])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@sriov_basic@enable-vfs-autoprobe-on.html
>     - shard-rkl:          NOTRUN -> [SKIP][320] ([i915#9917]) +1 other test skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu:         NOTRUN -> [FAIL][321] ([i915#12910])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][322] ([i915#9917])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-9/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-internal-10ms:
>     - shard-mtlp:         [ABORT][323] ([i915#13193]) -> [PASS][324] +1 other test pass
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-mtlp-4/igt@gem_eio@in-flight-internal-10ms.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-8/igt@gem_eio@in-flight-internal-10ms.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          [TIMEOUT][325] ([i915#12917] / [i915#12964]) -> [PASS][326] +2 other tests pass
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-rkl-2/igt@gem_pxp@display-protected-crc.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-8/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-rkl:          [SKIP][327] ([i915#4270]) -> [PASS][328]
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-rkl-3/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-8/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@i915_hangman@hangcheck-unterminated:
>     - shard-rkl:          [DMESG-WARN][329] ([i915#12964]) -> [PASS][330] +8 other tests pass
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-rkl-5/igt@i915_hangman@hangcheck-unterminated.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-7/igt@i915_hangman@hangcheck-unterminated.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [ABORT][331] ([i915#9820]) -> [PASS][332]
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:
>     - shard-dg2:          [INCOMPLETE][333] ([i915#12796]) -> [PASS][334]
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-rkl:          [FAIL][335] ([i915#13566]) -> [PASS][336] +2 other tests pass
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-rkl-2/igt@kms_cursor_crc@cursor-random-256x85.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-tglu:         [FAIL][337] ([i915#13566]) -> [PASS][338] +7 other tests pass
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-128x42.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-snb:          [DMESG-WARN][339] -> [PASS][340] +1 other test pass
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-snb2/igt@kms_cursor_crc@cursor-suspend.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-snb1/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_flip@blocking-wf_vblank:
>     - shard-mtlp:         [FAIL][341] ([i915#13690]) -> [PASS][342] +1 other test pass
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-mtlp-5/igt@kms_flip@blocking-wf_vblank.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-mtlp-1/igt@kms_flip@blocking-wf_vblank.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg2:          [SKIP][343] ([i915#12388]) -> [PASS][344]
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-5/igt@kms_joiner@basic-force-big-joiner.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-10/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [SKIP][345] ([i915#9519]) -> [PASS][346]
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [SKIP][347] ([i915#9519]) -> [PASS][348]
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          [INCOMPLETE][349] ([i915#13520]) -> [PASS][350]
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-10/igt@perf_pmu@module-unload.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-4/igt@perf_pmu@module-unload.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-rkl:          [SKIP][351] ([i915#13717]) -> [TIMEOUT][352] ([i915#12917] / [i915#12964])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-1/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-glk:          [INCOMPLETE][353] ([i915#13502] / [i915#4817]) -> [INCOMPLETE][354] ([i915#4817])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk1/igt@i915_suspend@sysfs-reader.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk3/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-dg1:          [SKIP][355] ([i915#4423]) -> [SKIP][356]
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg1-18/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-3:
>     - shard-dg1:          [SKIP][357] ([i915#4423] / [i915#6095]) -> [SKIP][358] ([i915#6095]) +1 other test skip
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-3.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg1-12/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          [SKIP][359] ([i915#7118] / [i915#9424]) -> [FAIL][360] ([i915#7173])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-5/igt@kms_content_protection@legacy.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-10/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][361] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][362] ([i915#7118] / [i915#9424])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-11/igt@kms_content_protection@type1.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][363] ([i915#10433] / [i915#3458]) -> [SKIP][364] ([i915#3458]) +5 other tests skip
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][365] ([i915#1839] / [i915#4816]) -> [SKIP][366] ([i915#4070] / [i915#4816])
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-rkl-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
>     - shard-glk:          [INCOMPLETE][367] ([i915#13476]) -> [INCOMPLETE][368] ([i915#13409] / [i915#13476])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-glk4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-glk7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_psr@fbc-psr-sprite-blt:
>     - shard-dg1:          [SKIP][369] ([i915#1072] / [i915#9732]) -> [SKIP][370] ([i915#1072] / [i915#4423] / [i915#9732])
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16170/shard-dg1-19/igt@kms_psr@fbc-psr-sprite-blt.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/shard-dg1-14/igt@kms_psr@fbc-psr-sprite-blt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
>   [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12941]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12941
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13502]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13502
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13522]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13665]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665
>   [i915#13690]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13690
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9351]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9351
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16170 -> Patchwork_145300v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16170: be5a404c3344b7d794766f045b8f94aa93c42069 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8246: 2670886863d5821273146d7f94cdd3c8e3a4fe0b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_145300v1: be5a404c3344b7d794766f045b8f94aa93c42069 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145300v1/index.html
