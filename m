Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5E475ABB3
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 12:12:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D5A10E0CE;
	Thu, 20 Jul 2023 10:12:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A881110E0CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 10:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689847944; x=1721383944;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JOwj8XKpiDqw4BlKkyZFF4O8bVwUAkxb39VObZUKHyc=;
 b=K9NWzOUIxtt0tuE4KVHSCjoOnsKr3RBotjEZuVPBpA/MNC/GL4gSuolW
 SAx5LKiclAO+hz9HM9GY1K5PB6wcJNY4KW4rbEOmWjJrv2xjakLqno23B
 RezIZpv/TAkmThyIlwtlrw6ebfC4FccDDWhEND/hNv+XvVWwOurd2gSTT
 NVINoP3WaM/QsabLcxsGuIhncaRe+OFQ7Dn9e0CCNe1ofSo71s7VBlJQy
 x2iAGs3z5L/oZV9ThQcqb8Xg83i+pS6KZ17kmlQRk6cpVuzcKUZfxIcI3
 59zDQB/KW3/XCXkdgKzm3ogBxbL8c87fr/Bv4ebpNUmQw0VxC3jgvRfq8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="430459876"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="430459876"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 03:12:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="759521647"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="759521647"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 20 Jul 2023 03:12:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 03:12:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 03:12:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 03:12:23 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 03:12:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WWKfOSNfdxNDnVy+VKs0TLAylmAM8mKAz7vMqmiHz7rjff1F8iukHiAIVZvAV8IrPwK2yd8x9MijBnJZhhh2ivrakrDKtND4UdSZb4stYkKp3n600hX91ySlDNpCt4r02sN26Q5rp1VYLCv7/2TyWrIPPHACARaIlPDEf0OnD/fSCsS/NAn4U5k60OznByUkjOssKNQukSXVqgA/XFM9hA8Ewp6Hyn3Y/4+YkJgqFcIvysQgbG5INRuW7EbWN/uEl60jQRDKTUI14pOn67HtDQ9mKXlq0BS0rk7AryhGx5oLVXxsZaLR1fHw8dBFdILb6vM72HyfhW8ZG58tiulnnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ta3edhV9g66s9m6h1QvSNjir8VNNd5jxS1TxxJLqEEg=;
 b=aVN/v1HObQqAQLO92nSSWPvUrvJzta1+L8DOaZCa9sNQs0H2Kt13QGHN30jn0nMRiDrLlIWkhqQOf9ECZKkIBeK+SF1pR47X5RkvRlfzuYF38jmmnWDHbF6p7I40tSkhVS7Q6OgoOVPJLSNOK+DZGC73R29YbnMBQXFKN9ua9XyYUrE6A+VqgNIsyYjJRwnyXnhzjkVXmWrHuCBbbduJlA7heviJzX70L68uWvrCJCxTj80/EoL9gukfEUdkcx1uv0tHOMTAM9Z6bqBA5JZsIp4aoLKlF7E0S06+TgDkq7z15HHwUBNXavmrAGzCPeO51K/8lXm5UmB1YI7YialBvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB7754.namprd11.prod.outlook.com (2603:10b6:208:421::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.28; Thu, 20 Jul
 2023 10:12:20 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::5793:4b53:8813:e10e]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::5793:4b53:8813:e10e%7]) with mapi id 15.20.6609.024; Thu, 20 Jul 2023
 10:12:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
Thread-Index: AQHZthqWW40xYqIPukijkzRffbcArK+9tL+AgATD4QCAAABBIA==
Date: Thu, 20 Jul 2023 10:12:20 +0000
Message-ID: <SN7PR11MB67503704E6F68D0F0A02E7DDE33EA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230714061339.2897609-1-suraj.kandpal@intel.com>
 <20230717092425.2971227-1-suraj.kandpal@intel.com>
 <DM4PR11MB6360E332807BD0121B4A4777F43EA@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360E332807BD0121B4A4777F43EA@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB7754:EE_
