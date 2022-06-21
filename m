Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6D0552B31
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 08:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61CF110FBA2;
	Tue, 21 Jun 2022 06:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E85110F860
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 06:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655793703; x=1687329703;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=hYje46EBDaFdlrGMnQaMQ6Ysxoe8/yTy0r+3pYpxJGY=;
 b=c07pJOUjbdmlLG8LB37XAUtX8V9GX86iP45GR9FQHsQ8h9ltHZ8OPY0k
 eFW4Uu9NhSm9k4Du/dd2TGBgYjrO6Au3husGUGI8alNuCovk/cmay7HzL
 4omfZdZRlKVTT4urEXkQAK6/638KhMzCdPl5uTLH7SwV822jaXn+hPSQQ
 aA1x4bwy57VNftCza4BjY5fn9xu3XZbyCXr7OMiwaGysx+CNcsUfMwn9K
 +K9WtUgBwsc6t5J+JXBIoJQ9VODprQCNTZDwiJ4XJtby9ir8KzHpL4qG1
 yadslhHiGt5HbA2HE24OpwF4gU5ltxmP6YaZQYg1Zfx/lk3L4h0jUGbI2 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="305480806"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="305480806"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 23:41:42 -0700
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="614632530"
Received: from adixit-mobl1.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.238.99])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 23:41:41 -0700
Date: Mon, 20 Jun 2022 23:41:41 -0700
Message-ID: <87bkumv7q2.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <4277d384-147a-6de4-abe3-3b64b9dae207@roeck-us.net>
References: <20220620204649.894703-1-badal.nilawar@intel.com>	<20220620204649.894703-4-badal.nilawar@intel.com>	<4277d384-147a-6de4-abe3-3b64b9dae207@roeck-us.net>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
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

On Mon, 20 Jun 2022 13:58:49 -0700, Guenter Roeck wrote:
>

Hi Guenter, Thanks for taking a look.

> > diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > index 24c4b7477d51..945f472dd4a2 100644
> > --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> > @@ -5,3 +5,23 @@ Contact:	dri-devel@lists.freedesktop.org
> >   Description:	RO. Current Voltage in millivolt.
> >			Only supported for particular Intel i915 graphics
> > platforms.
> > +
> > +What:		/sys/devices/.../hwmon/hwmon<i>/power1_max
> > +Date:		June 2022
> > +KernelVersion:	5.19
> > +Contact:	dri-devel@lists.freedesktop.org
> > +Description:	RW. Card reactive sustained  (PL1/Tau) power limit in microwatts.
> > +
> > +		The power controller will throttle the operating frequency
> > +		if the power averaged over a window (typically seconds)
> > +		exceeds this limit.
> > +
> > +		Only supported for particular Intel i915 graphics platforms.
> > +
> > +What:		/sys/devices/.../hwmon/hwmon<i>/power1_max_default
>
> I don't immediately see the reason for not using the standard power1_cap
> attribute, which is described as
>
>		If power use rises above this limit, the
>                 system should take action to reduce power use.
>
> and pretty much matches the description above.

Sorry I believe you are referring to the description above which is for the
standard power1_max attribute (as we have used it). The non-standard
attribute is power1_max_default the description for which is below ("Card
default power limit (default TDP setting)").

> > +Date:		June 2022
> > +KernelVersion:	5.19
> > +Contact:	dri-devel@lists.freedesktop.org
> > +Description:	RO. Card default power limit (default TDP setting).

Actually we do not want to use custom hwmon attributes as far as
possible and are looking for some guidance on which standard attributes
which we should use instead.

These are the power attributes we are interested in: the two above and
another one which will come in a future patch:

1. PL1 (RW)

   https://www.hardwaretimes.com/intel-10th-gen-cpu-power-consumption-explained-pl1-pl2-and-tau/

2. TDP (RO)

   https://en.wikipedia.org/wiki/Thermal_design_power

3. Tau (RW)

   https://www.hardwaretimes.com/intel-10th-gen-cpu-power-consumption-explained-pl1-pl2-and-tau/

Would you be able to suggest if there are standard hwmon attributes which
we would be able to use for these three? We also want to use the read/write
permissions as shown above.

Thanks.
--
Ashutosh
