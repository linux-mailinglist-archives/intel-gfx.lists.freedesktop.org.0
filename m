Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0587BD884
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 12:29:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F353D10E268;
	Mon,  9 Oct 2023 10:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7002110E261
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 10:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696847355; x=1728383355;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+5hhRcVBUggRcrQWhATi/HXgqEQfRxcMzTfeKpprtNc=;
 b=JKPvWRnkpRVUjwSlekder7GpjbU3SSNZXD7l7rovNta6Z1fqX3urE3r6
 67/aTwTY8l6r+n/O0Scr3Csp/S9TXz6w8OZu0DheSh+rhaXWdH89v000H
 Wc/h78ErjJZTF9SPBzKIN7DoOrDVVrKMcSisrDTo+rCuYoGPNx3haEyd0
 /sWAHOnIDr4NkEXsEuQmoK46eC5MUnRRAnNfptT3xrTaZsMXz7whnTIj4
 aCwgxUMpA26E1XriM1uIPpuyYYoTiDRr2q16wwOsoGMFqRqNH15niZNH2
 OSTCWGKLL3WHloyuLukBysJdaXmsttxc0T4jOxerl82rbTq7sgD5PXWQH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="381376923"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="381376923"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 03:29:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10857"; a="843652661"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="843652661"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 03:29:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 03:29:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 03:29:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 03:29:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 03:29:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bRWyvmuIzdUBrDE+f4KnTn/Y+E203E2NraYGIhhrqqPBll0nCsFWugY/suQ1honjBijFykVKzLYsdQ95OZsQKwIjQsHOLs3Fzi84MZEaN9cKNwfCnwNoOEOoBL6ZKpXXdT6cHp64MzsFgbBUntoSGt14qddu+20JeAlUzMOeVqQpdhGykl1KZ3YaO1BSqMoZ64J71T5E8cy/Tge2cnrAN3ShTiHEF/7bT6RFRRTsie5uqssmjirlH7KnykyTpK3lUIelC/PwQxXeGRRHA3doq4cSUxSyWpDDuEjeFwLpPbQzDxZItJoF1l5xaA9M4Yo/EtWVHGek1tZjoti10nODaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r3Q6b7GfSpx0jGGmu1o19OxmCGF4xKCsSWmSuGc+aSE=;
 b=K8gnjeSFF4JGwnLFpcHHn5eg+8F9yqmv4xu4jcivho3fZ+/iMhZtOleV2qC7uCIR8xkSFKecYIIBVjM8jiu2IrNzX4SLwadhhYA2K6LioZMqWjULmOkIgUmE3Adu7zT2fjdTRoZnd9/SEIdYAhfV9u9l2J3WiSlpUKy9K70gzLwi2gllNn6sIU4j/A9uAaCGHFGClQmlf4cASFPPN0gUIQrvCSmhLhScnrfH8olz12x5T0vtXloUBvGAsHBCM4o0i34GqP7gFgevknnUhVJIJ+98xkcH5w0OlGclNijL+iPmgGl4VHMmZJFKtJ6fpo64XZF+zD2Cz9nHwMX/WBWgpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB6792.namprd11.prod.outlook.com (2603:10b6:a03:485::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.30; Mon, 9 Oct
 2023 10:29:11 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6838.040; Mon, 9 Oct 2023
 10:29:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v5 1/2] drm/i915/hdcp: Move checks for gsc
 health status
Thread-Index: AQHZ+pVYFw4KmyYTNkmEiYV8CYYBtbBBO5gAgAAF3sA=
Date: Mon, 9 Oct 2023 10:29:11 +0000
Message-ID: <SN7PR11MB67508CAAEFE6E17AF0C6C73AE3CEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231009094254.653551-1-suraj.kandpal@intel.com>
 <20231009094254.653551-2-suraj.kandpal@intel.com> <87a5ss6re3.fsf@intel.com>
