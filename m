Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8799B23B2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 04:51:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D51210E073;
	Mon, 28 Oct 2024 03:51:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lv9or21e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE3E310E073;
 Mon, 28 Oct 2024 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730087486; x=1761623486;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F440gCBRI1+2+SlSWRsElq1DL9C4gljtxs0NqKZdxIg=;
 b=lv9or21esxl17sXUS3mb9EOB+2mTqWYekOh7g0LLUfBBMkroeTD6HE3k
 0NlUdDqztipfhvWtv4Bx2IU97FVOwAc5VXvBFbaPQ819DL0vjB1bBW555
 W5xmQz++GxtsbVGibRE1uJAGulo5Ux/7xKYNWzVEHCPmPTne+l1y1WnTf
 1bw0/bV6TGjQql4w6RBVlWKau3axyfEVvv01ido6M4jgMf5QRZUgIDZar
 35b15lBAyp8FAb75a8jFxGFxMyAY1ahhTb7zIwsrJjCmwQVoDLQHS99SJ
 4ajYtDaj8mn2x9VXafDdaNtl8UVyYzIY5aAgKqu6XD2MasvkMt7B2/jed g==;
X-CSE-ConnectionGUID: 1FBuJgZ/QyGhWlNNqClcBA==
X-CSE-MsgGUID: WfGM6td8Rz6xJK3qhM/F+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="41042356"
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="41042356"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 20:51:25 -0700
X-CSE-ConnectionGUID: nFALeN2GRPSQxcAXB5r8EA==
X-CSE-MsgGUID: DybhY3MDSl+04vBzp7cBZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="112313386"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2024 20:51:25 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 27 Oct 2024 20:51:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 27 Oct 2024 20:51:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 27 Oct 2024 20:51:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ywMAFhAdZpksaHilolgPi4hcA1J18Wg135cINUsQ/8xgKdEEFAC1ydwRF0V3xdfCGxDkghesZOakqKVcEuXJ3JaSg1KlSWLX39YyU+ZytmlVUGwebhXBsgKQOQrva13bWxIiF1az7gDKc9qtyAgRT0SJ2TrPnZfkOHky8j5L2m/LwFYRrzDP49U6KzVUgq+hx4jXhVYnOPTyqF+QZvx3C1t5QLqZzPHxgEDiKzRo4Lvcqkt0S66dqIa1Txgl9Maf5Ar8IflRnPIGiSXBJaaCItoVCppo9QSwBWN330tSXh65THKWJbhycnTe/Ta+VeA35M3cgXXyEe2tmn5uZdZi7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BFYTj4Q/H/9FVIafEcrYsnDi70yyiuUprp8zU92gG6E=;
 b=xXnm99oMU+hSWk3m8w6JAzlhq30KK/nivdruoFUikx3iiepduMTU9LhfPIQ5VVqIP4BMKmnCsCMIh9vM9muQKfwcrifsH1IHWeobz3yOUINSML3wiLBsgSdJKQnK2thaMJJxumehMdjq5b4+p2OGTH0WgM4G9q4wBTIT23f2br2a3UeGH5acn0xRN4e0WfBkuHfW0RKaG8ZxwkP91b/gWZuuUs1rSgxEUnrdbxv/bUrr3sEgWlDjw4N7/Ygkvo+8pfdcrmM9SEG2HHz5sGournWlXb7lu/7TOiCRDWawU8OHpxPvSU11zNbjCRq4NM3gD7b/53pi+DbeDdxpCHEjSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4888.namprd11.prod.outlook.com (2603:10b6:510:32::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 03:51:14 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.014; Mon, 28 Oct 2024
 03:51:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 3/5] drm/i915/psr: Increase psr size limits for Xe2
Thread-Topic: [PATCH 3/5] drm/i915/psr: Increase psr size limits for Xe2
Thread-Index: AQHbJqNpPfmY220ckEewB8URHGiWxLKYBZWAgAOFq8A=
Date: Mon, 28 Oct 2024 03:51:14 +0000
Message-ID: <SN7PR11MB67503EE31C965BAA14F37110E34A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
 <20241025060136.9884-4-suraj.kandpal@intel.com>
 <20241025220123.GU5725@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241025220123.GU5725@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: jouni.hogander@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4888:EE_
