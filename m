Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA6198E145
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 18:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F9A10E172;
	Wed,  2 Oct 2024 16:58:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J9HQR38S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C091910E172;
 Wed,  2 Oct 2024 16:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727888293; x=1759424293;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dYIcv8D0ViAouND/v5b9Q3mTlvcQGTDBp2TYzg02xao=;
 b=J9HQR38Spw7ainDhh/WBP3fTfH5iJW4WbPxPZjr7TvnN5wZN6pEjJZ6B
 16VxRQQW2oQmIn+FLU22bRfG9o9BVmngmylcBWkBRjY+GsrkAq0RKaFBZ
 M4YN+yFTPOXB+KgNDmyfzujpHAv9Ec2OBntLbfifm9QFD2GcUFDh+WYGp
 Q7RoL6JDHwP7feQ9EW117/meW2hKWdIU17dGIjHrmxWb9VI+YSMx+mtI/
 gvA7Zax/F1HqyMhhEg/y0xb27jOYbeb9jE3/aRUZGRzJzAjI2qHkxWREz
 Vhgaaec1Pja4zQmBgWiXjIXVhl7bTnW4TP1S2zm9243MdPGlYJ0jFfA71 A==;
X-CSE-ConnectionGUID: U1/vqqbTTBiA4NFpOu+6eQ==
X-CSE-MsgGUID: vzUWXQQtQCWLDt7pCWEJXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="27155352"
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="27155352"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 09:58:13 -0700
X-CSE-ConnectionGUID: n6DqjQbRQrCJkifr7Fu0xA==
X-CSE-MsgGUID: xzgoS74dTfakdJJOpmrWAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="74181561"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Oct 2024 09:58:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Oct 2024 19:58:08 +0300
Date: Wed, 2 Oct 2024 19:58:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v3 0/8] drm/i915: PREEMPT_RT related fixups.
Message-ID: <Zv17oKlIImyfg_KI@intel.com>
References: <20240628130601.1772849-1-bigeasy@linutronix.de>
 <20241002162543.TKbd-8g0@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241002162543.TKbd-8g0@linutronix.de>
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

On Wed, Oct 02, 2024 at 06:25:43PM +0200, Sebastian Andrzej Siewior wrote:
> On 2024-06-28 14:57:59 [+0200], To intel-gfx@lists.freedesktop.org wrote:
> Hi,
> 
> > The following patches are from the PREEMPT_RT queue.  It is mostly about
> > disabling interrupts/preemption which leads to problems. Unfortunately
> > DRM_I915_LOW_LEVEL_TRACEPOINTS had to be disabled because it acquires locks
> > from within trace points. Making the lock a raw_spinlock_t led to higher
> > latencies during video playback
> >   https://lore.kernel.org/all/20211006164628.s2mtsdd2jdbfyf7g@linutronix.de/
> > 
> > and I'm not sure if I hit the worse case here.
> > I tested it on a SandyBridge with built-in i915 by using X, OpenGL and
> > playing videos without noticing any warnings. However, some code paths
> > were not entered.
> > I carry them for some time now and most issues were reported by other
> > people and they reported that things work for them since.
> 
> These patches were not picked. Did I forget something or was this just
> overseen?

This looks quite poorly justified. Eg. you seem to be now
leaving interrupts enabled (and even preemption enabled I
guess) when we're racing against the raster beam. On first
blush that seems like a recipe for failure.

First step would be to set CONFIG_DRM_I915_DEBUG_VBLANK_EVADE=y,
run a bunch of tests that stress the display stuff (eg.
kms_atomic_transitions and other stuff from igt, and also
some real workloads) and probably throw in a bunch of
other load/perturbance at the system to make life hard.
After the system has been sufficiently hammered one can
compare sys/kernel/debug/dri/0/crtc-*/i915_update_info
against a baseline. Bonus points for doing it on a potato.

-- 
Ville Syrjälä
Intel
