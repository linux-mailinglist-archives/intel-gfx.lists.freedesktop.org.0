Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F151D3F1D4E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 17:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9935B6E84F;
	Thu, 19 Aug 2021 15:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA9146E84F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 15:49:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10081"; a="196165436"
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="196165436"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2021 08:49:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,335,1620716400"; d="scan'208";a="489712776"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 19 Aug 2021 08:49:43 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 19 Aug 2021 08:49:42 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 19 Aug 2021 08:49:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 19 Aug 2021 08:49:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 19 Aug 2021 08:49:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W4hY3wAYhzjxJATL5VYAH4RaKxTi6LiCmVId0v6CJwZXbTRFmiuFHNRD/LejzGZsgP32wah4/+XYzk5n8kVSswVbhZvPOibeaqym+x5oSdfKOryJrIZCuSNA1EpzS39bg37bghb93a4e0DkXvpqSNjqFzEBA2go1Ld940LdC4OehvZaCg1dReEycYiEzBhfQQu/lFF42jHZFCl2+OyGJkJkz74yN8HtKOx6AjxdtZzLBdu6xjyX+1yJzdR1wzhZiYtQ9WSWI1ctpHni2u27MW4ATof6LIte2jLIJEUAhoMfiYSqUAnjwuDrPdm1ZAXfg5jxaiiAEPYYwm0ELtfdRsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dDqCydjCEKBnXN3+6cu5ivPiXobuUHOqF6yZPzwPVGM=;
 b=cx476ElAAEW1zaqy5657kvadPCWiOI/i3O8R1kbCXFaKK/uEaoDATo1ygk9mH1rtGUAL6N+D4HZJvSbob+wa1shDz4+jweKI7fjrLNk3Z2qDAgXHNLctO9nmzPfiPI25WahnfHxhfaYfDTdqJl9v2PyBK9CZWdy+f007X/gwi3/yd3bDy/6qFXENe2qu8chMnJoF/4WVXgDgckce0mWCbuJmYiVt5aYZEkpABnNyN4BZM8O4ps9oYGoNGbbph3EG6KJRmKtHXcl4vRW7A29mOvjF1GiTt3ySjHvkbGPu8rKESVn1cGtd0dTl5fvAi+oTvOIvAk3shoNdy5FPCngPTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dDqCydjCEKBnXN3+6cu5ivPiXobuUHOqF6yZPzwPVGM=;
 b=rvTWVtDN6zO1c1iX6r14fHaQDHg+OSMRf+dcD+lwWjMpXSRAnE0wyhPB1x/qLVW41ix+kBWOSWL1cvZIFz2iAouN0ttPbabFby5rIwnmiY8P++YHumIpfU4xpynRpnmTPu3qz+CUbfF747/uHj5CANbRct1pvOw6A1WAXLoEwic=
Received: from BL3PR11MB5746.namprd11.prod.outlook.com (2603:10b6:208:353::21)
 by MN2PR11MB3757.namprd11.prod.outlook.com (2603:10b6:208:f3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Thu, 19 Aug
 2021 15:49:39 +0000
Received: from BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::4c20:46b9:9b67:c9ed]) by BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::4c20:46b9:9b67:c9ed%9]) with mapi id 15.20.4436.019; Thu, 19 Aug 2021
 15:49:39 +0000
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH V2 4/5] drm/i915/gt: Initialize unused MOCS
 entries with device specific values
