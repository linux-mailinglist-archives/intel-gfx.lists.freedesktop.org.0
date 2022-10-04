Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD0A5F4A5D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 22:35:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7152A10E106;
	Tue,  4 Oct 2022 20:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2853F10E108
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 20:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664915742; x=1696451742;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=prlBBPvDb5wDyqFeSDtI/3abW9OWyOmUCKviW0+lcjM=;
 b=YqnE9vM5kxLk7tYJ4EdD7/jHJJ4o0syF/gtgK9qJdolsGFCzUIwVSvMr
 CE6PnzH2WGInzLL3D6TiLSll0f9+7e/1MOd7cThlxbRp9AKShXiqlhXlx
 1iYBaM7VIxrjoQFwi2qj8yACfBmlD9UwnnyZ6jORRpgdzIscxQpalf+4E
 XX8McG10tFPI5vkX0kLGTliYiXHV8UKo1oRDbx8q7suNKfWQhe/dFSlgG
 aEVbYTHOIRwlkIXNjd2WIFfxScksPACHRtr9ThDetJwsfp4ub4pgspQUq
 oEeE7qyVS8b9eWD+pR8LDyXrpODxPZW92wrveP5MvPgn+7PR7wUBa1NVt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="304588894"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="304588894"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 13:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="686702177"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="686702177"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 04 Oct 2022 13:35:41 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 13:35:40 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 13:35:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 13:35:40 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 13:35:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sx6osAGYYc8bFTmn6BujES//ppUIloN8OpZqvJIIqNjnshoI36Tv5zxqMioK2+wseCHyCjI7sHdbsXL0WjS1i+HdOrtb/q5LG8sxbUTgXRVo/6tqbepes4LDVyUvM1heMawVvXp9C71vbTs13aFGUAKk9j7GNoOJcNzDx/wrrrn849ZgkdzrOuf61frvtEdid+RKdRgk1ka9CdkP5vDrbfihPprUfm+YPYA6QOyJBY0KjjEcr/89sKDukucEA5tVmuadbPWrusde2SyayvcjQ6wbXGE3c/fAiGXcTxSob73/kQfALqHNYhzgukujPObfTOPN1Njro8+Ff43XazZC+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ffaLUl/d5CgAOL5YsJS7F7xoGfCEyY9FS1/jVvXgDM=;
 b=g17O9zbPnap3iHglrLaRwBTpv34kAfvkOfQ+sqoo6oRZTm0GfBqxiSzgFyshv0YH1F8U7ggVyvaO04utUFdhHHnXITx4fER84O/iPGp4vuF0n8seYa73oduA3nNvEyC49VhvEZ6NX4P7brk+8fQoITZOnA2U4O6SXZcb9CkRG8BPywsAhqX0rY2ngWaZMaY/JYfvtvmTrIoKO4Td+MLw/H/D04ltuHCjr4a4s7omYhcDjhJz9wljDH2ImxVO4dq10aktkN+Qtfj0P5thxfduKaLPTzfHnFFucmGOo/uT8x7OBU/sgD1CsKbBve6gz7UJupdZm4n4jie0nFHMEf8G4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DM4PR11MB6167.namprd11.prod.outlook.com (2603:10b6:8:ac::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.30; Tue, 4 Oct 2022 20:35:37 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::6405:c026:bd12:85d4]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::6405:c026:bd12:85d4%8]) with mapi id 15.20.5676.028; Tue, 4 Oct 2022
 20:35:37 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Extend PSR support
Thread-Index: AQHYwpK6AU5bKvj7QEy+ToB0odBGZa3swmWAgBIaCIA=
Date: Tue, 4 Oct 2022 20:35:37 +0000
Message-ID: <DM4PR11MB5971F1FA93E431AD886767F5875A9@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20220907081543.92268-1-mika.kahola@intel.com>
 <Yy1pq0DmegnkVdNn@intel.com>
