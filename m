Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E23D58A7D4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 10:12:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F9F110E214;
	Fri,  5 Aug 2022 08:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC4018B3CC
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Aug 2022 08:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659687123; x=1691223123;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7rd6Z6s3NBJJmhJygiV6zCCKZlC3ZHRJ5SkOV2k1hT0=;
 b=JaKk/QjsvX4bcWZ7LSwIx7C4sBz4a/LXfych5uh6SBQebF5k9KlR8HFW
 cUxiSGC0wjGkOmcuHYM1fgyMkv3OJ+rQKYptLr9qMJYoGy3SGcCNFdMQB
 CgSvhg3Z+S0JENV/V8QC93+34v1y141Dbz0uLk4nBUq2EvizuSC2k+Lkh
 A9aZTIpPznXUUyoMU75NeZf0C736lh4a1K/ZJJbIDrF6OvBcS+poxZzBQ
 Eebi3fbKnvYhyjzUDbGg1mt5Fqlp4RufDtytsbH2jz+B4e5FAKLzqgSDA
 MpewmZGJJhw97oBgXkP1mSiJy04FBIMFQmv8UzqiPASproudCGHosMnJO w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="288909535"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="288909535"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 01:12:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="692935557"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Aug 2022 01:12:01 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 01:12:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 5 Aug 2022 01:12:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 5 Aug 2022 01:12:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D73JxqLKKQg6L8ZlwzMmwxG6796bmQ9MUcdGaiZtjznM+hkezt9KW6a32qbBSZ0Rtt8W80vd127Vj/tOhjqxyK4QxFjviwVWCBKnIGNasgALUfUo/ObUtSV7B+bmBF8ZlVOyvchvvDC6Asj1r9rGNkn7iHYgh3kS02JB+YzZ75bXuKcLRdKougDzQlzQT999ZkboAj8SnvNFDZ4v2L/Dq5pIyGxrF93fvnupQqBuex3QO98UDTThzxFZccBYf+Y/VI/V3b0M4F8ZUfVkr6kWLtVwuIkKi9nbdEjkk6lfdvtwoIpzUAesFl/KgjhhfdlCUGYbS3P6YtLU02k/fc8sbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UiX3a5e869xHCRUeMmKrc3XNIAl4BMegHpffOGtGdp4=;
 b=eefLGEpEfgq9qhzyiR0Z7plcarAM5bQ90jOVU00wtlQzW9bJ2mNJzxKT6U0M3fxdnIXWniiZNz80FRn4et82jdxsWV6omvrtKHCQ3jWowCRFSGNVwEYyFIORtRnuHj6nrnE88RmgMRygvqyO6HdodAZrPPiQw9hP6mBs1NQ07XKfpNbrPTzyIZWV25JV7UWzgX+eyX3VPxQHVd+Z1RZ7cGvcZij4fj5Aw1ckMkOvrIm/UK646X3F4CHahckVgcizMATTVV3Q0Vk+YGHXLu1VGpNabCXuw1H27UFeS8nr22GMtLI1asQoC2XrlqyShf5CDb6NOCt3K6S7TTmyRY67mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CH0PR11MB5217.namprd11.prod.outlook.com (2603:10b6:610:e0::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Fri, 5 Aug
 2022 08:11:59 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::343f:1253:5ee7:228c]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::343f:1253:5ee7:228c%7]) with mapi id 15.20.5504.014; Fri, 5 Aug 2022
 08:11:59 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/pps: added get_pps_idx() hook as part of
 pps_get_register() cleanup
Thread-Index: AQHYpvp37+QmrbvCmEqrTXgvEl4PPq2c0+kAgAMjdRA=
Date: Fri, 5 Aug 2022 08:11:58 +0000
Message-ID: <PH7PR11MB5981325A90ED819AA9041A01F99E9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20220803052944.28069-1-animesh.manna@intel.com>
 <87les5eoct.fsf@intel.com>
