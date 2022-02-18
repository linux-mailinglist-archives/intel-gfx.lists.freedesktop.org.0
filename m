Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE6B4BB0D2
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 05:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A75F10EB63;
	Fri, 18 Feb 2022 04:41:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1ECA10EB63
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 04:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645159293; x=1676695293;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=F2lSt/S/c0QuSWItk8fKCjTS2Ocf2H2FTEJZKDDiHis=;
 b=SmWauYWA9wEziBWOW1DRCT8uz/jiB7hcLaO/sFdDi7Ud9Yqxa4ibE2SI
 9ElHfTkQAHWnKD9coadElA/FLBujzr80sFPYnqoUfIj6Uk7Qv/hzMwEWa
 xHy/6bN+KC2/3AYFhgRqEFEKPLzlGNg6Jh6LMV1jJz+0dSo2la83bdQTH
 do8jf5zLDqWM2PpiQj/p3juhqoueAp+JwJ0UiVQV8LYIB3uG3nqlJ/wMr
 6YEkocAwU+A6VT93iL35YtIL7ptKkKx/zmsNLn3u5I9WRVPM5k2mGypTX
 Z7IXzPI+SUI+Ji40h6Wt6/JUkmVH1PozdBSF3ZABBprwWyM9FkhL41rWE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="337494847"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="337494847"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 20:41:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="635510654"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 17 Feb 2022 20:41:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Feb 2022 06:41:30 +0200
Date: Fri, 18 Feb 2022 06:41:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yg8jehUkAODEmlxG@intel.com>
References: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
 <164512822157.18053.8104488537367014984@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <164512822157.18053.8104488537367014984@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_SAGV_fixes_=28rev2=29?=
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

On Thu, Feb 17, 2022 at 08:03:41PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: SAGV fixes (rev2)
> URL   : https://patchwork.freedesktop.org/series/100091/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11239_full -> Patchwork_22302_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22302_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22302_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22302_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_cursor_legacy@all-pipes-forked-bo:
>     - shard-iclb:         [PASS][1] -> [INCOMPLETE][2] +10 similar issues

Argh. These are due to the extra debug spam from
intel_bw_atomic_check() since that now goes throug the full function
a lot more.

So either we just nuke a bunch of those debugs, or I guess we do it a
bit more like what Stan suggested and try to check more carefully if the
inputs to to the QGV calculation actually changed.

I guess I'll try the latter approach, in case those debugs are actually
useful. The challenge will be doing that and keeping the patch looking
reasonable for stable...

-- 
Ville Syrjälä
Intel
