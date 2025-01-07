Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E50A03F75
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 13:38:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7186510E6E5;
	Tue,  7 Jan 2025 12:38:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ntipMero";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A7B10E6E5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 12:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736253510; x=1767789510;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YjwmWi7laFal1DEkdPu6AONaOrj6/XzvBFHC5KakTVE=;
 b=ntipMero2nD5im+Xgh/KVUa1pH32zdXuZ84A2sxJIyTSa1WSpTf5uC5K
 c1m9u+OMfJDEZB3kZKOmSeGK2EqFECHcE4E513jfvkPU/xLxVG2Ni55A6
 kG4KZekTCYP3tkAh8tUmNMwiNSD7slPtEnBEiDhEWhJPGM07RuK5VvC6s
 UwgSFBeqocbOSIK+o2pl0uZVmvZbJn79yjIhlmuW62Z3CjHs/7OfdL5aY
 3crWvze3BZPfKu3hxo/z9iNi7+suf3GSrbRr5ZUj5b9JkQf3SyDzlJ2hs
 D97RhFFSqvZF2TM3k5odRjQx2lM52noNCRxvgsxiRAAqnI5B/Wm5C9PlL w==;
X-CSE-ConnectionGUID: adZkAuUlRhCl6ezZ52vrRw==
X-CSE-MsgGUID: t1xUQDnYT265accsK5MGXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="58898007"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="58898007"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 04:38:30 -0800
X-CSE-ConnectionGUID: fE2gH3lZQI6rzmPE6r5M4A==
X-CSE-MsgGUID: FPOTjIrqTmKyig0Mxq8Mcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="103253448"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.98])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 04:38:29 -0800
Date: Tue, 7 Jan 2025 13:38:24 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v1 4/8] drm/i915/pxp: fix typos in i915/pxp files
Message-ID: <Z30gQJ5-63D8oOrf@ashyti-mobl2.lan>
References: <20250106103037.1401847-1-nitin.r.gote@intel.com>
 <20250106103037.1401847-5-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250106103037.1401847-5-nitin.r.gote@intel.com>
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

Hi Nitin,

On Mon, Jan 06, 2025 at 04:00:33PM +0530, Nitin Gote wrote:
> Fix all typos in files under drm/i915/pxp reported by codespell tool.
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
