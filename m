Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 428D79ADE58
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 09:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 312D410E8CA;
	Thu, 24 Oct 2024 07:59:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kfkgpipo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64AD210E8AE;
 Thu, 24 Oct 2024 07:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729756744; x=1761292744;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=G5tfKWi77QuzGi68lJV0Ha1bzx5oG6W+q4fP/Yv3l0w=;
 b=Kfkgpipo51IW74smhz37Fu5mBYDPRdM8svaHM+vk4bR2a11OwnXg1u1u
 t78jULadcZlLo/XFsthFcN9M9JOifY6YUwfnXfSL+DCyed6qHdJI6XxxL
 xfP3PUDSdi+xiJsm6VSatsm9of5do3AETYLiVWXmUYA4t5a3iDIpdB0Ay
 P6DH2WhdwNTLHT9DskDoxcyJXUuy30hQ2czG2xPz+JDxE6mnNShQOSEFP
 EldL75Hj2o2MO9HUntPxxk/DBspgN7wgJkjLmozhSNRKHtl0iFZyK8nQc
 GE9WtP91vh2ISIP0mEu4aOXYJcKNdYYxz82D0/B0BWpqIm37Z9GAz5bE1 g==;
X-CSE-ConnectionGUID: jxXyf1X6SKyWw5dpJiGo2A==
X-CSE-MsgGUID: dAgOsZddSpepaTXRlGwQ0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="40764480"
X-IronPort-AV: E=Sophos;i="6.11,228,1725346800"; d="scan'208";a="40764480"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 00:59:04 -0700
X-CSE-ConnectionGUID: Y6xZGPyNQX629cWQvdfMqg==
X-CSE-MsgGUID: mmAUx8/FSVCW09dG+yw3hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="85300744"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.151])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 00:59:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Ghimiray, Himal
 Prasad" <himal.prasad.ghimiray@intel.com>
Subject: RE: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
In-Reply-To: <SN7PR11MB6750E049267C185625EEC58DE34C2@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <20241022072920.102033-1-suraj.kandpal@intel.com>
 <877ca0y3z9.fsf@intel.com>
 <SN7PR11MB6750E049267C185625EEC58DE34C2@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Thu, 24 Oct 2024 10:58:58 +0300
Message-ID: <87ldyeszi5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 22 Oct 2024, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Tuesday, October 22, 2024 1:17 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.org;
>> intel-gfx@lists.freedesktop.org
>> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Nautiyal, Ankit K
>> <ankit.k.nautiyal@intel.com>; Ghimiray, Himal Prasad
>> <himal.prasad.ghimiray@intel.com>
>> Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
>> 
>> On Tue, 22 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > Add check to remove HDCP2 compatibility from BMG as it does not have
>> > GSC which ends up causing warning when we try to get reference of GSC
>> > FW.
>> >
>> > Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs
>> > requirement")
>> > Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> > Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
>> >  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 4 +++-
>> >  2 files changed, 5 insertions(+), 2 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> > index 55965844d829..2c1d0ee8cec2 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
>> > @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
>> >
>> >  bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
>> > -	return DISPLAY_VER(display) >= 14;
>> > +	return DISPLAY_VER(display) >= 14 &&
>> > +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>> >  }
>> >
>> >  bool intel_hdcp_gsc_check_status(struct intel_display *display) diff
>> > --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> > b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> > index 231677129a35..efa3441c249c 100644
>> > --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> > +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>> > @@ -8,6 +8,7 @@
>> >  #include <linux/delay.h>
>> >
>> >  #include "abi/gsc_command_header_abi.h"
>> > +#include "i915_drv.h"
>> 
>> Hrmh, xe code should not include i915_drv.h.
>
> The issue is without this IP_VER used below ends up throwing an error

Yeah, we'll need to fix that.

Ack as a temporary measure, but please follow through with Matt's review
comments before merging.

BR,
Jani.


>
> Regards,
> Suraj Kandpal
>> 
>> >  #include "intel_hdcp_gsc.h"
>> >  #include "intel_hdcp_gsc_message.h"
>> >  #include "xe_bo.h"
>> > @@ -32,7 +33,8 @@ struct intel_hdcp_gsc_message {
>> >
>> >  bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
>> > -	return DISPLAY_VER(display) >= 14;
>> > +	return DISPLAY_VER(display) >= 14 &&
>> > +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>> >  }
>> >
>> >  bool intel_hdcp_gsc_check_status(struct intel_display *display)
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
