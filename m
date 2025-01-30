Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F534A22CB0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 12:48:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1A6210E948;
	Thu, 30 Jan 2025 11:48:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ELQB/SZR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0337710E944
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2025 11:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738237694; x=1769773694;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=0/yyGnIqtkiNOgBIlCmabEm7eIM8eoW+2xAFwgV9Pck=;
 b=ELQB/SZRf5Yv2YkQhdibyw1gm2lEw3D5d6so1rmMx7o/ODUnSgvvlBgn
 vswfOwiwNdKLCWCTH3fFglNAwh6Y5u/E3KYLjY15UAom3PSi70SxZQgI4
 VfLDy9AJC2Ax3zlrugMlMd7x+QEP8N+DPqdQrRkptQRfEiOAAfqTFdwPM
 IrJp+a2hGzomM+qtKqZM3BqR+NVHa2Lg9g0dbJD4kLZIaKP/ySZcst54I
 ApfosRRNv7UUgeAr76IKwVxUeHlfcR19S0aOdpYIQuU7dUh8DNHZppzk2
 od0pU0v6Sr3kveiAyQWaIfZ0FlKFQ6pylJj8XWrd5RVJJDnQYQ/H61Scw A==;
X-CSE-ConnectionGUID: 97dwQDi/RyWerelirvByjQ==
X-CSE-MsgGUID: ZCQjtH8MQmqGsC+sfmgGig==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="38941805"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="38941805"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:48:14 -0800
X-CSE-ConnectionGUID: eYMh2bxOR5eeJ6JuPQvK9A==
X-CSE-MsgGUID: hNHQscGIRCKL1VIaZsJg9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="109132970"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.88])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:48:11 -0800
Date: Thu, 30 Jan 2025 12:48:07 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 krzysztof.niemiec@intel.com, krzysztof.karas@intel.com
Subject: Re: [PATCH v3] Revert "drm/i915/gt: Log reason for setting
 TAINT_WARN at reset"
Message-ID: <Z5tm91AXQGtdWzVc@ashyti-mobl2.lan>
References: <vfj2igeeokgsmcekh2qxys2y7c7dqplb6rhsybmjqn3ykxlcrf@yjnuqmgrze3z>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <vfj2igeeokgsmcekh2qxys2y7c7dqplb6rhsybmjqn3ykxlcrf@yjnuqmgrze3z>
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

Hi Sebastian,

On Thu, Jan 30, 2025 at 11:35:08AM +0000, Sebastian Brzezinka wrote:
> This reverts commit 835443da6f50d9516b58bba5a4fdf9e563d961c7.
> 
> Logging with gt_err() causes CI to detect an error even in cases of
> intentional error injection. Since real errors are already correctly
> reported by CI, this additional message is unnecessary.
> 
> Furthermore, a GT wedge is already being logged elsewhere, so instead
> of adjusting the log level, revert the above mentioned commit to prevent
> redundant error reporting

yeah, we missed the fact that this extra logs have upset CI.

> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

merged to drm-intel-gt-next.

Thanks,
Andi