Thread-Index: AQHXklr+fMx7zvXUDUaWi00KogboV6t2stUAgARLCaA=
Date: Thu, 19 Aug 2021 15:49:38 +0000
Message-ID: <BL3PR11MB5746AF580A340B8769057FECFCC09@BL3PR11MB5746.namprd11.prod.outlook.com>
References: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
 <20210816045229.423234-5-ayaz.siddiqui@intel.com>
 <20210816221216.GN1556418@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210816221216.GN1556418@mdroper-desk1.amr.corp.intel.com>
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
x-ms-office365-filtering-correlation-id: 00a36dda-41eb-41bd-ca77-08d96328f3d0
x-ms-traffictypediagnostic: MN2PR11MB3757:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB37578C8A5C394E34B5DC8129FCC09@MN2PR11MB3757.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SpHTdsEeTCoB1A8U4lxFEhOHL/jOp3kJlq6ge+S9CmW4wpyUodhvlbltjAUNTLBv1qrc9iwSjSUxE7EQ1i/j3FMJwUyoBX24KvHI7Ch1uELCihJp88TouhCTrzsHACGW9/hoaR6IjnMmb1FejCjlS4nRrq4PLk1seY2BqRfjtIOWL9bGaKRE1bIN4RlcaxhyHyGxJF6++EfGzLguUmX4Bm7hpH7NuNF12dSqRcnFzdRqrJ5fYHBzdjSYH3mG09BVY800yMxTqmm7Ky8KGYKQekByhTs23nRaKInSM9DpUj8l9GmVL6SdNBSdJdGg/ifiRig1THo6uxMd8qcdofEFpG0LIbABlcrRkJiouZ884atijNHQX+we6wiaDg0Fyw3qCgWs3Me+ST9sLUd30qtmSZzetSIc8HUPx9rmNmlByrJ/crkB+WQbTErRM/6A+7ss3PMuaRztIknO46P3pEKc85dSEaDPt116xg+rxgNj9eUi1a1DBGh92z1WXHD33gzpcQq3e4OBpLeErZAENdttsC78utse7FEtc1TQGZ+GIvaG/oOqpza/Zyhl4Q2WQCL6Q3J1m5Ndw3gT+90RyW8L13oV6b4x0roJOChgVuhl0OhbvJwE6TdG/C3oS1x2tGD6vUp1oALcACzMHosEHRIlBNWrLc1F7Jx5gYVeSLQFXcA9b9iX2iwIyl2aAusLFrJNOYJLrc6c4TDdL9BBGp4ug0ZYvvtgjfF3X06hjcSKD7U=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB5746.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(396003)(366004)(376002)(346002)(33656002)(478600001)(7696005)(6862004)(316002)(6636002)(38100700002)(122000001)(38070700005)(66556008)(76116006)(8936002)(64756008)(9686003)(71200400001)(66446008)(52536014)(66946007)(2906002)(5660300002)(66476007)(83380400001)(4326008)(186003)(86362001)(8676002)(55016002)(26005)(53546011)(6506007)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iO/BUpvUN2e/jXQDfRMV2B0FOybh6WjxRqVpE+lX7LExuHCTBdK3W1CpobFc?=
 =?us-ascii?Q?DYiZ/THrfo5Ihwf3vzXvD8vAD9h6bIg3SQqZo/JeVXbVRApBHCnKkgqEv977?=
 =?us-ascii?Q?P4CC0RXR/mXAk6t20YjqzG0YyVcPonUycKlkil0Jh1NbNqAnDRc8WfsTrckk?=
 =?us-ascii?Q?acitvzvnjQfsoZah3CPwjwqP9ZL1CzMOaWYJWv47BfIKwe9XIn9h9BhMne3U?=
 =?us-ascii?Q?6g5x3ooiKMp5zjaPMh2gVVElET/FN+dDeAfHSTsJu2ciuNOpIuElC0/36ifN?=
 =?us-ascii?Q?r1mvw5wLcc2FuL78gfFfpXX/BsOfp/+ueoJlc3zUpBb4WtoxLqO3oCYLqVZ/?=
 =?us-ascii?Q?ACOTWZyfJ0k3gi+9XhOo2ZP5BJUh5CHybZuQCdmIfxmY7Bl0v1wX6yVeHuD9?=
 =?us-ascii?Q?SwyunjN3ktk0nUWz3+03+fTUg6gQ1438E6q59omxRnEo36troqRS9whzL2hy?=
 =?us-ascii?Q?xovxmbkvqI1OfDQQHZTsW6iPQ+Uu8C6or9E4DfjgyYZZjrSdWgXKSodidCUS?=
 =?us-ascii?Q?SubZUO3tA+G4M1/7UloGWAp9ehPqSA8U4sG5J84/sJZ4s9h2yWmMlHwDppCd?=
 =?us-ascii?Q?QsGKkY1yGz+qRZpRArUcD+COoKhfEme6n+rAzQkD4sE+zmMOOUVhf9Ny/1hN?=
 =?us-ascii?Q?KTTvu9yJzQ1rr2OBO7h7wONo9fl4mgJ9YPj8cN+X7FmtQcelZtjHGTejN7SR?=
 =?us-ascii?Q?QqPoorZl5CUjvBsTX9bPi5sJRXkaEWZ17KNGQbZn3XYW5JKaiH1eFhW4FgJ0?=
 =?us-ascii?Q?962NQWhExxOmCwW+HotdW8GLqnN6SJUuj8aQH/vEKl3ibrO6OJOCgoIxcCr9?=
 =?us-ascii?Q?rsGVjgaDnxYnTUfaZa1or7U8ZOPjLlDgDiam1ntGo+qFp5misKm7emPBnmaN?=
 =?us-ascii?Q?Q0j/Qmfp7b+sVGo6EjC+CL79/wfV0BugcZbygSB1kV0clUIhOJspPC2GexLB?=
 =?us-ascii?Q?mCXLvmvhUMiM2Gmq7tutRAvPWBSz/Lw5sfou8bLZ2aQD9Q34xUx2pUh51bPk?=
 =?us-ascii?Q?KDOqetHFL8HWl6hIsE/oroAJjXGBXQfSgLvO4iw7f3VMlR2+ARq+Ok5m9/8u?=
 =?us-ascii?Q?80EUgzBNcZ25pSB7UtL423WniKfyLqj+61xGuq64RziNxi1LIMTEH5LXD4PO?=
 =?us-ascii?Q?3lsReHDdkcRHjyddWPeAlZnlXOQDyLa50Jpg+KUmQGKmutl5xuwMawl30Kpc?=
 =?us-ascii?Q?hisxqSBWSY0wri8kuKK/dQUj6oH6nETOm8YFhIxNRdFSP1gSXk7Q+iOuBhNt?=
 =?us-ascii?Q?Kl2e+FOX0Q8cn77FYwkeP5ozxd444nFqvvp9e4ov6KcAJpRMhxiE/QbevCi5?=
 =?us-ascii?Q?tnM=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB5746.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00a36dda-41eb-41bd-ca77-08d96328f3d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2021 15:49:38.9397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dpr8iEZe9EBTYSF+DRN0iFlaa0SdSNHPt5C6JyAERtZNFmPW8w4ui/EIDn6v8NuO9PT+0WFqGZIER4oKgHsicg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3757
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2 4/5] drm/i915/gt: Initialize unused MOCS
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
> Sent: Tuesday, August 17, 2021 3:42 AM
> To: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH V2 4/5] drm/i915/gt: Initialize unused MO=
CS
> entries with device specific values
>=20
> On Mon, Aug 16, 2021 at 10:22:28AM +0530, Ayaz A Siddiqui wrote:
> > During to creation mocs table,used field of drm_i915_mocs_entry is
> > being checked, if used field is 0, then it will check values of index
> > 1. All the unspecified indexes of xxx_mocs_table[] will contain
> > control value and l3cc value of index I915_MOCS_PTE if its
> > initialized.
>=20
> I think there might be some words missing in the description here; I'm ha=
ving
> a bit of trouble following what it's saying.  Maybe something like this w=
ould
> be more clear:
>=20
>         Historically we've initialized all undefined/reserved entries in
>         a platform's MOCS table to the contents of table entry #1 (i.e.,
>         I915_MOCS_PTE).
>=20
> >
> > This patch is intended to provide capability to program device
> > specific control value and l3cc value index which can be used for all
> > the unspecified indexes of MOCS table.
>=20
> And maybe for this part
>=20
>         Going forward, we can't assume that table entry #1 will always
>         contain suitable values to use for undefined/reserved table
>         indices.  We'll allow a platform-specific table index to be
>         selected at table initialization time in these cases.
>=20
> We should also make some mention about using this new mechanism to
> select an L3 WB entry for DG1 and all new platforms going forward, but no=
te
> that we can't change our production gen12 platforms (TGL and RKL) since
> that would be an ABI break.
Thanks Matt for suggesting the better commit message,
will take care in next version.=20
>=20
> >
> > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_mocs.c | 38
> > +++++++++++++++-------------
> >  1 file changed, 20 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > index df3c5d550c46a..cf00537ba4acc 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > @@ -23,6 +23,7 @@ struct drm_i915_mocs_table {
> >  	unsigned int n_entries;
> >  	const struct drm_i915_mocs_entry *table;
> >  	u8 uc_index;
> > +	u8 unused_entries_index;
> >  };
> >
> >  struct drm_i915_aux_table {
> > @@ -99,17 +100,23 @@ struct drm_i915_aux_table {
> >   * Entries not part of the following tables are undefined as far as
> >   * userspace is concerned and shouldn't be relied upon.  For Gen < 12
> >   * they will be initialized to PTE. Gen >=3D 12 onwards don't have a
> > setting for
> > - * PTE and will be initialized to an invalid value.
> > + * PTE and will be initialized L3 WB to catch accidental use of
> > + reserved and
> > + * unused mocs indexes.
>=20
> This comment doesn't seem to be quite true for all graphics ver >=3D 12
> platforms; TGL/RKL are still using an I915_MOCS_PTE setting (which is L3
> uncached) since we can't change it now without breaking ABI.  Same for th=
e
> NOTE2 below.

Sure I'll change it to   "Gen12 onward excerpt TGL/RKL".

Regards
-Ayaz

>=20
>=20
> Matt
>=20
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
> > + * NOTE2: For GEN >=3D 12, reserved and unspecified MOCS indices have
> been
> > + *        set to L3 WB. These reserved entries should never be used, t=
hey
> > + *        may be changed to low performant variants with better cohere=
ncy
> > + *        in the future if more entries are needed.
> >   */
> >  #define GEN9_MOCS_ENTRIES \
> >  	MOCS_ENTRY(I915_MOCS_UNCACHED, \
> > @@ -292,17 +299,9 @@ static const struct drm_i915_mocs_entry
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
> > @@ -450,6 +449,7 @@ static unsigned int get_mocs_settings(const struct
> drm_i915_private *i915,
> >  		table->table =3D dg1_mocs_table;
> >  		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
> >  		table->uc_index =3D 1;
> > +		table->unused_entries_index =3D 5;
> >  	} else if (GRAPHICS_VER(i915) >=3D 12) {
> >  		table->size  =3D ARRAY_SIZE(tgl_mocs_table);
> >  		table->table =3D tgl_mocs_table;
> > @@ -500,16 +500,17 @@ static unsigned int get_mocs_settings(const
> > struct drm_i915_private *i915,  }
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
> > +	return table->table[index].control_value;
> >  }
> >
> >  #define for_each_mocs(mocs, t, i) \
> > @@ -550,16 +551,17 @@ static void init_mocs_table(struct
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
