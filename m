Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40201292634
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 13:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CDA36E91D;
	Mon, 19 Oct 2020 11:08:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D206E91D
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 11:08:17 +0000 (UTC)
IronPort-SDR: dVZmZil1Ai8+8oSUhkT1H7yNqIti/s39Ce2we5XP0gIgzCwHcdAtg/x82yD/WOsc56xTZla92+
 bDIcddMpYRJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="166230835"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="166230835"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 04:08:16 -0700
IronPort-SDR: qRZaV0g6cAfNNFgvUx5MwTWQuHXlJVBXnca12/BF+1UzgipWSk6Ox1Zht7YNh+miPSU7y1BFVs
 xKUQKF9TBfjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="521969913"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga006.fm.intel.com with ESMTP; 19 Oct 2020 04:08:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Oct 2020 04:08:16 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 19 Oct 2020 04:08:16 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 19 Oct 2020 04:08:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 19 Oct 2020 04:08:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fr4WxG/InjzqFUCNSALghFh9EKYZQk3DdgGKT1aOKt713e2sz4stEwQMI0Gyr/YBmLNM53c3VuGhpnerdJuWDS4aVa+nK1WF16XMEnQNfBnVaMdl5FCD+OXcvmM8/B38+4e2xGY7bUTI5Bw6LvV1hbjOUgAveiOnRLNSLcVuTOxDvynI0HwZGVXgnKdjfARRyBVmT32hNuCc4QsMNTM6vrWuCZCfOvq4hZvyahd8KfuxcUGGHI9XVWAo1Iz/XNo45A8BNJutgRzciKCqsZgBVOYCx1209Vk2ixme3ItI3H/7zrswnhE13w9ql4nivFNbv0hKUrtr+UWZmL08ius8HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9BgEDbS+AYsLuLQvQpPsrRVEYkrvwmYJKUyouG40szo=;
 b=XySKTj2JFbvc0wjdONi9efRSEY5O/EyaQuIjcSN6NSMylVqGdHD7mMIO7GIlM8+NKaU13nG8XWElu0xz+MkMRwMwk+Qh8DuJkTyzW6/uBGUsY0MB00j2Y+8kETR8/Es2xNLwkTW8hIOA+AkXYJYIxlED9UhCssHtbB//Y9M6OH49+rLmf8qbJePgWoV0fW72+ghc9B8ucFnVYdCPHALGbJzjkuBBzZX3TeQ9LbW0NReUyLy1KUWapkiZo9OfmjmLQGcPmMEkUomgbZkcMaCZfKCavWnIDrXAPKYTjvWZkLO6GWzdV5HFSxa0ZOKUz3xo2OgvPICjwIlSx9OaBdcrmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9BgEDbS+AYsLuLQvQpPsrRVEYkrvwmYJKUyouG40szo=;
 b=i+VcAciRxlGeOdP2UHsc/90Yz/tYZL9AmXFEs8huxcVxU2u4NjoIHBD3hm5E90w/0Qohf4rqQQKEmdVGCHdk4EpLFyS0qxiQyXAl+ikGXO3pMVLONESdJDKqxURJa/m+IfbUXiRPl/0Nhv3lYOgkFQz3a2NjzN3eIV4a9cAgCI4=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB2685.namprd11.prod.outlook.com (2603:10b6:805:58::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.25; Mon, 19 Oct
 2020 11:08:14 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::791d:58e0:ec0d:9d59]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::791d:58e0:ec0d:9d59%3]) with mapi id 15.20.3477.028; Mon, 19 Oct 2020
 11:08:14 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/edp/jsl: Update vswing table for HBR and HBR2
