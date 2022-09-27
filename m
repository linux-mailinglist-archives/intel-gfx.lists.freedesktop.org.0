Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5921E5ECDA0
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 22:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C63410E033;
	Tue, 27 Sep 2022 20:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C2910E033
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 20:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664308941; x=1695844941;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4MgntlMBs+zvuWkTyu+TCvr6Y/lTpg0/bCdr74axSnc=;
 b=WusoOLPCBFXdra20WVQb3FOMl4UlNoEJIY0/yhy9jwN//GRqGyRh2dzl
 8ga3rTAjlo35bPNunAgQJ5Mmt/d3eSbgurU9qYeKlzz1xvat6qPGh4hYz
 aseBTpF6brjp3qzWwF8wZVUdNF07rD4XbQf85T5yp6E6fX/WaUW0qDACB
 gD/kqJuz8F7/DbxYSK0jtiZUP47lXqtcmo61xjDRYGnb8BHDW0Oebyz7s
 msM3x8FguK75fjP/B+Knxt6oDekj6shtSXfhetcLHrcuz9u9tJQ6FfGmM
 pd0BeadLoWpGrsP4Q+UBQ371uMN/bpCNit5QsltImDCgqSmGzM00W2Rfw A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="363257638"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="363257638"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 13:02:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="690120503"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; d="scan'208";a="690120503"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 27 Sep 2022 13:02:08 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 13:02:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 13:02:08 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 13:02:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GIiHCbZNrZZve1o97wDl3bYo0B943/Vg0toRiw45EuLWCkj8ZVBR7HVeWoHVZCsKza7gp9TGJRqsE8rPX25prJ1bDpEOPrG3xistqK8QgI0vRbZVHpqaKIxZktZuzgvGNZ/NOJB+hWuSe7ESNGTS3oy5th+TMRzx5Mbl9xGk1p8+1aOVAkeMirVtcjCInYvCECAML8yLsb6XH4TwdWopl+LLD1kxKQAYD4y27WuGiwB+/KElmxE56phhSNjWxk9H+27hlXWMa3jOwWmlt9UcS+ergQYQIPO6jWAmyc/Kp7zs7zTV7mkpAb8yyfbaoapYvuQ+HHCB9+uPBDxsy23esg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DtbrZrBsdEQZ+mQQETTbX5tmnfzJxVQMbkoFsK3sxTw=;
 b=i82Treimj8ZCG6Ba9nm9FVpZC65XlUdMOnyYs4ljPRmKWAZvFJ6EQB2w1FT+2CH9d/XovL8H4YwxlMV2QNrinPgYUP62ACcaANdQddXtOL3rwnVN9BOTHj4CPXhuMT+oHUA7AJ+ldy9NXexvT2NDtfNLWhsSI/wO3nFRmM9Nv/oalHlT+NEdT+vkbFWuMDzCQwku9Ro99qGGoI9+8WL1iBOZTaAWFAYeYYZtgNs8eug0E4O/mkbepcUuay4jCXIptutxiTf8uaJTblMUzgO07ydfrWqeOVotLNzpdBtZc16NdsA0psMlPND5AaY1SyjQWnaZV+W9PxlZnlHmUsElsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by SJ0PR11MB6695.namprd11.prod.outlook.com (2603:10b6:a03:44e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Tue, 27 Sep
 2022 20:02:06 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::d532:cd0f:86bc:2c3c]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::d532:cd0f:86bc:2c3c%7]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 20:02:06 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Don't disable
 DDI/Transcoder when setting phy test pattern
Thread-Index: AQHYyhLhBaIQNizoYEq6keRXfSHd1K3x+5gAgAHISAA=
Date: Tue, 27 Sep 2022 20:02:05 +0000
Message-ID: <8f0e921300db2b6a36497773d4508892e1ea5a43.camel@intel.com>
References: <20220916063720.422321-1-khaled.almahallawy@intel.com>
 <20220916212512.9112-1-khaled.almahallawy@intel.com>
 <871qry2i9x.fsf@intel.com>
