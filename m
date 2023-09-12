Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4E279CEAF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 12:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77FD10E3EF;
	Tue, 12 Sep 2023 10:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBBF410E3EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 10:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694515626; x=1726051626;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zfMxkiUNP0xoX2dD222PWS7mIuyfnD1cSKZS2plgiZ8=;
 b=aYrMJWVRRucq61o+GrS8sHsOsIeW2JYMhwJMD1R1OKg7Z7F0HB3uvUmE
 uS4ZWyrqrMVlUKRK14nzl92aLQDMYQfwlOrLTjUe+2oq4yqFTbqFuPMRj
 C1OoHyNREPKSByJv84nzWYqqVN28i7Wb/OCWVQVn6pA62Qlv6H0fRSDSf
 UDtbmJPHYWuPaqLvWpJ4euZ5++Yexe2ec9zCIfKX9HUkIALLE+QnVpCTe
 AZE0TNeKWJdD+8cnKTLTfNP0WwN4yRu53rIEOsTgwEfEHKCooqq/P8/nz
 2MJJikZSqK4W2S/2bNJ49uo7WbYejg24VFqUM0gj+kLcMovfV7I28GcFj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="358614238"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="358614238"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 03:47:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="720358177"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="720358177"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 03:47:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 03:47:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 03:47:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 03:47:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 03:47:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BacvshdTMHtcqwsNRnJ9tiwxNRESaWidsablx4yhk92Rz4wJZwioc2uptdvPe/y2yr38q8pwIO5Y3ip/lsUiZheHdHl04ikhASIvif+4r30G5Fh8rWAJPyS9PhjAYdv8gj3keZ8ebK00LbWS/eb7qjocERfHq1PnbEFif1XSS5m9DsQmy4gEBzyLBwDLxq4thPEes8OhV+407D6NjdyeZ2t8FqN++nQryRh0wag5EUzrX94lVZQdcMOMat2vq0u0YfllbcrGJwIU5cUdh4LBYXn+3OPfBkTaLGwJUYjifOF/KeKsKgv5vgioUl+P9jtVtiguqq/3VdaCwSTvRF7QCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zfMxkiUNP0xoX2dD222PWS7mIuyfnD1cSKZS2plgiZ8=;
 b=WX8IeQKDhqz5JcAiXda9ovqZoQlLAW9i0QkcCKxenZugLtOIRtHk3g2yxH5o6bvZqtc9U2/5Un1841PZuVuUu8vfM5GI6Z4PqNwU+UKrxVaakfcGSxG8mwz77aZ3DuXnS8WejA28RNFdjAUWIQE882E8OZqbFi6gRVC9qT++tYYmynkkc/T4hbm5odlas32c1O6pwaVdekP7K1zKQrwuIWzKX4TPsOKc5sQw4JCLMAJ5uXDndr9a6VW4Y+VBdnUtl830Jabpfgm3/sO3Y4ySzUuA5OqV/dHSb1hGsHcNXy1VgMplMuDF6sxmXLiKjW3YBxj8waxOWF/EEJsbx/rcnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8)
 by DS7PR11MB7887.namprd11.prod.outlook.com (2603:10b6:8:e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Tue, 12 Sep
 2023 10:47:01 +0000
Received: from CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::f8a8:855c:2d19:9ac1]) by CY5PR11MB6366.namprd11.prod.outlook.com
 ([fe80::f8a8:855c:2d19:9ac1%6]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 10:47:01 +0000
From: "Usyskin, Alexander" <alexander.usyskin@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [PATCH 01/10] drm/i915/spi: add spi device for discrete graphics
Thread-Index: AQHZ4+SMsFvhOOealU6q+ocEBSNMjrAVxRGAgAE/qDA=
Date: Tue, 12 Sep 2023 10:47:01 +0000
Message-ID: <CY5PR11MB6366B58DBEA15C89E2F7F18CEDF1A@CY5PR11MB6366.namprd11.prod.outlook.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230910123949.1251964-2-alexander.usyskin@intel.com>
 <87msxsemzc.fsf@intel.com>
In-Reply-To: <87msxsemzc.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6366:EE_|DS7PR11MB7887:EE_
x-ms-office365-filtering-correlation-id: 1a23657b-905c-4e0f-26d1-08dbb37d985a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: khL3rc+GeN5BJ14Gb2NC/IcJB59Teo+qR9wAmie9dyD0+3DwyoBjH7EU8YVeuYD3vaDMYQEac0qmwgniRvpH+BquyqKAA8ScedkZmDGp6kttE3uBz0CZptKTuqS6nec31c6iRHZyp0kfGXBBK9BE8962EKifEjUK+u8iGIs5VmfGO/HKv+GMo+L0NRptPdy+5K8Sm+K12LXcbszkEdk70xQUU71RHYBkL5jEN+7Jw3/7LyQDWLV1Wl5WOCWdyN4BwCiESR2/mbX/CMk9OvxjlmSPawxaaTnlWy6zXA5N2v1Bjxo3d+io6aRrZnjrwPD9cIPZccyiquK1xbVn5CqerADRDtdZ+piW8PEcACSkQRG3RrBv3k4GJ0GB8rVmr21W8fbDiAJlfuQyiiWd500pH9ha7FoJ72WzgFkQdcU2aFd1yJxdgbJjVVaLYXGzUADGUhvCf3lQkehgy1XjyYikvkJyiTGErRrYkoIh2OnIiEOjmvPuSuUdE7YHcoLXSl6YXFIGVg/yBZRChSx+0URdkaL1RR/Ol9lCDuQKmPT9MHle1Dy5YwkICdHy9sEfws/46LH5ivgly7YQXjbx+CeSXpmR4Ohe1q7L8jHqefsxtL6iWkwlz6t1VvRTEccLugC5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6366.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(396003)(366004)(39860400002)(1800799009)(451199024)(186009)(7696005)(71200400001)(6506007)(110136005)(5660300002)(86362001)(38070700005)(38100700002)(55016003)(82960400001)(122000001)(33656002)(26005)(4744005)(9686003)(478600001)(316002)(8676002)(52536014)(41300700001)(6636002)(4326008)(8936002)(64756008)(76116006)(2906002)(66476007)(66946007)(54906003)(66556008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ymsmzQIrdOSuW1BpO3z1mbcyaZW5/k1PYcrFPbKBRDGs62MX6jav3LFuZV9C?=
 =?us-ascii?Q?/asgJ/W3ZtcspepHuB93i1vIckl+bYY6hH3/aiEX0A9KZIekweZqVrLkEkVO?=
 =?us-ascii?Q?GB04q0JN9UCPB+5CgtLQz9DsiK1A7QtV+LoshcvD/lHmG/EzjYISoGiU9BGR?=
 =?us-ascii?Q?fsKbhqmqO/TbIzSVbzP4dLZ6/8EAGKe9SZihGdk8olG6LVX2g6lMUd5DDURT?=
 =?us-ascii?Q?DMQF/L14/hIYTO398hMRAs7rIga8bfStHO1i+LTL/R4Gs57HMTrwqVEqpJ57?=
 =?us-ascii?Q?2oeGjGAHeU1fdLhOPcwbznW9Q1AaP/n11AbrRsXBaLCkgxyiRy0dhmeCs+hW?=
 =?us-ascii?Q?EWwAIhOImu1GivdkELDQCgu5trSPphJQ4q4HAMs1ZKEZ9e814E5WdkI33M8I?=
 =?us-ascii?Q?mbJKGqNGCVB0DNmWxEICjl70/0h4TaOhofJ+vK+decCVz4DX90ccfkywaUWL?=
 =?us-ascii?Q?CzCpDp1YwdoRKgf7rDMU3QKMwJh1jIWAaXoAm8K2LVfXb+kLT9ulGeDoy4ab?=
 =?us-ascii?Q?4os75OnvKFwbdPWr2scnxiuW+7jBPhNi0IGYUso7i0m9gjOamtBzIfeg4TKt?=
 =?us-ascii?Q?sQdXY61Qzgzq4ws+O0muSlQwOUSfFfJBKOPNFJg8sW1P94Xt7nnaZrmYk1f/?=
 =?us-ascii?Q?8fZh2NfGrAD6HcnxZNgVKudw8VYUgpKPXROnq6m15UVAIJaK2rvoQr8sJzDz?=
 =?us-ascii?Q?DlOzkxzAuOzCtEknaMMdtOFDS3efDDAvoPrlNPiDCQbyk8serniYtFHS7fbK?=
 =?us-ascii?Q?O1dpy/fMvhy+8MrTTUopVhyN46n93l5rcVKgRD4kbZxUSDuXCKaT7tNHP9+K?=
 =?us-ascii?Q?kH5TznXIDTpQuHTaxeYQa0tpOfpXhg0dXRaUxEY/ZgdWL52EbclH2+rzHQP+?=
 =?us-ascii?Q?7mgfNUxjGIVks6TGN4REYyiVdQgjicEEa9kv4z6Zfzf2UrsNhd8foCy8Upl/?=
 =?us-ascii?Q?R8B4DS1mqymtz0QeQiUZoYS/RkvddXLRe9owOYk32oQrDzdL5DAzkMKCnOZf?=
 =?us-ascii?Q?KF7dFpUnT4VtA0cuCY6lheQ+O1AUEDyCaBku3EKkUSzsabe1CvX117yD5RQZ?=
 =?us-ascii?Q?yN3X9oZgJYSYNAx8Il3WP5efYud1cs+igzso3FHB48CdWa89SvV3jE71ZF+9?=
 =?us-ascii?Q?ou4XvbgfgZMLSQAgm1xMUKuLalL4l7He3qTOI3Uef5WyCwyj56enPf+Zjj6X?=
 =?us-ascii?Q?TvuLdFI6pAZvpIFP9RkJMjxFi9MZRkR9rkJR8yrq5sa26Uy8/ceA7QpqFA/y?=
 =?us-ascii?Q?PGDeBBzarTwifoKYiRLCWGe8LVWLUWuyEfphBADKRNwz+ei9VpEhnOSWwIbp?=
 =?us-ascii?Q?TYV9s8HfDkpXRzS4SzOSnaB5utv9VsLx5dJwzzOX5TPGqxkEVHXBO1rhfCww?=
 =?us-ascii?Q?yC/hY8IcB52rc+Ojdk4dz5svsdJdqZam7M5/RPQ4JugiiyF08hmLoKhus5Rr?=
 =?us-ascii?Q?G6RnHqWsEANyenXkvkM4Va0cOol82Rk8qE5LIahfSBluAUGTS/hbHRQqTpyU?=
 =?us-ascii?Q?zZci8MWi58ZrRQIQfkq+f/1WHIG8LDppOrvBo8vi94q0zXnIwHU/YVgLaE9D?=
 =?us-ascii?Q?8v0mjM1OgyaQnxG1a1B/MvnKzccHDz3aWAHCIhLkF8vHJjNejjIrAaNuGTUA?=
 =?us-ascii?Q?8g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6366.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a23657b-905c-4e0f-26d1-08dbb37d985a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2023 10:47:01.0806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NN5wIkWfDu6uq2Vfg0F8nAeY/JPn7kklBVKGAxgz8Efvd+v1hR93GY1aRcYWOexx/mRmJldWQULOZIpXeowAoQOkBdRV0cKFdUM57hhpChs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7887
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/spi: add spi device for
 discrete graphics
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Winkler,
 Tomas" <tomas.winkler@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> On Sun, 10 Sep 2023, Alexander Usyskin <alexander.usyskin@intel.com>
> wrote:
> > From: Jani Nikula <jani.nikula@intel.com>
>=20
> I'm almost certain I did not write this patch originally. The authorship
> may have been changed accidentally along the way, but it's not mine.
>=20
> BR,
> Jani.
>=20

Sorry for that, seems like some rebase flux in the internal tree.
Will move author to Tomas, as it seem his patch originally.

--=20
Thanks,
Sasha


