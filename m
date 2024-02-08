Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 916B184E9AB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 21:27:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E548110ED1E;
	Thu,  8 Feb 2024 20:27:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CN6ONRy0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1B910ED1E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 20:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707424060; x=1738960060;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/dKtrN6otsU7TUi393e23PhT+Ipr0W4erqV38D1/2Xc=;
 b=CN6ONRy0X8mhfFjnBiPNL1uq4WEzsZj7hO6Mxu+D+L04gGtiGwQXtzBM
 pBMGnOcr1ku4C5xOTf0dwdgtBwY8dxidcK5mZFZ2B17raSyybau9vgH69
 5LQG5uMUee7I+acyUyOGQmYpMMhOoMk7Vd3IVfcG1OpvlJEsBI/mmrzNA
 QBz0l6hXsw0N1vEN7sVrBHX5C1Jzs1k8vWkrF0XbI/8roZN/q/ZI7AH0H
 gwG7TRwG93UwYARlecx+Q+A94hb774xOw38GjAI4qhcj/uNC1NXv9/CuC
 VyfCRWIV+qWPMo+Cdul7j0+k7xx6TveTBTeopoykjlDlell7DNS1uExZw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1464807"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="1464807"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 12:27:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="1751792"
Received: from udig-mobl1.ger.corp.intel.com (HELO intel.com) ([10.246.32.229])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 12:27:36 -0800
Date: Thu, 8 Feb 2024 21:27:33 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] Revert "drm/i915/mtl: Update workaround 14018778641"
Message-ID: <ZcU5NduyaUx_AN0U@ashyti-mobl2.lan>
References: <20240117052042.1419544-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240117052042.1419544-1-tejas.upadhyay@intel.com>
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

Hi Tejas,

On Wed, Jan 17, 2024 at 10:50:42AM +0530, Tejas Upadhyay wrote:
> Applying WA 14018778641 only on Compute engine has impact on Chrome
> related apps. Reverting this patch and applying WA to all engines is
> helping with performance on Chrome related apps.
> 
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
