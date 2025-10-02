Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD31BB3D1E
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Oct 2025 13:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C2810E7C4;
	Thu,  2 Oct 2025 11:51:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aKKbNZks";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1839110E7C4;
 Thu,  2 Oct 2025 11:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759405867; x=1790941867;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=ddAUD2a45HoA1NUO5Nt8Me4ZGB37XbYtAGN4VasaP2s=;
 b=aKKbNZksD9b68wpyq/VQ44mMYC8Ckll7TQ7vgWQovRSKBCkKJcJQ/imQ
 q+Q0mqQgIOrAjBF/aKz+m++meEfK9zIrQClf2loxx7T9b+/lGSyIDQDSq
 JRE8UGu8PCFEGZXU9gsNie/qViE/B6n80xhYg6iigOAUUNiBnPBIY/ExC
 zqt/svqALXGQeG7GK6dZoKJ6jFwJvClKn3vme9WacoTsfHfLtg4x40uEL
 +EOWDRHIo0PwQuk9eCIkKgm338iPAef/WFfA1DBNmmPYJv66Ds7S4Brs+
 /zAzRMBn+yyFWAsc7GcKKl/D3jNF3yLd2Ul3S9pAOB1NajxQ3oQMvFYCO g==;
X-CSE-ConnectionGUID: l8092ztnQc2mHMXx6lbijA==
X-CSE-MsgGUID: M2p5r3mwQcKzZuUz5imPHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72793749"
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="72793749"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 04:51:07 -0700
X-CSE-ConnectionGUID: 3gEQizDYS6upiR0UewUMmQ==
X-CSE-MsgGUID: Edfb3urpQOiWx6pM6YC68w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,309,1751266800"; d="scan'208";a="216142183"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2025 04:51:04 -0700
Date: Thu, 2 Oct 2025 13:51:02 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Jocelyn Falempe <jfalempe@redhat.com>, 
 Maarten Lankhorst <dev@lankhorst.se>, 
 =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>, 
 =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/panic: fix panic structure allocation memory leak
In-Reply-To: <20251002101756.2700320-1-jani.nikula@intel.com>
Message-ID: <3198b351-b780-e068-e8b3-39608ebc597b@intel.com>
References: <20251002101756.2700320-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
 BOUNDARY="8323329-1820180189-1759403194=:1357965"
Content-ID: <c74f720c-5848-319d-7f25-0860a6073823@intel.com>
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

--8323329-1820180189-1759403194=:1357965
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <bfa043ed-1b14-4996-afd6-9a108907a851@intel.com>

On Thu, 2 Oct 2025, Jani Nikula wrote:
> Separating the panic allocation from framebuffer allocation in commit
> 729c5f7ffa83 ("drm/{i915,xe}/panic: move framebuffer allocation where it
> belongs") failed to deallocate the panic structure anywhere.
>
> The fix is two-fold. First, free the panic structure in
> intel_user_framebuffer_destroy() in the general case. Second, move the
> panic allocation later to intel_framebuffer_init() to not leak the panic
> structure in error paths (if any, now or later) between
> intel_framebuffer_alloc() and intel_framebuffer_init().
>
> Fixes: 729c5f7ffa83 ("drm/{i915,xe}/panic: move framebuffer allocation where it belongs")
> Cc: Jocelyn Falempe <jfalempe@redhat.com>
> Cc: Maarten Lankhorst <dev@lankhorst.se>
> Reported-by: Micha³ Grzelak <michal.grzelak@intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Have run a bunch of tests on affected platform, which previously caused
the issue to surface. With the patch applied no memleaks are reported.

Tested-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³
--8323329-1820180189-1759403194=:1357965--
