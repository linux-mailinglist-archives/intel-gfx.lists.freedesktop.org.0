Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1017B721F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Oct 2023 21:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1E210E312;
	Tue,  3 Oct 2023 19:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6762C10E312
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Oct 2023 19:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696363047; x=1727899047;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=u4zW5HeEZZ9XBKcjsLZhaQTgQfy/KX8Q9r0Tl7WN4Qc=;
 b=Htv0TA9h4L6vqhvGKzSGpY8PtW+4y+Koy0ZoJyRC8kNnUritoz8uD4JQ
 cPdoLjAcadxXmIuw9MfaCOjSxz2IJTa7XnlDGGnJBnHDY+88FtMx6AMLb
 ToYzVKeAgkdVAXKaKoQpOZpAE6OfZeQfxZ6mXSzesokaBqgPBFCCJJBjA
 ZBwoawpxh5SXYb6GZLM1G+EQ5QKuYcT5LR4ay3e76v3V/ebeNI5we/2lc
 iXZ4GjIFNak7axXtNmK03o79Tdj69F3iU4lM0W2xxTYyQDuDEVyQaW5ZY
 p45006FeqIsoOsriW8dXTyGq2STAtKyjf+rFV149idSfNwCwDtD6xSY86 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="380241016"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="380241016"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 12:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="894626712"
X-IronPort-AV: E=Sophos;i="6.03,198,1694761200"; d="scan'208";a="894626712"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 03 Oct 2023 12:56:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Oct 2023 22:57:24 +0300
Date: Tue, 3 Oct 2023 22:57:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZRxyJE3p15e1CBph@intel.com>
References: <cover.1696336887.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1696336887.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: move display info related
 stuff under display/
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

On Tue, Oct 03, 2023 at 03:42:06PM +0300, Jani Nikula wrote:
> Continue separation of display code from the rest.
> 
> Jani Nikula (4):
>   drm/i915: convert INTEL_DISPLAY_ENABLED() into a function
>   drm/i915: move display info related macros to display
>   drm/i915: separate display runtime info init
>   drm/i915: separate subplatform init and runtime feature init

Didn't spot anything wrong. I was a bit suspicious about
deferring the port_mask mangling, but doesn't look like we
need it that early anywhere.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/intel_crt.c      |  2 +-
>  .../drm/i915/display/intel_display_device.c   | 43 ++++++++++++++++++-
>  .../drm/i915/display/intel_display_device.h   | 10 +++++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dvo.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       |  2 +-
>  drivers/gpu/drm/i915/i915_driver.c            |  1 +
>  drivers/gpu/drm/i915/i915_drv.h               | 14 ------
>  drivers/gpu/drm/i915/intel_device_info.c      | 22 ----------
>  14 files changed, 62 insertions(+), 46 deletions(-)
> 
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
