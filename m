Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9E223ACEC
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Aug 2020 21:26:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23CE989DEC;
	Mon,  3 Aug 2020 19:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7383289DEC
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Aug 2020 19:26:36 +0000 (UTC)
IronPort-SDR: wJyf2go4VaU/J8CBlvpAS+Z1zNvWGiPRAFVrz//fSU7IsTEH897X8JLLao5TcL7/eodyJu3xRI
 ghGiJ616Cu/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9702"; a="139773882"
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="139773882"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2020 12:26:35 -0700
IronPort-SDR: xap6b109PX5Q3nE5Ko15tVPMz1MgfjzlskA8HuubCcg4Z4LZ/Wy9kFSZyKeDO824o+1wook0p2
 sxFCWEe+eLyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,431,1589266800"; d="scan'208";a="492524389"
Received: from gthoma3x-mobl.gar.corp.intel.com (HELO [10.252.62.144])
 ([10.252.62.144])
 by fmsmga005.fm.intel.com with ESMTP; 03 Aug 2020 12:26:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200803140147.316523-3-lionel.g.landwerlin@intel.com>
 <20200803142326.6870-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <e953492b-23ab-0ee1-87ec-ee1a261667f1@intel.com>
Date: Mon, 3 Aug 2020 22:26:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200803142326.6870-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add syncobj timeline support
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 03/08/2020 17:23, Chris Wilson wrote:
> -enum drm_i915_gem_execbuffer_ext {
> -	/**
> -	 * See drm_i915_gem_execbuf_ext_timeline_fences.
> -	 */
> -	DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES = 1,
> -
> -	DRM_I915_GEM_EXECBUFFER_EXT_MAX /* non-ABI */
> -};
> +/**
> + * See drm_i915_gem_execbuffer_ext_timeline_fences.
> + */
> +#define DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES 0
>   

I was made to switch this from 0 to 1 just to make sure it's not a 
inadvertently left to 0.

I can't remember if it was Jason or Daniel's suggestion.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
