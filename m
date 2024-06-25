Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E72916F2E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2024 19:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D8B10E2B0;
	Tue, 25 Jun 2024 17:27:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b56tCeIY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46AEC10E2B0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2024 17:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719336436; x=1750872436;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=CndZnERGNUv8hYnk5ugoMtOHBIQzsY1OhDry+egi2Us=;
 b=b56tCeIYouk0dPlnxBmG+nkTzQS9nnRoxkAKOwP8O/az8DwUpOiuYyGu
 QVgsANdMvQubP0sLTP7F2sqdjpMc647Jb4pZCa4wBySQ4LenDpvQEIT9H
 VVjklVsLUDXFnSF4jX8sc2pdNio9gWOLx7XT8isvig+osmT+xiNnhSXCw
 w4NMuattoSkt8k7BSE7ksu/m2pwL2RgRpNLbveCcWU04bWE8sDbtZhRtr
 3vNoTJxNBgmlxhmmIamWko9POobrSckgbA+bzl9av2y8n9t92IcIy2rJp
 3Dq1qCAGnYVBCtBJG6YJnep5LpFHkby/EaYQcXCVUL6Ou6b1FWVhPp7L2 A==;
X-CSE-ConnectionGUID: ihH8N2KVSNi7T899yYu65w==
X-CSE-MsgGUID: fO823O5DR2mz3h7Ywy4W6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="27781675"
X-IronPort-AV: E=Sophos;i="6.08,264,1712646000"; d="scan'208";a="27781675"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 10:27:10 -0700
X-CSE-ConnectionGUID: Cu9/3IFqSU2yd6jkOp8zZQ==
X-CSE-MsgGUID: S3fy3sKqR7WtFJ92B3Th5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,264,1712646000"; d="scan'208";a="43696084"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Jun 2024 10:27:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Jun 2024 20:27:07 +0300
Date: Tue, 25 Jun 2024 20:27:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVA==?= =?utf-8?Q?=3A?= failure for
 drm/i915: Enable CCS+10bpc and CCS+async flips
Message-ID: <Znr966eE4Sbs3v7n@intel.com>
References: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
 <171932433953.154922.2131774021857952184@a6498e030952>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <171932433953.154922.2131774021857952184@a6498e030952>
X-Patchwork-Hint: comment
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

On Tue, Jun 25, 2024 at 02:05:39PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Enable CCS+10bpc and CCS+async flips
> URL   : https://patchwork.freedesktop.org/series/135306/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14995_full -> Patchwork_135306v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_135306v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_135306v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/index.html
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_135306v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_hangman@gt-error-state-capture@ccs0:
>     - shard-dg2:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/shard-dg2-10/igt@i915_hangman@gt-error-state-capture@ccs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/shard-dg2-5/igt@i915_hangman@gt-error-state-capture@ccs0.html
> 
>   * igt@i915_hangman@gt-error-state-capture@vcs1:
>     - shard-dg1:          [PASS][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14995/shard-dg1-17/igt@i915_hangman@gt-error-state-capture@vcs1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135306v1/shard-dg1-13/igt@i915_hangman@gt-error-state-capture@vcs1.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][5] +1 other test fail

Hmm. Looks like IGT will need specific handling for 10bpc in order to
make the clear color work properly.

-- 
Ville Syrjälä
Intel
