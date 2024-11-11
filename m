Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0299C3E97
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 13:42:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855FF10E4A1;
	Mon, 11 Nov 2024 12:42:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ThEVHukz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ADDB10E4A1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 12:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731328951; x=1762864951;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=h2jJ/sFK8eQmrR9MTzuo7NmB4b5lsa7ym5I0eR2b+h0=;
 b=ThEVHukz7e8PgSIPr/eskUxo2MCu5yLleoPQg9IE7l67ZnF2KIkTnOHD
 6mJHAPqLzQpIPBzi1kKXV9qLKeXtSOjjLkaDTOO8UnAG5ZvmOYdsc5rTr
 MPiqUwEGvIYsJfrSOZxzESo9GaXxKo5UbIY/i1OdwRbKv5ceRLj71afxR
 7CDq5rTg7caJsCJ99BG7i11MOSsnV3I4Ivere8wYHMDhw4fG1imCsRzBN
 kik2MJjNp+/dtGSP32MgnifXjmi8qcId0EvvuCtOCfEjdqTvqQcp7e+xg
 g39otBLRc326JAb6piAVMk1Ijkjt25/RICWgsSlMCnDFKpuFyONZqUyZZ w==;
X-CSE-ConnectionGUID: lfb1qSjdS0OOJwC9wFW07w==
X-CSE-MsgGUID: rQvOML8PQ7SRH9QMFIx53Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42516725"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="42516725"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:42:31 -0800
X-CSE-ConnectionGUID: cu/Ww3kkTre92hXSgd3seA==
X-CSE-MsgGUID: gmsQd6L0RcWnSpUrWD4RyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86870969"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:42:30 -0800
Date: Mon, 11 Nov 2024 14:35:59 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com, 
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 8/9] drm/i815/disaply: limit the audio bw check with DP2
 config
In-Reply-To: <20241008082327.342020-9-vinod.govindapillai@intel.com>
Message-ID: <alpine.DEB.2.22.394.2411111432400.14041@eliteleevi.tm.intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-9-vinod.govindapillai@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

Hi,

On Tue, 8 Oct 2024, Vinod Govindapillai wrote:

> Limit the audio bw check with DP2 configurations only
[...]
> @@ -3048,7 +3048,8 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  {
>  	pipe_config->has_audio = intel_dp_has_audio(encoder, conn_state);
>  
> -	pipe_config->has_audio = pipe_config->has_audio &&
> +	if (intel_dp_is_uhbr(pipe_config))
> +		pipe_config->has_audio = pipe_config->has_audio &&
>  		intel_dp_audio_compute_bw_limits(pipe_config, conn_state);

title has "drm/i815...".

Other than that, this seems a bit extra, maybe squash this to patch 5 in 
the series. This fixing code that is added in the series..

Br, Kai
