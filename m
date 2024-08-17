Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B60779556B1
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2024 11:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C318310E07C;
	Sat, 17 Aug 2024 09:19:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MKBmX+IN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6004210E07C
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2024 09:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723886373; x=1755422373;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=aOORlu9zCBfZxRLkn537Jd2i5ZfE8fQJiGTrbZ0/Wvs=;
 b=MKBmX+INGAL7FUztmqw375m1Mx7/NAgsMamFVPtb/jTcZ9LEoFPh+tyS
 341CCgMoXOp+Z2MTlWAuVWgD5VL08j54AvR/rjX7Pe8wJSyc3yLHEKnYk
 78CIefOWQu7/w8/D4xzjWff0eul1Nh6sYwZSL3FcNbJCNuExQDx1uKc55
 N0l87McMPl6lzRDz3M5bUUFGZcG4dddr60qUp+bJWP6trSxHaVlne2RpV
 tfgC8moiRu6SEhIvJYVqRDs9c6zYsaobXwjGXiR0SU3Bu/IcgvO9f7Bd1
 Ow50fN18Nks7CtSWhofAuqBjS9XZYn2Ox0n+YRO6IUbbMFm+EHDDbuhd2 A==;
X-CSE-ConnectionGUID: kcVrl/3SSi2jNIWMHdjMrg==
X-CSE-MsgGUID: bvM5d84WThOq7qxoWMUY/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11166"; a="32810745"
X-IronPort-AV: E=Sophos;i="6.10,154,1719903600"; d="scan'208";a="32810745"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2024 02:19:33 -0700
X-CSE-ConnectionGUID: KRR3DxJ+Sb6cnr6VcUawvQ==
X-CSE-MsgGUID: fWozcFbnQ/Gi0aJoaAD/yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,154,1719903600"; d="scan'208";a="64560988"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.254])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2024 02:19:31 -0700
Date: Sat, 17 Aug 2024 11:19:24 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/gt: remove stray declaration of
 intel_gt_release_all()
Message-ID: <ZsBrHNarP49KHndS@ashyti-mobl2.lan>
References: <20240813140618.387553-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240813140618.387553-1-luciano.coelho@intel.com>
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

Hi Luca,

On Tue, Aug 13, 2024 at 05:06:18PM +0300, Luca Coelho wrote:
> When intel_gt_release_all() was removed from the code in commit
> e89950553385 ("drm/i915: do not clean GT table on error path"), its
> declaration in the header file remained.  Remove it.
> 
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
