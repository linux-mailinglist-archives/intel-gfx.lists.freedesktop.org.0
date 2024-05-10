Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4F98C20C8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE50B10E738;
	Fri, 10 May 2024 09:21:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iEkA4TrZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48FA810E738
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 09:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715332909; x=1746868909;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=e5z6RrDlOmkQzyTjFhFNnMYfSe/dlO7OQnr5/JO/2yc=;
 b=iEkA4TrZCfBPYmltVODKLLkYOrYqRpt8uZPrLpG1J8zvz8OTh6TPpf/K
 mpDphYtlXdHjB1bMDy0LArcHlRS6TLJzRLURyGhnlbeaxXC74WeV8HWpn
 fbNiMcufDSsyri8zbU+Cf6va3h7O3/NzT2EtBXdo9Si0kgwxf+j1ExbYp
 KR9dy4G6QpidroCX0ob8RReKkXqmxoX7B6LtvG0ejkS5SpRFr8cvGil9t
 0fhBfoWcFFtQloeJYEkWbcNckL1SraulQhMQqSfFzlhFwgq1/V2SVKOib
 +5lKunN49kV71FGuZFzUYJA1tTgn2Q1T9Jvbatm3vWAs33SDyfFaDkIZ1 g==;
X-CSE-ConnectionGUID: Tyaa2WSjRA225ZgXYCQe8w==
X-CSE-MsgGUID: IpX+kyoMSvK1685AUAupPQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="28815108"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="28815108"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:21:49 -0700
X-CSE-ConnectionGUID: jqd/NDZcQhWYA4faqLeB8Q==
X-CSE-MsgGUID: mdHsiBQ2S7So5Dzi/zwoXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="29941075"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.180])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:21:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Cc: gustavo.sousa@intel.com
Subject: Re: [PATCH] Documentation/i915: remove kernel-doc for DMC wakelocks
In-Reply-To: <20240510090502.667556-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510090502.667556-1-luciano.coelho@intel.com>
Date: Fri, 10 May 2024 12:21:43 +0300
Message-ID: <87zfsyhviw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 10 May 2024, Luca Coelho <luciano.coelho@intel.com> wrote:
> The function descriptions are optional and have not yet been added to
> the DMC wakelock code, so we shouldn't try to use it.  Since this is a
> regression, remove the kernel-doc entry for DMC wakelocks for now.
> The proper documentation will be added in a future patch.

I don't really think the kernel-doc documentation is necessary for
internal interfaces. I mean adding brief comments is fine, but no need
for this stuff to show up at docs.kernel.org.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Fixes: 765425f598c2 ("drm/i915/display: add support for DMC wakelocks")
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  Documentation/gpu/i915.rst | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index 17261ba18313..3113e36f14cf 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -210,9 +210,6 @@ DMC wakelock support
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
>     :doc: DMC wakelock support
>  
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_dmc_wl.c
> -   :internal:
> -
>  Video BIOS Table (VBT)
>  ----------------------

-- 
Jani Nikula, Intel
