Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABA4939D4E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2024 11:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848CB10E048;
	Tue, 23 Jul 2024 09:12:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZqmjRt4U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B908E10E048
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2024 09:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721725941; x=1753261941;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ct08NZljMWDBU1zrI1wh7zqdkqBUvJXRsjh2+FcwVlM=;
 b=ZqmjRt4UGzvcVxTuKLYZaGttARMNNBsy28uHl8NK0fUBkSEYyQSMDn7I
 UBMvOo3CpF5YjhzeNd/G4kkMkw5eqzu4o0jOx1B9FFF4JcbG57UiMuwmo
 rkRNAo3TVCrwWgzl7Mpcm/ItH57YK4d0mtivCsOr41lP++u47MJI5H9pw
 EXdMS00ELEXnaDpjW6+OeIybSC/nNb5qNH92frWe/4yZVYmvY1u2rUcIK
 SAWYD1V0yh5zsUxsylo7iGbvItqdOAsQ2jDow8Bks3bB/GlF7/JPb5jAd
 LLPs3nOkuBOl2ICGHRjvp6lPNcD9JkQxXcFFtTA4ubZWt3PIPLAer189D A==;
X-CSE-ConnectionGUID: YG4LtdgrSQSuBfcA+OtBDg==
X-CSE-MsgGUID: 2wJxQR5BTmqLe98Aik+bgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="12663317"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="12663317"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 02:12:21 -0700
X-CSE-ConnectionGUID: VCKYlzsFRrm/BjQM5dxD1w==
X-CSE-MsgGUID: Fuu3Ps0JS6aWnxgKJVjIGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="56725438"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 02:12:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 02:12:20 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 02:12:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 02:12:19 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 02:12:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VuJCkXUJX4cvU4CR7/X+shvh4bXXuCBvK5uodNyNyA9OELoK+bg5ezYiyGbP2fpktAC7U7f662m47fXfSGg4Z0SLyA1GDz/18lVaLyMlZ/XuHQpoWtp1kSOaVJRPpNeilveKekncxO93Qcamo/nrPbSH8bEf8ODRBwNsEi9+wA8Baa2KdA/VrrN7IzJRAi5yfRBV3vSYwggcv2eD5+rAeWzh+OfoVK3P10qWyj36Lcyi6em2gf2G4dYWQcGWlijcwi0dSb6RMIno2/okC/21PidqIobKsbKQAyc2C7Jw1FnEwr2YTrV8GwHHcEP7ZwuuofU6fIwkb+U0ETUpdj7e8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5WiHzp8X1GCd9nnxpki/yT0NG9FrkTPGWoBZdL9cRjU=;
 b=G64H5XXqNz1Eawh6IGyPJ+5KK8Xh3lO359a9ahHyhE+ZsXAz47vYyAj/kqT1zeIa5gSlP65Rd4VN2pZRjfk44o9aGuLtMPf0Njgelgb70GnRffbe2r4k6t9ztoQs8S1Ob00pwVWmOBH+lp8bSrzDLcv8HM3TdYoHPWBKiNGkmrbu+tVHBo3FD481v7u6isX402mDyWJJsO+p+ZkORLR2NPNm1cVhj4eWl2SiIjmOooWzLz90/nYHMBWSpp8JIek82WTVZgQ2tGl4jjF83NXtDBYX7QJJYtJ5Xd/G69sVK7ODjLIAaAkFN3CKnU3SdDm6wNZ+KAqytpI+Tc9S8agIBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 09:12:16 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Tue, 23 Jul 2024
 09:12:16 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the
 link parameters
Thread-Topic: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the
 link parameters
