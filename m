Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C5A94F5B6
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 19:15:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A2010E173;
	Mon, 12 Aug 2024 17:15:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kyzHME0g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B307410E173;
 Mon, 12 Aug 2024 17:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723482912; x=1755018912;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=85EmTNZE3mwQNHtikkbBULkW29VgP6uEe+G34ZE+JnM=;
 b=kyzHME0gUoK+hzRnZoGFTjVONfuspD6NYEeRA8oSdiYGFD1kxkL1cmUT
 qO7N2X0HkM9gz3eaVOlaHUmHXwsUt1rwK+WYiK5v4mxb1tzYevhSoLHol
 Hf9Vq+N53RLpcWnmyGduv2cmlITt16jqTqcrbQWtfDZmnqioOlSXPBXta
 IM2bV2Dt0ZJNVnlr3PDIEvNl1unBR4bM7kpCFVQ9xyRpwNYixxKGDjJRx
 YMwBhbQFAfoaOMtFU6Z/BxWZJscm+1a+k397iFNJRbttTA8vp4swhyeQ/
 SR3MvwGIs9ihOSoN+c4L0TsYu5uRg9mEbYZhpFMaF39FzObk1ls6quHy1 A==;
X-CSE-ConnectionGUID: Zl3jpmeDR/KctWKUjn+UMg==
X-CSE-MsgGUID: QVG5IADFT3eHuKRAOuQpJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21772897"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="21772897"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 10:15:11 -0700
X-CSE-ConnectionGUID: HAU9AteqRoeXdF5TSA6Duw==
X-CSE-MsgGUID: BUPrSdlVSk237c5aNwnLTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="95845184"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.188])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 10:15:09 -0700
Date: Mon, 12 Aug 2024 19:15:04 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Gustavo Sousa <gustavo.sousa@intel.com>, lucas.demarchi@intel.com
Subject: Re: [PATCH v2 04/10] drm/i915: use pdev_to_i915() instead of
 pci_get_drvdata() directly
Message-ID: <ZrpDGNo66y-llzxL@ashyti-mobl2.lan>
References: <cover.1723129920.git.jani.nikula@intel.com>
 <2a6172500e94055f6bf1ab288d8736a53c72cda8.1723129920.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2a6172500e94055f6bf1ab288d8736a53c72cda8.1723129920.git.jani.nikula@intel.com>
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

Hi Jani,

On Thu, Aug 08, 2024 at 06:15:49PM +0300, Jani Nikula wrote:
> We have a helper for converting pci device to i915 device, use it.
> 
> v2: Also convert i915_pci_probe() (Gustavo)
> 
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
