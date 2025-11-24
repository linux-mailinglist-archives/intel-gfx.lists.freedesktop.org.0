Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B2AC827C3
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 22:09:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8968710E25F;
	Mon, 24 Nov 2025 21:09:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H4mNNwPj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E02910E042;
 Mon, 24 Nov 2025 21:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764018566; x=1795554566;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XDicwOE9ADTo2fIIuKfziUK2O34jEaXh3sJoek1yggM=;
 b=H4mNNwPjVUGrH564ei3LK+nE+K8e/8wLK2IbFmzCwAEA97qbVHTrDZv0
 rnLkKZIGFoWCl1T0PXZm2HXjKa2SrWOYz2lgpabtue2VyY1njmvU9y7CZ
 oSbtrndxqKu35SYPOLnfG6G/4sXoHGTF2Mm0epEwZ25tvIr9VmOk1Y/Pm
 6v3UdqbkxbqXTtVSrqo/XdoR9PGzb36/okVXpOFOKToiCVurIL51NfANO
 J1arEExnxedi1e3QAkYuLyk4eAFW7o9PD71Z5SLHI8mHoQlDHHS7/y6AS
 EpPl6eycXwLskZXrtwDiqGAdA6lPpp4J/Q48U3t3jG1hr6AVIvjIP3j9Z w==;
X-CSE-ConnectionGUID: qOv7GucWTxWpEF9uVOVYYg==
X-CSE-MsgGUID: Uqg0atuRTM+dNwrQXF1yHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="65032145"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="65032145"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 13:09:25 -0800
X-CSE-ConnectionGUID: FhJG5L4sQG2HANurK/oL8Q==
X-CSE-MsgGUID: GiwhY4YBS9WTSTz35HeZHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="191705903"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO localhost)
 ([10.124.222.165])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 13:09:22 -0800
Date: Mon, 24 Nov 2025 23:07:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Check number of scalers for casf
Message-ID: <aSTJIoHSCRuomRFk@intel.com>
References: <20251124084629.3322714-1-nemesa.garg@intel.com>
 <313381a1-6195-4ea5-a25c-0f34d6a57bfb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <313381a1-6195-4ea5-a25c-0f34d6a57bfb@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Nov 24, 2025 at 04:39:43PM +0530, Nautiyal, Ankit K wrote:
> 
> On 11/24/2025 2:16 PM, Nemesa Garg wrote:
> > Before exposing the property check if the number of scalers
> > is 2 as casf needs second scaler. If not then dont expose the
> > property.
> 
> 
> We are not checking if num_scalers == 2. So the commit message is a bit 
> misleading.
> 
> Need bit more context:
> 
> CASF requires the second scaler for sharpness. Skip creating the 
> 'SHARPNESS_STRENGTH' property when num_scalers <= 1.

Does it really need two scalers always, or just when the first scaler
is doing actual scaling/etc?

> 
> Also, it would be good to align the commit message with this explanation.
> 
> 
> Regards,
> 
> Ankit
> 
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_crtc.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index 153ff4b4b52c..963e6c7d75b8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -395,7 +395,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
> >   
> >   	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
> >   
> > -	if (HAS_CASF(display))
> > +	if (HAS_CASF(display) && crtc->num_scalers > 1)
> >   		drm_crtc_create_sharpness_strength_property(&crtc->base);
> >   
> >   	return 0;

-- 
Ville Syrjälä
Intel
