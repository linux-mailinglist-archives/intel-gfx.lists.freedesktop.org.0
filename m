Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCDA79A45E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 09:21:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524E410E04A;
	Mon, 11 Sep 2023 07:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C2D10E04A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 07:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694416884; x=1725952884;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZKXzIIBY6wG7YvAiTuc8a9UX6dg6uQsUAOS/AmKn8W4=;
 b=CzXBDXmPK/g0wys7XcwhvX+ZKww0hw79l4y1k4uox9QirGbE1GnSxcO0
 ru1pHBXruBCIyLGln9iGKWISb4SCFKO7QO+4nD3Djea89/zlMwgxDjo4+
 ZGjp4M+cIeqSitbXCQRxTuPxLAdOpzKklDHaxpsyeCF5pGE/j3uiLTIIo
 nPEVKpZ0i0EuoplIngFQ0viD89hGmvyVfkZVl5B6BW7YNuCCl34BitSsH
 Kwn/9kVALnrF+HtF0zUMKekW8/pXnuSRC4VbHyyx9JGBig6AhSi7exdWL
 HwVupg05K1qZgfchTkaZSP09Zva5pas+tNLm65aegEcxLcMJZCbdO2IA5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="368254155"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="368254155"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 00:21:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="989985912"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="989985912"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 00:21:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 00:21:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 00:21:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 00:21:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQgDTaQlXj9lM9do+K5FfT8aBHL7ctbSCUr3ZvaWl49s+g0npKg3sfyLREWIpXcqDp4i3K+Q17Ilo021h00Si70uo1tw56EVxLUC4CdF9H/MVX0lqkDa4SC3BCRU3Adb+zG8glFEx59/X8ZnXFlL6dlHSgbAoGIhC6ySGnb+y1kMAs0Us8gkURZt6p5ieb7mWT59bOQv0I3kOM4Tm3aTchpZS163gXJNm4d40ZxtyIp5wgPCM2jKG7BYE2WKTAziaJ1wRYWAt5WbN2Rk75sbjeUyEzejavK1TNITSuTDL2X3B/QClMJO3OCt7mwUM4Gbbi5rF6DiyEveiLpdrKYOOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+mVsjDczfXk88yoKEneapI3j0y4kEZRPiwI+12l4BtA=;
 b=muToGxDhkJGtupmbFHIrFWzG6g5SUDSgZbKTjySft44kX2QJKDqLMC1h/PJnPrgNmUVTcRF8b80zBf/05pO+icT8WI3xlKZ4/0z8EoRV71js+vjU/X/tdb5WQIP9FePpHk4KFgVIOsFPrNhxapn9pUl8ODDsbsi2Apz9unhdb25bBwYCsIMmAHBhb7QkZppec3ClGbdEdMRLHjUwd4jPLYNj1fY67A743aoitumLeTQHXxj4ryt1PVG2c11NguvHqM2gpxYivlhk77PNv9ZqtSNmUDjKtQoSnFP1MStbUtQ3XfWLkR9MscC72CP26wPaH0QWriHoZxoJHaBL9vSueA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by PH0PR11MB4888.namprd11.prod.outlook.com (2603:10b6:510:32::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Mon, 11 Sep
 2023 07:21:19 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::60d8:9d3a:9848:b9ef]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::60d8:9d3a:9848:b9ef%4]) with mapi id 15.20.6745.034; Mon, 11 Sep 2023
 07:21:18 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v2] drm/i915: Added Wa_18022495364
Thread-Index: AQHZ4ji2JU5/ShlKGEyliw2AtDZdYbARU9uAgAABF4CAA90nMA==
Date: Mon, 11 Sep 2023 07:21:18 +0000
Message-ID: <IA1PR11MB62660046B832EF7F9BFC17A9E2F2A@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20230908094142.4119379-1-dnyaneshwar.bhadane@intel.com>
 <20230908193915.GZ6080@mdroper-desk1.amr.corp.intel.com>
 <20230908194309.GA6080@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230908194309.GA6080@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|PH0PR11MB4888:EE_
