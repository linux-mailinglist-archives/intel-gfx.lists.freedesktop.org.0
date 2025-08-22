Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A05B3165E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Aug 2025 13:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C113410EACB;
	Fri, 22 Aug 2025 11:31:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FPq8dFxv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03BEC10EACB;
 Fri, 22 Aug 2025 11:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755862307; x=1787398307;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6IuCb6sEmTTIPJeQtwyk/vwIrcXm4+tMgK1Vwv8qBNY=;
 b=FPq8dFxvjY9LAQM1HAxyg9zqe0mrU/7nOH5KjnIvbiDfaywSmwTYG2Vb
 KmcMPLmxfgRARfW3/zFAYlEJsNFIMOzRLDYcpnH/etgtkWrN5DgkXhYaH
 5I1qTnPnI3oom4MHtj+bXBMLH43na5sUHvj+0zmlV5BAILgeOmfl67b+t
 K4NU8MmaoBmBUYK1yPn7NUa35c2eUQ/KaQPPnZ/gfpESUaDu2PfzVzCxt
 As6ioD02ZPXaJB7HWFKPd0503f3HTy5e9BJ6Ad+8XxvcNh2DcLUzxrNdT
 WOZ7PsZ2bNTft1eJ0eRKjGDo/ZXSanwN6c8YjTEID6logDu2GbYeLnwI2 w==;
X-CSE-ConnectionGUID: NBouIVhSSRCFkW9Z3Y3Ufg==
X-CSE-MsgGUID: 7Yd1HY9ST8i0P7y5wwr+AQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11529"; a="68440646"
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="68440646"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 04:31:46 -0700
X-CSE-ConnectionGUID: Wx4lxY07SuaP2oYt3J5lVA==
X-CSE-MsgGUID: 7Ti30nKQTVCNeycMs8Y6mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,309,1747724400"; d="scan'208";a="174006368"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2025 04:31:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
In-Reply-To: <20250820080451.2634888-9-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250820080451.2634888-1-ankit.k.nautiyal@intel.com>
 <20250820080451.2634888-9-ankit.k.nautiyal@intel.com>
Date: Fri, 22 Aug 2025 14:31:41 +0300
Message-ID: <ca1a863b518a0778733496488597faf9acd38e96@intel.com>
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

On Wed, 20 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> +	if (HAS_VRR(display) && intel_vrr_possible(crtc_state)) {

Nitpick, and a tangential to designing stuff:

intel_vrr_possible() never returns true for !HAS_VRR(). The HAS_VRR()
check is redundant. Adding redundant checks adds uncertainty about what
intel_vrr_possible() can return. "Whoa, can it return true even for
!HAS_VRR()? Why?" And then it reinforces the mentality that everything
needs redundancy and double checking.

This is not about just that one check and one line. The idea is that for
most "has feature" checks that enable something in the crtc state, you
do that check in very few places, and the fields in crtc state dictate
the rest. You're not supposed to have to second guess what crtc state
has.

Food for though.


BR,
Jani.


-- 
Jani Nikula, Intel
