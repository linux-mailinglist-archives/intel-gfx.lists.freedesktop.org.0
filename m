Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 053D78A86D8
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 17:01:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B4161135F5;
	Wed, 17 Apr 2024 15:01:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dDF/8mVt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9413B11243C;
 Wed, 17 Apr 2024 15:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713366065; x=1744902065;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=2XfitDFi8joNtBN6v5pf1qqwQN4BZHQIVg7OHTwoRTc=;
 b=dDF/8mVtq6WDrfeC7P8Gmei8ZIlsuy9UY1ZwXgi4OT+yUvip8M2dA+hL
 U1P8dohaRk9cKjGAtktqb+tZeJF7GpnUXljJh6G20nNVAyuxlj1OYD9Bo
 6BkgBvudtHIFH1V4LueRgFggM7egPZuYazxTihf+JN36lgb2zFi6t1fOF
 LeUGL2CJJKVYx2eAV/qcNCl7E5YmTenWrTM9ZRim75Yr3T6hUzxiYLykY
 bsEOty2F7RhoktyPILd6iPZGySPDKnl5Kw/OaRWC9d+214UEZtK4MSqgv
 NegCwa4OrEFNPyhCEc1+z2uM6AfDl40Fxh2BxKTwKMuUIvoSLEHHoYsC2 Q==;
X-CSE-ConnectionGUID: V8v0UkllTOKtt1PBn4jyvA==
X-CSE-MsgGUID: 3TC8w+BORy+P7T+xXjBIjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="12701334"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="12701334"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 08:01:04 -0700
X-CSE-ConnectionGUID: 3hSmhStwTcKRyGUb6jUo5Q==
X-CSE-MsgGUID: lIQ6eIHtQPC39Z0nke0VeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="23244226"
Received: from orsosgc001.jf.intel.com (HELO orsosgc001.intel.com)
 ([10.165.21.138])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 08:01:05 -0700
Date: Wed, 17 Apr 2024 08:01:04 -0700
Message-ID: <85bk68c9u7.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: <intel-gfx@lists.freedesktop.org>,	Badal Nilawar
 <badal.nilawar@intel.com>,	Ville =?ISO-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>,	Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "Jani\ Nikula" <jani.nikula@linux.intel.com>,<linux-hwmon@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH v4] drm/i915/hwmon: Get rid of devm
In-Reply-To: <Zh-IQENH0hHokBbv@ashyti-mobl2.lan>
References: <20240417051642.788740-1-ashutosh.dixit@intel.com>
 <Zh-IQENH0hHokBbv@ashyti-mobl2.lan>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-redhat-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
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

On Wed, 17 Apr 2024 01:28:48 -0700, Andi Shyti wrote:
>

Hi Andi,

> > @@ -839,16 +837,38 @@ void i915_hwmon_register(struct drm_i915_private *i915)
> >		if (!hwm_gt_is_visible(ddat_gt, hwmon_energy, hwmon_energy_input, 0))
> >			continue;
> >
> > -		hwmon_dev = devm_hwmon_device_register_with_info(dev, ddat_gt->name,
> > -								 ddat_gt,
> > -								 &hwm_gt_chip_info,
> > -								 NULL);
> > -		if (!IS_ERR(hwmon_dev))
> > -			ddat_gt->hwmon_dev = hwmon_dev;
> > +		hwmon_dev = hwmon_device_register_with_info(dev, ddat_gt->name,
> > +							    ddat_gt,
> > +							    &hwm_gt_chip_info,
> > +							    NULL);
> > +		if (IS_ERR(hwmon_dev))
> > +			goto err;
>
> here the logic is changing, though. Before we were not leaving if
> hwmon_device_register_with_info() was returning error.
>
> Is this wanted? And why isn't it described in the log?

Not sure if the previous logic was intentional or not, anyway I have
restored it in v5 (where I once again forgot to add "PATCH v5" to the
Subject but v5 is there in the version log :/).

Thanks.
--
Ashutosh
