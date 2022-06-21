Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C55855391C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 19:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C5D10EB8A;
	Tue, 21 Jun 2022 17:44:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31FEB10EAD2
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 17:44:25 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id d17so4775389pfq.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 10:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Sac1i2UMguOZYNf/xud4fG4r8aL9I2PZA0GzUUD5kCs=;
 b=YFCLiFg7SU+jN3yuEq9vUFYvT89N2KPsAk+2XSF8Tbb3zIG2o9xITxyNkb2KI4ylW7
 kNJlQ0Q2a4OFKJsTtB/f5z7zg9QHE18p/MZQ9B5NOXgiKOGL9NvAN6h9/nZCvIaaMSov
 ciziJrHkgQTLYdfHuo6+lj5HXqQCcFwwmt2o0wgU/8n0FCLo65AzHPDlcCYfwdVxYJ64
 HwgQgjQyGY4fmkuC3auP3WVmyG8fuOBNkJy0HdIxInJiCakLWFeRg/Te/pNh3ONwtmeH
 aKuau7zOWtp9rz0UPqXhpXB6+2fuuxLySqIyTinDYuuTpz0XQ9WsQ6fUvU6y6+xFwFFG
 m7Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=Sac1i2UMguOZYNf/xud4fG4r8aL9I2PZA0GzUUD5kCs=;
 b=FPo1yuUi0jll+zV4S2T1/Xr3wJso3PW4FdgRiv9bPyLGdzZXxL22f1I7H64RkocG7l
 4G8ecbt9u67tCxaHBikOyil8XwaoTJxwzbGzY/yNqdissAaKDlQ5s23zoUSpyBhV8G16
 LiqRYLR3Oa6wsxlMKA80CC2FOtqiJOr324FseaMplg2ICqzWaxbbYWIWJUuFAarej6m3
 nDvLn34juApnBgZki09lzKl/4iajdF+4XVruKH1lbWQp3SO6oY4wWiACKKqg5Ic7lKx/
 WYjTP70qLH/EIVnx9sIvpxaE4BOdHKlDCw9e+ZxN0J1XuBnec7HkDX2agiC9FiijcY5r
 ZVDA==
X-Gm-Message-State: AJIora+20d11PgAAs7M6kgYGTSKe5lXoP1OF9u8ZM0lkmHa/VmMpDuTQ
 u23sH3+EPtbS1MRjhylFF7Q=
X-Google-Smtp-Source: AGRyM1vZsD3Nbhcq4xVKtu8UgO/7Ov6+sFzqOqwUupET9ZnWqXF2VmyyMWJvNseytLLl90P5cujwdA==
X-Received: by 2002:a05:6a00:1956:b0:51c:3a0:49d2 with SMTP id
 s22-20020a056a00195600b0051c03a049d2mr31174737pfk.29.1655833464723; 
 Tue, 21 Jun 2022 10:44:24 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 w9-20020a62c709000000b0051ba97b788bsm11735957pfg.27.2022.06.21.10.44.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jun 2022 10:44:23 -0700 (PDT)
Date: Tue, 21 Jun 2022 10:44:21 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <20220621174421.GA3456551@roeck-us.net>
References: <20220620204649.894703-1-badal.nilawar@intel.com>
 <20220620204649.894703-4-badal.nilawar@intel.com>
 <4277d384-147a-6de4-abe3-3b64b9dae207@roeck-us.net>
 <87bkumv7q2.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87bkumv7q2.wl-ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/hwmon: Add HWMON power sensor
 support
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
Cc: linux-hwmon@vger.kernel.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 20, 2022 at 11:41:41PM -0700, Dixit, Ashutosh wrote:
> On Mon, 20 Jun 2022 13:58:49 -0700, Guenter Roeck wrote:
> >
> 
> Hi Guenter, Thanks for taking a look.
> 
> > > diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > index 24c4b7477d51..945f472dd4a2 100644
> > > --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > @@ -5,3 +5,23 @@ Contact:	dri-devel@lists.freedesktop.org
> > >   Description:	RO. Current Voltage in millivolt.
> > >			Only supported for particular Intel i915 graphics
> > > platforms.
> > > +
> > > +What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
> > > +Date:		June 2022
> > > +KernelVersion:	5.19
> > > +Contact:	dri-devel@lists.freedesktop.org
> > > +Description:	RW. Card reactive sustained  (PL1/Tau) power limit in microwatts.
> > > +
> > > +		The power controller will throttle the operating frequency
> > > +		if the power averaged over a window (typically seconds)
> > > +		exceeds this limit.
> > > +
> > > +		Only supported for particular Intel i915 graphics platforms.
> > > +
> > > +What:		/sys/devices/.../hwmon/hwmon<i>/power1_max_default
> >
> > I don't immediately see the reason for not using the standard power1_cap
> > attribute, which is described as
> >
> >		If power use rises above this limit, the
> >                 system should take action to reduce power use.
> >
> > and pretty much matches the description above.
> 
> Sorry I believe you are referring to the description above which is for the
> standard power1_max attribute (as we have used it). The non-standard
> attribute is power1_max_default the description for which is below ("Card
> default power limit (default TDP setting)").
> 

If you use power1_max to limit power consumption if exceeded, power1_cap
might have been more appropriate.

> > > +Date:		June 2022
> > > +KernelVersion:	5.19
> > > +Contact:	dri-devel@lists.freedesktop.org
> > > +Description:	RO. Card default power limit (default TDP setting).
> 
> Actually we do not want to use custom hwmon attributes as far as
> possible and are looking for some guidance on which standard attributes
> which we should use instead.
> 
You could possibly have used power1_rated_max instead of power1_max_default.

> These are the power attributes we are interested in: the two above and
> another one which will come in a future patch:
> 
> 1. PL1 (RW)
> 
>    https://www.hardwaretimes.com/intel-10th-gen-cpu-power-consumption-explained-pl1-pl2-and-tau/
> 
> 2. TDP (RO)
> 
>    https://en.wikipedia.org/wiki/Thermal_design_power
> 
Not sure I understand the difference between 'default TDP' (RO),
'TDP' (RO), and PL1.

> 3. Tau (RW)
> 
>    https://www.hardwaretimes.com/intel-10th-gen-cpu-power-consumption-explained-pl1-pl2-and-tau/
> 
> Would you be able to suggest if there are standard hwmon attributes which
> we would be able to use for these three? We also want to use the read/write
> permissions as shown above.
> 

There are a number of standard power attributes available to set or report
limits (cap, cap_max, cap_min, max, crit, rated_min, rated_max). I would
suggest to pick from that list whatever you think fits best. I don't have
a recommendation for Tau.

Either case, when reporting power, make sure you don't hit any of the
security issues which caused power reporting to be deleted for other CPUs.
Restricting read access to hwmon attributes for non-privileged users is not
acceptable.

Thanks,
Guenter