Thread-Index: AQHa3FfxWghe6BVo2UiYfslVr5ed+bIEB/Rg
Date: Tue, 23 Jul 2024 09:12:16 +0000
Message-ID: <SN7PR11MB67502F1DE205BF643331025DE3A92@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-8-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-8-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN2PR11MB4661:EE_
x-ms-office365-filtering-correlation-id: 46ecd29e-fb8b-42b9-aba1-08dcaaf78c3d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?PqfCL8uWdeCCfoey2NEWJ3xNWJhsusoThiPvrUetW7ehB1Dr4bURa8dgR1Sx?=
 =?us-ascii?Q?u/NMG44kkoI3BPQxpJ5j6DaX4A6L0GuGVr0l3jVWiI5GJxorljR5EtHTNAQQ?=
 =?us-ascii?Q?y97/b+IS+YT0ZJn+NdJJjyAf1as4H4yWRFhldEhEf0OWS2sKW7lqypYsKEvy?=
 =?us-ascii?Q?yg4MZl9cNSVh4Nld8gMwxYoRPVrzArOddfnBdv5FaOm6cmHRxbkSYTjvSH+Q?=
 =?us-ascii?Q?XT7Hh3o+d1GMlgkO4g/96CNibi2BQdwuVkWgRt17yu/JCdOT8WFHKzuY1uF6?=
 =?us-ascii?Q?M4Ij9WLNXX/i2Z9uUgmgFzGU0oJc4DokHF3mu/DVwEfFqkfL3J37JecJJzYh?=
 =?us-ascii?Q?kCQGvx/Wob/G4HD+E0IHDb1KMOhT5wIqPCcmFYfBPGZvTRrveVGfpoZdw5Hw?=
 =?us-ascii?Q?zGvXd1A3RG/z2DiGixX9oJWsdVOPgikbecSP20euxx+wyn68ait6mkVvHibz?=
 =?us-ascii?Q?PVATaBRP1eilqIpyqyslv2Xaf5xhSMfekAsG5txjEz3mFr3Ep7kjNyh/k3Ml?=
 =?us-ascii?Q?RlBaEmCIdeMdB1oqDn4fqahJDf3nCDkSsGN2+MYvDpoSj8NqBfiPe8OEsUNn?=
 =?us-ascii?Q?uSrU66ldir+hYHPARYO0rmiTeO7cRG+8w75Fe3/16HOC+PwpVviXMvhvNBYv?=
 =?us-ascii?Q?oGUs4+k22vQYGSWM51vF/HplfSeR/IewsLgu6Irz60/AjNCmYMCGtyxWdPif?=
 =?us-ascii?Q?wSytxxVHh4TayUygsJnW0sXh6a4O+Qdfy5rLo8NDhAGijYmkbJXTI9r5/ZwB?=
 =?us-ascii?Q?v+eGavSBZaTkSRkMe3T/bogtuQTpVTAZwPeDBUBb2Uf1Nf2dS66lvdBe5zo4?=
 =?us-ascii?Q?i4JS0pXBKkKFAlW6YjcyDCi7kv9aRWJoKuTJZNw6u+tlnD1DTqCnsAHOSvB3?=
 =?us-ascii?Q?94qZX98E43i00CDOWZOlIJrNyNJ8QDAw2bvtP3m3T1VvKhmR8up+XnDgl25Y?=
 =?us-ascii?Q?WhmX7AzbYM6K1Hswp3JtRepe5hJ23/VmaTmxr6Yc0YIIVFJwsMrDhYzatBob?=
 =?us-ascii?Q?PzeypumRG82hzX95sx08WQQn+EsCu8gw8kZaD6QpeGW78RUwUlklsz3rK49q?=
 =?us-ascii?Q?S3bxwdrNKqCDJNXp8BrtqIeorwke8fDRdPfEG4nTcM3zOmjcRdLY220bBtTm?=
 =?us-ascii?Q?4gk652niZnCiZgISABkS9nBNnG+gJSfZYdUtniZ/SZ6BHdQkqAgUnsuUltj3?=
 =?us-ascii?Q?FeF6ksvxR4RiiFkELuUkZAtUK71CKEfjCDCYfDneRFdOmfQiIj/51S1cFvOj?=
 =?us-ascii?Q?ualrxu5puOzpgxUkJxeOOa8Sjo+ugbhpdunrC0taChz754Zy7/XebMAjGtvc?=
 =?us-ascii?Q?fhrvI2z5PhC5MRtiR9XWoam/smCosKszLjGCudI8IfBePO5uGRfzLrT1/Mc5?=
 =?us-ascii?Q?qlmsGP9kyQ9b/Zlu44hkigQyYar104J6B7GZzX5oGvVnHwtWBA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q2Iq12r/9+7h1UCh5eg6W0ZEkRG/mGiZ1qEPhCRwtZJgWC4R310vVH5uYTNa?=
 =?us-ascii?Q?d1oM0ZHCXMHkwwDENwRwHBewCIoi1wIGlaLKkHouEXZReFGuP1AFZMl+D6TN?=
 =?us-ascii?Q?VzXNuY4hr10wudDDbMRGmWzO9z+1LLlKJN0D0fApbXU5QjB+TeQTqe3CgZwj?=
 =?us-ascii?Q?wFcqjv8Ei9h5NGmeBADQA+Ry3rFSjNRzpY8RbG5lkOYtF2LPjM2iMI51Uchn?=
 =?us-ascii?Q?O2byV2hssHxog01AX0WVr3vQI0PxQEquKm+lJb7vRS6hx4WFza2Dp1IBaZzM?=
 =?us-ascii?Q?gMFF+tsHgcTCxUe0uHIY4A2iNtInQAGU0nH+pqCRMHs2HG3HBDFzpBlJh6gh?=
 =?us-ascii?Q?cLvELo73N8xF/B7YOyXsy2BchqJrtA4iDng9SUcmqiQhbyJ+M+aIGieFgb7O?=
 =?us-ascii?Q?osSmfyqIg2xD+4GhvK+CDJa8lCt6ASoGnvbJY9rMyolYP5iDk107x3wS6CmE?=
 =?us-ascii?Q?BPL5cp4tOFoeU49mAfHq9VMwj+6PSLkRzo9L0oUDPr1aWmYDxffymO2GECxU?=
 =?us-ascii?Q?OtWaiYFu+eksnEYr2YQPgZtR4RmhqqE473Z3UvEQvhkRK0ePaZSE07P/uZFM?=
 =?us-ascii?Q?A8C48IYAEqVA66I4EC+QjCdeBW29wlafVrGcheqGuInsmjQv9N85woDugf2U?=
 =?us-ascii?Q?KO1MXfWxjrnqrgEPXcyoPrNGcpd0h0XKmovZXCFRe3LdhTW6O4I8LJ4qc/gL?=
 =?us-ascii?Q?h8FOgI5V6O9nettLHCj17jlrfIrJ454iCEXHb8B9aARUfd5JfamBfmRKlCIS?=
 =?us-ascii?Q?AetXy2mh1/uEb9381GxSQO1Tjz0Bzs4AF8dPCnOk7dRvz62ch1Pogei1hzqc?=
 =?us-ascii?Q?+Hj0sCHU7/qGg7CZMX8Uc2HfdjpCZgmFd6HtUCwTJJWgOu4ra4WpwzaxU8rS?=
 =?us-ascii?Q?Fl+i7B3HH92ise5kn862u6nDii5Q7sofwVgWcScpFAUWOEipBiFl20qQRxQ9?=
 =?us-ascii?Q?w0XRQkKogN+VHVi4oRJJxs0P4RQYDZu8EyWOnVx51EGrBRga/FRaodoKsP/F?=
 =?us-ascii?Q?p2TpN7fdV9wkzNnUWzb28puantDt/h7UAzz+T/EWGHoVqKDrYfdRDklCcGIh?=
 =?us-ascii?Q?vQJj8jFp7gKuJwvs2EmTepzSaqKMECx1K47v7gd7DqjENcoGzEE5YkrFx87g?=
 =?us-ascii?Q?alxYj4BgXch7R3V96stBwI6nsXDZyUTcIvGkt1PgTHfR5JYIWvlY9B5le6io?=
 =?us-ascii?Q?U8vlzZCuwHYDRpwMyr5E78XGN11JKU17Uo9zphL/cjqbwzjKM2AVL8ImlUB3?=
 =?us-ascii?Q?GgnVZrgCpPycymKHbdSzit8NIzi+1Z85cTbijU/n3W9VX/xQ+yEpiMQ96dXd?=
 =?us-ascii?Q?Da1ygqbLNAmfmZOGVZ1llr6iinhNSlp/3FGWVw/T74+dUODud9IBHTV8zfDv?=
 =?us-ascii?Q?M8C2PoHgBl1bh8e8PPYYTaTsN/vGZqxKSHfoddk6otgIMiIx7Ta8H9kKIR9U?=
 =?us-ascii?Q?SqO2i/m80NZSym5gF9zuF8ltiSFyL5ZDF554wPcslvFIoNo3WX+d0tCWGCgv?=
 =?us-ascii?Q?E6E8wGOMCVtvqGZgRjc9SN1BxyWc2ciq+KdoCcrncERcTQ+Iun3dthT9MN4f?=
 =?us-ascii?Q?NLlHYrkxlo+Ngc3u/7kcdIWJGA7NEaEobOAiRgrC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46ecd29e-fb8b-42b9-aba1-08dcaaf78c3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2024 09:12:16.5742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +ZdubmqnnBpVvvzLtB5jAWVPDuj+T+PIjk/Mk1OQQ816JBsknf1iwQeKjsIM/CUE701s00zECLw7t0YahfzQUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4661
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Monday, July 22, 2024 10:25 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH 07/14] drm/i915/dp: Add a separate function to reduce the=
 link
