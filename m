Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE87A0076B
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 11:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB5210E859;
	Fri,  3 Jan 2025 10:08:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AtQZBxBl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0731E10E859;
 Fri,  3 Jan 2025 10:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735898926; x=1767434926;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Uv3K46rjvesyJDbsWCSoroaCOdUddtuZ6HpTDhawwAg=;
 b=AtQZBxBlDYkirw58/pWhSVenCfXx6CMTMreNQbHU9ZB7BW8YsCYLFE8N
 IpubAwCxY3/GtYyJFFSO8A8iDA9CkmJ6jW0DcNsbPFRR2XD38qrho/u1w
 HuhZUT9M9QlASw554vpyIgEtoldhfJrXydpwBwxyTbq57f/GmQ4Nj0Yto
 YDC7mnm36gViOBGRe2n220tCtfKiUBqn3yyFrCdhSGbwhSuuH5DRXLRVI
 9MJiC4l6eWghoFzowHzouv9JUc5UCmLneMkrKnad+HbNK7XR6lpDxU2/2
 2FMWh27VIyYPmCOC6Ammq1eSVqNc/a4wbGcXrJYhi0GxoNvEokLBfAfSw Q==;
X-CSE-ConnectionGUID: DJqJw0hhQCuEOaLuF0jH+w==
X-CSE-MsgGUID: LJEkCcjFQkCn8Bpz+CBW9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="35448228"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="35448228"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 02:08:46 -0800
X-CSE-ConnectionGUID: qKyTYlFVQd+k9cr7c2ms6w==
X-CSE-MsgGUID: Z8lZ0JIrQf2jMN/XsFV4cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="106794826"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 02:08:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, chaitanya.kumar.borah@intel.com,
 dnyaneshwar.bhadane@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/ddi: Optimize mtl_port_buf_ctl_program
In-Reply-To: <20250103051705.145161-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250103051705.145161-1-suraj.kandpal@intel.com>
 <20250103051705.145161-3-suraj.kandpal@intel.com>
Date: Fri, 03 Jan 2025 12:08:40 +0200
Message-ID: <87msg8mcpj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 03 Jan 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> A small optimization and cleanup for mtl_port_buf_ctl_program function
> which lets use intel_de_rmw instead of a intel_de_read and
> intel_de_write.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 5e944cae116a..c3c8a1d255a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2537,13 +2537,10 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	enum port port = encoder->port;
> -	u32 val;
> +	u32 val = 0;
>  
> -	val = intel_de_read(display, XELPDP_PORT_BUF_CTL1(i915, port));
> -	val &= ~XELPDP_PORT_WIDTH_MASK;
>  	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
>  
> -	val &= ~XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK;
>  	if (intel_dp_is_uhbr(crtc_state))
>  		val |= XELPDP_PORT_BUF_PORT_DATA_40BIT;
>  	else
> @@ -2552,7 +2549,9 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  	if (dig_port->lane_reversal)
>  		val |= XELPDP_PORT_REVERSAL;
>  
> -	intel_de_write(display, XELPDP_PORT_BUF_CTL1(display, port), val);
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, port),
> +		     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK,
> +		     val);
>  }
>  
>  static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)

-- 
Jani Nikula, Intel
