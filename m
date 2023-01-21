Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD66F67641A
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Jan 2023 07:01:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C5D10E147;
	Sat, 21 Jan 2023 06:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8476110E147
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Jan 2023 06:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674280904; x=1705816904;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=De2I/TaEOqF+/7a08s+KUC4Sz8Vk0TxWwZ0IeGdnTHQ=;
 b=CfEDZaOoSxjH5H0AmXDAmOKxHhCZhasd6aeqigqBBMeHLz5uGBruU6M8
 8llZ6PgJ1O0mISjALaKFpksl5pzzrI+CaT9VYR6kMwV2JtqxqtCPiFp8T
 rzYLTGrhC5acbEdUi9r4gVS9WcLcJs9qnwvjJfIMmMMIzGmVM34iSWyQR
 Dkzmp5OgxBqVUsp3ppXrPqw7T0R+WeNTnI/999Kxo3p0P2klnwL76qq/8
 kS+lFsFhl8MPcMRK3qnRmM5dXMRlxuA8OxK9Eh/auOLMZICDydWwjwEiM
 LKE3iP2R6qskUXlVZgESNsX4xNY6fOMhErTs05ZOhLPOODq7A2vxLYAKl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="309337005"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="309337005"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 22:01:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="834661777"
X-IronPort-AV: E=Sophos;i="5.97,234,1669104000"; d="scan'208";a="834661777"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 20 Jan 2023 22:01:43 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 22:01:43 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 22:01:43 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 22:01:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YRp/JjHk0bXsLMvmu+rjUDIuwgirKg/m92NbM1+oFlxD5Rvt7U/0LzJ9afVa/3Gcgj4gWHzxhvWNLkpvgGEiCblQ9k2Z5KLdD4QwJ6uAhofovC9rLhM5oFbNMB260f7P+K4OdOOYHB51/ZDDNMhS9V0To1D9cZNXmkGkL3ffDkqlbAQI4fuEuQtVLtNhAfe3Wft0Zh3BuwWSrMt5PuWJW5gmwjeZqJhrP0emXdkTknYJH5P4TEVWfSbajOE1uJE3XMq6//ilugjv3N76u3yZEOcCbRJBYMBUtP58qSq9dXMzAdBXNP1CfTmFqycbGweF08pT+V2bYFPSA96UTI6LYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LYIAx4WNZdq5QBShWxMshDnH6SZ+LIpiqkZevQ/DH7k=;
 b=lm7Th4dktEqhF87QihR8Yp/PP5eRN+NzZ0tOZdXFrse8O9I793LCqypgjvfccGkLGEwCRj0KPLeBM1vl89SA7yutojcrNCICCstn9sqM8AK4Z3dzVhwzSa0L/VJ7agI40/Kw7tSmd4otIeAASTC+CNZgqickmxO+8mH088Q8uYUiR70ftn4rkddPyV8rlnfVG/V6IjPnwTHStSXVJjHfNn171lhglTt6lLX66v5eZPxls/qgEzEwkxbHBJqxuyGJNIQu1oPXkD5i9txSSTjZCo5MNMdP1ROG0xDLUqvugStDK9FYDvkRFeh6BoJ2z3MFhxqeBeVQdy5fxCXRcNhd8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com (2603:10b6:a03:4f4::20)
 by CH3PR11MB7322.namprd11.prod.outlook.com (2603:10b6:610:14a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.28; Sat, 21 Jan
 2023 06:01:40 +0000
Received: from SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117]) by SJ2PR11MB7715.namprd11.prod.outlook.com
 ([fe80::8de1:bfff:7ac7:b117%9]) with mapi id 15.20.6002.028; Sat, 21 Jan 2023
 06:01:40 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 6/8] drm/i915: Convert _FIA() to
 _PICK_EVEN_2RANGES()
Thread-Index: AQHZLQZy8nPDNdSk7UKX3pudOxotSK6oYWdw
Date: Sat, 21 Jan 2023 06:01:40 +0000
Message-ID: <SJ2PR11MB771508076158DCCC865A746DF8CA9@SJ2PR11MB7715.namprd11.prod.outlook.com>
References: <20230120193457.3295977-1-lucas.demarchi@intel.com>
 <20230120193457.3295977-7-lucas.demarchi@intel.com>
