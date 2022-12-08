Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A10E64742E
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 17:25:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE7E10E12C;
	Thu,  8 Dec 2022 16:25:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A6D110E12C
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 16:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670516728; x=1702052728;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=UgZMaJNVDbsqnMpEhkJkw2Xg5u/rG6Zyijp9PDtnyxY=;
 b=UH4u4OyqTz3dx3A6jxsMrbyd2St6IOqXj4n+1mf3wN21eYtX1gR4TV2Q
 Ubo+B7enb2ebRa+13vfUJMTNvJT7Dxk3e1nsa+pTnT9MaK8rNhvZ9BSWP
 h4TvDyxzMzUAQoVAU3bwJCoksaQAGYO1GO/vm3iW4s7tsS36u7bvGSguu
 hLNB5qiea+vr0ZcVEkRKcUz7ocHM9U/ynw1I47m3O90lb94Idpoj2OUHA
 yno0RoNUR5p5kuMLUdMYFxXOr+urTlD2cIz9UfcUWTnvcnYUWuf5LgwMk
 NmipvZDLxDTkUf/7MifcXottlSRN5ymFnDvLJuzZfBVidUZeSIePq85Sh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="296903755"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="296903755"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 08:25:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="677810622"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="677810622"
Received: from aslawinx-mobl.ger.corp.intel.com (HELO [10.99.249.223])
 ([10.99.249.223])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 08:25:24 -0800
Message-ID: <5dd6e067-bc93-ad01-8cf2-3bb5c9a45443@linux.intel.com>
Date: Thu, 8 Dec 2022 17:25:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>, alsa-devel@alsa-project.org, 
 tiwai@suse.de
References: <20221208154358.3848764-1-kai.vehmanen@linux.intel.com>
 <20221208154358.3848764-2-kai.vehmanen@linux.intel.com>
From: =?UTF-8?Q?Amadeusz_S=c5=82awi=c5=84ski?=
 <amadeuszx.slawinski@linux.intel.com>
In-Reply-To: <20221208154358.3848764-2-kai.vehmanen@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/3] ALSA: hda/hdmi: fix i915 silent stream
 programming flow
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
Cc: intel-gfx@lists.freedesktop.org,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/8/2022 4:43 PM, Kai Vehmanen wrote:
> The i915 display codec may not successfully transition to
> normal audio streaming mode, if the stream id is programmed
> while codec is actively transmitting data. This can happen
> when silent stream is enabled in KAE mode.
> 
> Fix the issue by implementing a i915 specific programming
> flow, where the silent streaming is temporarily stopped,
> a small delay is applied to ensure display codec becomes
> idle, and then proceed with reprogramming the stream ID.
> 
> Fixes: 15175a4f2bbb ("ALSA: hda/hdmi: add keep-alive support for ADL-P and DG2")
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/7353
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> Tested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   sound/pci/hda/patch_hdmi.c | 23 +++++++++++++++++++++--
>   1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
> index 7a40ddfd695a..a0ba24165ae2 100644
> --- a/sound/pci/hda/patch_hdmi.c
> +++ b/sound/pci/hda/patch_hdmi.c
> @@ -2879,9 +2879,28 @@ static int i915_hsw_setup_stream(struct hda_codec *codec, hda_nid_t cvt_nid,
>   				 hda_nid_t pin_nid, int dev_id, u32 stream_tag,
>   				 int format)
>   {
> +	struct hdmi_spec *spec = codec->spec;
> +	int pin_idx = pin_id_to_pin_index(codec, pin_nid, dev_id);

Shouldn't return value from pin_id_to_pin_index() be checked? It seems 
that it can return -EINVAL.

> +	struct hdmi_spec_per_pin *per_pin = get_pin(spec, pin_idx);
> +	int res;
> +
>   	haswell_verify_D0(codec, cvt_nid, pin_nid);
> -	return hdmi_setup_stream(codec, cvt_nid, pin_nid, dev_id,
> -				 stream_tag, format);
> +
> +	if (spec->silent_stream_type == SILENT_STREAM_KAE && per_pin && per_pin->silent_stream) {
> +		silent_stream_set_kae(codec, per_pin, false);
> +		/* wait for pending transfers in codec to clear */
> +		usleep_range(100, 200);
> +	}
> +
> +	res = hdmi_setup_stream(codec, cvt_nid, pin_nid, dev_id,
> +				stream_tag, format);
> +
> +	if (spec->silent_stream_type == SILENT_STREAM_KAE && per_pin && per_pin->silent_stream) {
> +		usleep_range(100, 200);
> +		silent_stream_set_kae(codec, per_pin, true);
> +	}
> +
> +	return res;
>   }
>   
>   /* pin_cvt_fixup ops override for HSW+ and VLV+ */

