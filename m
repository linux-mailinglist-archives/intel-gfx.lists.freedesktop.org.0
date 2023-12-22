Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 558B381C545
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Dec 2023 07:53:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4D4E10E218;
	Fri, 22 Dec 2023 06:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C653210E218
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Dec 2023 06:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703228016; x=1734764016;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nbgd82eL9J/VXT0CIjfChriIi3VGDw3iuOhIp1Icbbw=;
 b=e5y1MhWVtzeqt12ud+po3UIaTa5fBPRQ7rDTKvZX7KZpZxWawyhrpMq2
 SPss7X/ild4A8MWCE8F2rCw8/hM3pBBKSunb8qEFanCZl4ZpGaZIiiMjz
 vvw0ARVed4Wb5zcd4JnkmbNHsQREXiqduUlAAyJ3QCFpeYjUrNaadCPXV
 fEQVeO/XmYpFWs47Mow7fYRfJNjb2XvZ8MaMta5dLbDaGeoIFHbEo7BK1
 H8ilRYnEyWBZBU+5Meg35e0bnEGzqMrXsXuLD+CvOBvgO/K3FHdgpnfv9
 hkYCiO9g63WOTcsu4RoqGcMNJlQfCvG3sepx4yySHw/+NgHzBlrZmvv0a g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="3324498"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; 
   d="scan'208";a="3324498"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2023 22:53:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10931"; a="900336500"
X-IronPort-AV: E=Sophos;i="6.04,294,1695711600"; d="scan'208";a="900336500"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Dec 2023 22:53:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 21 Dec 2023 22:53:33 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 21 Dec 2023 22:53:33 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 21 Dec 2023 22:53:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UBeBEfM7sjo0vpoj+GsAv56wFXrlR7ezQ5S9wyRlVl99dRd5zmeWpkDFoCfV7uuJ3mlb9Q9kNjNIG1dzcL3B35sxV2eEZsqUFImZLJGK+kfBhGQDzS0yWKOY1+inL2g4wUp1MycXYcgQrNSoGuTsZvJIAKKxnPAl9Awvnk//gaREkJt4rU+yJ5xZlN5VQ/YOwjOCCLU2a4blbYjxNQxdXCh5K4fAKtSardvFRHRPGNUxpykhkkgpUd4rxGs8wuNw5Ncuw02mg/oxonUMQC4Mk916HIGtzOviz3KrZQY8Y4+xsoikIcu1IoNR6Rlxscd6mmB0/4HPHusp9jDUMOX9Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iP8yrTuf8gYRV1+IgxP261k+j2NBmMGsp5KL7rEW7Ao=;
 b=RJ9P285YTjbdFyWzaCSpYvJZL+8U+M/EgKj6aEXl4iN6yWeTZtYNZMNEFKasqu/mHVJOPwEqNCQkOq7ZyGukrP1D9chlZWdn94MvZfD0Ua+bT1Lmrv5GXN6zM8tlvc9Wa09YRWRXDyaV6a5sKE36H86hGoQMOtlpWYj0//zkdKfvjBhCwyFWZAJcMyGXgjuv3bvfuD579jNvov180chPe7DsBbsnx0JJi9/qiG1RqJ/pRMo9/armHNofXPIj/u9vgKik7J/m251Gpt8RrSexdryzdts1l2QsYVAeqNMCjbLjvKMRm4K2Uxrl89A+BbK7ApIbaZ44Se6vyz1xqBz9kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MW4PR11MB5870.namprd11.prod.outlook.com (2603:10b6:303:187::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7113.20; Fri, 22 Dec 2023 06:53:31 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7113.016; Fri, 22 Dec 2023
 06:53:30 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 0/4] TC phy check cleanup
Thread-Topic: [PATCH v2 0/4] TC phy check cleanup
Thread-Index: AQHaM5IHTB3nSYZexUqrE/yK5PF6brCzgwCAgAFZj7A=
Date: Fri, 22 Dec 2023 06:53:30 +0000
Message-ID: <DM4PR11MB5971B4917DD49F4C42E8C79C8794A@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
 <87y1dnswgo.fsf@intel.com>
