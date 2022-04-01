Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EA94EED57
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 14:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C72310E054;
	Fri,  1 Apr 2022 12:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30B2C10E054
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 12:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648816832; x=1680352832;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TyQ3WAI7u/UmZx/rfdJoJNTGBUO23Yo85FeOWxBYiy4=;
 b=YVuiO2tSClXvbWEwctNTWksssa2jHUmxFZXBrNE2SIFiots6VrM0Up+I
 qKlHGuaBSMBwoAP/1Q96URWkVFcvLC1CdWSLXAQy5ODG19Z49F4L1dJB0
 Rp48AB/lpraWMFLM8WBLiDOa3IDVAsV7YYCnPwclrvP+0GXjP+zG0ELYB
 a9RmUpmMplvSasJcb4MzHSWVpw0X02/m8B+w/RoENTc4cWoWD0R/HIICB
 ligisSsKoNZt1uVrBTOEegfPndGiIFdyWM6QOJ8rCIE5YJcNBedpnLsGW
 mrY0cx6I8VQhHEXUYwolFoNzDD22THQWfJOggfHDKmwU8PoE0agXUMH4M g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="242274557"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="242274557"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:40:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="720874476"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 01 Apr 2022 05:40:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 05:40:30 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Apr 2022 05:40:29 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.027;
 Fri, 1 Apr 2022 18:10:27 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Dixit, Ashutosh"
 <ashutosh.dixit@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children runtime
 status
Thread-Index: AQHYQo3ItyzC3kGzdEefAg/N2OZ/rqzWoqMAgAP8boCAAGM0kA==
Date: Fri, 1 Apr 2022 12:40:27 +0000
Message-ID: <00a81e7f6ac14024837bcea5a9a46dbb@intel.com>
References: <20220328102227.14545-1-anshuman.gupta@intel.com>
 <87v8vw8igj.wl-ashutosh.dixit@intel.com> <87czi1812s.fsf@intel.com>
In-Reply-To: <87czi1812s.fsf@intel.com>
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
> Sent: Friday, April 1, 2022 5:31 PM
> To: Dixit, Ashutosh <ashutosh.dixit@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Wilson, Chris P <chris.p.wilson@inte=
l.com>;
> Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children run=
time
> status
>=20
> On Tue, 29 Mar 2022, "Dixit, Ashutosh" <ashutosh.dixit@intel.com> wrote:
> > On Mon, 28 Mar 2022 03:22:27 -0700, Anshuman Gupta wrote:
> >>
> >> +#ifdef CONFIG_PM
> >> +static int i915_runtime_dump_child_status(struct device *dev, void
> >> +*data) {
> >> +	struct seq_file *m =3D data;
> >> +	const char *rpm_status;
> >> +
> >> +	/* Early return if runtime_pm is disabled */
> >> +	if (dev->power.disable_depth)
> >> +		return 0;
> >> +
> >> +	switch (dev->power.runtime_status) {
> >> +	case RPM_SUSPENDED:
> >> +		rpm_status =3D "suspended";
> >> +		break;
> >> +	case RPM_SUSPENDING:
> >> +		rpm_status =3D "suspending";
> >> +		break;
> >> +	case RPM_RESUMING:
> >> +		rpm_status =3D "resuming";
> >> +		break;
> >> +	case RPM_ACTIVE:
> >> +		rpm_status =3D "active";
> >> +		break;
> >> +	default:
> >> +		rpm_status =3D "unknown";
> >> +	}
> >> +
> >> +	seq_printf(m, "\t%s %s: Runtime status: %s\n", dev_driver_string(dev=
),
> >> +		   dev_name(dev), rpm_status);
> >> +
> >> +	return 0;
> >> +}
> >> +#endif
> >
> > Maybe a nit, but perhaps defining a const array is better than having
> > a switch statement? Similar to what is done in rtpm_status_str(). The
> > function itself is very similar to rtpm_status_str() so can probably
> > benefit from that similarity. Can perhaps even be nearly identical to
> > rtpm_status_str() (since that is static in the genpd (generic power
> > domain) code).
> >
> > See also 2bd5306a8764 ("PM / Domains: add debugfs listing of struct
> > generic_pm_domain-s"), though I am not sure if genpd's are applicable
> > in our case and certainly look way out of scope for now. Thanks.
>=20
> See also /sys/devices/i915/power/runtime_status and
> /sys/devices/i915/power/runtime_active_kids.
>=20
> Kinda feels like the info should be made available there?
runtime_active_kids we are already printing by dev_priv->drm.dev->power.chi=
ld_count.
About runtime_status , we already prints usage count and pci device power s=
tate, IMO that is sufficient for debug ?
If it is really needed , I will add dev->power.runtime_status in next revis=
ion.
Thanks,
Anshuman Gupta.




>=20
> BR,
> Jani.
>=20
> >
> >> +
> >>  static int i915_runtime_pm_status(struct seq_file *m, void *unused)
> >>  {
> >>	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);  @@
> >>-500,6 +534,10 @@ static int i915_runtime_pm_status(struct seq_file
> >>*m, void *unused)
> >>  #ifdef CONFIG_PM
> >>	seq_printf(m, "Usage count: %d\n",
> >>		   atomic_read(&dev_priv->drm.dev->power.usage_count));
> >> +	seq_printf(m, "Runtime active children: %d\n",
> >> +		   atomic_read(&dev_priv->drm.dev->power.child_count));
> >> +	device_for_each_child(&pdev->dev, m,
> >> +i915_runtime_dump_child_status);
> >> +
> >>  #else
> >>	seq_printf(m, "Device Power Management (CONFIG_PM) disabled\n");
> >>  #endif
> >> --
> >> 2.26.2
> >>
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
