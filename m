Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4581786B15
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 11:06:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14EED10E117;
	Thu, 24 Aug 2023 09:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE3F10E117
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 09:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692867972; x=1724403972;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HzTcMVDNPgmp57jRCPlZ1DJ0CiyVjeS4JKwf8MfCMB4=;
 b=H0BdztN9EJ3vU9UhVDTTRswB3E+VUlHOg6yutwsOj/qIHfosE5iA8ISt
 yO6O4VWlQr07VQQghkYViJ8eNVpC/8RiAmGOq+r2eM1S8iDz9jxFYdvIV
 RixJFcT537CkfBfOX4urbgXHVE/aflgcX1BFOdWpzimqYJDDpqbfD9mQa
 SHD68JmVpTTRRR9WznFQSqsnaXwmzHhfXL7QymohO8UFD70LJH0CiVnTj
 3hp6K5pwR16DfhpIaM6xw1V5oYrNwgOqN7KuK25GB71A57bmVD+aBkcBN
 65qB8XfqJeSuIKhII7/wdEBawo1Avd/l+Y8iHjYesZucn34kqpuUM9mWy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="377115252"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="377115252"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 02:06:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="686801178"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="686801178"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 24 Aug 2023 02:06:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 02:06:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 02:06:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 02:06:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 02:06:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ETY8f0JmTFr9tMxXR0UeEmwtofR2vKgkZa/HFaWllDq9PZMi5u7yA1gDzRgFVG6Z1qREAsib+WR6N5PlxDG/wPKqeDzmd4BdKFJjz6pTXl+Lyzmx/gYMioctlgXNWgErOQwDsPVBFcK5AdDCepoTgc5KxVWe2xMmlq/D4tW1sPOuhxnEPw2rd2bzZjtNynEBDqGtxbzCtNdwlEZmYlFxHb0dLbU77K9AJrS0ueQE+VXzhmzcIO6xZOUAT87Rt/VNR8d9gBJp+QWohlhX63Tds0BMVTItUeFKA8zpsBxAvrV4NjjKfkLhy1RBxD9DMn6wJu8K2S+noRa6dC5XzPaD3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oZ00gbn7FQo73fw1qrClBUrJtqEGiJWkjKMOECeSHbI=;
 b=oXMN40aK6ek3nBrALwhIXZ7IHDFCcSujfX8PI4jF712B1SDE7MnjgTsFubp5ucJK+jOHU9QoOWDcbE6Lc7izL5rsA0wZBBoPe3Djnk+zvHpHWic+ddbRoo9kVR9xUQAryJ7Z85WPxnCZQclaaWKzQrxAVAvohyu9e/iY7z6fqnRfYc8ZMYkOUSq8vpAFu4OCFCjLvEqV93yYCAodnLpGsUzSO0jUY2xvlOLX5OrETPEpeV4rz5dugLHQyXM19D40ziqV5VgZZEygXVZKEB3YPbjh4KtSWW1ocPoe/9lMeYgYVIKHewDgE1yYqRZgkmCaCNLkg6uceeweVF0OGeZdfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS0PR11MB7262.namprd11.prod.outlook.com (2603:10b6:8:13c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 09:06:06 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2e57:2022:73b2:f8fd]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2e57:2022:73b2:f8fd%4]) with mapi id 15.20.6699.026; Thu, 24 Aug 2023
 09:06:05 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/rpl: Add new RPL PCI-IDs
