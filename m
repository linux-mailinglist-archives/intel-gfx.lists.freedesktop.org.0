Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D81ED606904
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 21:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EC2710E39C;
	Thu, 20 Oct 2022 19:37:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CEAF10E39C
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 19:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666294663; x=1697830663;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0E+HisKmD0hJIbeVdENTyYiSabhOo2Stt70fax6Lqo8=;
 b=dkbpEGdwU2Bxs9mEVYJAx0gjG2KEZUkiA6z9U1PHVGwKyBoZkU9gWsE1
 6wiH2PQ8D+DsGMPWN8MiWbrwLY6KsgHbu26tt+mHWhx0UlCFhiZXdgzfw
 iEjaMQ5APbGuNgLutbejLREzJmL5BQtpYQKRoD46Au0dgGuVlDWPF6l2x
 3WGhTc0RCLWKYurnqg4YSCsA2/UCRWr3519SsjbRGxNcMVG0OmFNg68ig
 0tJudIzUNBtkHje/YErzxfSKFGGgAv1VzznnM68MbLM9yr2U951+VNIhN
 oS81N37rPPEvXMPViKaiBNyXXiXlWmHqQfiqynge5VceSKDnfDB95wk1l Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="368867721"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="368867721"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 12:37:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="959158003"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="959158003"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 20 Oct 2022 12:37:34 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 12:37:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 12:37:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 12:37:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bIYyf1/Jbu43qZVQfkLQVEOGeF4IKN0Gpv2MOtCdooJQA6OrJGwP/DJqCGNenIfTRFPVipXUJBVhxiA3YuFgT2MTolxzgdZj+NaVmpKKJt7+Nx/AbcAvqY4ORfGwIODUwMs4ghP34emU+fALgCOZlScAND3fc8+YG+JpsFjRpe59zh5ILndRKKBVkwnS6Mq2dKyOrJNUA7VfoT2toLWRP0n+llvuq/Ww6a9/hWUkPunL61BNL9SENdQBrlJmZJtuypiknBC5ZDJiM9SagFZ0kG52yGDav4wy3hSEcnSY8HEmGN+9JhII8TR6msoHZ0KGGA/o/9ir9JRsLRUGVeUrAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tVO2sBYt3OTyiCuFbrGmuP62vDKqooBVR/aRRqn5PsM=;
 b=X1w64Uf4Rt2uz881wCZWAkyemRLs3q+5z8VZZ6QDqFVwIJBHvIDVikQa4LbsJgd4P5/mNPilo3brpOzX091bhfFj1YBO46dzwN6DU+pl/i3SiGi6pY1l4nBdmdDobpjr/w8KNvTkoyPucWpQbwTcKU/8RjNl5BAeR0NiEWRd4OkAkpIf51lFT0Lfbw3QtONUCrkPc5f3ntvZhqUugQDTfcRYH+wrwZCxRgeWayykygUgk303RmtYUwQcj4HV2CpOg8cykMwZHNObEB4iyZLn1jj+mu00qC4EULBlvFFXoMxpNePkhu41guFw5MZr8tGESd66gtx/2SNbVkdmDEwguA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by DM4PR11MB5407.namprd11.prod.outlook.com
 (2603:10b6:5:396::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Thu, 20 Oct
 2022 19:37:28 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%11]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 19:37:28 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/display: Do both crawl and squash when
 changing cdclk
Thread-Index: AQHY31wUKux4VuHBuE28TqNJNdWBya4XMJ6AgACGq1A=
Date: Thu, 20 Oct 2022 19:37:28 +0000
Message-ID: <CY4PR1101MB2166C687642A6A980F1331B5F82A9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20221013233223.103381-1-anusha.srivatsa@intel.com>
 <Y1Ex2z6BMloyzLWa@intel.com>
