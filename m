Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 885D24EEDD1
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 15:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADDE610E390;
	Fri,  1 Apr 2022 13:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D72C410E361
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 13:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648818433; x=1680354433;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PXUhOYTrKCqfS/Gl4NL5gd7DIYlf4K9nd24OvIxAGaE=;
 b=nKSIRmjD3W3TcKqJcZEsni+WOYI0dGomEICe33Tz3NqmUSY5G9sKxNkF
 0kSND6GUIFmv+FjN500uhl0mN0sYRr3M7nURRoc8x5r45e6VQwdoWo4/E
 nyTUS45oT4Gh51CKEfn4By/6xEtxnNTJ/ppjGceo2WyOYl24/LvtT8j7y
 Y2ELSplhOgCaB6khZ5XIFfNQt7nNXNWu0HeYUtujC1qUc0azzrjqcmFtr
 I6CB/hFCA8NUUvsoR34rtNYBFAW/EGaUPxglGJ2A3qx86qmT9yPjp63Go
 tiMnWvGbltd4el7MyxAO7CKQw0JTr4IqMUry04gf4vj96Cefvc+1fpRFp g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="257712454"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="257712454"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 06:07:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="504163106"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 01 Apr 2022 06:07:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 06:07:12 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 06:07:10 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 18:37:08 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Dixit, Ashutosh"
 <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children runtime
 status
Thread-Index: AQHYQo3ItyzC3kGzdEefAg/N2OZ/rqzWoqMAgAP8boCAAGM0kP//rAcAgABdMRA=
Date: Fri, 1 Apr 2022 13:07:08 +0000
Message-ID: <9c68cd03950f42b4a5a977e31d1d79f2@intel.com>
References: <20220328102227.14545-1-anshuman.gupta@intel.com>
 <87v8vw8igj.wl-ashutosh.dixit@intel.com> <87czi1812s.fsf@intel.com>
 <00a81e7f6ac14024837bcea5a9a46dbb@intel.com> <871qyh7yjx.fsf@intel.com>
In-Reply-To: <871qyh7yjx.fsf@intel.com>
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
> Sent: Friday, April 1, 2022 6:26 PM
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
> >> Sent: Friday, April 1, 2022 5:31 PM
> >> To: Dixit, Ashutosh <ashutosh.dixit@intel.com>; Gupta, Anshuman
> >> <anshuman.gupta@intel.com>
> >> Cc: intel-gfx@lists.freedesktop.org; Wilson, Chris P
> >> <chris.p.wilson@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children
> >> runtime status
> >>
> >> On Tue, 29 Mar 2022, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrot=
e:
> >> > On Mon, 28 Mar 2022 03:22:27 -0700, Anshuman Gupta wrote:
> >> >>
> >> >> +#ifdef CONFIG_PM
> >> >> +static int i915_runtime_dump_child_status(struct device *dev,
> >> >> +void
> >> >> +*data) {
> >> >> +	struct seq_file *m =3D data;
> >> >> +	const char *rpm_status;
> >> >> +
> >> >> +	/* Early return if runtime_pm is disabled */
> >> >> +	if (dev->power.disable_depth)
> >> >> +		return 0;
> >> >> +
> >> >> +	switch (dev->power.runtime_status) {
> >> >> +	case RPM_SUSPENDED:
> >> >> +		rpm_status =3D "suspended";
> >> >> +		break;
> >> >> +	case RPM_SUSPENDING:
> >> >> +		rpm_status =3D "suspending";
> >> >> +		break;
> >> >> +	case RPM_RESUMING:
> >> >> +		rpm_status =3D "resuming";
> >> >> +		break;
> >> >> +	case RPM_ACTIVE:
> >> >> +		rpm_status =3D "active";
> >> >> +		break;
> >> >> +	default:
> >> >> +		rpm_status =3D "unknown";
> >> >> +	}
> >> >> +
> >> >> +	seq_printf(m, "\t%s %s: Runtime status: %s\n", dev_driver_string(=
dev),
> >> >> +		   dev_name(dev), rpm_status);
> >> >> +
> >> >> +	return 0;
> >> >> +}
> >> >> +#endif
> >> >
> >> > Maybe a nit, but perhaps defining a const array is better than
> >> > having a switch statement? Similar to what is done in
> >> > rtpm_status_str(). The function itself is very similar to
> >> > rtpm_status_str() so can probably benefit from that similarity. Can
> >> > perhaps even be nearly identical to
> >> > rtpm_status_str() (since that is static in the genpd (generic power
> >> > domain) code).
> >> >
> >> > See also 2bd5306a8764 ("PM / Domains: add debugfs listing of struct
> >> > generic_pm_domain-s"), though I am not sure if genpd's are
> >> > applicable in our case and certainly look way out of scope for now. =
Thanks.
> >>
> >> See also /sys/devices/i915/power/runtime_status and
> >> /sys/devices/i915/power/runtime_active_kids.
> >>
> >> Kinda feels like the info should be made available there?
> > runtime_active_kids we are already printing by dev_priv->drm.dev-
> >power.child_count.
> > About runtime_status , we already prints usage count and pci device pow=
er
> state, IMO that is sufficient for debug ?
> > If it is really needed , I will add dev->power.runtime_status in next r=
evision.
>=20
> My point is, the patch at hand adds runtime pm status printing that isn't=
 specific
> to drm or i915 into i915 debugfs. Why?
>=20
> What is the reason we should take on the burden of maintaining this while=
 the
> right place for it might be in runtime pm code, benefiting other drivers =
in
> addition to ours?
Benefit is there to debug CI runtime suspend failures , we need to know the=
 culprit child blocking i915 runtime PM.
runtime_active_kids just revels the count , it doesn't reveal the culprit c=
hildren.
Thanks,
Anshuman.
>=20
> BR,
> Jani.
>=20
>=20
> > Thanks,
> > Anshuman Gupta.
> >
> >
> >
> >
> >>
> >> BR,
> >> Jani.
> >>
> >> >
> >> >> +
> >> >>  static int i915_runtime_pm_status(struct seq_file *m, void
> >> >>*unused)
> >> >>  {
> >> >>	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);  @@
> >> >>-500,6 +534,10 @@ static int i915_runtime_pm_status(struct seq_file
> >> >>*m, void *unused)
> >> >>  #ifdef CONFIG_PM
> >> >>	seq_printf(m, "Usage count: %d\n",
> >> >>		   atomic_read(&dev_priv->drm.dev->power.usage_count));
> >> >> +	seq_printf(m, "Runtime active children: %d\n",
> >> >> +		   atomic_read(&dev_priv->drm.dev->power.child_count));
> >> >> +	device_for_each_child(&pdev->dev, m,
> >> >> +i915_runtime_dump_child_status);
> >> >> +
> >> >>  #else
> >> >>	seq_printf(m, "Device Power Management (CONFIG_PM) disabled\n");
> >> >>  #endif
> >> >> --
> >> >> 2.26.2
> >> >>
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
