Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A0974170B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 19:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B670210E380;
	Wed, 28 Jun 2023 17:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B3C10E371
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jun 2023 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687972493; x=1719508493;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=xJN3SeA8j5QshJ1LveAyl9815ym2KhQC8BZ7z7vDQXw=;
 b=oBWAtZFNWlbSQ2uV0hGfPNalkP+y9xm2AgMtTjF/sHQz0STx2JuDp09L
 q2Vl9Ro1Z9XKCLayLUGTlgWW5yF07QaDEvifWg13Fzt6u4yXwwz1t5aAp
 +fKePHJoU4HPi0KyZ4yxCJknrxbyIbo0hYwzl697S23l7qo5eABowvarg
 Is3esLIjBr/k1FyVICVR5y2Hr0f0zRJimBk5xQRXtI5yBfGOmDd3oZqqv
 cqQyUylo7pFeIZB8ADhdRqYJRu7XEliXGn/wGCHaMgbDlxQz1Vq4FFP7n
 HOpD8p++hQxSy7Tib52XOTA3ncvoAdy2C3zdlrbdMxmRCdGd8dw3YZ7dK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="341492884"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="341492884"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 10:14:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="806990301"
X-IronPort-AV: E=Sophos;i="6.01,166,1684825200"; d="scan'208";a="806990301"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2023 10:14:50 -0700
Date: Wed, 28 Jun 2023 20:11:15 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <MWHPR11MB193515FF0C6345AF5EF76D34B226A@MWHPR11MB1935.namprd11.prod.outlook.com>
Message-ID: <alpine.DEB.2.22.394.2306281950390.3532114@eliteleevi.tm.intel.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-3-mitulkumar.ajitkumar.golani@intel.com>
 <alpine.DEB.2.22.394.2306191423170.3532114@eliteleevi.tm.intel.com>
 <SJ1PR11MB612990667303BE8F0F9453F5B95CA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <alpine.DEB.2.22.394.2306211844340.3532114@eliteleevi.tm.intel.com>
 <MWHPR11MB193515FF0C6345AF5EF76D34B226A@MWHPR11MB1935.namprd11.prod.outlook.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [RFC 2/3] drm/i915/display: Configure and
 initialize HDMI audio capabilities
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jyri.sarha@linux.intel.com" <jyri.sarha@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Mon, 26 Jun 2023, Golani, Mitulkumar Ajitkumar wrote:
> Let's say, with the obtained audio_req_bandwidth, if I encounter the following combination:
> pipe_config->audio.max_channel = 8 and pipe_config->audio.max_frequency = "X" value.
> Now, let's assume my sink supports only 7 channels. In this case, with current implementation,
> pruning will be bypassed, and there is a possibility that the sink-supported channel multiplied
> by the sink-supported rate exceeding the available blank bandwidth, but pruning didn't occur.
> 
> For this situation, I am considering adding an "else" part in intel_audio_compute_eld.
> This "else" part would check if (sad_to_channels(sad) < crtc_state->audio.max_channel), for example, in the GLK case also. 
> In that case, the channel would be fixed. 
> 
> So, if Channel * audio sample container size * (iterating from Max rate to Min rate) is less than
> max_audio_samples_per_second, I believe we can eliminate the above mentioned situation.
> If the sink's supported channel is lower than pipe_config->audio.max_channel, we can get another
> chance to adjust the rate based on the sink's maximum capability.
[...]
> now pruning will happen in 2 cases,
> 
> 1. If pipe_config->audio.max_channel < sink's supported channels then prune as per obtained combination from,
> intel_hdmi_audio_compute_config.
> 2. If pipe_config->audio.max_channel >  sink's supported channels, but sink's supported channel * sink supported max rate * audio sample container size
> exceeds the max_audio_samples_per_second then prune with sink's supported channel and rate (which satisfy bandwidth condition. range: in between  Max to min).
> 
> Please give your opinion.

ack, I think this is sensible. The SAD filtering cannot be perfect as 
there can be multiple ways to prune the config to get within 
bandwidth budget (as we have three varibles for LPCM, channel count, 
sampling rate and also sample depth). So given limited visibility, I'd
say above approach sounds good. I'd also proceed (in your step2) with 
limiting first the sampling rate and only further limit channel count in 
second step.

Br, Kai
