Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B189C3DD4
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 12:59:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91FF310E481;
	Mon, 11 Nov 2024 11:59:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FZ0hru9f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E741010E481
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 11:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731326359; x=1762862359;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=V2cvujD2qLJg/v3x9Kbrr4uehE8brvzJY2epu0PAiRA=;
 b=FZ0hru9fEt7Ge4/ijocqS8NGwap7WI7JUolkfumPfhJF75Eg5JiJKveT
 en0SbRHNebDj+LlWmgcpwE5qTGUyPPD1P7rtnBtTz897CNc0SkxNLQCN4
 z5DAEQ/G6XtgI990hq9347/hmCCr4ZT/V85wCZxVkamBFnRR6HIQ+5FF8
 iTt9CV9oOqZgcSyGOJRBID+t7KiBwZ4xcU6o/DKBdimfuxlH+Duk5dZYS
 G/QHxkQ+4KXEpaj+/sxHfNagUxJeMJBMBHC3bWigO53SNJMLAbJK8EMRn
 xej1YFl7+hQN/Fb5XrKduYrMMlvecVsJUdtEWfBVsqCXhAZ8tk+7Gpn0d g==;
X-CSE-ConnectionGUID: WeWtApHXT/Ggp2mlndZzlw==
X-CSE-MsgGUID: lQXrAsdYSTe+O7u77SRRew==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="33988728"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="33988728"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 03:59:19 -0800
X-CSE-ConnectionGUID: mpQS631KQhm+D85oaWuHDQ==
X-CSE-MsgGUID: 8RDlB0SyS5+HFVJb3GDF3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="87255210"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 03:59:16 -0800
Date: Mon, 11 Nov 2024 13:52:50 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com, 
 ville.syrjala@intel.com, kai.vehmanen@intel.com, 
 Kai Vehmanen <kai.vehmanen@linux.intel.com>, jani.saarinen@intel.com
Subject: Re: [PATCH 5/9] drm/i915/display: check and prune audio frequencies
 based on bw limits
In-Reply-To: <20241008082327.342020-6-vinod.govindapillai@intel.com>
Message-ID: <alpine.DEB.2.22.394.2411111336180.14041@eliteleevi.tm.intel.com>
References: <20241008082327.342020-1-vinod.govindapillai@intel.com>
 <20241008082327.342020-6-vinod.govindapillai@intel.com>
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

> Calculate the audio bw requirements and check the supported sad
> audio frequencies are feasible with selected pipe configuration.
> If not feasible, prune the audio frequencies from sad list.

a bit of stretch for me to review the display portions, but I did have a 
go and I can see no blockers:
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

A few minor comments inline if you do update the series.

> @@ -705,6 +705,113 @@ static bool intel_audio_eld_valid(struct drm_connector_state *conn_state)
>  	return true;
>  }
>  
> +static bool
> +intel_audio_frequency_feasible(int line_freq_khz, int hblank_slots_lanes,
> +			       int avail_overhead, int req_overhead,
> +			       int channels, int aud_frequency)

minor note, looking at this from audio point of view (i.e. less background 
with display), I'd find this much easier to follow if the variables had
units in the variable name (like e.g. "line_freq_khz" does).

> +	int aud_samples_per_line =
> +		DIV_ROUND_UP(aud_frequency, line_freq_khz) + 1;
> +	int lines_per_audio_sample =
> +		max(1, line_freq_khz / aud_frequency);
> +	int hblank_bytes_available =
> +		(hblank_slots_lanes - avail_overhead) * lines_per_audio_sample;

E.g. this seems correct in the end, but took me a while to verify that 
hblank_slots_lanes really is bytes.

> +			drm_dbg_kms(&i915->drm, "sad updated. Pruned freq list: 0x%x\n", sad.freq);

Even if a little noisy, I think these are important to have as 
drm_dbg_kms.

> +static bool
> +intel_dp_audio_compute_bw_limits(struct intel_crtc_state *crtc_state,
> +				 struct drm_connector_state *conn_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	int hblank_bytes_avail_overhead = 64;
> +	int hblank_bytes_req_overhead = 80;

These could perhaps be defines instead rather than magic values in the 
function?

Br, Kai
