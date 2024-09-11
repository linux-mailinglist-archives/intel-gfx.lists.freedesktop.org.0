Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 917FE975531
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 16:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 967C588FAE;
	Wed, 11 Sep 2024 14:23:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A7/oqyPa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E5B588FAE
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 14:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726064620; x=1757600620;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Zf/JAmzixnEt0Djrax46m9GRs7gTKCb9VVsx/3j7om4=;
 b=A7/oqyPayqhvYSANSwgM3rqKtijxyF1LsVO6T+2GPgGE+BoJRph5uFrg
 gQbvpSfIyI1ZKnOJamJtCesJQ9JrWPEj2GqMNyX9x85n/X6sQivhErAIU
 FaoYXxJ93XOX7SKclDa6BZ2htOGHDho+kV+08N+5d6pvYTMKFVPqHTNHe
 gOIdEAprZ25UxPhNHACbTVFQjEssKSrl4nEnMQJXgT/nlLAelVCnNT9zu
 q6FSOjBZ5a6Tq7vz0gS/hz2aZtomnRV4kYjWjz7L2uu9TcncGDwUXzA0q
 zdKl35wGe57LwCJrYQ3mcHkXKvu1y60j/gDq5OkJfE+EdODxlXQx0eZ1U A==;
X-CSE-ConnectionGUID: H8bck/h9RjiyZ5IEEvXWYA==
X-CSE-MsgGUID: QvLudT+oQzeKhEgSrlRALw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24743058"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="24743058"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 07:23:39 -0700
X-CSE-ConnectionGUID: DFLIl1XTTqGXXkbYpBmJHA==
X-CSE-MsgGUID: dDsPERNNTwKVTGNK5TIVpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67453556"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 07:23:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 17:23:34 +0300
Date: Wed, 11 Sep 2024 17:23:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Prevent DC6 while vblank is enabled
 for Panel Replay
Message-ID: <ZuGn5l9oLy_gk_Il@intel.com>
References: <20240911124015.1420976-1-jouni.hogander@intel.com>
 <ZuGUbvpnba19oGRo@intel.com>
 <8c3320cd5be33a6b9d92231758ae0e0a712d9eb9.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8c3320cd5be33a6b9d92231758ae0e0a712d9eb9.camel@intel.com>
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

On Wed, Sep 11, 2024 at 01:14:33PM +0000, Hogander, Jouni wrote:
> On Wed, 2024-09-11 at 16:00 +0300, Ville Syrjälä wrote:
> > On Wed, Sep 11, 2024 at 03:40:15PM +0300, Jouni Högander wrote:
> > > We need to block DC6 entry in case of Panel Replay as enabling VBI
> > > doesn't
> > > prevent DC6 in case of Panel Replay.
> > 
> > This doesn't make sense to me. I *think* we are currently
> > supposed to always operate in the "main link on" mode for panel
> > replay.
> 
> This is not true. Check bspec 68920:
> 
> "When performing PR on an eDP port the Source will allow advanced link
> power management (ALPM) to turn the Main Link OFF when not sending an
> SDP or update region."

Right, it seems to be a thing for eDP only.

> 
> And if you check block_dc6_needed in my patch that is checking eDP.
> 
> I was originally planning to handle this by preventing PR entry when
> VBLANK is enabled, but that would be more expensive from power
> managements point of view -> decided to go with blocking DC6.

None of this explains how DC6 vs. DC5 is somehow different.
DC5 should already turn of all the clocks/etc so nothing real
can actually happen anymore. The only thing DC6 adds on top
of DC5 is turning off some extra power wells.

Hmm. So get_allowed_dc_mask() seems to be telling me that new
platforms only have DC6 but no DC5. Is that correct or not?
No idea. But that means we are in fact disabling all DC states
and that at least explains how something might happen due to
this patch.

The one thing that still doesn't quite make sense is that I would
assume that the main link would get turned off regardless of DC6
or not, which I would think causes the timing generator to stop
anyway and should still give us no vblanks...

-- 
Ville Syrjälä
Intel
