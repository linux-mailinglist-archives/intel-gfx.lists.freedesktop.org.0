Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE7247D272
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 13:49:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8321710E246;
	Wed, 22 Dec 2021 12:49:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8430210E246
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 12:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640177359; x=1671713359;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PDAABFNP1fiFFYYni8db5zCe28jNTEqCRQ2MKpVdqm0=;
 b=iRH3erIJwF3zrNRqK48iGUpcUlbQcNbtS3a0VJSSC4J6bU3Wk9dYTtfM
 UqCHsYpCUfZ/Xf0Nl1uMg/j5b+ysLoERFHmmZXdO/3uEcITmZ3VmVd3Yo
 FzVGw+lmfzWBs4Dk2KsCGB4KBvwJB5HeIXlGk2ElMOPKmiyhI3G/EmD/6
 5Y/RUlIJIvNMcinI2djKhx7QFzS5aIQLnkFzYxvvylFF7s9Avq0pFwVK5
 rNRDpsEg2OYTSYy6ztI/5fJQCV87vmNRDB+LPWtuus9jBCxWzU9RMYIIZ
 auAPYFBwWBk9OFT2CS65iwHHF32rfYiuD7FjMroVVc/VmpBh2jKO/RxVX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="303980948"
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="303980948"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 04:49:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,226,1635231600"; d="scan'208";a="521667536"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga008.jf.intel.com with SMTP; 22 Dec 2021 04:49:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Dec 2021 14:49:16 +0200
Date: Wed, 22 Dec 2021 14:49:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YcMezDqj7XrwZ2k1@intel.com>
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <20211217155403.31477-3-ville.syrjala@linux.intel.com>
 <87fsqlypox.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fsqlypox.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/bios: Use i915->vbt.ports[] on
 CHV
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 22, 2021 at 11:05:50AM +0200, Jani Nikula wrote:
> On Fri, 17 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > CHV is currently straddling the divide by using parse_ddi_ports() stuff
> > for aux_ch/ddc_pin but going through all old codepaths for the rest
> > (intel_bios_is_port_present(), intel_bios_is_port_edp(),
> > intel_bios_is_port_dp_dual_mode()). Let's switch over full and use
> > i915->vbt.ports[] for the rest of the stuff.
> 
> Whoa, this is far more subtle than what the code looks!
> 
> We stop checking for port A for CHV in intel_bios_is_port_present(), but
> it's a warn and I don't recall any bug reports, so probably fine. We
> could add a check in parse_ddi_port(), but meh.
> 
> Ditto for intel_bios_is_port_dp_dual_mode(), except it doesn't have a
> warn.
> 
> The eDP check in intel_bios_is_port_edp() becomes slightly more
> relaxed. Both the old and new check require these to be set:
> 
>  - DEVICE_TYPE_DISPLAYPORT_OUTPUT
>  - DEVICE_TYPE_INTERNAL_CONNECTOR.
> 
> The old code also required these to be unset:
> 
>  - DEVICE_TYPE_MIPI_OUTPUT
>  - DEVICE_TYPE_COMPOSITE_OUTPUT
>  - DEVICE_TYPE_DUAL_CHANNEL
>  - DEVICE_TYPE_LVDS_SIGNALING
>  - DEVICE_TYPE_TMDS_DVI_SIGNALING
>  - DEVICE_TYPE_VIDEO_SIGNALING
>  - DEVICE_TYPE_ANALOG_OUTPUT
> 
> It's possible we've added these just as a sanity check for broken VBTs
> more than anything. I guess I'd see if actual problems arise.
> 
> Bottom line, I think the functional changes matter only for VBTs with
> bogus data.

Yeah, I should probably include a bit more of thse details in this
commit message as well to make it easier to figure out what actually
changed if we get a regressoion.

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks.

-- 
Ville Syrjälä
Intel
