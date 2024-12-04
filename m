Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 384D69E3D01
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 15:43:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D394010E039;
	Wed,  4 Dec 2024 14:43:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y4FMXz+H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BECE310E039
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2024 14:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733323397; x=1764859397;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XRDQJ3uJ35zN6R8kc7/26DL0yooR1NcyHn5Pmxt6jag=;
 b=Y4FMXz+HPuKLkJ779BE2UlaKHBZb6PIaw2UYzkCyzUW/5pGI8ud7DFim
 bFmOmWkq5N5YbWqZ3HU8JkE2i38zRiyfGnvBuKbrD7Jyw5b9e+dOqKCnv
 oXEHR8JQ4ahZhrljTwQaPLVgnYi33ojFXB7drhFN3LyIRyr5KZ+wF3Bn/
 /fRBc/2boRvNWMCasEvXgghjQV/l/YTM2wPYqwZaeWWrZ1AAY2O43J7JL
 F/n/GZBZXnFU4n15ZnV31c0l+L3IB9Yp9es/4LuqZWx76knTz04m6JWrc
 yt2ra+WRjTtFfXtXzhphoGk8IfJqv8OFdr0dryu9JwUrOTUm3WcTRIt24 A==;
X-CSE-ConnectionGUID: 4rhGLEl8RGCFTTy0qIGyOQ==
X-CSE-MsgGUID: 0VdQU6YSSueENvaNeHnHCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44984476"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44984476"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 06:43:16 -0800
X-CSE-ConnectionGUID: N7iyW4ZpSymDoMrssnhieQ==
X-CSE-MsgGUID: Xso6M9BuS/OxRImf2CLMNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="131235692"
Received: from slindbla-desk.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.225])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 06:43:14 -0800
Date: Wed, 4 Dec 2024 15:43:09 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Eugene Kobyak <eugene.kobyak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, John.C.Harrison@intel.com,
 andi.shyti@linux.intel.com, jani.nikula@linux.intel.com,
 stable@vger.kernel.org
Subject: Re: [PATCH v6] drm/i915: Fix NULL pointer dereference in
 capture_engine
Message-ID: <Z1BqfTErA4t9L7Tc@ashyti-mobl2.lan>
References: <xmsgfynkhycw3cf56akp4he2ffg44vuratocsysaowbsnhutzi@augnqbm777at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xmsgfynkhycw3cf56akp4he2ffg44vuratocsysaowbsnhutzi@augnqbm777at>
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

On Tue, Dec 03, 2024 at 02:54:06PM +0000, Eugene Kobyak wrote:
> When the intel_context structure contains NULL,
> it raises a NULL pointer dereference error in drm_info().
> 
> Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: <stable@vger.kernel.org> # v6.3+
> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>

merged to drm-intel-next.

Thank you,
Andi
