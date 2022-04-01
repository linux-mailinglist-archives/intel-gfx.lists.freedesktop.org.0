Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 303BD4EF54A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 17:42:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA5010F61C;
	Fri,  1 Apr 2022 15:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5252C10F61C
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 15:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648827764; x=1680363764;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SDofNT+ejn6bZMGDhfgiYDfZ84mezMy7VuDaDRW2tAs=;
 b=B3XLNQzJay+Xpc2EC4dd81EkJBDGZxxDe4WULyL5M1s/xmfQEPwEs6Mj
 Lt7lbKU/4YOTyL2bunQntJFj5NUEhnqB1aMLliEwm6EkLtwqR1j9oA5TQ
 sxBburjHHyZKjdaENQwLan+rcWj1Qqn+uhLnWJJeiVW8Alcw+nPuBRCH/
 bollUvOgK0Pi+3Y0BOgmXe9xroQlMe5PWGX3HnUXewdAJwF4z5BDzJ1OB
 BJSOofpRg0uD8+hRyyquZ2JywESV4zSM928S8xmfovlt6wch/3VAJ4N9N
 SOW5E4tJLvoIOY8qtiBTs42TjEU1h4ul1/lk7QFgbUieokFcXH1lwW2Hn g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="346602204"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="346602204"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 08:42:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="640572059"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Apr 2022 08:42:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 08:42:43 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 08:42:40 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 21:12:38 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Dixit, Ashutosh"
 <ashutosh.dixit@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children runtime
 status
Thread-Index: AQHYQo3ItyzC3kGzdEefAg/N2OZ/rqzWoqMAgAP8boCAAGM0kP//rAcAgABdMRD//7dwAIAAclLw
Date: Fri, 1 Apr 2022 15:42:38 +0000
Message-ID: <b9082786922d4941a182441b01aa2eac@intel.com>
References: <20220328102227.14545-1-anshuman.gupta@intel.com>
 <87v8vw8igj.wl-ashutosh.dixit@intel.com> <87czi1812s.fsf@intel.com>
 <00a81e7f6ac14024837bcea5a9a46dbb@intel.com> <871qyh7yjx.fsf@intel.com>
 <9c68cd03950f42b4a5a977e31d1d79f2@intel.com> <87v8vs7v4v.fsf@intel.com>
