Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D317977B97
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 10:51:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35C0010ECC6;
	Fri, 13 Sep 2024 08:51:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J4qPj6Hu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FCBD10ECC6
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 08:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726217490; x=1757753490;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Kuou1UDIR8sRCsdCi3Dz03oGqiLyO92eLFhY9tNaFRY=;
 b=J4qPj6Hu7vHii1nUYGAicX76IIfXxL7yzuvaUusqEXP2fd/iHH7O0lfl
 2p30b/999NzCgrySi2BjZ2NPxSGfMorZZIu+B3xd2XxjkFBJC7SF+KFTd
 h6zOCwCQ3FffakwZrQbgL0kETPsSa8mnQKsg+s28lneHFVUtaY6TCmBZG
 JSG28UoNugS2Wdz8Zsb7QOmYpEPlY+K/WVxMKT82Xyfh0funCVppFNXml
 +wi49CChUlujpAFswBhwIn8pCvafjWjwrZVYux6S+XYeeQTwcq29FyrxB
 mGg+iTBlJWoD9fObreUB0i2QZEFBIjcxlS6gQrl0bUjFaPNay5w5A87ID g==;
X-CSE-ConnectionGUID: 0o+mPGEVQ36TXauPZVgIMw==
X-CSE-MsgGUID: JSFDG4u0S4Sui7r+75tr4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="36488157"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="36488157"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 01:51:29 -0700
X-CSE-ConnectionGUID: pp7l4qToQl+QtMddyvZaIw==
X-CSE-MsgGUID: hIeNoAJUQgq30dUhb+FB9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="72790718"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 01:51:26 -0700
Date: Fri, 13 Sep 2024 11:51:22 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: Riana Tauro <riana.tauro@intel.com>, andi.shyti@linux.intel.com
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, linux@roeck-us.net,
 andriy.shevchenko@linux.intel.com, intel-gfx@lists.freedesktop.org,
 linux-hwmon@vger.kernel.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, ashutosh.dixit@intel.com, karthik.poosa@intel.com
Subject: Re: [PATCH v3] drm/i915/hwmon: expose package temperature
Message-ID: <ZuP9Cvd_LfJS_Yir@black.fi.intel.com>
References: <20240910105242.3357276-1-raag.jadav@intel.com>
 <b0eb87b5-e42d-4ab0-9d48-7ca07ef80708@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b0eb87b5-e42d-4ab0-9d48-7ca07ef80708@intel.com>
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

On Fri, Sep 13, 2024 at 11:14:22AM +0530, Riana Tauro wrote:
> On 9/10/2024 4:22 PM, Raag Jadav wrote:
> > Add hwmon support for temp1_input attribute, which will expose package
> > temperature in millidegree Celsius. With this in place we can monitor
> > package temperature using lm-sensors tool.
> > 
> > $ sensors
> > i915-pci-0300
> > Adapter: PCI adapter
> > in0:         990.00 mV
> > fan1:        1260 RPM
> > temp1:        +45.0°C
> > power1:           N/A  (max =  35.00 W)
> > energy1:      12.62 kJ
> > 
> > v2: Use switch case (Anshuman)
> > v3: Comment adjustment (Riana)
> > 
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
> > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Looks good to me
> Reviewed-by: Riana Tauro <riana.tauro@intel.com>

Thank you :)

Andi, can you pick this one up? Anshuman's machine is down.

Raag
