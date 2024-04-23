Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8C18AE02D
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 10:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62E6D113205;
	Tue, 23 Apr 2024 08:46:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N/ircH6K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F748113205
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 08:46:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713861970; x=1745397970;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XkQwK5rjDl0+jlkxTc8JYYHpOSBp8LSWsv9gC33iDxs=;
 b=N/ircH6KdNYoJUSJ131ucTOW8DLq1qVAVmRbn6UoMaRcY9d2PoxOmj39
 laD5fEZGDXBLYEDnuI7EBpT6XjC1RPS72as5dWsIGpO9Ka9VHakQqnHUw
 8WxsznO+mA6OrH/yy4hVxFzOhHoozkDuw42KcANORRqrbyMCRSTL7stCE
 IA8P9K11qll7r1+Ny2jPf7ChuuDKp/Oko55d0NzrhqXQkw9sq7+PjrI2Y
 GZ/UVIQn2vwIsQeXAq2FPBt1xJbjV2ImaTOKUpyqzx/o0WGWlwc6DKngK
 j16wTbozUo6Bro1RduGilV1bGqZsGZnV4H6x3xummFFOfSlVLgpen5UU0 Q==;
X-CSE-ConnectionGUID: RV2o48N1QBC4MIOpDS3t/w==
X-CSE-MsgGUID: 533bDm3NR8C24sQFytnYFQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="9604694"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; 
   d="scan'208";a="9604694"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 01:46:05 -0700
X-CSE-ConnectionGUID: bKHiw33PQKC4VX2MSXq2AA==
X-CSE-MsgGUID: HzwjEuajR5G4rLIiRdCV7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24364918"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Apr 2024 01:46:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Apr 2024 11:46:02 +0300
Date: Tue, 23 Apr 2024 11:46:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 09/14] drm/i915/dpio: Derive the phy from the port rather
 than pipe in encoder hooks
Message-ID: <Zid1SnDvslKvqa82@intel.com>
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
 <20240422083457.23815-10-ville.syrjala@linux.intel.com>
 <87y195u2q6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87y195u2q6.fsf@intel.com>
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

On Mon, Apr 22, 2024 at 01:10:57PM +0300, Jani Nikula wrote:
> On Mon, 22 Apr 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
> > index ffa195560d0d..68291412f4cb 100644
> > --- a/drivers/gpu/drm/i915/vlv_sideband.c
> > +++ b/drivers/gpu/drm/i915/vlv_sideband.c
> > @@ -9,7 +9,6 @@
> >  #include "vlv_sideband.h"
> >  
> >  #include "display/intel_dpio_phy.h"
> > -#include "display/intel_display_types.h"
> 
> I guess this should be done in some other patch?

I think it should have been part of
commit f70a68bc1d18 ("drm/i915: convert vlv_dpio_read()/write() from
pipe to phy")

but got missed. This patch is basically what was left from a
similar change I had in my branch. I can split this hunk out
into a separate patch.

-- 
Ville Syrjälä
Intel
