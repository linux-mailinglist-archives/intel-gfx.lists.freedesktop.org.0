Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FE8A68198
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Mar 2025 01:34:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F30B10E0C6;
	Wed, 19 Mar 2025 00:34:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mHZLh8Zz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C2F10E0C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Mar 2025 00:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742344465; x=1773880465;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=l7qx0fzjh5+fPeFdopZV6FhkSP/1qkS6HzhJYjxttmw=;
 b=mHZLh8ZzNkk9mZJxQlQuqUZHBl+vFJ9jKiTQ9fJNccoA6T8LznnO/Dus
 cjzVOyQ2IDqRNP+QSt22+7kK76SxuvqMyJ8IqAIaNytoobXr/oPOvoeoY
 gi19vK2CVsDDxl7vqrvmTNsA5nR1vNgUGfJb5oSJgV94FC3jzoYSyNy99
 /WBgeD8jDRMUm0HpofPMh6V7gwpbn8GmmTmy8EewKVDy5Ynzwz+9JXpCl
 9CphkU5qLqFnGCvvhQdNEhfzABHCCwWtQ5q8mwS8t7EOwdSfee1mMRTbS
 FIA+SaezSzQ25tqmVnjPVdpE6tbVCm2o46oDIezRxBS+PzgX0F4ixj8E0 Q==;
X-CSE-ConnectionGUID: F2Opq1UvTSuj02LvV901eg==
X-CSE-MsgGUID: sqHN+E7NQCSMR0zgd1zrSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11377"; a="54892737"
X-IronPort-AV: E=Sophos;i="6.14,258,1736841600"; d="scan'208";a="54892737"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 17:34:25 -0700
X-CSE-ConnectionGUID: i7q3e5NxTF+KBcz+hYbelA==
X-CSE-MsgGUID: wKYhAleQSmGAoR21+h4UNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,258,1736841600"; d="scan'208";a="153425536"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2025 17:34:23 -0700
Date: Wed, 19 Mar 2025 01:34:20 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Andi Shyti <andi.shyti@kernel.org>
Subject: Re: [PATCH 2/4] drm/i915/gt: Fix SPDX license format
Message-ID: <Z9oRDO0O7oDsyACd@ashyti-mobl2.lan>
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
 <20250314021225.11813-3-andi.shyti@linux.intel.com>
 <luoyuhjv5ibwv4omqvg5s432mvix4txrzrbuevou5llt5axkl7@dhrwqme3fbkt>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <luoyuhjv5ibwv4omqvg5s432mvix4txrzrbuevou5llt5axkl7@dhrwqme3fbkt>
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

On Tue, Mar 18, 2025 at 10:55:03AM +0000, Krzysztof Karas wrote:
> > Header files need to declare the SPDX under /* ... */ style
> All files modified in this patch series start with:
> // SPDX-License-Identifier: MIT
> rather than:
> /* SPDX-License-Identifier: MIT */
> 
> As a note:
> :~/linux/drm-tip/drivers/gpu/drm/i915$ rg "// SPDX-License-Identifier: " | wc -l
> 242
> :~/linux/drm-tip/drivers/gpu/drm/i915$ rg "/* SPDX-License-Identifier: " | wc -l
> 696
> 
> are those styles interchangable or is one preferred over the
> other? I am just curious seeing both are being used.

It's an ugly mess that for some reason people have accepted from
the beginning. The SPDX license has a different format for .c and
.h file :/

Andi
