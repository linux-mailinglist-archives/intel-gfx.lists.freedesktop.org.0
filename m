Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7D84B9D21
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 11:29:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F12C10E158;
	Thu, 17 Feb 2022 10:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A8E810E956
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 10:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645093748; x=1676629748;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=5QpJkJ1FFQ5cvE46tUL1IG5MC61FezyDXbT57gDYGwk=;
 b=i3/2d9GNsS4VSyZI94I/XYL+LGpx/cakUBXW9UpkM4JnksoyIuS7SwQ7
 dnUyTiSH89+aqPv7bk45D+DSWu66HgNRfnh31PWscSdP4G/fe/HetbNsQ
 UB/lhYb0HXQEpUcGjY7Gamkv3Y0XPqW4p8f5FLaXHqV/ljvE+0WdUTIgK
 zybWsvhpAEkfM2WAqypqi5/p4WpysIkRZu3p4BRtbnm1lyEVoL43PNWFn
 2q3virqzaUzOXygxhKCJCXAdBdRqIw+xb7LS8oe86uXRbdKUsf5xq9vdZ
 qnnz18fR1vOB60XKe9cMchZMeoA3wo5Orb1BJsel/JfU4BWzm7jYhUog9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="248441337"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="248441337"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 02:29:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="571740351"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 17 Feb 2022 02:29:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Feb 2022 12:29:04 +0200
Date: Thu, 17 Feb 2022 12:29:04 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yg4jcNGjhuSAoPvB@intel.com>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <164505996499.18050.13429344508225280466@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <164505996499.18050.13429344508225280466@emeril.freedesktop.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_bigjoiner_refactoring?=
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

On Thu, Feb 17, 2022 at 01:06:04AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Move bigjoiner refactoring
> URL   : https://patchwork.freedesktop.org/series/100195/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11238 -> Patchwork_22286
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22286 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22286, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22286/index.html
> 
> Participating hosts (46 -> 44)
> ------------------------------
> 
>   Additional (1): fi-pnv-d510 
>   Missing    (3): fi-bsw-cyan bat-jsl-2 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22286:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - fi-hsw-4770:        [PASS][1] -> [FAIL][2]

Grr. This one is a real issue. Sort of regression from the original
bigjoiner patches, but only clearly exposed by this pipesrc rect
stuff. More fixes incoming...

-- 
Ville Syrjälä
Intel
