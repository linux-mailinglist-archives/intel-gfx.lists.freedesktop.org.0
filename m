Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 987E0CB8FDA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:46:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2501410E805;
	Fri, 12 Dec 2025 14:46:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CL5ioHGD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5987D10E248;
 Fri, 12 Dec 2025 14:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765550813; x=1797086813;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1CXVVOjZOqIZmOLrjRPwUBBB1WNEsCCHMtHlqe78MO0=;
 b=CL5ioHGD0AWJCdBBRcqnW4mr3UpZFnAoBv74+R8O2559W2O1MLp+mxGn
 874yItZLlR6Mjhz8SoEvTww6Avmv/LzBSRqnIypaDEkhfCZMOyv2uGyi1
 Q01wrwf8F2KIYFsX4PQNT+rDFAgFC89nuPOG8B3ROncQJSqRoRdD4eGdj
 JF2SJPEN8YMMbkfUgweM/lUmpAFYZByIszLyeelxXLYEHwOpFh76L8PQQ
 06pcWrZPxDtc/O1GM7WyrUMlEAqb/oDkNJ6sNBB4/CyfPpWlh3wq0WuGK
 W3yKtNl3umkbOOeecRaxPcdKHbKNRNje4p08s6tDzygsIho51gqtUQtQ+ g==;
X-CSE-ConnectionGUID: +tpqUU0SQLmJrmOiZ2wJtA==
X-CSE-MsgGUID: 7aw+Wbq+QDOwMQgU9LzQRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="67711571"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="67711571"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:46:53 -0800
X-CSE-ConnectionGUID: IVk9PEFiRqakVZBYiwnN1A==
X-CSE-MsgGUID: 3zko2X7eQqewjlnYJI/+VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196387590"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:46:52 -0800
Date: Fri, 12 Dec 2025 16:46:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/6] drm/{i915,xe}: clean up parent interface definitions
Message-ID: <aTwq2M8EBcCanVr3@intel.com>
References: <cover.1765548786.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1765548786.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Fri, Dec 12, 2025 at 04:14:03PM +0200, Jani Nikula wrote:
> Fix some issues spotted by Ville.
> 
> Jani Nikula (6):
>   drm/intel: fix parent interface kernel-doc
>   drm/intel: group individual funcs in parent interface
>   drm/intel: sort parent interface struct definitions and members
>   drm/i915: sort parent interface initialization
>   drm/xe: sort parent interface initialization
>   drm/i915/display: group and sort the parent interface wrappers better

series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
>  drivers/gpu/drm/i915/display/intel_parent.c  | 45 ++++++++-------
>  drivers/gpu/drm/i915/display/intel_parent.h  | 13 +++--
>  drivers/gpu/drm/i915/i915_driver.c           | 27 ++++-----
>  drivers/gpu/drm/xe/display/xe_display.c      |  2 +-
>  include/drm/intel/display_parent_interface.h | 59 +++++++++++---------
>  5 files changed, 80 insertions(+), 66 deletions(-)
> 
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
