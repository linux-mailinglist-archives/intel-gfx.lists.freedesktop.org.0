Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7017465AD72
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 07:29:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C64D710E0CC;
	Mon,  2 Jan 2023 06:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52C5610E0CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 06:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672640945; x=1704176945;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ktXvkjEzpVzfa11m6y9fZbpRF7drbWWB2rmbSkVQjAw=;
 b=bFUYgQ/dOPKebmQoe6qjjUuoMdAIu5XDfDfpl+DZTuiN5+t7ZR8C0oBo
 FLZbCVaP63vvTcCzlpYyrp2eyqIB++iyw/6YlcrM31iWotdK1T4JZ8nr+
 j40ZatB/HDwFqWwQ/ehuSa+alc/b6NSVqRA4Pd7pqu570DpeanaZjxuil
 FmF7c/fnWWSUQKMXp1t11b407/BCSt7zDCNB4IDfoFk8I3AWEfcj2H0bp
 qArn09ECzv9pSvNU6KTDpeIM8ZjgGg+e1/aDZivRvaO9AytW5lZq9sUPR
 aqRr91EJGBHw1qaCudVlDIC7XTZ5UJsbVNXQAesynhdr5AOKtACvpeZb1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="383740680"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="383740680"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 22:29:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="828480802"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="828480802"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 01 Jan 2023 22:29:04 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 1 Jan 2023 22:29:04 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Sun, 1 Jan 2023 22:29:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Sun, 1 Jan 2023 22:29:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Sun, 1 Jan 2023 22:29:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vt/R4UqcUfCGieClO7IpadcXORUfG+HlGz5UdkfG4FvAeEUXWKElznGTYRvlM9vT0EY4CQT4FTn2831+awWdOzAn9w3T1MRGc4oRhwZILncLOIQz5mQUD3crsAZJTlaR3LSt8DkDY5RVbRusUuMjjNwzjljQ0Hdg9QmAzpsPocFgBfhVdpLpNGp2c9jLtUkTlujs/E5crCimDB3NtS2SYVLeRi4u+BCFBifDCW3g03RU9lYLNyVJqY2u1n2Bny7gXUAVKTWMHtDUHOYL5VyiOtNL/EO8xpuKzNFLZqLMCKj/nNJa+PQ8EFfv9mZcBIz9JZHxw+MbQEvGp3uElZBAoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yZneZoFrzIHNTiE6YbA6zqOpUPpNu8ViLQ0KvKmYOyE=;
 b=elv1sDf3np4XkvfSrv2tDvK8Zz5DxrSjcTHL3O4lhm8Wax0LT7c8WLRF95+zBdLUiWGzlVi2uUkX8WDaylpSifg6IX4C31p6Sjf29SvA4jyEcFY5eZn5aFJlA0IOGTN1HiZnDsV8whz01RbQeyEio4fUDHJdD3A6ds5gjhyVZPGjmMadZGBA6EWKpyrnwJxco9v18CrmU5LPg9cPOqiiFH1ZjDdzkucO9q9UT77YYBB79pi1FgrjUJAsjQWcNJSczJmktew/s59FLmLDc8IOrYBgHp9gRT7CYAjSquc46eFcdAdkyKyGG6NSsBsPzdl3N0v2u+bvFpe6L2WanEITHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY5PR11MB6392.namprd11.prod.outlook.com (2603:10b6:930:37::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Mon, 2 Jan
 2023 06:28:56 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%8]) with mapi id 15.20.5944.019; Mon, 2 Jan 2023
 06:28:56 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 1/2] drm/i915: Add RPL-U CDCLK table
Thread-Index: AQHZBI/EWRbxLaFr3Ua0cJFggYdW1q5XIkMAgDO6+KA=
Date: Mon, 2 Jan 2023 06:28:56 +0000
Message-ID: <SJ1PR11MB61296348DB12CFBCA012E611B9F79@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20221130074617.1619099-1-chaitanya.kumar.borah@intel.com>
 <20221130074617.1619099-2-chaitanya.kumar.borah@intel.com>
 <87r0xk3kyn.fsf@intel.com>
