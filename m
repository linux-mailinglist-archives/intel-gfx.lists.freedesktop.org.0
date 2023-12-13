Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A78E810BB9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 08:44:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBD5010E6D8;
	Wed, 13 Dec 2023 07:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B2910E6D8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 07:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702453465; x=1733989465;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ivg1SZ9K5+9LoOks8tR51gurr+xOniLWmriB5VtgcHE=;
 b=b2bdlCIthdSSWK3KdoB6LZuPs0/Bqs87swHRSAnWYf8gd0yK4PsVfCEo
 1RFBK3zi29E42mBsWz/p7ZdgKYYNnwBoxlVESAdsAsG5OhE6ZVa6q8PqO
 zP/7Y8PvuW+ns3bsHBRp/CCWVn9F6vKUR3E3UimD0Rkfo1MDfzyccyPNt
 eHvKOrFszJSgWxHVaP5Hz4T8cL+KjAg+s8vWPHLFlCNkJejspBg6VVwMF
 dNJcYqD0S5QjPwQUl54mAnbQWaD62LcB5RfLp86iUEJv+zsVDNvlzonUb
 /cpN+UOj4OD2s13kE3Xb0jn9dpPYa44qAnlZEVKe7VYQdTRrcrciaa3V2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385346305"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="385346305"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 23:44:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="1105221671"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="1105221671"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 23:44:23 -0800
Date: Wed, 13 Dec 2023 09:44:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 0/4] drm/i915/dmc: DMC event stuff
Message-ID: <ZXlg3JJIXvFMjsIj@ideak-desk.fi.intel.com>
References: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231211213750.27109-1-ville.syrjala@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 11, 2023 at 11:37:46PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Fix the weird flip_done/etc. issues plaguing ADL+ by disabling all dodgy
> DMC events that we definitely don't need. Also improve the debugs to
> make it easier to see what we're doing.

This (at least a rather similar issue) was debugged already on DG2
thanks for going through that and fixing the rest. Since both Windows
and Linux disables now these events, it should be in bspec as well (or
better imo, to release the firmware binaries without these events being
enabled in the first place):
Reviewed-by: Imre Deak <imre.deak@intel.com>

> 
> Ville Syrjälä (4):
>   drm/i915/dmc: Don't enable any pipe DMC events
>   drm/i915/dmc: Also disable the flip queue event on TGL main DMC
>   drm/i915/dmc: Also disable HRR event on TGL main DMC
>   drm/i915/dmc: Print out the DMC mmio register list at fw load time
> 
>  drivers/gpu/drm/i915/display/intel_dmc.c      | 147 ++++++++----------
>  drivers/gpu/drm/i915/display/intel_dmc_regs.h |   1 +
>  2 files changed, 69 insertions(+), 79 deletions(-)
> 
> -- 
> 2.41.0
> 
