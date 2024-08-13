Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6F19505E0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 15:07:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF34D10E342;
	Tue, 13 Aug 2024 13:07:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqpTOnQb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8932110E33F;
 Tue, 13 Aug 2024 13:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723554444; x=1755090444;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1SsjcRHn8DjWskGdveSNsQlKaaFlgtYez08ulurzBwM=;
 b=GqpTOnQbFx6/+iJMqz/O95uWKXxvBV66DD6oM3UQ93tFORm0gEn1BdFF
 RRseEECw1MuoLEeQ01wLtBsKjLWi943DvdkJt/VkdEyakIHFoPI4s+7TU
 sjUREVO27mAt3eM6WaI6swGkc+nYg/4FTYnncYhVioqfAHvnw30YLpwLy
 oU3FD7hHmlMzulRWHT3e0FKnSTwUEcFQNwgCZ7QwKQIMsvr4sj5/+Vc2B
 fpWfy0aD5o960UedoA2JyiwLl3TLSLbDOSCrXfa1SWcDmGMaFx5Hq09n9
 uJwQJhq2zXxD1tlEoDFbE+P1SiW8N30V4ZKzgcnGCBknLFAUV4Hxyb/+2 Q==;
X-CSE-ConnectionGUID: zn+/6twZSiKUAquhIrFFpQ==
X-CSE-MsgGUID: 8Wn4XluoRsOUzXhnDiyfRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11163"; a="21576991"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="21576991"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 06:07:23 -0700
X-CSE-ConnectionGUID: U9SN55OaQxG0TKcDYafbeQ==
X-CSE-MsgGUID: yVuekMmaQvydIIHB4aIdVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="63604817"
Received: from smile.fi.intel.com ([10.237.72.54])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2024 06:07:19 -0700
Received: from andy by smile.fi.intel.com with local (Exim 4.98)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1sdrF5-0000000Ejnv-3Bk5; Tue, 13 Aug 2024 16:07:15 +0300
Date: Tue, 13 Aug 2024 16:07:15 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com,
 daniel@ffwll.ch, linux@roeck-us.net, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com,
 riana.tauro@intel.com, ashutosh.dixit@intel.com, karthik.poosa@intel.com
Subject: Re: [PATCH v4] drm/i915/hwmon: expose fan speed
Message-ID: <Zrtag2qgxsCNiocc@smile.fi.intel.com>
References: <20240809061525.1368153-1-raag.jadav@intel.com>
 <ZrYB-GI9L2RSc2bt@smile.fi.intel.com>
 <ZrtCIU8On4ZKILmh@black.fi.intel.com>
 <ZrtHz1aY_Lf_XIsL@smile.fi.intel.com>
 <ZrtXReujITKx4rHH@black.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZrtXReujITKx4rHH@black.fi.intel.com>
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

On Tue, Aug 13, 2024 at 03:53:25PM +0300, Raag Jadav wrote:
> On Tue, Aug 13, 2024 at 02:47:27PM +0300, Andy Shevchenko wrote:
> > On Tue, Aug 13, 2024 at 02:23:13PM +0300, Raag Jadav wrote:
> > > On Fri, Aug 09, 2024 at 02:48:08PM +0300, Andy Shevchenko wrote:
> > > > On Fri, Aug 09, 2024 at 11:45:25AM +0530, Raag Jadav wrote:

...

> > > > > +	/*
> > > > > +	 * HW register value is accumulated count of pulses from
> > > > > +	 * PWM fan with the scale of 2 pulses per rotation.
> > > > > +	 */
> > > > > +	rotations = pulses >> 1;
> > > > 
> > > > In accordance with the comment the
> > > > 
> > > > 	rotations = pulses / 2;
> > > > 
> > > > looks better.
> > > 
> > > This change seems to cause a build error in v5.
> > > Something to do with __udivdi3 on i386.
> > 
> > No, it's not this change.
> > Please, read report carefully.
> 
> CI seems to point to DIV_ROUND_UP(), but it's been there since v1.
> So not sure if I entirely understand.

Yes, that's the issue. You always can reproduce on your side. LKP sent you
comprehensive information about their setup.

-- 
With Best Regards,
Andy Shevchenko