x-ms-office365-filtering-correlation-id: 298a1e9f-2ee9-4ecb-e257-08db8909cdc5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lkEA29LHQqZBEx7PYPQWO7cggbwKP6domZ2pgis4pxRobVfmzbo1LvgBuwTpIekL77Rf3lXm7vGSz1jB0J264CfvgtXF9pW1a14Yw+L+tZJD5a6nsGsB+2648We29k1UzZLQIUPpkKqBpGlakHAA2hrxP0h9K5lwc5CJEUGF1QFMzD183xszXj/AZhXSQbgh7xGOfcX2RDt0hI7IWl1SXPo2++xrdGRQXS+4n7clWIU/R/eH+LR/JVZV6v6wkdyw0e3DculWpvXtKlPfx3LpbIuGiNQRL+4DgN9I1VR8oXAiNLvC0ZIE070YaJ+0ZC7gAgnKvXw6mPGn5u4GpYGEg9ZyUIY0BAYWkPt03DFUZNkXENA3rOUVxWznCvJStKT+HxlgL6nio1hxxFi1+AnC+pmBhIXoCoEY4L4UzhHkbvTRcOhJ+MGpgtkBNuox6oenlhzq6Jz2IEYHK9LSX4Ahqs8JPr+tFeoU2GsZ/HOX0yXLD1eyVOegdUpfoWqwfjiUlFl1PyzGlUgTq5qZWPrbxFfWPu7SO5ryHWCnQArG2FHUwHtZ6X9cBFzb/f5SzB9WL3aKpdHH7N4nYbzC1zT7gpJwCtfNanOd/FS3t3eY4ko=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(346002)(376002)(39860400002)(451199021)(76116006)(2906002)(110136005)(7696005)(26005)(9686003)(186003)(71200400001)(83380400001)(6506007)(5660300002)(53546011)(52536014)(33656002)(82960400001)(38070700005)(55016003)(38100700002)(478600001)(122000001)(8676002)(86362001)(8936002)(66556008)(66476007)(41300700001)(316002)(66446008)(64756008)(66946007)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VgVlTtaXvLssWGwzsbF1+upt1Op38MjG8NmlfAmwlYfTT6mLK/h38HSJS3aS?=
 =?us-ascii?Q?gdNIiy8avvzngn72p6HsnIQfi+DUODSJCz4dlIw1Z3svBy4sivjcNOOV5iE2?=
 =?us-ascii?Q?yqom2US+Yn/4ooh7EE8w+G0morzLJrhsO0FCS5c3V6tZJY5zMmDV8eVg5vJT?=
 =?us-ascii?Q?2Zo1bL2LPDg23i85QmfobVuJZ456AVeifWt0EmFLqCXtx9QwakERm0BfKzTY?=
 =?us-ascii?Q?cPh+51pYNZJQrh7TrYIQMbAMxjCNKXqAM+3gPg6Mq5Vr9wLXAp6VL4Gauqkx?=
 =?us-ascii?Q?mQ/cIYb7MU6ssyCNciYohPrMdDn7eSAo5jP74F/Kj+UeXuJEwttTqKocGeaw?=
 =?us-ascii?Q?MIbM4YUjc/edyQyhQ7okPSPn9WdpbmlHKGtk6CszbMiCBkhKJWIU7tP2Jnso?=
 =?us-ascii?Q?8l+NW3P45BIWDcTK/Dz/85AXWd3DNxyqhNPw33cjz4BfMQqXYpjvKvsSt1OL?=
 =?us-ascii?Q?yka2uC9WFuwMBcjxEqGZoeHKCdCayhSInkEvX8Vs+ghQRUo7He2Ro+8Kxk7v?=
 =?us-ascii?Q?JjMHJd1pZK75c2q/AX6RpDwZNE/5b4DyoeIAEM5nBsGJ/bJgTayhsXkODAXi?=
 =?us-ascii?Q?0MeZcMlDNqAZHbcfTUIA24GKu59Nzxsw8NqYB7MRl/dohYxZr2gurcT0is28?=
 =?us-ascii?Q?fST+ET8udl1M0rq4s71utbKwEE1Gb9jxlVWKyqeNr/6S9IEl3uEP26NuCEnK?=
 =?us-ascii?Q?OKo+6tY3dKAk5i9JQFeqbVGutU5EzUTzAP48a0OWvE8UZiUNSbrO08HhTMT5?=
 =?us-ascii?Q?Z3JvGNDs/6n4fiUJ8lIVms48H42j5vHGtZhEx7jn2Xf+nPZO+m6OxzYImNyu?=
 =?us-ascii?Q?PJpCEHmHL03kmj4Mj4fx8V9c60mMU0UI+L3mlafE5nLHADvLqa1Gc0s7Cm7K?=
 =?us-ascii?Q?eJ6Jt/s714VAydx4cbKg0SEW36Wr8EeAxLTzaap3zf6U3mhgiQ/OypZCXxOd?=
 =?us-ascii?Q?QE3ofWEnLxcdc82ct/1kqgZWupoNjdc0uHvYIx+80KzZj47OriXUBrOkr6TD?=
 =?us-ascii?Q?s+o82uZWvECYrBs/wXzZlBXCiZH3boOiI8SUZ3eR+0c1kxqRosAMGqcOzRu4?=
 =?us-ascii?Q?VghO0g72TroHa5XPF5Q16VWZzNyh5IRN5hSSRR6hdtBYy+rZzC43RAtWdOt7?=
 =?us-ascii?Q?3dpwnDlQ2fVAL9ETICnk5eaJf80+A/ne3ktYNbpzHLD4skyzs45iXcvF20X1?=
 =?us-ascii?Q?Ln9i0xb9Yvp9aZmEnmv8nrRpwjviHA2k6fSPXMQDM1nInv0uf7J3MEkPHsNY?=
 =?us-ascii?Q?c+JCS8gdi9+dh+dvgJk5ibVMvyA9zrLLHDpwtW0ei6Vr53a3hnpTJf4cPt6Q?=
 =?us-ascii?Q?8zcUfwBfc4PXtenoM4UzPoYHVByitdIxVg9ApG/ajrBad58+k/OYBwgnBEC0?=
 =?us-ascii?Q?pHm8Zym8PZ93b5lc+wjlTem7+PdrUSEVnPp/RL7VA4jvYW1KqBUxn9eJeAIt?=
 =?us-ascii?Q?VppbVUocXlAP1ZouZdY9Qt0TfVlam+gL7Ih4WOs9ucksgKitQWdsp4md89xT?=
 =?us-ascii?Q?hsSXzswy+4CJv4U1Qg7XHME2DWVr8kqbq/7gzFPCCXWhDTWaAe4NtqubOTyA?=
 =?us-ascii?Q?I536mgVsmFqKKEpmYxj7fXWSiRv0XfcXrxlZgSCk?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 298a1e9f-2ee9-4ecb-e257-08db8909cdc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 10:12:20.2898 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z1sJ9baC9X/sXmJ1vKBKv5/iIVB7Hz4OidfV73HIbu0HryfUjLykF1XNC4OmnAg9mvc6n0Y6zqHAJezgAeFLOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7754
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to
 250us
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