In-Reply-To: <87a5ss6re3.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB6792:EE_
x-ms-office365-filtering-correlation-id: 02aa26ff-1d21-49dd-6275-08dbc8b293f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: daKtGIyMl5NV/rkjWvMnSzMF/LGaClZj4lkTBIS/TTHoRCLJCMMaGfK0IaiDmtt7ctuPp8PaZTPO+u+H38YwcsjIRzMSSDE5kBI1RUadu73L+fveNCoaZAOieuL1QQq7PNNs1csrBKRrNWjolGLhKYc1nf88CjqQDfVa4SUiODmXvdHQgeGe6ho6/cYTCSbSkVU00M5FNiKNlExSli4zOVfEzkhyqS5RvF2NTGw1fpvvYbR0bSRCDOeiei0me+DO7lrPhNO98oUO7flJALr9n+12WC1qX7SM6wQG2syk0J+p4hTE9bqMSN6aiKke2wZF+Z2EBf5T5hCvwFof6sBT1kaCRUi1HokKoG6zbTLgq8WJ/plJgv3E7LcErw1uXx1a5aaDTh7dF1IGfCIgYrItcTG3JbCVNEPPdqQw2ivs2xGGBYBUVf09aL9iqeOgFRc7gehcyg2UxRJ95yV5BAgonOlF72H8MIFBnrhBCKduchdB3OZLysvYrtEpVrTY32cJ25ZOeSJngLHLRrF2d8kpDsjHIuO2Don1gsvRF56MQ+ILxeY2IEY9g9KvX+q3VLmya3DEEbIaJd6xVD04tGSK+nv7uthVs/9ubCXTZGPaiKHNEX0Zd0ROiTdTbUmQr5dx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(396003)(346002)(136003)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(33656002)(86362001)(64756008)(6506007)(38070700005)(71200400001)(76116006)(66946007)(316002)(52536014)(5660300002)(41300700001)(66446008)(9686003)(8676002)(110136005)(66476007)(53546011)(66556008)(8936002)(478600001)(26005)(2906002)(7696005)(38100700002)(55016003)(122000001)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AXaXkhChG/j60ucbMy1bPFiLEhuxTqZYq17ottt+px4hlDTcL8MAlHdVQvyP?=
 =?us-ascii?Q?EGRg98LaZF9tALW2wwKt3YmNN0J9cy7lDgopSXqB2mrdlpImuX3PBhQ82oXf?=
 =?us-ascii?Q?DU0h8nOOs0eKHRuJWEl6xIQaY3EvqWyrw7pY7ZzJdSI0T2P3SZVB1usH0SRO?=
 =?us-ascii?Q?Aymo6jzCcXRrBz+lgqyEvlv/MyO5T2u6ARB+L/6ghD6kFnqdOFWw5y1yMd35?=
 =?us-ascii?Q?LeU8fxJwOXNx4Iti4Oc11BXhc4EJiKQNtsyTQmAZLiOKcdvdoP+YP18Zt9xa?=
 =?us-ascii?Q?hyUzTVMcUr7lOYlpndzkXAsuCMu517TPHUMc12UfKpnmZJmvd4vyBJbN60Bz?=
 =?us-ascii?Q?P3XYRuuAvW4LBbNEQ7AgjUaTVpjSaKHdPSRibn21j8GpnwP9AWwrrCOwBzfJ?=
 =?us-ascii?Q?3lfPvXdO+eyfnhKoEmOTTYAhrp5VLK7XlGQe6uhrYtw1X3tXrnc/K+G+mrmV?=
 =?us-ascii?Q?L3AelOkH9N6TCKRO2UFbezlMYZIT+XmkaolahmRaaTpNtrESmwTlBKrcntTX?=
 =?us-ascii?Q?cD1EfpduqIokKByJKUiUftDJUZ98HfzkryDtVHWcFgA9OyAJI0jXGFdV39OV?=
 =?us-ascii?Q?Isgf4N6t8JA1RgUQU5dzn7/7v5Ztf90bV2k2nux3SLlhrOb3MJcKOZU3hB3n?=
 =?us-ascii?Q?/vzTE/HYO1R3xLZEIGhlA1CgGlVEC/EzD2K5yqmdOHbsRPqU3r9nwzeUV2uD?=
 =?us-ascii?Q?t+AYTYOhM1M3nPyFWbiVL4rdyMgsHjiYbYIRscbjJkvaA+NJO8biKnxIvu8s?=
 =?us-ascii?Q?FBTYy7nYU8rNnlrj28GwGey9r4Ne4smqZkVaxe0M4Po197htGCnnQU08Oymy?=
 =?us-ascii?Q?Ciqq+FpkvPoSukQJG+Hy0nfb1zk2C2AJGIIgBo+uEHpboMGQ580mwGlXAlYu?=
 =?us-ascii?Q?gF315CAJ9MyspXwnsMgRiRwBwh0YeSVI8dOFuT/jP8sfmqr1piTrBoRg/lDJ?=
 =?us-ascii?Q?+1ulel9ydaad/wl7kDzoTfrP/uG1iSPN+ucPVJNpunGDybU3ZPnBCOf5bjU4?=
 =?us-ascii?Q?FxYYBbI9rFE6SoAO/Zwo6oegE8qsP8VD3qslyrlStMzu9xX7nSNDZkSNIEH0?=
 =?us-ascii?Q?T7RKKHqIvOmQ2T0ffEUQC9VQedcQpVyrG8tyb+PyFTwXcg+74VQX/aDed7HP?=
 =?us-ascii?Q?i/T6DnH0a9djARpLI+sTPFI+G5Xe2IJBJZikNfrMSeFtPDGfME0xPX8+liQo?=
 =?us-ascii?Q?SgBeDPCh33K5mK9XITrGww13lIgG6ltwHBOzYAgbD3G/7YFIIEzGD79Uj04A?=
 =?us-ascii?Q?QYKHl7gQ7b5X8kovzkmWth/hGc6VLZn4SXG94uOhR6nlelUtoK8JRpMDi5ke?=
 =?us-ascii?Q?leLBJKnNnIcUkSBEybh94pVknoXC9M8K3yBxbI5xxF2s6gQZtaVnzCzdXlxU?=
 =?us-ascii?Q?/KJK61naM6lHqsl1n8ouAXeiOWr1e2dfpYi5DPb0XnCICZfgKhBAdCCGeCcJ?=
 =?us-ascii?Q?+cCPoJG6WJM9KMj7n9pFeKBw4Y6d7Fc6r7MTk8WafDTWZF8YZ3mVKO5euD1Z?=
 =?us-ascii?Q?OAWQIt4sYhbsgBRJSH8KNkLTaxfePEyFb9H7WjbV0U28YULi4YUbXX1Rd4wA?=
 =?us-ascii?Q?nrBEWsD0zA9oGjIq//p9/9yA27XzgqaVrCsxlXi0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 02aa26ff-1d21-49dd-6275-08dbc8b293f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2023 10:29:11.4940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U4Cz/LMCmPAtIMN8F5Hf3ArwHUcFD5mmQAgDgXNGZEk0B98gI74stfqCat3Qg27+wkgnrY0WhMSsp3YPOt02Yg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6792
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915/hdcp: Move checks for gsc
 health status
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, October 9, 2023 3:37 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915/hdcp: Move checks for gs=
c
> health status
>=20
> On Mon, 09 Oct 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Move checks for gsc components required for HDCP 2.2 to work into
> > intel_hdcp_gsc.c. This will also help with XE refactor on HDCP's side.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c     |  8 +-------
> >  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 14 ++++++++++++++
> > drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  1 +
> >  3 files changed, 16 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 8cca4793cf92..c89da3568ebd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -173,14 +173,8 @@ bool intel_hdcp2_capable(struct intel_connector
> > *connector)
> >
> >  	/* If MTL+ make sure gsc is loaded and proxy is setup */
> >  	if (intel_hdcp_gsc_cs_required(i915)) {
> > -		struct intel_gt *gt =3D i915->media_gt;
> > -		struct intel_gsc_uc *gsc =3D gt ? &gt->uc.gsc : NULL;
> > -
> > -		if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> > -			drm_dbg_kms(&i915->drm,
> > -				    "GSC components required for HDCP2.2 are
> not ready\n");
> > +		if (!intel_hdcp_gsc_check_status(i915))
>=20
> Naming nitpick, though not intended to block the patch:
>=20
> I always stop at functions named "check" that return a value. What does t=
he
> return value mean? The above code reads, "if not check status".
>=20
> So I usually try to name functions so that it's obvious on both sides wha=
t it
> means, when you read it aloud. For example, "if not status ok".
>=20
> Just something to consider for the future.
>=20
>=20

Got it Jani will keep this in mind in future

Regards,
Suraj Kandpal
> BR,
> Jani.
>=20
>=20
>=20
> >  			return false;
> > -		}
> >  	}
> >
> >  	/* MEI/GSC interface is solid depending on which is used */ diff
> > --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > index d753db3eef15..d355d610bc9f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> > @@ -17,6 +17,20 @@ bool intel_hdcp_gsc_cs_required(struct
> drm_i915_private *i915)
> >  	return DISPLAY_VER(i915) >=3D 14;
> >  }
> >
> > +bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915) {
> > +	struct intel_gt *gt =3D i915->media_gt;
> > +	struct intel_gsc_uc *gsc =3D gt ? &gt->uc.gsc : NULL;
> > +
> > +	if (!gsc || !intel_uc_fw_is_running(&gsc->fw)) {
> > +		drm_dbg_kms(&i915->drm,
> > +			    "GSC components required for HDCP2.2 are not
> ready\n");
> > +		return false;
> > +	}
> > +
> > +	return true;
> > +}
> > +
> >  static int
> >  gsc_hdcp_initiate_session(struct device *dev, struct hdcp_port_data *d=
ata,
> >  			  struct hdcp2_ake_init *ake_data) diff --git
> > a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > index cbf96551e534..eba2057c5a9e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> > @@ -23,5 +23,6 @@ ssize_t intel_hdcp_gsc_msg_send(struct
> drm_i915_private *i915, u8 *msg_in,
> >  				size_t msg_out_len);
> >  int intel_hdcp_gsc_init(struct drm_i915_private *i915);  void
> > intel_hdcp_gsc_fini(struct drm_i915_private *i915);
> > +bool intel_hdcp_gsc_check_status(struct drm_i915_private *i915);
> >
> >  #endif /* __INTEL_HDCP_GCS_H__ */
>=20
> --
> Jani Nikula, Intel