Thread-Index: AQHZ1mb0YRm44KaObEuuMCmYzoGMZa/5J0Yw
Date: Thu, 24 Aug 2023 09:06:05 +0000
Message-ID: <SJ1PR11MB6129F145E00E508FC37DB328B91DA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230824083846.1114262-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20230824083846.1114262-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS0PR11MB7262:EE_
x-ms-office365-filtering-correlation-id: 9535c9dc-a446-4042-ac13-08dba4815949
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p9Yx5DkgP1U5syToLOsJnE+qG47g7aurbh6+uCpR0GKL9HNoH9ooXZ5DOOeWROj0VUQahX+izKm7wPip2B3r3RRI6q9HEKu/XMKtWt8JPpD6Iy4e1tGeIpzACX0iOF3ESDMhTPEiXEa+RGbHBZDNq/b6crZRyc0L2Jox9UQR6AbFryOt8L8RcfW1U14sxGpmDLI+TkDUE5mArsI1ui1Oxpmb2gzd2s7PZXEtBjj+wditOM+9bowYXSeeldwZMkaSWrv2cimb43pPqZbN8e6dwlovcZqZXshLtnta4zFXZgC3WB0eC76tGmsObzxAC2JxrzkQApDTWPECcX+EnoP+9AD5wms/B1SpPZGlg9NvA4wVLbmsMQA8zilPnnpFNG5h95bjCWlFlQ4smtktQoPPGgP7jfX99hMlD/oJiCLDDq9ICVqt+omKpbw+6gHO2pTFQpAme+Np6BeJhQqZY7muCMMAncrVSpKXikigNwgNQabcjrH7+NXQRkJjnihokroctW2DYrk9vnu+5K3z+HlQsj+GFKM5p2fK77BGHtTwwt4Lkoesm7+H2fk3y1qXfIm0Rw+FoNzqyv/kUk0W8aQrwLCzTqAyHcHrxlENL218edk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(346002)(136003)(396003)(186009)(1800799009)(451199024)(52536014)(5660300002)(107886003)(4326008)(8676002)(8936002)(83380400001)(33656002)(7696005)(55016003)(26005)(71200400001)(38070700005)(38100700002)(82960400001)(122000001)(66556008)(66946007)(66476007)(54906003)(64756008)(66446008)(6916009)(76116006)(316002)(478600001)(966005)(53546011)(41300700001)(2906002)(9686003)(6506007)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+lM2HU/0LGw/Q/Lp2NcKFlk9zmTqd9L9baPc4bAm+mk8etEVnAf+aFqiFiEL?=
 =?us-ascii?Q?TycSHQd9bVs6hRe7dLfRi+B+En87aWuTsPCMGrGxRM//fkPC/0OgK0suOLSW?=
 =?us-ascii?Q?CCeT+mHPjVnQKQBx+WsQuBQLC9nLVT7mZktZ+iZp9gshyIRjyM2crXFvc0Z7?=
 =?us-ascii?Q?fcv9JC2pxvSNEI6/vh7eUP+ILavfotxnfV2HaNWPtyD/J7eQ4bUNsNyAa4Dm?=
 =?us-ascii?Q?O8ShSd8+xyf8WtTLhNlSnt74876q4p+2bj5mkMUc5WE1Af31jo2ItpQXS69C?=
 =?us-ascii?Q?qGl8kQnhacnN7AfAmIfeSlp3tVGKZXIqUilOqsC5uFryjS6+SN0p9dpFpm5w?=
 =?us-ascii?Q?snT79tbjy45pRkFZGrHlgp9N5YAZLv9/IaJb6uSAFkt33rrCAt+EetNpk509?=
 =?us-ascii?Q?VCnrMiq2Qe59+9LKKatW9mrFGGLV5mC28Fp/DP8pVw/YUFllJzvd6nKzr36s?=
 =?us-ascii?Q?zjx7j+nVhP6HE0F8kiWjmeNDHku2pWqRcEjk7wthnJzRb0A725iHHIMWdSHq?=
 =?us-ascii?Q?ZQcPD1gVWQP+J12TPE0A1/L7fN5N1+syl9gNKsST3hlfsrAuQ7dQ9XOCvHsJ?=
 =?us-ascii?Q?D0p9LaU/LcLbOuW138SDyv7VrF9+DyEMEe/F9jszACX4F92X+DvDMtsrDRf9?=
 =?us-ascii?Q?1p+G+fPEY7LkpE+bT3Jj/+Qr7Rga0TvAocLGxfRFdNue4UVb7MsV5iEn+b/Y?=
 =?us-ascii?Q?idCNAcxiO3rtqC/PICiFuMZuGf3PIZDr1oaIo9KDkBqov8BDHjF0PXjir3Fc?=
 =?us-ascii?Q?nMXXm6y2Dluhpx11D3io9NTXtqWVv75YfjyxZG+lgbptL4yAtdgnHaImVIMq?=
 =?us-ascii?Q?nkqYN+uUk4RyuQqpLUh8j50UCALLxNIxW3zfP3GcgvYkp4mmNT0JfHqmLK30?=
 =?us-ascii?Q?bkY6hq523kwcfn4lmjJlBKA3rxhrdaOaB7Pn1WRmZc95XTCm+eAhB1wv1LHX?=
 =?us-ascii?Q?Lsf/bouPtps6hrGxYmywKeCCT6GAMwqN1cP+rW9fysjwckLWF+Ir1RZpQMbw?=
 =?us-ascii?Q?++fJniCYrfACh8WDAPlJCQtIgU0V94+5q8IUXfrDVqglU6KYrVkP8ak9iBdt?=
 =?us-ascii?Q?9dUqO/A033g+9S+s14bavk3AHEq6FrfnOb7NlGcxH6BBeG6/FuFmxXpITH48?=
 =?us-ascii?Q?Q5zsZ6XuQlip9FQUDwNGnSKU/cvjSYAqQ536R/uz6bAdZ1pbcFSSSIALn4qY?=
 =?us-ascii?Q?WomC1ThXBhyZndcJ069CbLrRiSiH4JKNhRHaLSLlSpKKGzgC+FmDqqbKlS2P?=
 =?us-ascii?Q?l+TLz+huDSBu8Uy+8ajDQr6bsy8wt0fVy7Dah210Cnwufjv4k0RrZJ7lltwx?=
 =?us-ascii?Q?SJkOYLFjRCWlyAh7uPYFunSq5GwZ5Evc61fHDvQ+jXRFnMG/EB1WOSU71jCh?=
 =?us-ascii?Q?UQ5n/yF+Np/ctDx1XeQV9hV5VMLSEmRwAXMjM+Lr6dhaH8+tEybWYYhciinR?=
 =?us-ascii?Q?EhfOoMxiJwj3IjzEJEo0Tum58W6MqSjSsG9j+1wKU48I1h0ODSOadUdxvLXY?=
 =?us-ascii?Q?+xsW/eGBEWcsMvqcBxjk+wTteQC2aSKDUFx5gA2vja34hMJFoztLLc9e3WM1?=
 =?us-ascii?Q?I9+GGeLR6haThMa33GOFYIgbIX7J/HwZMXHyDXlV8XNExvas8TNORvSpXlsE?=
 =?us-ascii?Q?Zw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9535c9dc-a446-4042-ac13-08dba4815949
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 09:06:05.8684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WJOLOJ13aNE+NOrJ2LjEJgU5o1YzL/YrCX2izB9U6RJ+cLNK/ErL/9F8kS//fhl9Q5QTCrvmvl+SI+bBjN7P4FFaojuyUsnlEtINMB3dzEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7262
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rpl: Add new RPL PCI-IDs
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Just noticed that Dnyaneshwar has already sent patches for this change.