In-Reply-To: <87y1dnswgo.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|MW4PR11MB5870:EE_
x-ms-office365-filtering-correlation-id: 599ccbf4-b728-4a17-aaee-08dc02bab544
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dIagiqsqdCEtEnkLbjMGVaaU2P8Ft+6B8B0a/yJ1lUbtPy/WI/U2aHSYS5X4LuiFrJR3d0DLO1U8ykM3AetlAfepLsTduic5c7CIIheM4RZ0Wyj5D1x7MWo+qvcgtY58y5ymXwIuUIxPkNXvSL5EuZpGTgM0OC9UmbecN4R0Xvf8wlCUX0InwWgLsXkvI4MkRybmHDt8uXx1ENrpsIiY8fHW6VlKrNFHjmTzAOAA3Oq0o0HGxNHqjp8lP+I280ruAWMH82dGj13Mf3xtvG/98A1G1+p71qPUFtsDg5MMi5KfwJMCxEgHDFtrfIu7WJU4+pMNYK0OwNUk1B2O5Hrb87jJI5L+AaxIDaDFnSDNtnSA3JnBwYCaBd+a7ojuvoAKMyBWpFX3PJ8hmAkQ9etqgqOBOjlQUdNHxdph0MmwqADDK3XCL8tjsRatx0uQsHTltSZ8cfJWD+XDHRNqIx8dk6dPWUIjk6yjfq7W9Hn674aUvucZ2kVNzIFzIxIHdR9qRre/e31KfrLhvRLxu5Ht01FY2j/JymbcKmC9Lm24YvkohKV1Q+jO1nujOdi1u2TmZPW0mE1x12ZlWCjqwpGGMXCKDHMgvFCW+8vTcyJnOqVCOT877Gfq4bDrlLgXOjhl
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39860400002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(66446008)(52536014)(122000001)(8676002)(8936002)(66946007)(76116006)(66556008)(66476007)(316002)(110136005)(82960400001)(2906002)(41300700001)(33656002)(86362001)(64756008)(38070700009)(38100700002)(5660300002)(26005)(83380400001)(55016003)(478600001)(6506007)(9686003)(53546011)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7KqfpL6dhciU+QMNQZ1JvJWvBT1HBofl5xHLlDYCCueOuSPZ6MUiy7zqy1Q9?=
 =?us-ascii?Q?FoqKugAeh+yqRclg9bfHhjm+wxSqMZUH2nncCYX6weF6QqB1c4y8lvIvaT6p?=
 =?us-ascii?Q?GWoGwfCB4nwjL2xr/29fmcX3R2K2poH9nmdBVzpSlEW9j7iRDcJD7R6Gua+f?=
 =?us-ascii?Q?IlrjmpT/gxoVhHRcxAKZMpEI12zIGHJoQTjPIMt+PknYerlMOUxcIYnhU/e0?=
 =?us-ascii?Q?H+pIMC7YCobGX+1W08cF3hhGP8iUuu42D5urrvXvD2Uo7vrSIj+sDmCakXXO?=
 =?us-ascii?Q?CLA7PDqJOacz3qWaYkpJd7KvL3VHp/WYIZTpE0j+X8I6UV5p5whnei3sz1uR?=
 =?us-ascii?Q?vqRbMF/almVOwK6yUZ2F+3ecceQfauUssQaiS8+rJw8cYLHevzWRpqWojiYh?=
 =?us-ascii?Q?ZJaHOzVLRbNZ1g7VmDIah6B6nrdBexXWRfC6Zh/vGWgjrgPBZ7sibtG1Owut?=
 =?us-ascii?Q?YfgkEHhbBdCEgfyvcQTG5FjNZxBG5OtT0JUCADkLZmJq5QlKLc6EuytnDAnB?=
 =?us-ascii?Q?354Yd9SAiqNcZEVmTXh9tWv2v/Am9Yw1EkAJ8t4nlebDZQTe7dXZzQ+zOHa+?=
 =?us-ascii?Q?vRnB3HRykJ4omIF/CwoYQTsZhiPflxCw/FR2DRv6ZBqQMVUqiuR8c6eIPIxo?=
 =?us-ascii?Q?BwkG4X2m+wJnDrHmDUBjjEszT9xumol+P2r0F0UdTEm8JtfreWlhk1kjSx8j?=
 =?us-ascii?Q?FcTur9tuB5ZNGWPid/EFx3u0mvUJkW7HOwR45iP+8qRtRi4cy/3Y5MBeFkQp?=
 =?us-ascii?Q?wQrM9By+5NLA6Ti1n0t2Hm9s+1lQSIvg1ABPZHl7Pidastaeq1STQT3lgixq?=
 =?us-ascii?Q?CjZ8aPZgeOcpaITpbwa7QTyF0opACnGxr6B11ZswbhYLLfpgyN9BNCuH3nT2?=
 =?us-ascii?Q?o8cFyVtl3ZK1dqxkyLAULAfLqWf60hX9BOaMo5bBIYLeeiVNmZe0qm5ddC8v?=
 =?us-ascii?Q?+/Es29Jd+F33x0lIeNSl4GsS0Rn8cCDKwRMjV4QXkrpY30UXA+IA+aoKBCOP?=
 =?us-ascii?Q?/DyuJAehgrb3hremWnHGwLjs337O1DVd0TCsQATIoUF2BO7E+5CeQCybIzi7?=
 =?us-ascii?Q?PDztTDIGBi6IgxjJIB9EklYiDpRr5Liq4mj6L/PGto9JE3xSlWIFj5YVIXxt?=
 =?us-ascii?Q?/+JOwL3bvRwttB9LNeOtDmxP/Df12fKXyRS7yMVFjLyQnzqOesXzWIoE5B22?=
 =?us-ascii?Q?/Qo6E6p4JbLDxVrBxEVdMujI072g0KwfDuuE2QdfDsOIOF6oYeGpZsDsZDqT?=
 =?us-ascii?Q?Omf3yL/CAi34DL5tJv5ABW6WEMFJh2fUa5EAlkNERjVoAZq3eziLy/phGvP3?=
 =?us-ascii?Q?c2/hjW1JckNqDXLWDZl/owl6dSzW1zkXHqiqifPEnpNrkSmt6JRjdGWS7bwO?=
 =?us-ascii?Q?gN74H3e7JhavrB7PrivLikc4BH3bQDUuRRq/fQllECV0XCFw+ADEIb4/ZWik?=
 =?us-ascii?Q?ZwasGWqvHbjP2srrLd7A2o67kjDqL+VZp2AP2r8z9iC4FpgpdknpKbbBHoSm?=
 =?us-ascii?Q?nUuj55hQY3Pz/U4Aim8OYxXTiCQt7Gpui/arwylh8p2X52qFqsL8YgXA0+RE?=
 =?us-ascii?Q?sN8obux5K3PQaEmeCf0Tx//XSKzMfNZys6AR566b+Iv1Stx+16LXEx2HAn0S?=
 =?us-ascii?Q?+w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 599ccbf4-b728-4a17-aaee-08dc02bab544
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Dec 2023 06:53:30.7834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2S5pnvtfr8oNwLHznFGOiXg5LlnSg72I0k00N98bUkk96WQcm/kzqMJlM4V1QKwUrQepi7hBTlacLea2P2/EvpvqjB8ToNlsxehMHe9Phqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5870
X-OriginatorOrg: intel.com
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

