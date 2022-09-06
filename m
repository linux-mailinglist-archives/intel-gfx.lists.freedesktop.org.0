Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 530815AE88C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 14:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E44410E6A7;
	Tue,  6 Sep 2022 12:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D658D10E6A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 12:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662467921; x=1694003921;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RJLixKzW72Y+pICKpMWQYDfvFSWybZRBXQ8EEKYt89k=;
 b=EumLarqpk6AtwTnK4lZ/Wk00jSHmZ5r/fxFb/aZZvLndCP/gI7LejrGv
 ly1G/YRqDgLydZxJmV9q4fsU9Gu08zCHpzkyyRdc9mmDDY6Hnrp22yVCb
 y0pYLrw8Eq7FDyvX1uGSdTi9Qr2Vba3jI0r1zOz9y/LKikPqM5wHkKV5U
 eB3Rq0P9Mx4fBQsAp/aZo+O5AQeINOOWpNBEEA2xEmDNshUBwK931ZPQ8
 BjskqsVrcSNir602Ev4vuJIbjvbbrLx/JjrK1tthuoydNnnOKEQ6w1o5m
 sMTdOv0+/9BT55Pkr4wjbWWRNjF/ihNnhhsDl3y2jBrB+pVdySYQ175i8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="297365881"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="297365881"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 05:38:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="703196489"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 06 Sep 2022 05:38:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Sep 2022 15:38:38 +0300
Date: Tue, 6 Sep 2022 15:38:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <Yxc/Trzzyp8WODhO@intel.com>
References: <20220906102329.7073-1-stanislav.lisovskiy@intel.com>
 <Yxc1rvmwMuN9RzTo@intel.com> <Yxc8pcXwTMcEooBs@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yxc8pcXwTMcEooBs@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix
 intel_dp_atomic_find_vcpi_slots function
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 06, 2022 at 03:27:17PM +0300, Lisovskiy, Stanislav wrote:
> On Tue, Sep 06, 2022 at 02:57:34PM +0300, Ville Syrjälä wrote:
> > On Tue, Sep 06, 2022 at 01:23:29PM +0300, Stanislav Lisovskiy wrote:
> > > drm_dp_atomic_find_vcpi_slots no longer exists and needs
> > > to be used as drm_dp_atomic_find_time_slots.
> > > Also rename the function itself.
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Fixes: 7ae5ab441402 ("Extract drm_dp_atomic_find_vcpi_slots cycle to separate function")
> > 
> > The problem only exists in drm-tip. You need to revert the 
> > bad merge from rerere-cache and redo it.
> > 
> > And please always test build drm-tip after solving merge conflicts!
> 
> I would really like to figure out how it did end like that.
> 
> Here is the sequence of what I've been doing:
> 
> 1) There was a series supposed to be merged which had this new
>    change already in place i.e using drm_dp_atomic_find_time_slots.
> 2) Then using dim tools I started pushing according to workflow:
>    a) dim update-branches
>    b) dim checkout drm-intel-next
>    c) wget those series mbox and run dim apply-branch drm-intel-next
>       Got conflict: it was complaining about those changes around
>       drm_dp_atomic_find_time_slots and after some checking I figured
>       out that drm_dp_atomic_find_time_slots doesn't exist anymore.
>       Here probably was my bad, as I wrongly assumed that those changes
>       were probably reverted as it was also mentioned, that there was
>       regression because of those.
>       
>       So I resolved this conflict by putting drm_dp_atomic_find_vcpi_slots
>       back instead of drm_dp_atomic_find_time_slots _and_ actually
>       built it even.
>    
>    d) I run dim push-branch drm-intel-next, it did complain about merge
>       conflict again with drm-intel-next which I fixed and results were
>       pushed.
>       I should have build at this moment as well probably. 

Yes. You didn't resolve the conflict correctly, thus the build failure.

-- 
Ville Syrjälä
Intel
