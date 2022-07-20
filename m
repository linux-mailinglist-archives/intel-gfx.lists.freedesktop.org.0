Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C68F57ADF5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 04:34:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E0610F49F;
	Wed, 20 Jul 2022 02:34:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1245410F49F
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 02:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658284455; x=1689820455;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pZtCypMQPTTlrg5hCUz9954It5sg5HBN3EtuEHwKiio=;
 b=M8F5wcRHz7aYEeD85O6Y2xnA8s2OII4lkuchBWKnZqP5BQd7uix4K6+8
 S63zwaIT98VFtYFSpPMfZeOMJ6js6OTTCaws6yH/RYG9IAguV4EzByM0o
 wCq0h4NxAwo0wutQuBks1GNqcpfR6InxLk2TidzfEc3zmNeCD7PGOhs0P
 BcUqg15hDC83yqzxJx+AXxIO8dnMphXu+OGZVMP/LUvIoZPUZPzrqctnn
 +MIHkrwM/cUtNJvDk56l9kxb1to6LfonrZ6R9DGgOEzCO+ipkqBI8B/TG
 fwfoSKU9v9TTUG+0Ud1eHLreMZNMDzFwgcC5uIP2VjWunkr165Pw9FhGi g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="273496265"
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="273496265"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 19:34:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,285,1650956400"; d="scan'208";a="687348831"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jul 2022 19:34:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 19:34:13 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 19:34:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 19 Jul 2022 19:34:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 19 Jul 2022 19:34:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GJxi1Xx9XRlG9ZqjP9hZGqm9JLnRSpLbtea8AINss/gEAU+dQ2/FDwQXBN9KgyDul1kpfY5vt1kdv0jM5tsfVch5wTGH/QdARMYWCnVueUt7xsQ+FbFedyUozqVzAbljl3BPHGKnZCkTU2Rm/ek878JLo3rUPWwghDwjG9KxPrSMFEP8vx5xY1rSwNxbd3A/YBuEmYSZAgbL2rXMLz0ISpBr0neCpjCDKUrSjsMd2mxRJw+Y1qkA3ybSptUaQx9M6GY1Dmr96SQ7yuZQNYTUuE3Ush7rG3XViHfBXIbOdGvz7KlVYfltMs1eQSTadXOw8SZ65lYH0SuhtG+b8Ih6Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9Od7PyNWrPRE2ykrxKL3TpdtYGv8wHUAndzsjtjgGHU=;
 b=Z6HTiFslu1zAImProAB2WJI+zptaAg5Mqp7Y8AnpubdIYCCP11XqjEBtKqEJaB7m6kknssau9z8gjmnbikTDIdYZ4TzkE43BkvO416U/3qxf8y7vPy7Gh0P35Pkh+HNluTCOduMHnqy7vmJqmqsy1tsEMRA73esKiKC2BGZWxSFIPmU6N5SaSMyD9rLUoviigOKSn5VrL+Z+aTyYDOGHK8XO0eOp6twMKOuvlfK1QyHYCE7tLWF1z5KsLCuT0DoRjFR4rYdZP+auyJBGuf0evkXlQjJ/6ZfyBW4abHZ78cOrPq/4h0gY9OkxjtA33jWfZVYkOR7MSBhje3jh019G6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MN0PR11MB6181.namprd11.prod.outlook.com (2603:10b6:208:3c7::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.17; Wed, 20 Jul
 2022 02:34:12 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 02:34:11 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
Thread-Index: AQHYmtpo4UR9b7tcu0+G9SgR/ifAA62FCCjwgADurICAAJVNwA==
Date: Wed, 20 Jul 2022 02:34:11 +0000
Message-ID: <DM6PR11MB3177B55818550FAD5F03C817BA8E9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220718191212.166141-1-anusha.srivatsa@intel.com>
 <DM6PR11MB31775421CAF98B4F838C1E1ABA8F9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <CY4PR1101MB2166F3B024A9965C1E420458F88F9@CY4PR1101MB2166.namprd11.prod.outlook.com>
In-Reply-To: <CY4PR1101MB2166F3B024A9965C1E420458F88F9@CY4PR1101MB2166.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2cd30392-09cc-4a10-6492-08da69f8549d
x-ms-traffictypediagnostic: MN0PR11MB6181:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BADyjNoybnf2DCDNWDoEKMEpUNbN5/YeQICuKFKoEBg080U93nYnwSPYZDOfRT+utF3cJNa1/uFZ7q7XQ5VytQSlUsWhxC5JQFdgwsqQbIZd34e/VrhIiUg5MatZdWf86DoWSm1v4bvYJMCITT7oFXHMwyupHqfBlrxIgs4V0zNKwg+urKcVbhU7vQmOYdGNGRNkOb/TLaFma5dm2QPs8E3T8I6mKN/yYwn+rLhj9yq4IMjFJc2bxawAxkf45nNreCGx4eKKUc3Mn1hZAF1SIb4l/rF6gu7QOEb6WlDRRiaAtZMExt1MXmmnx7wLg272ktYSnIjUUpog3NTXLmJR+5So4Sayhpdbie2Ou0y3F2UDKMqhf1UYY7pnyR4Hlj75NYaH5i+VKsihtaKrLR5W2DpeGLqpvcLvojli+gQp/XdTlnYjTALNOu7wegAm6x3tDcq6MMkeLWyy9vxk/0Kyx0laMLugcGCmEn5zaCac0Dgb4upl9sg+rbrQna666SEkqJiVLvdCkLH1DOE/sG5u1OS7A4C5ZB6VQQLdKNfjVpZQ5n9UViH82y4MFa7Z2fDmB+4EwT1tknbq19P45dNe+px4lPVWNY0pYx//tiZgrZFYN1J4SrrXetBSDSkr4ZZ+dS1OTKjY4CPwxOeP/CYT0eOlu0D0o+Ega/uva48vO55/ky6psyfEuYGSKWKtg3CPeXSkL7kblNL2oyAjbGfFqaLlQZpxo97GoksU2vlxvtvR8hLZ7nILuLbv//SoT74oEtpZPHtxBiZBnrDovOi55xW3mU9/+A4kP55LfOnU6q2X8VR4hsH+7GDObV1kMAzJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(346002)(376002)(366004)(136003)(9686003)(41300700001)(7696005)(55236004)(71200400001)(38100700002)(478600001)(86362001)(122000001)(316002)(6506007)(53546011)(66556008)(26005)(38070700005)(186003)(83380400001)(8936002)(33656002)(52536014)(110136005)(55016003)(2906002)(66446008)(76116006)(64756008)(66946007)(66476007)(5660300002)(8676002)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JW5hoREiQ4NNj6wHCIOwxlejzEC3XmmDSyeAAF51SBAGGsk397k1+yLdmJ0h?=
 =?us-ascii?Q?No3jO2xLj8LShp0azohqqMY8gB1PDr20UCgaIF/OttVUnmwgDvc765dhSk8Z?=
 =?us-ascii?Q?xuxrXQhqvWO/qHOghg9CdbKmUGW9Gutaz+7VgjSv+3SwiLCnk0xKWBQ/FAqL?=
 =?us-ascii?Q?KWEg65y3PFnbiBbNsX6lSznnzf1mQ/VexJaAttt76qnaTmxxZ5L6A1Qv+9iE?=
 =?us-ascii?Q?kquGyLUmve+zaiV9eBNdM0ek9JV4urAXPyDLBzOmV8SZxHGn41y/t7UT1UKs?=
 =?us-ascii?Q?Wn37UqaTSXo5O1cuIchlio85/HrzcW9UK6RZ04dPZ8cjulmDhlF0ywxiHjK6?=
 =?us-ascii?Q?tB5SHcjLur349fX/KAR+5Xrl6SHul8AyRLK/d1f5P7ZUFv01n/fbHRKM+RtC?=
 =?us-ascii?Q?MI+fByrUmtkJv1rElNpEonQhSDTqjDuqG53myjs92+PYeEHJNpIuRZl/rFBW?=
 =?us-ascii?Q?Vu6FztSF6m45Ko4/VHcQ7omdABTp3jUiaDFxl+NRpHDERIYBtmKmycG7kfLi?=
 =?us-ascii?Q?7duRq6zf1JB8y9uC17n31OEM6OuwplxjR4vV5deYFNLz9lJKqPIGlO6k61po?=
 =?us-ascii?Q?E1D0sSGQfE6N11K+wQlVabxb09gNc2fqodvXE9w1QiJyvhohQ86s9HghIZyy?=
 =?us-ascii?Q?RWiK8bA6IKZH1Xm/1CDVXpv+qkv8Wz7D/gEN6UYlgZkZKVpOJDhQ/pUBaoT4?=
 =?us-ascii?Q?34jG3dXy+W1nilQUNm5F9yK2/y0zEDRurPRivxU505NKTGzemDEJVlZN91mN?=
 =?us-ascii?Q?y3Cy2A+VibmqSFGdsFjHhpBJoBjdyEscosS+1voNLs271Ll3ugIJeWLXA76z?=
 =?us-ascii?Q?HeSS6PhId+6jAPcTrLmmj4vRoLaX9WyuGle78ibZIPsMnLeytF/9H0R1f5An?=
 =?us-ascii?Q?l5QL0QiVaKS299qyegohtdzxKh1gqMrsOj4VpIxZMsrIDQ0QoQUX2J8WsyBb?=
 =?us-ascii?Q?a34zdLAMhq69fiuffUjtIMIxXlTpbC5j7JodHFeKvgGAROP1xB8knvzbd4f/?=
 =?us-ascii?Q?WCez00S691lsB5FcFNNBA+2lgCqUUNEoM3wrI0kupSCJzJm3qfm2vID4N3/T?=
 =?us-ascii?Q?16VNUdzMcs5qlMUB5qwZoY3oOeYrw+bV3KmVqIm5JA4jy8ebhXWLOFlQogPW?=
 =?us-ascii?Q?kFsP0e+RipRlkXm8ruxQbne/Uzjr6xBcbsIlCiuqB7RCveNrDAv+d2j3e11F?=
 =?us-ascii?Q?MtX30vIyo1ESgTph/IJUt2uutECewO8v1nAHu1SW5jY2CycW49vsAEjURqXB?=
 =?us-ascii?Q?gBTm3jBSBnoGEFzZoMDZ8yg9WfkpbLJkpBQwL65mwobR0dMvz9p8blzhcc9A?=
 =?us-ascii?Q?FTwg76yBekdjLkR6k81MsQTQHtA1ETD/VrLe95cXYWkTx/bJ5r/8ItrrNDtw?=
 =?us-ascii?Q?BO/dCgprAQyEs3Zm3gI6/JDQyOXiKU0WAM7Bxq73yEcmxBEAJZqdaILaVbub?=
 =?us-ascii?Q?qLh1V/19vEnraPBtfNhXgAx/7LMU0GpkkYMXP9KkZVBASfRlh5tpfHWQFdlw?=
 =?us-ascii?Q?pmKhdEJ9eqLbqZaM0BqaHCmNaUINURRhmuUmym6O/MfEN5BlyJLRHt0vb8Gc?=
 =?us-ascii?Q?7Dn1U6hff7HUzyGzJ8my4MTmOsbQr2FCYyL8qKVb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cd30392-09cc-4a10-6492-08da69f8549d
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2022 02:34:11.8284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2i9X1wy/aZwZqjCpFrJq6Slfxo6jtjV6be1jr86Uh+yC52dg5eVxfeXpsWNebzf67TIIZT96vAPHNzVmymwLQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6181
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
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

> > -----Original Message-----
> > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > Sent: Monday, July 18, 2022 8:32 PM
> > To: Srivatsa, Anusha <anusha.srivatsa@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Subject: RE: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
> > intel_phy_is_combo()
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Anusha Srivatsa
> > > Sent: Tuesday, July 19, 2022 12:42 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
> > > intel_phy_is_combo()
> > >
> > > No functional change. Cleanup the intel_phy_is_combo to accomodate
> > > for cases where combo phy is not available.
> > >
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
> > >  1 file changed, 1 insertion(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index a0f84cbe974f..b69208cf9a5e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -2082,20 +2082,13 @@ bool intel_phy_is_combo(struct
> > > drm_i915_private *dev_priv, enum phy phy)  {
> > >  	if (phy =3D=3D PHY_NONE)
> > >  		return false;
> > > -	else if (IS_DG2(dev_priv))
> > > -		/*
> > > -		 * DG2 outputs labelled as "combo PHY" in the bspec use
> > > -		 * SNPS PHYs with completely different programming,
> > > -		 * hence we always return false here.
> > > -		 */
> > > -		return false;
> > I feel it would be good to retain this. This is very well commented.
> > In future upon adding something like DISPLAY_VER(dev_priv) >=3D 11, lik=
e
> > the one done below can create confusion.
>=20
> What if I retain the comments with the code change?
>=20
Retaining this comment will do, but I feel this cleanup can be taken upon u=
pdating this with the future platforms. Other can comment over here.

Thanks and Regards,
Arun R Murthy
--------------------
