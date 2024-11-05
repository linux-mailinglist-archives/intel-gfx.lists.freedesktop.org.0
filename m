Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04ACA9BC893
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 10:03:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC0310E2D0;
	Tue,  5 Nov 2024 09:03:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EvQfvgjB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C2010E2D0;
 Tue,  5 Nov 2024 09:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730797428; x=1762333428;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+VnAiPekIkrGnuUYWDrrI5DNR8Lw6g6wBkt5FPcSmLE=;
 b=EvQfvgjBsgtSXCrfFvEMgdrhMS88TWXFVDjfqYI7ySsbRtXhUgUYkl/i
 m+xJ/CfF/zqYvCvf6etPalPDMosf5cG/mfQsNEduuUPYygTwDgpROyqZA
 Jwyffc6Fza4ny3UzCeiz8LhhA9ImfyzS+wpzBwkxnXCrfFNsYOSwE1B56
 44OqqmQ11eZRpUw4DDNmEb8cw7vrtInRO5DRdewf1pVRAPb2rNEYLKZTP
 4TcJ527Wl9Y4eJ+Gqwqv/1ErkDEMIo5/fqnvJ5w/YtaFuTPA371M08ssh
 ZOWgA5jkp1gcC5/PRUBKu+F1JzCLi/r17/6ZLoEBr8G7bGl8PXsGw0/B3 g==;
X-CSE-ConnectionGUID: mMkfcT1TTFSJigjtIKlV/g==
X-CSE-MsgGUID: kxzTdY45TTiOALxKY4bU3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30486728"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30486728"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 01:03:47 -0800
X-CSE-ConnectionGUID: Hj71UTrqSjmkIqTrrkvmzg==
X-CSE-MsgGUID: m6PhLzb1QJuMK6tynHyFzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="88742793"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.82])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 01:03:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 2/8] drm/i9i5/display: use intel_display in
 intel_de_read calls of skl_watermark.c
In-Reply-To: <20241105071600.235338-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
 <20241105071600.235338-3-vinod.govindapillai@intel.com>
Date: Tue, 05 Nov 2024 11:03:42 +0200
Message-ID: <87v7x2gihd.fsf@intel.com>
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

On Tue, 05 Nov 2024, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Convert all intel_de_read() to use intel_display instead of
> struct drm_i915_private object. This is in preparation for
> the rest of the patches in this series where hw support for
> the minimum and interim ddb allocations for async flip is
> added.
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Typo in subject prefix.


-- 
Jani Nikula, Intel