In-Reply-To: <Yy1pq0DmegnkVdNn@intel.com>
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
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DM4PR11MB6167:EE_
x-ms-office365-filtering-correlation-id: 685fe616-937f-427c-b459-08daa647ff02
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +sIIU7vNNMBtoPx3PAJbDQAoNLwcy6/zTFYkAGhqVyVIyN31tyTQP801z0Pqtr6VdRFtEVlo5ZmMMUjzOQhETAJm5OlCfYFrtnb0/Z8tJDs5dVgIQDpZ6wij8YHIV9N4xOZx0s7AMkmdv1hmyc1kaUenyshUM6df17V4KcVhg3O8P7JbqanhRcEOWLkBW2Bosnc/Hdd/cHXCwYZpiMzasP2jYPWsaK7xX72l0EKZRzJi9s3GnW2hUkc4qtbX8FTacDH733TG1aq6yBiOJGt3ut5ZrZO3ZQiwvUowzQNoFGTDLqXSUYW0+XkkF1XN2UAHTZq16XPHLMaXcYOxWx1md29yfsSHUT/QQsj23IG24j7o/HnGhqJ2/VK5p86fZY1pi4vC4hbMHfA3mfaCY5spLivuOfLwQWZHnpKU3IXsZGthtZ3W8WtPq7XI2FWGdEqJgUPSs8BX9uYeLBdbzHwomGJ6w/OVKGloklFIBaOP0Rgdj/qRkvwi6BfJtP1YI7HEw1jMr8QCmqZgRVD1qK0HksrFN9z8QP6RmUH74hpt6tZ9NAxgwr1vUPk3yKzfYpCM5soIFvHm4L2yi5PD/1WktxNVC1ZxjjGnAN0o9rLnzMnWezJAiylRnvH+U/G6hqJ1P1nU98za5lyguOJzCLKMBsToSNOuX1dmg9AKPdtMIj5y7FLuQeI0tceiOgAPsEbNM91Heko7nGUgVCMhIcxtT+gIS21lhq29tUEywIpqunlRTNxJi7O6USjabscoPu3DR06Kn4Bfh1IOG/69caSNXw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(346002)(376002)(136003)(366004)(451199015)(86362001)(66476007)(66446008)(76116006)(316002)(66946007)(66556008)(55016003)(6636002)(110136005)(64756008)(8936002)(5660300002)(2906002)(8676002)(4326008)(41300700001)(52536014)(33656002)(71200400001)(66574015)(83380400001)(82960400001)(38100700002)(122000001)(186003)(38070700005)(478600001)(9686003)(26005)(53546011)(7696005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?q4ciNM0DDqbzOs9nG5A2RMxXJo6nVQTjOrqTat6eSJiZWXYTnULE166Dqw?=
 =?iso-8859-1?Q?2Id+KM09yxiHwKO1hwZnYC7e+qBjE+zjQoziiYbA6p4vOawPs0248+Mu8C?=
 =?iso-8859-1?Q?0/KhMl6qrQZtb0gu5nVIBJfzHOoklbjXxExCo+kVFDLn3nXKFGptWlTgM7?=
 =?iso-8859-1?Q?OFYFfSLW1YkUstGzWtHBCBXkxeuQn+yKmXbtTc2q/YmVufetpOc639Mdtr?=
 =?iso-8859-1?Q?rNSzXa0BEgs8eGuqsXIvxMVOpllRH69LUDrncpvA1kFGMsp/M/K/sP/KAS?=
 =?iso-8859-1?Q?ogy0m9mTzGIh/qedu4UpAkHc/PZ2eoRQ0i0PLXhYVskXPBETcnYBGiLWvW?=
 =?iso-8859-1?Q?lE0bC5IWRPlqO/SY4n2aztwpl0cfkOTkR3zVRDUfEs2h9ZHKlB+osibPXD?=
 =?iso-8859-1?Q?EOLXfm2WlQGmKgAybsTG2PbhuGLLnDwrEpMajPXJTfmvw4VqpBk2Q6UJAR?=
 =?iso-8859-1?Q?LPyUTcmojjfb9I6xba02Cv3N51Y8rtu5wXwblUcTEPw3tjys5AoJbvQh5j?=
 =?iso-8859-1?Q?h+bWNxzmEvOZ0WRKUAEPSmUXqUNRWRkPEq81C0bZRhD2Ua8/krww10AOL8?=
 =?iso-8859-1?Q?dX3PYKAsJT7KImJYV0V4hstC1AfpRAzJCeCX05WPfnGUXJQRjIUob1xLAs?=
 =?iso-8859-1?Q?EUlsjJcl11yXjD2iGEi3KRQI7QdBQktydNmpD4Ffrb01Y0Skn7L7pyjBou?=
 =?iso-8859-1?Q?7QPSJsrcEn1Zjmzr3FmbXE1QQN+gJ0uLNTH1k5i2kII8oJtf7DPJQ+UJnc?=
 =?iso-8859-1?Q?dSq+Sz4Ef2mE2MC5fTyHqNS4apP0HcmuyLrETk/m5ZwgJw+jrspSgGycH0?=
 =?iso-8859-1?Q?HkyA8Wy1MiG6WuO7UuRqT77p62tI7CY/4dT9X6VXI5RasW7BIZopLnRvmR?=
 =?iso-8859-1?Q?tWAE2mIYI63YvtRaNNOiYMQ/9BRb2u0VYxtjcR2yOaaHanx2kmD2m+iGAp?=
 =?iso-8859-1?Q?TQz6yXsbm375SXpKE9QsBzClleNVhUEBtvqT5V+wbIrWr4/z4gYbJvCLMa?=
 =?iso-8859-1?Q?QP4nalbWPUO+2yZ/Tf1qI+1oSJ0hh8VcgTbPidQRgbgegxY13ACsjcaVnc?=
 =?iso-8859-1?Q?nGoQwgi+L7K0pkYxqJgKEwAbRiYwpOQMJlaUotx9IdEljfuLcpwEm+ik+i?=
 =?iso-8859-1?Q?cZMgLagZrVepwr1ogUH+LdF1X00YnYnLctkon+vlzNIN2p4k5bmiHo9N5R?=
 =?iso-8859-1?Q?FPHeUV8yQMPOOH1c3Io8j3Q/YJ7V7mkCNdTJBR4MRlZWxl5yPXJM0HC5Oj?=
 =?iso-8859-1?Q?V6NCFcA+/r/M1nwRHeo1PEg4GwtHw6uPjQUugYVKaK/BjG58j/bruSg1+o?=
 =?iso-8859-1?Q?jFjJf7pY+7IGKAzztfxvf57bheTd3QglFy7qAeI2KaW7B2til8jRZZ10GQ?=
 =?iso-8859-1?Q?Eb37/uamZP4GLOCmqvghsaAVozdVlsBHmDFq+932SQpCRv0R0BdrvWM6m1?=
 =?iso-8859-1?Q?pLGhMPDumEV2UYbIHeVb97Ox+HDEszQAmfzLp/roCfQyyAr19OLa/xc5TX?=
 =?iso-8859-1?Q?8h75ixXqtnf3Qb9mnc5qBQwiotURmgaViTgsiZmZ0IKCoCAmUNFDaVEVbc?=
 =?iso-8859-1?Q?qSvcXBG5hqor5IBXRoRVxRGdNhdqdYjaTbxmRg5YZp2pNEKK4mGNIc5C7P?=
 =?iso-8859-1?Q?6pQ+3NMsSFTHIUWdEDVKanQ/ZBjdAqHnMc5WQm9fG/vFymHUtXkmgFJw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 685fe616-937f-427c-b459-08daa647ff02
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2022 20:35:37.6977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ueZe2MUzrosQk9RBzcIa7UmlDYFPamCQMuSL1+xNQb0ApH04w0p36wUhGb2nOZpq9cqEcyDDsqdpjVEFWPGynyea1xRS5M39XDX2BfiXR6A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6167
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Extend PSR support
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

Merged the patch. Thank you for the patch and review.

- Radhakrishna(RK) Sripada

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Lisovskiy, Stanislav
> Sent: Friday, September 23, 2022 1:09 AM
> To: Kahola, Mika <mika.kahola@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Extend PSR support
>=20
> On Wed, Sep 07, 2022 at 11:15:43AM +0300, Mika Kahola wrote:
> > From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> >
> > Meteorlake and display 14 platform don't have any PSR differences
> > when comparing to Alderlake-P display, so it was only necessary to
> > extend some checks to properly program hardware.
> >
> > BSpec: 55229, 49196
>=20
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> >
> > Cc: Mika Kahola <mika.kahola@intel.com>
> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Jouni H=F6gander <jouni.hogander@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 31 +++++++++++++++---------
> >  drivers/gpu/drm/i915/i915_reg.h          |  5 ++++
> >  2 files changed, 25 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 079b7d3d0c53..4170017969c9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -515,7 +515,7 @@ static void hsw_activate_psr2(struct intel_dp
> *intel_dp)
> >
> >  	val |=3D psr_compute_idle_frames(intel_dp) <<
> EDP_PSR2_IDLE_FRAME_SHIFT;
> >
> > -	if (!IS_ALDERLAKE_P(dev_priv))
> > +	if (DISPLAY_VER(dev_priv) <=3D 13 && !IS_ALDERLAKE_P(dev_priv))
> >  		val |=3D EDP_SU_TRACK_ENABLE;
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 10 && DISPLAY_VER(dev_priv) <=3D 12)
> > @@ -598,7 +598,7 @@ static void hsw_activate_psr2(struct intel_dp
> *intel_dp)
> >  static bool
> >  transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder
> trans)
> >  {
> > -	if (IS_ALDERLAKE_P(dev_priv))
> > +	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >=3D 14)
> >  		return trans =3D=3D TRANSCODER_A || trans =3D=3D TRANSCODER_B;
> >  	else if (DISPLAY_VER(dev_priv) >=3D 12)
> >  		return trans =3D=3D TRANSCODER_A;
> > @@ -678,7 +678,7 @@ dc3co_is_pipe_port_compatible(struct intel_dp
> *intel_dp,
> >  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> >  	enum port port =3D dig_port->base.port;
> >
> > -	if (IS_ALDERLAKE_P(dev_priv))
> > +	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >=3D 14)
> >  		return pipe <=3D PIPE_B && port <=3D PORT_B;
> >  	else
> >  		return pipe =3D=3D PIPE_A && port =3D=3D PORT_A;
> > @@ -777,11 +777,11 @@ static bool psr2_granularity_check(struct intel_d=
p
> *intel_dp,
> >  		return intel_dp->psr.su_y_granularity =3D=3D 4;
> >
> >  	/*
> > -	 * adl_p has 1 line granularity. For other platforms with SW tracking=
 we
> > -	 * can adjust the y coordinates to match sink requirement if multiple=
 of
> > -	 * 4.
> > +	 * adl_p and display 14+ platforms has 1 line granularity.
> > +	 * For other platforms with SW tracking we can adjust the y coordinat=
es
> > +	 * to match sink requirement if multiple of 4.
> >  	 */
> > -	if (IS_ALDERLAKE_P(dev_priv))
> > +	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >=3D 14)
> >  		y_granularity =3D intel_dp->psr.su_y_granularity;
> >  	else if (intel_dp->psr.su_y_granularity <=3D 2)
> >  		y_granularity =3D 4;
> > @@ -864,7 +864,8 @@ static bool intel_psr2_config_valid(struct intel_dp
> *intel_dp,
> >  	 * resolution requires DSC to be enabled, priority is given to DSC
> >  	 * over PSR2.
> >  	 */
> > -	if (crtc_state->dsc.compression_enable) {
> > +	if (crtc_state->dsc.compression_enable &&
> > +	    (DISPLAY_VER(dev_priv) <=3D 13 && !IS_ALDERLAKE_P(dev_priv))) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "PSR2 cannot be enabled since DSC is enabled\n");
> >  		return false;
> > @@ -1457,7 +1458,7 @@ static u32 man_trk_ctl_enable_bit_get(struct
> drm_i915_private *dev_priv)
> >
> >  static u32 man_trk_ctl_single_full_frame_bit_get(struct drm_i915_priva=
te
> *dev_priv)
> >  {
> > -	return IS_ALDERLAKE_P(dev_priv) ?
> > +	return IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >=3D 14 ?
> >  	       ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME :
> >  	       PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> >  }
> > @@ -1610,7 +1611,7 @@ static void psr2_man_trk_ctl_calc(struct
> intel_crtc_state *crtc_state,
> >  	if (clip->y1 =3D=3D -1)
> >  		goto exit;
> >
> > -	if (IS_ALDERLAKE_P(dev_priv)) {
> > +	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >=3D 14) {
> >  		val |=3D
> ADLP_PSR2_MAN_TRK_CTL_SU_REGION_START_ADDR(clip->y1);
> >  		val |=3D
> ADLP_PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR(clip->y2 - 1);
> >  	} else {
> > @@ -1647,7 +1648,15 @@ static void
> intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
> >  						struct drm_rect *pipe_clip)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc-
> >dev);
> > -	const u16 y_alignment =3D crtc_state->su_y_granularity;
> > +	const struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> > +	u16 y_alignment;
> > +
> > +	/* ADLP aligns the SU region to vdsc slice height in case dsc is enab=
led */
> > +	if (crtc_state->dsc.compression_enable &&
> > +	    (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >=3D 14))
> > +		y_alignment =3D vdsc_cfg->slice_height;
> > +	else
> > +		y_alignment =3D crtc_state->su_y_granularity;
> >
> >  	pipe_clip->y1 -=3D pipe_clip->y1 % y_alignment;
> >  	if (pipe_clip->y2 % y_alignment)
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> > index c413eec3373f..260d9b680a73 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -8292,6 +8292,11 @@ enum skl_power_gate {
> >  #define GEN12_CULLBIT2			_MMIO(0x7030)
> >  #define GEN12_STATE_ACK_DEBUG		_MMIO(0x20BC)
> >
> > +#define _MTL_CLKGATE_DIS_TRANS_A			0x604E8
> > +#define _MTL_CLKGATE_DIS_TRANS_B			0x614E8
> > +#define MTL_CLKGATE_DIS_TRANS(trans)
> 	_MMIO_TRANS2(trans, _MTL_CLKGATE_DIS_TRANS_A)
> > +#define  MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS
> 	REG_BIT(7)
> > +
> >  #define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
> >  #define MTL_LATENCY_LP2_LP3		_MMIO(0x45784)
> >  #define MTL_LATENCY_LP4_LP5		_MMIO(0x45788)
> > --
> > 2.34.1
> >
