Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CB8977BA9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 10:57:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC86E10ECC7;
	Fri, 13 Sep 2024 08:57:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="AzTvWfOt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 742AA10ECC8
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 08:57:05 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 125AE5C06D1;
 Fri, 13 Sep 2024 08:57:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D727EC4CEC0;
 Fri, 13 Sep 2024 08:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1726217824;
 bh=UO8BU5DV950ZcRHsUvF7u/Vh2KxD0Tf8UirIxMolDnQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AzTvWfOtdyZi3K9Hog2aFAyab8i924Ug5+WYWiZ+rqVduunv+7QyYc/D5ZGq19Vum
 9Spj/oImZwC0BNiPfrQXowncqmpilMgYKYQtWY5j92EYgm9lpONNiiW9vwoTtz4YIR
 NXZK9ghBftqrORM5px1W3IzjyvinV+ZjcqdBfO/WUKcqQ/hK3GMIyElbqoAPjQ6/P6
 dRd7mH5Q7Rx0cD0xdPTb58Rgd+hGrcw/qOps3y8sW2CWThbmmT7lDewicNYHrEC4SZ
 dY+40YlnQyUmJYq3YcPTRwF5tm1HdkVt6Gb5yeC//dbj1CpXLDynv0bsbxJs9HzrOO
 Z/T+cq1rfe1ng==
Date: Fri, 13 Sep 2024 10:57:00 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Raag Jadav <raag.jadav@intel.com>
Cc: Riana Tauro <riana.tauro@intel.com>, andi.shyti@linux.intel.com, 
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, 
 tursulin@ursulin.net, linux@roeck-us.net, andriy.shevchenko@linux.intel.com, 
 intel-gfx@lists.freedesktop.org, linux-hwmon@vger.kernel.org,
 anshuman.gupta@intel.com, 
 badal.nilawar@intel.com, ashutosh.dixit@intel.com, karthik.poosa@intel.com
Subject: Re: [PATCH v3] drm/i915/hwmon: expose package temperature
Message-ID: <htzuvg2nupr6glndudxywz7uzbbjmgpecge4krll4fz2e35bdq@c7ague67qzx6>
References: <20240910105242.3357276-1-raag.jadav@intel.com>
 <b0eb87b5-e42d-4ab0-9d48-7ca07ef80708@intel.com>
 <ZuP9Cvd_LfJS_Yir@black.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZuP9Cvd_LfJS_Yir@black.fi.intel.com>
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

Hi Raag,

On Fri, Sep 13, 2024 at 11:51:22AM GMT, Raag Jadav wrote:
> On Fri, Sep 13, 2024 at 11:14:22AM +0530, Riana Tauro wrote:
> > On 9/10/2024 4:22 PM, Raag Jadav wrote:
> > > Add hwmon support for temp1_input attribute, which will expose package
> > > temperature in millidegree Celsius. With this in place we can monitor
> > > package temperature using lm-sensors tool.
> > > 
> > > $ sensors
> > > i915-pci-0300
> > > Adapter: PCI adapter
> > > in0:         990.00 mV
> > > fan1:        1260 RPM
> > > temp1:        +45.0°C
> > > power1:           N/A  (max =  35.00 W)
> > > energy1:      12.62 kJ
> > > 
> > > v2: Use switch case (Anshuman)
> > > v3: Comment adjustment (Riana)
> > > 
> > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
> > > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > > Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Looks good to me
> > Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> 
> Thank you :)
> 
> Andi, can you pick this one up? Anshuman's machine is down.

Sure!

Andi
