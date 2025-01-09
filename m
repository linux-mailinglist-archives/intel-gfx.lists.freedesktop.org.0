Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DFCA07E8A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 18:17:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A484E10EEEE;
	Thu,  9 Jan 2025 17:16:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V1y/ziK5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E60C10EEFD
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 17:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736443018; x=1767979018;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BzGVmoTAv2Buyp7sCHrplG+6/v4FXWhXPAl7FZNva00=;
 b=V1y/ziK5PG1MfTOLhZ89GmBTW97+JK5Pvwt32RMYdt8VFxbB2hcwWjqy
 dx+ijlHOTRu7LV9PALHC+dffk51WcIb3POQBQTIVdM2cS3duKYkyaP1DV
 VlqJOqJtoKeokDHyqSccUAuJJbnNMTVUyCAD0KCjzkmUx+UhE3csZM7d7
 LoL05myrwbgQ53wDuJSH4dUL6IoEtaqscTAOZc6JmqlgaxmkZKeKSbW3q
 pC8wKJBeb2/7XWM1XuBjH8Q5QdrReav7QGzP9CArVUY9w6AulWr+IMMSp
 D8XkweoPl+jhXqkoWffRIG4Akyxtf3UWl/xz2/pPgOXYzR6oT0gOvR/Nz Q==;
X-CSE-ConnectionGUID: 0WCe4Y1bQeajiQC27kfLzA==
X-CSE-MsgGUID: Jeily4W4RcuJUAQBxKMEFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36948001"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="36948001"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 09:16:57 -0800
X-CSE-ConnectionGUID: kCymrxu0R0CuOkGrmdbqyA==
X-CSE-MsgGUID: uAyKUM3bTs+QFguN6CPCoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="103663564"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Jan 2025 09:16:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jan 2025 19:16:54 +0200
Date: Thu, 9 Jan 2025 19:16:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/8] drm/i915/scaler: Extract skl_scaler_min_src_size()
Message-ID: <Z4AEhg6UPqB5ay62@intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
 <20241219130827.22830-2-ville.syrjala@linux.intel.com>
 <45b8b1dba4fdf53dcc9ca596f1baf87c51bdcb32.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <45b8b1dba4fdf53dcc9ca596f1baf87c51bdcb32.camel@coelho.fi>
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

On Fri, Dec 20, 2024 at 10:47:24AM +0200, Luca Coelho wrote:
> On Thu, 2024-12-19 at 15:08 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The SKL_MIN_*SRC_* defines just make things hard to read.
> > Get rid of them and introduce an easy to read function
> > in their place.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> 
> Looks good, but a small nitpick: maybe you want to mention in the
> commit message that you're not returning -EINVAL anymore, but using
> defaults (8x8) in the YUV with too-small-source case? Up to you.

It will still return -EINVAL for < 16x16 YUV cases.

> 
> Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
> 
> --
> Cheers,
> Luca.

-- 
Ville Syrjälä
Intel
