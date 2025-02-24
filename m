Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46033A41994
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 10:52:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3443410E1AA;
	Mon, 24 Feb 2025 09:52:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MEBAgj2W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A7510E1AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2025 09:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740390735; x=1771926735;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AUkRddz1/nOJ0jTk58sjf6V4NaZnfsbXeav8+/VT2gs=;
 b=MEBAgj2Wj2B72is4lHmaSvvEaULrwZhQlhvwUAvub7pEuMOZEenPrcwk
 O1Ww2LEgp9RNdXbgEzpd73L5VxGzDcPO9mcYWTWy75GJzUG/INSNS3Sts
 rHLuihNAzChkO9uk+CNODAFeuqtnkbwbmKvrPJwMQVTLjfy0j/ZIgNdFi
 fD9oQ6O8AmSqaqN164mW+MQp/NpYBas1XFEfbHDKDXE5M6aV0/Bbso/qH
 ZmG7uMXzkt6UO/IrbVm1oADvsNBzLy7HbFpmky/n3QG5RnzR6zw+ePeOi
 FoEkwc2sp4GWaqJgj4+3i8IzC52hmEmfhWAi1pox8mHDk4MTrlH/Ilhsy w==;
X-CSE-ConnectionGUID: GE/2rkMcRW2ZWM48aiwsxA==
X-CSE-MsgGUID: 5+3ahsEmRh6AZSTaKkIgFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41348997"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="41348997"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:52:14 -0800
X-CSE-ConnectionGUID: zdq3eYUBRuOst35Okj1+FA==
X-CSE-MsgGUID: 0SgOhvG5S9ysidOJ8BU9dQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116205446"
Received: from vpanait-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.159])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:52:13 -0800
Date: Mon, 24 Feb 2025 10:52:09 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 03/12] drm/i915: Use REG_BIT() & co. for ring fault
 registers
Message-ID: <Z7xBSaI43TvPxcn0@ashyti-mobl2.lan>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
 <20250211231941.22769-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250211231941.22769-4-ville.syrjala@linux.intel.com>
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

Hi Ville,

On Wed, Feb 12, 2025 at 01:19:31AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Update the ring fault registers to use the modern REG_BIT()
> stuff.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
