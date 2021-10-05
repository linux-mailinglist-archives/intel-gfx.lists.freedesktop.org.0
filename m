Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E22422AB7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 16:16:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3302E6EB8B;
	Tue,  5 Oct 2021 14:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45626EB8B
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 14:16:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="226061610"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="226061610"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 06:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,348,1624345200"; d="scan'208";a="521833530"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 05 Oct 2021 06:42:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Oct 2021 16:42:31 +0300
Date: Tue, 5 Oct 2021 16:42:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YVxWR2WCcPvl8XM/@intel.com>
References: <20211004170535.4173-1-ville.syrjala@linux.intel.com>
 <163343819312.19283.13271123099340341851@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <163343819312.19283.13271123099340341851@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_DP_link_training_further_=28rev4=29?=
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

On Tue, Oct 05, 2021 at 12:49:53PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Improve DP link training further (rev4)
> URL   : https://patchwork.freedesktop.org/series/95405/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10683 -> Patchwork_21247
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21247 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21247, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21247/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21247:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-tgl-u2:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21247/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

That looks like a straight up race during unbind. We turn off
interrupts first, only then we cancel the hpd stuff (including the
modeset_retry work) which presuambly was already running and told
fb_helper that stuff happened, then the fb_helper proceeds to do
a modeset while interrupts are already off and we're in the middle
of tearing down the driver, and all hell breaks loose as a result.

Unrelated to these patches, I *think*. I'll hit retest anyway to
make sure.

-- 
Ville Syrjälä
Intel
