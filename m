Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4B7829E35
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 17:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 340B810E642;
	Wed, 10 Jan 2024 16:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D67B10E642
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 16:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704902988; x=1736438988;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=yqZxtq8eu45Re7ZiYINhbetzuvtqagBDy2BYS8aiROc=;
 b=L8bZLiYFsN27kvaZgSuJpaMGcdVBq5ga85/gRU9J1QjHnaMAW3KftdWs
 yprcLqcbtYF3zbC10CnLb+8jxDCwS2vzzR0v7aTudagwgGrbyJjw4bRdR
 5ARksd93/AR8DsxfIqKgyP6OGE7IGC7gnjKqzFdatJ+o2+bd5fbrhmN4z
 O6ocyZ0moLVmtNn3asoqvWtNoDXoWEdSC205sfFho5kTTVPbfm/Y34+8x
 wX6owIYehy/E9JdFN7X5lkv2NlPdmV0DWT7JAZF3IzR3yn7RbObQVOVXz
 Qmtmd9O5jHdFN+0w4Qb4+DKJkT+9wubn4euNm7sbq6K/3v+5RU+YdbV12 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="11911275"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="11911275"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 08:09:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="785644074"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="785644074"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.246.0.51])
 ([10.246.0.51])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 08:09:45 -0800
Message-ID: <a139f6b5-026b-4a82-93c1-ea8fd595276c@intel.com>
Date: Wed, 10 Jan 2024 17:09:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/i915: Pin error_capture to high end of mappable
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
 <20231215110933.9188-4-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215110933.9188-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15.12.2023 12:09, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> If we fail to pin error_capture to the start of ggtt (which
> is likely given the BIOS fb is usually there), we currently
> fall back to pinning it at the next available low address.
> This seems somewhat sub-optimal to me in case we later discard
> the BIOS fb (fairly likely if there are multiple different sized
> displays connected at boot). We are then then left with a
> permanenly pinned object somewhere in the middle of the mappable
> range of ggtt. It seems more sensible to pin the error capture
> object to the end of mappable as a fallback, so even if we discard
> the BIOS fb we are left with the mappable region mostly in one
> piece (potentially allowing for more/larger objects to be pinned
> there later).
> 
> Though I suppose we are chopping the ggtt address space as a
> whole into two chunks in a slightly different way. Essentially
> reducing the size of the second (larger) chunk a bit. So perhaps
> pinning truly massive objects (which don't strictly need to
> be mappable) could become a bit more difficult.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 21a7e3191c18..f62008962eb5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -876,7 +876,7 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>   						    ggtt->error_capture.size, 0,
>   						    ggtt->error_capture.color,
>   						    0, ggtt->mappable_end,
> -						    DRM_MM_INSERT_LOW);
> +						    DRM_MM_INSERT_HIGH);

In this case Chris raised concern that since error_capture must be 
mappable we will end up with worse fragmentation in case of 
DRM_MM_INSERT_HIGH.

Also see the comment above the change (my concern):
  * We strongly prefer taking address 0x0 in order to protect
  * other critical buffers against accidental overwrites,
  * as writing to address 0 is a very common mistake.

Maybe the ultimate solution would be to relocate BIOS fb vma also if it 
is at 0, I don't know.

Regards
Andrzej

>   	}
>   	if (drm_mm_node_allocated(&ggtt->error_capture)) {
>   		u64 start = ggtt->error_capture.start;

