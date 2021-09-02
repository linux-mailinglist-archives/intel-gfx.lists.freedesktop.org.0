Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C693FE954
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 08:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C8E46E454;
	Thu,  2 Sep 2021 06:37:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3ACA6E454
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 06:37:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="199219092"
X-IronPort-AV: E=Sophos;i="5.84,371,1620716400"; d="scan'208";a="199219092"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 23:37:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,371,1620716400"; d="scan'208";a="510825148"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga001.jf.intel.com with ESMTP; 01 Sep 2021 23:37:19 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 1 Sep 2021 23:37:19 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 1 Sep 2021 23:37:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 1 Sep 2021 23:37:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 1 Sep 2021 23:37:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k2ZdVrG+m52lZCq5IV2jZD0/Fu1X8Sdm8FyPQp6qQjOH0uhknw2wUEpFcg4pt7B1uRU3s7QIo7b+rL7YoMFWSAu6bpVaDZAkKYzBMP5YXdf7c4md+NJMxfHJ8EJolDQdrUdpUeIb4Uekm+Cg1V/ybegoxIVJOI6OhBbu2LSkhzVSDLYgp9YZ+Ye6WsTv5eHPDmHMIaKgjY7zfw9bHYWNKifllDfL3BtbWTpQ0pAg0ycHHaxUP8NQ2YKaLt3QHg33NGwkhcPvYKT5LflCsz49Qzm0x/Ch36wdgqf5rK7Eg7/QymR6cAmfMfaMmy5EovhfxqOtSTH0/xpZUy2xr9l2KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=LgkEqm9yoWXhWhdCGNVs3c2EgTaNbjJnfBpPX1fnM1o=;
 b=eZkOzuINbFQGyVAG+o4ZbwAxIJhNVcW1k4L8qHuvMkjTKkYI+65Y8iFDBLl6gYzV1NHN6wXa7oU/SijM1SVYtYYUtqmxCu8rd3Jt1Ns15qjsPeqEiasLBJ64ny4gsn0C3+KAkGHLWBa7mPfBx9ackJYBTfQYniV7hCl9+6JDOGhLXfn6+GN844BBqnmxJSj/4YG+2IpRE9IgQbD6OeFPAfM8QtZ43U4siYqjMipCzN8qn/N2bbj7BDruFs/XtqZV0rWHuNnZETVv5zpusbI6WExI7ThnJghg1GItSXVqmlizuuxusjvu+u3OH5VmnB1teAKDvtkUT+MIp2/Nr6SmOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LgkEqm9yoWXhWhdCGNVs3c2EgTaNbjJnfBpPX1fnM1o=;
 b=hcPHf1q42hxq9NdZocFQpsYpw68oVwpGnOfOlLRy9/ufWg+IvQ+EY0FttLGZzT8zCumfFDEb7KIaErW9fJ4je9+g1aW5cKAjeG8Oc2Tfst0Qix26Qvhv0amDY+Fnx7wRNVjvKcfpdTM1DK1Pfx7+Ia12dTrNIuWBKX+9kKl++c0=
Received: from CH0PR11MB5755.namprd11.prod.outlook.com (2603:10b6:610:103::23)
 by CH2PR11MB4279.namprd11.prod.outlook.com (2603:10b6:610:42::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Thu, 2 Sep
 2021 06:37:16 +0000
Received: from CH0PR11MB5755.namprd11.prod.outlook.com
 ([fe80::459:2b63:852e:f7c8]) by CH0PR11MB5755.namprd11.prod.outlook.com
 ([fe80::459:2b63:852e:f7c8%8]) with mapi id 15.20.4478.019; Thu, 2 Sep 2021
 06:37:16 +0000
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH V3 5/8] drm/i915/gt: Initialize unused MOCS
 entries with device specific values
