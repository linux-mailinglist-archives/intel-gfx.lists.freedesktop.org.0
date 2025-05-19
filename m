Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FAEABBF57
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 15:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D3B10E230;
	Mon, 19 May 2025 13:39:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FYV3ta28";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72DF510E230;
 Mon, 19 May 2025 13:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747661994; x=1779197994;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=p77BJ1A0XYXe1YK84cAeUqoR7zmC4AjZUO0nh+qjfIA=;
 b=FYV3ta28LmF+HZZ368ZGpgEqfVTaR8Zsgs4/R4sDiVlbsQyAmf6oAkzB
 aBmvWKMxHb2t/g+i7Rsv1Ch23ur3uj6C9Lf45NeD0ZyqRZW2IKg+AjBse
 8us70gKV7GXFHII1y9HIzrdJO1optxl7zg1QVSy9bnFzerqW8B9rtL5tW
 gqVw0hHxXw5Z2lye2aC7p9ga8aAR86CP1p8BfymdXdUiIXECMod+QA9pL
 s2hrTvKen+RMNpgzLOFqwNJBFQJl6xer8Siyyy0YCO5Q1lwprDTD8pbxc
 wGLP3xVtDJgcbuKoHXE5StfKxeqFJbMcdKf3Fi6wBPh/jIPvERquLJg7l A==;
X-CSE-ConnectionGUID: AP0HvGkBR5+hDuth6t/45w==
X-CSE-MsgGUID: xbY/zdadT2W8Bv7uvofa1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="52194461"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="52194461"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:39:54 -0700
X-CSE-ConnectionGUID: 4tW6cBNJTlWFmnxRzdK/Pg==
X-CSE-MsgGUID: bvD2LyN0SuGnkTd2JnezaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139212719"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa010.jf.intel.com with ESMTP; 19 May 2025 06:39:53 -0700
Received: by black.fi.intel.com (Postfix, from userid 1001)
 id 369B5256; Mon, 19 May 2025 16:39:51 +0300 (EEST)
Date: Mon, 19 May 2025 16:39:51 +0300
From: Mika Westerberg <mika.westerberg@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org
Subject: Re: [PATCH v2] drm/i915/dp_mst: Work around Thunderbolt sink
 disconnect after SINK_COUNT_ESI read
Message-ID: <20250519133951.GD88033@black.fi.intel.com>
References: <20250516170946.1313722-1-imre.deak@intel.com>
 <20250519133417.1469181-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250519133417.1469181-1-imre.deak@intel.com>
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

On Mon, May 19, 2025 at 04:34:17PM +0300, Imre Deak wrote:
> Due to a problem in the iTBT DP-in adapter's firmware the sink on a TBT
> link may get disconnected inadvertently if the SINK_COUNT_ESI and the
> DP_LINK_SERVICE_IRQ_VECTOR_ESI0 registers are read in a single AUX
> transaction. Work around the issue by reading these registers in
> separate transactions.
> 
> The issue affects MTL+ platforms and will be fixed in the DP-in adapter
> firmware, however releasing that firmware fix may take some time and is
> not guaranteed to be available for all systems. Based on this apply the
> workaround on affected platforms.
> 
> See HSD #13013007775.
> 
> v2: Cc'ing Mika Westerberg.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13760
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14147
> Cc: Mika Westerberg <mika.westerberg@linux.intel.com>

Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>
