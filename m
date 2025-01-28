Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE7AA20F1D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 17:50:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674DA10E2A3;
	Tue, 28 Jan 2025 16:50:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F7LjJDmW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3079510E2A3;
 Tue, 28 Jan 2025 16:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738083028; x=1769619028;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NXYsI5JMeeGhxWIxnXVYJKWz+VtILv1etd4n1qyeig4=;
 b=F7LjJDmWj6n25tuJWnxiR3HND/ZbhKtyGvlQuOFoQQFU4E7FAPyRqdwZ
 owvtUtkpwA0nCPNdC55fI6sgpugIEn5/GZboqOOUhEP0HrNrxcuQ4eSYV
 9SPioixliyuWNUxE/XNeKZuZs5vJWBea+qnx+iSNalnuPwC4gRdHKfQve
 lD28Wm/kTBZ5tCr9lk8o8LCfL9B6c/rPzMAO/+T8iXijH1VjBkaOSxzFc
 INxOk5k6EAmliyoFinX4+SDn0TKqW7BUh4DT9CiRSuoUlHq9txOxlVyKm
 pezEHG9o5w9jtzI1S7sfolBfvc+VAcxXq7OZljo2OKgIPeXwyAsjJY5Iy g==;
X-CSE-ConnectionGUID: uY6dcuMtR2m4uA6o02I2Wg==
X-CSE-MsgGUID: vGbnwPGFQVCFFeOJ9ynmiw==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="42239159"
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="42239159"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 08:50:27 -0800
X-CSE-ConnectionGUID: 7hKgFnnCTbG8ldxCW2jTew==
X-CSE-MsgGUID: ox6++ziiTTefBUwDFRxWRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,241,1732608000"; d="scan'208";a="108887967"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 Jan 2025 08:50:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Jan 2025 18:50:23 +0200
Date: Tue, 28 Jan 2025 18:50:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Give i915 and xe each their own display
 tracepoints
Message-ID: <Z5kKz3R7fgQBCAoH@intel.com>
References: <20250127213055.640-1-ville.syrjala@linux.intel.com>
 <2ukwhpnetshr6s5ykyotc4p3wzzzpie2mh42kuqwq7j7kaybek@qoyojl7lwk7x>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2ukwhpnetshr6s5ykyotc4p3wzzzpie2mh42kuqwq7j7kaybek@qoyojl7lwk7x>
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

On Mon, Jan 27, 2025 at 05:00:38PM -0600, Lucas De Marchi wrote:
> On Mon, Jan 27, 2025 at 11:30:55PM +0200, Ville Syrjälä wrote:
> >From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> >Currently we just define the display tracpoints with
> >TRACE_SYSTEM i915. However the code gets included separately
> >in i915 and xe, and now both modules are competing for the
> >same tracpoints. Apparently whichever module is loaded first
> >gets the tracepoints and the other guy is left with nothing.
> >
> >Give each module its own set of display tracpoints so that
> >things work even when both modules are loaded.
> >
> >This one had me stumped for a bit when after a reboot I lost
> >all i915 display tracpoints (on account of the new kernel
> >also including xe, and something also ended up loading it
> >before I manually loaded i915).
> >
> >Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_display_trace.h | 4 ++++
> > 1 file changed, 4 insertions(+)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> >index 54a6e2a46b82..0e10c2856058 100644
> >--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> >+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> >@@ -4,7 +4,11 @@
> >  */
> >
> > #undef TRACE_SYSTEM
> >+#ifdef I915
> > #define TRACE_SYSTEM i915
> >+#else
> >+#define TRACE_SYSTEM xe
> 
> looking forward to the day this will be intel_display or i915_display,

intel_display might be the right choice at that point, but yeah
can't go there yet.

> but until then
> 
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Ta.

> 
> is tracpoints above intentional? I'd say it's a typo, but it's repeated
> 4 times.

Apparently just bad muscle memory on my part.

> 
> Lucas De Marchi
> 
> >+#endif
> >
> > #if !defined(__INTEL_DISPLAY_TRACE_H__) || defined(TRACE_HEADER_MULTI_READ)
> > #define __INTEL_DISPLAY_TRACE_H__
> >-- 
> >2.45.3
> >

-- 
Ville Syrjälä
Intel