https://patchwork.freedesktop.org/patch/554112/?series=3D122712&rev=3D3

We can perhaps ignore this.

Regards

Chaitanya

> -----Original Message-----
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Thursday, August 24, 2023 2:09 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH] drm/i915/rpl: Add new RPL PCI-IDs
>=20
> Add newly added PCI-IDs for RPL
>=20
> BSpec: 55376
>=20
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  include/drm/i915_pciids.h | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> 1661f9e552d2..1256770d3827 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -689,14 +689,18 @@
>  #define INTEL_RPLU_IDS(info) \
>  	INTEL_VGA_DEVICE(0xA721, info), \
>  	INTEL_VGA_DEVICE(0xA7A1, info), \
> -	INTEL_VGA_DEVICE(0xA7A9, info)
> +	INTEL_VGA_DEVICE(0xA7A9, info), \
> +	INTEL_VGA_DEVICE(0xA7AC, info), \
> +	INTEL_VGA_DEVICE(0xA7AD, info)
>=20
>  /* RPL-P */
>  #define INTEL_RPLP_IDS(info) \
>  	INTEL_RPLU_IDS(info), \
>  	INTEL_VGA_DEVICE(0xA720, info), \
>  	INTEL_VGA_DEVICE(0xA7A0, info), \
> -	INTEL_VGA_DEVICE(0xA7A8, info)
> +	INTEL_VGA_DEVICE(0xA7A8, info), \
> +	INTEL_VGA_DEVICE(0xA7AA, info), \
> +	INTEL_VGA_DEVICE(0xA7AB, info)
>=20
>  /* DG2 */
>  #define INTEL_DG2_G10_IDS(info) \
> --
> 2.25.1

