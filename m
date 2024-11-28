Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD289DBDDF
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 00:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDD0910E1E0;
	Thu, 28 Nov 2024 23:06:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Scsngxtl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 107B110E1E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 23:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732835192; x=1764371192;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Ew/Z2sM3jfLxK7XsCO+iMy3mrsPNKfO/C1qNEv0JYNA=;
 b=ScsngxtlY9Kv/7EUDOkQPAHFcy+ZzxMGvhry6soivmWmJRxbFTRD38/e
 CnOBTxlocVb+JxDMsm+mcw6BysuY+TtPHlQ9eUIwunuMaIfyS9tx82B8d
 OWGsGAjjpnk8sICoSDsMTO52+/LScgyS/OKp8bLd57hyM4cFv8mmJk4iB
 r13il0c9HLUSDqSuG40XFGfz7/QIjHYbAzRhEPqisfakAroYhKg7mbGQC
 xHYnLGJZxiQbKSDTUBFfGqvQRzP5Ed4vdzwx0hGGDrnDSTnOhJ3UsLItZ
 QTd5JIyIcri8rUwOMvs4VxBs0Ov6jNf2/T9IJFN5uJRMerVv927ow1hzC A==;
X-CSE-ConnectionGUID: 70zhPir4Rn+cWKRmbkjImA==
X-CSE-MsgGUID: ijIqVLlfRUKrfd4GieyWHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="43738061"
X-IronPort-AV: E=Sophos;i="6.12,193,1728975600"; d="scan'208";a="43738061"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 15:06:31 -0800
X-CSE-ConnectionGUID: 3esyPN2DTA2YHqUmYSLwBg==
X-CSE-MsgGUID: nplbZm+RS7GaUjGcPJJ1oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,193,1728975600"; d="scan'208";a="97101415"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.166])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 15:06:29 -0800
Date: Fri, 29 Nov 2024 00:06:24 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Eugene Kobyak <eugene.kobyak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, John.C.Harrison@intel.com,
 andi.shyti@linux.intel.com, jani.nikula@linux.intel.com
Subject: Re: [PATCH v4] drm/i915: Fix NULL pointer dereference in
 capture_engine
Message-ID: <Z0j3cH2T7JnDQLnw@ashyti-mobl2.lan>
References: <sspixcrejd5nbhijuo7o3z5agbgyq637wc7gph7ajrs3lnls6g@5ljanfmvccyf>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <sspixcrejd5nbhijuo7o3z5agbgyq637wc7gph7ajrs3lnls6g@5ljanfmvccyf>
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

Hi Eugene,

On Thu, Nov 28, 2024 at 09:28:43PM +0000, Eugene Kobyak wrote:
> When the intel_context structure contains NULL,
> it raises a NULL pointer dereference error in drm_info().
> 
> Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: <stable@vger.kernel.org> # v6.3+
> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
