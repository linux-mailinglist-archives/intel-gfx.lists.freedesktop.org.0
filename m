Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A08894FF6B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 10:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21E8E10E059;
	Tue, 13 Aug 2024 08:13:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XyqQ3b8t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C677A10E059
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 08:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723536819; x=1755072819;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2l5SypcvxK90eR4Yl0jBY82EhkRvpeycd1PlXpctkqQ=;
 b=XyqQ3b8tQRFmsgA8J70LiNz4T+WbtEtTb1GztkcH/Hi0UO1JJXJdaPXV
 +/50q3Prf+yRluLy5aehBuU26VKIiQxeHYUAemYeiOwlWO9aGsxkDQeWA
 /49BeydqaBV80i82hr1sY6AMrl8vdB7ehneB6IL2o4+9me7C7/FponGRg
 dXHVtOQFq4VGZvGizxcPEro0tBV/85FPZRIOJ4qiKyN93H/wR6txeaHb5
 Jb4sSoSjjDPm7/O8MKN7CbWwE7FiLav/buAb02FPy00AXJB1wFdnB2IGr
 5xCC39EB8s6C2K+vwm7dO00v9trkiXK2wJ35wV4MN7ITGxMFcK1r/z2Fv A==;
X-CSE-ConnectionGUID: 04qGa9PHQLy9FhoYieM6tA==
X-CSE-MsgGUID: lE1YJ1XiTz+ElVxsgGXxCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21552543"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="21552543"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 01:13:39 -0700
X-CSE-ConnectionGUID: uuH3eTsJQ4uLCUeQBCTT6Q==
X-CSE-MsgGUID: YWNkml5CTKeOZPwKo4qpXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="58518060"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 01:13:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915: use pdev_to_i915() instead of
 pci_get_drvdata() directly
In-Reply-To: <20240812103415.1540096-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240812103415.1540096-1-jani.nikula@intel.com>
Date: Tue, 13 Aug 2024 11:13:34 +0300
Message-ID: <875xs42635.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 12 Aug 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> We have a helper for converting pci device to i915 device, use it.
>
> v2: Also convert i915_pci_probe() (Gustavo)
>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Pushed to din, thanks for the reviews.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/i915_pci.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index ce4dfd65fafa..94c89ca2ef30 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -880,7 +880,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>  {
>  	struct drm_i915_private *i915;
>  
> -	i915 = pci_get_drvdata(pdev);
> +	i915 = pdev_to_i915(pdev);
>  	if (!i915) /* driver load aborted, nothing to cleanup */
>  		return;
>  
> @@ -1003,7 +1003,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	if (err)
>  		return err;
>  
> -	if (i915_inject_probe_failure(pci_get_drvdata(pdev))) {
> +	if (i915_inject_probe_failure(pdev_to_i915(pdev))) {
>  		i915_pci_remove(pdev);
>  		return -ENODEV;
>  	}
> @@ -1025,7 +1025,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  static void i915_pci_shutdown(struct pci_dev *pdev)
>  {
> -	struct drm_i915_private *i915 = pci_get_drvdata(pdev);
> +	struct drm_i915_private *i915 = pdev_to_i915(pdev);
>  
>  	i915_driver_shutdown(i915);
>  }

-- 
Jani Nikula, Intel