In-Reply-To: <87v8vs7v4v.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children
 runtime status
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Wilson, Chris P" <chris.p.wilson@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, April 1, 2022 7:40 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; Dixit, Ashutosh
> <ashutosh.dixit@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Wilson, Chris P <chris.p.wilson@inte=
l.com>;
> Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children run=
time
> status
>=20
> On Fri, 01 Apr 2022, "Gupta, Anshuman" <anshuman.gupta@intel.com> wrote:
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Friday, April 1, 2022 6:26 PM
> >> To: Gupta, Anshuman <anshuman.gupta@intel.com>; Dixit, Ashutosh
> >> <ashutosh.dixit@intel.com>
> >> Cc: intel-gfx@lists.freedesktop.org; Wilson, Chris P
> >> <chris.p.wilson@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> >> Subject: RE: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children
> >> runtime status
> >>
> >> On Fri, 01 Apr 2022, "Gupta, Anshuman" <anshuman.gupta@intel.com>
> wrote:
> >> >> -----Original Message-----
> >> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> >> Sent: Friday, April 1, 2022 5:31 PM
> >> >> To: Dixit, Ashutosh <ashutosh.dixit@intel.com>; Gupta, Anshuman
> >> >> <anshuman.gupta@intel.com>
> >> >> Cc: intel-gfx@lists.freedesktop.org; Wilson, Chris P
> >> >> <chris.p.wilson@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> >> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915
> >> >> children runtime status
> >> >>
> >> >> On Tue, 29 Mar 2022, "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
> wrote:
> >> >> > On Mon, 28 Mar 2022 03:22:27 -0700, Anshuman Gupta wrote:
> >> >> >>
> >> >> >> +#ifdef CONFIG_PM
> >> >> >> +static int i915_runtime_dump_child_status(struct device *dev,
> >> >> >> +void
> >> >> >> +*data) {
> >> >> >> +	struct seq_file *m =3D data;
> >> >> >> +	const char *rpm_status;
> >> >> >> +
> >> >> >> +	/* Early return if runtime_pm is disabled */
> >> >> >> +	if (dev->power.disable_depth)
> >> >> >> +		return 0;
> >> >> >> +
> >> >> >> +	switch (dev->power.runtime_status) {
> >> >> >> +	case RPM_SUSPENDED:
> >> >> >> +		rpm_status =3D "suspended";
> >> >> >> +		break;
> >> >> >> +	case RPM_SUSPENDING:
> >> >> >> +		rpm_status =3D "suspending";
> >> >> >> +		break;
> >> >> >> +	case RPM_RESUMING:
> >> >> >> +		rpm_status =3D "resuming";
> >> >> >> +		break;
> >> >> >> +	case RPM_ACTIVE:
> >> >> >> +		rpm_status =3D "active";
> >> >> >> +		break;
> >> >> >> +	default:
> >> >> >> +		rpm_status =3D "unknown";
> >> >> >> +	}
> >> >> >> +
> >> >> >> +	seq_printf(m, "\t%s %s: Runtime status: %s\n",
> dev_driver_string(dev),
> >> >> >> +		   dev_name(dev), rpm_status);
> >> >> >> +
> >> >> >> +	return 0;
> >> >> >> +}
> >> >> >> +#endif
> >> >> >
> >> >> > Maybe a nit, but perhaps defining a const array is better than
> >> >> > having a switch statement? Similar to what is done in
> >> >> > rtpm_status_str(). The function itself is very similar to
> >> >> > rtpm_status_str() so can probably benefit from that similarity.
> >> >> > Can perhaps even be nearly identical to
> >> >> > rtpm_status_str() (since that is static in the genpd (generic
> >> >> > power
> >> >> > domain) code).
> >> >> >
> >> >> > See also 2bd5306a8764 ("PM / Domains: add debugfs listing of
> >> >> > struct generic_pm_domain-s"), though I am not sure if genpd's
> >> >> > are applicable in our case and certainly look way out of scope fo=
r now.
> Thanks.
> >> >>
> >> >> See also /sys/devices/i915/power/runtime_status and
> >> >> /sys/devices/i915/power/runtime_active_kids.
> >> >>
> >> >> Kinda feels like the info should be made available there?
> >> > runtime_active_kids we are already printing by dev_priv->drm.dev-
> >> >power.child_count.
> >> > About runtime_status , we already prints usage count and pci device
> >> >power
> >> state, IMO that is sufficient for debug ?
> >> > If it is really needed , I will add dev->power.runtime_status in nex=
t revision.
> >>
> >> My point is, the patch at hand adds runtime pm status printing that
> >> isn't specific to drm or i915 into i915 debugfs. Why?
> >>
> >> What is the reason we should take on the burden of maintaining this
> >> while the right place for it might be in runtime pm code, benefiting
> >> other drivers in addition to ours?
> > Benefit is there to debug CI runtime suspend failures , we need to know=
 the
> culprit child blocking i915 runtime PM.
> > runtime_active_kids just revels the count , it doesn't reveal the culpr=
it children.
>=20
> I understand. But how is that problem or the information specific to i915=
? Why
> should this be added to i915 instead of runtime pm infra?
> Surely this is not even a new problem; how do others currently figure thi=
s
> information out?
>=20
> So I'm not going to block this if you all think this is a good idea. But =
the point is,
> the first solution should not be to add some i915 specific stuff when a m=
ore
> generic solution might exist or be preferred.
Hi Rafael,
Could you please provide your input,  about generic interface to dump the a=
ctive children of a device.
Thanks,
Anshuman Gupta.
>=20
>=20
> BR,
> Jani.
>=20
>=20
>=20
>=20
> > Thanks,
> > Anshuman.
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> > Thanks,
> >> > Anshuman Gupta.
> >> >
> >> >
> >> >
> >> >
> >> >>
> >> >> BR,
> >> >> Jani.
> >> >>
> >> >> >
> >> >> >> +
> >> >> >>  static int i915_runtime_pm_status(struct seq_file *m, void
> >> >> >>*unused)
> >> >> >>  {
> >> >> >>	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
> >> >> >>@@
> >> >> >>-500,6 +534,10 @@ static int i915_runtime_pm_status(struct
> >> >> >>seq_file *m, void *unused)
> >> >> >>  #ifdef CONFIG_PM
> >> >> >>	seq_printf(m, "Usage count: %d\n",
> >> >> >>		   atomic_read(&dev_priv->drm.dev-
> >power.usage_count));
> >> >> >> +	seq_printf(m, "Runtime active children: %d\n",
> >> >> >> +		   atomic_read(&dev_priv->drm.dev-
> >power.child_count));
> >> >> >> +	device_for_each_child(&pdev->dev, m,
> >> >> >> +i915_runtime_dump_child_status);
> >> >> >> +
> >> >> >>  #else
> >> >> >>	seq_printf(m, "Device Power Management (CONFIG_PM)
> >> >> >>disabled\n");
> >> >> >>  #endif
> >> >> >> --
> >> >> >> 2.26.2
> >> >> >>
> >> >>
> >> >> --
> >> >> Jani Nikula, Intel Open Source Graphics Center
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
