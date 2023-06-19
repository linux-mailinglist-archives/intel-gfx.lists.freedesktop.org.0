Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB97D7355A6
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 13:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC39210E1E8;
	Mon, 19 Jun 2023 11:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AE1210E1E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 11:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687173778; x=1718709778;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=sGwtsI2/8TeVWzP9H22/12l2JlXYmpemiEQolSKexfM=;
 b=SeS7UkzvYDsy+jE5BpasqT2kWj8beH3hfqDGDnTQbkZDcjiln3P/h1mD
 uSLmv0lxrlChXTRql4zuSYOMrDrf5t58D9WVlLl9zepjDXqEYYhjYFQsa
 /7diKsDmP6TgM3dR7OzizfpqWfiqWPqx/TTA+DbVaxbdIUaVHge1rmX9Z
 tyJoYjHzWxXcNx+qD+vzpK6EEel6LsJghYl9fSX2kbxu0qtNNAGYVjYK0
 SFBLxE3eZixFeHmUpfjXLKElhyOX2isDJevMvHnr+aJYOw21aL75phHMs
 JKU8CRhNbvcsF54vfFQ1g/kML6B0wNVRyYax50sNiu2Odjtr+SVISvpQj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="349327608"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="349327608"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 04:22:57 -0700
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="747546518"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="747546518"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 04:22:56 -0700
Date: Mon, 19 Jun 2023 14:19:50 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230609174212.1946930-4-mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <alpine.DEB.2.22.394.2306191406420.3532114@eliteleevi.tm.intel.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-4-mitulkumar.ajitkumar.golani@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915/display: Add wrapper to Compute
 SAD
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
Cc: intel-gfx@lists.freedesktop.org, jyri.sarha@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

[+Jyri]

On Fri, 9 Jun 2023, Mitul Golani wrote:

> Compute SADs that takes into account the supported rate and channel
> based on the capabilities of the audio source. This wrapper function
> should encapsulate the logic for determining the supported rate and
> channel and should return a set of SADs that are compatible with the
> source.

In general looks good. A few minor comments inline:

> +static u8 get_supported_freq_mask(struct intel_crtc_state *crtc_state)
> +{
> +	int audio_freq_hz[] = {32000, 44100, 48000, 88000, 96000, 176000, 192000, 0};
> +	u8 mask = 0;
> +
> +	for (u8 index = 0; index < ARRAY_SIZE(audio_freq_hz); index++) {

Minor nitpick: the use of "u8" in many places seems a bit misleading. It 
seems for many places (like the "index" here), you can just use int. 
But right, the SAD mask is 8bit, so maybe the get_support_freq_mask()
is still warranted to return a u8 mask.

> +void intel_audio_compute_eld(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	u8 *eld, *sad, index, mask = 0;
> +
> +	eld = crtc_state->eld;
> +	if (!eld) {
> +		drm_err(&i915->drm, "failed to locate eld\n");
> +		return;
> +	}
> +
> +	sad = (u8 *)parse_sad(eld);
> +	if (sad) {
> +		mask = get_supported_freq_mask(crtc_state);
> +
> +		for (index = 0; index < drm_eld_sad_count(eld); index++, sad += 3) {
> +			/*
> +			 *  Respect to source restrictions. If source limit is greater than sink
> +			 *  capabilities then follow to sink's highest supported rate.
> +			 */

Minor: maybe reword "Respect source restricitions. Limit capabilities to a 
subset that is supported both by the source and the sink."?

> +			if (drm_sad_to_channels(sad) >= crtc_state->audio.max_channel) {
> +				sad[0] &= ~0x7;
> +				sad[0] |= crtc_state->audio.max_channel - 1;

Can we add a debug trace here in case the channel count is limited? 

Br, Kai
