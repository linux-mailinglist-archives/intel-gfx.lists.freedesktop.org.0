Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D90237B09E8
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 18:22:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D5010E569;
	Wed, 27 Sep 2023 16:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D835A10E567
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 16:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695831739; x=1727367739;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yvyg8sFjbgtlVjVOVp45oSt/ZKYP0rl7h6Ze0UDZcN4=;
 b=XP8YUKFJSubiMdXmjUlsA1somy4dws14IAbAT1OrK/oRWq/EACtt+drd
 0xRhdi65Ufekuw2Lyd64P2bfC65DH3CGshOMsFyjvE0GHif9Enz3rzNqX
 akQhXPUeQJUH+xaTgfTeCmTzMF5FSHR/d65NmG1xPXGMZmGqQ00TgU5vu
 SfzEb4qxyqZu+oIygUVhA3IliaKaLbSot5IXDJRd8URrgMVuaZMAQVt7G
 13LP6AKApC6inGCKe3j1Sn39qRNEJnoNNHVknROO2qP1KSidA9cJijNtd
 PWXqh5stgS7u7qlf17snJfq9szlW8JBzCy8aWkP+Atzr/kRjKRaauc2kj w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="379142477"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="379142477"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 09:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="778588686"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="778588686"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2023 09:16:45 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 09:16:44 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 09:16:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 27 Sep 2023 09:16:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 27 Sep 2023 09:16:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ousi7ZVpDm9dR/iUl83Nfj5jSBLZbWoZDaFZpSNlR7BETKFkRXIIGmP/13LrbIf8OnQWPhIY+3BBskkkuCBhQE8lB2IeffIy4fodgATKYyIhogOJSQBurV6bxKX9uUgXN0hk/9xYV29khpr0qJFqtpeDJDe1LKoojkB5NdtJ/fw/ZWHO/V1scJoGUKGOqM+U/jN7msZYN/FDrrHLURCw2jdpKL/9RbxYQEzlHdkDqsih5DNgdIhq9UgCwadonUylX73p3kgcXYdstX832nktM2b/TE5037hCZYZlQR2rcOuniJOCKc25z2QqX4vpKZvocGeeIKumzQn0yRwPDSmW/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZuE8EDgM9ivzp+YyiLrTvowd2DmM3LXEoHTtVWNk/FI=;
 b=VBYm13hikPlOVfbTZsVpz3VbqycQ464VkTZX18rN7eVF7lwwCMUdeMaGLNxjD1Vna4oBioRo5SFCvubVKo4L+DAGCXo7XxexQTLzrKD0Ngp/c8n/30s0Au0J0TRy+NDG6XfH30VgzO/Tw1UpabEgVIqSDV8ajgU7CqiumgSn2Rokny8aF4dlAXEja5H3tL4dSLLjuFunkp+WwyHq8HOPWHXhsvKqauCeM4JJv3OgWLk0jg8Gg/5OQRvrG+MUZwRjPXBdNeKuvd8S/nY+2+w/DSAzazDuHbdxDGjs29yElzCAtYSUNo4j188MCAqSDC5FKm1T/ZHUdt9QNJ8LzCg3CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA2PR11MB5210.namprd11.prod.outlook.com (2603:10b6:806:fa::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.20; Wed, 27 Sep 2023 16:16:40 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6813.027; Wed, 27 Sep 2023
 16:16:38 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 05/19] drm/i915/dsb: Define the contents
 of some intstructions bit better
Thread-Index: AQHZmKtLi3A7OhBt6kGrYNmWrm8KRLAWrWmQgBjSfwCAAAo+IA==
Date: Wed, 27 Sep 2023 16:16:38 +0000
Message-ID: <DM4PR11MB636015B16F0FC18B0158EEC6F4C2A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-6-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360F135F0BAB87C3FE9D389F4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
 <ZRRMZP-5bCnENM2O@intel.com>