In-Reply-To: <Y1Ex2z6BMloyzLWa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: balasubramani.vivekanandan@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|DM4PR11MB5407:EE_
x-ms-office365-filtering-correlation-id: 19d337ed-8309-45c1-6b53-08dab2d285fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gydfck3pWx11V8ooFZU9HT+1cRwE2G27ojvSvapzExH3z21hi8wGeULxzV2c1cZ1KB7ErnW4VhoRRtx00u4J1sN6AsknQHQ8cWGe4XiCJzzMiMOFqUhTMmP7Mcmw5zrAwJsz8Ac49HkC8Bhj+J90Eydc7+g+IcpvAGg2oG02VSHEdtMd1jUwzR/C7/2WWBi7N7tIDJQaT/HdSu6SQloqM/ytOZ872ZYPpXP5b6HFVCWgZC8Mh9F7aNNXVveo74yT1bEem1HHe9twNBlSyhYvVJaDFMLPFRpBnP+nrm9uefy99fqzEcX1XAbK2OTY8/nWJo+CATcqraZjmjgtdslilhSwtiPyk0grWUM5dhpt35Tf4azLgUtS7W7b9vhn25Nvv7bQbMrCDazwDMoDh3xHWPliXjeGP2G5OSTECSIcGjk7evpkNDn1HHDS9Ir39uf77SnQmFQpAUc2+hkvOD6UQQmB7MapRoCAglnTTXXQkzyDMXL1nYzDYUQRibEwRst4ywmC6vQ5c2++y8QmqcCHBQHX5TJ9ZNngNEdaBDHtP0QqQiToL03V767It0uiMmFzj6g91021GpTCEFQbKsge4vE+j2ExJg2zJkeIoSBBOmVufk849YCg5miUhVa6YP7VrCBqlNs4NbdneBUprrpppqYwl9Plz6osytkA28ayT9cuZ0DFcF1AqYpJ/XeVimWsBWf22IGAiju/LEwcPflqk2H9kqHH9munvwLnr9FMxOu2FYnL4x3WBf4UXmDBNUHSLwmt9A0hYiuvx0M2h5avlI0cTttW5NM58IG7nU/ET6g=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(136003)(376002)(346002)(451199015)(186003)(2906002)(33656002)(71200400001)(38100700002)(82960400001)(122000001)(478600001)(38070700005)(76116006)(4326008)(53546011)(6636002)(83380400001)(66476007)(66574015)(8676002)(66556008)(64756008)(66446008)(110136005)(26005)(66946007)(9686003)(86362001)(7696005)(41300700001)(6506007)(316002)(55016003)(5660300002)(8936002)(52536014)(17423001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?wd3RUEvH1p/JpKlHxOK0c2vXSxsnmiBoOKpiDVPQRPwcdAU7FwkuplOtTB?=
 =?iso-8859-1?Q?A2k4Q9mcxeDszIKOqozSttAHhBXcRsHn4jRg8eM8qUh0zMlojTat9p86xD?=
 =?iso-8859-1?Q?/SXZMuFISXT9WZQijkn8OiwdJKQybM8eqC/ugp4AIowGkZl0FkKYfUsYED?=
 =?iso-8859-1?Q?NIkZgmhwF/teLtrSIL0M2fL9nphC6JDdwBcG0OsGdR0ykldzit57L4vflA?=
 =?iso-8859-1?Q?V1L9uSGNztxPB9Kg9wMO/B15L5dybUdMU1gLLWzwJlwe2EmppxcJmUhGXj?=
 =?iso-8859-1?Q?VAbVvZ5GVg4x30n/fTKtFyrq/4qJLmVS/9q4vxVZMSJw0T5Q08W+seqCLE?=
 =?iso-8859-1?Q?PfgS+XnnJxBYTynHw3yCHtdv/6zP6ZHlLZ6nrxE3q0Y47p0YqbEFkOTfbi?=
 =?iso-8859-1?Q?g6fvMIx90tdENlm/1RQuRNXE+qFG9kL68SQ1yJzcN8oaaPLDwbX6dzmH1g?=
 =?iso-8859-1?Q?XNQqYPRO8x4CRib+wwtwKBDzziDLDx3Mm6rOGBTiOzvIBpzicZOwsyZPhw?=
 =?iso-8859-1?Q?Kt2oxwNDiTge9L67tmx8OOoDO6RVlnMlcLvR9QLaXyJKXtUQkhm5gSTeBY?=
 =?iso-8859-1?Q?rEEFisuVqkRhJyhp86og3l2D+dzfw8m0jdc4LUJeT1hJhKTCZgSzAeBQ6g?=
 =?iso-8859-1?Q?WlSzzbHzSS5G45wa9o22p+pdpVFUQ6MnvDdrmYv0uYij6k/EZO4hSl+5Wz?=
 =?iso-8859-1?Q?DfY5wZQle0Zp9EVK5n6e17/YR8ZBRgx9fFgq9z84iMDbue3HUt2nBlqi7b?=
 =?iso-8859-1?Q?FqQspYIYuk6YppmRiXm8IFPeVAfBaxa/fHneWuQqvrDorUAO3Y7GxW8RpK?=
 =?iso-8859-1?Q?ZNTU2U7Id3ub2xJDhapC6x/biDcsuAY43RYFQiEpVBb3cGgU0EMfWdu4uD?=
 =?iso-8859-1?Q?8pLE64SCmmHiAvO7m5Vnx8qRz/w6KSUJBx9gJmAySwxdQsduVMSsnI1JVo?=
 =?iso-8859-1?Q?R6YefmM6OOqBQD9u/55dfqd+Q/cryiRciRdOXEP8Gr+BbCLMapw/+6M5LH?=
 =?iso-8859-1?Q?Bzay9dPRZtCRyOaqR5uAk9VmuxumEPBoEboPthAaOx0LoSA01NAOCkBKm2?=
 =?iso-8859-1?Q?zFxkHr1+fvfryN9ojARbA8QqcrHs/N97ckOxf5JIT5vPRPgS78fS4FHdD5?=
 =?iso-8859-1?Q?1gC5n6xwV8y6pn7nSvB6O2c3augg3LfYJk7bgeNXJendM4j1BzeWdkUdtB?=
 =?iso-8859-1?Q?1683kp3LKKkrWfMPmjBOHtVvraV6D9dRsHkBAfehYgaSv5wnpgSSir1opU?=
 =?iso-8859-1?Q?R89Zs7oNU7EFnbrBwyO/wkjnzKvPmtulZ6MLeKi0pLNKD04XLgra0edPxL?=
 =?iso-8859-1?Q?R6drORop4Kw3BGkVmhnYhCqiV8vWGqmMEV1DGr+FWmytBI8+MWh5C31L0a?=
 =?iso-8859-1?Q?17CaNxsnfqOyQ9rhU4xvW87qFC/YraFx5Ykac9ZTRF94s9HEEBHJ4Pmk5r?=
 =?iso-8859-1?Q?RoVMfpFWPIXkOOGxudW3nJ3NJwnaw46k6YfYSlwcj2I9K1wLLrLJ86LUve?=
 =?iso-8859-1?Q?NBZbONQt49b0OoA5J1xDIeXZ4E/zyI6K97pJlSNovruraVm2ZbfP2s/Jjk?=
 =?iso-8859-1?Q?peP+ky1cSmIebHA8ZEXkrpEz/F0YkCPIaaw61XiTTAqBP3HPDTvSJS4aWG?=
 =?iso-8859-1?Q?zMG8jjC2wRfplIbAOmdPpCN3FmVlpin0KFuLtAIvG6bl19weHwlN7Gkw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19d337ed-8309-45c1-6b53-08dab2d285fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 19:37:28.6510 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Py/aNzixgflPyxvDxRlOIKUP+/roIdGArT6slDRdyItkmAF1s+0SNBE0JdaFaHWwKNSiFRLLYNut52rW9xe39GHDeZXTQ1x0BWBRVIegaWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5407
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, October 20, 2022 4:33 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 1/2] drm/i915/display: Do both crawl and squash when
> changing cdclk
>=20
> On Thu, Oct 13, 2022 at 04:32:22PM -0700, Anusha Srivatsa wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > For MTL, changing cdclk from between certain frequencies has both
> > squash and crawl. Use the current cdclk config and the new(desired)
> > cdclk config to construtc a mid cdclk config.
> > Set the cdclk twice:
> > - Current cdclk -> mid cdclk
> > - mid cdclk -> desired cdclk
> >
> > v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk change via
> > modeset for platforms that support squash_crawl sequences(Ville)
> >
> > v3: Add checks for:
> > - scenario where only slow clock is used and cdclk is actually 0
> > (bringing up display).
> > - PLLs are on before looking up the waveform.
> > - Squash and crawl capability checks.(Ville)
> >
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 157
> > +++++++++++++++++----
> >  1 file changed, 128 insertions(+), 29 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index ad401357ab66..430b4cb0a8ab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1675,7 +1675,7 @@ static u32 cdclk_squash_waveform(struct
> drm_i915_private *dev_priv,
> >  	const struct intel_cdclk_vals *table =3D dev_priv->display.cdclk.tabl=
e;
> >  	int i;
> >
> > -	if (cdclk =3D=3D dev_priv->display.cdclk.hw.bypass)
> > +	if (cdclk =3D=3D dev_priv->display.cdclk.hw.bypass || cdclk =3D=3D 0)
>=20
> cdclk should never be zero. Why is that needed? Hmm. Ah, we do set it to
> zero during sanitation. But that shouldn't matter since we shouldn't call=
 this
> in that case...
>=20
> >  		return 0;
> >
> >  	for (i =3D 0; table[i].refclk; i++)
> > @@ -1689,37 +1689,72 @@ static u32 cdclk_squash_waveform(struct
> drm_i915_private *dev_priv,
> >  	return 0xffff;
> >  }
> >
> > -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > -			  const struct intel_cdclk_config *cdclk_config,
> > -			  enum pipe pipe)
> > +static int cdclk_squash_divider(u16 waveform) {
> > +	return hweight16(waveform ?: 0xffff); }
> > +
> > +static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,
> > +				   const struct intel_cdclk_config
> *old_cdclk_config,
> > +				   const struct intel_cdclk_config
> *new_cdclk_config,
> > +				   struct intel_cdclk_config *mid_cdclk_config)
> {
> > +	u16 old_waveform =3D cdclk_squash_waveform(i915, old_cdclk_config-
> >cdclk);
> > +	u16 new_waveform =3D cdclk_squash_waveform(i915,
> > +new_cdclk_config->cdclk);
>=20
> ... but here we do call it. Just moving these to be called after the vco =
checks
> should take care of that issue.

Ok. Makes sense.

> > +	u16 mid_waveform;
> > +	int size =3D 16;
> > +	int div =3D 2;
> > +
> > +	/* Return if both Squash and Crawl are not present */
> > +	if (!HAS_CDCLK_CRAWL(i915) || !has_cdclk_squasher(i915))
> > +		return false;
> > +
> > +	/* Return if Squash only or Crawl only is the desired action */
> > +	if (old_cdclk_config->vco <=3D 0 || new_cdclk_config->vco <=3D 0 ||
> > +	    old_cdclk_config->vco =3D=3D new_cdclk_config->vco ||
> > +	    old_waveform =3D=3D new_waveform)
> > +		return false;
> > +
> > +	*mid_cdclk_config =3D *new_cdclk_config;
> > +
> > +	/* If moving to a higher cdclk(squash) the mid cdclk config
> > +	 * should have the new (squash) waveform.
> > +	 * If moving to a lower cdclk (crawl) the mid cdclk config
> > +	 * should have the new vco.
> > +	 */
> > +
> > +	if (cdclk_squash_divider(new_waveform) >
> cdclk_squash_divider(old_waveform)) {
> > +		mid_cdclk_config->vco =3D old_cdclk_config->vco;
> > +		mid_waveform =3D new_waveform;
> > +	} else {
> > +		mid_cdclk_config->vco =3D new_cdclk_config->vco;
> > +		mid_waveform =3D old_waveform;
> > +	}
> > +
> > +	mid_cdclk_config->cdclk =3D
> DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> > +						    mid_cdclk_config->vco, size
> * div);
> > +
> > +	/* make sure the mid clock came out sane */
> > +
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> > +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> > +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> > +		    i915->display.cdclk.max_cdclk_freq);
> > +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915,
> mid_cdclk_config->cdclk) !=3D
> > +		    mid_waveform);
> > +
> > +	return true;
> > +}
> > +
> > +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			   const struct intel_cdclk_config *cdclk_config,
> > +			   enum pipe pipe)
> >  {
> >  	int cdclk =3D cdclk_config->cdclk;
> >  	int vco =3D cdclk_config->vco;
> >  	u32 val;
> >  	u16 waveform;
> >  	int clock;
> > -	int ret;
> > -
> > -	/* Inform power controller of upcoming frequency change. */
> > -	if (DISPLAY_VER(dev_priv) >=3D 11)
> > -		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE,
> > -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > -	else
> > -		/*
> > -		 * BSpec requires us to wait up to 150usec, but that leads to
> > -		 * timeouts; the 2ms used here is based on experiment.
> > -		 */
> > -		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > -
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > -					      0x80000000, 150, 2);
> > -	if (ret) {
> > -		drm_err(&dev_priv->drm,
> > -			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
> > -			ret, cdclk);
> > -		return;
> > -	}
> >
> >  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco
> > 0 && vco > 0) {
> >  		if (dev_priv->display.cdclk.hw.vco !=3D vco) @@ -1772,6
> +1807,44 @@
> > static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >
> >  	if (pipe !=3D INVALID_PIPE)
> >
> 	intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv,
> > pipe));
> > +}
> > +
> > +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > +			  const struct intel_cdclk_config *cdclk_config,
> > +			  enum pipe pipe)
> > +{
> > +	struct intel_cdclk_config mid_cdclk_config;
> > +	int cdclk =3D cdclk_config->cdclk;
> > +	int ret;
> > +
> > +	/* Inform power controller of upcoming frequency change. */
> > +	if (DISPLAY_VER(dev_priv) >=3D 11)
> > +		ret =3D skl_pcode_request(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > +	else
> > +		/*
> > +		 * BSpec requires us to wait up to 150usec, but that leads to
> > +		 * timeouts; the 2ms used here is based on experiment.
> > +		 */
> > +		ret =3D snb_pcode_write_timeout(&dev_priv->uncore,
> > +
> HSW_PCODE_DE_WRITE_FREQ_REQ,
> > +					      0x80000000, 150, 2);
> > +	if (ret) {
> > +		drm_err(&dev_priv->drm,
> > +			"Failed to inform PCU about cdclk change (err %d,
> freq %d)\n",
> > +			ret, cdclk);
> > +		return;
> > +	}
> > +
> > +	if (cdclk_crawl_and_squash(dev_priv, &dev_priv->display.cdclk.hw,
> > +				   cdclk_config, &mid_cdclk_config)) {
> > +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	} else {
> > +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> > +	}
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 11) {
> >  		ret =3D snb_pcode_write(&dev_priv->uncore,
> SKL_PCODE_CDCLK_CONTROL,
> > @@ -1944,6 +2017,27 @@ void intel_cdclk_uninit_hw(struct
> drm_i915_private *i915)
> >  		skl_cdclk_uninit_hw(i915);
> >  }
> >
> > +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private
> *i915,
> > +					     const struct intel_cdclk_config *a,
> > +					     const struct intel_cdclk_config *b) {
> > +	u16 old_waveform;
> > +	u16 new_waveform;
> > +
> > +	if (a->vco =3D=3D 0 || b->vco =3D=3D 0)
> > +		return false;
> > +
> > +	if (HAS_CDCLK_CRAWL(i915) && has_cdclk_squasher(i915)) {
> > +		old_waveform =3D cdclk_squash_waveform(i915, a->cdclk);
> > +		new_waveform =3D cdclk_squash_waveform(i915, b->cdclk);
> > +	} else {
> > +		return false;
> > +	}
>=20
> A bit of weird construct this. I would make it
>=20
> if (!has_crawl || !has_squash)
> 	return false;
> ...
>=20
> just like you had in the other function.
>=20
> And doing that check before the vco checks would also be more consistent
> with the other function.

As @Vivekanandan, Balasubramani has also pointed out I will spin another pa=
tch that adds squash feature to the device info. That way both squash and c=
rawl can be accessed similarly - like pointed above.

>=20
>=20
> > +
> > +	return a->vco !=3D b->vco &&
> > +	       old_waveform !=3D new_waveform; }
> > +
> >  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> >  				  const struct intel_cdclk_config *a,
> >  				  const struct intel_cdclk_config *b) @@ -
> 2750,9 +2844,14 @@ int
> > intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> >  			pipe =3D INVALID_PIPE;
> >  	}
> >
> > -	if (intel_cdclk_can_squash(dev_priv,
> > -				   &old_cdclk_state->actual,
> > -				   &new_cdclk_state->actual)) {
> > +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> > +					     &old_cdclk_state->actual,
> > +					     &new_cdclk_state->actual)) {
> > +		drm_dbg_kms(&dev_priv->drm,
> > +			    "Can change cdclk via crawler and squasher\n");
>=20
> "crawler" is a bit weird term here. Maybe we should fix up all of thse to=
 use
> the terms "crawling" and "squashing" or something along those lines. I'd
> make that a separate patch though.

Yup on it. Separate patch for just changing the terminology and another pat=
ch for adding squash to the device info.
Thanks for the feedback!

Anusha
>=20
> > +	} else if (intel_cdclk_can_squash(dev_priv,
> > +					&old_cdclk_state->actual,
> > +					&new_cdclk_state->actual)) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "Can change cdclk via squasher\n");
> >  	} else if (intel_cdclk_can_crawl(dev_priv,
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
