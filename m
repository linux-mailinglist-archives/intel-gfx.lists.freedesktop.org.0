Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 593BA97D62F
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 15:35:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C23410E0F8;
	Fri, 20 Sep 2024 13:35:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NLjH2d4J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E04210E0E3;
 Fri, 20 Sep 2024 13:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726839300; x=1758375300;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=33u4hVwKKeVoanYiwCPD2sESPLx1XGmQ0BgnRtEN5FA=;
 b=NLjH2d4JIflLMIvTAgnMSlR16mkKInzC8Zm5tmO9X1PGUhjbYkBK/Duq
 xpStsxCCgBNz16eM2alsu5zR0KD8Nv836jSti/QZLFAJD3R1oTTVPetTs
 ZvLpaG2QoY0muxehwPPhyaNbTyZjzOcWiZVOMzoUHGgB+sbpJfnPJ+Em6
 jafJR/+BOn9MLdLjXl6bAlPY1ljcbFoBfRa95eE9nIJ0Q9r4RNIbvRhoJ
 YW88UIUVU3tFwvVAAchlbOEPzrH0ijc6WJmV8iWPWX23WZn4/xWQWENmX
 yry7ZoNfNFuH2me3Ah2TOEfbJRI8PyNJvHb2oIRu7HvbNVi7OuLS/2OFI A==;
X-CSE-ConnectionGUID: q+8SxoepS/yHx+yDD9Tfrw==
X-CSE-MsgGUID: S3qYlDwgTqaz4UjGnkWySg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25964802"
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="25964802"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 06:35:00 -0700
X-CSE-ConnectionGUID: tq/GasBQS1CJESzvbz2m/Q==
X-CSE-MsgGUID: sAdV+FWpSui3WvOaTdPNVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,244,1719903600"; d="scan'208";a="70434626"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Sep 2024 06:34:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Sep 2024 16:34:56 +0300
Date: Fri, 20 Sep 2024 16:34:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/9] drm/i915/dp: clean up DP testing
Message-ID: <Zu16AP_oUcWOWpAl@intel.com>
References: <cover.1726833193.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1726833193.git.jani.nikula@intel.com>
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

On Fri, Sep 20, 2024 at 02:56:42PM +0300, Jani Nikula wrote:
> Whenever I look at doing anything in intel_dp.c I think it's grown too
> big. It's over 7k lines.
> 
> The DP test functionality is fairly isolated, and mostly irrelevant for
> normal operation. Move it all to its own file. This reduces intel_dp.c
> by about 500 lines, and intel_display_debugfs.c by about 200 lines. And
> intel_dp->compliance is now fully handled within intel_dp_test.c.
> 
> BR,
> Jani.
> 
> Jani Nikula (9):
>   drm/i915/dp: split out intel_dp_test.[ch] to a dedicated file
>   drm/i915/dp: fix style issues in intel_dp_test.c
>   drm/i915/dp: convert intel_dp_test.c struct intel_display
>   drm/i915/dp: clean up intel_dp_test.[ch] interface
>   drm/i915/dp: move DP test debugfs files next to the functionality
>   drm/i915/dp: fix style issues in DP test debugfs
>   drm/i915/display: remove the loop in fifo underrun debugfs file
>     creation
>   drm/i915/dp: convert DP test debugfs to struct intel_display
>   drm/i915/dp: add intel_dp_test_reset() and intel_dp_test_short_pulse()

Gave this a quick once over, didn't see anything obviously wrong.

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/g4x_dp.c         |   7 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   7 +-
>  .../drm/i915/display/intel_display_debugfs.c  | 214 +----
>  drivers/gpu/drm/i915/display/intel_dp.c       | 520 +-----------
>  drivers/gpu/drm/i915/display/intel_dp.h       |   9 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |   5 +-
>  drivers/gpu/drm/i915/display/intel_dp_test.c  | 765 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_test.h  |  23 +
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  10 files changed, 816 insertions(+), 736 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dp_test.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dp_test.h
> 
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
