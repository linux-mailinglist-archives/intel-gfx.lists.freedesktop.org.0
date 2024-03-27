Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B904D88D547
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 05:02:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DB810E7E3;
	Wed, 27 Mar 2024 04:02:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gmQ0LIb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 886F710E7E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 04:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711512142; x=1743048142;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=N2zJfTjgKZGRY1OR34kzSP9mjuRPw/GzXJfJmVyaNVw=;
 b=gmQ0LIb3Nd8cjGXJHeRDs709boHsrgfdmzzek8lnhtnGkwD1K2qVtrAS
 pAAhZEoVK8ztHdFix4OaRbtszXExR0m7i6vZf58LK2c5RZG9/r7BlrpgD
 Gl1Fh4ndACCiqugEf7HkI9PBWPMXEM9HXyjRM9BNNyUcBxFwyW8zKzCcf
 nSmzEmRZl0AYJfE+5z9I1MW14d5HFGN+Du1PTQiOSRuLbFgiWLHnjpoAL
 LSKOQ4acJ0iRToxrExnDRUBvtgwKe29tRP6gPvy4hMKbgWAtqOzreqi8k
 oDLMUmdCin5DiCzFIAXMwKfeCGCW+KbJA0tUyj24yQtUeaA9E4Pz85b1R w==;
X-CSE-ConnectionGUID: 1ELiqMA5Qqe8UD7M85OKIA==
X-CSE-MsgGUID: /mBaEXsbQ/Ol9bsZy6lVnA==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6450504"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6450504"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 21:02:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="16149747"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Mar 2024 21:02:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 26 Mar 2024 21:02:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 26 Mar 2024 21:02:14 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 26 Mar 2024 21:02:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JtHBXtHCJVK9gCusfQgUqR2EpmnFUONAdDXqJ1k5P34LARtAUNnqLFM1FTlLOZTqu/o0flbejfutoqS2Uo1gSSbZsKVNrMWRFmU8vBGDj9o6PScH5hBzQbClweaoay9SVtXA0c8q5glFc7UgvNRw6fFTRDgtyVa6uQ+yQJ0pfXU+cXbKBoBbkXptAaRMKgSfYqtv28E2+Cf9+T+4wHLJeGCN/UpVLPMHNNwQQQaRRrvb7nb+cM2HyKznDpinGpLgbNKoPYgAvZ8i193R6Ohnmz/zov9qRJKMYckJ0gsmyUZzZrGopIAG7M9t2U1bGs8eRdoZZt60HZ8PZA7Tgl12xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mID0o/pEkItl4pBTot6cbLBj4fsHCsMMbJi+72fqsdw=;
 b=B80uEK/GefjtDd8IrBYHNJ5dX8bOXHtygGXRf4Y2Lz5i/aohijh2M08+vXng7Y3+8ZNnE3jDi0YC5/aGd4STxO083bleAhnwifNZVZmRNt69REmoehhPFonU7lg0GYbkh+tXjVnOEeHPHggWg+4KPWf/4d4O3RP0d5l/JQB7dFQUuAtBxBFOyIvr82ISH1/Lk2YP9bwaGxt5ebWc3yKxtY2woRmCnrERraHsHWSpE6mfcs26YA7aAVNZJGmwQjo3qE0Y8DMZ7RkS7+54Fp3xdTDqSGTeTUNuPuFHD1mWoIQe/Qb5IEsaB2EqPPACSDykDzPwEDFw8o1wJ/lxWGnOlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SN7PR11MB8026.namprd11.prod.outlook.com (2603:10b6:806:2dd::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.32; Wed, 27 Mar
 2024 04:02:08 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%6]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 04:02:08 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Initalizalize capability variables