In-Reply-To: <87les5eoct.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d83ea010-4ffd-4631-1246-08da76ba2b81
x-ms-traffictypediagnostic: CH0PR11MB5217:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ON6+V1OxHKxjuxUPFl2J/N3sFnT0lXTOGkprT35yaooonZeqCdHO84rJD852jPoDJbGnzO8HRr5zloAhXFaIHU+zg76chxWZRr32G3lnImP+KifchS14ZhVgELIIqGkpTTZO/yKQ0bASv5KG3itdMVC/R5XTcKCJHEX4DKnWkTNAxC3Xw5ICwE96UELTQNldcJ5XFAhprJ6YKf7OuYp26MiOeZwkTPyFXYCArF6Ov3RyU9onrLpT7ncRc3hZnYO7aygjGXmmP7ebn98PQiRXktXPsRSY+YS1Ue0fUnNa7jJt0ol0ZNyLLI2HuHrhXAt6AnLeK9MnelwITKGRYC2Vt6w48b/A+6uHWMviBICHrmxDvgOQhw0/uLIJdwgMvJL1esLon1NWyziW9gLrywuIuVpfwCAlAYoQ7DmxuoC0dtB84387UvarzmfJTn+/QTj8kKIPN9aRBzZEd2AxeJpoKXlOl2JTHLaw069jIz/24eePjLhe7zgxmWF23ox0t2C1hBWmkgUkokdp2PiedTmR1TJD4DriKY3XPl7AqXfr8enlJGWaZlznckD2Dd+u+oVsibVDEphpzcJOpUysxEKYZ6BmqHoK7c/peD4QzVuCmezMDrelVu/XjNmJYDNaTR6rYe40VVO6364bKSlzT67inDPONm2KZynHyVcIhrljWuPj1ONbJddey0SKfGS+wF3ZXfwHez4QWfsnI1KgqlF1d1ymXcBbH5NiucGjgX1ZVN9xadQ8dvZlg6TtOWK8hDAv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(376002)(136003)(346002)(396003)(66556008)(186003)(53546011)(64756008)(8676002)(110136005)(4326008)(54906003)(66446008)(66476007)(76116006)(966005)(9686003)(26005)(55236004)(316002)(33656002)(86362001)(5660300002)(6506007)(478600001)(8936002)(55016003)(52536014)(7696005)(41300700001)(38070700005)(82960400001)(2906002)(83380400001)(71200400001)(38100700002)(66946007)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?phho7oAsS8Sk6vLS/8AmOGnaeHrX+UAKSwt82TNZ8pHZkrcbExa4EQgj6etS?=
 =?us-ascii?Q?nDOMaCO/wIdddpNm2ybsi7JgwtGldCD/Z63XDRrGdQUXO/WI0y7BrW51hb3d?=
 =?us-ascii?Q?amfYKR9wTJBA1r2TedErhsHh7V7wwSoAVsd6wQVxYXCrqdbk+gZ5NAa5KDDF?=
 =?us-ascii?Q?Gtbwfbe0R0bXdpzSuxfs2d0AvBiOuqBPaSaUH6cg42l/AW/Zp+OGP2sqEnbQ?=
 =?us-ascii?Q?kOpJ5ID2wLvqeQuLwaEvRwiLIyQhpaNxfAPJMoKZWUhw7AzH11nRCj8cvy6x?=
 =?us-ascii?Q?Yew1ihySQbZdcE+UBKqjjGy/lCfxcpQ8ZfDjWrFKC0/29u80vMnRtMzVHC6U?=
 =?us-ascii?Q?Kk32kAduvCL+Tx0poNoUPY9Syib/KAN11Ga1B4huE0l2p8Nhv9JrymZ2qdbV?=
 =?us-ascii?Q?d9vS5ZV1g3BCtpPamNau4gnqLuIfsf4128XOuZxdOG3ak0qIejpBMdenaVle?=
 =?us-ascii?Q?7vWX0CR7FfFbK9twvbS3KomrNypq7elQjWxuplKa//ycThO4mC9JgRz/6/cW?=
 =?us-ascii?Q?xkKDubVBdPIGhkKYcrMbyhwSIRmwR6IJ/vFTTRPCL8480EJUe9YMindoJnw8?=
 =?us-ascii?Q?TtlrJzKmdXvil+PN3YEu84ATRcUH1U7wCczaHzX7e+4tus+DHJo3eeIgcEDT?=
 =?us-ascii?Q?GI86DPik9TSpekngDp8ikvIS6rA2uwoNy+GC9ctOOTigpIsGMik/4NbRsaJX?=
 =?us-ascii?Q?D/w2cqzIrsHQS37xpKl0ds856sYXWnFnqwHFgK/zyET4kFpqHDu5RJ9SkxLG?=
 =?us-ascii?Q?0eQq8Ad3L3N3LGixFSNkB5Lp3RcgnjVHKukCuAsoykCR+7faUXLdhduCzT6/?=
 =?us-ascii?Q?vi27UlZ9oRIovRbBUYGjtdyONvfFY4pzRTjvZUhjmiM+r3vM2fSpYaME1Nu4?=
 =?us-ascii?Q?eYyH/LV4BeHL58TBE2jSq873dSzrtcvyhE2pildXJ7DGgGGkSIxnpuB/oC6q?=
 =?us-ascii?Q?qQZZRm74gSOIrbs0veWAkOr/XOg9mUm1A2SlnFBnDAuYGK0M+ckCFW4I/JIi?=
 =?us-ascii?Q?2BiKpmgXAv/10GqnIkdIzF0sc+JRg466h6GgEVDP4XYX0t05EA9Y8l3oosSv?=
 =?us-ascii?Q?z5hz4atyKKvytsR+5Lb6E18cqdZzZIX0mFHh63xx7LWVLpC8ARw1uBOADQMq?=
 =?us-ascii?Q?m/QRWZXU+5QUZQWZrsMAipaTxSqOCHhsQWtNl35mOKDhnw8kT+JtEIoCEupb?=
 =?us-ascii?Q?xYf6exiKBg2gD1bvoKkIw4JfK/G2i59Ni6u2MG8q1rgAxYswqIjhr8B3e48Z?=
 =?us-ascii?Q?k3iH4Vn/Cue5h+MJJUAfmSFAKz0qobqMdDHmW0C6mVErs+D9zadVVpsx78gN?=
 =?us-ascii?Q?JuC8zzNN3CPhPJRFr9jQRN6NRkBEHFVhkj1KDSHySSioacJghDhLrohM4C8l?=
 =?us-ascii?Q?LLnCQCCOqijExFfLJa/CWYbxj6QTP5VGnGe/7ZKeoAHnLD5r7JDkY12bnpNR?=
 =?us-ascii?Q?I4SbAAc3zo2X8K70qO9F0cvEUVlj10xouV2DdRBVogGkz4BmHZjCWUM0mFbf?=
 =?us-ascii?Q?pcQttIb14iJS5ci6ph5hD7dj2Ho1bqjGIPH1xcYy/qsgjLiXZnOcCMZOjnsj?=
 =?us-ascii?Q?eRFJ9FatYjgX5WPUKebLeglMXBJkvc15h9AOHNcD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d83ea010-4ffd-4631-1246-08da76ba2b81
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2022 08:11:59.1907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aXqHiR53AKpQEPXsegva9jH5RNLxH5w7yVoo0aLTjFB57Bu4SVhtAT3pyI0DbYu4XWqIREqdk04Qg61tslN2Qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5217
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pps: added get_pps_idx() hook as
 part of pps_get_register() cleanup
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, August 3, 2022 1:44 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH] drm/i915/pps: added get_pps_idx() hook as part of
> pps_get_register() cleanup
>=20
> On Wed, 03 Aug 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> > To support dual LFP two instances of pps added from display gen12 onwar=
ds.
> > Few older platform like VLV also has dual pps support but handling is
> > different. So added separate hook get_pps_idx() to formulate which pps
> > instance to used for a soecific LFP on a specific platform.
> >
> > Simplified pps_get_register() which use get_pps_idx() hook to derive
> > the pps instance and get_pps_idx() will be initialized at pps_init().
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c     |  5 ++++
> >  drivers/gpu/drm/i915/display/intel_bios.h     |  1 +
> >  .../drm/i915/display/intel_display_types.h    |  2 ++
> >  drivers/gpu/drm/i915/display/intel_pps.c      | 25 ++++++++++++++-----
> >  4 files changed, 27 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 51dde5bfd956..42315615a728 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -611,6 +611,11 @@ static int opregion_get_panel_type(struct
> drm_i915_private *i915,
> >  	return intel_opregion_get_panel_type(i915);
> >  }
> >
> > +bool intel_bios_is_lfp2(struct intel_encoder *encoder) {
> > +	return encoder->devdata && encoder->devdata->child.handle =3D=3D
> > +DEVICE_HANDLE_LFP2; }
>=20
> AFAICS the encoder never really needs to know whether it's "lfp1" or "lfp=
2". It
> needs to know the pps controller number.
>=20
> > +
> >  static int vbt_get_panel_type(struct drm_i915_private *i915,
> >  			      const struct intel_bios_encoder_data *devdata,
> >  			      const struct edid *edid)
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h
> > b/drivers/gpu/drm/i915/display/intel_bios.h
> > index e47582b0de0a..aea72a87ea2c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -251,6 +251,7 @@ bool intel_bios_is_lspcon_present(const struct
> drm_i915_private *i915,
> >  				  enum port port);
> >  bool intel_bios_is_lane_reversal_needed(const struct drm_i915_private =
*i915,
> >  					enum port port);
> > +bool intel_bios_is_lfp2(struct intel_encoder *encoder);
> >  enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
> > enum port port);  bool intel_bios_get_dsc_params(struct intel_encoder
> *encoder,
> >  			       struct intel_crtc_state *crtc_state, diff --git
> > a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 0da9b208d56e..95f71a572b07 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1723,6 +1723,8 @@ struct intel_dp {
> >
> >  	/* When we last wrote the OUI for eDP */
> >  	unsigned long last_oui_write;
> > +
> > +	int (*get_pps_idx)(struct intel_dp *intel_dp);
>=20
> Making this a function pointer should be a separate step. Please don't tr=
y to do
> too many things at once. Rule of thumb, one change per patch.
>=20
> Also, this should be placed near the other function pointer members in st=
ruct
> intel_dp.
>=20
> >  };
> >
> >  enum lspcon_vendor {
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 1b21a341962f..c9cdb302d318 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -231,6 +231,17 @@ bxt_power_sequencer_idx(struct intel_dp *intel_dp)
> >  	return backlight_controller;
> >  }
> >
> > +static int
> > +gen12_power_sequencer_idx(struct intel_dp *intel_dp) {
> > +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> > +
> > +	if (intel_bios_is_lfp2(encoder))
> > +		return 1;
>=20
> This is actually not how this works. The bxt_power_sequencer_idx() matche=
s
> bspec 20149: "PWM and PPS are assumed to be aligned to be from same block
> and not mismatch" i.e. the backlight controller id and the pps id are the=
 same.
> There are no requirements to map lfp# and pps controller like this, even =
if it
> might be true in the common case.
>=20
> The problem is we need the information *before* we call
> intel_bios_init_panel().
>=20
> It's a catch-22. We need the pps id to read the panel EDID, and we need t=
he
> panel EDID to choose the correct panel type in VBT, which we need to get =
the
> pps id from the VBT.
>=20
> This is highlighted in [1]. The 2nd eDP (which is not even physically pre=
sent, only
> in the VBT, *sigh*) screws up the PPS for the 1st during init.
>=20
> I think Ville had some ideas here.

I will check with Ville, currently not very clear about the solution. Try t=
o get some info how it is handled in windows=20

Regards,
Animesh
>=20
>=20
> BR,
> Jani.
>=20
>=20
> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/5531
>=20
>=20
> > +
> > +	return 0;
> > +}
> > +
> >  typedef bool (*vlv_pipe_check)(struct drm_i915_private *dev_priv,
> >  			       enum pipe pipe);
> >
> > @@ -361,15 +372,10 @@ static void intel_pps_get_registers(struct intel_=
dp
> *intel_dp,
> >  				    struct pps_registers *regs)
> >  {
> >  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> > -	int pps_idx =3D 0;
> > +	int pps_idx =3D intel_dp->get_pps_idx(intel_dp);
> >
> >  	memset(regs, 0, sizeof(*regs));
> >
> > -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > -		pps_idx =3D bxt_power_sequencer_idx(intel_dp);
> > -	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> > -		pps_idx =3D vlv_power_sequencer_pipe(intel_dp);
> > -
> >  	regs->pp_ctrl =3D PP_CONTROL(pps_idx);
> >  	regs->pp_stat =3D PP_STATUS(pps_idx);
> >  	regs->pp_on =3D PP_ON_DELAYS(pps_idx); @@ -1431,6 +1437,13 @@
> void
> > intel_pps_init(struct intel_dp *intel_dp)
> >  	intel_dp->pps.initializing =3D true;
> >  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work,
> > edp_panel_vdd_work);
> >
> > +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> > +		intel_dp->get_pps_idx =3D bxt_power_sequencer_idx;
> > +	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> > +		intel_dp->get_pps_idx =3D vlv_power_sequencer_pipe;
> > +	else if (DISPLAY_VER(i915) >=3D 12)
> > +		intel_dp->get_pps_idx =3D gen12_power_sequencer_idx;
> > +
> >  	pps_init_timestamps(intel_dp);
> >
> >  	with_intel_pps_lock(intel_dp, wakeref) {
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