In-Reply-To: <ZRRMZP-5bCnENM2O@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA2PR11MB5210:EE_
x-ms-office365-filtering-correlation-id: 95531fcf-09d2-4347-45fd-08dbbf752088
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oxPVQZ3l7CD/IUoVJ+jovKJwzUKqHkGGReBurEVFtUx7wd6ZTsistz8/2w0LxZQip8VDpb+PscBq/R4JREooFxtoUr2riJc8kuqb8/C7EsYQZhnQtdeY4yNgtVy1vXU5JURiZKkBFLpTt6AZZgsJ9eZg5RCQCGVJ7Yr6vHsWKhHkKFIk34i+vQUfbk6IAdmYBY8SdjWJzyR4pgEa21hW0wBlY5Qc2ycn6hA+vaekOxXWcy8++u9JGW+YCltw6VB9LAi97ugs3R0D5jtYsGsozBlCl2503MZeqlN+0CUkGXmtl5SN/NoOperwpEx8Wgg/igQL+mfmjzRXwHTCyqkbMSXzr8COFQglY9eFobs31Ju2AbhGJAE8fv4lc/ggDdod6OATMDz842Xi1OGhlo5fY+fs56zg7bfw57R/rqON3gDJP12uwgZNUkfsmFvRx96ASNBtasGpqutxYmpyPfnJk22sOVt1SdJfp9RFW6rcEUkt+JAS59s3mylFZO0XAJDcaEKuGdMaUkkwRzglrTippFTFitk8uW4E7H7qhwzOZfxDuiMFTync9ttyC5hpR2Zdrsw7bsvmFf1mvJhWsGL+5REWmLho8gLzREsKsNYpaykx8W/0dGMJcojOCd4RykXT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(376002)(136003)(346002)(230922051799003)(1800799009)(451199024)(186009)(53546011)(66946007)(478600001)(9686003)(6506007)(7696005)(83380400001)(66446008)(8676002)(66476007)(76116006)(71200400001)(64756008)(66556008)(52536014)(6916009)(8936002)(316002)(5660300002)(55016003)(33656002)(86362001)(82960400001)(38100700002)(4326008)(38070700005)(41300700001)(122000001)(26005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?lyvT0N9Ddq32ta6M1KgTTytjaOyGkXAy0Lb9LDwhNRGJRcatsoYvjTXxJX?=
 =?iso-8859-1?Q?01NrFsZEiTgiyz30UCVAublR76hv1CCu+hDcNOZbc4Rm8g5bBVYKy689f2?=
 =?iso-8859-1?Q?jDPOYj7gPUjBmVOtUn6/TUgMMsLJojx2WFlloYejTLvp4M8QDg3cQGbgyo?=
 =?iso-8859-1?Q?L8SRc5Lb1vUAmCGa1mK+4FwEHZxGF85u9nlonsLF8K+b6e0NWlHBBEsYqD?=
 =?iso-8859-1?Q?EZP65ZywCIJQ3TyyF/+uYc4DGOruXy4iDEeOkFTYdiDPOaTa6LitrvSNfg?=
 =?iso-8859-1?Q?RDuS585XFW1croRFXYYfqcEvpcw+7D/HLh41WEzGQ6kehRnswKIsVbLBdU?=
 =?iso-8859-1?Q?jDXfILSZ7IiBZHV0TarEUpbg3ogdo/lLKroQjhqdmxAp9+Z6eereIEINJy?=
 =?iso-8859-1?Q?mPfhVyurKIpKk0FugkpZ8bzrMo7xpOdQtEN+mqjF6yefoVuXjNuk0GHTDs?=
 =?iso-8859-1?Q?6osaK1laV4EuKLUi0OhpjOKvNeUzMLZcS1CEe/SBhJmYBgL8+gEQU5ZQTQ?=
 =?iso-8859-1?Q?5NOS0tsi1J47FT1pgCU5n37Y9+wJ1oxeGFMDkuumlEc8pd5eZKmStNQ4hp?=
 =?iso-8859-1?Q?Mt8/GUkM3+m6qHqElOjOETFjk2N2b/ayBN/mA0oWwn0PYLpzMf3I4dq3PA?=
 =?iso-8859-1?Q?Z2gQNuFr1zvDjT2rzmpYwZvEao3Hee3RKEOMYeJpS53EepgkYWOnHuOAQn?=
 =?iso-8859-1?Q?kV6fTDitRIxHsYINER8InNM2o9xpcuXVAEplUKZBtK8OIpv0uB6mTZQrA4?=
 =?iso-8859-1?Q?rZ7ImhHgvKU4X1ynvLbK15fM7da34w+SwdKUWzoQWnOVN3tGGDe5+29Ibp?=
 =?iso-8859-1?Q?TbJnkGrGOFxDIegVExZX1RfVK/FhT8WG5idhli3lHih9ByL/5UZp00Mu0w?=
 =?iso-8859-1?Q?Y/aG0X7DJkA/WHsS3xRJXP8DwnO50TdIU2w+ll9k4os2/KycWLi10LLrQe?=
 =?iso-8859-1?Q?x8DCk+NZIYfqQA4g3oBF0a2SHbz5cJ8I8q59oB9XCrQdxfbuutPdqv3su5?=
 =?iso-8859-1?Q?E8ejcEZ6INnpQekd0JC9vjDB582T7XovHIVwIwpuC10z5G8ix8sNuzgaEF?=
 =?iso-8859-1?Q?i0InOUlmZCvwhU3Sd4mETGjR+Fiz1nczuwCqs50EPr4FW/8uKQNtJegRBA?=
 =?iso-8859-1?Q?2/0JBAD74dMuQjy52gfJ9A3VuP5vBhXDWvg3bVdx9my7NR9wvk0g7PbBK0?=
 =?iso-8859-1?Q?C6Ws/xw4uKlLnqkgCKH8d6/oPZrrI4/2I5r/K0fCu4kW+jmFCLRu4vBiuj?=
 =?iso-8859-1?Q?KKiLwrWAHJ6FOYzr06nwqXm7YcoMop7bnRkb7BUi5dmjqtY30y9U9bOCzF?=
 =?iso-8859-1?Q?EJxyPr8IHA1zCYTBBXnKU0f1VVW1b3FXd2ASSuKAbjMP/Lvrj6GIU7+bSX?=
 =?iso-8859-1?Q?AVJBeKrubLWc6cJqdlelrPPGzXnnVxPRrC5I2TyIJP7w6sD4CzhFJJ4mjf?=
 =?iso-8859-1?Q?EYPfASJHln9m9UuQ0qZj34XMj7bTx+LwRj93443cT4xhP8Sx4v+7/3RHmD?=
 =?iso-8859-1?Q?C8hX7ocChH4TVcjqIl6J+w0GmGG1eipGlrb7S/QKaU0fZrUko9Ia/qpdH8?=
 =?iso-8859-1?Q?4IKIvMbJ1nOkN9wKqlrSamLcgxTFy665qkoWUM4m7xdBuw3lTv7IxOFm0I?=
 =?iso-8859-1?Q?olAlPvGMfaV9DoF/AMEpx3jfHhV+AAPJb7?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95531fcf-09d2-4347-45fd-08dbbf752088
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2023 16:16:38.0485 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6R/oWCS47t2a8eP4xhQfLG0SosS+zUuvSgYHQFrhLnLqGbtwAcLLEUzdzMstU14cD4C3qq572VwkkYx4SofDJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5210
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 05/19] drm/i915/dsb: Define the contents
 of some intstructions bit better
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
> Sent: Wednesday, September 27, 2023 9:08 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2 05/19] drm/i915/dsb: Define the conten=
ts of
> some intstructions bit better
>=20
> On Mon, Sep 11, 2023 at 08:50:24PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Wednesday, June 7, 2023 12:45 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH v2 05/19] drm/i915/dsb: Define the
> > > contents of some intstructions bit better
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Add some defines to specify what goes inside certain DSB instructions=
.
> >
> > Only upper and lower shift seems to be added in the patch, do we need
> > a separate patch for this or we can squash with where its used.
> > Will leave the decision to you.
> >
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dsb.c | 12 ++++++++----
> > >  1 file changed, 8 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > index 42911abcd3ab..093b2567883d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > @@ -70,17 +70,21 @@ struct intel_dsb {
> > >  #define DSB_OPCODE_SHIFT		24
> > >  #define DSB_OPCODE_NOOP			0x0
> > >  #define DSB_OPCODE_MMIO_WRITE		0x1
> > > +#define   DSB_BYTE_EN			0xf
> > > +#define   DSB_BYTE_EN_SHIFT		20
> > > +#define   DSB_REG_VALUE_MASK		0xfffff
> > >  #define DSB_OPCODE_WAIT_USEC		0x2
> > > -#define DSB_OPCODE_WAIT_LINES		0x3
> > > +#define DSB_OPCODE_WAIT_SCANLINE	0x3
> > >  #define DSB_OPCODE_WAIT_VBLANKS		0x4
> > >  #define DSB_OPCODE_WAIT_DSL_IN		0x5
> > >  #define DSB_OPCODE_WAIT_DSL_OUT		0x6
> > > +#define   DSB_SCANLINE_UPPER_SHIFT	20
> > > +#define   DSB_SCANLINE_LOWER_SHIFT	0
> > >  #define DSB_OPCODE_INTERRUPT		0x7
> > >  #define DSB_OPCODE_INDEXED_WRITE	0x9
> > > +/* see DSB_REG_VALUE_MASK */
> > >  #define DSB_OPCODE_POLL			0xA
> > > -#define DSB_BYTE_EN			0xF
> > > -#define DSB_BYTE_EN_SHIFT		20
> > > -#define DSB_REG_VALUE_MASK		0xfffff
> > > +/* see DSB_REG_VALUE_MASK */
> >
> > This comment seems redundant. With this fixed,
>=20
> The comment indicates that DSB_OPCODE_POLL also uses
> DSB_REG_VALUE_MASK, similar to DSB_OPCODE_INDEXED_WRITE.

I meant comment is useful, but it got duplicated here.

Regards,
Uma Shankar

> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> >
> > >
> > >  static bool assert_dsb_has_room(struct intel_dsb *dsb)  {
> > > --
> > > 2.39.3
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
