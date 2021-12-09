Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7602646F299
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9418610E12D;
	Thu,  9 Dec 2021 17:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B74910E12D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 17:57:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="298957392"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="298957392"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:57:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="601644067"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 09 Dec 2021 09:57:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 19:57:05 +0200
Date: Thu, 9 Dec 2021 19:57:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YbJDcYeDX9a2T/Go@intel.com>
References: <cover.1639068649.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1639068649.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915/cdclk: improve abstractions
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

On Thu, Dec 09, 2021 at 06:51:21PM +0200, Jani Nikula wrote:
> Clean up the cdclk header dependencies.
> 
> Jani Nikula (4):
>   drm/i915/cdclk: move intel_atomic_check_cdclk() to intel_cdclk.c
>   drm/i915/cdclk: un-inline intel_cdclk_state functions
>   drm/i915/cdclk: hide struct intel_cdclk_vals
>   drm/i915/cdclk: turn around i915_drv.h and intel_cdclk.h dependency

Another low hanging fruit would be to move struct intel_cdclk_funcs
definition into intel_cdclk.c.

> 
>  drivers/gpu/drm/i915/display/intel_atomic.c  |  1 +
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 81 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cdclk.h   | 26 +++----
>  drivers/gpu/drm/i915/display/intel_display.c | 55 +------------
>  drivers/gpu/drm/i915/i915_drv.h              |  6 +-
>  5 files changed, 96 insertions(+), 73 deletions(-)
> 
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
