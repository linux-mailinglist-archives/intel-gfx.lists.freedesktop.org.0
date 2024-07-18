Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A88A934B8E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 12:15:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7128410E051;
	Thu, 18 Jul 2024 10:15:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jCo2RijT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EE6E10E051
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 10:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721297698; x=1752833698;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bQbUWtF/r3gOHwjsrDQ7JZVDPwi2/WT7MOxvHFkQR58=;
 b=jCo2RijTKmdjqoV0YqCjvkCWCzNEe3t1v/rQANBYao8F/LLLJl8BDnXE
 P6YZDLYm7yiHtSSTzIeuuFbPdGIBg1BblNHuvwAE/CyOxSvB93MzsIo9E
 P8TAgNoh/cKYIQ0iIP13OG5X7P4aIeDxJitfAZon1uxKY5+mTbhzfoLW3
 uiSgUOYow3xE0C6ZWHVGXyT8bUBT/W5siagNN4fYG+5szJ/vFXlbd8x7a
 rWQ2DM5yc1kpiMogNFQT91XsTJSShisAUa4tynlkk2LMF9hg5SSpiII4/
 m1WpaIGgf+X12GkiS/dkDcKbhbk8eY5lgDNmM9F2ffAjV/23X43xch5mw w==;
X-CSE-ConnectionGUID: uQqnhSuvRGKF7moa0As85w==
X-CSE-MsgGUID: /+dGJ2o4T0urlKmPApitCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="19034445"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="19034445"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 03:14:58 -0700
X-CSE-ConnectionGUID: J0WNjHyISI+QfJcazLwItg==
X-CSE-MsgGUID: KCHwP4DLToiXSuvGcrtJ5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="81741957"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.52])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 03:14:56 -0700
Date: Thu, 18 Jul 2024 12:14:53 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 dan.carpenter@linaro.org, chris.p.wilson@linux.intel.com
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
Message-ID: <ZpjrHd1EyI9-Xa50@ashyti-mobl2.lan>
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

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
