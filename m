Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A6192EDF2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 19:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA3FE10E2E7;
	Thu, 11 Jul 2024 17:38:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Px5+QVbx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FFD310EB2D;
 Thu, 11 Jul 2024 17:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720719519; x=1752255519;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lmSjehbQ9tci0Op9QGk2WEKBkSr6aKR40ZVr2zEDQ/g=;
 b=Px5+QVbx9AdqrZlvbN72ExR8zEp54AhmcN9m7JRpHbRhx+fcS1GUrndz
 HtY2K2TH09dnzXq0kRBNSgVywqBi9jvI43e/ADdKfjoOvNgDHd27z2p01
 J07rXzI9t1v2JtR8vKq4WhpyXBmNc0+6b2h90Mhn7c/ly4gvvFSr+OjNs
 VtXbDu8sLK53q5gbfPVA41qoaYi8hfObqVSAqCP0F7FSOPb7oulri2wYy
 9fnRH90izBDrkoC4nYgXPiYNEXaoqu6jX9RVBwQ5vM7crU//ETfXjeoam
 UogblEzKJvhbumpHmXTyx2aNP030FWPU3J+uZ1ViG6uChY3zZwYmZi4Dz w==;
X-CSE-ConnectionGUID: aUh9q6P2RQuMeiLx9qkMTg==
X-CSE-MsgGUID: bhiYPG3lQVCl4VOfpvcdew==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="18077784"
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="18077784"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 10:38:39 -0700
X-CSE-ConnectionGUID: K+ak8NZUSn6OuHqrMejOlw==
X-CSE-MsgGUID: Eme1/c2ASCGOKtnM3xgy7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="48613853"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jul 2024 10:38:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jul 2024 20:38:35 +0300
Date: Thu, 11 Jul 2024 20:38:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 vinay.belgaumkar@intel.com
Subject: Re: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Message-ID: <ZpAYm0w5DA9bfo-1@intel.com>
References: <20240711051339.3289552-1-uma.shankar@intel.com>
 <phpidsyio6aub43cbfdcll44k7rrh73chqsuktraenzx6575af@645b423aaz6q>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <phpidsyio6aub43cbfdcll44k7rrh73chqsuktraenzx6575af@645b423aaz6q>
X-Patchwork-Hint: comment
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

On Thu, Jul 11, 2024 at 11:31:54AM -0500, Lucas De Marchi wrote:
> On Thu, Jul 11, 2024 at 10:43:39AM GMT, Uma Shankar wrote:
> >As per recommendation in the workarounds:
> >WA_14021987551, Wa_16023588340:
> >
> >There is an issue with accessing Stolen memory pages due a
> >hardware limitation. Limit the usage of stolen memory for
> >fbdev for LNL+. Don't use BIOS FB from stolen on LNL+ and
> >assign the same from system memory.
> >
> >Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> >---
> > drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
> > drivers/gpu/drm/xe/display/xe_plane_initial.c | 10 ++++++++++
> > 2 files changed, 19 insertions(+), 1 deletion(-)
> >
> >diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >index 816ad13821a8..8fda8745ce0a 100644
> >--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> >@@ -37,7 +37,14 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> > 	size = PAGE_ALIGN(size);
> > 	obj = ERR_PTR(-ENODEV);
> >
> >-	if (!IS_DGFX(xe)) {
> >+	/*
> >+	 * WA_14021987551, Wa_16023588340:
> 
> not the proper way to handle WAs in xe. Please use XE_WA()
> 
> 
> >+	 * There is an issue with accessing Stolen memory pages
> >+	 * due a hardware limitation. Limit the usage of stolen
> >+	 * memory for fbdev for LNL+. Don't use BIOS FB from
> >+	 * stolen on LNL+ and assign the same from system memory
> 
> I wonder if we can't simply set to 0 the available stolen space after the
> places that really need it already had their allocation done.

FBC needs stolen.

-- 
Ville Syrjälä
Intel
