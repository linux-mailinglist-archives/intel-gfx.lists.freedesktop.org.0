Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2734605A55
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 10:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A462A10E5BE;
	Thu, 20 Oct 2022 08:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C2AB10E6B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 08:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666256165; x=1697792165;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X+Kc3982uUf8ymgMSDwQ6g7WMNMLqjwt0fJy75B5TIU=;
 b=FRejuQdmU2OJEE40KBNNzP3MDtl27n/5WnFTA1WvPhMast0XqkPDIYpn
 BBENQE/AaaoMHMADRp/fslHDiULMPWcjNTZNPSl7YhBMhsF65WFSKsqcA
 CPut7UqdxuaowuTkWKCqzm7AyjEvmPAJ1r0cQoypJjxRqgPLerbLhAuM3
 nBkfx1Uiya91OFkVuIpQFNf9KHkeSkRn+ZAI0VvbzjgB7PwGjJl7VAnk/
 0IE77tLr9FtrgdV3IpLYPdNTSy85bXhwMWGLHzjzXxs0gv8oISMbojoXn
 k5eXy1jjCTkPhnsId5c77Oh1tAYpd/SS0a3UkenSMvLIE025In2U+QMJS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="304267644"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="304267644"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 01:56:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="660798192"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="660798192"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 20 Oct 2022 01:56:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 01:56:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 01:56:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 01:56:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 01:56:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fShyR6fE998tJPWssniKAsztQ4SsMttZ4Bb/I3DbhVAbj9YVNDnC9V4kx9fD4Ct6NrDtrp4N5UWG9LhMoi7AiukDCH+LNUsEt6gtiCnZOFzXZessi/dOtK74jSwySAt8biCi1Dbg29310QaXJTU+NR0C/GdqPPk1L/D+woVq5jWkidXHXJbteGbLy+l+ENS9OLRPIPc52AGCFml80KwIwXvWSABOfRBZ0KWgL3pkq9AYbhkOBeDkIhuygAnBlgR6TvGQPhtgTBom5uztDnk7oRcIml5v+6xkoIrMqbi0x1D4ADAQws2B4GjOLNL33R3FnmEjAUUuT+FyPBuz656hvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sjQSKjJ9G2dPUintNcsL0qCkirhzwWhSk0RU34/dRic=;
 b=D+vDojjUQbL2Qr56OnvPi9z5HnybLVdow+MqlJ/CH6hof0y0wRA12F6Vw+yiyZz+XX5kHrCN+rwyHaCxQoWZG3vqSVFR7lwxII3007Eeo6MTUsjpDCNsj2LkQccLzw0auzKfOP7nce/YaXIKQGxgQ35BWsmOZy/uKAXnE7G4GWlXX9Oyt72mv3OWnPBTRRrIX0CuFnSyTE8gYlwJA04rjSEjwnaVXrUn0XroegWluooS3soG8kWBmCRMgHz6aHSMjK0nyI+kHremt2hLYw5LbQ0o2yIbmByPk4/dNzFkrbzUOm13yQBLTDCcFEke6FSxPKBehmpyUeszDKrlS5gsyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by DM4PR11MB6336.namprd11.prod.outlook.com (2603:10b6:8:b9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.30; Thu, 20 Oct 2022 08:56:01 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::8d08:a767:54b8:7677]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::8d08:a767:54b8:7677%8]) with mapi id 15.20.5723.034; Thu, 20 Oct 2022
 08:56:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v6 2/3] drm/i915 : Changing intel_connector iterators
Thread-Index: AQHYzCijSSn1TEteKkSv7gN804VTya3/srMAgBdqoYCAAA0ngIAAAEeQ
Date: Thu, 20 Oct 2022 08:56:00 +0000
Message-ID: <MWHPR11MB174195ADB955EC692773F9D2E32A9@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20220919130505.1984383-1-suraj.kandpal@intel.com>
 <20220919130505.1984383-3-suraj.kandpal@intel.com> <877d1esgtt.fsf@intel.com>
 <MWHPR11MB17418451B1D7D2C2B23D14A0E32A9@MWHPR11MB1741.namprd11.prod.outlook.com>
 <87h6zyho5c.fsf@intel.com>
