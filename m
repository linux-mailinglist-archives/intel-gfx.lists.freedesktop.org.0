Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B277C3C307
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:55:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE2910E940;
	Thu,  6 Nov 2025 15:55:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ed4Enu54";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3734D10E940;
 Thu,  6 Nov 2025 15:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762444504; x=1793980504;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+C1apEggzLMrd/4PJQKQ+yn7iSdfJW/AmCmdp8PWxsA=;
 b=Ed4Enu54ZXgunHDQiA3I4SjcKE6JXZFtiUTqFbiWU994Lru4XAW7iBL7
 h0K9pmFzmpdFqwkXXlChiY/pbPTUHHeflLxlIGc1rGFpsn5aVGNnY6ExD
 QeyAnr6iqNN2tK4zwLX88Q22WdB9vqdgsE7IeKp6XTRQEah/RXxfaUFbA
 TB96aQVYfI1A4b6U6hMdrhmgtR2zXvauKV56R3KZQ+vL9ORNMd0FwAvU2
 YYj4k92cGHgGxLQZHEOzlSguSXKm3vfvAPKVShNsyXXYnP4rPx+KqRGtL
 SI7/Z0JCazQvOzV5kunbf3ZPnQPGY0/NixAaJbyud+nw4Q/AWBdowA7D6 A==;
X-CSE-ConnectionGUID: fkoxYj4tTb2sis8pz5EezA==
X-CSE-MsgGUID: BZxqiLSRTj+qJ2I+QIGg7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75193668"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75193668"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:55:04 -0800
X-CSE-ConnectionGUID: r5do8uIwTJ6wgiLPzhbVVw==
X-CSE-MsgGUID: hKM9FBamRUS8gYfinFYkRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="225038397"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:55:02 -0800
Date: Thu, 6 Nov 2025 17:54:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 01/10] drm/i915/cx0: Print the correct timeout
Message-ID: <aQzE00Bby_YkyLfn@intel.com>
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
 <20251106152049.21115-2-ville.syrjala@linux.intel.com>
 <bad3dd77a9c33d941b9112b1e75305cd5e4a4823@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bad3dd77a9c33d941b9112b1e75305cd5e4a4823@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Nov 06, 2025 at 05:32:22PM +0200, Jani Nikula wrote:
> On Thu, 06 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > intel_cx0_powerdown_change_sequence() uses one timeout,
> > and the pritns another one. Use the same one in both.
> 
> *prints
> 
> A bit silly considering the next one nukes the whole thing.

Yeah, I guess I could squash it and just note the discrepancy
in the commit msg.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index b3b506d0e040..21f046576ee3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -2833,7 +2833,7 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
> >  				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
> >  		drm_warn(display->drm,
> >  			 "PHY %c failed to bring out of Lane reset after %dus.\n",
> > -			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
> > +			 phy_name(phy), XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US);
> >  }
> >  
> >  void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
