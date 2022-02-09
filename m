Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572CC4AFD0A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 20:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CED89CD7;
	Wed,  9 Feb 2022 19:14:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE93D89CD7
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 19:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644434046; x=1675970046;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=nE4qdktK02ggfj1un4YfyzJtLrURDKur73FZW2puSRk=;
 b=OnJoCsdMg2DppGz2nPy0/bJT30eR/0flfQunL/2e4keVpkzzk4dqL0FJ
 gHg7aOvlZUp9gWQAF+0i+saGr6GnadX3+QWQSw/QhbexIoqXssUDFP9vF
 lttozKvTUzByhj/P7eQ2Wh0bEcMVdAa0xT9DNPn8FWkkSE8H9TdRqy1RZ
 MJGQIeLYxmpgUwFHVY3Ud5+7ydtr2IdhtYfO4HpsRLlI5uzd+vwOP86zu
 03TCXHQrdSzRi0V37Ws0+YxzzI3XGuJRs+Clq7Rd+bdl6hcEUHUoRPXvD
 A48mcH6rWPhVSozE5XHh4mzimCo9/Xo946JDcwvlxR4VpmiyBoxhiitgV g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="229281077"
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="229281077"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 11:13:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,356,1635231600"; d="scan'208";a="629394861"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga002.fm.intel.com with SMTP; 09 Feb 2022 11:13:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Feb 2022 21:13:46 +0200
Date: Wed, 9 Feb 2022 21:13:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YgQSaszW0KeFSagi@intel.com>
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
 <164442817744.23774.17631809595829344145@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <164442817744.23774.17631809595829344145@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915=3A_Move_vblank_waits_out_f?=
 =?utf-8?q?rom_IPS_code?=
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

On Wed, Feb 09, 2022 at 05:36:17PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/7] drm/i915: Move vblank waits out from IPS code
> URL   : https://patchwork.freedesktop.org/series/99898/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11207_full -> Patchwork_22221_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22221_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22221_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 12)
> ------------------------------
> 
>   Additional (1): shard-rkl 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22221_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_plane_cursor@pipe-a-viewport-size-64:
>     - shard-snb:          [PASS][1] -> [FAIL][2]

That looks like a real thing due to the ilk+ wm code being a bit
mouldy atm. I'll need to fix that first before I can push
that vblank consolidation patch :/ But on the plus side that has
given me another idea how to refactor the cxsr disable stuff into
a slightly nicer shape...

-- 
Ville Syrjälä
Intel