x-ms-office365-filtering-correlation-id: 8a4c2abb-4eaf-4e7a-438c-08dbb297b12b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Kpgl9SRsDskDOdZX0Z86RNXJwkdMUIpTX9jSL53Up8MSbDch/PN8KL8DjMOsWBEumDRAK9k2rTwLCSzmqyQkXQoGanC4ORvCUDJNrcAhCFVAF2WHrRurHqhPAszRXeGIImnRd9NEVUGxioItNrKbpITtS9pKXi6JRv8lRcIXT2Fy4Sxpp6Ds+bgD27BoQFbI2ftvkpLaRQAQrgvFnbeUccpIPKOiFe5+s0lhmpL9c1Lls+nbT20Q17vsS43msmqT1v78WJ8Ru2NeUbeTREK03WL+li+vKuUprcyKTUBIMHgqyXGtsHxh36nRJ239H0vUR6B5kH79Wfl5fTP0QezsrtK1CqP2EuNKz2RuJEpdYC5iVo2mVxYUEa+ps2K5t1jbzk8un9AZAAphBSSfHZcDCSmuzFcLn/RkiCBFw1fZdQFUygTefgD/2Ran0tGiBpfsYS2GyUimX3HB2TakkXCIz7+E8IAff9HqTMCxYhd6ApQzwvog/fwmwQpOaOrCtIHAJ85jt430J7HB0TJZQuh1+JCtkMO3h3uqDKm+oFGEyLeD6jnnxqEGK0Fqm5RSz8NiwhZcYMP0GfpCL56Rk/BG0ciUNFlBytsZBP0JaDZyG8nXOVE2oIQ5deEKNkrb3HqJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(136003)(396003)(376002)(1800799009)(186009)(451199024)(38100700002)(38070700005)(9686003)(6506007)(71200400001)(53546011)(316002)(7696005)(33656002)(82960400001)(55016003)(86362001)(122000001)(107886003)(26005)(2906002)(478600001)(83380400001)(8936002)(52536014)(5660300002)(64756008)(41300700001)(6862004)(4326008)(8676002)(66476007)(66946007)(66556008)(76116006)(6636002)(54906003)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+sK5lSEwTXUFtaVIQ1UajffkAun67L9Z6ZFSqhxaD58nS1Z0WnzNq5d4hqIW?=
 =?us-ascii?Q?43CrbTqMQbkyJqnqq9hWBGsHtK2byCy69WHNYlN1mvwHxUspa6kwHJC5XUU9?=
 =?us-ascii?Q?6HWoUIIKbyzJ42Pc3q5jd75BF2WKIhdk0XKKV4lvRTObzYMRPxZYDGUcbRv2?=
 =?us-ascii?Q?2fsToCbHfmEQGUWo0rUdJHBupIayTJVVf8tiC5m/pKx1yMb+ugzZNMKndXwm?=
 =?us-ascii?Q?uYr+kNSHIJBB9sxseXeo5kQgLRmxfbb3ksP+sY8jr3yCqgI3CzXILSYmUkya?=
 =?us-ascii?Q?q+8hw5p1aMFTkyUmwecbLSMQd3BnruorhgJFnAU1QXRsUwciQ0Yap6hSiYCb?=
 =?us-ascii?Q?WJY7ZSk3epMhiYhUSCextWJYhwpaJPb4dfd5g9jKHe2G3AV3RJMVhyuuUqlT?=
 =?us-ascii?Q?zomNsq4/oTAzRH8UxApGDdzeU7bwt00DUzVMphXrxK44eRIyp6AuTmeGILUq?=
 =?us-ascii?Q?A+ek6zpW7RBalgTVGc624q+d3F9rwme2DQUkr7tc28x7wrz9BUCVqkqCiutY?=
 =?us-ascii?Q?bhhu/K1qApJC0Qqd4D4k6gHnUpZrdO8htElM/6CQprkFj9o0JR8LEVDsnhvn?=
 =?us-ascii?Q?NcvcusRFpazh16LthpmS/KV34f0E94UlJVqIKXHRTpXLty/IiJaOVV6OezbV?=
 =?us-ascii?Q?m3MnGu6ByTnDw5gtxv/1xb+pmSj6iQMd+O2ThAb3ayzCdzUrCEXPrCefTcrc?=
 =?us-ascii?Q?i60PcS7zkgOvmcvSHtcFBOja6t7Hw4XpbD5apBUt6khsNk/ObjKOiNzqI3A9?=
 =?us-ascii?Q?o+iVayYx2Fe2sZNnGAqjsh9pBMnBqkmhIgqSY9hmzHLSz3acvIs9JT2aVbaU?=
 =?us-ascii?Q?mAk09HcJitHfnhD2xXgKQ21rUiuLUAvtpgv86PRcsRAWhvsxElKZF6K5q22z?=
 =?us-ascii?Q?sQaIBvD+5FvOQ2EzA1PTCCqwamq872MugVtZAuuzbAvWPkpb9MV2NENQdgIX?=
 =?us-ascii?Q?tbuB1B0YmGXdRXg49t3abK2dpniF5NS8INoSDW8A+FW7Fw/1BC9IKcB+drU3?=
 =?us-ascii?Q?l30RU9s097jp+DiQ2Gr9d2LWFtO+6D9n38oYxguezgqO14weQA7r7GmC4etP?=
 =?us-ascii?Q?0r1udZnORIfVGDh1nkmt6hpVROgos+T910cXQ6jU8jC6976xJmtWag8u7zHs?=
 =?us-ascii?Q?Bc+/SOrquWRqGnAHdGKEgrjD858JlC6kzMe4YAUDd57XuTEEhL/URjlYH2MS?=
 =?us-ascii?Q?B8pP8PJuWylTaTGYdsvG1ZwHrDPMI2OReUJ/zOgM/IHxXeirgTN5/a6OJbD0?=
 =?us-ascii?Q?uNZyJkmXMGvVSY7hLHHEn7fA7tCAHZcd2qUVGGgmS91ULdNJ/4/TRDL+Zypf?=
 =?us-ascii?Q?vzNqvsD220nc92vN4gMPPrGx+2fJZuT8erqrmnoGfuFOUobC294kgeOu7ri9?=
 =?us-ascii?Q?F3m/rxCUlTo8r7zcPwv8orSKql9JqSaIsFfvVHmQArwUqr1NkSytgDlfTYjZ?=
 =?us-ascii?Q?K5zFzOPDAkaxO3PsLv5qHYugMYhSV2dNqdVJ4tDadZtIxFOViywnTvcDiwyc?=
 =?us-ascii?Q?SjVNYnmwAKqpOgAv/G33Ss3ZzPtOnURJytvavM5EpH+KkrWaRxKr+HLyozQ/?=
 =?us-ascii?Q?L4pZAJkjI1MULzf3jeeeR7fS7XKanYs+EnQcXxmjvUWfNv/YK6uIdPKtMsON?=
 =?us-ascii?Q?bw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a4c2abb-4eaf-4e7a-438c-08dbb297b12b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 07:21:18.5091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BRE2eF+YoUsdOJrs7mGCC9Iu3NUrEkqcKgPZD6NHWM399iNOpSpA+MXkE9hyCMC+ORprcOPuYY0XRZ47E13LVPzQ/4ObdgkCgSnHuinE8Xc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4888
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Added Wa_18022495364
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Saturday, September 9, 2023 1:13 AM
> To: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Garg, Nemesa <nemesa.garg@intel.com>;
> Atwood, Matthew S <matthew.s.atwood@intel.com>
> Subject: Re: [PATCH v2] drm/i915: Added Wa_18022495364
>=20
> On Fri, Sep 08, 2023 at 12:39:18PM -0700, Matt Roper wrote:
> > On Fri, Sep 08, 2023 at 03:11:42PM +0530, Dnyaneshwar Bhadane wrote:
> > > This workaround has two different implementations, one for gen 12 to
> > > DG2 and another for DG2 and later.
> > > BSpec: 11354, 56551
> >
> > Side note:  it's generally not worth adding bspec references for
> > simple register pages these days.  Anyone who has internal bspec
> > access can look up the page just as easily using the register offset
> > or name as they can using this number, so this doesn't help anyone.
> > And in this case it looks like the page numbers you gave are wrong for
> > the platforms this workaround is supposed to apply to:  11354 is for
> > the pre-gen12 version of the register and 56551 is for the Xe2 version
> > of the instruction.
> >
> > Bspec references are still good when there are narrative pages
> > describing general software flows, because those can often be
> > difficult to locate in the large table of contents.
> >
> > >
> > > v2:
> > > - Removed extra parentheses from the condition (Lucas)
> > > - Fixed spacing and new line (Lucas)
> > >
> > > Signed-off-by: Dnyaneshwar Bhadane
> <dnyaneshwar.bhadane@intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Reviewed-by: Garg, Nemesa <nemesa.garg@intel.com>
>=20
> One more minor thing:  Always use "First Last" instead of "Last, First"
> notation for names in r-b, s-o-b, etc.; otherwise the commas get
> misinterpreted when git parses these for email and it causes problems whe=
n
> sending/replying on the mailing list.
>=20
>=20
> Matt
>=20
> > > ---
> > >  drivers/gpu/drm/i915/gt/gen8_engine_cs.c    | 5 +++++
> > >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
> > >  3 files changed, 11 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > > b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > > index 0143445dba83..e260defdfc23 100644
> > > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > > @@ -271,6 +271,11 @@ int gen12_emit_flush_rcs(struct i915_request
> *rq, u32 mode)
> > >  		if (GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70))
> > >  			bit_group_0 |=3D PIPE_CONTROL_CCS_FLUSH;
> > >
> > > +		/* Wa_18022495364 */
> > > +		if (GRAPHICS_VER_FULL(rq->i915) >=3D IP_VER(12, 70) ||
> > > +		    IS_DG2(rq->i915))
> >
> > This is going to apply the workaround not only to DG2, but also to
> > *all* platforms MTL and later forever.  Generally we should never have
> > workarounds marked this way...the expectation is that any hardware
> > workaround is going to go away eventually, and workaround conditions
> > in the code should only match the specific platforms listed as being
> > applicable in the workaround database.
> >
> > Also, when I look in the workaround database, it doesn't appear that
> > this workaround is listed as applying to DG2, MTL (Xe_LPG), or LNL
> > (Xe2_LPG).  Is there some other workaround that requires the same
> > programming (but has a different workaround lineage #)?  If not, then
> > this part of the patch should just go away and only the gen12lp change
> > below should remain..

Thank you for correcting me. This is not applicable to DG2 and newer platfo=
rms.=20
Therefore, I should remove this part from the patch and only keeping the=20
pre-Gen12 portion for this workaround.=20

Dnyaneshwar
> >
> >
> > Matt
> >
> > > +			bit_group_1 |=3D
> PIPE_CONTROL_CONST_CACHE_INVALIDATE;
> > > +
> > >  		bit_group_1 |=3D PIPE_CONTROL_TILE_CACHE_FLUSH;
> > >  		bit_group_1 |=3D PIPE_CONTROL_FLUSH_L3;
> > >  		bit_group_1 |=3D
> PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > index 0e4c638fcbbf..4c0cb3a3d0aa 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > @@ -164,6 +164,8 @@
> > >  #define GEN9_CSFE_CHICKEN1_RCS
> 	_MMIO(0x20d4)
> > >  #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
> > >  #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
> > > +#define GEN12_CS_DEBUG_MODE2
> 	_MMIO(0x20d8)
> > > +#define   GEN12_GLOBAL_DEBUG_ENABLE			BIT(6)
> > >
> > >  #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
> > >  #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 864d41bcf6bb..efdb4bbf8083 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -712,6 +712,10 @@ static void gen12_ctx_workarounds_init(struct
> intel_engine_cs *engine,
> > >  			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
> > >  			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
> > >
> > > +	/* Wa_18022495364 */
> > > +	wa_masked_en(wal, GEN12_CS_DEBUG_MODE2,
> > > +		     GEN12_GLOBAL_DEBUG_ENABLE);
> > > +
> > >  	/*
> > >  	 * Wa_16011163337 - GS_TIMER
> > >  	 *
> > > --
> > > 2.34.1
> > >
> >
> > --
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
