Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E68712AF83
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 00:05:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7CC89D66;
	Thu, 26 Dec 2019 23:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A260B89D4F
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2019 23:05:43 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Dec 2019 15:05:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,360,1571727600"; d="scan'208";a="392459678"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 26 Dec 2019 15:05:41 -0800
Date: Thu, 26 Dec 2019 15:05:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191226230541.GI2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191224231521.3430660-1-matthew.d.roper@intel.com>
 <20191226222349.pyo7i3gcx46kbr3q@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191226222349.pyo7i3gcx46kbr3q@ldmartin-desk1>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Assume future platforms will
 inherit TGL's SFC capability
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 26, 2019 at 02:23:49PM -0800, Lucas De Marchi wrote:
> On Tue, Dec 24, 2019 at 03:15:21PM -0800, Matt Roper wrote:
> > Our usual i915 convention is to assume that future platforms will follow
> > the same behavior as the latest platform of today.  The VDBOX/SFC
> > capabilities described here don't seem like something that should be
> > specific to TGL, so let's future-proof by making the test apply to all
> > gen12+ platforms.
> > 
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> > drivers/gpu/drm/i915/intel_device_info.c | 2 +-
> > 1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index 1acb5db77431..bb709a08bd3c 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -1093,7 +1093,7 @@ void intel_device_info_init_mmio(struct drm_i915_private *dev_priv)
> > 		 * hooked up to an SFC (Scaler & Format Converter) unit.
> > 		 * In TGL each VDBOX has access to an SFC.
> > 		 */
> > -		if (IS_TIGERLAKE(dev_priv) || logical_vdbox++ % 2 == 0)
> > +		if (INTEL_GEN(dev_priv) >= 12 || logical_vdbox++ % 2 == 0)
> > 			RUNTIME_INFO(dev_priv)->vdbox_sfc_access |= BIT(i);
> 
> but why are we even doing this instead of initiliazing them at compile
> time on the device_info? If it's fused off, then whatever is set in
> vdbox_sfc_access bit shouldn't matter... or if the code making use of
> this doesn't check for engine availability, then this part of the
> function could just disable the bit of whatever is fused off, regardless
> if it's ice lake, tiger lake or whatever.

I'm not sure; it looks like among other things we send this bitmask
directly to the GuC, so I'm not really comfortable making the assumption
that all users of the mask will pay attention to whether the engine is
fused off or not, even if that turns out to be true for the i915 usage.

I could switch this to being initialized statically and then modified
here if an engine is fused off.  In that case should this move out of
RUNTIME_INFO() and back to INTEL_INFO()?  Honestly I've never really
understood why we have those separated given that we still ignore the
const and modify INTEL_INFO at runtime in several places.


Matt

> 
> Lucas De Marchi
> 
> 
> > 	}
> > 	DRM_DEBUG_DRIVER("vdbox enable: %04x, instances: %04lx\n",
> > -- 
> > 2.23.0
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
