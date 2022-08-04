Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC597589792
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 07:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5CD610FEA8;
	Thu,  4 Aug 2022 05:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B5210E8C9
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 05:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659592430; x=1691128430;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Na3MIhObXIvDNCmqeCRC1kyO7KOlv1m7Eq5r+b/TeWA=;
 b=jpLECaMcXPlr97QaC6JNvSvBxox8tWKXEHygnhUDiNYy9FWZokOzSgoy
 qjS0RYFqItY05XZqYAXFi1VEThvid6oue5Ilirukz4F63Wa+m5ntqOkBu
 ap4yLn3kFuM4BhtUYI+9YYozZ0xz4xAvFE6y8reuu1bHI1NYZkbGJyAiU
 VyNL2KxV/JBqJ3WHFG1Yp9d+nVhtHdE34CDfhJCwuf2W1OOIl47xd27kk
 8g2lE4GwRPNnTbE858s0Mu792QzeMPmZAla2eg8vbJjMCjiiHleJSK5sP
 uFk8grmjS867Pv0C7Pcpd5qYN1EEyJA2Sr8h8zUGvPwVhDjLyr/bXBvsO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="353844596"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="353844596"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 22:53:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="635964209"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 03 Aug 2022 22:53:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 22:53:49 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 22:53:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 22:53:48 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 22:53:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HDi5XFj88vSeJh2lLIXLk2tE6OrDN/pqad6JI8HdZZLxUK2sHXQ3zAYxX63VA61mGyDG0IfadtKbs5KrEd6WKOkeVSJS8BB2Epw2jaCiXs8u0AsJNpG9wKe1tMb1y+2xdabqOKNn1wHg+T5yEZFQU08dFfb+T/bV11Xt9wnMZ5IWAeHVvQmpmH0Dcg2qlmJwA8s+H5nu/45Bm9hLRBSv7ggt4rmdOJzf0sSKmjQSshLsV1bqxzWW2RLM3jI5+s5NWn77YjW5BizSXWOjSQBsvJ7ET4gT49jfQg4ZYKu6SDLp3x1JWHQ2qUPmfxqqyw6GH6g0JdsUJAg6bulFi2gM9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UtPny7/gKPoEQKF0NwWbQpUt1XwHlFj0uQ/WpDjkD4w=;
 b=bb87iKAC56BTQJv7JVqoVpXnVErVkF2N3yVb+zYnGvzr5nNHnGpJACpnwW3iEqkT2miJoRl/MFyCK5naBdznVAb48+eOYrp66TjWRxENafbxIp2Crn+ufghu2aGuLwm/yyd5eVy8O3/1L/fF5vKtpC/y2SpN/5lJioLPv3RTBBG0WzqSoLOY4xG/j+98hHYggna0j2qk6p0JWcES/ukK66u0baMF9goJNs9VJvhIXq7MJbATI3e5hzUZtirQEw/5qRAEnZaFFlSiZITI2aONfG7lnkkgYueLen5CpZqw7NAASiYsusYs95knJyT4IbfY/YPLTc2FawMnoDPxzRGZRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by MN2PR11MB4464.namprd11.prod.outlook.com (2603:10b6:208:188::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Thu, 4 Aug
 2022 05:53:39 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::b1a6:2b63:7c49:5cc5]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::b1a6:2b63:7c49:5cc5%4]) with mapi id 15.20.5504.015; Thu, 4 Aug 2022
 05:53:38 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Tangudu, Tilak"
 <tilak.tangudu@intel.com>
Thread-Topic: [PATCH 5/8] Drm/i915/rpm: Add intel_runtime_idle
Thread-Index: AQHYnOcJ5RGLdbmz6ECVwMeLhhE0vq2du/aAgACEcRA=
Date: Thu, 4 Aug 2022 05:53:38 +0000
Message-ID: <CY5PR11MB6211E38BAA584BD80EEA67A4959F9@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220721095955.3986943-1-tilak.tangudu@intel.com>
 <20220721095955.3986943-6-tilak.tangudu@intel.com>
 <Yurf88BkR6dwO/ad@intel.com>
