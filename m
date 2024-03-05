Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CDD872189
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 15:34:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89ADE10E13B;
	Tue,  5 Mar 2024 14:34:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TALH68jy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D794510E13B
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 14:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709649265; x=1741185265;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Qj3f7FW2GrtSfyELwMQpwn6AL8eB8woMjglRE/JftVI=;
 b=TALH68jyEJRoTzih5fojntpf9luMtL0vWpIu/RcdNsLq2QukYoGDfwJZ
 SoZKTkrUFz0oql/fkvQSD/upZP1F+mJtJN8kCqC2Qs4Q04fNxeWVrcoVH
 dbDUjOhsPXSEl6OW0gKZf4dYs+Nf3vAlrSscL9Yy5hfgOMYw9J6EEv/Bm
 sAvYCxO+SkBSAv1LHHxGLQHdszrD4zg52DL4Zl35lTry7A/+J30n2JXrw
 Ch1+fdKwlwhg+0MCS0bfjQuKkPiFvysAPYLOX5yTBKOc6LkJhMW3Py15W
 Gi4EN4IPudwq5qU2Wz3I6RMZT8ydWzmgAxsqfyJu2nk/f6eCOp0Co4ZTI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4367246"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="4367246"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:34:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="827773870"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="827773870"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 06:34:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Mar 2024 16:34:20 +0200
Date: Tue, 5 Mar 2024 16:34:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/8] drm/i915: Rename the crtc/crtc_states in the top
 level DDI hooks/etc
Message-ID: <ZectbJLgYMWGARU0@intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-2-ville.syrjala@linux.intel.com>
 <ZebazalH8c1j1GGH@intel.com> <Zebcuecv8QHwm4AE@intel.com>
 <87sf1422mm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87sf1422mm.fsf@intel.com>
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

On Tue, Mar 05, 2024 at 04:07:45PM +0200, Jani Nikula wrote:
> On Tue, 05 Mar 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Mar 05, 2024 at 10:41:49AM +0200, Lisovskiy, Stanislav wrote:
> >> I also wonder whether should we really emphasize things like "master"/"slave"
> >> in function names. I thought that one idea in our refactoring was to unify
> >> joined pipes handling so that there are no(or at least almost no) explicit code
> >> paths/function names for masters/slaves.
> >
> > There are no master vs. slave functions. The split is going to be
> > transcoder/port vs. pipe.
> 
> Besides, for modern platforms the spec has already been changed to use
> primary/secondary terminology. When renaming or refactoring stuff,
> please switch to them instead of sticking with master/slave.

If the spec got updated then we should probably just do a full rename
pass over the whole codebase instead of confusing things more by
mixing up the terminology.

Also we should probably s/bigjoiner/joiner/ to make it clear that
all of it also applies to uncompressed joiner as well.

-- 
Ville Syrjälä
Intel
