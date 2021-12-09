Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6932746F1F7
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC6AF10E18E;
	Thu,  9 Dec 2021 17:32:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 872B510E18E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 17:32:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="236899565"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="236899565"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:32:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="516401124"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 09 Dec 2021 09:32:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 19:32:29 +0200
Date: Thu, 9 Dec 2021 19:32:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YbI9rarm1QvakLID@intel.com>
References: <cover.1639057801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1639057801.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915: include reductions
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

On Thu, Dec 09, 2021 at 03:50:55PM +0200, Jani Nikula wrote:
> Remove some useless includes as well as ones that can be removed with
> trivial changes.
> 
> Jani Nikula (7):
>   drm/i915/reset: remove useless intel_display_types.h include
>   drm/i915/active: remove useless i915_utils.h include
>   drm/i915/psr: avoid intel_frontbuffer.h include with declaration
>   drm/i915/fbc: avoid intel_frontbuffer.h include with declaration
>   drm/i915/fb: reduce include dependencies
>   drm/i915/pxp: un-inline intel_pxp_is_enabled()
>   drm/i915/pxp: remove useless includes

Apart from the slight display reset stuff oddness this all
looks good.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/intel_fbc.h         |  3 +--
>  drivers/gpu/drm/i915/display/intel_frontbuffer.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_psr.h         | 11 ++++++-----
>  drivers/gpu/drm/i915/gt/intel_reset.c            |  1 -
>  drivers/gpu/drm/i915/i915_active_types.h         |  2 --
>  drivers/gpu/drm/i915/pxp/intel_pxp.c             |  5 +++++
>  drivers/gpu/drm/i915/pxp/intel_pxp.h             | 14 ++++++++------
>  drivers/gpu/drm/i915/pxp/intel_pxp_types.h       |  2 --
>  8 files changed, 21 insertions(+), 19 deletions(-)
> 
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