In-Reply-To: <Yurf88BkR6dwO/ad@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5aac2b85-faf6-4323-e0e1-08da75ddadb1
x-ms-traffictypediagnostic: MN2PR11MB4464:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7u1gsVatshPjUkbeun5wOyw2GCYqKbstn7OP7NDDNZOgotsh2b2O+/fva0hIFwNM/XSlb0PfGFfWiE+Cd89LF7Cb3kzxJ2xGHSgIyPJFXy5YyJLrGdNnlbL6at8Y6umhDsMq71+AAcgU02F08hEsRtlLuAVVkbj/vBqfjclfWCuakDsNTnmH59/urcnky4Aj+xAuCsxf8IitL3cJVCQhdOP0V3ONH2GLinbXiSH2Id1kC/pjHpxII+2QvPl4ojbOmTMu2cAEcnkb1tAzBV36wiok4XZn8awvWNRisy3W02ziCGRaXComg3i11RmVToYnrLIsyyoxvVR2/YVsgkFyjETxXlLRa8fhL9MbQZNZj9kmlk5cjqy3PaqzHBzVmVmgBOLzbaQAWXbKoGsT24kCb5joot1KsaQuVylIH/hxWaF9Lf82x51IsX+mLjCbgfqJiUiGziswuA6Q1sVGGkkOU4A/Mkjs7OmPv2zOFsO5MskT2siWsRpcnJAc4QfXMVg9lQAnxAIxmx86PnAesA1OhN3oG2+3Ba0/mRIWBmX8Jc8Ao3EgUHUPqD/oBhevQbEv+7kIehuYoCErMVY8wUmEjzwdv1w1V71ZAPZvm5DFWGOx9JnbzQyVWIOMMvL/jJnFju+Yxg2eS0XBngDz8dK43LW5mobKrrkerXd0A7rg1hXlS/W4A+4ejhaBXMZx19tvSUcPo6QZ2J8oZRuUmvgYvQwNJltPO9G2mWIM/KHVSU6Z9xm2qfnZmYdF+/bRqg4xWGp7P4r0g0+HKIzDCatcQBAlYPqyThm5SVjzEQj/QJ8w69d5WWS6cNHLb+yRx4ZJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(366004)(346002)(376002)(396003)(8676002)(83380400001)(66946007)(66556008)(4326008)(64756008)(186003)(66476007)(66446008)(52536014)(8936002)(33656002)(76116006)(5660300002)(2906002)(478600001)(6636002)(55016003)(71200400001)(53546011)(7696005)(41300700001)(9686003)(316002)(55236004)(54906003)(26005)(110136005)(86362001)(6506007)(82960400001)(38100700002)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+YPn1ZStosbx0Fw1OAwB94j3EYTi3KC2i10V8fpbEmfYJ3xSapb3wbURHuy0?=
 =?us-ascii?Q?KHj6gnGXcZQxRFvi09SBDQqedrP9WrwQQsZdcuhXUU9aurptsHL3nTK8ylgG?=
 =?us-ascii?Q?gH8tsP3mpO8SwLAtkenM1UkuqV06YjGj5pkEAzduNsXIOa3ftVdrD5l/KRNp?=
 =?us-ascii?Q?22aTbVbgpnctUVUCRSvIpSZSDb9X+6KiVa6Hgq3zJ1cqORDsSkBtxTMO9ThN?=
 =?us-ascii?Q?rKRU6HO3yRQLz1wpwyRyk4ttqqi3x5voCmlLCZvvyQVC5e9SHz3Zr6B2VfiP?=
 =?us-ascii?Q?iDF7l1oYh0qA7m7CM7SCwu46/LBX0L9QE0BallhnLbVvPq29ztEJ2JVY7xFs?=
 =?us-ascii?Q?m1s6t6/iMf7DaZsfQox5XknlzskIG10xTqKtj0GjFdNP7hOJ+MSkliZdHwoz?=
 =?us-ascii?Q?ES0c52IQTT2IsPjL7Az9u+VndqY34TjE9XDFh3IQOv7G/XfDfCF9MAA3q8sq?=
 =?us-ascii?Q?yhqE3WkIBYH2GDXsg2f3DTqAx4f+YLdSfjEFUkpcskD2GlTW1aurOXJLwQIj?=
 =?us-ascii?Q?mfd38KE0BA7iW9zswQk2Toul83TdkpSuzNHpdQzHJtEiJOwm0Rmk2qnUfyt0?=
 =?us-ascii?Q?3d7bivP5adqavtvIS6OdxtvBHwA6yKWzEYRa2Es2tKWLNUZMpoASJhdNaRwC?=
 =?us-ascii?Q?Xm2sd4dvmJK/MZJghUlcKzpxEr7IP/7Wm8ZiaGzRAVu7X0qFEqyMS14KSoBh?=
 =?us-ascii?Q?rgn8LF9qPWlZ9oyFK9l2rE+A+vfjd2MrtaIGIAxJeUaX6E3LdTye1Tqgbngw?=
 =?us-ascii?Q?mICLWSJvznVD9dyp10RpdOhcMWSSdPYxT3irVu2PVNiqS/hKI7/ER8noEqKd?=
 =?us-ascii?Q?rAw0PrZk1zbImtaIDMw8aJoGqffVeYGSL+bmL+Ux0YcBaOZCB0CS8x+w5xkJ?=
 =?us-ascii?Q?glNRIRH817ErO23nVBsxejkLDQfEK8x4oWt/3xMLRTOI6JbwCS0T9JMjmcXy?=
 =?us-ascii?Q?BwLQNG4ppZUnVmKaOi8MlygHyptKpFyro5N8hD8wBXdZ07JwWg2sura1ishi?=
 =?us-ascii?Q?sCslcmr9Dbl0mC1rl6aO2pHv/erY1s1r3VRaHrcCy6j2ge1Ovl008k2kkUJH?=
 =?us-ascii?Q?Q+mKqWuMHuQrpEH4zWmrrTLrgUpAOv9NOCuaUgtxiyxpwxp5BzrFHaufuYMs?=
 =?us-ascii?Q?yU+4DU1GvAVkyl2K0R1EAdMFxjTZmwK4QkMxeShTDSC/06y+fM4DlrkVDd+d?=
 =?us-ascii?Q?GTnkfKao+fwFqK8NDyCtQvYvh8e1ExUfWhys0Hs+7t6f9C7d8QOESrY2txe3?=
 =?us-ascii?Q?FUuRhqfEYR/avfxd75hzmThzU+2YoIbNbq9/buQhEcdh4t8C4HjvbjCJW2Yr?=
 =?us-ascii?Q?MlQpSvAwj2UANyXGrbtNxGEN5hyZ8dbO90qG2In3ejrwiAe5tpunBjKQgSCK?=
 =?us-ascii?Q?Ou0XoeGMyiN9FL495XNSDAFdEXvH3t/R/5GtN2NsM8wn5lR3LgowVpvSEBRE?=
 =?us-ascii?Q?qPzChz/ehOdlRJGChJ+wshGaDyN4OWDVLOlhzwnK7p9Z7A+yK1YdvQFUwdp4?=
 =?us-ascii?Q?7MNJ7LaleIKJskqAQrxxMWtzCGvxvW27pMJBu+4x4hh6TNF9GMJckJgpv1SW?=
 =?us-ascii?Q?UUcxnR2JZyCYRFwJ3Y1eMwWkCRYOlMK+4MxuXMnB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aac2b85-faf6-4323-e0e1-08da75ddadb1
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 05:53:38.8059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5zcfwxtwwi/5bThFuUaB3O2YFTBB+LlCnLGYXWkUbk1uzxXcXIv2YN4en8IWXPs2ImInOHes6Kz4sKVpbJXFp/rm0EUGNgFA4RiFvSIGDvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4464
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/8] Drm/i915/rpm: Add intel_runtime_idle
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Wilson,
 Chris P" <chris.p.wilson@intel.com>, "Gupta,
 saurabhg" <saurabhg.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Sent: Thursday, August 4, 2022 2:22 AM
