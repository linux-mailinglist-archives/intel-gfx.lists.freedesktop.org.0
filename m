Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD131BDDB7B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 11:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ADED10E765;
	Wed, 15 Oct 2025 09:17:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LG1ZGYlN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E92CE10E760;
 Wed, 15 Oct 2025 09:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760519874; x=1792055874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UZriKd1Vd2GUxXoOvLAi155POT63hGW18fh5rYdb98g=;
 b=LG1ZGYlN9HoOxn0rmjlyLBy7e9tyldnczO5xltPg8m+3/G6q9goUYh3t
 xr07HqLkOhzp+g4XA6AXTgNGogkuvjGnTFEjciTaHCBLK87zOKiVreMHD
 rYCpy7SFkQgrNV1L5tPa8/O2mT9i7nhvZXS1yqegTQT81Q3llv2oE6+Fq
 +N1HeSAwCrcIj9BwE6w0WK2DTC7Nz/zNmchnUXFz8Gl3DuALVdNDqaj9y
 CTDHR4xfEJ+aDwZVgVIL13xmQxo9iD0rdMGF2nsHhwNwHOpsDpZSGD8mI
 In4jR2PTzOMsB4GxVxZceDkcGd5KyZXd8Afjpo+m8dnIGLVIHCnbpxDAz A==;
X-CSE-ConnectionGUID: QPJu/CXNSCe/IvKxQLolcQ==
X-CSE-MsgGUID: m0wPycf8SfiJvUCqQvGYHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="73367670"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="73367670"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 02:17:53 -0700
X-CSE-ConnectionGUID: e00eIfpGRkCqU8IGjcrc8g==
X-CSE-MsgGUID: KZHby1ksSJec8Jz6LjCqMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="181922213"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.92])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 02:17:52 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?UTF-8?B?4pyX?= i915.CI.Full: failure for drm/i915: Avoid lock
 inversion when pinning to GGTT (rev2)
Date: Wed, 15 Oct 2025 11:17:49 +0200
Message-ID: <13864218.uLZWGnKmhe@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <176047796460.12447.7161243985847652732@97596180aaec>
References: <20251014125504.14804-5-janusz.krzysztofik@linux.intel.com>
 <176047796460.12447.7161243985847652732@97596180aaec>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi I915-ci-infra@lists.freedesktop.org,

On Tuesday, 14 October 2025 23:39:24 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Avoid lock inversion when pinning to GGTT (rev2)
> URL   : https://patchwork.freedesktop.org/series/155622/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17362_full -> Patchwork_155622v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_155622v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_155622v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 11)
> ------------------------------
> 
>   Missing    (1): shard-dg2-set2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_155622v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-dg2:          [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17362/shard-dg2-1/igt@i915_suspend@debugfs-reader.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155622v2/shard-dg2-10/igt@i915_suspend@debugfs-reader.html

The change under the pre-merge testing doesn't affect DG2, only CHV and BXT 
platforms, then the above is not related.  Please update filters and re-
report.

Thanks,
Janusz

> 
>   
> Known issues
> ------------
...



