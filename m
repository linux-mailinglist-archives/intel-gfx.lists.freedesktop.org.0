Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C978E318A5C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 13:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3938D6EE0D;
	Thu, 11 Feb 2021 12:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 361C76EE0D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 12:25:55 +0000 (UTC)
IronPort-SDR: PTqqQW2b9tZ6oeOfPqMG2YStCGJJeUeYd5dzgBau7g0CnEDzW1M8cQrhQn9iAeRyU3qvcjLlqd
 a3ZN3mdG68EQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="246296737"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="246296737"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 04:25:50 -0800
IronPort-SDR: FVVSO9f3D/VSKwqFCc1Tvt58CWaqg2rbIeBAsccP1PUTD9qD7tRu6ehZ1uuUe3EevB5RksB0cC
 hJSAzddCY0wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="397236171"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 11 Feb 2021 04:25:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Feb 2021 14:25:47 +0200
Date: Thu, 11 Feb 2021 14:25:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YCUiSx3qpFE9uGhl@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
 <20210128192413.1715802-4-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128192413.1715802-4-matthew.d.roper@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/18] drm/i915/display13: Enhanced pipe
 underrun reporting
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 28, 2021 at 11:23:58AM -0800, Matt Roper wrote:
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 10fd0e3af2d4..a57593f7d7b1 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6039,14 +6039,18 @@ enum {
>  #define   PIPECONF_DITHER_TYPE_ST2 (2 << 2)
>  #define   PIPECONF_DITHER_TYPE_TEMP (3 << 2)
>  #define _PIPEASTAT		0x70024
> +#define _PIPEASTAT_ICL		0x70058

PIPESTAT is a gmch thing. This is not that for sure.

>  #define   PIPE_FIFO_UNDERRUN_STATUS		(1UL << 31)
>  #define   SPRITE1_FLIP_DONE_INT_EN_VLV		(1UL << 30)
>  #define   PIPE_CRC_ERROR_ENABLE			(1UL << 29)
>  #define   PIPE_CRC_DONE_ENABLE			(1UL << 28)
> +#define   PIPE_STAT_SOFT_UNDERRUN_D13		(1UL << 28)
>  #define   PERF_COUNTER2_INTERRUPT_EN		(1UL << 27)
>  #define   PIPE_GMBUS_EVENT_ENABLE		(1UL << 27)
> +#define   PIPE_STAT_HARD_UNDERRUN_D13		(1UL << 27)
>  #define   PLANE_FLIP_DONE_INT_EN_VLV		(1UL << 26)
>  #define   PIPE_HOTPLUG_INTERRUPT_ENABLE		(1UL << 26)
> +#define   PIPE_STAT_PORT_UNDERRUN_D13		(1UL << 26)
>  #define   PIPE_VSYNC_INTERRUPT_ENABLE		(1UL << 25)
>  #define   PIPE_DISPLAY_LINE_COMPARE_ENABLE	(1UL << 24)
>  #define   PIPE_DPST_EVENT_ENABLE		(1UL << 23)
> @@ -6111,6 +6115,7 @@ enum {
>  #define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
>  #define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(pipe, _PIPEAFRAMEPIXEL)
>  #define PIPESTAT(pipe)		_MMIO_PIPE2(pipe, _PIPEASTAT)
> +#define ICL_PIPESTAT(pipe)	_MMIO_PIPE2(pipe, _PIPEASTAT_ICL)
>  =

>  #define  _PIPEAGCMAX           0x70010
>  #define  _PIPEBGCMAX           0x71010
> @@ -7789,6 +7794,8 @@ enum {
>  #define  GEN8_PIPE_FIFO_UNDERRUN	(1 << 31)
>  #define  GEN8_PIPE_CDCLK_CRC_ERROR	(1 << 29)
>  #define  GEN8_PIPE_CDCLK_CRC_DONE	(1 << 28)
> +#define  D13_PIPE_SOFT_UNDERRUN		(1 << 22)
> +#define  D13_PIPE_HARD_UNDERRUN		(1 << 21)
>  #define  GEN8_PIPE_CURSOR_FAULT		(1 << 10)
>  #define  GEN8_PIPE_SPRITE_FAULT		(1 << 9)
>  #define  GEN8_PIPE_PRIMARY_FAULT	(1 << 8)
> -- =

> 2.25.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
