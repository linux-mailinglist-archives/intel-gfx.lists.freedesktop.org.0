Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D96B688F5C
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 07:07:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65CC210E716;
	Fri,  3 Feb 2023 06:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AA1110E716
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 06:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675404433; x=1706940433;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jlJhj/HzRasBH/mfMXa2co2Hon9FZIql6uaCuw+gFfk=;
 b=DLuR5JMkfbTWW8oL2u4X/k6UilTeD0SoqIridApz7Sbk/oU71Fxd0sZd
 Zl0GaCV7JxATqx8fLD7BYEWN2UJOZ/ePW7clAdqC1xvbJ4EJd03vmW1MO
 mpQSWxP7O92ewOfrsGAD8ZIcRQJwVpb242J8oVTCBXsZKUBNCZtr7ccNc
 723G9G/t0T1mz43GWb+iRr/TkP/JUuLEIXqTfL/BrYyfHfhMjNNoS1Jl/
 Mys1G6JL8g6mVw9Pk1FojvHaFN7f9QXF8UR5Xu/X/sibEXdp94SH5lVhN
 6oEVlZbXACTIT9EiUtZhrtb6vMEJWDWGS50MymtG1Cg/tE0dUv7Wp8ojb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="330800052"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="330800052"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 22:07:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="659001367"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="659001367"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP; 02 Feb 2023 22:07:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 22:07:03 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 22:07:02 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 22:07:02 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 22:07:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SOSafDAPzf6HK1I41/V5Oy0shUC5isa8UmVE+p6wUJpmjUewEurNxZzeaNed/VOVoY5kIiRh+KaJ60RloaZXfu+CLDJnMgHNhH0kBUdqd4rGUo1aU0hKek/T1NK4+Ultrxk84Dq4K6uQvlZxAPeSuj9NAb/X26wS8fsq+KTVKJtOM3QvNlkbPBNIVBvn83vmYTolvIxBX3aRZZhW7aCReUjcsbKOMAEgpMOTGo/AF0qcgtL/kGj2s3qZmAJU1CahzXxDw47iSe5x4DY4eBozpDeu6TtDFJeT+AoCh8VB96RXmf7uMHh/13U7DWxi7DyDlG6sMgF0Hbu7P3/MUeqK2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zDyR1SDvZA8YY31YhhwoozJZMA36tdOYK/MWockg4cc=;
 b=QgBB7C+vyi88Vzg9l+b+xTV5WZr9T513jnWOpjK5tlpJ/7LRC8dCM9AD6DCWpvKV9BQaWDkXTapBIr4MUOY+9Jd4EfzbNQwHpIw7nJ7DV+TMscOk0ggjX2KrRDTJPF7zKuzWCGYo+PKmczRmPO6UVbZfdi57HYTHdWPWn0eneFPogSS/krjsoLrAvm76/iltQfLmEaU1nOBcZaa/WWdaF5gA4KZ4pOKyA5cDOichFgH2h010Ze2PwPAx+tJpWlid2nW4Q/DysVGF7ztS0oSrO0xNR/FoJaoBwtGpvsTV4Poomm4nyr2J3OMzTqyvn7I5hROrCwukm1+frO7t2tLqzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1739.namprd11.prod.outlook.com (2603:10b6:3:111::22)
 by SJ0PR11MB4943.namprd11.prod.outlook.com (2603:10b6:a03:2ad::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.28; Fri, 3 Feb
 2023 06:07:01 +0000
Received: from DM5PR11MB1739.namprd11.prod.outlook.com
 ([fe80::ba54:60bd:570f:7547]) by DM5PR11MB1739.namprd11.prod.outlook.com
 ([fe80::ba54:60bd:570f:7547%7]) with mapi id 15.20.6043.039; Fri, 3 Feb 2023
 06:07:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/dp: Fix logic to fetch
 slice_height
Thread-Index: AQHZNvwcF1Np1it1dE2tnyVXcmAdh667n1mAgABMI4CAAB/wgIAAsAYQ
Date: Fri, 3 Feb 2023 06:07:00 +0000
Message-ID: <DM5PR11MB1739856047644E46EB91E80FE3D79@DM5PR11MB1739.namprd11.prod.outlook.com>
References: <20230202114613.3177235-1-suraj.kandpal@intel.com>
 <20230202114613.3177235-2-suraj.kandpal@intel.com> <87fsbo1apu.fsf@intel.com>
 <MWHPR11MB174174ABEFE34DFDF469A757E3D69@MWHPR11MB1741.namprd11.prod.outlook.com>
 <87cz6r27dm.fsf@intel.com>
In-Reply-To: <87cz6r27dm.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB1739:EE_|SJ0PR11MB4943:EE_
x-ms-office365-filtering-correlation-id: d40bc4a4-cad4-4cc2-474e-08db05acdd2d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kT6j0Ku01PQmz6UFxv+g1G2sj4aJTya8hmEDdp5GjporjnkytbBTPQLOtWPwv1hUm1McjT9gZ2z/wUGqiIIhpRuLxQ+d6vy1P4u0cSae3LBfYnUda5wmrKH8tSz5Z0LcY5e6uZJBEHXZHY2zDjPtPVrqMlJKjaRgwq2Vvw75gb2MjskbGpOxjAtflKuVrDKCBdBItej1VI2i3ovE5EXOtO5zZaVmrBmm791bIegJ1M8OpagmCwylpZsblukG1Szf9ZSvD7GWA4iTJnVfJkUvv8jXT3Cp9XW7R1SVgps6AiAXUb1Lhl7j//k31+nCu4xVETaLGrgCgoBiBmpYRIeUyR0q7kvzHD0jGSjpRw3zZOl1h6kXFRJYbw6B4XvqacZ/Fyzpobit3+nXJSMymb0u98MyU3zCZLlxn8qyrAqPiNrk+nPYIH9Nolv0lcZUsoWwzPMqHZWzxvMhkTjCpe4KTcaEcDPg8+Vaoj55E9K/A4/njuHNNVAd18T9m//NN+ZKXJJOZeJnisjQTIAu47ZvE1BcB4mEB6tvqrWeNz+uJvwqZBFdwjpXogNKU3/+vxUCilD3nNSP2+ID4IjpK21T6uiccpApOUXJGV8diQLqVFR/XEp/JlFbnJ8JccMPgSMsUFGtmCqNEP9dhzS5Dg4fUHVqIroUv2JDDq5YrSfQ4nq0T+6/BMSWRHO+wg8P78TKmqupRcV7RNMZDMsdvtchfg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1739.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(136003)(346002)(39860400002)(396003)(451199018)(33656002)(38100700002)(86362001)(122000001)(38070700005)(8676002)(66946007)(66476007)(64756008)(66556008)(66446008)(7696005)(71200400001)(76116006)(8936002)(316002)(41300700001)(52536014)(5660300002)(478600001)(55016003)(2906002)(82960400001)(6506007)(9686003)(26005)(110136005)(83380400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mO7lcfx9HwODTLGgyEfscahlmOFFX6lD2A+TZCbz8UIsvPk2LxJ9/ocAVW1s?=
 =?us-ascii?Q?A6hkgsVG3uEGd3cRFIR5FQlxvbSAaxlixPP+NNe3nvjtpKMdlESeQE2uKDrv?=
 =?us-ascii?Q?rQ3AMoCIikiIpIYxk/TayWXjB8wVgus5wOTyUHzLMsBTRu+ZR9AyE83tnF6c?=
 =?us-ascii?Q?niBbcGZBug18KhK1r7XdtT5y/GTDydwm7mAYJ3cVaNLw4mChUo4oQ9uvgnoF?=
 =?us-ascii?Q?5FGPuuXZA//DH7Yf8AchsCKK/478JZNIIJUYt2wm38P1/ObfyYnAEMalzc+2?=
 =?us-ascii?Q?yEXpSNfHXN24Kw1D0BediLFcQcYJEE3tG+nOg6VvWXmMZNzP9dfbS5cr57P9?=
 =?us-ascii?Q?FhviexSIc5LmCUoXVrZLCqyjS3FmswW2bEn/+oTh9msWcoH2N/x8hPxu7wZm?=
 =?us-ascii?Q?+7TNt0Zt10j1qGQrUjzuD+PJJrr/AxcBQ5vqGMpq8m/7jyF0gxwv6FhNLPVJ?=
 =?us-ascii?Q?K23iFyH2EZcSR9HSMLRaoc1gPTTVrhUlJGCT+2JpQRU2bAeFRHe6Sb6Ytv/f?=
 =?us-ascii?Q?3k7nyU+myb5n74hTgxvAg4Gf0nsgSVLSZasUo0O6mSZIHw0v7MkwTWzlr/0I?=
 =?us-ascii?Q?uQNmVNUSX1Ngr9tSjxtL1jlvqvH+0o0Z9mQc6ajD/DCwXY5UHau+iJKpIzhi?=
 =?us-ascii?Q?m6jvOm43q0us7pIzyjZZlR1ExKt7PQ+NFn4SVbNeb9BzjEIgXeUJc3YHDxUg?=
 =?us-ascii?Q?opCDjFoNfy7cLMMZZMd4kkLd9/j6ZmW9ZZKdHhurtg6MzAsKI/pPuE60JS1p?=
 =?us-ascii?Q?oCYt0ASUBlhbIwkE6nzmsmejvSGScovnF3O4uXYumBEfyA3dlYgn7/M9/i/X?=
 =?us-ascii?Q?64MKxMUQ4jGVc26RM8ejOG3KkrEcczmwukR0tVapBgcauVSXCaMUh1p8b32e?=
 =?us-ascii?Q?RWSlcBkcPAFBk3+03OixHFalNDMfm9yW3TqavfXS5eir8nlUK6sFazKEyUll?=
 =?us-ascii?Q?sg8bvPWkbc5IYBUvJQ8L9JVypFxFfwHn70tEZM58P61umlBSTpyEQb1mfckI?=
 =?us-ascii?Q?V2R71pbQtUNfJEFLeFkf8gyZyXpV+GXdCN6x3wXyli9uAhBELDKeITIJx47C?=
 =?us-ascii?Q?/8kPDejK5x3KnXdZ7BMiGKBhB5/DMkxK7jpyWTpM/J/gD3DXKjjupNki496c?=
 =?us-ascii?Q?IeRU+z1x8mdq4llc+LY3eLXiOq93O5ZuJn98uke06EgVAvBvT3BLX7Wgxici?=
 =?us-ascii?Q?mZTEVXqZKBlUVcmF3yjEw1IKffyqdaeMBSktZtluTfqShqtgyQeE/xQQINLz?=
 =?us-ascii?Q?uo1Ak6m/DT6ql76pW5pve9T5agproxnGffLjs1wHmDPzChk2yqRwP9reju9F?=
 =?us-ascii?Q?Ddy7wiG/A59kXVkopyWoMjgFsp5Z/3LNuDs8c8zcXMPhe6VCtVZcvf3lWVZE?=
 =?us-ascii?Q?+QXVlvZ+dvdtQMdNRJhMOeXaQc4Zg2F9MVf6aupyeSz34cYqxLXghPaENvp1?=
 =?us-ascii?Q?/ABJUvP32lY63XafHPGLxq8z2I7Zs56jRXBV0i1fzAuRo/HP2yyNjMCTLiB7?=
 =?us-ascii?Q?KLaQaQKRZQZ11XRKjydQMfgNQ6f4qUYlY1tF5YtnEhTararZ4vlc5fOFBL9f?=
 =?us-ascii?Q?lheIqtx0JJwzNsqYLGWX2Ahnvq56Nl5jqZ0kCmLX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1739.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d40bc4a4-cad4-4cc2-474e-08db05acdd2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 06:07:00.6146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TO4PgDQsldXfqIIcXNO7V8HHOVdvl4oqMHfLY7aB//6Ens3W5A6y+wyAPbmpA4rrM0tqqEOhv2pOW7ETwDCncQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4943
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dp: Fix logic to fetch
 slice_height
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

>=20
> On Thu, 02 Feb 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >>
> >> On Thu, 02 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> > According to Bpec: 49259 VDSC spec implies that 108 lines is an
> >> > optimal slice height, but any size can be used as long as vertical
> >> > active integer multiple and maximum vertical slice count
> >> > requirements are
> >> met.
> >>
> >> The commit message and subject should really indicate that this
> >> increases the slice height considerably. It's a 13.5x increase at a
> >> minimum, could be much more. Seems misleading to call it "fix logic",
> >> as if there's a small issue somewhere.
> >>
> >> Bspec references should be here:
> >>
> >> Bspec: 49259
> >> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> > Cc: Swati Sharma <swati2.sharma@intel.com>
> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > index 62cbab7402e9..7bd2e56ef0fa 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > @@ -1415,6 +1415,22 @@ static int
> >> intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
> >> >  		DP_DSC_MINOR_SHIFT;
> >> >  }
> >> >
> >> > +static int intel_dp_get_slice_height(int vactive)
> >>
> >> intel_dp_dsc_get_slice_height
> >>
> >> > +{
> >> > +	int slice_height;
> >> > +
> >> > +	/*
> >> > +	 * VDSC spec implies that 108 lines is an optimal slice height,
> >>
> >> Please be more specific with spec references than vague "VSDC spec".
> >> Spec version is required at a minimum. Section and section title are a=
 nice
> bonus.
> >>
> >> > +	 * but any size can be used as long as vertical active integer
> >> > +	 * multiple and maximum vertical slice count requirements are met.
> >> > +	 */
> >> > +	for (slice_height =3D 108; slice_height <=3D vactive; slice_height=
 +=3D
> >> > +2)
> >>
> >> Where does it say 108 is a minimum, and you should go up only...?
> >
> > So in VDSC 1.2a section 3.8 option for slices it says "a slice height
> > of 108 lines typically provides better performance than a slice height
> > of 8 lines."
> > It also states the following
> > "Also it says There is no cost associated with slice height because
> > there is no additional buffering or any other additional resources requ=
ired"
> >  that's why I decided to move up from slice height of 108
> >
> >>
> >> > +		if (!(vactive % slice_height))
> >>
> >> Matter of taste, but please use (vactive % slice_height =3D=3D 0) for
> >> clarity on computations like this.
> >>
> >> > +			return slice_height;
> >> > +
> >> > +	return 0;
> >>
> >> I guess it's unlikely we ever hit here, but you could have the old
> >> code as fallback and never return 0. Because you don't check for 0 in
> >> the caller anyway.
> >
> > I will do this
> >
> >>
> >> Also makes me wonder why we have intel_hdmi_dsc_get_slice_height()
> >> separately, with almost identical implementation. Maybe we should
> >> consolidate.
> >
> > That's separate because the minimum there starts from slice_height of
> > 96 as indicated in HDMI spec
>=20
> Do you think it's fine to duplicate a whole function if their sole differ=
ence is
> the starting point of a for loop?
>=20

Well that wont be the only difference after I add the code to fallback to t=
he older dp code going forward
Instead of returning 0 as pointed out by you earlier. If I consolidate this=
 function just for dp and hdmi
There will be a connector type check for those two as dsi and edp have slic=
e_height filled by  vbt and this could
look bad by placing it in intel_vdsc.c where I assume we want to keep thing=
s agnostic.

Regards,
Suraj Kandpal

> BR,
> Jani.
>=20
> >
> > Regards,
> > Suraj Kandpal
> >>
> >> > +}
> >> > +
> >> >  static int intel_dp_dsc_compute_params(struct intel_encoder *encode=
r,
> >> >  				       struct intel_crtc_state *crtc_state)  { @@
> >> -1433,17
> >> > +1449,7 @@ static int intel_dp_dsc_compute_params(struct
> >> > +intel_encoder
> >> *encoder,
> >> >  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST;
> >> >  	vdsc_cfg->pic_height =3D
> >> > crtc_state->hw.adjusted_mode.crtc_vdisplay;
> >> >
> >> > -	/*
> >> > -	 * Slice Height of 8 works for all currently available panels. So =
start
> >> > -	 * with that if pic_height is an integral multiple of 8. Eventuall=
y add
> >> > -	 * logic to try multiple slice heights.
> >> > -	 */
> >> > -	if (vdsc_cfg->pic_height % 8 =3D=3D 0)
> >> > -		vdsc_cfg->slice_height =3D 8;
> >> > -	else if (vdsc_cfg->pic_height % 4 =3D=3D 0)
> >> > -		vdsc_cfg->slice_height =3D 4;
> >> > -	else
> >> > -		vdsc_cfg->slice_height =3D 2;
> >> > +	vdsc_cfg->slice_height =3D
> >> > +intel_dp_get_slice_height(vdsc_cfg->pic_height);
> >> >
> >> >  	ret =3D intel_dsc_compute_params(crtc_state);
> >> >  	if (ret)
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