> To: Tangudu, Tilak <tilak.tangudu@intel.com>
> Cc: Ewins, Jon <jon.ewins@intel.com>; Belgaumkar, Vinay
> <vinay.belgaumkar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Wilson, Chris P <chris.p.wilson@intel.com>;
> Nikula, Jani <jani.nikula@intel.com>; Gupta, saurabhg
> <saurabhg.gupta@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
> Deak, Imre <imre.deak@intel.com>; Iddamsetty, Aravind
> <aravind.iddamsetty@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 5/8] Drm/i915/rpm: Add intel_runtime_idle
>=20
> On Thu, Jul 21, 2022 at 03:29:52PM +0530, tilak.tangudu@intel.com wrote:
> > From: Anshuman Gupta <anshuman.gupta@intel.com>
> >
> > Adding intel_runtime_idle (runtime_idle callback) to prepare the
> > tageted D3 state.
> >
> > Since we have introduced i915 runtime_idle callback.
> > It need to be warranted that Runtime PM Core invokes runtime_idle
> > callback when runtime usages count becomes zero. That requires to use
> > pm_runtime_put instead of pm_runtime_put_autosuspend.
> >
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Chris Wilson <chris.p.wilson@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c      | 12 ++++++++++++
> >  drivers/gpu/drm/i915/intel_runtime_pm.c |  3 +--
> >  2 files changed, 13 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index deb8a8b76965..4c36554567fd 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1576,6 +1576,17 @@ static int i915_pm_restore(struct device *kdev)
> >  	return i915_pm_resume(kdev);
> >  }
> >
> > +static int intel_runtime_idle(struct device *kdev) {
> > +	struct drm_i915_private *i915 =3D kdev_to_i915(kdev);
> > +	int ret =3D 1;
> > +
> > +	pm_runtime_mark_last_busy(kdev);
> > +	pm_runtime_autosuspend(kdev);
>=20
> oh, I see the ret =3D 1 like the other drm drivers..
> do we really know why this flow and not use the runtime_idle like the res=
t of the
> kernel?
AFAIU it is the mixed type of usages (some drivers like USB use -EBUSY),=20
the crux of it to use the pm_runtime_mark_last_busy() and pm_runtime_autosu=
spend correctly ,
PM Core autosuspend timer start ticking since it was last busy.=20

int usb_runtime_idle(struct device *dev)
{
        struct usb_device       *udev =3D to_usb_device(dev);

        /* An idle USB device can be suspended if it passes the various
         * autosuspend checks.
         */
        if (autosuspend_check(udev) =3D=3D 0)
                pm_runtime_autosuspend(dev);
        /* Tell the core not to suspend it, though. */
        return -EBUSY;
}

Intel snd driver uses -EBUSY and 0 as a return value.
static int azx_runtime_idle(struct device *dev)
{
        struct snd_card *card =3D dev_get_drvdata(dev);
        struct azx *chip;
        struct hda_intel *hda;

        if (!card)
                return 0;

        chip =3D card->private_data;
        hda =3D container_of(chip, struct hda_intel, chip);
        if (chip->disabled || hda->init_failed)
                return 0;

        if (!power_save_controller || !azx_has_pm_runtime(chip) ||
            azx_bus(chip)->codec_powered || !chip->running)
                return -EBUSY;

        /* ELD notification gets broken when HD-audio bus is off */
        if (needs_eld_notify_link(chip))
                return -EBUSY;

        return 0;
}

When rutime_idle callback returns 0, then only PM core will call rpm_suspen=
d with RPM_AUTO flag.
return retval ? retval : rpm_suspend(dev, rpmflags | RPM_AUTO);

>=20
> I believe we could use more the runtime_idle to block the runtime_pm, but
> following the original documented design of it.
Do you mean it is not correct to use runtime_idle callback for d3cold polic=
y ?
Yes it is being used to block the runtime pm, if device is busy for other k=
ernel drivers.

Thanks,
Anshuman Gupta.
>=20
> > +
> > +	return ret;
> > +}
> > +
> >  static int intel_runtime_suspend(struct device *kdev)  {
> >  	struct drm_i915_private *dev_priv =3D kdev_to_i915(kdev); @@ -1752,6
> > +1763,7 @@ const struct dev_pm_ops i915_pm_ops =3D {
> >  	.restore =3D i915_pm_restore,
> >
> >  	/* S0ix (via runtime suspend) event handlers */
> > +	.runtime_idle =3D intel_runtime_idle,
> >  	.runtime_suspend =3D intel_runtime_suspend,
> >  	.runtime_resume =3D intel_runtime_resume,  }; diff --git
> > a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index 704beeeb560b..1c3ed0c29330 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -513,8 +513,7 @@ static void __intel_runtime_pm_put(struct
> > intel_runtime_pm *rpm,
> >
> >  	intel_runtime_pm_release(rpm, wakelock);
> >
> > -	pm_runtime_mark_last_busy(kdev);
> > -	pm_runtime_put_autosuspend(kdev);
> > +	pm_runtime_put(kdev);
> >  }
> >
> >  /**
> > --
> > 2.25.1
> >
