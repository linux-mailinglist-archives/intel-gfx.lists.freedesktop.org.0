Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC58B9350B0
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 18:29:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026BD10EA2E;
	Thu, 18 Jul 2024 16:29:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DCQxpsJM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D146E10EA2E
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 16:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721320167; x=1752856167;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=TqLQr44cEmIqEcT9Ye6vpFxktgpFRVIwLJr56x8Mpm4=;
 b=DCQxpsJM8I3AXdQ3YfGHR259ko50WsCt8s2C4XRGKnSDwOBfZYwMbT0/
 iDPd+ZMl+J6W0BMAaTDISyUn7Vmv5UKpDQZC8lcHnSprnpbYbj6K/6BEC
 oLfFm2U+2cJYtZlpE8ix+Ba7UfVRl6XSNd6umCn5+5jMCHJb/tvhzQvLE
 5C1F0y18c+v1qc+BWAPgvtBhbd/ETCwZUAwzTrVyutQffCbor+sSJz9eq
 seipNYXzIQAmGFr3WdwZuueSdorr1GnMFn0uDINt3WS2JLNSBemQCsQGK
 5M8VdpAUMBCpn2gOT08HEkfnQLcvDAGYJAKYLNFl2ocWcNJxJxdiThp6m A==;
X-CSE-ConnectionGUID: T4MPauCuQKq1UOWi+CPYIw==
X-CSE-MsgGUID: 1W1oxYd8Qw2URzVclOn3sg==
X-IronPort-AV: E=McAfee;i="6700,10204,11137"; a="29477313"
X-IronPort-AV: E=Sophos;i="6.09,218,1716274800"; d="scan'208";a="29477313"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 09:29:27 -0700
X-CSE-ConnectionGUID: pPFHdRxKRXCAKx9dl7fgHA==
X-CSE-MsgGUID: auzVpcKFSv2wEHmDYEUUmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,218,1716274800"; d="scan'208";a="55675493"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.101])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 09:29:24 -0700
Date: Thu, 18 Jul 2024 18:29:19 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 dan.carpenter@linaro.org, chris.p.wilson@linux.intel.com,
 Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
Message-ID: <ZplC34qfT71D3XBI@ashyti-mobl2.lan>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
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

Hi Jonathan,

On Fri, Jul 12, 2024 at 02:41:56PM -0700, Jonathan Cavitt wrote:
> Prevent a NULL pointer access in intel_memory_regions_hw_probe.
> 
> Fixes: 05da7d9f717b ("drm/i915/gem: Downgrade stolen lmem setup warning")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

because this is a memory related patch I pushed it in
drm-intel-gt-next.

I also added the Closes tag as suggested by Nirmoy.

Thanks,
Andi
