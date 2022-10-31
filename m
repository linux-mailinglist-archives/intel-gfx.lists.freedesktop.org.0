Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB8D613303
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 10:48:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD90010E17C;
	Mon, 31 Oct 2022 09:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6115710E17A
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 09:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667209691; x=1698745691;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yDwmka1ifY194rmu7tvf6gM+JQIQ2dpJKiHQLe8Mq74=;
 b=SUtS+K4xDe/5o3I/N9I4NDiqRCwmq6WyML59YtIZ08Z8ubKU5lyktaAe
 Gg2YbtSCJ0T9HlVOTTKhsfA9O+WtO4Q18bManL336jdtCtihBOd4tzsVB
 JHagnu6K0kvtkYKT6x3o0zWcqyC70dSES5GTh0GmQR60HB7UYTXJ3kaRA
 xqtrHGnTqv2/hsj+5DkimNYP6mFZwYVMvPkmVOcla/HAP9VKuT2XtcphK
 bpQy3TY7RWXNBlsHewOxLJ5UCGOFygWP13etc3oLH7Xtgioej8qSfuxm+
 eUwabsB1RWoMkQpb5xWpbiqdfQcQAJkpi2nQoIs9JBoDzw8PxU3A2Ote0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="310557004"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="310557004"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 02:48:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="633471030"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="633471030"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 31 Oct 2022 02:48:10 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 02:48:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 02:48:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 02:48:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JSN5qbEHvf9VfyBudHPg//js7J2ObXaRHxlIo+0UregFva49AmO1ygEC572Kj75JZM6EMZl0cIW758Tlu5PjjAgo/y2YrGJwYAYlSHOnBj7oea8pw2Xo0a0+q4ACKmaKcVQd+uouskGqaIMdLJK6ZsHiMkf2cGm/yYe1GJ0zahfmCMrcLM3ceHLhUZ+MDooulDb+tDFQe5yeQ1RZgON+hh8yBAW596hQlPMu3+DAZGYDFRtohD71FxvB/ZxMcvtfLBHA8/PLzq5EeKTJyEmjUWuKDinNubV+F9Vz4MwvN5RrsbtK5gJcyhdYG9YdNemumJrSrhhpmPXlXBh4V5egtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWqalFJ84VwFMT8QooDV3iEeHEbGE3wDWe7EQ8Yhs0k=;
 b=DLSp/OvlWJWqZqoA2i7BAe1ED0MiPl4cTYULK7xuvftPdlc8dSrtXPcLnp9thJDa9F7DandpeyJl/cs90taGrcm9OHXOP8cf0Ok97m6ifR28YqsibH4yLr3DXN1jOis4vH44cQJktqvOY9enLiGZzKDi0StJ7Mt3+ctgPGf4k6GcmkLy6hKHtHIjIlWulagdRe/EHBQSKfkvRaLlTgpiqIveVdHo+4b8Ae0sC21wJCHHIF6gMDSxLShPY4WPUOe3gjs0YiAy0iicokOyjyFkeMqjTAjNZcoI4PAGkvGlvRN0VuI6WjIEJ81U/Xibt2xx4QEdNZiVaWAt/UpIMsMBdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4093.namprd11.prod.outlook.com (2603:10b6:208:13f::21)
 by MN0PR11MB5988.namprd11.prod.outlook.com (2603:10b6:208:373::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Mon, 31 Oct
 2022 09:48:07 +0000
Received: from MN2PR11MB4093.namprd11.prod.outlook.com
 ([fe80::b596:a74e:66fd:e682]) by MN2PR11MB4093.namprd11.prod.outlook.com
 ([fe80::b596:a74e:66fd:e682%3]) with mapi id 15.20.5769.019; Mon, 31 Oct 2022
 09:48:07 +0000
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Usyskin, Alexander"
 <alexander.usyskin@intel.com>
Thread-Topic: [PATCH] drm/i915/gsc: Only initialize GSC in tile 0
Thread-Index: AQHY7Ozje4qPPI1lkEeCdquyCv6KRK4oPmYAgAADWqA=
Date: Mon, 31 Oct 2022 09:48:07 +0000
Message-ID: <MN2PR11MB4093A0C8F12980AEFAAF02DEE5379@MN2PR11MB4093.namprd11.prod.outlook.com>
References: <20221031055117.1043830-1-alexander.usyskin@intel.com>
 <Y1+W5ipudusyL0NB@intel.com>
In-Reply-To: <Y1+W5ipudusyL0NB@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR11MB4093:EE_|MN0PR11MB5988:EE_
x-ms-office365-filtering-correlation-id: b7d2ba7e-03c3-4c63-83e8-08dabb2503a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aiDckIVnzMc6j0duoPiTfkETIEar7EYSPlqC4yaT29EHA3heKSqcJ9UhycyadZBYzUFNjclRKaNlO3z8o/Jy9lVhY/7o8lyVGaVvEHf21nPO1+ntpwMLSLVn2gVQ5ulJQ9tYzc9z1NAruGE3912DlHrtnWmejta1KP3ru7faj5Yq3AbjoiVmG+B4pphe0bLzVw670R5gFh5B0afmJJK2L6bn0b0+8XqXegCmRTFm5qTxWQoxV0eusYVfHGfdiMd/OH7+m6mQseKWwJI+oTy6JSvA38Az06pELrpCDuL6pFt2/FV55wfZw/VTrDa4jknqEXduNbegNbuMESPqnOspyBRt6gKaARR9S6d5b/8obxRB1zj141RAWoDWX8gTSxYO5Z/Qc1LDf5rdZsMBKa50jJEZuGoOqJecWah7bTZBhPg9iV2cvbHqdUxnWVfn+kXQ+A2en+5gZHnzLWiP+oqwmyQEU3mE48UAcPBzh/ECDxuyw+ta1wJk1PqGT92T+YpcIpjMvy52Db3j+QqTcb15jNCl8AU5vyuk7pFzEv3SDlcARfow/JCE2PPCV9RITcp0oig02t8mXHLOsVhbSEaKM7Wc/iDc7mLtgYVP6mc/v+Wt58+vZE7+I6Bs0U4sLh5MX4m85ZLnSuutz+BQb1qaIsyOYRvCgY1OgIYUp4/Ru8x1j3kuG+tnWlnJskLXqXdjXZH+02FkcmCMN45BuNaUclsABqLKlgTKPqQceVlBqmWkPFZzI04jy3cQZNIDwtdAKvcxmFOWQfJEBz4YLOpRkQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4093.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(136003)(346002)(39860400002)(366004)(451199015)(86362001)(26005)(9686003)(7696005)(6506007)(38100700002)(52536014)(316002)(122000001)(8936002)(41300700001)(71200400001)(82960400001)(5660300002)(478600001)(4326008)(8676002)(83380400001)(38070700005)(33656002)(186003)(110136005)(54906003)(2906002)(66556008)(66446008)(64756008)(66476007)(76116006)(6636002)(66946007)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?u4nHVke8rOfhLg7Zvpvq9JvUI2ypx/RV0H/T4hMBTn9KjASop7XO2SKMt6?=
 =?iso-8859-1?Q?22ddBfjiFvCqee2bICm/BZ34WM6BLzaeqUjATvVJk8K1DfZdDQTIOHgGTn?=
 =?iso-8859-1?Q?kxCtkGCyBWiYCl1WsFFcqT7GayCkQAzgtgOlNFIZHDPuSO6erq7S3iG4Ug?=
 =?iso-8859-1?Q?HNXGcoKyyNCuLyS41z7qLymC5gy9gIaEmF3nPjcIP5f0AzETxnD2bSwk5p?=
 =?iso-8859-1?Q?U5vYaaM2LCOnLQjtfeUd2pKwyeNoGxsIiDssdTCXT8s02swjdcutdOPu0C?=
 =?iso-8859-1?Q?42QzQ5iQowTJl7GGCRG+RNjzDOjWFEZFVoIyYz0xnwk2B0Tf1NHs7rO1yV?=
 =?iso-8859-1?Q?ximj/knUTgiQN1i3Yp/wMxjrqjRMTlBO4VObAOx0wj/BZvwxGVWUXMjvek?=
 =?iso-8859-1?Q?y7XPohNIkqmczs2F4Uh9CKnTWo7iknw5UJGDg0KAxoCosua0NoOGMJDe7q?=
 =?iso-8859-1?Q?3W8IcNzdZCnq+GpJjT1J4ejE6Vu59tbrGKR9/bQ98ZBpGtQu63YV5A0+5Y?=
 =?iso-8859-1?Q?lelteXZeVpCvSF/3IvsG/4tv/O5oki3S1Ku3LDOP3hc4KV3nlHn8cXymmv?=
 =?iso-8859-1?Q?/Inl2/yu1gjuwZJ5RzL+aYR911GQ3FMydUItrTzT+yLeCyJXAO9Lh0zoBV?=
 =?iso-8859-1?Q?EQVHsoL77/Ax98lE0px5PaFUUDXXDU8NFsqdfa5hmJS5OH0xJnYW4cEr19?=
 =?iso-8859-1?Q?oqpnWO8HfQqP8UflgHdUpu8cSTJiDEP+0ST7yp3d8YCZW3SHi27XolrqCK?=
 =?iso-8859-1?Q?HdBlkkgbWxV5BdjMzRXNNcUyeF8ogZDBWNvacJNh+PW/jq8K50kGGrC0t6?=
 =?iso-8859-1?Q?bgzZManvIZKolXfBOV8F0GcWe2FW4ZFiaHlblrFPX21lpeFXrOsWRacfnZ?=
 =?iso-8859-1?Q?lCV+KKOV3K216qFjynp00NcEIUutCDu6CJICs8M3IBzJqxy41EnQdgRAnQ?=
 =?iso-8859-1?Q?+BguIVrNfqx6aoyf68B2tXFnEXNMQpWytSjMnBl6YlSczUO1LeoaVx2W26?=
 =?iso-8859-1?Q?q4s92wBm1jhiK0Uuyjh906SWQds2u+VwovCC5qqpPvlWGUxhR65Q8IdoUe?=
 =?iso-8859-1?Q?WZTJHiZcbT7wXJG5NhRZZ5ndMyZubpP3uZnu+OXVkOkL9/4/jVc93/Ffxc?=
 =?iso-8859-1?Q?7MREjyEiEp2s5x0g+cRoDtxzk78ssraQ00NlzyCyT8lznD45Y75QBBVMJX?=
 =?iso-8859-1?Q?/9l6Hz+JrEFoD4Ok09GdN83AcwqEFVSNfxJD9h98o4igbGEBYOf3kHSR+s?=
 =?iso-8859-1?Q?VrhAwgO8KcoH4oczmXchqSHLSAIeSkVwbhXMDPclF3wrol/mhID/JDqeeB?=
 =?iso-8859-1?Q?0OdTPf71jT0th8ChYm3OKolxrj4O0UQV/h9V/YIl2e1/39ATjuDQfajqgC?=
 =?iso-8859-1?Q?REBE3Ec/Y+PS5vIiegDh7a3FVW6iObnTr79TVgMpbSXc4Wba47UER5gPe4?=
 =?iso-8859-1?Q?llzrxcAaSq/Y96oJ6TujzFZcbSOuqHlrsyv7EPxBlH+ep2e12te2tXSs7f?=
 =?iso-8859-1?Q?tjzp5UqBwAg3nk/SDXSplcjvBNBt3mrS9k1srUpihUi1Z72pWLYkDYj9sH?=
 =?iso-8859-1?Q?yzYBnC2UF3k4Iewz2vAhyG0wqEjNeDhGy+uYI9NtcwNQeTO/aGHhmol2kT?=
 =?iso-8859-1?Q?TGQQq0xOunYhnub+b+scNsnoTZ5c8EhmzP?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7d2ba7e-03c3-4c63-83e8-08dabb2503a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2022 09:48:07.5084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w/MIeAOVG3wLn1HHWw4h4EqrGepaqgARWByN3gq5oetkr5Uo82e+ngQiEJ8BSrqg1RmbKjbW1+CA4d2rPJAl2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5988
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Only initialize GSC in tile 0
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
Cc: David Airlie <airlied@linux.ie>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, Daniel
 Vetter <daniel@ffwll.ch>, "Lubart, Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


>=20
> On Mon, Oct 31, 2022 at 07:51:17AM +0200, Alexander Usyskin wrote:
> > From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> >
> > For multi-tile setups the GSC operational only on the tile 0.
> > Skip GSC auxiliary device creation for all other tiles.
> >
> > Cc: Tomas Winkler <tomas.winkler@intel.com>
> > Cc: Vitaly Lubart <vitaly.lubart@intel.com>
> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> > b/drivers/gpu/drm/i915/gt/intel_gt.c
> > index 2e796ffad911..92ad8cd45ddb 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > @@ -456,7 +456,10 @@ void intel_gt_chipset_flush(struct intel_gt *gt)
> >
> >  void intel_gt_driver_register(struct intel_gt *gt)  {
> > -	intel_gsc_init(&gt->gsc, gt->i915);
> > +	if (gt->info.id =3D=3D 0)
> > +		intel_gsc_init(&gt->gsc, gt->i915);
> > +	else
> > +		drm_dbg(&gt->i915->drm, "Not initializing gsc for remote
> tiles\n");
>=20
> It looks to me that we need to move the gsc out of the intel_gt instead o=
f
> workaround the initialization.

The interrupts are handled by gt, so where this should go ?=20

