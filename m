Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDE1B45B68
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 17:01:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 607DF10EBEA;
	Fri,  5 Sep 2025 15:01:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nxAd8+rp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BC2510EBE5;
 Fri,  5 Sep 2025 15:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084517; x=1788620517;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DOV4eYI5rhHDoEfh+PP4/yMU61JRaLiz3CpYO2qyyUE=;
 b=nxAd8+rpK3WfvCYrpBJIgzkTD1GmVS3r2tpfk03g+4AVZ8ZD2NO/q7H6
 kBDZADzBzsV2Hsceoziw1q7b+dHAP2pQSb6gQRo1QIW9gP/eBli2A1k7b
 HETxfhocSHI8dFu7uMl30QGaQs2OTYrVpEV5NDSxkNap4A1qIOIvoL88/
 ILzinhNnG1wSMpnmVpG3g6hQeQ8Jw5EPYhCMYwrQf/3ZXZ8sHN15pDjZT
 bk7XjBCFTTfA8+iJsExqxkTb0/6Pl9H97FOSDrGbySAHXiGhkkUYe8jQs
 gPwrNPtGXIsTgrxqO7cwbTzxl0xUpgidDMyJRyf5SMt1/1LujRHY6t2LJ w==;
X-CSE-ConnectionGUID: fpyO3mmaQpyBF7uAlQijjw==
X-CSE-MsgGUID: /tEBkoEmRp2XriNTEhEiwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63266730"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63266730"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 08:01:57 -0700
X-CSE-ConnectionGUID: ASdpGzgrQhqxBV7YZuMqNA==
X-CSE-MsgGUID: U9dIcP35T6SQZYvrlH+i8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172060917"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 08:01:56 -0700
Date: Fri, 5 Sep 2025 18:01:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/13] drm/1915: skl+ watermark/latency stuff
Message-ID: <aLr7YVbvr-9AB8J6@intel.com>
References: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250905145212.10845-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Sep 05, 2025 at 05:51:59PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> A bunch of claenup to the watermark latency setup on skl+, and
> a few potential fixes for some edge cases.

Please ignore this incomplete series. Apparently gnome-keyring has some
decades old bug where it randomly fails, and this time it happened in
the middle of posting this series :(

> 
> Ville Syrjälä (13):
>   drm/i915/dram: Also apply the 16Gb DIMM w/a for larger DRAM chips
>   drm/i915: Apply the 16Gb DIMM w/a only for the platforms that need it
>   drm/i915: Tweak the read latency fixup code
>   drm/i915: Don't pass the latency array to {skl,mtl}_read_wm_latency()
>   drm/i915: Move adjust_wm_latency() out from
>     {mtl,skl}_read_wm_latency()
>   drm/i915: Extract multiply_wm_latency() from skl_read_wm_latency()
>   drm/i915: Extract increase_wm_latency()
>   drm/i915: Use increase_wm_latency() for the 16Gb DIMM w/a
>   drm/i915: Extract sanitize_wm_latency()
>   drm/i915: Flatten sanitize_wm_latency() a bit
>   drm/i915: Make wm latencies monotonic
>   drm/i915: Print both the original and adjusted wm latencies
>   drm/i915: Make sure wm block/lines are non-decreasing
> 
>  drivers/gpu/drm/i915/display/skl_watermark.c | 160 +++++++++++++------
>  drivers/gpu/drm/i915/soc/intel_dram.c        |  10 +-
>  2 files changed, 118 insertions(+), 52 deletions(-)
> 
> -- 
> 2.49.1

-- 
Ville Syrjälä
Intel
