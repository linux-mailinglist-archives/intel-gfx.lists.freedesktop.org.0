Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE48B84575
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 13:26:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5105310E716;
	Thu, 18 Sep 2025 11:26:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mvdiFFdr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C764810E715;
 Thu, 18 Sep 2025 11:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758194808; x=1789730808;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=o8/3v/OryEO1CFzHyIf7ErfcdHAggy6PnLSqaKpd1II=;
 b=mvdiFFdrjbzM1tnhCfdZ58yIMDexypLar1PYwdhPe7xykXWizVKNPwZ3
 oJ6+/oWbPIf6NErAQ5aHNWQ1Xc7Lubfd1qrVRkAca42kqbFbnosal+du/
 LbrSdF9/TkrwCO4RNR5JLxYpl+YlOunuxOqkXZDBhn4XE7ClAexbgyg8G
 N+2wxJtw7+go6Mk+rMiWUNR2wC6oUvV6EmOqgOSm+DIocBrEEnWFruUK3
 GfTDm2zN+yGVyAmYOQ/5MDycbS034pPWgiLWZNoJ2hKLNaI9U4LFBNHfE
 TNT/esiljlF2KOc2oGD7v8MKsm4aLEN6giqvbrHf9+9Uh/YzJ7FSpZ6Ej w==;
X-CSE-ConnectionGUID: dGfPUd/nQRmOqmEiWGVPBA==
X-CSE-MsgGUID: LkGqaH6+Tv+l1R7ipSR/eQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71151401"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71151401"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 04:26:48 -0700
X-CSE-ConnectionGUID: /SyToHr5RheHXKyROusJGw==
X-CSE-MsgGUID: Mcj4gTFAR2S+5Gv6ur5lVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="179791269"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 04:26:47 -0700
Date: Thu, 18 Sep 2025 13:26:44 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com, michal.grzelak@intel.com
Subject: Re: [PATCH v2 12/15] drm/i915: remove intel_update_czclk() as
 unnecessary
In-Reply-To: <3f90b5e67258f485db09b6f48381682cbd96153f.1757688216.git.jani.nikula@intel.com>
Message-ID: <bb5371ec-c63a-69ec-06ef-80ceb0660673@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
 <3f90b5e67258f485db09b6f48381682cbd96153f.1757688216.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1391312407-1758194808=:965976"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1391312407-1758194808=:965976
Content-Type: text/plain; format=flowed; charset=ISO-8859-2
Content-Transfer-Encoding: 8BIT

On Fri, 12 Sep 2025, Jani Nikula wrote:
> With vlv_clock_get_czclk() caching the result on first use, we no longer
> need a separate initializer. Remove intel_update_czclk() as
> unnecessary. Log the CZCLK in vlv_clock_get_czclk() instead.
>
> v2: Rebase
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1391312407-1758194808=:965976--
