Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2869556F6
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2024 11:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D40F10E002;
	Sat, 17 Aug 2024 09:49:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HW1WUUPM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 761CB10E002
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2024 09:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723888176; x=1755424176;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vhzCE5e+EDM95wFzYA5dmNWmHXO6MAlynZe4Iv48IA4=;
 b=HW1WUUPMONv2XxCsfPk1eZU9CkhfLGVSyqqXUSJtK23y7ttRfkqJl6Vh
 06+Vx6gTpRvFVE06BqwGLR0Zbzv/7knW7Yp1jcqpawlIaY966xbrAdCzf
 Wuad7bJECqlu8reqkwghOlN7ojZZuYl/0U3MFbLykNDogjxB+1qsED9G8
 bSHLCsnpfjAbyI6qFhpU8cnETZc4KdxbaTpmVi5KfD9A9aJNU7mT0oSDI
 0DP4L+MS7Y6Du2kM+8hNtAm0kDOiW9aCZ/H88QjJDlgVUwW2Hetf2vdZs
 M/KDsIKWSpycONfkVlCbvAP9NH7dGuTBzALmPUVIgEMbFp5sinxxNwebK w==;
X-CSE-ConnectionGUID: BMsRv3NeTIWTHGVNDM9KqA==
X-CSE-MsgGUID: okg687bjQ9+FVuvVFKpOhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11166"; a="33563718"
X-IronPort-AV: E=Sophos;i="6.10,154,1719903600"; d="scan'208";a="33563718"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2024 02:49:35 -0700
X-CSE-ConnectionGUID: jY8fPxtgRLi4snQrsDWoew==
X-CSE-MsgGUID: A2KPo9IZRMOwQcUIn8/cYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,154,1719903600"; d="scan'208";a="90671611"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.254])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2024 02:49:32 -0700
Date: Sat, 17 Aug 2024 11:49:28 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/gt: remove stray declaration of
 intel_gt_release_all()
Message-ID: <ZsByKDfHpMDGxcw0@ashyti-mobl2.lan>
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

merged to drm-intel-gt-next.

Thanks,
Andi
