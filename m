Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7850B175EBA
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 16:53:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7325C6E51B;
	Mon,  2 Mar 2020 15:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D57606E51B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 15:53:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 07:53:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="351567182"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 02 Mar 2020 07:53:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Mar 2020 17:53:26 +0200
Date: Mon, 2 Mar 2020 17:53:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200302155326.GM13686@intel.com>
References: <20200211161451.6867-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211161451.6867-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: move intel_csr.[ch] under
 display/
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

On Tue, Feb 11, 2020 at 06:14:50PM +0200, Jani Nikula wrote:
> The DMC firmware is about display. Move the handling under display. No
> functional changes.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                  | 2 +-
>  drivers/gpu/drm/i915/{ =3D> display}/intel_csr.c | 0
>  drivers/gpu/drm/i915/{ =3D> display}/intel_csr.h | 0
>  drivers/gpu/drm/i915/i915_debugfs.c            | 2 +-
>  drivers/gpu/drm/i915/i915_drv.c                | 2 +-
>  drivers/gpu/drm/i915/i915_gpu_error.c          | 2 +-
>  6 files changed, 4 insertions(+), 4 deletions(-)
>  rename drivers/gpu/drm/i915/{ =3D> display}/intel_csr.c (100%)
>  rename drivers/gpu/drm/i915/{ =3D> display}/intel_csr.h (100%)
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 49eed50ef0a4..a2fab3c43563 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -46,7 +46,6 @@ i915-y +=3D i915_drv.o \
>  	  i915_switcheroo.o \
>  	  i915_sysfs.o \
>  	  i915_utils.o \
> -	  intel_csr.o \
>  	  intel_device_info.o \
>  	  intel_memory_region.o \
>  	  intel_pch.o \
> @@ -183,6 +182,7 @@ i915-y +=3D \
>  	display/intel_color.o \
>  	display/intel_combo_phy.o \
>  	display/intel_connector.o \
> +	display/intel_csr.o \
>  	display/intel_display.o \
>  	display/intel_display_power.o \
>  	display/intel_dpio_phy.o \

This seems to have broken some doc stuff.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
