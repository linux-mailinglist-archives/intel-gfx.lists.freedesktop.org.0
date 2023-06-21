Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1858738A80
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 18:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 382F310E117;
	Wed, 21 Jun 2023 16:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE60A10E117
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 16:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687363762; x=1718899762;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gv/Tl6s04b/sb/vkGreLI1Gdvl/fVfS6Vyx2Pw4eW8M=;
 b=QroTNl+mZJvlvKeVrSrkjAA/zvGmGhmJgvtG4LMBnKBXcGP4MMCgRb3C
 FNv471lPz7haTSlxBb5KBPdLpjOWrQqvlXThwu+4b/qMJzfU521wC185I
 bw7d3iQTAoNsAhrbzGmpDWxLDnLVu8OTFgYgGccCSZEHvn8EXJq2zf2zw
 PtKtlANnmUhDWygC2sPyO02bWDdXJVCgDlBUp/w1vwo2ANt+BZ1R1RNZt
 AYMce9lonaoysnBpliPI6XgVb6utetN7qd8EZz/8kifS0g2FwE7z7CU/N
 QX+TUYopOaQigciVTJM8jpL30DMIst9PREMZfKBOoX4CJFKXL5l+Pg7sB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="362762713"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="362762713"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 09:08:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10748"; a="779893325"
