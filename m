Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FC659B82F
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Aug 2022 05:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACEDD98800;
	Mon, 22 Aug 2022 03:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21497987D1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Aug 2022 03:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661140703; x=1692676703;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b1iDRpoNSxKYX2TE8I1G0QvmBfuiwwXO1KUjAwTNbto=;
 b=CsHqJzzGBuzdk1OBmHvDQ0HuFOkRNPDsjmU58P+n3FIYOCF3rh7sR9hP
 9QXMRngjgks/AOGzKlqkmcIHcIs/PDQ5jx5tJVWeO78BU388t2FKPUTRs
 qW++o1keUHE4NojGpYtr+dfCrdwLHQfL/s/xBz+8GsRN62tibEQ2fi9CI
 Av83xbC6Hba/Fnob/fjMOew5cyfh6QtJd4RE4UkEzn4UG+gbnMcYgHpBu
 3C5RoNSakOJuCHwAJ7KH8kSKSZ5JuWav0LrfUPyymPUbpp25FzqfVLv5a
 M2OI19W0j8gWXyKmX6S1DBB5VRVgQR6bNtB+b21hq3gDn4fr/RNJhH0br g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10446"; a="290870075"
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="290870075"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2022 20:58:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,254,1654585200"; d="scan'208";a="669341346"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 21 Aug 2022 20:58:21 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 21 Aug 2022 20:58:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 21 Aug 2022 20:58:21 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Sun, 21 Aug 2022 20:58:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RiAdfXAlIrDTNUMdPrpf1J+4igPQdZTye/E1BcgvDXL2QCe7Nhqif/+TdhdFBkEk7WDi3VMbfM6pCBN1cT0haipAl82Tl4UIIyIfwQn4KRQSB5rAxK5NIuqA1ZVfBO4/+o9t6mahJVMTfEBe1T9gyggNuio1hduw3nk70XbSZxX5cztsv7tDx/d1SpWELsF4ugvxbemK8DaGPhN5+iDomTr1kOjoXIAHO8m/GVwnUC1fO0GIaCIZis1c+68PqlB6TYlV/01nMfJzFhnSX92R2zKUWQPkvQLoIEGh+8lqZ8JVF/m94MPIMeNEDQq0Z99OeRg3MDtZ1D7viSGaZIUwLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NhCXsBNkKpOlCOnBJ0cJShRJ/z1u/FfSGt+UPGuczjw=;
 b=b9H1Xjt0QQ0dJVAciM2W45mtiiYuNWRtmv2vhC8yXJj2z36oRU2baSYIx1fSNwaw+gLmzEIGl3Oez97LGQuhDXSGQXnrwsRoXZmn4lj7Ml+4slma8hLk6A2BpTjGMqHV7NJBbdq1pvqi9fkVJ08cUmwqv+7k2cZ3Bkl0jK11VkX5qg1cQeNV5/yr1X7+9/H644yq8nhtufruRt6bFizuHMUMggbEL4/Y0HER4NmEZ8qZOF58LC7PW37SHZ7s4O/Vzz2fpHfn6AxYrGH4gA8SahQGTW4ijZ11MH/WQVIEL61NbBriLf8mUnfCpmMvlslQLaWcr0k0MWsoqbHXgbx3ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM5PR1101MB2075.namprd11.prod.outlook.com (2603:10b6:4:5a::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5546.21; Mon, 22 Aug 2022 03:58:18 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::d48c:d05e:cd54:3ae1%5]) with mapi id 15.20.5546.022; Mon, 22 Aug 2022
 03:58:18 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 14/39] drm/i915: move and group fbdev under
 display.fbdev
