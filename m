Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DD660621A
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 15:46:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFB3210E8BC;
	Thu, 20 Oct 2022 13:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D97310E792
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 13:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666273560; x=1697809560;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZoJnAiJaZeCtadrdJ4coVl6tA5ICtMbpnL7NzhqQA1M=;
 b=PQI/2kx8K2hiRLl0NHeQ3iYo3yJsuKy+CjtQwBpUGmo+PzqcM0YiEBHL
 WUCRXUK3o79M9zmrVUDlhmi4C4XscbQROpmmRwHp8pKfVVeVAPbKzpUOi
 L/AzgHbL2n/xBkEjkpQ7f9/MrHPYlUX3FdvVE8WHD2HgddpDE8tCT4Xm+
 +Gw6GEShWk1vkBA/5hVU9kPgHw35h3T0Phq/povDuUu6SDEPGS3VviD68
 NRelfz2WArisozG3V/FewUvURn7yYuaSyaxMl4v8c38J8g9uimYspQbvE
 xNBFPcY80n8qwr5gN5Xs0U7NPznGld+/IZigl1OrdEqj/6fu27R9+1Glc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="286427675"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="286427675"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 06:45:59 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="663050253"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="663050253"
Received: from xhallade-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.45.249])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 06:45:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
Date: Thu, 20 Oct 2022 16:45:55 +0300
Message-ID: <877d0uhalo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: Clean up crtc state flag
 checks
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

On Thu, 20 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Some cleanups for checking whether the crtc was flagged for
> modesets/fastsets/color update.

I wish we could avoid piling more static inlines in
intel_display_types.h, but the clarity added here is great.

On the series,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Ville Syrj=C3=A4l=C3=A4 (4):
>   drm/i915: Introduce intel_crtc_needs_fastset()
>   drm/i915: Remove some local 'mode_changed' bools
>   drm/i915: Don't flag both full modeset and fastset at the same time
>   drm/i915: Introduce intel_crtc_needs_color_update()
>
>  drivers/gpu/drm/i915/display/hsw_ips.c        |  8 ++--
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  3 +-
>  drivers/gpu/drm/i915/display/intel_cursor.c   |  6 ++-
>  drivers/gpu/drm/i915/display/intel_display.c  | 46 +++++++++----------
>  .../drm/i915/display/intel_display_types.h    | 14 ++++++
>  .../drm/i915/display/intel_modeset_verify.c   |  3 +-
>  6 files changed, 46 insertions(+), 34 deletions(-)

--=20
Jani Nikula, Intel Open Source Graphics Center