X-IronPort-AV: E=Sophos;i="6.00,261,1681196400"; d="scan'208";a="779893325"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 21 Jun 2023 09:08:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 09:08:36 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 09:08:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 09:08:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 21 Jun 2023 09:08:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U9kAVqeiNaDW2IVZrOFoy4JM5+9zq5KeH29VI9IISupC1vFhG+ahECObVCGQnvy/H4GMD+9FwgiGpzRP83LqISr24K/dXfgu3vJlEtSYoxHf5qTV0Ml2rLpxWuW5gJUTiJQIuQsU2wKxxTNVa91bJEZeUYfyZ54P2KGoqXT2SiO2IzUb2Ay1kBJBUIivBprRMRJvY2q+9dN8Xo2zIpHbd+T+RSAzDzgQ0gyXgZSVd1P6CCyx2129CP4ZUiMlAntly6dhs4MHkIAiXyTt/PPoTma7dfxPlkPP22Ueu4Yz6n3ppPayw/c1UWdSFRGLvrhqbwP+xwA7XtYcL8CM2C6MYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vYDanZYNfrh/aphYsnJg8Mo+dM+UWVuV3i3xt5FyFCY=;
 b=EA+qxnKHVI0s3F8hmt5Uxyfa+O60ztZ+UhfSvnB43S3tOYTWuRHG9hGtJqhMaPsVAlfbNZIi0QpdnBhMOaE3E8fC3NKJtkrGI/4G3yNTj+8DjVZd85rWuhauuDIFONPHMByQX+OMU4DVBYxPTfKMrqWwrxpmW7wTFCH55JMwRuYdgSVjB6RPdoPjB8q3B8MsLrI8ivlP1UTL1J6M0Hy/fczWFEKBNoHyZdDdevMzpiOSMO+FQqm70T/XqQBndeW0exlPi9T5LgJBFb6+EllITOo7jtH+mUle7G6R7wHY/IatcQI4zork3I9He4ZG/yIUhyWABYR9WsUL0wTg/U1ujQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 BL1PR11MB5464.namprd11.prod.outlook.com (2603:10b6:208:319::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.21; Wed, 21 Jun 2023 16:08:28 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6500.039; Wed, 21 Jun 2023
 16:08:28 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Taylor, Clinton A"
 <clinton.a.taylor@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Skip using vbt
 hdmi_level_shifter selection on MTL
Thread-Index: AQHZoJXTPMyCXfsJhUeCLDslIq3TC6+UNf+AgAAG7oCAAKbMAIAAj98A
Date: Wed, 21 Jun 2023 16:08:28 +0000
Message-ID: <DM4PR11MB59711E94214428387B853666875DA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230616210028.1601533-1-radhakrishna.sripada@intel.com>
 <f78a4825e63acc93ae6f4bde4916e66ca1f0c3db.camel@intel.com>
 <DM4PR11MB59710DEADAFD5A823AEE78F1875CA@DM4PR11MB5971.namprd11.prod.outlook.com>
 <87legdfezb.fsf@intel.com>
In-Reply-To: <87legdfezb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|BL1PR11MB5464:EE_
x-ms-office365-filtering-correlation-id: 3539a6e7-4ed5-401c-2c88-08db7271c012
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UJQGT8ZYg5ShmZXiWybq7jtwfPHgqOduYc/Ir5UjglA/XALBqOMP4pjOExWacm5ylJeeqhDTRLeLYKGwWkreXKqS/GFZgYCs1Mm8d2rjUHGcYZdNmb9jqb4nKItQzqFRtPlYC4PRvkrppVUeOFIx29btCCYgIEZD8dicjkbID8DhArpHrVYMuGqwnfYX2foT7mEo8WJ4uz884BPYF3oHOcw7fRhNAvcg4vOvIBQQLWlkGenn8FtExBUQbuXzCIpsPwbeMYKpPXZLswx2z8+SbZls1s6M43BewNbhic7E3zoD092B6hI4FexDijrKTc38moRjj6IsVFXyraPcGESk17Q5COOH3Yvv2SZ4i4pfDP1gtNtuFPAcqH5ZqgAUH55P+ZhJE4B+0NKf4Wc5Z75WPK91cOzirUHIWIX8k2ciVxeatC9qSQCWRkPJezIw32zCFkmWOAOBwn0+GkvFYwWFBCSE6Q7Th7Jo6LNFLaWuV6SMaqlf/n7LRbsBtVJ0eadxzxI+JaBS/ZHQfnF2JL39c6/bZmU0S/F95fH0t9eN0OnJA0KUNzetHn/z6NFQnxBS7EaUxc70WbuQZ683C6ZQW+y86c5jhsHLZpkDqjuHAgrnRRNxF8weKJVQzsbH3Tbi
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(39860400002)(136003)(376002)(451199021)(9686003)(66476007)(5660300002)(52536014)(55016003)(41300700001)(38100700002)(66446008)(8936002)(64756008)(66556008)(86362001)(8676002)(76116006)(38070700005)(316002)(122000001)(82960400001)(66946007)(26005)(53546011)(6506007)(186003)(2906002)(33656002)(7696005)(478600001)(110136005)(83380400001)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G5bMlLW9IBeHIfwr/HcCWCC1UTYLyTKb5wLiiJUe4vRRij8eV6nK2moR9KH4?=
 =?us-ascii?Q?FgSxw9VSi8S04aoITHPfCqqnNwB4IcZ8jluwOQwwg0LcqC1FLorH9UBprG3i?=
 =?us-ascii?Q?oKXMM4ES/9vXxDxqOhJ/ocBtC/w9xjO0q1aFyJN0/zR02nUJPzvZktC5SBR8?=
 =?us-ascii?Q?/qHuepaypUR/NSNMje848PRIFbKrFyOL3hzXakUNuqoVNbjps6Xx2cCTln4d?=
 =?us-ascii?Q?BSLl6bQkIKjLIHdN1fPvw/QohWYIjHGFIPN7yEeBhMnJNhIsODcakKpe7M4d?=
 =?us-ascii?Q?wcP0qrsZJU5Pi0FVtHQkIAMNqanZW52d4SK6Zq6lk3rsE2QzcL+QnYzu8kl4?=
 =?us-ascii?Q?Yi1ue6O/WgGkdnt9MhnD/X4T1xq4SUlJVC4IAKwz+IVBbeVJINcEV76MjpVZ?=
 =?us-ascii?Q?JEl8u++Ck3OJFOb4d38oppwCQs1IZctTZlA5hgcX1kpXLtHrTmzDNM7FRJeP?=
 =?us-ascii?Q?LwvJMI76H+GUNXPm789J4gNJ4kgJqHrL24gTBZcNZ5Bh/979KoNMMgz12foE?=
 =?us-ascii?Q?GwwrYe7hafuIaXrl0zHPitH/B7W7dqG0smIr3FxxLwZfdW8gyEvl5RK+YmVf?=
 =?us-ascii?Q?C0GQZaUdr6zdZaV9+7XBmM6FGj7oSa/sL+MBMQ1QjEVsHCtoPuxhwdUjK3xS?=
 =?us-ascii?Q?PH0d/0exCHExMxpQMlyOOZ6JaePr0V1W/Fwal0uNZIzRfHlM2OS8ANMUk2qu?=
 =?us-ascii?Q?azZtpOoH0hmZswvTGsLiyhGqp2D8c5WKL7saYSvwluj9tW0/1rmL4ekbRHSN?=
 =?us-ascii?Q?FBp/MGXThKwCu/hWFirnqjkchJMkfevnZ0MWMoVxkWTdAT5dlFH34x4ybFnh?=
 =?us-ascii?Q?n9dSh6TmE3JX48dSowQ5X05JxcUV0xu48P2N7wYIb7oy8SRSFlf845lWAtPY?=
 =?us-ascii?Q?tpZ3XGJkhVFvrqX1/YFGwePpVJKvm9MwVepcRhdzY6FdYCUE/6JiZSTScqx+?=
 =?us-ascii?Q?f46vZJoyr9qkD+a/1W/Gbn9t8hAIZn5Fcs3+C3alV6ecpOSG2zM/7+Ua34J1?=
 =?us-ascii?Q?I79eN16+fK6J1+KOO6dfwzSLavHzUY8UYtWfvEJcDCK8cfEAI/cbe/lUu/ls?=
 =?us-ascii?Q?FS80kFY85yzJz5i3OQqqU6TP0AGKNu8SP5qFehQvfrXfBbj7MvOzKQjHQKU/?=
 =?us-ascii?Q?E/NHb6UQH+i3q1d5tVolIh6iei505kRQx0RUI0Vp27Zz6ailHafuXi1/TMz0?=
 =?us-ascii?Q?piWmp9JtZiFJIV5HNWYrQuP7nj1OaYvV/9Gn1cB2/AYwpc9WqbPkEFZi0TsV?=
 =?us-ascii?Q?4qeWqQht+GcfBYJXNmqCBvbzLRaY5WffuOXKqhDRf0S/L6+Ydai5+Jnh2Wx2?=
 =?us-ascii?Q?tKzt2f3WrdKu6XoFjPZy+8KSHUmwfh5eQIBvh5tL5f96S/GHKH8ZpL+lrvQ6?=
 =?us-ascii?Q?aOneTol3AcaEmHByhtd0yAAely9EVDFccWf1Kt0SDEcZ1KIJynxpdn5rTcym?=
 =?us-ascii?Q?lxPy5MoJUTrPOGBtsLmO4Zt24amPXFSiVijN6hypiRHj73PNpA1nYrh3euV3?=
 =?us-ascii?Q?25W6qywBVpEtVj7/9MIacNChwVa7ceVEqQKwWLYeTuA9QEr4IbrNQ0ScTm95?=
 =?us-ascii?Q?AS8Epm/NguPNd30PTKejOK8PRyhi0ZtGUAgpNmXoScYQ9l8MPy7KtiFtJTpa?=
 =?us-ascii?Q?lQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3539a6e7-4ed5-401c-2c88-08db7271c012
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2023 16:08:28.2268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pDixrXYZMxj5MoFhOq5mzHpDOp30hsJFAXD2Xd8WefNACiC71jwrjfkfXDGcr68s2tFcfLQyiKpNe6f8SDCC3KFYWa7XroWgsmR6AgiByiA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5464
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Skip using vbt
 hdmi_level_shifter selection on MTL
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
> Sent: Wednesday, June 21, 2023 12:32 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Taylor, Clint=
on A
> <clinton.a.taylor@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Skip using vbt hdmi_level_=
shifter
> selection on MTL
>=20
> On Tue, 20 Jun 2023, "Sripada, Radhakrishna"
> <radhakrishna.sripada@intel.com> wrote:
> > Merged. Thank you for the review.
>=20
> Where are the CI results?
>=20
> Please never merge patches without CI results.
Apologies Jani. Overlooked the green as CI results as the patch was sent 3 =
days ago. Let me trigger a fresh CI run.

Will keep this in mind for future.

--Radhakrishna(RK) Sripada

>=20
> BR,
> Jani.
>=20
> >
> > --Radhakrishna(RK) Sripada
> >
> >> -----Original Message-----
> >> From: Taylor, Clinton A <clinton.a.taylor@intel.com>
> >> Sent: Tuesday, June 20, 2023 2:10 PM
> >> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Almahallawy, Khaled
> >> <khaled.almahallawy@intel.com>
> >> Subject: Re: [PATCH] drm/i915/mtl: Skip using vbt hdmi_level_shifter
> selection
> >> on MTL
> >>
> >> On Fri, 2023-06-16 at 14:00 -0700, Radhakrishna Sripada wrote:
> >> > The hdmi_level_shifter part of General Bytes definition in VBT, whic=
h was
> >> > used for choosing different levels on earlier platforms is now a hid=
den
> >> > optin and shows the default value of 0. The level shifter is now to =
be
> >> > deduced from hdmi_default_entry in  intel_ddi_buf_trans for each phy=
.
> >> >
> >> > Skip providing the default hw provided value to force driver to choo=
se hdmi
> >> > default entry.
> >> >
> >> > Bspec: 20124
> >> > Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> >> > Cc: Lee Shawn C <shawn.c.lee@intel.com>
> >> > Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> >> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_bios.c | 3 ++-
> >> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> >> > b/drivers/gpu/drm/i915/display/intel_bios.c
> >> > index 34a397adbd6b..4b9bf76e137d 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> > @@ -2615,7 +2615,8 @@ intel_bios_encoder_is_lspcon(const struct
> >> intel_bios_encoder_data
> >> > *devdata)
> >> >  /* This is an index in the HDMI/DVI DDI buffer translation table, o=
r -1 */
> >> >  int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_dat=
a
> >> *devdata)
> >> >  {
> >> > -	if (!devdata || devdata->i915->display.vbt.version < 158)
> >> > +	if (!devdata || devdata->i915->display.vbt.version < 158 ||
> >> > +	    DISPLAY_VER(devdata->i915) >=3D 14)
> >> >  		return -1;
> >> >
> >> Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> >>
> >> -Clint
> >>
> >> >  	return devdata->child.hdmi_level_shifter_value;
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
