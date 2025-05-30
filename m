Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4112DAC8933
	for <lists+intel-gfx@lfdr.de>; Fri, 30 May 2025 09:44:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BA5F10E7CC;
	Fri, 30 May 2025 07:44:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BcdLN7of";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E85A510E7CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 May 2025 07:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748591077; x=1780127077;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=HSbtNWFqstfSDKUTqNvMrJXLZod1LF6FPl9mMEobWso=;
 b=BcdLN7ofB6oovCiK/H2nEJZo9v/qhiHJtB4oA5Eh7SsDQ+XYFc7UHFj4
 B+fkFzU++5ZfVwKYz6gszqvdsnE65GsdIol9mNZxPUUoXpFNG64oHYl5p
 xsgkOJGiRZQ5inqRyqBTz3b8sIkiQG5jgZOsLHIzLG1stMWpkgPP0u7Ad
 e8LDa+76vECxJp1tDdTo1konBuGWksrIvNlVEjySwTqw4HYJdeyOdv3xf
 WRyDnfwjZs5r5PVwnsPMWAnOW1EEqKxvJMSqvBt7tdtE6d9lY197/7UU+
 BmFapTeFDA6Ct4e2YXCHVElkW6VDT2q5aA/xkXa44ysCmpg9x9OJWaABs Q==;
X-CSE-ConnectionGUID: Jwfy0u54TLCKoYHdzDHK6g==
X-CSE-MsgGUID: XS3UWn3aTW2L4Zo8GurtFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11448"; a="54475091"
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="54475091"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2025 00:44:35 -0700
X-CSE-ConnectionGUID: u4dOncj3RWGK6pDn1/EmiA==
X-CSE-MsgGUID: 4+3iPFIMSJCMISMH/8SOFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="144141101"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2025 00:44:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Kees Cook <kees@kernel.org>
Cc: Gustavo A. R. Silva <gustavoars@kernel.org>,
 linux-hardening@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: i915 utils: range_overflows*()
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Fri, 30 May 2025 10:44:31 +0300
Message-ID: <cd0ea72c6cab6c478336cd1bb5b517a9fe7a150d@intel.com>
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


Hi Kees -

drivers/gpu/drm/i915/i915_utils.h has a handful of helper macros for
checking range overflows: range_overflows(), range_overflows_t(),
range_overflows_end(), and range_overflows_end_t().

Looks like the first one has also been copy-pasted to
include/drm/drm_buddy.h.

Feels like include/linux/overflow.h would be the right place for (some
version of) them.

Thoughts?


BR,
Jani.

-- 
Jani Nikula, Intel
