Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FFACD6291
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 14:31:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4CD910E682;
	Mon, 22 Dec 2025 13:31:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HtjUsTQG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F6A10E682;
 Mon, 22 Dec 2025 13:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766410276; x=1797946276;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=PAjiDZl22p/4H10ko+smHhmiFvm0LMGTlHmXsUPwhuM=;
 b=HtjUsTQGl/vGMNZyoygj/daDaQWEqZBdhfr7UOPJ8va1JnLvDNHm8aOx
 SjzlZ9ukQzweY4Tq0DaoLlLpbu97sRPPNcVTfxfOMXN16p9Dk5xHu976z
 8iu4BYIJ/Q22p0NEiQNXG+dyax2YAcQhkKkRqaHJwjecyO+x5Wuw/jEnD
 SCaRgZaiD5V7Z1j3sUKPRrA0s6X4+ZTLCXaBgHF+A2o3J7c4No6x1Z6Fv
 2LANSbxmLZYmEpOzcZRZWxibsKN84vn6BGbEhZoRVnPRhbZksnIO9FPOk
 z5TEjHs3/MoZmKmjIVABwVH6RvKo2ebeh5CalWRpO0nvCI/yb9kaSSvAO g==;
X-CSE-ConnectionGUID: toUMF3v6SmO7KTmeroSAig==
X-CSE-MsgGUID: br49PgdJS3ePdwfqSvhhFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="68306982"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="68306982"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:31:15 -0800
X-CSE-ConnectionGUID: MY7mMYdUQ62PQSw/eb5OhQ==
X-CSE-MsgGUID: ETO9RZIzStSRUCzWH3EeDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199829362"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 05:31:14 -0800
Date: Mon, 22 Dec 2025 14:31:12 +0100 (CET)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 3/4] drm/xe/compat: convert uncore macro to static
 inlines
In-Reply-To: <7ddee71952315e70e4a7df23638100b664e293bd.1766406794.git.jani.nikula@intel.com>
Message-ID: <47eac29d-f3f6-18de-0db7-ae610fa2fea8@intel.com>
References: <cover.1766406794.git.jani.nikula@intel.com>
 <7ddee71952315e70e4a7df23638100b664e293bd.1766406794.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="8323329-1322193366-1766410274=:1478141"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1322193366-1766410274=:1478141
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Mon, 22 Dec 2025, Jani Nikula wrote:
> Use static inline instead of macro for
> intel_uncore_arm_unclaimed_mmio_detection() to avoid the need for
> __maybe_unused annotations.
>
> v2: Rebase, intel_uncore_arm_unclaimed_mmio_detection()
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>

BR,
Michał
--8323329-1322193366-1766410274=:1478141--
