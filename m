Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4401B12A1
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 19:08:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4642C6E146;
	Mon, 20 Apr 2020 17:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01DBD6E146
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 17:08:27 +0000 (UTC)
IronPort-SDR: 3vXTNi0ebQieT2sxzPE7xYqnCjiGx8UtQ9b2ugmULjY2UseTMUsQgtaeTyCOS6Nje6Eob1b25u
 RMuJqtgqO4FQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 10:08:27 -0700
IronPort-SDR: +e7g5WgRKnaDXOISbIpncWM6y6exSap3bLtMfqSYsS227DI4il1RohIUUSTC7skvl0k2SI7hd0
 J+rYM96J4GQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="258411038"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 20 Apr 2020 10:08:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 20:08:23 +0300
Date: Mon, 20 Apr 2020 20:08:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200420170823.GW6112@intel.com>
References: <20200420140438.14672-1-jani.nikula@intel.com>
 <20200420140438.14672-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420140438.14672-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: drop a bunch of superfluous
 inlines
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 20, 2020 at 05:04:38PM +0300, Jani Nikula wrote:
> Remove a number of inlines from .c files, and let the compiler decide
> what's best. There's more to do, but need to start somewhere, and need
> to start setting the example.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  8 +++----
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  7 +++---
>  drivers/gpu/drm/i915/display/intel_display.c  | 10 ++++----
>  .../drm/i915/display/intel_display_power.c    |  5 ++--
>  drivers/gpu/drm/i915/display/intel_dp.c       |  6 ++---
>  drivers/gpu/drm/i915/display/intel_dsb.c      |  6 ++---
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |  3 +--
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 23 ++++++++-----------
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  8 +++----
>  drivers/gpu/drm/i915/display/intel_panel.c    | 14 +++++------
>  drivers/gpu/drm/i915/intel_pm.c               |  7 +++---
>  drivers/gpu/drm/i915/intel_sideband.c         |  4 ++--
>  drivers/gpu/drm/i915/intel_wopcm.c            | 22 +++++++++---------
>  14 files changed, 58 insertions(+), 67 deletions(-)
>

Didn't read through in detail, but everything in .c files so should
be fine.

Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