> parameters
>=20
> A follow-up patch will add an alternative way to reduce the link paramete=
rs in
> BW order on MST links, prepare for that here.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../drm/i915/display/intel_dp_link_training.c | 39 +++++++++++++++----
>  1 file changed, 31 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 58dea87a9fa28..57536ae200b77 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1193,6 +1193,36 @@ static int reduce_lane_count(struct intel_dp
> *intel_dp, int current_lane_count)
>  	return current_lane_count >> 1;
>  }
>=20
> +static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel=
_dp,
> +						  const struct intel_crtc_state
> *crtc_state,
> +						  int *new_link_rate, int
> *new_lane_count) {
> +	int link_rate;
> +	int lane_count;
> +
> +	lane_count =3D crtc_state->lane_count;
> +	link_rate =3D reduce_link_rate(intel_dp, crtc_state->port_clock);
> +	if (link_rate < 0) {
> +		lane_count =3D reduce_lane_count(intel_dp, crtc_state-
> >lane_count);
> +		link_rate =3D intel_dp_max_common_rate(intel_dp);
> +	}
> +
> +	if (lane_count < 0)
> +		return false;
> +
> +	*new_link_rate =3D link_rate;
> +	*new_lane_count =3D lane_count;
> +
> +	return true;
> +}
> +
> +static bool reduce_link_params(struct intel_dp *intel_dp, const struct
> intel_crtc_state *crtc_state,
> +			       int *new_link_rate, int *new_lane_count) {
> +	return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
> +						     new_link_rate,
> new_lane_count); }
> +
>  static int intel_dp_get_link_train_fallback_values(struct intel_dp *inte=
l_dp,
>  						   const struct intel_crtc_state
> *crtc_state)  { @@ -1206,14 +1236,7 @@ static int
> intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  		return 0;
>  	}
>=20
> -	new_lane_count =3D crtc_state->lane_count;
> -	new_link_rate =3D reduce_link_rate(intel_dp, crtc_state->port_clock);
> -	if (new_link_rate < 0) {
> -		new_lane_count =3D reduce_lane_count(intel_dp, crtc_state-
> >lane_count);
> -		new_link_rate =3D intel_dp_max_common_rate(intel_dp);
> -	}
> -
> -	if (new_lane_count < 0)
> +	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate,
> +&new_lane_count))
>  		return -1;
>=20
>  	if (intel_dp_is_edp(intel_dp) &&
> --
> 2.44.2