Thread-Index: AQHXnbu/Lg6lZvcDKkKWRaEJTwXL36uP202AgABu34A=
Date: Thu, 2 Sep 2021 06:37:16 +0000
Message-ID: <CH0PR11MB57554A155EA9226472B8D825FCCE9@CH0PR11MB5755.namprd11.prod.outlook.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
 <20210830162240.3891502-6-ayaz.siddiqui@intel.com>
 <20210901234503.GE461228@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210901234503.GE461228@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48d90330-cb01-4c46-bffc-08d96ddc1b48
x-ms-traffictypediagnostic: CH2PR11MB4279:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR11MB42790F20DCD006418FE7CA84FCCE9@CH2PR11MB4279.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B9oM8q/d93sV1m1Ur8TZKWrT7C8Li5dWTge6rFhl0xhAK8l7DqNXsNZLM1hdXoaBUQy7Hmx9e+62qRevzuWTgdZ8nOMtW0c+LzTrcYNHGpjCr8fOjOR4led48xJeHDgqwgE2u6+pWYzRzeZv2agRkh1ZhmD3vfG7lOXrnvfpOEOtUz4nui3d0VyrUchjDkbIq5uQJGSp6YTRYrp3/MUR/PRjt9GZJSwAe/P+oi4cyx6TIucC/Kc6nIi4/Qy2PTr0YUmhtyexKxMmk6rD3r48NQZPyj3xqPMy1DDAOt9VmwJV2WcSUV3A1L6pW7Ywl5aw0SOQfmKLB2LciaHNri5/cyqTjwuZzW1Y4wOyaYjkurEIkyaMWwsHn3gWBhFrDoYZj/8UcIPt8XBPTwXStEWRx6zwmLWMO14nKbyU1ObbpAmhWo6rhAxzAIpw4SY/Kyh7gCJLK/d6qUqgg9wVhTRmewlsWnrMBJ41pEC36ybGcOapcD0dl0Jerow+G4zD5RM65kNPhSwiBCOuN2QRpMXCNH/otKsR2WQwPPyR7n73ouohPeZVLBtjYC/L3o1fO72sRY1HrDTyc/jYxIM8pgKG4OVHsBVJTpbG0fSyqor7i/fa8gpZeahDlh0Q3MnrQ5N1SAdKgOvelmvzvzMUW1wLfEz19tjkvRMZB3Y58fvRUZl4G92uvVhKb0JtGvwK7jkllTATu1zPilCMgAelNDwARw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5755.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(9686003)(71200400001)(76116006)(186003)(2906002)(55016002)(66446008)(64756008)(4326008)(66476007)(316002)(66556008)(52536014)(66946007)(6862004)(5660300002)(8936002)(7696005)(83380400001)(122000001)(53546011)(478600001)(6636002)(38070700005)(8676002)(86362001)(33656002)(38100700002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xrKM/K7OH7Imp8JlplVg0ZdOBQz0RXiSOOfMHNHVec9NWyU2JwrWTox+0EKE?=
 =?us-ascii?Q?I/lzu8EqKplw8sNOukYsUkrbj49VQMi6wbalqVoVtiu3fk1J6g2oa/qXMdiF?=
 =?us-ascii?Q?HsT83tcCbg14R4rFkglNs5yrCExo4rD2mfZ3p/khEqQA1uMxlgK21ww6LkK7?=
 =?us-ascii?Q?TTGa2ButGekqMFpKr2P7qaIal1ZTPB0n3fOc+HNAR2rN9jpT0Pm0ulGZU5xr?=
 =?us-ascii?Q?/QPd84U65peBmuLNgO2a1m36sEcDr27GyzHFkUVV5deCHpZQqev1XNNyYqrf?=
 =?us-ascii?Q?78M3wCHZqS3O6oy9joFiAuAMx5YXhhIKl9o6GS8st1xwOvUf9duUyEZEthKb?=
 =?us-ascii?Q?zN4NuAjbWl6RP+6SSU+TnAsMaQNArKpUV55doBZV55UBf1+5cXg7i9nkYx0i?=
 =?us-ascii?Q?t4tYcurYNwgsAQqhmhhHM8XR5GJ8E1GjKIbjU1hhRh9m0pj61ro8sCRSpzKN?=
 =?us-ascii?Q?NiQCgsCEkj/QCk9ROQohqonv9R7Rpd8GL7xgIT+TTahDnhxMNFo4maFsZbkK?=
 =?us-ascii?Q?HnvLFOhWtJPLGJvwtMKwWa5NrxdKOD7IfxKWvCoQlgrOUWxEfSopFkZvVHpE?=
 =?us-ascii?Q?UdGyAL00XNo9IV72kHuNAqUG1dhcpY+BeJEO5jqbj7ahPIub+fDios0rMfjx?=
 =?us-ascii?Q?iJ6E2kC5UsZgIZJIMkXJJ0H37OwN9pr+uSIsmEyiXN2V/mAoGV3b3jrzj7ZR?=
 =?us-ascii?Q?cgdmHGM1if3NDlO8gDhs4cJpD0fIMP78ZXUlJsF0KbeIY12W0nGXIlYYysQq?=
 =?us-ascii?Q?xSBaCBIvGX1Z/dx+T6a4tv/0AUZFKC1jDPYXRT63vNs7/+01SeGwlzwZxP6O?=
 =?us-ascii?Q?QXpXDh4qe9kH2mQLAzqp7wO+2aeVCPoUAcR0RuE4AGbQ6u1o7cqh3D7x4Tb4?=
 =?us-ascii?Q?iGSMn7u7HlTs5Hxk0B6xe5QUaVuhTD8X7Po+fRHS5qrCOmv1YtSNgTLchoLp?=
 =?us-ascii?Q?PBnPrsIWFZSlALDDY0x4Ait3S8N0qPxjHy6c6ylH+Y7rlOE9ZHSNQsxVezNT?=
 =?us-ascii?Q?FfB12w2OZiGfWG21cA51eYwD2eSPNZfelLJtrD1iusaFQ/lFtWUVupM/vZUR?=
 =?us-ascii?Q?Kz1yzEMHumQ6mtMQceXNy8NDtOtMSypelr1AYb8ARvhB5C2WXQ0vv6I6YEi9?=
 =?us-ascii?Q?BArckh4Dawtka2PTe1gscaDj/3AMsCCrWvM/a2/3GIwTM4TVUXQ2GRII02Kt?=
 =?us-ascii?Q?VDyezZBl1OMn90a/WJvzB6jrpXvhn8hbaUpnVzGuvXUTn4H/4dmNgYdi4Y2K?=
 =?us-ascii?Q?vpvLZtF/FxFW2s0QYJdaM57/5jjmie3WbzVSKR6EdC6XvMnjLUAX0s9XibPB?=
 =?us-ascii?Q?NbNTEB3SsHYTcUrT6A4Z7LK7B8yx8GGfZ4+KgPC9NrfW558FMJuOuh5vbUSZ?=
 =?us-ascii?Q?RjcaIAntdSXivFm3nNfI7twYYmHl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5755.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48d90330-cb01-4c46-bffc-08d96ddc1b48
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2021 06:37:16.6725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oRi5woLgm1dRUaP9dUCipDr/k/pNwMWFLHV4wYtLsnLQN4/nRudoypPIU01OVZ+NOCT0ItUh/Wzgs8NQIXdAqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3 5/8] drm/i915/gt: Initialize unused MOCS
 entries with device specific values
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, September 2, 2021 5:15 AM
> To: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH V3 5/8] drm/i915/gt: Initialize unused MO=
CS
> entries with device specific values
>=20
> On Mon, Aug 30, 2021 at 09:52:37PM +0530, Ayaz A Siddiqui wrote:
> > Historically we've initialized all undefined/reserved entries in a
> > platform's MOCS table to the contents of table entry #1 (i.e.,
> > I915_MOCS_PTE).
> > Going forward, we can't assume that table entry #1 will always contain
> > suitable values to use for undefined/reserved table indices. We'll
> > allow a platform-specific table index to be selected at table
> > initialization time in these cases.
> >
> > This new mechanism to select L3 WB entry will be applicable for all
> > the Gen12+ platforms except TGL and RKL.
> >
> > Since TGL and RLK are already in production so their mocs settings are
> > intact to avoid ABI break.
> >
> > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_mocs.c | 41
> > +++++++++++++++-------------
> >  1 file changed, 22 insertions(+), 19 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > index 82eafa8d22453..a97cc08e5a395 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > @@ -25,6 +25,7 @@ struct drm_i915_mocs_table {
> >  	unsigned int n_entries;
> >  	const struct drm_i915_mocs_entry *table;
> >  	u8 uc_index;
> > +	u8 unused_entries_index;
> >  };
> >
> >  enum register_type {
> > @@ -113,18 +114,25 @@ struct drm_i915_aux_table {
> >   *
> >   * Entries not part of the following tables are undefined as far as
> >   * userspace is concerned and shouldn't be relied upon.  For Gen < 12
> > - * they will be initialized to PTE. Gen >=3D 12 onwards don't have a
> > setting for
> > - * PTE and will be initialized to an invalid value.
> > + * they will be initialized to PTE. Gen >=3D 12 don't have a setting
> > + for
> > + * PTE and those platforms except TGL/RKL will be initialized L3 WB
> > + to
> > + * catch accidental use of reserved and unused mocs indexes.
> >   *
> >   * The last few entries are reserved by the hardware. For ICL+ they
> >   * should be initialized according to bspec and never used, for older
> >   * platforms they should never be written to.
> >   *
> > - * NOTE: These tables are part of bspec and defined as part of
> > hardware
> > + * NOTE1: These tables are part of bspec and defined as part of
> > + hardware
> >   *       interface for ICL+. For older platforms, they are part of ker=
nel
> >   *       ABI. It is expected that, for specific hardware platform, exi=
sting
> >   *       entries will remain constant and the table will only be updat=
ed by
> >   *       adding new entries, filling unused positions.
> > + *
> > + * NOTE2: For GEN >=3D 12 except TGL and RKL, reserved and unspecified
> MOCS
> > + *       indices have been set to L3 WB. These reserved entries should=
 never
> > + *       be used, they may be changed to low performant variants with
> better
> > + *       coherency in the future if more entries are needed.
> > + *       For TGL/RKL, all the unspecified MOCS indexes are mapped to L=
3 UC.
> >   */
> >  #define GEN9_MOCS_ENTRIES \
> >  	MOCS_ENTRY(I915_MOCS_UNCACHED, \
> > @@ -307,17 +315,9 @@ static const struct drm_i915_mocs_entry
> > icl_mocs_table[] =3D {  };
> >
> >  static const struct drm_i915_mocs_entry dg1_mocs_table[] =3D {
> > -	/* Error */
> > -	MOCS_ENTRY(0, 0, L3_0_DIRECT),
> >
> >  	/* UC */
> >  	MOCS_ENTRY(1, 0, L3_1_UC),
> > -
> > -	/* Reserved */
> > -	MOCS_ENTRY(2, 0, L3_0_DIRECT),
> > -	MOCS_ENTRY(3, 0, L3_0_DIRECT),
> > -	MOCS_ENTRY(4, 0, L3_0_DIRECT),
> > -
> >  	/* WB - L3 */
> >  	MOCS_ENTRY(5, 0, L3_3_WB),
> >  	/* WB - L3 50% */
> > @@ -469,6 +469,7 @@ static unsigned int get_mocs_settings(const struct
> drm_i915_private *i915,
> >  		table->table =3D dg1_mocs_table;
> >  		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
> >  		table->uc_index =3D 1;
> > +		table->unused_entries_index =3D 5;
> >  	} else if (GRAPHICS_VER(i915) >=3D 12) {
> >  		table->size  =3D ARRAY_SIZE(tgl_mocs_table);
> >  		table->table =3D tgl_mocs_table;
>=20
> Should we add
>=20
>         table->unused_entries_index =3D 1;
>=20
> to the rest of the platforms here since that's what we're doing in
> get_entry_l3cc() anyway?
>=20
> Also I think we can rely on that to avoid the need to add a new MOCS tabl=
e
> for ADL in the next patch; we can just use the same table but set a diffe=
rent
> unused_entries_index.  E.g.,
>=20
>         } else if (IS_TIGERLAKE(i915) || IS_ROCKETLAKE(i915)) {
>                 ...
>                 /* UC: Can't be changed now for ABI reasons */
>                 table->unused_entries_index =3D 1;
>         } else if (GRAPHICS_VER(i915) >=3D 12) {
>                 ...
>                 /* L3 */
>                 table->unused_entries_index =3D 2;
>         } else if (GRAPHICS_VER(i915) =3D=3D 11) {
>                 ...
>                 table->unused_entries_index =3D 1;
>         ...
>=20
	} else if (GRAPHICS_VER(i915) >=3D 12) {
		table->size  =3D ARRAY_SIZE(tgl_mocs_table);
		table->table =3D tgl_mocs_table;
		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
		table->uc_index =3D 3;
		if (!IS_TIGERLAKE(i915) || !IS_ROCKETLAKE(i915))
			table->unused_entries_index =3D 2;
	}
I 'm thinking to add like this so that there is no change for gen11/Gen9  a=
nd TGL/RKL flow.
>=20
> > @@ -600,16 +601,17 @@ int apply_mocs_aux_regs_ctx(struct
> i915_request
> > *rq)  }
> >
> >  /*
> > - * Get control_value from MOCS entry taking into account when it's not
> used:
> > - * I915_MOCS_PTE's value is returned in this case.
> > + * Get control_value from MOCS entry taking into account when it's
> > + not used
> > + * then if unused_entries_index is non-zero then its value will be
> > + returned
> > + * otherwise I915_MOCS_PTE's value is returned in this case.
> >   */
> >  static u32 get_entry_control(const struct drm_i915_mocs_table *table,
> >  			     unsigned int index)
> >  {
> >  	if (index < table->size && table->table[index].used)
> >  		return table->table[index].control_value;
> > -
> > -	return table->table[I915_MOCS_PTE].control_value;
> > +	index =3D table->unused_entries_index ? : I915_MOCS_PTE;
>=20
> As noted above, I'd rather see us do this right in the MOCS settings setu=
p.
> Then we'd probably just want a
> drm_WARN_ON(!table->unused_entries_index) to make sure we don't
> forget to explicitly set it for any platforms.
If we have to add a warn on for table->unused_entries_index,
The we should add unused_entries_index when we should add this for all tabl=
e
and change code like this=20
-	return table->table[I915_MOCS_PTE].control_value;
+	return table->table[table->unused_entries_index].control_value;

What ever you suggest I'll take care
-Ayaz

> >  }
> >
> >  #define for_each_mocs(mocs, t, i) \
> > @@ -650,16 +652,17 @@ static void init_mocs_table(struct
> > intel_engine_cs *engine,  }
> >
> >  /*
> > - * Get l3cc_value from MOCS entry taking into account when it's not us=
ed:
> > - * I915_MOCS_PTE's value is returned in this case.
> > + * Get l3cc_value from MOCS entry taking into account when it's not
> > + used
> > + * then if unused_entries_index is not zero then its value will be
> > + returned
> > + * otherwise I915_MOCS_PTE's value is returned in this case.
> >   */
> >  static u16 get_entry_l3cc(const struct drm_i915_mocs_table *table,
> >  			  unsigned int index)
> >  {
> >  	if (index < table->size && table->table[index].used)
> >  		return table->table[index].l3cc_value;
> > -
> > -	return table->table[I915_MOCS_PTE].l3cc_value;
> > +	index =3D table->unused_entries_index ? : I915_MOCS_PTE;
>=20
> Ditto.
>=20
>=20
>=20
> Matt
>=20
> > +	return table->table[index].l3cc_value;
> >  }
> >
> >  static u32 l3cc_combine(u16 low, u16 high)
> > --
> > 2.26.2
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
