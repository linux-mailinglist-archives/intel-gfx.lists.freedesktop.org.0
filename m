Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F74553DA6
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 23:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A4D112188;
	Tue, 21 Jun 2022 21:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2839112188
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 21:26:12 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id 23so8084360pgc.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 14:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KIIKfwUOEd53jqVj970snkBwpf3sOH/KM4J5sy4qxrg=;
 b=dXx8lY7neUw0BGblMw4HDE2SVVtbQFwzQu8aHk5OCHTzE3/CjuNPBKsahZiIH+IZyH
 HiNhuIfitW0WzBTuIBX5LWBSfpVpcdeVEXG9itheDj7CM9Xzzp1Tt7ulBdv/alreg282
 SIlx7j9pFD4gdpaCLGgMZalpm15ZjiBHmUCOVBvPGH+1fmpSHRDkkoU+CnSF61NmgU55
 0rdIJBXwyiPgqdvOKYLEdan1Czm4vlmqhm5w4Zy90WTMHw8K1qVgS48J5QLL+H+RZOBI
 eAeL5/0LShKkGyCEasqs8bT9MzenSESoahTyWhqWnUnDVN7FQGY/jEfP/VqyJrzs8gHh
 SaKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=KIIKfwUOEd53jqVj970snkBwpf3sOH/KM4J5sy4qxrg=;
 b=hcxZwgPN0ZluMvkj5WvHnb6aAxWDXjuA5Ikle7pkiawQuwnklsaSNk4mmTvqXrLdwY
 9CwckxMlI+vOMO2aTKcKGMnhaZVNVpZAwbaB8vSRDtG+6Q5qW59007pg3Z7FLxYmXrTk
 AeMvocvieJyxRNccvmY2s3ofIoHgPAP+2vsqFeFwDvu46HS4IQMraGKDTh5o25LhFYnb
 +jjmDV1PS9qhDYoWzwwwtYaZacvDGtiTAWWadMnLnrUshOPJHJqyYO43gx1vDzROJrGy
 r/0faY3Hx15OFaNF1BQuWJ5G30EX7id35/nklfgdHBv2J7azSMcuSXoR75KlJ3j1bXPI
 RRdQ==
X-Gm-Message-State: AJIora9T8YhEQM7UzLVf3RCwVTKTQxhzVWe6FfenXVmRCgaPWi2VizZE
 ZRG7zpr3CSqn4muZ1f6czxc=
X-Google-Smtp-Source: AGRyM1u0yDVzk3uCyLy5BTj31b8uspDsipLjjbNLTFB/bwlPqb5h6jJkYJN2CznUyMN4O8ttUGqwvQ==
X-Received: by 2002:a62:1b4a:0:b0:525:41a6:479e with SMTP id
 b71-20020a621b4a000000b0052541a6479emr1948944pfb.49.1655846772244; 
 Tue, 21 Jun 2022 14:26:12 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 74-20020a62164d000000b005254535a2cfsm26422pfw.136.2022.06.21.14.26.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jun 2022 14:26:10 -0700 (PDT)
Date: Tue, 21 Jun 2022 14:26:09 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <20220621212609.GA3466044@roeck-us.net>
References: <20220620204649.894703-1-badal.nilawar@intel.com>
 <20220620204649.894703-4-badal.nilawar@intel.com>
 <4277d384-147a-6de4-abe3-3b64b9dae207@roeck-us.net>
 <87bkumv7q2.wl-ashutosh.dixit@intel.com>
 <20220621174421.GA3456551@roeck-us.net>
 <874k0dvmr2.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <874k0dvmr2.wl-ashutosh.dixit@intel.com>
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