>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Monday, July 17, 2023 2:54 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Ville Syrjala <ville.syrjala@linux.intel.com>
> > Subject: [PATCH] drm/i915/hotplug: Reduce SHPD_FILTER to 250us
> >
> > On TGP, the RTC (always running) was reduced from 3MHz to 32KHz.
> > As a result of this change, when HPD active going low pulse or HPD IRQ
> > is presented and the refclk (19.2MHz) is not toggling already
> > toggling, there is a 60 to 90us synchronization delay which
> > effectively reduces the duration of the IRQ pulse to less than the
> programmed 500us filter value and the hot plug interrupt is NOT registere=
d.
> > Solution was to Reduce SHPD_FILTER to 250us for ADL and above.
> > This solution was derived when the below patch was floated.
> > [1]https://patchwork.freedesktop.org/patch/532187
> > and after some internal discussion Ville's suggestion made sense.
>=20
> Looks Good to me. Just add also a Suggested-By tag mentioning Ville.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>=20

Sure Uma will do, can you also help with getting this merged

Regards,
Suraj Kandpal
> > Bspec: 68970
> >
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 4 +++-
> >  drivers/gpu/drm/i915/i915_reg.h                  | 1 +
> >  2 files changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > index f95fa793fabb..95a7ea94f417 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > @@ -842,6 +842,8 @@ static void icp_hpd_irq_setup(struct
> > drm_i915_private
> > *dev_priv)
> >
> >  	if (INTEL_PCH_TYPE(dev_priv) <=3D PCH_TGP)
> >  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> > SHPD_FILTER_CNT_500_ADJ);
> > +	else
> > +		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT,
> > +SHPD_FILTER_CNT_250);
> >
> >  	ibx_display_interrupt_update(dev_priv, hotplug_irqs, enabled_irqs);
> >
> > @@ -1049,7 +1051,7 @@ static void mtp_hpd_irq_setup(struct
> > drm_i915_private
> > *i915)
> >  	enabled_irqs =3D intel_hpd_enabled_irqs(i915, i915-
> >display.hotplug.pch_hpd);
> >  	hotplug_irqs =3D intel_hpd_hotplug_irqs(i915,
> > i915->display.hotplug.pch_hpd);
> >
> > -	intel_de_write(i915, SHPD_FILTER_CNT,
> SHPD_FILTER_CNT_500_ADJ);
> > +	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
> >
> >  	mtp_hpd_invert(i915);
> >  	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs); diff
> > --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index dcf64e32cd54..aefad14ab27a
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4939,6 +4939,7 @@
> >
> >  #define SHPD_FILTER_CNT				_MMIO(0xc4038)
> >  #define   SHPD_FILTER_CNT_500_ADJ		0x001D9
> > +#define   SHPD_FILTER_CNT_250			0x000F8
> >
> >  #define _PCH_DPLL_A              0xc6014
> >  #define _PCH_DPLL_B              0xc6018
> > --
> > 2.25.1