x-ms-office365-filtering-correlation-id: ee47d939-7ff7-49fd-6b0a-08dcf703c540
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?MCkPCUsc+0rrnXV7c15OUH0fSZkogUsn/LzDRFff0IA2CQhTijaFhuN//4/i?=
 =?us-ascii?Q?NxtusD+nEisWgBCm0LCDmwNyGPruVIgNLo8UGaCuPLv08CgRm9vnt8/KCl0l?=
 =?us-ascii?Q?wGN/QQpBKv+BbXQ2hENpSv0cXbFmkFkoadAo06KTlgynciAmEDKenfkgmibS?=
 =?us-ascii?Q?dx34ibLl81IK8yCJDBlcbWUYsPvqEH9HiRshXxWxt3z2CKZHYslweGiYZucF?=
 =?us-ascii?Q?Y20SUnjhcRkumY188w5VOlFsPek2ZlY2SDAmOzqTE6IA5MdBj0c7PBMfQKRD?=
 =?us-ascii?Q?/IpnOlUn6T0KYMAU8xZchqHDwdzyrH4rTNdpebrbO1BCmbUz2UGiX1NHkBDj?=
 =?us-ascii?Q?IFDoQEXOCmoJYKYRzjrluMLNouuFoP+tIkP5oFG5WNFLb5s+RNVmiUYMs9nY?=
 =?us-ascii?Q?2fo1QfNMqSqYLcvqzq2RbaDdQioA9qkgCEpWQEBL3CCSPYx83153BZ+SmnvV?=
 =?us-ascii?Q?4fU4Fgk+4QjMkiul1YWFlHMcoMv5lrNnXTQDNIgwum9WS34G1u6z/ZJPOwvI?=
 =?us-ascii?Q?k1yj4EVt5ADj2LaO2yytUPNJPOB9MKZqe0l8nBb0XRDkzKgpfNfsgtl7GFP/?=
 =?us-ascii?Q?wk6EAmAQ/viCC3lcPmRDqrT77Dm6Aqd3LRidyPkRa/PCYMkfB4C0w5UD31UY?=
 =?us-ascii?Q?NEhDiEABDy3f3NOMyNn0cmXQEFyLCBtaUBRqlhVmd8SCniqz3Kvu/hqTL7N4?=
 =?us-ascii?Q?THagb+fFtwsO6FGp6PG4+nDU79FtoM6PFfT/Re1fjjf6qibQIGU0SRGO2RYz?=
 =?us-ascii?Q?NMtd+D+6ImWHgT5j6pxmk4vOYhkO/prDNw0CpQKpReDraKE/u/oEe/tB56h2?=
 =?us-ascii?Q?ct8HnHoavHvVXgVLnJHq9Z8coN1nQrx7serb9k0qQDUrdcXOKylBUdjUIBNW?=
 =?us-ascii?Q?YeVefjjO1XgRv2TsndmVKkvS6deXrptewPNJcdfojfVU9BADfTsBwC909qII?=
 =?us-ascii?Q?qbACM7odT1o92DiG1hjB79upP/Qjqgw3d09z1P2NtylzR6+p5dZrbdD3/Bf6?=
 =?us-ascii?Q?TorWnAtYE/yJ1QNAPl810ood2m20VUfDxrgQyROKqyCmhOVuOYL/e68jEBuw?=
 =?us-ascii?Q?Y5BESRrn0qeERsOv6Q5NxiykC+dVYGWh6Wxh8YUJeig2EOKLBLTSyHYLijqf?=
 =?us-ascii?Q?ccH/orUdizqaUPXeryAEQ8jv/l2PI8YuCb5cltiiDTUBsN4yIJfVb3qnhAuD?=
 =?us-ascii?Q?dESb6TQTNzOaBVRFj1hdrpetm6LWoJN8vg+MDSiq57ddrXrms6AqVJqewUEb?=
 =?us-ascii?Q?BEOv+EByMif1LohZQRN9zpmo5obOJqg57RE9KvVvQbjm3Aba73l+K38mRgr/?=
 =?us-ascii?Q?xI23GoMB+YL0tp4XC4KIc0OtrKaJquOSLAr3HDCQGDDZIGrJbFv3WTrCskT4?=
 =?us-ascii?Q?hLenfTE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i8e6U5Ym97py0Wg9gjzacY4blaOX4ZhaDbQnRuDlqgj/n4TrcvzgQmqd8ckO?=
 =?us-ascii?Q?xAELimW4xGJeO3YXqbV6Jd4DuBCnyGpxuYe/1Y9wI+gnqFknmkqhIblhIv0M?=
 =?us-ascii?Q?Cr44oEGfflpZyMcHU9Vc9Z0e6OWetJHe21okzzTy1BK+tgAgLioXi+Hdr/o+?=
 =?us-ascii?Q?tZOGoyOzjyFVUyitFc1g1sX+52gu7FNKvGUN8dgu92k6vgUIWS9FY5w/n72M?=
 =?us-ascii?Q?FxlhhPYud1wHvCy4S4tImf7xLvLrNmzuUQS9VTm/NEtzPZ8cApvmPoX6cgv3?=
 =?us-ascii?Q?TfCBqxwW8TTOYsxICogogvh4GBaguHSHeL7+LSCel9uFY+7irUWZfuhK1gW9?=
 =?us-ascii?Q?L1RI2epsklO45btBpsp9QDYRvCh5ps5BkPfk4gto6I1rJhMc9tDKCZQ0GoTe?=
 =?us-ascii?Q?pu1jmsHCczc2JUxEOX/KINNoigSneUv6cnOgZZ4sDnGpf6tJ9UcUTEnN4GNQ?=
 =?us-ascii?Q?QNRo2tmagjlvKrJKkr8x3K+q6Ap+LVWpIy5omrCYb2XJAwqbNxsbrsXamI7L?=
 =?us-ascii?Q?KpkRcZ/iQ2i2BsMqKZfGmhL0RB2AhwI3Dt75tFMtgXFkyg+GCAtj17PZfwgf?=
 =?us-ascii?Q?jjkw9PDpuh8e8H34dGpXpo2aiakaWcgANTthVUCPv0AmO64thojMeKpKSbUr?=
 =?us-ascii?Q?YweLkGlyEk5cQS+/HSOhjsAnhnrympW+pkEK0q3I4TCEAkAnmDqVv7nPI3VL?=
 =?us-ascii?Q?gVQNokgBfATFybPYirHwC/1dUntEscteF54n3a8rTVhwDW222NPIwrXj+m7e?=
 =?us-ascii?Q?V5XWlq/DS50pSaf9EzxCzJH7nygRwBQZ5LvR0plUCyPARY9g3cJ2x6qpKbAh?=
 =?us-ascii?Q?cMcrfRvImR2oRgVIXlonhcY/iIywGjTc5nGa6Ngfh5WRfK27frNzfw70owi0?=
 =?us-ascii?Q?rpDUNtsNSnyjV4JByYFqwvtc4pCjEY4f+53Ijlg5q3S58vL51H9ugZFbuexv?=
 =?us-ascii?Q?A018nl1WaA06uodEy/scC9OcWDRpW/wKopcxqySQ5m3bnopA5aAb7Kkv4Yt+?=
 =?us-ascii?Q?DD7Z2nTKgfjqMePaugi4DZX6bc0183jcWsSP0nt8Fbpp4lE5YG+6tLGJ7QXf?=
 =?us-ascii?Q?vX1qK/rNEPfubKWRCIrb+7+3qyvzpLACg9O2qGDfKDae9OeRKNNGzV5ERCRf?=
 =?us-ascii?Q?HmYj11+IxMR2J4K26gSVg8dCF/AK6QrGcykd5JYTb8v4UGaPoOBTL8LYAUBQ?=
 =?us-ascii?Q?0AK8VktYOfp5pr1VSTMrAXSOCR3DLSxZGAju5mwDbaPxVzmexrXoagZfKgfo?=
 =?us-ascii?Q?HeiuEKp1QZEZhHLPImOmmZpeLAj+yvuUXnDJZ1enY8dqPeDD0C8ri8l7TXOu?=
 =?us-ascii?Q?7TDmHT9l/j7itjzw7zOibz9etuAdh5WfqM+qb49ziLwIyB+dCzzRbjjAyNHG?=
 =?us-ascii?Q?xH0d8n/Z7IQyW9h9yjfy9WQw2AXYo1Ju1I7jewRyNmnTXMHNWKMiX89dcoXD?=
 =?us-ascii?Q?3kq5X5Rc7efOksWSFwj2WagavwEi1vaTabYRD9iBqy0eOeUhQZVIKNQsqZ/K?=
 =?us-ascii?Q?A2g0qxWkb2+KBXlSx8HD5tmtwzTIDWnPRnhkOTjo9hk7iWFgnEvhHRNZuCEJ?=
 =?us-ascii?Q?ONEqyaK2g7FBPCK9zY1+emcFXoiBRTr/VZPyrZMx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee47d939-7ff7-49fd-6b0a-08dcf703c540
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 03:51:14.5489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vZKolAHJTN++em7/PS6NqeTc/re5w7AH6f1aKOccE6varYNtYztGCCABjUf/1eK8yodqWRf2Txah7SPVEMMYUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4888
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Saturday, October 26, 2024 3:31 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Naut=
iyal,
> Ankit K <ankit.k.nautiyal@intel.com>
> Subject: Re: [PATCH 3/5] drm/i915/psr: Increase psr size limits for Xe2
>=20
> On Fri, Oct 25, 2024 at 11:31:34AM +0530, Suraj Kandpal wrote:
> > Increase the psr max_h limit to 4096.
>=20
> Commit message doesn't match code (this should probably say max_v
> instead of max_h).

