Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CD88A83BB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E77271134D9;
	Wed, 17 Apr 2024 13:04:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EFqxuwyN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAB01134D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Apr 2024 13:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713359059; x=1744895059;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pXXrmPfr7Rr5Fy+z52PzyeModDvzbc5MBCIeUF/rYsY=;
 b=EFqxuwyNpLvMJLzY00AYeLnXEX6JAAIzWEum2UJxtd1ExBOwUmwZ2Tpw
 DSEVnDLv8x4MY0NPVHyIQGfQPu8Abxv/HrcCpF7eNjzUMgSf9KrPhsXiD
 LiWsN3YMN7CkhK7WJLrtOPKHpP25ZefkgVHjQ0McEzsm8XUsqQeow+oGi
 NnW+apjfwc+gjohPD6383kgKR4bVJkQ3uIUZumaV3LjJfVygBg951PDa/
 ooewQXMdSAXc/c09NyiuLtr8al2IqxMesHVA6ieYXXKbapK4sA6+AqOxA
 r45l7g2sBswYmzkfrRiC8AXEj6g7M/shPTeHOtlKiNChuGXZnBULRtfiT w==;
X-CSE-ConnectionGUID: +94qC5yvTJOGqMjZtDST5w==
X-CSE-MsgGUID: cbvKMOMQRQugXZxBBEyhbg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="19406669"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="19406669"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:04:19 -0700
X-CSE-ConnectionGUID: GxhFP3jPQ9qswSky0aO+WQ==
X-CSE-MsgGUID: 7Pxz/fnHQAakGv8p5LjR6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="22685339"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Apr 2024 06:04:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Apr 2024 16:04:10 +0300
Date: Wed, 17 Apr 2024 16:04:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/8] drm/i915/dpio: s/ddi/dpio/ for bxt/glk PHY stuff
Message-ID: <Zh_IypIyCZcgXvWS@intel.com>
References: <20240412175818.29217-1-ville.syrjala@linux.intel.com>
 <20240412175818.29217-7-ville.syrjala@linux.intel.com>
 <87h6g23ilu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87h6g23ilu.fsf@intel.com>
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

On Mon, Apr 15, 2024 at 03:39:41PM +0300, Jani Nikula wrote:
> On Fri, 12 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Since all of this lives in intel_dpio_phy.c let's rename the
> > bxt/glk functions to have bxt_dpio_phy_ namespace.
> 
> Seems like intel_dpio_phy.c could be split to vlv_dpio_phy.c and
> bxt_dpio_phy.c after this. At a glance, there isn't really anything
> shared between VLV/CHV and BXT/GLK code paths. They've just been thrown
> in to the same file.

Yeah, the original idea was that we could perhaps combine the 
CHV and BXT/GLK code into one since it's the same IP block on
both, but we ended up doing things a bit differently between
the two anyway so probably no one will ever do this.

VLV vs. CHV could also be split since the PHY codepaths
are compleletely separate, but perhaps not really worth
it since a lot of the other code is shared between the
two platforms anyway.

-- 
Ville Syrjälä
Intel
