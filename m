Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FC7A4A35D
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 21:03:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A357710ED40;
	Fri, 28 Feb 2025 20:03:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hS5mt7ZC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEBC510ED2E;
 Fri, 28 Feb 2025 20:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740773035; x=1772309035;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Xt42GFHjIQ4tKExxGe3OoMUauhjDzeCOGYE1+FADmN4=;
 b=hS5mt7ZC9edxIxh0VEGVLkv55k2jhWroohX/Q6jW0zuaw2IxBAOMJNby
 jEMTs0y0ioxPiItldqxb2a1qvZ1me/2H9Q9bau8pCoJYH30zq+oZe2SLF
 3WUjU/eY1yHmH4C5JDZmgnc/Kc7XzdF9LvUK0cUcHGusQClAmtfIESpsM
 0ke+OFWzKkLHrBC/d/tmRLbjkj9clyFMS/tg/fUw8PqnZd5lVXE2SUU02
 oSTj32GwD43XdyxfExpRzQfPwcI6VoPxeVG1fnh3yncbwBeYdO+eAtqid
 Vex959eHaxyAx53B7Jgao/yv0PAw+a+VEwDgFjRJflN+o3uOAixIjesOR A==;
X-CSE-ConnectionGUID: BHXbkPkgQcWA8969r5h6Nw==
X-CSE-MsgGUID: ADTJPkheSbqXbtVMcYGLcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="52347378"
X-IronPort-AV: E=Sophos;i="6.13,323,1732608000"; d="scan'208";a="52347378"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 12:03:55 -0800
X-CSE-ConnectionGUID: BuWh0a3kRI+EEtunX2YYYw==
X-CSE-MsgGUID: UyWwCrgXSpWAmQa0jbPxRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,323,1732608000"; d="scan'208";a="122565027"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 12:03:54 -0800
Date: Fri, 28 Feb 2025 22:04:54 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v4 2/5] drm/i915/hpd: Add support for blocking the IRQ
 handling on an HPD pin
Message-ID: <Z8IW5qC885zRwmv4@ideak-desk.fi.intel.com>
References: <20250226171924.2646997-3-imre.deak@intel.com>
 <20250226173504.2662552-1-imre.deak@intel.com>
 <Z8HxbCHhxoVL0QOc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z8HxbCHhxoVL0QOc@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 28, 2025 at 07:25:00PM +0200, Ville Syrjälä wrote:
> On Wed, Feb 26, 2025 at 07:35:04PM +0200, Imre Deak wrote:
> > [...]
> >  static void i915_digport_work_func(struct work_struct *work)
> >  {
> > -	struct drm_i915_private *dev_priv =
> > -		container_of(work, struct drm_i915_private, display.hotplug.dig_port_work);
> > +	struct intel_display *display =
> > +		container_of(work, struct intel_display, hotplug.dig_port_work);
> > +	struct drm_i915_private *dev_priv = to_i915(display->drm);
> > +	struct intel_hotplug *hotplug = &display->hotplug;
> >  	u32 long_port_mask, short_port_mask;
> >  	struct intel_encoder *encoder;
> > +	u32 blocked_ports;
> >  	u32 old_bits = 0;
> >  
> >  	spin_lock_irq(&dev_priv->irq_lock);
> > -	long_port_mask = dev_priv->display.hotplug.long_port_mask;
> > -	dev_priv->display.hotplug.long_port_mask = 0;
> > -	short_port_mask = dev_priv->display.hotplug.short_port_mask;
> > -	dev_priv->display.hotplug.short_port_mask = 0;
> > +
> > +	blocked_ports = get_blocked_hpd_ports(display);
> > +	long_port_mask = hotplug->long_port_mask & ~blocked_ports;
> > +	hotplug->long_port_mask &= ~long_port_mask;
> > +	short_port_mask = hotplug->short_port_mask & ~blocked_ports;
> > +	hotplug->short_port_mask &= ~short_port_mask;
> 
> Why are we even tracking things as port masks for this? 

I can't see a reason for it (tracking as HPD pins would still allow
handling the encoders sharing the pin properly afaics).

> Wouldn't everything be a bit simpler if we just tracked
> the pins for this as well?

Yes, that simplifies it, thanks for the idea. Imo the change itself is
simple enough:
https://github.com/ideak/linux/commit/056801d

based on which this patchset would simplify to
https://github.com/ideak/linux/commits/hpd-block

removing all the pin to port conversions (both in this and the last
patch). Jani, would this be ok with you?

--Imre