Sure will fix that

>=20
> Since PSR2 size is supported up to the maximum pipe size now (for both
> Xe2 and Xe3) would it be simpler to just make the check on psr_max_{h,v}
> conditional to pre-Xe2?  Then if we don't have any truly PSR-specific lim=
its, we
> don't need to keep duplicating the pipe limits in two places going forwar=
d.
> if we=20

@Hogander, Jouni do you see any risk of this being done or should we go ahe=
ad with Matt said
And have the checks just for pre-Xe2

Regards,
Suraj Kandpal

>=20
> Matt
>=20
> >
> > Bspec: 69885, 68858
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 4176163ec19a..c22386a31a63 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -1453,7 +1453,11 @@ static bool intel_psr2_config_valid(struct
> intel_dp *intel_dp,
> >  		return false;
> >  	}
> >
> > -	if (DISPLAY_VER(display) >=3D 12) {
> > +	if (DISPLAY_VER(display) >=3D 20) {
> > +		psr_max_h =3D 5120;
> > +		psr_max_v =3D 4096;
> > +		max_bpp =3D 30;
> > +	} else if (DISPLAY_VER(display) >=3D 12) {
> >  		psr_max_h =3D 5120;
> >  		psr_max_v =3D 3200;
> >  		max_bpp =3D 30;
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
