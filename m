Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80AF569F855
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 16:51:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE85B10EA1A;
	Wed, 22 Feb 2023 15:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66E210EA3C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 15:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677081062; x=1708617062;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=INqrIQNZRVy3Y/IuyxjVNBo+2DRdrcbE7r5EgwR7pqE=;
 b=Dz/62/waez2SYVrsBkOR6omg8wyvX99lS4IQEyRYrC0MQ8T2wBJ1tVm1
 iAmvInEkMLGMjllFOfdeQlaGzleJsNoU9llKoPlCA1bGTdLIMTBypqfBU
 17QXSKExF3X9xTBRbqOueBnX/Fejs97nMgSGTJfaaS10BjLhlSP1Fl+43
 jewNQaStJW3t8+DDZyye7iI69jVSuLYcaAeZNxyLJFNK7qOOSswEDh8MW
 PkICOxJ74sshoDmnhVjpyrzYDoovAoQJgkdT9kldyfeIc1L203n/kKqOG
 wUp3Z/Pd/sfO1KqFRyrjDBgGL3LQXq0otoDOIEI5EiLMclYEmWI9rp8be g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360440626"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360440626"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 07:51:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="846183943"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="846183943"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga005.jf.intel.com with SMTP; 22 Feb 2023 07:51:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 17:50:59 +0200
Date: Wed, 22 Feb 2023 17:50:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y/Y545FNb6FlL8Ta@intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 00/22] drm/i915: Init DDI ports in VBT
 order
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

On Wed, Feb 22, 2023 at 01:02:05AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I just wanted to init DDI ports in VBT child device order
> without any up front assumptions about which conflicting
> child device defition is valid. That is pretty much what
> we need to do for the ADL laptops with the phantom eDP vs.
> native HDMI on DDI B.
> 
> However that approach doesn't work for some of the weird
> SKL boards that have a phantom eDP on DDI A+AUX A and
> and a real DP->VGA converter on DDI E+AUX A. For those
> I had to introduce HPD live status check during eDP init.
> 
> One of the remaining concerns I still have is what happens
> when we encounter VBTs with more AUX CH/DDC pin conflicts?
> I think what we might want to do eventually is ignore the
> conflicts as much as possible, and just init everything
> based on VBT, trusting HPD to take care of things in the
> end. That of course does have certain issues wrt. connector
> forcing, but dunno if we can avoid those at all.
> 
> Also I think we need to nuke all the platform default AUX
> CH/DDC pin stuff, or at least only try to utilize those
> only once we've consumed the VBT fully.
> 
> v2: Fix SKL DDI A HPD live state
> v3: Replace AUX CH/DDC pin sanitation with availability checks

OK, it looks like this is finally doing something
sane on pretty much all machines.

The only slight concern left is on bat-rplp-1:
 [drm:intel_dp_aux_ch [i915]] [ENCODER:257:DDI TC2/PHY TC2] Using AUX CH E (platform default)
 [drm:intel_power_well_enable [i915]] enabling AUX_USBC2
 [drm:intel_power_well_disable [i915]] disabling AUX_USBC2
 [drm:intel_power_well_enable [i915]] enabling AUX_USBC2
 [drm:intel_tc_port_init_mode [i915]] Port E/TC#2: init mode (legacy)
 [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:257:DDI TC2/PHY TC2]
 [drm:intel_hdmi_init_connector [i915]] [ENCODER:257:DDI TC2/PHY TC2] Using DDC pin 0xa (VBT)

So we're still having to use the platform default AUX CH
for this HDMI TC legacy port. But I guess that should be
relatively risk free as cross-wiring the TC ports in any
way doesn't seem like something that should happen. Might
not even be possible since a lot of the stuff for these
is internal to the chip.

-- 
Ville Syrjälä
Intel
