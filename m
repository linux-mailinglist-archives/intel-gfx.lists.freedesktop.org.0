Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6032153BB78
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 17:16:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F1C110F0A7;
	Thu,  2 Jun 2022 15:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A3D110E0CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 15:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654182975; x=1685718975;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=jBN4qDbnksdTVvYjo4+wYD9R/XYZvY+eJfMzlGH2ehQ=;
 b=kNAW13SKlMJueza89X5xEB8kTtzysZCbOhvO2Q7PziTyrXb5hxGRgwIw
 +dLbnbs3oiSVEl3pA+V8WWGVSfTBELTijLLX9ZHj1XbgKlryOHtfo6LGA
 Qk7GgZgTQF6dlBBMmd/8zRh6bSyOIRDbFjNR37XP75Dy9xf0n8FScQvE+
 mvTdaN6LXXFiAmMQ7rG9deB6ldkql3h3rlAZfHMlLNgnLynCWx/QB0BXg
 UsXrC4ZMbx4zK5gP3gYUo0e1RNZTGmmqC1UL/cooyiASsxw0vl3ru5O94
 tmIc2w4Hec+yD2deVDu8TgQjKEfwtsZo7+6ZdSY3fSuqOmax1hXSvnCqa w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="275987329"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="275987329"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 08:16:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="552884739"
Received: from fbackhou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 08:16:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220602141850.21301-5-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220602141850.21301-1-animesh.manna@intel.com>
 <20220602141850.21301-5-animesh.manna@intel.com>
Date: Thu, 02 Jun 2022 18:16:09 +0300
Message-ID: <877d5zp03q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 4/5] drm/i915/display: prepend connector
 name to the backlight
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

On Thu, 02 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> From: Arun R Murthy <arun.r.murthy@intel.com>
>
> With the enablement of dual eDP, there will have to exist two entries of
> backlight sysfs file. In order to avoid sysfs file name duplication, the
> file names are prepended with the connector name.

Fixed by 20f85ef89d94 ("drm/i915/backlight: use unique backlight device
names") about a year ago.

BR,
Jani.


>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 68513206a66a..211fa0f07239 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -967,6 +967,8 @@ int intel_backlight_device_register(struct intel_connector *connector)
>  		props.power = FB_BLANK_POWERDOWN;
>  
>  	name = kstrdup("intel_backlight", GFP_KERNEL);
> +	name = kasprintf(GFP_KERNEL, "%s.intel_backlight",
> +			connector->base.name);
>  	if (!name)
>  		return -ENOMEM;

-- 
Jani Nikula, Intel Open Source Graphics Center
