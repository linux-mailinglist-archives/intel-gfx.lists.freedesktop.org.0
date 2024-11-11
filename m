Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CDD9C3E98
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 13:44:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ED0510E4A2;
	Mon, 11 Nov 2024 12:44:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jISo6m9H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AACB10E13A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 12:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731329061; x=1762865061;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=+6YPBaogIInYEfjG7QRygpg1y+/boLSso9XW9+nbEcg=;
 b=jISo6m9HMdkomJLTnSqajqrgyx+7SCVQsOFZXBMjj+AH0omfzfVx1zIZ
 P7W3CqYuKdwyzssywgd1cAhg7mZQ1QpwaTrsG7C8n2EX88L0z/W6uaVbp
 8LyqFoDZqtM5phV98lHr2WqQO9yWVT+u7JRctlclTyvMTI90oA3Wfu/Oh
 i6meLlh0GdhLiR7FAI+8knt4seh5DQ/OszrxjRM833MKIKFdgZ1EURnNJ
 0q8LZexDNIDAL+m0D5VaM14GWmI7Cb4+UX8cl9wCTnh13mysIvjzIqeS9
 sYgJufEIqEq4RWwtAIdt0FVJdKX8bgokEu8sMg/xumnYDy/K279bdfJ7f A==;
X-CSE-ConnectionGUID: 4DXzxv3CR0OT+X5rVyUT8w==
X-CSE-MsgGUID: ym7Z5sZ6QYW+Tcsm8bT/XQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31092369"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31092369"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:44:21 -0800
X-CSE-ConnectionGUID: Yu9GpNUUSfiwoaQVxizTZQ==
X-CSE-MsgGUID: LcRkpkWdQZKl05nQ0JDAuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="117723687"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 04:44:20 -0800
Date: Mon, 11 Nov 2024 14:37:49 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com, 
 ville.syrjala@intel.com, kai.vehmanen@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH 4/9] drm/i915/display: update logic to determine crtcstate
 has audio support
In-Reply-To: <20241008082327.342020-5-vinod.govindapillai@intel.com>
Message-ID: <alpine.DEB.2.22.394.2411111436490.14041@eliteleevi.tm.intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-5-vinod.govindapillai@intel.com>
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

> In intel_dp_audio_compute_config() pipe_config->has_audio decision
> is now based on combination of two condition checks. Split out these
> condition as two separate checks to facilitate handling has_audio
> decision when we introduce audio bw checks in the follow up patches.
[..]
> @@ -2999,8 +2999,9 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  			      struct intel_crtc_state *pipe_config,
>  			      struct drm_connector_state *conn_state)
>  {
> -	pipe_config->has_audio =
> -		intel_dp_has_audio(encoder, conn_state) &&
> +	pipe_config->has_audio = intel_dp_has_audio(encoder, conn_state);
> +
> +	pipe_config->has_audio = pipe_config->has_audio &&
>  		intel_audio_compute_config(pipe_config, conn_state);

this seems a bit superfluous as well to have as a separate patch. Maybe 
just squash to patch 5 where has_audio logic is extended?

Br, Kai