Thread-Index: AQHWo/y4R2cpymQEMEG6JrPmtdwza6mex0DA
Date: Mon, 19 Oct 2020 11:08:14 +0000
Message-ID: <SN6PR11MB3421D9B8BF4554CF14B24B61DF1E0@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201014145914.67547-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <c85c1e749bf9b91787e609659000ec8c44662b95.camel@intel.com>
In-Reply-To: <c85c1e749bf9b91787e609659000ec8c44662b95.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.249.233.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f665907-17f9-458e-1b15-08d8741f4661
x-ms-traffictypediagnostic: SN6PR11MB2685:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2685C3F83389AB65800C1467DF1E0@SN6PR11MB2685.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /A+swovPxuBKi5qRKZC7E6oeEJSEA0tbdfikxn80mqlRlnHTFhe8/Qim4A7y6ioPNp1v63eB+eCSI3crEallO3vqa6q9GiE7XrOM5lKPno7IcKmS1ch2ehqwzI1jD6H7K9XyrjPLiYi4L3mGL1ESm21fVa8NMwUeok/VW+leNQ3tQm6dU9/5H4Eku51xLvO1aQJ1oJOq0xY0FDoI19RK6Cc9/FPosy9G3dTbkaMvp8LhAH4cUYVRJwXDPgkBRsjE+v2fOKQjee4uJ6XHPuG17kKxzuKoiX9uKk/Cc301ZaVnUeqDxylNRmqvvwFWUmlMl83trLgihGJqmjB/aiLH2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(376002)(346002)(39860400002)(136003)(186003)(15650500001)(4001150100001)(110136005)(66446008)(64756008)(66476007)(66556008)(66946007)(478600001)(76116006)(6506007)(53546011)(55016002)(26005)(5660300002)(52536014)(33656002)(2906002)(83380400001)(9686003)(86362001)(316002)(8676002)(8936002)(7696005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: t8MLw26vA9QmxdxIu+ZzXhWgOpRuEdxcd4hw+3uGxoNI3v3UycQD5hz+F5NGSw25EN8ARvfUiMNIrUUl8HzC9JiebHwpP0/5rV3Z9Qd/dnomYpn67a2wutUTwG9vVBAC1CBnzGuBOixmaTOQv2C68Moe7L/YWGHZvc11rFM/iyuv8iU4yyTLn2KlYsQhuYECOtmnhArPtZEaxnRWJdES8oVY2MxsEks/7/iWvjLjlYxWv4M0LcgfLIOKwcKCXYJJyRW3uLAzN7sdZpoCnwvN8e660EZ9cYwL6T8B79jgwzjZCy5pIi2n1nuo7V+3oZw7DqaRLOYojA1sJ2pqvcW2xX/yuwGyQWmGovniksBEENbxKg6CO2ycBP/2TeVsTm43/9cSOcG5VkU8HC7q3QA6VGFoD67lQYeHe8w2/Va0ynccSG0nyI1HwF1WqoYWsiH0FMoPrGAE/Z8PYdr4xjZ6ov/cJHyc2CEkf3M8oXAzTo+47OCKcPiWCgZ9TD0WYj6wu6rBJOFGhfGZQ8qM7+V0olD/TWYmMS0afFtBpIAJlRfW702W+ncqBufDjQCna3WApuOoUowVh2uhpBtwe7Fsq1zJuMdyGa54wbnbtKeqgp1Y3Xbj5ZJwBxSnZJ/QY8nYfNCMyvcFA/WGk6KNk0XdSQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f665907-17f9-458e-1b15-08d8741f4661
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2020 11:08:14.4833 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IulCb+THb+K0V706PKvlFY3/FhDzSGQM1Pmc2zWN600wY/iGtNM/Ha37Le968NmVl05JuhsLojgNzq7r3A1emkf5DWt2hfvHlzc6e/7UCZBicTVJUHU7G+jirj6IIRlqMQ22xma0FJJCfA2lHcmg8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2685
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp/jsl: Update vswing table for
 HBR and HBR2
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jose,

I use scripts/checkpatch.pl. And it has reported me following :

drm-tip# ./scripts/checkpatch.pl 0001-drm-i915-edp-jsl-Update-vswing-table-for-HBR-and-HBR.patch
WARNING: else is not generally useful after a break or return
#88: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:1222:
+                       return jsl_combo_phy_ddi_translations_edp_hbr2;
+               } else {

total: 0 errors, 1 warnings, 111 lines checked

I have got 1 warning, which is because I have tried to maintain same format which is there in other similar functions in intel_ddi.c. If I will change to resolve this warning, everything else also needs similar change as applicable.

Please let me know how you want me to proceed.

Thanks,
Tejas 

> -----Original Message-----
> From: Souza, Jose <jose.souza@intel.com>
> Sent: 17 October 2020 02:11
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; dri-
> devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/edp/jsl: Update vswing table for HBR and
> HBR2
> 
> Please fix the checkpatch errors, you can run it locally by running "dim
> checkpatch drm-tip/drm-tip..HEAD", search for instructions of how to fetch
> and setup dim.
> 
> Also no need to CC drm-devel for patches that only touches i915, drm-devel
> is for drivers that don't have it's own list and for changes in drm subsystem
> that affects all other drm based drivers.
> 
> On Wed, 2020-10-14 at 20:29 +0530, Tejas Upadhyay wrote:
> > JSL has update in vswing table for eDP.
> >
> > BSpec: 21257
> >
> > Cc: Souza Jose <jose.souza@intel.com>
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 87
> > +++++++++++++++++++++++-
> >  1 file changed, 85 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index bb0b9930958f..7ab694c6d8df 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -582,6 +582,34 @@ static const struct cnl_ddi_buf_trans
> ehl_combo_phy_ddi_translations_dp[] = {
> >  { 0x6, 0x7F, 0x3F, 0x00, 0x00 },/* 900   900      0.0   */
> >  };
> >
> >
> > +static const struct cnl_ddi_buf_trans
> jsl_combo_phy_ddi_translations_edp_hbr[] = {
> > +/* NT mV Trans mV db    */
> > +{ 0x8, 0x7F, 0x3F, 0x00, 0x00 },        /* 200   200      0.0   */
> > +{ 0x8, 0x7F, 0x38, 0x00, 0x07 },        /* 200   250      1.9   */
> > +{ 0x1, 0x7F, 0x33, 0x00, 0x0C },        /* 200   300      3.5   */
> > +{ 0xA, 0x35, 0x36, 0x00, 0x09 },        /* 200   350      4.9   */
> > +{ 0x8, 0x7F, 0x3F, 0x00, 0x00 },        /* 250   250      0.0   */
> > +{ 0x1, 0x7F, 0x38, 0x00, 0x07 },        /* 250   300      1.6   */
> > +{ 0xA, 0x35, 0x35, 0x00, 0x0A },        /* 250   350      2.9   */
> > +{ 0x1, 0x7F, 0x3F, 0x00, 0x00 },        /* 300   300      0.0   */
> > +{ 0xA, 0x35, 0x38, 0x00, 0x07 },        /* 300   350      1.3   */
> > +{ 0xA, 0x35, 0x3F, 0x00, 0x00 },        /* 350   350      0.0   */
> > +};
> > +
> > +static const struct cnl_ddi_buf_trans
> jsl_combo_phy_ddi_translations_edp_hbr2[] = {
> > +/* NT mV Trans mV db    */
> > +{ 0x8, 0x7F, 0x3F, 0x00, 0x00 },        /* 200   200      0.0   */
> > +{ 0x8, 0x7F, 0x3F, 0x00, 0x00 },        /* 200   250      1.9   */
> > +{ 0x1, 0x7F, 0x3D, 0x00, 0x02 },        /* 200   300      3.5   */
> > +{ 0xA, 0x35, 0x38, 0x00, 0x07 },        /* 200   350      4.9   */
> > +{ 0x8, 0x7F, 0x3F, 0x00, 0x00 },        /* 250   250      0.0   */
> > +{ 0x1, 0x7F, 0x3F, 0x00, 0x00 },        /* 250   300      1.6   */
> > +{ 0xA, 0x35, 0x3A, 0x00, 0x05 },        /* 250   350      2.9   */
> > +{ 0x1, 0x7F, 0x3F, 0x00, 0x00 },        /* 300   300      0.0   */
> > +{ 0xA, 0x35, 0x38, 0x00, 0x07 },        /* 300   350      1.3   */
> > +{ 0xA, 0x35, 0x3F, 0x00, 0x00 },        /* 350   350      0.0   */
> > +};
> > +
> >  struct icl_mg_phy_ddi_buf_trans {
> >  u32 cri_txdeemph_override_11_6;
> >  u32 cri_txdeemph_override_5_0;
> > @@ -1162,6 +1190,57 @@ ehl_get_combo_buf_trans(struct intel_encoder
> > *encoder,  return ehl_get_combo_buf_trans_dp(encoder, crtc_state,
> > n_entries);  }
> >
> >
> > +static const struct cnl_ddi_buf_trans *
> > +jsl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder,
> > +    const struct intel_crtc_state *crtc_state,
> > +    int *n_entries)
> > +{
> > +*n_entries = ARRAY_SIZE(icl_combo_phy_ddi_translations_hdmi);
> > +return icl_combo_phy_ddi_translations_hdmi;
> > +}
> > +
> > +static const struct cnl_ddi_buf_trans *
> > +jsl_get_combo_buf_trans_dp(struct intel_encoder *encoder,
> > +  const struct intel_crtc_state *crtc_state,
> > +  int *n_entries)
> > +{
> > +*n_entries = ARRAY_SIZE(icl_combo_phy_ddi_translations_dp_hbr2);
> > +return icl_combo_phy_ddi_translations_dp_hbr2;
> > +}
> > +
> > +static const struct cnl_ddi_buf_trans *
> > +jsl_get_combo_buf_trans_edp(struct intel_encoder *encoder,
> > +   const struct intel_crtc_state *crtc_state,
> > +   int *n_entries)
> > +{
> > +struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> > +
> > +if (dev_priv->vbt.edp.low_vswing) {
> > +if (crtc_state->port_clock > 270000) { *n_entries =
> > +ARRAY_SIZE(jsl_combo_phy_ddi_translations_edp_hbr2);
> > +return jsl_combo_phy_ddi_translations_edp_hbr2;
> > +} else {
> > +*n_entries = ARRAY_SIZE(jsl_combo_phy_ddi_translations_edp_hbr);
> > +return jsl_combo_phy_ddi_translations_edp_hbr;
> > +}
> > +}
> > +
> > +return jsl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries); }
> > +
> > +static const struct cnl_ddi_buf_trans *
> > +jsl_get_combo_buf_trans(struct intel_encoder *encoder,
> > +       const struct intel_crtc_state *crtc_state,
> > +       int *n_entries)
> > +{
> > +if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) return
> > +jsl_get_combo_buf_trans_hdmi(encoder, crtc_state, n_entries); else if
> > +(intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP)) return
> > +jsl_get_combo_buf_trans_edp(encoder, crtc_state, n_entries); else
> > +return jsl_get_combo_buf_trans_dp(encoder, crtc_state, n_entries); }
> > +
> >  static const struct cnl_ddi_buf_trans *
> > tgl_get_combo_buf_trans_hdmi(struct intel_encoder *encoder,
> >       const struct intel_crtc_state *crtc_state, @@ -2363,7 +2442,9 @@
> > static u8 intel_ddi_dp_voltage_max(struct intel_dp *intel_dp,  else
> > tgl_get_dkl_buf_trans(encoder, crtc_state, &n_entries);  } else if
> > (INTEL_GEN(dev_priv) == 11) { -if (IS_JSL_EHL(dev_priv))
> > +if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE))
> > +jsl_get_combo_buf_trans(encoder, crtc_state, &n_entries); else if
> > +(IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))
> >  ehl_get_combo_buf_trans(encoder, crtc_state, &n_entries);  else if
> > (intel_phy_is_combo(dev_priv, phy))  icl_get_combo_buf_trans(encoder,
> > crtc_state, &n_entries); @@ -2544,7 +2625,9 @@ static void
> > icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
> >
> >
> >  if (INTEL_GEN(dev_priv) >= 12)
> >  ddi_translations = tgl_get_combo_buf_trans(encoder, crtc_state,
> > &n_entries); -else if (IS_JSL_EHL(dev_priv))
> > +else if (IS_PLATFORM(dev_priv, INTEL_JASPERLAKE)) ddi_translations =
> > +jsl_get_combo_buf_trans(encoder, crtc_state, &n_entries); else if
> > +(IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))
> >  ddi_translations = ehl_get_combo_buf_trans(encoder, crtc_state,
> > &n_entries);  else  ddi_translations =
> > icl_get_combo_buf_trans(encoder, crtc_state, &n_entries);
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
