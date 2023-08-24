Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26258787979
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 22:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E36F10E0BC;
	Thu, 24 Aug 2023 20:40:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F15610E0BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 20:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692909648; x=1724445648;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3Qu7EDZjW6um30tk4FRJy5mvYvhoRFBDqSEKoB9tltw=;
 b=PvqDBiVI60Z8p4ufdsAAHFXAOtIcbO8xvmp/onjSULzlIW1evEoP3d4C
 jpdmSqyBR9jcSuKOot4ysJ8EEFi7dQfq3Iqe34W6/+K1womPIu1lrcOZA
 y6+nQ1HTvhmy0W/X2w+cqFkdJoi67onF2U6xecQm9x/fVCr8wbkvFRB3u
 vmKxoZIPn7I0N1k2cyiOcV8JA46dGWwJxyyGrIWQAKkLDDLZIMnQIUo7q
 8G46fi2NkkSZcO2FRSnw6cDh0k22mlsCBBfF45drz/WD3tnx8yDl9ySLu
 wbT4RpJYxNBtYgF1Wws4wJ860QySg6z036ovWpex2alW9/0XhzIO1FSLZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="440903759"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="440903759"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 13:40:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="983851299"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="983851299"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 24 Aug 2023 13:40:47 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 13:40:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 13:40:46 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 13:40:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8ws5UpOeRd9cArb7ASxJCcgffnvrOQQ4CB1bCUQNUAUdPf8x6SZ1KOJu22t6sLRhju4eui+XKCH27i0+S2vY6LvWBMSWg6srYTFAk3pjREHdbGS93kszzeNNzSZgstzXOASPZcjg7XRqOMShDRNVE11SFSM387efVCSOixbwWKMQcS3G7CdIwQYF4AuUO+fumF9xeAzZAY/rUm4edPeAGMT9GBPN3bMlxJx7OZECKxfu6pOh6+SRI/3LXbH3cxxW37WnGRVXBPA6uC33uyssmHfCdL60N7HufG8uRxxLhfby0WmycRQGpa90y3UE2XPYnJGGHIO/inR8JK/m2Mmxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+mqKPoHg7DPCkiyRzA1GHdwZgJoeDSuQOe41li70iGs=;
 b=XAH0n5lp13KUJmb+az7WkOYBfW1D0dyqQm8TaGXbQCTLFBKknLZl0xFRVVL5gFLjdj2zJPD54BX+8ikSitMh9QHP7/4fJ9xuJhC2FXMXIMRP1389889lvNw0CIMD7WENo1I0F/XamqRI5JIWgzoLsnd0yfv7/OoP8i+89m4Jd2v9E2VxTXVxAe7TnH/0o254wRxtpCRaJSghEUwwJ9OCO+M3j1QG6ZT7hDwcilb0c7PBLOASEQ+E2m/2Qni6ANl2ibPXOmeufPSzw5arQm73rBb4XrODV70wu1CK1M9+n3Rud3yfRD0UUDWbYj/GkrFbKKrOCb3kDm/QGJqLtNu2LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB6991.namprd11.prod.outlook.com (2603:10b6:806:2b8::21)
 by PH7PR11MB7098.namprd11.prod.outlook.com (2603:10b6:510:20d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 20:40:44 +0000
Received: from SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c]) by SA1PR11MB6991.namprd11.prod.outlook.com
 ([fe80::18a2:59e7:4541:b61c%3]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 20:40:44 +0000
From: "Zeng, Oak" <oak.zeng@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Enable GGTT blitting in MTL
Thread-Index: AQHZ1Qym/L6f4NoiD0uXZ4JUZSNuaK/5nDMAgABPZzA=
Date: Thu, 24 Aug 2023 20:40:44 +0000
Message-ID: <SA1PR11MB6991C0F664EC091C0949DA5C921DA@SA1PR11MB6991.namprd11.prod.outlook.com>
References: <20230822152859.1586761-1-oak.zeng@intel.com>
 <20230822152859.1586761-3-oak.zeng@intel.com>
 <20230824155340.GS1529860@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230824155340.GS1529860@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR11MB6991:EE_|PH7PR11MB7098:EE_
x-ms-office365-filtering-correlation-id: fe8b596d-d4ee-451b-2011-08dba4e263bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DEFUNwoiH/juJfA/FZZxhCyh4L9J/MSXtYovzDrDpR5DZXI1t5mIzkPTgRN/kvBOYC3CPy4K0LNZg1gf8SbAz0VLlo8csRyv7GKfRgBsDErcVSHGuSYCIVDh/lCmddKAxI/FyxJAZZHd8lBe8bmMxoSBX3sPBvEC6Pg3kVkegkptgZtwovDmyeGx3V/LscMp330c6zhHAjxBQYuurHr5arPKoEpk2h/ToFwpj8TCLWxExn20u5qM6LhdZs6YZZSbToHPYopLxcvb8CFs4JIOCk/XH2eCOsORTAohUlzsEimOwDXuHnEH69iFl6mk9VeL3fwQLBxFohxMe7XEHvlfEr+5dF6GKkMVengvpaXLDd3dTDSkWSfIZ9ChlbISwDow2Mr0zRCo+Eu6lvZAe+SiKAj4FlaNFUcHtrBtWeDS4MzEAJbV995DbIFqZ/ynKnM55JkMVPeBrmyMn1BkqHlc26lioHidKyxXbO52HVNE+XB+W7HRCFd6pZwxO8ghZvO29YEOQXjDJ7a6n6WkafliPVsNvwzK7N0BUvb/FkxXIVtOkIbQf4zdqb7zPRYQ9J/kPuwhsfqckrPQLIlaYr9BKhQAmu3QORCRdK0p79H9Gexk9mGn0OSiaotlzDrQ4pbt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB6991.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(186009)(1800799009)(451199024)(52536014)(66899024)(5660300002)(8936002)(4326008)(8676002)(6862004)(83380400001)(33656002)(7696005)(55016003)(26005)(71200400001)(38100700002)(38070700005)(82960400001)(122000001)(66556008)(66946007)(66476007)(6506007)(54906003)(64756008)(66446008)(6636002)(76116006)(316002)(478600001)(53546011)(41300700001)(2906002)(9686003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WeIxh25DDW4EUfjzdX0AEIzaLN1bU0rT6Ui5S7e6pERIJiIHskMjZg1AFf0X?=
 =?us-ascii?Q?fhM5dHB4S8l5zUb9FxKKcbKcvvkurJeiC+cgUCZkCdIud73GzE+MYASGLLhC?=
 =?us-ascii?Q?RqP3PFFWQzycHzIXkpbWG84zLr0sHQMSc1Hfpq6covucOZjITsMxJeZF4xEY?=
 =?us-ascii?Q?fO8K4QySua5DTOEgvyW2/dF9RE6RsVxKR7IWVIEcD9+/zKxpv69MIk45U3VD?=
 =?us-ascii?Q?qT2Za3FAfNGLlB07E8xD7SnzVA7zCX7dDM3j0316/zREgWRsnvGphwwbpM3S?=
 =?us-ascii?Q?9gywUEDWTkycQBRLbFnd7irNYZCUd7LvpxcNs1d5EP7++rael4omI4pArFYw?=
 =?us-ascii?Q?XDf7sTPvGqP6irOMK5O9B2lrebTV3npgiU9BpbF4SZyXYaaFYHKfcAqXSWLL?=
 =?us-ascii?Q?9O5mppl8ybD843a2s6upMMOknZciRUqpinArKiPo4SQVcDuf8k2ae2WHxS1c?=
 =?us-ascii?Q?Pg456Opt7XVYIBz3hD3bQmafRGznYmMX1l72066HwCWEwR1ONH3aMoiq5Y+Y?=
 =?us-ascii?Q?Shl3Zgtvn35xOzY2uiSM9x3gXD/fBNyoTeHZTYAIG2WRh19qHZRYEY4JfzDr?=
 =?us-ascii?Q?puO7QxW73Rog9oSfDmAsPE4rnAJr0saSAhV9ybP8hS2PtmFBhhfFJmseziAY?=
 =?us-ascii?Q?1mIHsqesPwDnjnDCwNjqaikWjihym47yOv+IE7NyImOJvdmcy1LD5UrvO6ji?=
 =?us-ascii?Q?O0zsvSEXSH5+UCzakNwr0DCK6nZ9lWh186ahHVPJihsS7l2Dk4yRcfuh1DBx?=
 =?us-ascii?Q?Y5CH1YJzDCiBe7ZD3bxrkAq5yT/bZ+YyIbMtJbGrrZLj3Pc6oxYK8kdhJhIp?=
 =?us-ascii?Q?Y/iqfSDTSBom1WZoTSPrC2xpbuGlV8Od6WtK7gmHT4rIZSajJ81kuEy7ojDA?=
 =?us-ascii?Q?vczXnRQMy7rwqPOXn/MNx/jNzznEEBvJ3jCTCmfFTeXcavFpshCDnZeAu5q4?=
 =?us-ascii?Q?vyX6BN914hpm+xI1xsGlaTBtyclGUWfktNkJmpiourYbFahHthDh3yZuGG3g?=
 =?us-ascii?Q?lM2Hn1I7p7pIPfK4xqa1696Uby6O/6N6SY97Yw7wjnFKO85IgZHisbrdsb0K?=
 =?us-ascii?Q?u3dK0dhqeHEg5/GOD8edsD6N0EZuZi7NVM2idPc8LEilEnKShR8Wwf5ra85h?=
 =?us-ascii?Q?oKel3onmFkSmL+kN8I/buApbQUmH0k8pxX+H0xSTyNVS2wt/e5FgGd0dskqh?=
 =?us-ascii?Q?mqPDIiiSDMvu6Y7CadirnTsJ0c8rE1yanhUU1y3F8VP+RhGGEZn94Rc1ed6X?=
 =?us-ascii?Q?IfAx4kfu2dk5iEQyBpZ0w0ZUKUI7sIsCVk1vx/bUzZhKcrFFmMkjW/OhvQWw?=
 =?us-ascii?Q?Retu8vFg3G2GOU/RWDGS5RW90ZkgCcEO8/2gQQ6rF1GKLClNpr05QX0YZ7wE?=
 =?us-ascii?Q?fIz6zSypN4XLGtHm8Zv2DloJKCbCKIgSSS0uEWzDjhnHHLYxwxpZAkDisEzV?=
 =?us-ascii?Q?hDyhYdZUN0/pRB8QGlNNQ4OPSkoxgFwpN54wzRBNluteUp6ofGyRsUdjoVP5?=
 =?us-ascii?Q?avw9/ck+/efup65CFMahlM5drrqYhy+yi8RpQqk1C/B+6qHB1P2y4gLYqzUt?=
 =?us-ascii?Q?doSTb4OwNMxPbuw1VEU=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6991.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe8b596d-d4ee-451b-2011-08dba4e263bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 20:40:44.5836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PzJl/9PJ/D/4szWFTdLQ7cgkDvxaBpyUCurs6KQZYq9wFhkrdDHncLVEj2U3cXKoXjpnAJ5GmqdAcpEY2sJ3mA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7098
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Enable GGTT blitting in MTL
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
Cc: "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Shyti,
 Andi" <andi.shyti@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



Thanks,
Oak

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: August 24, 2023 11:54 AM
> To: Zeng, Oak <oak.zeng@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shyti, Andi <andi.shyti@intel.com>;
> chris.p.wilson@linux.intel.com; Das, Nirmoy <nirmoy.das@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Enable GGTT blitting in MT=
L
>=20
> On Tue, Aug 22, 2023 at 11:28:59AM -0400, Oak Zeng wrote:
> > From: Nirmoy Das <nirmoy.das@intel.com>
> >
> > MTL can hang because of a HW bug while parallel reading/writing
> > from/to LMEM/GTTMMADR BAR so try to reduce GGTT update
> > related pci transactions with blitter command as recommended
> > for Wa_22018444074.
>=20
> Drive-by comment:  this isn't a valid workaround number.  22018444074 is
> a per-platform record number, whereas workarounds should always be
> identified by their cross-platform lineage number, which will stay
> constant if the workaround winds up extending to future platforms as
> well.  So in this case, the workaround should be referred to as
> Wa_13010847436.

Spoke with Matt offline. Will keep lineage number 13010847436. Also put a s=
oc HSD number 14019519902

Thanks Matt for explanation!
Oak

>=20
>=20
> Matt
>=20
> >
> > To issue blitter commands, the driver must be primed to receive
> > requests. Maintain blitter-based GGTT update disablement until driver
> > probing completes. Moreover, implement a temporary disablement
> > of blitter prior to entering suspend, followed by re-enablement
> > post-resume. This is acceptable as those transition periods are
> > mostly single threaded.
> >
> > v2: Disable GGTT blitter prior to runtime suspend and re-enable
> > after runtime resume. (Oak)
> >
> > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > Signed-off-by: Oak Zeng <oak.zeng@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> b/drivers/gpu/drm/i915/i915_driver.c
> > index f8dbee7a5af7..6afe0adc8ddb 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -815,6 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const s=
truct
> pci_device_id *ent)
> >  	i915_welcome_messages(i915);
> >
> >  	i915->do_release =3D true;
> > +	intel_engine_blitter_context_set_ready(to_gt(i915), true);
> >
> >  	return 0;
> >
> > @@ -855,6 +856,7 @@ void i915_driver_remove(struct drm_i915_private *i9=
15)
> >  {
> >  	intel_wakeref_t wakeref;
> >
> > +	intel_engine_blitter_context_set_ready(to_gt(i915), false);
> >  	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
> >
> >  	i915_driver_unregister(i915);
> > @@ -1077,6 +1079,8 @@ static int i915_drm_suspend(struct drm_device *de=
v)
> >  	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> >  	pci_power_t opregion_target_state;
> >
> > +	intel_engine_blitter_context_set_ready(to_gt(dev_priv), false);
> > +
> >  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> >
> >  	/* We do a lot of poking in a lot of registers, make sure they work
> > @@ -1264,6 +1268,7 @@ static int i915_drm_resume(struct drm_device *dev=
)
> >  	intel_gvt_resume(dev_priv);
> >
> >  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > +	intel_engine_blitter_context_set_ready(to_gt(dev_priv), true);
> >
> >  	return 0;
> >  }
> > @@ -1515,6 +1520,7 @@ static int intel_runtime_suspend(struct device *k=
dev)
> >  	if (drm_WARN_ON_ONCE(&dev_priv-
> >drm, !HAS_RUNTIME_PM(dev_priv)))
> >  		return -ENODEV;
> >
> > +	intel_engine_blitter_context_set_ready(to_gt(dev_priv), false);
> >  	drm_dbg(&dev_priv->drm, "Suspending device\n");
> >
> >  	disable_rpm_wakeref_asserts(rpm);
> > @@ -1669,6 +1675,8 @@ static int intel_runtime_resume(struct device *kd=
ev)
> >  	else
> >  		drm_dbg(&dev_priv->drm, "Device resumed\n");
> >
> > +	intel_engine_blitter_context_set_ready(to_gt(dev_priv), true);
> > +
> >  	return ret;
> >  }
> >
> > --
> > 2.26.3
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