In-Reply-To: <20230120193457.3295977-7-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7715:EE_|CH3PR11MB7322:EE_
x-ms-office365-filtering-correlation-id: 6af0db29-2a29-4759-3f35-08dafb74f6e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qfP9CraLcumwhaVGNuCB7xfOjH9nGQnBIki3QMziuGDqr/JIBsPKi5WLzPbTxUNu5+BZNaqu8scfF+FQx6LG4XQ9dk+kKm8dp3jXfl1rNW7fMgHlhU4InUjAIaIsn97o16IKiokaw0gqgRf2nYtT8EWNhpRTZ+T39K6+mExycP9aHD/NU2/Ss/opF+mM+rAmzL5ImPEKALZ3T6y+nlVNJ1Tta/wP9+twDP0HKkY/nP3s81/osqN71jgs8MDMx6779Qgl+O7UTO5yVZ0nYQh5xn9O4aH0bY5RqlCuu60zoLQFzgeDJBLY/zJ3mtzDXlb6oJnHhKsUQtkkE6IPQl5Ksf4B9AXEoaCRKVKAZVNOhYUZ5xZsieWK9asvAOHsgZcXXIPrxIiBxCMCOWXCe5d5kmNl4SgXEsGxcdOrXzMEzrzo1sFaXxCjJ94WRjosR6Z3nofxG/0EWHR+gLrYvQHfTqgcpRRxNW5tZxye7cdxsVEZePG2ah7SPInrGehpHG7ksvsF/C6JMM0W4LyX9qukR8nd84OatuwSCfCqmlN45K7CUMbxjJoIr0MOx8vU2HggIdJwctQ5tUckI6TdzBuNOB8kEBD19mWXebQl/Pvu4aqYoY5pQlbe2RRDk/kPxuluplhlNfuD+omM/pwkyp6Z1s4ox5kizrkGDfCkUu1nvjL0v1HkdkJvH8isX2v0NY6SbfpQ7E0+MaON67J2/riC4w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7715.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(39860400002)(396003)(376002)(136003)(366004)(451199015)(55016003)(86362001)(2906002)(33656002)(450100002)(66946007)(76116006)(9686003)(186003)(66476007)(41300700001)(4326008)(8676002)(64756008)(66446008)(66556008)(478600001)(7696005)(71200400001)(316002)(53546011)(6506007)(110136005)(54906003)(82960400001)(122000001)(38100700002)(8936002)(5660300002)(38070700005)(52536014)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Dct6adlyAkbhwEexngebU9G7/Mcs5R1ozX18Ieh90nuEXWOos5IQJgsj3sjq?=
 =?us-ascii?Q?phuyeoMyc49EI05KOnN7VliU9RAcLW+jd62fAWQ/0JdJcQQclAhiFSyz0FrE?=
 =?us-ascii?Q?DQyUVuWjaCqE2rD8lkSM7vcZOaxOSu9FOa7xdFszxjqNbp3EpjPDvJeOJw/N?=
 =?us-ascii?Q?MivxKliss5tch/fZRsAX26X4tyFrVsCnXWO+iKJI7l1ZI8SR/Vn/5D2WFkNV?=
 =?us-ascii?Q?5mHKL0Oj6qfUyCoRyVQNU3PsGwM6OOa/sB64U+3PMgk6myQbCVMLT6dcl+sw?=
 =?us-ascii?Q?8Hm1NUxQeqBhNHrH+AYswPLujqovu38xwq3750wHYXUAHw9WMe+j3SYpGWB9?=
 =?us-ascii?Q?eSWncMrJX20pwU0cq1rHm8jxsX/akBRyNEUzCNC1EOxZohG9CPo8VmkehuwS?=
 =?us-ascii?Q?S5Dnci9jM/oVktyFpADCx4zTeIVbK2rRhuC3rh7Uv2CrFxp1Sep5Vll+DG/j?=
 =?us-ascii?Q?yLcZ6adgpPebcP2inIF/fIxYmzSyxlMO112XgnowP7nMSYwjIGOYERS8Z2J3?=
 =?us-ascii?Q?6q0l74tuqQBRn0xATyG0skqoOMTr6LiEwOGtDE3h+yeEFuEuc3juw0Q+k6wH?=
 =?us-ascii?Q?Ug0LqkA3SA6fB9xKPbYVR6SkXL1pKUlNpc2j+AZ0a5gPoAuRjHl1mNwCAod6?=
 =?us-ascii?Q?C7DV6hcTOLb28B4NVcPZTSzpt5627EfSC4CYNgSIQt2bD4V9vvT/uWvD9ksc?=
 =?us-ascii?Q?gkVw324SrmzkxYp23X9Wzzxs/ih0hcHHKz/PA+MU6rKt8dCTjWP93I9oJgnb?=
 =?us-ascii?Q?njrHZHk4Km00x3J0utRWu0sSEEowYCI3ijPLJAep2oGZlyjNTgR2ggLP9B9g?=
 =?us-ascii?Q?99fJyOeqDEpaR0mKgR9fSUF0hKtlobyWOU5xCcYkv0GKGbJyVRbA+yQwbNz8?=
 =?us-ascii?Q?vTGtegy6RLWp5wVcNM/+zA7HktnABPz8QCsFgdMkXKUTv/1P8capo2V5hGvi?=
 =?us-ascii?Q?NNKJndkY6yRdfLs8RUrGIzvmArDoj9G581cf8AFmS+ve8No3ZdgM63yKOaad?=
 =?us-ascii?Q?WgcwyaZdF5/QURdsP83iTbUpzaRi9sXbWLRj4lQAPM4fnItn2JBEbkpUMDSm?=
 =?us-ascii?Q?iH3/PJf3Q3uv++776Rf/obVv9unt3ItdkHU0mqONArMc7BmO/2B+kDgO3bJW?=
 =?us-ascii?Q?V16HaN1aGBE/QdQDlm3SqbEvEISR3UtNm9iT4rjGi5xDSsznWm4wVdrSYuEm?=
 =?us-ascii?Q?q5EcuA4rcEsrIHdhx9h8MaJOMnd5VsldIV4FuGrYQ+LqaobjuGLPivygHdPM?=
 =?us-ascii?Q?ygFRxRQlb4Gia3LzJDSDXKJPt2G7Cn09uAcwN0T0xYGZc8bHUgonXgmBFZ2P?=
 =?us-ascii?Q?2/J9FwWyxR6ldEZvxDWTIwnyhmf2kWqDC6oaxluhNOItVvnGsaqGgLq59q9a?=
 =?us-ascii?Q?idmvYist/6GrHb1Zh2LOkb5x34AoUw7ZyY6dPFCpyWAXzi576yWPeMsG7n4+?=
 =?us-ascii?Q?/r4tCsNc/aKSqG7oGdd7V5GzDMkZz2QAvj7tfTApIsgOHifh7BwP50i/iq3z?=
 =?us-ascii?Q?Wl0DTpa9Oc7B7Z1M0HuIiu3VTvSnTVI1j5BVfrJVnZhF998LdpYodtY5XXio?=
 =?us-ascii?Q?/oWuqpUAaY6UK1u8jjbYcQ3BFFkxKdkdegGz1prB8pJtp/T0HDdL1bM6ci/r?=
 =?us-ascii?Q?oIdejKTprCi7CFsNKkoKV9lbLUw8GrHka28JBRt3Sj8XbBF6zoPHe4aGl4Ll?=
 =?us-ascii?Q?mJ5q9A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7715.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6af0db29-2a29-4759-3f35-08dafb74f6e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2023 06:01:40.2940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8TpsPNuYIb1d5XcwIRXe7TRcOOhsLtugqOLkg9otrnn1Y8tgrgUJLsUTXTKiuBntYinv1zZcu+ZTrBhG3m9tKhNjualXjHlPIc/NgaxaRVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7322
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915: Convert _FIA() to
 _PICK_EVEN_2RANGES()
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lu=
cas
> De Marchi
> Sent: Friday, January 20, 2023 11:35 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>; dri-
> devel@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2 6/8] drm/i915: Convert _FIA() to
> _PICK_EVEN_2RANGES()
>=20
> _FIA() can use _PICK_EVEN_2RANGES instead of _PICK, which reduces the siz=
e
> and is safer.
>=20
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_mg_phy_regs.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_mg_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_mg_phy_regs.h
> index 0e8248bce52d..0306ade2bc30 100644
> --- a/drivers/gpu/drm/i915/display/intel_mg_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_mg_phy_regs.h
> @@ -142,7 +142,9 @@
>  #define FIA1_BASE			0x163000
>  #define FIA2_BASE			0x16E000
>  #define FIA3_BASE			0x16F000
> -#define _FIA(fia)			_PICK((fia), FIA1_BASE, FIA2_BASE,
> FIA3_BASE)
> +#define _FIA(fia)			_PICK_EVEN_2RANGES((fia), 1,
> 	\
> +							   FIA1_BASE,
> FIA1_BASE,\
> +							   FIA2_BASE,
> FIA3_BASE)
>  #define _MMIO_FIA(fia, off)		_MMIO(_FIA(fia) + (off))
>=20
>  /* ICL PHY DFLEX registers */
> --
> 2.39.0

