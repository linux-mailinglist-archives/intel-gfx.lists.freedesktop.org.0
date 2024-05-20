Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C308C9DDE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 15:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B38910E708;
	Mon, 20 May 2024 13:10:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N5RNoIzl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 290ED10E708
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 13:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716210600; x=1747746600;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=+BvL0AK/zfIgMMzAuh/2/Y6w6EOsbIKzQ1UX3GDdwRM=;
 b=N5RNoIzlAsI9jhCzlEFWY4mvS80WcRu0iVMw7zqG7se7x4TRloG2Qz0o
 NMvG9JlAkCVdxEXmB39FmHvp+5+TQWIN+L0HdP5/ZsomowGLyeKZUNAqn
 6VUrdDd3tnlrATiY233c/Xvma2Bz+WUg5NtIjYj3L8/2mhYA57OPV2lpC
 oeVOFCzk2uhz48GLN2XLD+GvYZacITa0z9yaPZybvCQFd0I+WmvjtwV+9
 s35Xw2YPMc3rLbE9cUEzHBrazofCsnZaRSlgqaOwfZi+vYKIrIJ+96z78
 byy0p64cvY6R7ainH4XmhZRth4oW2Cu8HJ+ITjQ4gcp4hWJwFl9oBCXEu Q==;
X-CSE-ConnectionGUID: 9/PT+X0/Rg6YnvIIQ3xSkQ==
X-CSE-MsgGUID: 3FEAvdwiTC2sQS2rYj2dZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16169495"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16169495"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 06:07:57 -0700
X-CSE-ConnectionGUID: 3iWkSc1rQa21FYTLRNo/6A==
X-CSE-MsgGUID: 3I+IkgINTLmmWf+OAp/pcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="63353643"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 06:07:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/13] drm/i915: Move PIPEGCMAX to intel_color_regs.h
In-Reply-To: <20240516135622.3498-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-9-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 16:07:51 +0300
Message-ID: <87seycskbc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> PIPEGCMAX was left behind when all other gamma registers moved
> into intel_color_regs.h.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color_regs.h | 5 +++++
>  drivers/gpu/drm/i915/i915_reg.h                 | 4 ----
>  2 files changed, 5 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gp=
u/drm/i915/display/intel_color_regs.h
> index bb99ea533842..61c18b4a7fa5 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
> @@ -36,6 +36,11 @@
>  						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \
>  						  (i) * 4)
>=20=20
> +/* i965/g4x/vlv/chv */
> +#define  _PIPEAGCMAX           0x70010
> +#define  _PIPEBGCMAX           0x71010
> +#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(dev_priv, pipe, _PIPEAGCMAX +=
 (i) * 4) /* u1.16 */
> +
>  /* ilk+ palette */
>  #define _LGC_PALETTE_A           0x4a000
>  #define _LGC_PALETTE_B           0x4a800
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 52b029cd3981..f5e8833cc37e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1882,10 +1882,6 @@
>  #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAFRAMEPIXE=
L)
>  #define PIPESTAT(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPEASTAT)
>=20=20
> -#define  _PIPEAGCMAX           0x70010
> -#define  _PIPEBGCMAX           0x71010
> -#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(dev_priv, pipe, _PIPEAGCMAX +=
 (i) * 4) /* u1.16 */
> -
>  #define _PIPE_ARB_CTL_A			0x70028 /* icl+ */
>  #define PIPE_ARB_CTL(pipe)		_MMIO_PIPE2(dev_priv, pipe, _PIPE_ARB_CTL_A)
>  #define   PIPE_ARB_USE_PROG_SLOTS	REG_BIT(13)

--=20
Jani Nikula, Intel