In-Reply-To: <87h6zyho5c.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|DM4PR11MB6336:EE_
x-ms-office365-filtering-correlation-id: e7c8bd94-d5b2-4edd-d20c-08dab278e94a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sYz6IxpkJ5l9f0MCipZghEZPfmS6+azZrPsAC1thRas46phW7NDk7o9tnxVtR8+TW7JAB7YTvNQG79yPPgAa9aFVBj7ai6gfhJrJ7mpdJHh85d8d3Y8WBGShdGy47shL7m/Kan17WalrbngyTrPlDNtE57cIEbyj7NUD6OqtRK+lI+jgKeIkvyq8miF0s25o59erx/D87RfqSTiskY5xlUOsjZK+YV1xlCh8CUKisc8zX6eLWT9lMX8SazyWB6ocjDvy5L+jI/t+Y+ZH/njtxtudrDwoovISiLM6USY1opKMs+yBT1B9SzTONHfQyG5XH5jLrRRVJP7HUx7SfHQjFbzuOJFVC96UA0yeDKH20nBBiITOP6Ykl7hrm0f77S2WcTXs1KfrsqwqK2AsMa7+G0Uppgo0YJGceKIfI1aDI6Ymdn74Y1kkL4gdunM5osrIx5dcq9mrbTfw/aEYnZy9odQNMQQY/pu3f38MQNaBGWztrlSZeviC883qSKY4WWMNYX/tpjcwJCORKsm91LLjKqGriNhJw7UgOi8ZM1Cv0UPUNpKS+RWrvVRHnZrTXaaOXKbL75ox08A9CuK9N0d+Dtb9n46yCKKrxXhiEDglnam/xTBDSGjpSYrdJ/9qXlU3xL/xa0Zo8UH6Ek02CQRxHQb/wTUzPa3yvc2H5hsUkGYkjnNi/AfwE0nlRkbhoHDW4ab/9xlYk95TYUwX7DnCCLsJBITRo3SwnEG0g3bTylm88olLybczftnyTeWS2/MJt7DvdCtMmDpZdgUy/7Mrww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(396003)(39860400002)(366004)(451199015)(186003)(2906002)(8676002)(6506007)(5660300002)(110136005)(7696005)(26005)(54906003)(316002)(86362001)(38100700002)(66556008)(107886003)(64756008)(41300700001)(82960400001)(8936002)(66446008)(9686003)(66476007)(83380400001)(4326008)(52536014)(122000001)(38070700005)(55016003)(478600001)(33656002)(76116006)(71200400001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zwUorcF8ICPNcYXIrM00uesCUO6EGVt67lwPcW0E+o9IS21h8ABKsVwnzzYS?=
 =?us-ascii?Q?CC0mw3jXB3Ar4VKMn4POhXkTL5nfUnAI51KUEghMhgN8lZDK+1aWC655GetW?=
 =?us-ascii?Q?ZsbByqXB//yOnjoWDNh3V4fhfHxU0RXsYJVLsQuhDC8oVzGoCDrkkubULNqK?=
 =?us-ascii?Q?bXISNYxpy/fZ6BDg6BWndJ71Dr378TDShnSMDV2by5b3PWptg5/lG569eMuD?=
 =?us-ascii?Q?AsRXAYQej0f7DlhMMYD935LuhZubnmuoycHjiKhQ35QtPUQ/V68o9zK+pQYn?=
 =?us-ascii?Q?bGHw7zt0GOZgpVnA+OsR2VfLv5qUF6Sh0cscZIO5U1rsKSQSnbFndwojJzKq?=
 =?us-ascii?Q?FbNyreYUlmji+6yqkiS9WBp9RAcmjifeAybIFUs8zgfOPuBUAs2e0XeVJjF7?=
 =?us-ascii?Q?rMEGb3XzvRYXcQivrf3Rw51eGquHF6aMwf2Vi7CS+8psyEIyad/AnIobIB/c?=
 =?us-ascii?Q?eeOa/z0pAjKhxGHHXxjovp8wFN44g49e1/SYzvrmpK9CYLNrng4HmV+QHtl2?=
 =?us-ascii?Q?71Tr+VEXvw7KRGuyoOFsx7IG5ILBOupni9ZzYtKdzubOg+8X/r8ovfKCEesx?=
 =?us-ascii?Q?xfSDAyJiIHw66ynipMPrpqWA1iybn8BcLexaENjkYZeJ4LB8hA6O6Pm1r0VT?=
 =?us-ascii?Q?RdVImGOpJz71t8kN9qIiH92HC+IfBhO3O/899mBwzFE7hxaGr+bnm+zgynZA?=
 =?us-ascii?Q?56kmlFBmiPM7Ctkcoryb1V8v9QTzreDLB9XnFHQdB8ITc8njRG7PScBUNBAT?=
 =?us-ascii?Q?L8xJhuHaEb6zfU838CSkCSno4u3OJVlIgvulL2c6xZ6bwrs9Fj9uk91Sp5co?=
 =?us-ascii?Q?BSRoMKub5us7dx9ELud03ONPHS0xTGC3CiPMVglPTVoqhpI/7TAOfpmBAQ+h?=
 =?us-ascii?Q?yqN4pW5Cl/X8zmA1c8Y7mfJqkihpLh0jg1STomdZCBQQXL1z58e6MXJwuJoj?=
 =?us-ascii?Q?GsSGRDbL5pn0aTDHat9nE0L1rT3pJwl4fvKufTqmpdZINytBupY/jh5iWONp?=
 =?us-ascii?Q?dzrkbx1fdmrfdaTp0KllgTgtWsqGeNprrV1FUzk6NnxdjUM/WhDrYhGhnip9?=
 =?us-ascii?Q?xCWzDx3+PNSs2Dvm6hYxcMUlBWJMQbp4iObylTQgpz6erLVDnpgRUbWPCzMD?=
 =?us-ascii?Q?6OXobeJ7aLC8aGWEJXcNiZCBB70v7PaWrQnKrCjt1SEopP3/pY8fLgH06UZp?=
 =?us-ascii?Q?rp3oYCY6cqU5CuqeaHmqMhsL0r2FjFarw52hXqtQvpQgh7eNCs43fcmIvKf7?=
 =?us-ascii?Q?XHL27Ttsap6+tIZgW7CysDJ82NiRLnfGEyirhmvsgfHJGNu2aGhr72x5i20+?=
 =?us-ascii?Q?oz+ofmYtZIMoq2Zcn+VUKNy1YTicZprEu1pBYbyPNELrpwIMboCrtUZvX/zb?=
 =?us-ascii?Q?ZksSyeBYTYEwb8jPoZE214t5w6L7yaIvQnqS+WjAElnKCQllbvwNWrdOWsUB?=
 =?us-ascii?Q?o7NU/3z09ZREeGfB1SeX3f0AMehs7zFWcaOOmT1j+//wD/4MT0TSOCBDztbp?=
 =?us-ascii?Q?erjXfEKra0HImfZpGx5w8y8tQS1se7ZGM71uZ5C8/cvbjFmEbmiySXcm7+aF?=
 =?us-ascii?Q?XEc+2YcWGahd3V7QPV7YlKSn2x9eznkRXgYrZ55L?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7c8bd94-d5b2-4edd-d20c-08dab278e94a
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 08:56:00.5692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v00XwLwPep06uuUbfF09e+WNpyT5j2NTtoSdK8MPuR0AERsMQugMQQTYwjZTsstrO25QjJtOPlF4aMkb3N2+gQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6336
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915 : Changing intel_connector
 iterators
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

> >> >     drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> >> >     drm_for_each_connector_iter(connector, &conn_iter) {
> >> > -           struct intel_panel *panel =3D &to_intel_connector(connec=
tor)-
> >> >panel;
> >> > +           struct intel_panel *panel;
> >> > +           struct intel_connector *intel_connector =3D
> >> > +                                   to_intel_connector(connector);
> >> >
> >> > +           if (!intel_connector)
> >> > +                   continue;
> >> > +           panel =3D &intel_connector->panel;
> >> >             if (panel->backlight.funcs && !panel->backlight.device) =
{
> >> >                     acpi_video_register_backlight();
> >> >                     break;
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> >> > b/drivers/gpu/drm/i915/display/intel_display.h
> >> > index a1ed9c82e2ed..102bf7d47ccc 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> >> > @@ -52,6 +52,7 @@ struct intel_crtc_state;  struct
> >> > intel_digital_port; struct intel_dp;  struct intel_encoder;
> >> > +struct intel_connector;
> >> >  struct intel_initial_plane_config;  struct intel_load_detect_pipe;
> >> > struct intel_plane; @@ -469,16 +470,12 @@ enum hpd_pin {
> >> >             for_each_if(intel_encoder_can_psr(intel_encoder))
> >> >
> >> >  #define for_each_intel_connector_iter(intel_connector, iter) \
> >> > -   while ((intel_connector =3D
> >> to_intel_connector(drm_connector_list_iter_next(iter))))
> >> > +   while ((intel_connector =3D
> >> > + intel_connector_list_iter_next(iter)))
> >> >
> >> >  #define for_each_encoder_on_crtc(dev, __crtc, intel_encoder) \
> >> >     list_for_each_entry((intel_encoder), &(dev)-
> >> >mode_config.encoder_list, base.head) \
> >> >             for_each_if((intel_encoder)->base.crtc =3D=3D (__crtc))
> >> >
> >> > -#define for_each_connector_on_encoder(dev, __encoder,
> >> intel_connector) \
> >> > -   list_for_each_entry((intel_connector), &(dev)-
> >> >mode_config.connector_list, base.head) \
> >> > -           for_each_if((intel_connector)->base.encoder =3D=3D
> >> (__encoder))
> >> > -
> >>
> >> Getting rid of this macro should be a separate change. As the first
> >> patch, could've been merged already.
> >>
> > Hi Jani,
> > This change has no dependency on the last patch  as the only place
> > this is called (intel_encoder_find_connector) Is also being fixed in
> > this patch itself so creating a new patch for this may not be
> > necessary
>=20
> It's a good idea no matter what to get rid of this single use macro, so p=
lease
> just send a patch for it separately, and get it merged.
>=20
Ohk got it will be sending out a patch to get rid of this single use macro

Regards,
Suraj Kandpal
> BR,
> Jani.
>=20
> >
> > Regards,
> > Suraj Kandpal
> >> >  #define for_each_old_intel_plane_in_state(__state, plane,
> >> old_plane_state, __i) \
> >> >     for ((__i) =3D 0; \
> >> >          (__i) < (__state)->base.dev->mode_config.num_total_plane
> >> > && \ diff --git
> >> > a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> > index 633cacd79074..a2d294929a64 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> > @@ -1498,12 +1498,14 @@ struct cxsr_latency {  #define
> >> > to_intel_atomic_state(x) container_of(x, struct intel_atomic_state,
> >> > base)  #define to_intel_crtc(x) container_of(x, struct intel_crtc,
> >> > base)  #define to_intel_crtc_state(x) container_of(x, struct
> >> > intel_crtc_state, uapi) -#define to_intel_connector(x)
> >> > container_of(x, struct intel_connector, base)
> >> > +#define to_intel_wb_connector(x) container_of(x, struct
> >> > +intel_wb_connector, base)
> >>
> >> Note that all of the macros here are sorted alphabetically.
> >>
> >> The wb/wd difference is a pretty bad eyesore. Maybe we should use one
> >> or the other, not mix them. (Except if we go with writeback, leave
> >> the register macros WD because that's what they are.)
> >>
> >> >  #define to_intel_encoder(x) container_of(x, struct intel_encoder,
> >> > base)  #define to_intel_framebuffer(x) container_of(x, struct
> >> > intel_framebuffer, base)  #define to_intel_plane(x) container_of(x,
> >> > struct intel_plane, base)  #define to_intel_plane_state(x)
> >> > container_of(x, struct intel_plane_state, uapi)  #define
> >> > intel_fb_obj(x) ((x) ? to_intel_bo((x)->obj[0]) : NULL)
> >> > +#define to_intel_connector(x) (((x->connector_type =3D=3D
> >> DRM_MODE_CONNECTOR_WRITEBACK)) ?      \
> >> > +                           NULL : container_of(x, struct
> >> intel_connector, base))
> >>
> >> Would need to have (x)->connector_type, with parenthesis.
> >>
> >> The problem with this is that we currently have 131 uses of
> >> to_intel_connector() and practically all of them expect to get
> >> non-NULL result.
> >>
> >> You're going to get 131 static analyzer reports that you don't check
> >> for NULL. You can't check for NULL in most places, because they're in
> >> the middle of local parameter initialization.
> >>
> >> >
> >> >  struct intel_hdmi {
> >> >     i915_reg_t hdmi_reg;
> >> > @@ -2069,4 +2071,26 @@ to_intel_frontbuffer(struct
> drm_framebuffer
> >> *fb)
> >> >     return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;  }
> >> >
> >> > +static inline struct intel_connector *
> >> > +intel_connector_list_iter_next(struct drm_connector_list_iter
> >> > +*iter) {
> >> > +   struct drm_connector *connector;
> >> > +   bool flag =3D true;
> >> > +   /*
> >> > +    * Skipping connector that are Writeback connector as they will
> >> > +    * not be embedded in intel connector
> >> > +    */
> >> > +   while (flag) {
> >> > +           connector =3D drm_connector_list_iter_next(iter);
> >> > +           if (connector && !to_intel_connector(connector))
> >> > +                   continue;
> >> > +
> >> > +           flag =3D false;
> >> > +
> >> > +           if (connector)
> >> > +                   return to_intel_connector(connector);
> >> > +
> >> > +   }
> >> > +   return NULL;
> >> > +}
> >>
> >> This gets pretty ugly. I've got an idea, I'll send patches later today=
.
> >>
> >> Code is worth a thousand words, it's easier to explain that way.
> >>
> >> BR,
> >> Jani.
> >>
> >> >  #endif /*  __INTEL_DISPLAY_TYPES_H__ */ diff --git
> >> > a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> >> > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> >> > index cbfabd58b75a..e1a90331c230 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> >> > @@ -205,12 +205,22 @@ static bool intel_crtc_has_encoders(struct
> >> > intel_crtc *crtc)
> >> >
> >> >  static struct intel_connector *intel_encoder_find_connector(struct
> >> > intel_encoder *encoder)  {
> >> > -   struct drm_device *dev =3D encoder->base.dev;
> >> > +   struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> >> >     struct intel_connector *connector;
> >> > +   struct drm_connector_list_iter conn_iter;
> >> > +   bool found_connector =3D false;
> >> >
> >> > -   for_each_connector_on_encoder(dev, &encoder->base, connector)
> >> > -           return connector;
> >> > +   drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> >> > +   for_each_intel_connector_iter(connector, &conn_iter) {
> >> > +           if (&encoder->base =3D=3D connector->base.encoder) {
> >> > +                   found_connector =3D true;
> >> > +                   break;
> >> > +           }
> >> > +   }
> >> > +   drm_connector_list_iter_end(&conn_iter);
> >> >
> >> > +   if (found_connector)
> >> > +           return connector;
> >> >     return NULL;
> >> >  }
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