Thread-Topic: [PATCH] drm/i915/display: Initalizalize capability variables
Thread-Index: AQHafz0Dm7KJo1aaaUKgVamndeTCubFJ1TnAgAEcNYCAAAYFkA==
Date: Wed, 27 Mar 2024 04:02:08 +0000
Message-ID: <SJ1PR11MB6129A43CCB4BC98C701CC6C2B9342@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240326051454.193181-2-suraj.kandpal@intel.com>
 <SJ1PR11MB61291435D7434453169B69C8B9352@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SN7PR11MB675089A18EC04F96917196FBE3342@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB675089A18EC04F96917196FBE3342@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SN7PR11MB8026:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BUKUTvZv5v35PCQSyzVsAiJMHiqHDKjOCiLdYazaNrLrqRZ8DN5J/Uch5u1UjLiw+00YZj0C7oMQdmdSDvFNe6sgtyxHZCZmLv5fqqhfZ31Dhejz4cWH6ePAEKoQnyJvJGzHA6VyasjYunmp9Zn/qI4DKycyWvR3+ELltotR/1Lr/gVkVO3wfoDU9A8LfxUrp/J5cwv5V/pEG2xZWI8NxFwOVW9u6j/045qPrBFx8RGT1IZYa/YQ6Qhk1wMxt4vrlqbKvJrlcYLfLVTJOyV1O7EM82wfzu33jQUB+JGl2/R/3fj6UG4hs2ZhQEFrUkPGoPw9y24QkUhOIe+uo3tXHQOC/+KvhOHKLxcRRDZz5Fd2Z6/k/8Va1ci+a9QdMVvidEEVLpDsXL3C1nZnzvclXaEopyKbVhW63hdbrvZvxFOtduyvSqEjRgzif65etDq4i3lCyoCjtcDUxeU3zh5cUhn9iA2fKsTwCp8S2DA7qoEv/8bGNzHhTfkg3dyqcKIkj7O/tL9g94tLWhSTcmYsTWhQh6UFta6gq0SUwn0i9eUNjsd6TvbSCHFzimf6GkmpxHraGxcEf2rBF0UUnoA/1QT1kdkydG+xgUHD62uqfPc8+AkunV8NsJ5HyLRsZ08rB6RHZerOAOPLrfRXUX7dcZnRfqoNeZjqqQLR5xwGwuk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ISY47V9SlNXrWN+RFQ86yhzyTlckxSlYtgW/5FmrTprkc5o7D/bt8sDhYKEJ?=
 =?us-ascii?Q?BEy6fIOCTqDPJLs6ujxykxO80P60vDTmdROaCItf0Xs3O+PnrR8gMBoVhHbD?=
 =?us-ascii?Q?cbEcZoUfs8xwGfYEkZL9HgN2fUAX6PmauzRyQgvVfsDf5FeLlIVPagbqkdYa?=
 =?us-ascii?Q?+OCWJVcXOSCVqeC0XF9wQ9Yyd5ooTBhMfOU5YKTPi6lectC5n28t2oRCBI+e?=
 =?us-ascii?Q?RPPS3MnY23KnlwJGoH53IAo5HrozbHwqNhgs61z10eQxVeg1U6MmxV2DTFRJ?=
 =?us-ascii?Q?Vk7UaDXHoepWrZyOqyNC5w3k/8+vOdI3omTyOSNmUkGKSOjmSVF6TVGM/odl?=
 =?us-ascii?Q?vS1rsjWfxpRxtr+H0sfSmydGNuTBB3+0VMN8ZhhV5oMm5lBRN3GmvFlclPKD?=
 =?us-ascii?Q?dj2zJfgT2RsnJJn3OtkMR+IE0+JPBarbLS6tMdzR46+yuIlb2mtCGypvT9Wl?=
 =?us-ascii?Q?E53ZyeAkoHxepUa0yBCeVKPX7XOkCBXnghK2zibJAL/ISrncKhbIH89h1IV7?=
 =?us-ascii?Q?LSLDx0b4CZReMhh3kBo4ADRXJaAWc9Yj/4CbWllXMdxw73WueYhzukowaVDv?=
 =?us-ascii?Q?gtPn2oVxbNvXSeXjOs9nddbHDobRBbHvOMOt/MDeh+6SBfm+vCVBhyhQC9cQ?=
 =?us-ascii?Q?zqZ49M9jTijGij5J9HgT5e5Iw1M7wMq6zoqmp0K07MP0GEedl4Gl1Dk6GhfH?=
 =?us-ascii?Q?J0j1618qp8RJUs4wQ+Xly0TnaMECMRFfhevJgQJeix5r0tZTC7HJYKEEwhkF?=
 =?us-ascii?Q?isO+YOdii/QE2nipJ88KlkjyJXwaCnZHVE2yCBRcP3PINp5CTAlWWyhvkjWu?=
 =?us-ascii?Q?IHQmKCXlZBVNsO6gfX3mIWJbePq84XSlp65B7g9sibU3V+PMdlQkEd9ORMXa?=
 =?us-ascii?Q?S+7oOdGQtBnRc5eUUhZSFOuaeAgmtLjx+kuXEdfSdcXmj+6rCumMRllIj8a4?=
 =?us-ascii?Q?jRYbx04fhBPjYaujc4RpYlVvg8narqfi4INfU2HDHsuh8qXEDqCfufgmzzA2?=
 =?us-ascii?Q?jn9o4DhAPiGcoP2h60pLUlDfji/geY9NrbIVb51PCZC5vw2JDvdVYjCU429C?=
 =?us-ascii?Q?v59eD77t+UIBNNLOgu2BlOI3+s6QqxE9UfRueS/O7P3ne0Y0UiVUzm4/mauT?=
 =?us-ascii?Q?VNmnUUdmjZTdU3k4RDlQu4CKImBQKczSKkxRbpEYDtcBDvtlG0K9VxRvEvjd?=
 =?us-ascii?Q?QBX+lyt1HLfmboO3hhIckcVzVyYzwH4y5MpMa+ydnb49ZRQGcfzWDGyyGIhf?=
 =?us-ascii?Q?xKQLOTc90NUlTRQ73Cc2L6MQ1OHbahFD0goRm4oO1UXZvkQMZtFO6Om7acYe?=
 =?us-ascii?Q?SRazpYH9Q8/Sgz/UG7EswD8vkjPn308+RBFatYasxd/jujosVLX2CjlNdHhs?=
 =?us-ascii?Q?JqiT5A5ITigLLBPtfYZqXkYz/0U3F3FoHgiumlHpf8VhPUQJTikLBuXW5LXf?=
 =?us-ascii?Q?Ch1cQ1qWgy0hOaK/dR3MMbmZ8o8QQY2SFnLVyqdqQcao3tpalfrPkwDawOcb?=
 =?us-ascii?Q?IGK7t4fsMuynJYTCKZMuGdiKdRFqTpayHTNta3BvWendVR7DJ30l5P0S9oJI?=
 =?us-ascii?Q?hj9QRAcYM/WDuPVArm/UB/tATZIUsdEGy4y97xbx22u9POByuQka/50BEJo+?=
 =?us-ascii?Q?BA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2a1a5cd-2a73-41f2-2595-08dc4e12ac04
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2024 04:02:08.1501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0WhrxI3Ye6yCTo8inQdIcVMC3TL2aFgZmjAHjeKbIQebScE1fwWIdHtdsK25zSqg08k+DfmjQasbvNoZtCNuQhvf+O+rTMjE4aqrJyp3ozw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8026
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



> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, March 27, 2024 9:06 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/display: Initalizalize capability variables
>=20
> > Hello Suraj,
> >
> > > -----Original Message-----
> > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Sent: Tuesday, March 26, 2024 10:45 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>;
> > > Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Subject: [PATCH] drm/i915/display: Initalizalize capability
> > > variables
> >
> > Typo: Initialize
> >
>=20
> Sure will fix
>=20
> > > Initialize HDCP capability variables to false to avoid UBSAN warning
> > > in boolean value.
> > >
> >
> > I can see a case where hdcp_cap remains unassigned in case
> > intel_dp_hdcp_get_remote_capability() returns without assigning it a va=
lue.
> >
> > Is that intended/expected?
> >
>=20
> That is not intentional but this patch makes sure hdcp_capable will be fa=
lse
> when this function gets called.
>=20

This patch makes sense for sure but what I am getting at is if UBSAN is rev=
ealing a bug in our code.

intel_dp_hdcp_get_remote_capability() returns if _intel_dp_hdcp2_get_capabi=
lity() fails. In that case we never check for hdcp 1.4 capability.
If a remote sink can be hdcp 1.4 capable but not hdcp 2 capable, this logic=
 is problematic.

Regards

Chaitanya

> Regards,
> Suraj Kandpal
>=20
> > Regards
> >
> > Chaitanya
> >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > index b99c024b0934..95d14dab089e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > > @@ -191,7 +191,7 @@ static void intel_hdcp_info(struct seq_file *m,
> > >  			    struct intel_connector *intel_connector,
> > >  			    bool remote_req)
> > >  {
> > > -	bool hdcp_cap, hdcp2_cap;
> > > +	bool hdcp_cap =3D false, hdcp2_cap =3D false;
> > >
> > >  	if (!intel_connector->hdcp.shim) {
> > >  		seq_puts(m, "No Connector Support");
> > > --
> > > 2.43.2

