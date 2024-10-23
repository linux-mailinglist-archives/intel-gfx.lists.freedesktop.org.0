Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5807E9ACEFC
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 17:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2D610E810;
	Wed, 23 Oct 2024 15:38:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cFjS9Cg8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2495410E810
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 15:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729697909; x=1761233909;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BG2XAN8PXe5C4I6zzeIA/Mkz1N5Aoo5UdFq/GWfha0M=;
 b=cFjS9Cg8+81J24P0qpRaIYMtwzaMglsytigvJAdeLDqy/HMj4peSFczl
 GgxDrNBDldcXWgl7SIIECfC+AmLHY9NqfBM9PIgPFfWNLBhLLO8QY6rB5
 gN/MDwTEao6Pe9pwUjgf2kL+su9Xhpp/G0zI3IVCo8UC92i1M+iC172DC
 spHM08tVrYiomIrUrLlKm9Gm41NYoKBVx/T5qWEOZqFy9VnyA+IeJXmEx
 kMLPqveZkz4G7yj5E45smHOaC3s5gVIEvZlKAgCflgbR9hYUehtbA67JZ
 09l/G0Jlrd2DZAG9hx/vQ+cUWuTcu2pXDuP6OOV1keuH2HrMGSRURoGVj g==;
X-CSE-ConnectionGUID: aG2Rb7KbSficD46aLBv0Fg==
X-CSE-MsgGUID: C7oyEOvXQieP2j7DyFVAkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46761055"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46761055"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:38:29 -0700
X-CSE-ConnectionGUID: H4xubKMASX2iR9d8Czf8Sg==
X-CSE-MsgGUID: GZUUuaCZT9yWCZur5moSVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80328854"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Oct 2024 08:38:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Oct 2024 18:38:25 +0300
Date: Wed, 23 Oct 2024 18:38:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 8/9] drm/i915/pfit: Extract intel_pfit.c
Message-ID: <ZxkYcYD7HpyT-yu8@intel.com>
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
 <20241016143134.26903-9-ville.syrjala@linux.intel.com>
 <875xpkwnb6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <875xpkwnb6.fsf@intel.com>
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

On Tue, Oct 22, 2024 at 11:31:57AM +0300, Jani Nikula wrote:
> On Wed, 16 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
> > new file mode 100644
> > index 000000000000..add8d78de2c9
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
> > @@ -0,0 +1,15 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright © 2024 Intel Corporation
> > + */
> > +
> > +#ifndef __INTEL_PFIT_H__
> > +#define __INTEL_PFIT_H__
> > +
> > +struct drm_connector_state;
> > +struct intel_crtc_state;
> > +
> > +int intel_panel_fitting(struct intel_crtc_state *crtc_state,
> > +			const struct drm_connector_state *conn_state);
> 
> Nitpick, would be nice to rename this to intel_pfit_something() in
> follow-up.

The joiner vs. pfit changes will probably involve further
renaming, so figured I'd leave it as is until then.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks. Pushed the lot.

-- 
Ville Syrjälä
Intel