Thread-Index: AQHYrZXKVNBSxrS6Q0KuXJr/W04SLq26WyeQ
Date: Mon, 22 Aug 2022 03:58:18 +0000
Message-ID: <DM6PR11MB31779E9C81F07983A13693F8BA719@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <d199c48526935fed374f745a98953d5f49a1c22b.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <d199c48526935fed374f745a98953d5f49a1c22b.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a95f69c4-7b65-4dda-2375-08da83f28c42
x-ms-traffictypediagnostic: DM5PR1101MB2075:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ANb5sgeOoTEETzUL6hTxj3pfrOEMLnNapuKKcvwe8rRBOH2Hjy3h6/Z2FQm4IJx6ojGqK6rncRKCMhMUA8on4iz6dLFGZDHqsJFHNLgGFzc9Jg2Ri8xy89UiA9ppA86wvtKn2jRFArWLmsfOBNPORzXYgU3VixF+OxSDsNGnSGRlEKbTd9P5VSMT0qaK4NRrMPXDibMfm6VosNrT/LPYwr0VW6rO7Nvv+Kr1jxj3DOoQsNhxLwnhOHbheDEAAx2Lk0bKhOQ06gy9FdPbvODFQutstMk4Wy7ff9RUmGJoIrpt3loK970Mm4ljvparJQ8w2dGrUzqMCGmE5XWb0i/CwbRUaLRsTq9hEV02qOJDrc1aj6rfX+9bNjH+pcFiYIxEDzVz0lqgPoQ8jDb23Pa0qHikxDBl+YR5uM1AffrB1mOya8G1UQ7rBW6cvYew1GQJfIjmXGK8+LKpRbrpXWmkI20/ZtG8kEs/X9A5UHiQIpEYjk5bm4E+1dNaiA7h75kkFg4YOFz2p7X+LDFRfyjDtNS79al5TE7emroGCAnunX/AQeyuz5uq9H6Lh/E+fdzyiQi9TSCi5W1mQV0BegJ47VTILeP3zUXZmk53jL5VjKPjz024iFeXdDT/VfHcJ3aPe1Bv5TXPA0gN7vhAb00T93/uKYFkxYKhzggKHwj9UStGtdlj+wHBJWC4oLjWq7v5Z2LAzVpgfYyUHn52Xt4Cb1+LvrrnQSX7SUo+yF1AHMAKDSShXtztkHsckWS+rC0ALHy7TtbcpihHblabF8dQ2g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(136003)(396003)(366004)(376002)(86362001)(82960400001)(83380400001)(122000001)(38070700005)(38100700002)(110136005)(54906003)(316002)(5660300002)(52536014)(76116006)(66946007)(66556008)(66446008)(66476007)(64756008)(8676002)(2906002)(4326008)(8936002)(186003)(55016003)(41300700001)(71200400001)(478600001)(107886003)(55236004)(53546011)(6506007)(7696005)(9686003)(26005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U18FtHZsit82iYfRnFfDCQscpUMEmAuPJaIPX3lyBiMyotw7vCwrWWRO5hVF?=
 =?us-ascii?Q?M/XHlOMjcyGvzKr3JedxTR/uHeth4LdN0pSDpSKX/zHiCjHKkF1zc9Vs239o?=
 =?us-ascii?Q?iXnYKIIP9ak6GL7eKBrM+cHNOW8WbB4XDk5nu/YMaso/BOuZfYacbzZG8Z7g?=
 =?us-ascii?Q?9PdoMrXZn23aPNLv0vDb9Zvr3X35xvJt68U00ZUzkWiLCqEXK1PkTyqc8HKh?=
 =?us-ascii?Q?sTpf2mbmv9eh+dwAIUMoTE4Fc0IkQy86G68Clsna44CQ4dpaSbDZef3townR?=
 =?us-ascii?Q?BEIWktdZfgoS4avqXt0hutPOEaC8434w21SeR+1HJqiePoVVnPOcMm9ssdAq?=
 =?us-ascii?Q?zB66zIFl9D6dE8FZevws1Q/6suV+cNYoP6U/7mXe1736p8T65b79jONmjkyz?=
 =?us-ascii?Q?B2Pev+wQvOy6VYfynkJF1I/TJhZNzCybKH5WjOLc0x+Y2q0jjjfSSJ++8aZM?=
 =?us-ascii?Q?HJlNaiPV/tH8I0OVLt9LXQqxaXhC4LmlqTIpFyKplJdpchqJcMXbjtmk8n6V?=
 =?us-ascii?Q?+IAMMcItLC/htqOgLlMnW4zPEpMhB8Y/ttCKmAzY+GEs8Yvd3sbWofhBeajY?=
 =?us-ascii?Q?EIAZr3DOT6JjRZbEUAKfrUdGTgP5NSQrkS9dYBVcYSNJXXO92rdnYIz4A3zj?=
 =?us-ascii?Q?A8adZVPwGlA4bPxEfPBtLHGXPw7OzOFdd3Sej+OjtNSOV77rrlBqh00sDAMZ?=
 =?us-ascii?Q?crYlONhOydmkQVK6qwSxRGfNzlWzM5U6dYcIhN+WRyHa7UzkO7n/u1K63Fkl?=
 =?us-ascii?Q?X/Hbs3BJKKruBvZTU78UDEoLL0oIYcFWJmJWRNtZPmOrbNATTFxMfqC3nFq8?=
 =?us-ascii?Q?vdLwxg57270WZpZnZfdv+UyxW0tq696hJNq/R78vCpzmtCBpdp51rJl5uewX?=
 =?us-ascii?Q?UvAbG31CYaGvrO4aprAnczpHClkvAi6EhLg4ouA/898bBAd356F5FszqLpLo?=
 =?us-ascii?Q?qODcmzwoSUUcqXOsCOHZAgsFqPLdi8p66v1ME8UpYDAAgxCCavQy3dQKZP6m?=
 =?us-ascii?Q?Iip46VExliOrLYI2yrTyh0uBqADWG8ecubquiCb16tyawiXqC+5wfTdiIY/3?=
 =?us-ascii?Q?2QhFXx9pshgjxy5LRjpqBrHf6nSHjT86oWOw0F7XvO8XKucUW6gKHXXmHNVu?=
 =?us-ascii?Q?HQGXcBmT8I7XU3COcFiaIyApi1L6pjazXAQHd21FgOy7tFiwLYTlodYE7AmY?=
 =?us-ascii?Q?uP/jJgGRJFHBQy2cA+xa7vUUQ3GUMZ/sLNOOHuxbTzlB2SlBL9ju/Nt+FAnV?=
 =?us-ascii?Q?awxugA7oXDnTc+3tyqxAkq8GOImLd2pWZZPcEurOfx6/RzIzyHaVVGtn+cmJ?=
 =?us-ascii?Q?PICGIRdIXixnoPSSMq8DqD/Dr3CG2TE5nTlc/TEU7ToIHrFctxKwwAkprHCj?=
 =?us-ascii?Q?jMmyNEHYCR4IyV8YT4oebl75xACj3X7KPYnsHPu6SwTQcYDxRUsQ8NmmdC3G?=
 =?us-ascii?Q?SnTIouaswCeKCn+pnSUvdb1Y2XwRfGqSbUyj6+AG14oe48Z1wvZTd0bOhV9p?=
 =?us-ascii?Q?uecfS3bfcb5JxDMDinvTJMl+1X/IppcyzwoRhzDvGHdyZLYBuq/vr7Ozzo3T?=
 =?us-ascii?Q?ZdZhrfv1V0GWx3QeazRkQljomW7pGy4L0RRhSQf/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a95f69c4-7b65-4dda-2375-08da83f28c42
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2022 03:58:18.4503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UUFEdbbUGRJamq6eAG5oTPaCisdLgnAaUIxOJcM/Dce9SlJDQiceHwIK7rELIMueH6DkxUdybt8OyV6a3s6I9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2075
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 14/39] drm/i915: move and group fbdev under
 display.fbdev
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 14/39] drm/i915: move and group fbdev under
> display.fbdev
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by:  Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  8 ++++++
> .../drm/i915/display/intel_display_debugfs.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_fbdev.c    | 26 +++++++++----------
>  drivers/gpu/drm/i915/i915_drv.h               |  5 ----
>  4 files changed, 22 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index f12ff36fef07..71434a922695 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -9,6 +9,7 @@
>  #include <linux/mutex.h>
>  #include <linux/types.h>
>  #include <linux/wait.h>
> +#include <linux/workqueue.h>
>=20
>  #include "intel_display.h"
>  #include "intel_dmc.h"
> @@ -26,6 +27,7 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_dpll_funcs;
>  struct intel_dpll_mgr;
> +struct intel_fbdev;
>  struct intel_fdi_funcs;
>  struct intel_hotplug_funcs;
>  struct intel_initial_plane_config;
> @@ -130,6 +132,12 @@ struct intel_display {
>  	} funcs;
>=20
>  	/* Grouping using anonymous structs. Keep sorted. */
> +	struct {
> +		/* list of fbdev register on this device */
> +		struct intel_fbdev *fbdev;
> +		struct work_struct suspend_work;
> +	} fbdev;
> +
>  	struct {
>  		/*
>  		 * Base address of where the gmbus and gpio blocks are
> located diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 7994f78b889a..e568590faa82 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -129,7 +129,7 @@ static int i915_gem_framebuffer_info(struct seq_file
> *m, void *data)
>  	struct drm_framebuffer *drm_fb;
>=20
>  #ifdef CONFIG_DRM_FBDEV_EMULATION
> -	fbdev_fb =3D intel_fbdev_framebuffer(dev_priv->fbdev);
> +	fbdev_fb =3D intel_fbdev_framebuffer(dev_priv->display.fbdev.fbdev);
>  	if (fbdev_fb) {
>  		seq_printf(m, "fbcon size: %d x %d, depth %d, %d bpp,
> modifier 0x%llx, refcount %d, obj ",
>  			   fbdev_fb->base.width,
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c
> b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 221336178991..c08ff6a5c2e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -500,7 +500,7 @@ static void intel_fbdev_suspend_worker(struct
> work_struct *work)  {
>  	intel_fbdev_set_suspend(&container_of(work,
>  					      struct drm_i915_private,
> -					      fbdev_suspend_work)->drm,
> +					      display.fbdev.suspend_work)-
> >drm,
>  				FBINFO_STATE_RUNNING,
>  				true);
>  }
> @@ -530,8 +530,8 @@ int intel_fbdev_init(struct drm_device *dev)
>  		return ret;
>  	}
>=20
> -	dev_priv->fbdev =3D ifbdev;
> -	INIT_WORK(&dev_priv->fbdev_suspend_work,
> intel_fbdev_suspend_worker);
> +	dev_priv->display.fbdev.fbdev =3D ifbdev;
> +	INIT_WORK(&dev_priv->display.fbdev.suspend_work,
> +intel_fbdev_suspend_worker);
>=20
>  	return 0;
>  }
> @@ -548,7 +548,7 @@ static void intel_fbdev_initial_config(void *data,
> async_cookie_t cookie)
>=20
>  void intel_fbdev_initial_config_async(struct drm_device *dev)  {
> -	struct intel_fbdev *ifbdev =3D to_i915(dev)->fbdev;
> +	struct intel_fbdev *ifbdev =3D to_i915(dev)->display.fbdev.fbdev;
>=20
>  	if (!ifbdev)
>  		return;
> @@ -568,12 +568,12 @@ static void intel_fbdev_sync(struct intel_fbdev
> *ifbdev)
>=20
>  void intel_fbdev_unregister(struct drm_i915_private *dev_priv)  {
> -	struct intel_fbdev *ifbdev =3D dev_priv->fbdev;
> +	struct intel_fbdev *ifbdev =3D dev_priv->display.fbdev.fbdev;
>=20
>  	if (!ifbdev)
>  		return;
>=20
> -	cancel_work_sync(&dev_priv->fbdev_suspend_work);
> +	cancel_work_sync(&dev_priv->display.fbdev.suspend_work);
>  	if (!current_is_async())
>  		intel_fbdev_sync(ifbdev);
>=20
> @@ -582,7 +582,7 @@ void intel_fbdev_unregister(struct drm_i915_private
> *dev_priv)
>=20
>  void intel_fbdev_fini(struct drm_i915_private *dev_priv)  {
> -	struct intel_fbdev *ifbdev =3D fetch_and_zero(&dev_priv->fbdev);
> +	struct intel_fbdev *ifbdev =3D
> +fetch_and_zero(&dev_priv->display.fbdev.fbdev);
>=20
>  	if (!ifbdev)
>  		return;
> @@ -596,7 +596,7 @@ void intel_fbdev_fini(struct drm_i915_private
> *dev_priv)
>   */
>  static void intel_fbdev_hpd_set_suspend(struct drm_i915_private *i915, i=
nt
> state)  {
> -	struct intel_fbdev *ifbdev =3D i915->fbdev;
> +	struct intel_fbdev *ifbdev =3D i915->display.fbdev.fbdev;
>  	bool send_hpd =3D false;
>=20
>  	mutex_lock(&ifbdev->hpd_lock);
> @@ -614,7 +614,7 @@ static void intel_fbdev_hpd_set_suspend(struct
> drm_i915_private *i915, int state  void intel_fbdev_set_suspend(struct
> drm_device *dev, int state, bool synchronous)  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_fbdev *ifbdev =3D dev_priv->fbdev;
> +	struct intel_fbdev *ifbdev =3D dev_priv->display.fbdev.fbdev;
>  	struct fb_info *info;
>=20
>  	if (!ifbdev || !ifbdev->vma)
> @@ -631,7 +631,7 @@ void intel_fbdev_set_suspend(struct drm_device
> *dev, int state, bool synchronous
>  		 * ourselves, so only flush outstanding work upon suspend!
>  		 */
>  		if (state !=3D FBINFO_STATE_RUNNING)
> -			flush_work(&dev_priv->fbdev_suspend_work);
> +			flush_work(&dev_priv-
> >display.fbdev.suspend_work);
>=20
>  		console_lock();
>  	} else {
> @@ -645,7 +645,7 @@ void intel_fbdev_set_suspend(struct drm_device
> *dev, int state, bool synchronous
>  			/* Don't block our own workqueue as this can
>  			 * be run in parallel with other i915.ko tasks.
>  			 */
> -			schedule_work(&dev_priv->fbdev_suspend_work);
> +			schedule_work(&dev_priv-
> >display.fbdev.suspend_work);
>  			return;
>  		}
>  	}
> @@ -666,7 +666,7 @@ void intel_fbdev_set_suspend(struct drm_device
> *dev, int state, bool synchronous
>=20
>  void intel_fbdev_output_poll_changed(struct drm_device *dev)  {
> -	struct intel_fbdev *ifbdev =3D to_i915(dev)->fbdev;
> +	struct intel_fbdev *ifbdev =3D to_i915(dev)->display.fbdev.fbdev;
>  	bool send_hpd;
>=20
>  	if (!ifbdev)
> @@ -685,7 +685,7 @@ void intel_fbdev_output_poll_changed(struct
> drm_device *dev)
>=20
>  void intel_fbdev_restore_mode(struct drm_device *dev)  {
> -	struct intel_fbdev *ifbdev =3D to_i915(dev)->fbdev;
> +	struct intel_fbdev *ifbdev =3D to_i915(dev)->display.fbdev.fbdev;
>=20
>  	if (!ifbdev)
>  		return;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index 482a8c0d5a10..f1e47090c01e
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -82,7 +82,6 @@ struct intel_cdclk_vals;  struct intel_connector;  stru=
ct
> intel_dp;  struct intel_encoder; -struct intel_fbdev;  struct intel_limit=
;  struct
> intel_overlay;  struct intel_overlay_error_state; @@ -474,10 +473,6 @@
> struct drm_i915_private {
>=20
>  	struct i915_gpu_error gpu_error;
>=20
> -	/* list of fbdev register on this device */
> -	struct intel_fbdev *fbdev;
> -	struct work_struct fbdev_suspend_work;
> -
>  	struct drm_property *broadcast_rgb_property;
>  	struct drm_property *force_audio_property;
>=20
> --
> 2.34.1

