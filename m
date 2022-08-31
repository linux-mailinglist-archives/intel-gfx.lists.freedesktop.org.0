Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 609255A88E1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 00:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D475B10E4FD;
	Wed, 31 Aug 2022 22:17:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61AF210E4FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 22:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661984247; x=1693520247;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=jKSmkrqHeadkRgWAwLgFLVWjEER1EW8V8CsqcOFO5Sk=;
 b=dWaGtHz/YohYAOTZRWOJo6vLYUyqq4dMULvzaaK89gl+xYydu2iS2xB/
 2T+C/VsKpjV729BwnDzukUgzFoIyXmpv0kpSUn0N3f2mROZjrcbASsL8u
 kIsJcnKZX/LVsmuXG4tGr3pJalPRz1klgGY8BhB3RghBO6SzZ75ZVR/Az
 zegSr87EVcA919E13YjpwGhKUC2tUn8E96m1ltOTJ0uajGSRp1wANFEQW
 Up/DaUal5kpL1cI8XsKikUqHCS9aHN2Sil4g2l1p3lDOooE5LOzDXXpCZ
 4U488qkygnGGA7VTXRxoeNhggH2e5immzCm1t3Ruy79L8PS/CDriy0Glc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="278574671"
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="278574671"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 15:17:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="788005830"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.209.25.8])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 15:17:26 -0700
Date: Wed, 31 Aug 2022 15:17:26 -0700
Message-ID: <87v8q8rrbd.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <20220831214538.143950-1-rodrigo.vivi@intel.com>
References: <874jxtz1e7.wl-ashutosh.dixit@intel.com>	<20220831214538.143950-1-rodrigo.vivi@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/slpc: Let's fix the PCODE min freq
 table setup for SLPC
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
 Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 31 Aug 2022 14:45:38 -0700, Rodrigo Vivi wrote:
>

Hi Rodrigo,

> We need to inform PCODE of a desired ring frequencies so PCODE update
> the memory frequencies to us. rps->min_freq and rps->max_freq are the
> frequencies used in that request. However they were unset when SLPC was
> enabled and PCODE never updated the memory freq.
>
> v2 (as Suggested by Ashutosh): if SLPC is in use, let's pick the right
>    frequencies from the get_ia_constants instead of the fake init of
>    rps' min and max.
>
> v3: don't forget the max <= min return
>
> v4: Move all the freq conversion to intel_rps.c. And the max <= min
>     check to where it belongs.
>
> v5: (Ashutosh) Fix old comment s/50 HZ/50 MHz and add a doc explaining
>     the "raw format"

I think we both agree that mostly the way this patch is written it is to
add SLPC but not risk disturbing host turbo, specially old platforms
(CHV/VLV/ILK and pre-Gen 6). Also these freq units (sometimes 16.67 MHz
units, sometimes 50 MHz, sometime MHz) in different places in the driver
and different product generations is hugely confusing to say the least. For
old platform we don't really know what units the freq's are in, we only
know intel_gpu_freq will magically convert freq's to MHz. In any case let's
work with what we have.

> @@ -130,6 +123,12 @@ static void gen6_update_ring_freq(struct intel_llc *llc)
>	if (!get_ia_constants(llc, &consts))
>		return;
>
> +	/*
> +	 * Although this is unlikely on any platform during initialization,
> +	 * let's ensure we don't get accidentally into infinite loop
> +	 */
> +	if (consts.max_gpu_freq <= consts.min_gpu_freq)
> +		return;

As I said I would remove reference to "infinite loop", I am not seeing any
infinite loop, maybe just delete the comment.

Also as I said I see the check above should be completely removed (so it is
actually a pre-existing bug in the code). However since you want to carry
it forward in order not to risk disturbing legacy behavior that's fine.

Rest LGTM:

Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