Hi Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, December 21, 2023 2:04 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [PATCH v2 0/4] TC phy check cleanup
>=20
> On Wed, 20 Dec 2023, Radhakrishna Sripada <radhakrishna.sripada@intel.com=
>
> wrote:
> > We are relying on end-less if-else ladders for a type-c phy
> > capabilities check. Though it made sense when platforms supported
> > legacy type-c support, modern platforms rely on the information
> > passed by vbt. This cleanup restricts the if-else ladder to the
> > platforms supporting legacy type-c phys and relies on vbt info
> > for modern client and discrete platforms.
>=20
> This series is moving the vbt handling in the wrong direction.
>=20
> We want to *avoid* new lookups. The idea is that you do the lookup
> *once* when initializing the encoder, and after that you use
> encoder->devdata.
>=20
> If you look at the intel_phy_is_tc() call sites, you'll observe that
> almost all of the places have the encoder (or devdata) already
> available. They get the port from encoder->port, and the phy from
> intel_port_to_phy().
>=20
> So this throws away the information that's already available, and then
> goes to look it up again in the worst possible way.
>=20
> You should convert intel_phy_is_tc() to something like
> intel_encoder_is_tc(), and pass encoder to it instead of phy. Similarly,
> intel_port_to_tc() should be converted to intel_encoder_to_tc().
>=20
> There are a couple of special cases that only have devdata or phy. But
> we can handle the special cases after making the common case
> straightforward.
Common case making a tc check out of encoder sure makes lot of sense
And agreed to you point. The question that arises in the special cases.
For ex. during vbt_defaults init in intel_bios.c, I can only handle for leg=
acy tc ports.

In other cases where only phy info is available, I may have to iterate over=
 all the
drm_encoders to obtain port info and compare it with phy info adding lot of=
 lookup
overhead. Or we may have to use encoder based lookups in all associated loo=
kups like
icl_port_to_ddc_pin etc.

Thoughts?

Radhakrishna(RK) Sripada
>=20
>=20
> BR,
> Jani.
>=20
>=20
> >
> > v2: Move cleanup vbt later to handle safe encoder removal
> >
> > Radhakrishna Sripada (4):
> >   drm/i915: Move intel_bios_driver_remove later
> >   drm/i915: Rename intel_bios_encoder_data_lookup as a port variant
> >   drm/i915: Introduce intel_encoder_phy_data_lookup
> >   drm/i915: Separate tc check for legacy and non legacy tc phys
> >
> >  drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
> >  drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
> >  drivers/gpu/drm/i915/display/intel_bios.c     | 15 +++++++++-
> >  drivers/gpu/drm/i915/display/intel_bios.h     |  5 +++-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
> >  .../drm/i915/display/intel_display_device.h   |  1 +
> >  .../drm/i915/display/intel_display_driver.c   |  4 +--
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
> >  9 files changed, 44 insertions(+), 18 deletions(-)
>=20
> --
> Jani Nikula, Intel
