Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30CC897479
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 17:51:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30DB6112BEB;
	Wed,  3 Apr 2024 15:51:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IqvKEp2e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1552112BEB
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Apr 2024 15:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712159469; x=1743695469;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JgzBwMQlSfaNi1qQZuwJDBAqd7X+Ex5JCvbgLAJTER0=;
 b=IqvKEp2eDJdsLknuIfDmE2pcc73Tcxvv7B8rlEJh+uX1L+DcmG7BTSJT
 IZxeY+kVHgJV3F5D5zsbnMyNZBvtTYfUK7+rRqrIYQ//swkfCeJTARNQQ
 DW/Npk6yV+AQUvnd/fgjvbwop4uefd9MJhO43tibWkjd8SkrwLH+cjJkp
 9x8rN9UKbueO/OUIOkwNK2q/bsN50T0luIyQNGttQ0p2icHbV9vSi0QB3
 ezP8ePCOdbJNGd6AoMCjQeNPyx2Zv+Qjn7RWCRi6ZYhvSB6e/YjLY7ixh
 6ugKXyv8LM/V9Q3UTwyU0wwnhwpZxb7GvxAq38+zkVwoOeBEUMkxWqNe7 Q==;
X-CSE-ConnectionGUID: 7VF+s5XIRAKowsXdAc2iwQ==
X-CSE-MsgGUID: EJb6DgaPRMqWRqjNMsi+2Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7567738"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7567738"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 08:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="827789981"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="827789981"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 03 Apr 2024 08:51:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Apr 2024 18:51:05 +0300
Date: Wed, 3 Apr 2024 18:51:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/13] drm/i915/cdclk: Fix CDCLK programming order when
 pipes are active
Message-ID: <Zg166cwOvRo18mzP@intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-2-ville.syrjala@linux.intel.com>
 <171172614955.2604.11177523422567223748@gjsousa-mobl2>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <171172614955.2604.11177523422567223748@gjsousa-mobl2>
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

On Fri, Mar 29, 2024 at 12:29:09PM -0300, Gustavo Sousa wrote:
> Quoting Ville Syrjala (2024-03-27 14:45:32-03:00)
> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >Currently we always reprogram CDCLK from the
> >intel_set_cdclk_pre_plane_update() when using squahs/crawl.
> >The code only works correctly for the cd2x update or full
> >modeset cases, and it was simply never updated to deal with
> >squash/crawl.
> >
> >If the CDCLK frequency is increasing we must reprogram it
> >before we do anything else that might depend on the new
> >higher frequency, and conversely we must not decrease
> >the frequency until everything that might still depend
> >on the old higher frequency has been dealt with.
> >
> >Since cdclk_state->pipe is only relevant when doing a cd2x
> >update we can't use it to determine the correct sequence
> >during squash/crawl. To that end introduce cdclk_state->disable_pipes
> >which simply indicates that we must perform the update
> >while the pipes are disable (ie. during
> >intel_set_cdclk_pre_plane_update()). Otherwise we use the
> >same old vs. new CDCLK frequency comparsiong as for cd2x
> >updates.
> >
> >The only remaining problem case is when the voltage_level
> >needs to increase due to a DDI port, but the CDCLK frequency
> >is decreasing (and not all pipes are being disabled). The
> >current approach will not bump the voltage level up until
> >after the port has already been enabled, which is too late.
> >But we'll take care of that case separately.
> 
> Yep. Maybe that's another reason to have that logic detached from the
> cdclk sequence in the future?

Perhaps.

The cdclk sequence is typically specified as
1. request max voltage
2. change cdclk
3. request final voltage
 
We don't actually know whether step 1 has any other side effects
beyond changing the voltage. Eg. it might also do some other magic
to prepare the hardware/firmware for the cdclk change, and so we
might not be able to decouple it from the cdclk sequence 100%.
One solution could be to bump the voltage to the max in the pre
plane voltage hook whenever cdclk is also changing.

We would definitely end up spreading the voltage requests further
out from the actual cdclk programming (they'd have to be the
outermost pre/post plane hooks), which may or may not have some
other side effects as well.

-- 
Ville Syrjälä
Intel