On Tue, Jun 21, 2022 at 12:29:21PM -0700, Dixit, Ashutosh wrote:
> On Tue, 21 Jun 2022 10:44:21 -0700, Guenter Roeck wrote:
> >
> > On Mon, Jun 20, 2022 at 11:41:41PM -0700, Dixit, Ashutosh wrote:
> > > On Mon, 20 Jun 2022 13:58:49 -0700, Guenter Roeck wrote:
> > > Hi Guenter, Thanks for taking a look.
> > >
> > > > > diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > > > index 24c4b7477d51..945f472dd4a2 100644
> > > > > --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > > > +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > > > > @@ -5,3 +5,23 @@ Contact:	dri-devel@lists.freedesktop.org
> > > > >   Description:	RO. Current Voltage in millivolt.
> > > > >			Only supported for particular Intel i915 graphics
> > > > > platforms.
> > > > > +
> > > > > +What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
> > > > > +Date:		June 2022
> > > > > +KernelVersion:	5.19
> > > > > +Contact:	dri-devel@lists.freedesktop.org
> > > > > +Description:	RW. Card reactive sustained  (PL1/Tau) power limit in microwatts.
> > > > > +
> > > > > +		The power controller will throttle the operating frequency
> > > > > +		if the power averaged over a window (typically seconds)
> > > > > +		exceeds this limit.
> > > > > +
> > > > > +		Only supported for particular Intel i915 graphics platforms.
> > > > > +
> > > > > +What:		/sys/devices/.../hwmon/hwmon<i>/power1_max_default
> > > >
> > > > I don't immediately see the reason for not using the standard power1_cap
> > > > attribute, which is described as
> > > >
> > > >		If power use rises above this limit, the
> > > >                 system should take action to reduce power use.
> > > >
> > > > and pretty much matches the description above.
> > >
> > > Sorry I believe you are referring to the description above which is for the
> > > standard power1_max attribute (as we have used it). The non-standard
> > > attribute is power1_max_default the description for which is below ("Card
> > > default power limit (default TDP setting)").
> > >
> >
> > If you use power1_max to limit power consumption if exceeded, power1_cap
> > might have been more appropriate.
> 
> Looks like in this case the file name is ok but the problem is with the
> description (which does not correspond to what PL1 is). Will fix.
> 
> > > > > +Date:		June 2022
> > > > > +KernelVersion:	5.19
> > > > > +Contact:	dri-devel@lists.freedesktop.org
> > > > > +Description:	RO. Card default power limit (default TDP setting).
> > >
> > > Actually we do not want to use custom hwmon attributes as far as
> > > possible and are looking for some guidance on which standard attributes
> > > which we should use instead.
> > >
> > You could possibly have used power1_rated_max instead of power1_max_default.
> 
> Yes looks like this might work for TDP. We will consider this.
> 
> > > These are the power attributes we are interested in: the two above and
> > > another one which will come in a future patch:
> > >
> > > 1. PL1 (RW)
> > >
> > >    https://www.hardwaretimes.com/intel-10th-gen-cpu-power-consumption-explained-pl1-pl2-and-tau/
> > >
> > > 2. TDP (RO)
> > >
> > >    https://en.wikipedia.org/wiki/Thermal_design_power
> > >
> > Not sure I understand the difference between 'default TDP' (RO),
> > 'TDP' (RO), and PL1.
> 
> 'default TDP' (RO) and 'TDP' (RO) are the same but PL1 is somewhat
> different from TDP (see the first link above) and also I believe chip
> makers specify PL1 and TDP separately (as in this case).
> 
> > > 3. Tau (RW)
> > >
> > >    https://www.hardwaretimes.com/intel-10th-gen-cpu-power-consumption-explained-pl1-pl2-and-tau/
> > >
> > > Would you be able to suggest if there are standard hwmon attributes which
> > > we would be able to use for these three? We also want to use the read/write
> > > permissions as shown above.
> > >
> >
> > There are a number of standard power attributes available to set or report
> > limits (cap, cap_max, cap_min, max, crit, rated_min, rated_max). I would
> > suggest to pick from that list whatever you think fits best. I don't have
> > a recommendation for Tau.
> 
> OK, in that case would a custom setting for Tau also be ok?
> 
Yes.

> > Either case, when reporting power, make sure you don't hit any of the
> > security issues which caused power reporting to be deleted for other CPUs.
> > Restricting read access to hwmon attributes for non-privileged users is not
> > acceptable.
> 
> OK, I believe you are referring to 9049572fb145. Will keep this in mind too.
> 

Correct. Something similar is in the works for another architecture,
for the same reason. Also see 'Attribute access' in
Documentation/hwmon/sysfs-interface.rst.

Thanks,
Guenter
