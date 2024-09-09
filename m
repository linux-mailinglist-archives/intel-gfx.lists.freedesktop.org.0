Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD96971C38
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 16:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EEE210E5A3;
	Mon,  9 Sep 2024 14:16:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ODk1gm6V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23CED10E5A3;
 Mon,  9 Sep 2024 14:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725891359; x=1757427359;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JGuYGiczY6yw+KZmqgjlNGS3RezJMYO+29FdttYyspo=;
 b=ODk1gm6VKNySuyOzdCUIVBHvIh167BPBc4aBXIwi6HAY7Aukr7RUc6dy
 V0Is/8umSl1hxEHRjM6uXSU7gf25Vp3p59WuIkuiKnvgRiRnjFSbGW8Eg
 Fipv5EjmWiCD1XoFg2Y6OCYuVoWoNdolN/juuGZS9bFK1JLrH65rZklI8
 ZKTbeYEaOR2ou7HXau0FRmEHJG4fy3tUy9IKHERYmVkZfWvR10sg5GNKH
 s1nWMIcO2lH7i0tNVGT+LcJtRQYF6IRbmJnuCq7eOuGKaOpflnVNocfYy
 rkHTtyTZ66RyyPZgs89vJL0vIwEGBUvAD4dTUZ8DJZZiaUsspnzcfGE9u Q==;
X-CSE-ConnectionGUID: QAYUOVSmTsO2OLgi7n4urg==
X-CSE-MsgGUID: yoTzturxQJmaJVKkfekUuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24138241"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="24138241"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 07:15:58 -0700
X-CSE-ConnectionGUID: wgzFffi4T2GabmL5lKFgMQ==
X-CSE-MsgGUID: ApT97yAuTCqrpd/YncMp1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="66742482"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Sep 2024 07:15:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Sep 2024 17:15:56 +0300
Date: Mon, 9 Sep 2024 17:15:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVA==?= =?utf-8?Q?=3A?= failure for
 drm/i915: Some intel_display conversions
Message-ID: <Zt8DHPNduv0MGIjS@intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
 <172563893277.955373.3337986783221513120@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <172563893277.955373.3337986783221513120@2413ebb6fbb6>
X-Patchwork-Hint: comment
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

On Fri, Sep 06, 2024 at 04:08:52PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Some intel_display conversions
> URL   : https://patchwork.freedesktop.org/series/138331/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15373 -> Patchwork_138331v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_138331v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_138331v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138331v1/index.html
> 
> Participating hosts (42 -> 39)
> ------------------------------
> 
>   Additional (1): fi-elk-e7500 
>   Missing    (4): fi-glk-j4005 fi-kbl-8809g fi-snb-2520m fi-bsw-n3050 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_138331v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live:
>     - bat-adlp-9:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15373/bat-adlp-9/igt@i915_selftest@live.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138331v1/bat-adlp-9/igt@i915_selftest@live.html

Some unrelated thing. Please proceed to shard testing.

-- 
Ville Syrjälä
Intel
