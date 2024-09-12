Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E07F97660F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291B910EB36;
	Thu, 12 Sep 2024 09:52:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ok/9YQKO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E893A10EB36
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 09:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726134735; x=1757670735;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tK9l03Zky+n66Aspwf05sznAMTuJIIjBBO0w1vrdV88=;
 b=Ok/9YQKOLclbACrGnzZbugcrXj4DQ0IP471udHcQS3cty2YHPYB8U8TO
 qbKfag7NWgnFNO/NDT+MdKFTFVobnFMxsTI1IbfslXtRdCXMweTacJlJu
 OKcm+sN9X3lNZ4SSi9LRvK1X9TchUZ78gkcfpkTZLtImv9CDIzGrPv1DL
 YXywbQPChp1DOZJiQsWCC4bhXGwxShk9WfWsJTq/oh4Oumv5fHaQdDads
 4vIOLYb94+rE/RYicTQTAHeLU4M2L/EKj885D6mYxDFCF9j1sIEOESyKA
 9kYcJ7haMSA6dwcJlzuXd9rT4hOU6/xq0Q9s1MQdXTXD6EzXg/gT3W2zy w==;
X-CSE-ConnectionGUID: QN/wRxCGTqiEW+1Y12WskQ==
X-CSE-MsgGUID: iQuaKfPDQYO4xJPVFNGhXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25172310"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25172310"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:52:15 -0700
X-CSE-ConnectionGUID: l8uOj4N4RfiYjuI+cZROzA==
X-CSE-MsgGUID: wpcZB3lOQYarVrMSbVUBMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72246025"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 02:52:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 02:52:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 02:52:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 02:52:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 02:52:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zTbpqNjZAJndyrYbV8Gt7G4cGGBpVGWH/mjQ+bZApnNwPXOpGSpYV6iMNnSbFOT4OmtSb/i6nIsXAJvloiUGUvl9RloXIvbqNEVmfqXzwxmzhyO/F4bGqIuorM5zcbOTR7gN+qjJvHPGDuJIontHvCKa/A6oaiL0Zi8gq+CpfEGJS5mONp7JbuufTAwQvzHpL7/5zLCO8XKK1XqYnmvk1ucObuVQTvK5B1Dj+5ERtC77pvrL9RgMwPrHg7Ptw41gnJ0KPEfHlJO/w3tTSYvLXQeD1FpLtgdD866AE2P2dF0sgyq1fbO46vVrd8gLZaSq5H6mqxtvSdTjtjPD4O613Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+zPAmwkHE98bu19MagCepOeL1YvIUJ4avUq8U1Y7/Ns=;
 b=xioSLQ2o96CGpDqWUaXuazV+T8zBKFmUpaTkZVtXh5HKcUYiQeUQOJdERhglOVxwWGQI9SikE95RZyPMSMZBw20GJvNh+CF7CWfdWm3iidBEupzc0KJnTiBw8TaOB38SMjzMXChikyoPDo8/85t6vNm+FHTMt/zqbAVD2CxB81zmcJ1fL5OPL3Qh4Fq8QxIUdtDXHpHtITqaflGeozt6TK3kNdNm/ja+2eAIawYtfIXf4NDLvfC0BmMu1U6CuNAjagR8UhyLS6dl4gLe1umrPe+Hyj9KPHPiinTjn4o2/4u3mDtFyZwvt9Fm3riOb+Lgte7X3qhKwpa6NmJzdwNQGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by BL1PR11MB5224.namprd11.prod.outlook.com (2603:10b6:208:30a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.17; Thu, 12 Sep
 2024 09:52:07 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 09:52:06 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Topic: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Index: AQHa87WZJusTjY3OEUmZ63RSw/ze/bJSL9aAgAGTfQA=
Date: Thu, 12 Sep 2024 09:52:06 +0000
Message-ID: <IA0PR11MB730755FAAED7E6513702145FBA642@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-3-arun.r.murthy@intel.com>
 <SJ0PR11MB67897B7473D541F9D73965DD8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB67897B7473D541F9D73965DD8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|BL1PR11MB5224:EE_
x-ms-office365-filtering-correlation-id: 961250af-0665-4302-75ad-08dcd3108ff3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?kW8yoqIyx0M9h1UNes2RDbBoNconr2hDJT5sMJ45iz1R791rRhTlS8yLWSb3?=
 =?us-ascii?Q?vrcTkvgbpV9HE+e5k581uf9l2UiRDxnEA+vDa9gOX5hym1/saoNZT0iK4Qq+?=
 =?us-ascii?Q?/4UXR/zfH2zt9pQj74a3hzk+b/7bQnpi65rW+ryHIOv6Lzmn9hYY4zNuzcT4?=
 =?us-ascii?Q?SL4quDxtQm4PDcGbh6I7ISOv0vElsKOjMTi+yjKn6JPjity6yb5KOmztFPXR?=
 =?us-ascii?Q?4QSrQi+OmxJ10tQGvjDnH3fGDpbwbNpPMTp9+1pfkpu3kJNZRrHoG1DjEJRE?=
 =?us-ascii?Q?VCdVG913MC89tAfAU1C6pXFLQRIJT9ik4n5CVPFKnrQTQC+A3f1Blw1jvVYy?=
 =?us-ascii?Q?E22TAnAmuQE75Mj3fDRtd6k6ddpd8R1D/m1rhcJlFlSApQpjJAw+VuKLQwBP?=
 =?us-ascii?Q?wB3/HOfFnGePX3MBQHzGitZhTJIH7naAKofjgso9oemSUWQtMihcn4h5+BF5?=
 =?us-ascii?Q?fozvdJJONAdoZf8jB2uCQTcUCKiB3YSRFTxuqAUUop+hIWeymw7VvcilticI?=
 =?us-ascii?Q?+YUBenFpWvY4Vqa1v16yLeR5uC9cqol9T/h3PsPjPotkL44i6NFHSTAx5sTh?=
 =?us-ascii?Q?FskWVaDtxcSoz7fQL79i0LYIOodzFA8z5rrXlcUFuMJPudSYa4qVJbaxrOJZ?=
 =?us-ascii?Q?6h1sbqiqR0Mpl97guwTahurkMK6QczKraeq7kXnCdUMl2ttGAd+t1ylsDFkF?=
 =?us-ascii?Q?JzadcvUuSh6d40Dog/TsmQnDPxdD6p1Q4q2QsOoA3IIjf9elaUEciIBi1cZL?=
 =?us-ascii?Q?yAzcPJAj2n+m6TBCrpOmh2THWIkEd2aauaRX4fwCcNTC3avUN8NXe70lg8+D?=
 =?us-ascii?Q?wGDI3E40H3cvH+q+Ce4ayAnBWkjM44/tG2Ig3DJFxDy8YRJfuWH3EIUHZipP?=
 =?us-ascii?Q?i15gz6R0vYGRa+9s1p0iGLnZYIwHed72thqGq2/dDGEHY7FNM0QZY1oV2ldZ?=
 =?us-ascii?Q?HX1OwgVJPE5xLatpp9xItH56cSGnRqwEWLv9Pw7WxWCENiZcMX2+hrOFKD1i?=
 =?us-ascii?Q?iCENjwxiRS5lK1PgMRYwdWoO5I6hifr3gS6byvGMAbcl1Y6v7D8DgrrmeEa3?=
 =?us-ascii?Q?CZuOVRnmvlGYrGwBN8q07faJZadrWQcZ5oVZqBJeCJbQuDkIYsfppQcgQjO/?=
 =?us-ascii?Q?sQc440eyEC3sInGN8caKtxyM3XZLqZhnYtjBbDOPz8ckt2ZQutLSAD1YFxfy?=
 =?us-ascii?Q?tj+JHikbmZtIVbWL0s0QKnUp96n5fvJeh24e15HVKGqBs/ajOFnUNnZnn4z7?=
 =?us-ascii?Q?JN0fcxYN+T5D7j1g8nyx0j3JMXRthKWeRUAeiNMQzDA0+0oX8B6PDI70LdPI?=
 =?us-ascii?Q?iqX0XdAV4wpPRxWnCOCXqKK0mans6yhcI0zESUfynsBbiS2mkTNuVBpnDI/U?=
 =?us-ascii?Q?Zn07ISC2/Ne0/VlNraPODR3r/YBEVvw1WTOUw3d1QJClevBg9w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?BYnF5dAQxm9VglD2hNELZ+IvkhzNupaqhQQ74DggChyhplCv5Vd8d/03kwQM?=
 =?us-ascii?Q?GUcF1/WMknAgKrF0eX1pEiiXgNBkGNqUOt52/xT/hvamoD9IFCR9K6fRaxaA?=
 =?us-ascii?Q?ZqMK81CxboCMrmWXACNEufopYoV8DQV+tsbY/XiFXuzb4zrMhYrZPO/VV+qJ?=
 =?us-ascii?Q?li07vZxAn6CC6mY6vckMjzveF2E4QvWVrtLR6hC9zZ4sExBOk5qcXZIX2+83?=
 =?us-ascii?Q?5F29QAggml0ngRrGROxE58HTplm+wgKGLM+e0ev2y2RR8swxn/d/Ds3uuExY?=
 =?us-ascii?Q?udhprpudeOb/ywT3A1yRzCHt+4klxtDebWOA1z2PdtMQJSFnW8rb/CVMd8kY?=
 =?us-ascii?Q?h3Z4kLUZ0KpMZnfWnCe6kqMO530gOAyjVFTkMgoqPamCyZAYLvcNS7LcgS86?=
 =?us-ascii?Q?2qMIN57JeKaYZx/ga5DUsqFgjgiu2+wVT6IlKFReeTDnxg4O+DFc2EYoASGO?=
 =?us-ascii?Q?YJHrouWNRq8EPMunDbIVU5fZUKxEFpyXihLDkvUVcWXfFAu/Wpc3mE9MIjE4?=
 =?us-ascii?Q?ul6CaDXwUYAmJ2M1fMsYgupn69iOkRpt99Z+3V89AnJ7PpennrvpCVhsP6x5?=
 =?us-ascii?Q?q+RCF+r3RKtHCBdn51B5RS+7Mvf0UqfzguDNlZ7UjhXnoetkAx0mQoPrM0dP?=
 =?us-ascii?Q?xgdBt8+uvI+xklLKskuIO8/TdSEzfbhzeuFeGIWadIdzLSP3bdapjXql3HQg?=
 =?us-ascii?Q?+urZ6+BS99nRnJwvV/PQdBQ06oRGze5IWNzjlMcWdo1VIgn3+oCt6er+5JVp?=
 =?us-ascii?Q?GViH7LJzlwDG6gkhFWyz38q5L3J29N02UQQjDQrH8cZUWtqDkDenyWkdPhUE?=
 =?us-ascii?Q?jvsnnES8jgguP1QrUXb8WnFjX+e8yBsuMzbCKr9o/0cK/4Xgq2kQayWMpibF?=
 =?us-ascii?Q?MpVX9FXqe2dOJ0YO4YyBzXT/F/UNBNq9ptbkvMP5wGg/J07akitNDT7fGcY/?=
 =?us-ascii?Q?7N4d82OscB2R7oNnaKy4WCsiXfv1tsSEqAKw0vzAB0aLySaDP0n6Ri4qe7MN?=
 =?us-ascii?Q?fuUqwI0OgzCUcGeYkmwk/USXAt8oa8fTU6eO2negMeiX4zXH5VE1vpW3tQfl?=
 =?us-ascii?Q?L/QrGGEgm90EyppdYM8KuzwMZL+vx9Jf1z3AI4GKDQ8UUdYg4dq2A0o9S8f8?=
 =?us-ascii?Q?0w9f9A21w3Qy4A/sqK8xXi3TApJEx0g+Gzj0EYxrdlCwWOCoyQcLK3yCqblq?=
 =?us-ascii?Q?NPpK13X16AKxxGCG2l4kHXVly5cM4wXCY6SxbBwjAPOecSSGbC0jYRYuoJ68?=
 =?us-ascii?Q?uOozt70fxtPFvp9kbf2gIfcw/38jhRp7+48wdalC9NCO/s7kYIc7Z5wOsoT7?=
 =?us-ascii?Q?JMLKfVvkCcund3FTXzzuSnQs7++RqVmvSPu3ULACyadApo3x2aqQeyhnQ8r0?=
 =?us-ascii?Q?cQnp6+FyQNg/W5mOjgXADHye7fp8Sf9qTJT5VGh1yf9Dgy5pmJQNfb8kTlwo?=
 =?us-ascii?Q?vIVo7PQfubAnVelK5SXQ5ntQ4STIwg30bYiCfwvMa7nLLQSYAMjc229TShkd?=
 =?us-ascii?Q?n903UURBgmzK94SCGhEFvvmo20ikZ9Jb9M49AQG7SAU+v0WEW00t65PAtHHs?=
 =?us-ascii?Q?tZ94PRzxf5LtC5V1AGh7DmPgF/23XmIVJaWrg25a?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 961250af-0665-4302-75ad-08dcd3108ff3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 09:52:06.7569 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xvgzUWfPNZuTm31V5y9+o2pVOZrk19cgdHS85i5CZ6x0YrugbYPOKdSN9tP/57fWpLa9yO41fVTxNckTKu4m1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5224
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

> > +static void intel_histogram_handle_int_work(struct work_struct *work) =
{
> > +	struct intel_histogram *histogram =3D container_of(work,
> > +		struct intel_histogram, handle_histogram_int_work.work);
> > +	struct drm_i915_private *i915 =3D histogram->i915;
> > +	struct intel_crtc *intel_crtc =3D histogram->crtc;
> > +	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
> > +	u32 dpstbin;
> > +	int i, try =3D 0;
> > +
> If we have PSR enabled looks like this code might straight away break, an=
d PSR
> being enabled is a common scenario Can we have some checks on enabling th=
is
> feature if no PSR until we handle this scenario?

With PSR enabled histogram event will not be generated as there wont be any=
 statistics.
This should have no impact to user and user is not time bound with the hist=
ogram event.

This TODO is to handle the histogram generation even in case of PSR enabled=
 with some additional settings.

Thanks and Regards,
Arun R Murthy
-------------------
