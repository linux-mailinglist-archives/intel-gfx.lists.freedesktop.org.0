Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A61E5AE810
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 14:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C21610E639;
	Tue,  6 Sep 2022 12:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8FD710E639
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 12:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662467197; x=1694003197;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mZhG+cVj2tSmP8vtPYZopiRXy+zOLfZRuUnK8iP9feo=;
 b=M6sR+6AGYNyTHHa78PLTUAGJorCf0T85dpMwe5MmU96EAkkVB1iyA5AR
 e1k8w8Ac0lASkclQ9bvzluGLkPnNGZEWHNOu8aZN/dXwtZbk9XqXpYmak
 hGmGak1z8xEXVu9UXrTQ9c2m13FkGHiQ1A/acpyOxZhqu7nF3jQWyNqAQ
 oVsRyS4QLVf5FTnRniyzf8Xf3R7NkUo9H267JRQl4rJrK/wBtM7rK+0r9
 hmAh5QxIXa+x8DgHsAlCYwLp1SZ+JiwFxiXZ2Tjidpinb6dl3fwYv8MwQ
 KKQkxmZXNW6Ie7NiJjEsVBopFEEbfqgu/sxXlCM/KDN53MuGeadwstLQC A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="276972666"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="276972666"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 05:26:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="682380711"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 05:26:35 -0700
Date: Tue, 6 Sep 2022 15:27:17 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Yxc8pcXwTMcEooBs@intel.com>
References: <20220906102329.7073-1-stanislav.lisovskiy@intel.com>
 <Yxc1rvmwMuN9RzTo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yxc1rvmwMuN9RzTo@intel.com>
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

On Tue, Sep 06, 2022 at 02:57:34PM +0300, Ville Syrjälä wrote:
> On Tue, Sep 06, 2022 at 01:23:29PM +0300, Stanislav Lisovskiy wrote:
> > drm_dp_atomic_find_vcpi_slots no longer exists and needs
> > to be used as drm_dp_atomic_find_time_slots.
> > Also rename the function itself.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Fixes: 7ae5ab441402 ("Extract drm_dp_atomic_find_vcpi_slots cycle to separate function")
> 
> The problem only exists in drm-tip. You need to revert the 
> bad merge from rerere-cache and redo it.
> 
> And please always test build drm-tip after solving merge conflicts!

I would really like to figure out how it did end like that.

Here is the sequence of what I've been doing:

1) There was a series supposed to be merged which had this new
   change already in place i.e using drm_dp_atomic_find_time_slots.
2) Then using dim tools I started pushing according to workflow:
   a) dim update-branches
   b) dim checkout drm-intel-next
   c) wget those series mbox and run dim apply-branch drm-intel-next
      Got conflict: it was complaining about those changes around
      drm_dp_atomic_find_time_slots and after some checking I figured
      out that drm_dp_atomic_find_time_slots doesn't exist anymore.
      Here probably was my bad, as I wrongly assumed that those changes
      were probably reverted as it was also mentioned, that there was
      regression because of those.
      
      So I resolved this conflict by putting drm_dp_atomic_find_vcpi_slots
      back instead of drm_dp_atomic_find_time_slots _and_ actually
      built it even.
   
   d) I run dim push-branch drm-intel-next, it did complain about merge
      conflict again with drm-intel-next which I fixed and results were
      pushed.
      I should have build at this moment as well probably. 
 
      Then I noticed that this function drm_dp_atomic_find_vcpi_slots
      doesn't exist in drm. So basically patches should have been pushed
      as they were initially, but why the conflict appeared initially - that is my
      question.

Stan

> 
> -- 
> Ville Syrjälä
> Intel
