Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057DDB3BB65
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Aug 2025 14:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB5F10EBA1;
	Fri, 29 Aug 2025 12:32:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="POejy53h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A90210EBA1;
 Fri, 29 Aug 2025 12:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756470762; x=1788006762;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ouB7hbzQ/ojfnFgqg2swVDTJkji38QYl4PSNGHhL9Bc=;
 b=POejy53h/G08hk0JkPBCFEg9uEr5t/Cic6oNWzQ9BJYSJwdIJeaqQOxt
 XgTRb73QG0trqYuaFI7sPyRgGuXlauL6hG/EOZ1gGaEb7UFhNhbZrfPrn
 RsbsHm7G+/6bFkqUcfUbHRla5K6uDgx1AG31vGfLJpmHIhFcAB0g6Cdys
 22B4S9WcwWa5e8BlB+4eMhsKyI0MjC/ctvel4cobw7xoA4WB6HAqB9DBU
 2dw1hO+Eq23TVhhnJKsYOQ/ftaqkUfzHj4RkPt4vBfqfJ+ezp/iPBMqOA
 9dYr/M5sPwdYVIZ7G+t0HZJOmIuT00ncqdambYNDPUjYeJIdXRZrchSk9 A==;
X-CSE-ConnectionGUID: NVIIli8XSESJF/+PNwFPNg==
X-CSE-MsgGUID: +GOzh8oSTrOyla1Tpawx7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58678149"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58678149"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 05:32:41 -0700
X-CSE-ConnectionGUID: 22gppxgkTZySQjvxaTd8qQ==
X-CSE-MsgGUID: vSgT9p6oQv+lBsL/Ch8eGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="171165476"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2025 05:32:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH 2/2] drm/i915/display: Make tracepoints work correctly
 on xe with PREEMPT_RT
In-Reply-To: <8c28c641-958c-4966-a631-effc00c31633@lankhorst.se>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250828090944.101069-1-dev@lankhorst.se>
 <20250828090944.101069-2-dev@lankhorst.se>
 <7ba38466ab2295059820d3d540b6324769ba5485@intel.com>
 <8c28c641-958c-4966-a631-effc00c31633@lankhorst.se>
Date: Fri, 29 Aug 2025 15:32:36 +0300
Message-ID: <5c6aef6949d5a39445783f06f6f1c4e6a5e61636@intel.com>
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

On Fri, 29 Aug 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
> I want to repropose my original patch, where drm_crtc_vblank_count() is used on preempt-rt.

Link?

BR,
Jani.

-- 
Jani Nikula, Intel