In-Reply-To: <871qry2i9x.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|SJ0PR11MB6695:EE_
x-ms-office365-filtering-correlation-id: af0d61f0-1502-4f5c-4c54-08daa0c326fd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dM1hwXYZ42Nifd5KcCnSeU2dg3iJu0DNO9Y+LJMF+ET3pmT8F74JbzKE5guN4QHBO9OsWuZSgprLUu8+eG9g8eVhStRTqrbd0FLbQ9HB12tXNrWeEJa0im6+51BQeH/JEHxr+OMqQQaRSiTQM2fxSBwD4tSOYo+RmbygCj3IyjNy6FTAOOhAkBsuVRxG6j+8CdM68DWcOFpQhgQ6m/5eDfO2ZhF+3fgedPIMhKvq9I/SyWoqvGIIINEfgnRJBd9+0+DlrVCkycbtFt2fMKLHrZ5nUQEZ3ORl2Amf8sezFmG2Ph1ff2MfbycYDNJ1obrMSTIB5c81Qv97zvUk51GFxj+rPE4bon/KOXOZlqMm/uQi0amLJMaZr+LmT7ZuiXkGh74MJWJz7u56rQzcfFFcavobKnzOUSPKZ8FCXpqt4ezWEpqO8F/MrYgk/osv5ZS8tQxd5peJVB5JBjkEijYp7NrKlXY0tqAm6hNSC0g2Hn0EODGMV1w9AVR5dzHlu8AsN1/e/7ow4w2+Od4EARSv0yQaJ5coiU1y4O1QVH+jCNCrK+ybwXhPUTAWqUvQNG1K9p8+Op203qwh3cjMpHdnHUhdFkLMhtMGl11rOaL0TvQQQ3LKtUb+ICVgqzepIUXfjLE6lmB4vlTNx7m/9JCGo61cdDZ2PoodhymEaPU/agpYdH24BvuB34ndpglSTtDHlspJ/f/YZ6a6qfCGw6ENDZDSFc1Rv+t+oqjupl9WqQIO5g/KB3BniB9egexW6jUZeWsc7ToQmUJz2jOeJYOnIQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(346002)(376002)(366004)(39860400002)(451199015)(38100700002)(64756008)(76116006)(4326008)(122000001)(66476007)(38070700005)(66556008)(66446008)(66946007)(2906002)(8676002)(8936002)(86362001)(91956017)(2616005)(186003)(71200400001)(5660300002)(6486002)(83380400001)(41300700001)(6506007)(6512007)(26005)(478600001)(316002)(110136005)(82960400001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-15?Q?4grni/w+xeLxk3OcG0sqTMXEfvMmkxO5/FHnPJYaGf/t/yoVM+fR2GIoq?=
 =?iso-8859-15?Q?a6UYXrKIkGALQaOT4mDjnbl6vTd81KPlr1icJzsoDNj/o4Row5A0njQf3?=
 =?iso-8859-15?Q?9dUQMMRgVWOHcxN3mkbRUkKYwXxH5P5R02wSfBt4+ttEYbn5ZnijrAsl6?=
 =?iso-8859-15?Q?Dh6I+1Ork1LXmnSydZzWOx11UzpSAKvgesOccee85faI0AJqaFkt4ipUb?=
 =?iso-8859-15?Q?mAcdznk4b/F3qrEKtQaciLckev5yuo11w1Ydn0C6aRGpp/oD0RJg8LH6g?=
 =?iso-8859-15?Q?S5sJN/WYvvbYG65U5aU9hyZxNPm54n+sFdGtRUG38q4y/+6OdFSTPjsPI?=
 =?iso-8859-15?Q?S+rERUANit955kqnoIYNWPPIrffmKvb0fs0dPdBzes7aqBjCxmeo19wXT?=
 =?iso-8859-15?Q?khgMoKkFwR6uyKd6awNPDSCcg+b0imL/LQDhGuTDT7bbsdLdMN0N/Ay02?=
 =?iso-8859-15?Q?YRHoPfsHnnbTqPUxpsQ29uVPC2R+PJTSn5fd3EZ6VyUm33iBbrJtpzM9J?=
 =?iso-8859-15?Q?i7xjGN2zJb2wCp+bav2WHja7yZJ9zYYvJKlIMVNDT0qIbw75g2x3pwgz1?=
 =?iso-8859-15?Q?P92oOIb+R/K5XliGd04AhxvCA1NL18HKslaepYC+rRa1J72U2ZSd0rbkK?=
 =?iso-8859-15?Q?y7vv0Sd5f+J6Tzj+rjEoAI5X+4FsHDJv7r59FYWJ+gOUOPAoJJLmbo4hX?=
 =?iso-8859-15?Q?SLA/P5Kl3RnTkFDJxJIdd477YjHr4qIQEspMTaRpxrfXIdpHTq0Sjvc4m?=
 =?iso-8859-15?Q?E+En+PScHM1vOhPFlyqR7MGjOKvR4JeANUvVjjCxu7W26YFr+/ZQT7ou3?=
 =?iso-8859-15?Q?jbiGcyvn0IFro2uK/xhEEvXDBh9CM97PUZOJoaLYQat9HDV9mXWWXAffu?=
 =?iso-8859-15?Q?U5o2TCykSgDs2p2L0GPGLjTjoff6UpDATiNKrkErX/inWKghqi6X9w9m6?=
 =?iso-8859-15?Q?9Wtj/U+T/B9YyO41+8Lp/o4czXEltVxfj6AVctJ3p3uFybQqi91xuPZst?=
 =?iso-8859-15?Q?XcBjSoCTOUxlOW+t50nb/kE4EWKfxymavBNuisbhtV4QEuELFGGeK4K72?=
 =?iso-8859-15?Q?+JQTARnaKWSPby46OllhJkOm0ZFOlQW0ezwz9sFSZBjymDLtcn00tMWWA?=
 =?iso-8859-15?Q?1y+SiHH9yQK2+1Mbk4A3Rzy7wHxbMIWpLP7YKqYw7EIjbM20K991uMrkD?=
 =?iso-8859-15?Q?DFcjbzmWrMRyCFboN6hTFjPJFxt36fwKWufLZVxkObgulxYCmUj9JS1lU?=
 =?iso-8859-15?Q?ZzZYazZKru5DDHnh66b2FqtUUuaclW1YO575vkvfxqGNULHBKiUiWR87i?=
 =?iso-8859-15?Q?26wDBCui6MCMFkBMhQl7vT90i+6zncxM7zq3EMq69xRDkZLrfvNpA0LJD?=
 =?iso-8859-15?Q?me3lvOnFVXCIpkqMg/NUm5VjRLGb1W5fl0/QiFOg6NDUYbElEp0CKkyPD?=
 =?iso-8859-15?Q?Z649UK39EPa9wzBCEQY8o2qX8pLvOV9kfPfb1Ugs/GvWpdjBhWFNCNHJV?=
 =?iso-8859-15?Q?Wd3h2Ag9qs6oa93yubPzotUW/WTU8nIDJOMLMXU/iioBLSn2xo0rTlGyi?=
 =?iso-8859-15?Q?OQ+xnyBx+1Vz9ctWPaixFwpWzz9ABmFx467rOG5meNh792xHdMkalHG1I?=
 =?iso-8859-15?Q?DZQPGMvxq4UjyQIW9UIqzs85Wy8mgmMaeTLaIEszCCD25/n2TW4IjpmTx?=
 =?iso-8859-15?Q?eoZqbQvO88m5SgC1R3CCXrdNYTxjV3ZQb9ArmxSf1qdUI90=3D?=
Content-Type: text/plain; charset="iso-8859-15"
Content-ID: <5B1E59150048F74C920FB1BCBACAF86D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af0d61f0-1502-4f5c-4c54-08daa0c326fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 20:02:05.8922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ad9fXpfC3ifOjIFVvLje+fLRCiA4SCE0iI1gnJDnH9S5Ts8vBu95tCwOaeEXG9P45vU4iW710NNSnQhcPqdxHc8ATLbYssb43nyEKR8wRKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6695
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Don't disable
 DDI/Transcoder when setting phy test pattern
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

On Mon, 2022-09-26 at 19:48 +0300, Jani Nikula wrote:
> On Fri, 16 Sep 2022, Khaled Almahallawy <khaled.almahallawy@intel.com
> > wrote:
> > Bspecs has updated recently to remove the restriction to disable
> > DDI/Transcoder before setting PHY test pattern. This update is to
> > address PHY compliance test failures observed on a port with LTTPR.
> > The issue is that when Transc. is disabled, the main link signals
> > fed
> > to LTTPR will be dropped invalidating link training, which will
> > affect
> > the quality of the phy test pattern when the transcoder is enabled
> > again.
>=20
> And how about platforms prior to display 12? The requirement is still
> there AFAICT.

This restriction is not needed as well for earlier platforms. We are
able to set PHY patterns without these restrictions using legacy shell
script solution we used for compliance since SKL and that what we do
currently for eDP PHY CTS up to RPL.=20
Also windows driver doesn't have this restriction on their code for all
generations.=20
=20
Simply just setting DP_COMP_CTL will trigger the phy test pattern
needed.=20

Thanks
Khaled
>=20


> BR,
> Jani.
>=20
>=20
> > v2: Update commit message (Clint)
> >=20
> > Bspec: 50482
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Clint Taylor <clinton.a.taylor@intel.com>
> > Cc: Or Cochvi <or.cochvi@intel.com>
> > Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 59 -------------------
> > ------
> >  1 file changed, 59 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index c9be61d2348e..2bf323f3f155 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -3675,61 +3675,6 @@ static void
> > intel_dp_phy_pattern_update(struct intel_dp *intel_dp,
> >  	}
> >  }
> > =20
> > -static void
> > -intel_dp_autotest_phy_ddi_disable(struct intel_dp *intel_dp,
> > -				  const struct intel_crtc_state
> > *crtc_state)
> > -{
> > -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> > -	struct drm_device *dev =3D dig_port->base.base.dev;
> > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > -	struct intel_crtc *crtc =3D to_intel_crtc(dig_port-
> > >base.base.crtc);
> > -	enum pipe pipe =3D crtc->pipe;
> > -	u32 trans_ddi_func_ctl_value, trans_conf_value,
> > dp_tp_ctl_value;
> > -
> > -	trans_ddi_func_ctl_value =3D intel_de_read(dev_priv,
> > -						 TRANS_DDI_FUNC_CTL(pip
> > e));
> > -	trans_conf_value =3D intel_de_read(dev_priv, PIPECONF(pipe));
> > -	dp_tp_ctl_value =3D intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
> > -
> > -	trans_ddi_func_ctl_value &=3D ~(TRANS_DDI_FUNC_ENABLE |
> > -				      TGL_TRANS_DDI_PORT_MASK);
> > -	trans_conf_value &=3D ~PIPECONF_ENABLE;
> > -	dp_tp_ctl_value &=3D ~DP_TP_CTL_ENABLE;
> > -
> > -	intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
> > -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
> > -		       trans_ddi_func_ctl_value);
> > -	intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
> > -}
> > -
> > -static void
> > -intel_dp_autotest_phy_ddi_enable(struct intel_dp *intel_dp,
> > -				 const struct intel_crtc_state
> > *crtc_state)
> > -{
> > -	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> > -	struct drm_device *dev =3D dig_port->base.base.dev;
> > -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > -	enum port port =3D dig_port->base.port;
> > -	struct intel_crtc *crtc =3D to_intel_crtc(dig_port-
> > >base.base.crtc);
> > -	enum pipe pipe =3D crtc->pipe;
> > -	u32 trans_ddi_func_ctl_value, trans_conf_value,
> > dp_tp_ctl_value;
> > -
> > -	trans_ddi_func_ctl_value =3D intel_de_read(dev_priv,
> > -						 TRANS_DDI_FUNC_CTL(pip
> > e));
> > -	trans_conf_value =3D intel_de_read(dev_priv, PIPECONF(pipe));
> > -	dp_tp_ctl_value =3D intel_de_read(dev_priv, TGL_DP_TP_CTL(pipe));
> > -
> > -	trans_ddi_func_ctl_value |=3D TRANS_DDI_FUNC_ENABLE |
> > -				    TGL_TRANS_DDI_SELECT_PORT(port);
> > -	trans_conf_value |=3D PIPECONF_ENABLE;
> > -	dp_tp_ctl_value |=3D DP_TP_CTL_ENABLE;
> > -
> > -	intel_de_write(dev_priv, PIPECONF(pipe), trans_conf_value);
> > -	intel_de_write(dev_priv, TGL_DP_TP_CTL(pipe), dp_tp_ctl_value);
> > -	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(pipe),
> > -		       trans_ddi_func_ctl_value);
> > -}
> > -
> >  static void intel_dp_process_phy_request(struct intel_dp
> > *intel_dp,
> >  					 const struct intel_crtc_state
> > *crtc_state)
> >  {
> > @@ -3748,14 +3693,10 @@ static void
> > intel_dp_process_phy_request(struct intel_dp *intel_dp,
> >  	intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX,
> >  				  link_status);
> > =20
> > -	intel_dp_autotest_phy_ddi_disable(intel_dp, crtc_state);
> > -
> >  	intel_dp_set_signal_levels(intel_dp, crtc_state, DP_PHY_DPRX);
> > =20
> >  	intel_dp_phy_pattern_update(intel_dp, crtc_state);
> > =20
> > -	intel_dp_autotest_phy_ddi_enable(intel_dp, crtc_state);
> > -
> >  	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
> >  			  intel_dp->train_set, crtc_state->lane_count);
