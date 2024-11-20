Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B319D3EAF
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 16:13:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B23210E2D4;
	Wed, 20 Nov 2024 15:13:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D3pmGbgj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A64A10E2D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 15:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732115579; x=1763651579;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hsQyWWj7ZNpWvcDnDyVlY3c6/iB/6MtWOvxDzrHz5Uo=;
 b=D3pmGbgjJbjTVeX7Pu1wZA1YiHmu/VODgW6X4JjadiiV9PPq5QGc7984
 z7+IZoE37VVefNmcGzUu6x5RictCrw4tyViAhRmmMtwIM+zqTqOY811h+
 DVi8vAQUNwcfHWj96qSwFe6c/9DqEUfIjYXBnIYqmGlNuGQ46JM5XBjQj
 K7emDMEE7lEMu0j1qsfAmrgv3r0CfuVtMGUt++snL2/3bXqOsJgwkEwn0
 r0HBJpYGGPNnzNlFi6ZB+Ahd0ckvj6mXyjcf5/43Zv/ge6l1isfESMGvz
 62f25S/FWBd9HCrKLgaUgxsjs6XG+1Sb8S+SPi3Bcy+dcl3/hLN0NHzPX A==;
X-CSE-ConnectionGUID: H6KKaavAQp+r5MFnrMP5Eg==
X-CSE-MsgGUID: yxdUQkDnS3Oq3UhKeLqtAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="35042012"
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="35042012"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 07:12:59 -0800
X-CSE-ConnectionGUID: dItStpFaQmWOrkuigOamFQ==
X-CSE-MsgGUID: qAranaHrSBWZnEDVcW7KtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="89759608"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.40])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 07:12:56 -0800
Date: Wed, 20 Nov 2024 16:12:52 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Eugene Kobyak <eugene.kobyak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 John.C.Harrison@intel.com
Subject: Re: [PATCH v2] drm/i915: Fixed NULL pointer dereference in
 capture_engine
Message-ID: <Zz38dANRGWYgvdCQ@ashyti-mobl2.lan>
References: <jpbxlab2hz4gozye45lcl635zc4nrfb7rsrvgk4jlfgww2yo6g@qriixepb57au>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <jpbxlab2hz4gozye45lcl635zc4nrfb7rsrvgk4jlfgww2yo6g@qriixepb57au>
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

On Wed, Nov 20, 2024 at 03:03:29PM +0000, Eugene Kobyak wrote:
> When the intel_context structure contains NULL,
> it raises a NULL pointer dereference error in drm_info().
> 
> This patch aims to resolve issue:
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
> 
> Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>

Looks better, but you forgot:

Fixes: e8a3319c31a1 ("drm/i915: Allow error capture without a request")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: <stable@vger.kernel.org> # v6.3+

(Note the second line, Closes, this is how the gitlab issue
should be reported).

No worries, if John doesn't have anything agains, I can fix it.

But I was actually thinking here that the guc_id can be also
taken from engine->guc_id, I think it's the same.

Andi
