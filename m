Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 192C372956A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 11:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D7810E673;
	Fri,  9 Jun 2023 09:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E874410E674
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686303393; x=1717839393;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=EIvNX+3JZmfwyRh29OFUoIh5aGa48MhxL3YBNzpwO+o=;
 b=j/z4D6XcNuHuyse83FMzT66JcPixMFmc2XwiRc+iKdw4uC+M6qi6gEyD
 yX4LKYn1zZKncHY4SraAGH96nxVOAIkGZFUKg1H/X/rZCxoZJ+9KMwwet
 7Kwl6VmWvJdRuB6HoKYUB/FMZvszlicqxCIpGvqnHRuNC6eQCM57boYCp
 xrfqnWWpf8VAQlIv+declwdTC2SfMUZVlpPjbq5MmGQFrv5rBE9kxUQ/u
 Mz8CynuwbamQQsjDa7PkGEnUghEnfPdPpiquymCKIJkNVWhjE1kUYui4x
 95nWaZ29LyubzpIa0C2IX9iinwYDwIoRPLC+vMlEB3B1yPgc3b6JXIxnV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="356450843"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="356450843"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 02:36:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="660710039"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="660710039"
Received: from skolhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.254])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 02:36:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230609084504.1929424-2-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230609084504.1929424-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609084504.1929424-2-mitulkumar.ajitkumar.golani@intel.com>
Date: Fri, 09 Jun 2023 12:36:27 +0300
Message-ID: <87legtq8o4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/hdmi: Add audio config related
 params in crtc_state
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

On Fri, 09 Jun 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add source audio-related config params in crtc_state.
> These params can be supported frequency, supported channel,
> and audio support, which can be further computed based on
> source capabilities.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 731f2ec04d5c..873a60f3f870 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1129,9 +1129,15 @@ struct intel_crtc_state {
>  	/* Whether we should send NULL infoframes. Required for audio. */
>  	bool has_hdmi_sink;
>  
> -	/* Audio enabled on this pipe. Only valid if either has_hdmi_sink or
> -	 * has_dp_encoder is set. */
> -	bool has_audio;
> +	struct {
> +		bool has_audio;
> +
> +		/* Audio rate in Hz */
> +		unsigned int max_frequency;
> +
> +		/* Number of audio channels */
> +		unsigned int max_channel;
> +	} audio_config;

This breaks the build. Every commit should build on its own.

audio_config is too verbose. Please just use "audio".

Please don't add the new members in this commit, just first add the
substruct and make the updates. Then add new members in a separate
commit.

BR,
Jani.

>  
>  	/*
>  	 * Enable dithering, used when the selected pipe bpp doesn't match the

-- 
Jani Nikula, Intel Open Source Graphics Center