In-Reply-To: <87r0xk3kyn.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CY5PR11MB6392:EE_
x-ms-office365-filtering-correlation-id: b84cdf23-59c1-4152-b7fa-08daec8aa040
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PPhto8Y0v2W3gCTmtQCVdvrLpZkaqdfGHI+7Z5d8Al52+LvQkc7ZBzGJLkvKyNem7F3B0E51zMtq3ClV9g7RN67jOAh0TZoJHbKvX/FkRTrL+Xia3424rM32qjXgaJFBxcy7p7ABPj3R37ieLxhFe7juYvLFTp0TrWYBSDTuHLRpVnZzVtkAq2v9xbi08hNaZN8Snuyv6v2dWYIo3RNv1XtiKFnkjANdQcAQKwyugQdLrv/87A5s1EQVKeAIyQ0Ain2eXdctPF9RDucvW1eXhhgc8hNKdhlAeqcMCS1DtzEqUwKTu41jWMvn28bNQjzFvUGqYd2eAwdy4aeDUdyg3Li2/eYULTbS5SPUsPYHy7QPiOrzK3MwrU/4SN+jJyP7WWmzWTEECpk96gWHw3FEXkNOc/+gAg8E1OoDSwZfutL0e/e57EmZ77gbNzaej/1+U2q+p2QQ3QNjznAm8hXj+5A+jSwcQMw0aNk9pwK8TvrMz5vu2Bxdn6p/PhSxIfvqFh4iDuJO4iDjROzPvbgzTrGwMZLNqjI5x8z/sfoi2IRoWvsu/wjNF5X5YCxlWWYNKGqz7T9XP/GD8J9gwEvCuJnWU5Qh0SkjTaXJgFOE1Lr+2czqbbdI9ZMvyuhPoixqMVPwnNKyPsIeUWsYX+n3iCVhhfC2kuM7wYHCOoHeIoYbXW4i4g2ZB811i4zARToQ6SFyEiCcEtpAx7cN1vUlx5FZbJqnBI8MX83WSqwcfaI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199015)(83380400001)(38070700005)(86362001)(38100700002)(122000001)(82960400001)(2906002)(52536014)(5660300002)(8936002)(41300700001)(478600001)(55016003)(6506007)(7696005)(53546011)(186003)(26005)(9686003)(55236004)(316002)(4326008)(8676002)(64756008)(66446008)(66476007)(66946007)(71200400001)(66556008)(110136005)(76116006)(33656002)(22166006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0ncf6TayyCdOGrWPs3co4U54f3noc0pAxMZ/AdlsNcKGhzgDgHI4UWAsYQZb?=
 =?us-ascii?Q?oKn8bhwPxw0j8DtiFtt8orNkMpbRx6xxgNV3K39c+NJLaWOK/sZUoYbvYd8r?=
 =?us-ascii?Q?lF0a4lirZS8SdVE5Re5ix4liPpvfWRXNPqWKgOt+BEA4WAUOPkrWnRytgqsw?=
 =?us-ascii?Q?5ouai5UZvMDF4vdrz7POF/L+m8l0xox1wyx3TW9SN7mPX1FhzpdDy8lP5yAx?=
 =?us-ascii?Q?4CLSE66JPpayFl10SPweWoCbHbVLpSGN5WuRCSqhPSKkEtDM8HgE7/hkAyf2?=
 =?us-ascii?Q?UaceUt+Ql/LXPswRMmJksJsfKMqZ4rGe9oMdpDwAaeeJ7FQ+2G4z4pKpCuGp?=
 =?us-ascii?Q?1nbn/1M154iUU1KOKrceva1nXa8qxm8ZMqvfGmGxbzR7DFED6tUpahGh2FYT?=
 =?us-ascii?Q?m+fiZIB6Fkd1VKHpOlwhgR8ElNuJbEziCXqmi3duXg6PHuRnam5icC40QQLZ?=
 =?us-ascii?Q?vfXPSL9/6O3BeUzX9GJSxrO8NzVthLTpVOvRWjmcdkELwoOwKJdZpWt+7FiN?=
 =?us-ascii?Q?MU1oSKqBwtR+IsPgQf+X6KPKKHMlhIGTTbEnSuKlU/okWGgpuJuhr4wNTcSk?=
 =?us-ascii?Q?gB476k40oroJqgmiihLokZOjxAXPtQhKfhQGz2nvk+PV7Sn7rQgeanyWRLx4?=
 =?us-ascii?Q?Xt4Y9umbTdyTW7Y+y/dMfZaHOZRQz6aiytUl9JBYoIyQxx7aL3w/IFWQw/Mh?=
 =?us-ascii?Q?pTigzAQ8+9A2hs4/np7vSRPAEXp3zs6nGeYutORRas7jUClJTk5gs1Jq8/17?=
 =?us-ascii?Q?rz7ccq4CEwPPz6v1cJDyS1YqKWoZTaZitS+0jcJlujTr/LuegopkVH5ds6RS?=
 =?us-ascii?Q?x6lLnql1aOql1YNBOHVdnxg3e80zcYMwYxP6mthIv2DIp8KAFcPyPSL1CeDl?=
 =?us-ascii?Q?D/80h8qyyorRPIomdmQjvE4MyX8Z7habLXmAIH+W3rw/Sgqut2+xOQQn8zoN?=
 =?us-ascii?Q?ahsvuUrqAYSDog7u20FuR7nee0hvCpwIHMc/uADJJZ3ox2CzWJsTTwZ9qkQr?=
 =?us-ascii?Q?m/2nSwwHTUdJhAMVxQx7AT8atfSXHKHc4JYvMq5vagcgpKvmZocGs0KZDrCa?=
 =?us-ascii?Q?NloK0cuqO5SWYBAqrm3lhx2GdYNgf4UoUP2iWeitYYc+/1nNcCqyheHeOHo2?=
 =?us-ascii?Q?fK4Ax54kDQPlUTDKWKpAWWO/H3aWPe++cNpSv2xVE1fdD/nvS75wiJRjJa3K?=
 =?us-ascii?Q?LAcj/itRvx2DM8ahzNepe04JGr1ZeNZ0bw29iwkOrf6rqK6xwVtJKflz1QE5?=
 =?us-ascii?Q?s0iMkbbyqfO/Vlx0YYNFVmljn76CCFCnYdtHkTrfLKo1klvz4I7/1HjUzHYT?=
 =?us-ascii?Q?x1Kk6zcoYfY/lMWLku14uyGyk5MPEG6BYGyowjXwlcDm/w5gNz5wMbXVWZuc?=
 =?us-ascii?Q?0hygbEUsAmyDXevwULwuyuvppHzvZOFEAygLpua+pd+TTBdbX2/sw+WBIyZ1?=
 =?us-ascii?Q?AeSAx7JQQEtpxkqUVItZu1Kw4OgsGmJ5ZdK/aLKyT98JxqWPKl5uInqKfKxj?=
 =?us-ascii?Q?gGlK/BB3926LXwCJbt/LgHIAEaSjl9vhQPWMx7uN3S2L3+uqas9qsj1BQhR0?=
 =?us-ascii?Q?J5PI/fxFzVjZwTbhVndfgDdhAWOAIX3BGhjMGwKYJ5alZplpzxeEFPkZi4dN?=
 =?us-ascii?Q?kg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b84cdf23-59c1-4152-b7fa-08daec8aa040
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jan 2023 06:28:56.4427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UAX2/dX1L8yTPdpdd3IunEG2b6nxa3JrwYGitMmRB6NJroNzy9pibS+TsJqDUNtJ9qQCPvnD8YhKxjQVrXO49cqhC9m0NcAwLoXlTRi6vq8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6392
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Add RPL-U CDCLK table
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, November 30, 2022 1:58 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Add RPL-U CDCLK table
>=20
> On Wed, 30 Nov 2022, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > A new step of 480MHz has been added on SKUs that have a RPL-U device
> > id. Add a new table which include this new CDCLK step.
> >
> > BSpec: 55409
> >
> > Signed-off-by: Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 39
> > ++++++++++++++++++++++
> >  1 file changed, 39 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 0c107a38f9d0..9bfeb1abba47 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -180,6 +180,18 @@ static void i85x_get_cdclk(struct drm_i915_private
> *dev_priv,
> >  	}
> >  }
> >
> > +static bool is_rplu(struct drm_i915_private *dev_priv) {
> > +	switch (INTEL_DEVID(dev_priv)) {
> > +	case 0xA7A1:
> > +	case 0xA721:
> > +	case 0xA7A9:
>=20
> No. Under no circumstances are you to sprinkle PCI ID checks directly in =
code
> like this.
>=20
> The only place where PCI IDs go are the macros in include/drm/i915_pciids=
.h,
> and each PCI ID should be present there only once.
>=20
> Those macros should only be used in i915_pci.c and intel_device_info.c.
>=20
> If you need a distinction between RPL-P and RPL-U like this (and I didn't=
 check
> this in the spec, just commenting on the implementation) you need to spli=
t
> RPL-P and RPL-U definitions and add them as subplatforms in
> intel_device_info.c.
>=20
> As a general tip, when you consider using a function or a macro, look up
> where it's used and how. INTEL_DEVID() isn't used like this anywhere.

Thank you for your feedback. I send out a new patch set which implements th=
is change using quirks to identify
the PCI ids. Adding a separate sub platform just for this change seems to b=
e a bit of an overkill. Let us know your thoughts.

Regards,

Chaitanya

>=20
>=20
> BR,
> Jani.
>=20
>=20
> > +		return true;
> > +	default:
> > +		return false;
> > +	}
> > +}
> > +
> >  static void i915gm_get_cdclk(struct drm_i915_private *dev_priv,
> >  			     struct intel_cdclk_config *cdclk_config)  { @@ -
> 1329,6
> > +1341,27 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] =3D=
 {
> >  	{}
> >  };
> >
> > +static const struct intel_cdclk_vals rplu_cdclk_table[] =3D {
> > +	{ .refclk =3D 19200, .cdclk =3D 172800, .divider =3D 3, .ratio =3D 27=
 },
> > +	{ .refclk =3D 19200, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 20=
 },
> > +	{ .refclk =3D 19200, .cdclk =3D 480000, .divider =3D 2, .ratio =3D 50=
 },
> > +	{ .refclk =3D 19200, .cdclk =3D 556800, .divider =3D 2, .ratio =3D 58=
 },
> > +	{ .refclk =3D 19200, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 68=
 },
> > +
> > +	{ .refclk =3D 24000, .cdclk =3D 176000, .divider =3D 3, .ratio =3D 22=
 },
> > +	{ .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 16=
 },
> > +	{ .refclk =3D 24000, .cdclk =3D 480000, .divider =3D 2, .ratio =3D 40=
 },
> > +	{ .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .ratio =3D 46=
 },
> > +	{ .refclk =3D 24400, .cdclk =3D 648000, .divider =3D 2, .ratio =3D 54=
 },
> > +
> > +	{ .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, .ratio =3D 14=
 },
> > +	{ .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 10=
 },
> > +	{ .refclk =3D 38400, .cdclk =3D 480000, .divider =3D 2, .ratio =3D 25=
 },
> > +	{ .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .ratio =3D 29=
 },
> > +	{ .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 34=
 },
> > +	{}
> > +};
> > +
> >  static const struct intel_cdclk_vals dg2_cdclk_table[] =3D {
> >  	{ .refclk =3D 38400, .cdclk =3D 163200, .divider =3D 2, .ratio =3D 34=
, .waveform
> =3D 0x8888 },
> >  	{ .refclk =3D 38400, .cdclk =3D 204000, .divider =3D 2, .ratio =3D 34=
,
> > .waveform =3D 0x9248 }, @@ -3353,6 +3386,12 @@ void
> intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
> >  		/* Wa_22011320316:adl-p[a0] */
> >  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> >  			dev_priv->display.cdclk.table =3D
> adlp_a_step_cdclk_table;
> > +		/*
> > +		 * BSpec: 55409
> > +		 * 480 MHz supported on SKUs that have a RPL-U Device ID
> > +		 */
> > +		else if (is_rplu(dev_priv))
> > +			dev_priv->cdclk.table =3D rplu_cdclk_table;
> >  		else
> >  			dev_priv->display.cdclk.table =3D adlp_cdclk_table;
> >  	} else if (IS_ROCKETLAKE(dev_priv)) {
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
