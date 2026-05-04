Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPzzChg0+GmxrQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 07:52:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AA74B8B1C
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 07:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E29610E37F;
	Mon,  4 May 2026 05:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aTPZyczj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7457910E257;
 Mon,  4 May 2026 05:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777873940; x=1809409940;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=My5HJg537mHnWx9ZFcNP5nLALpURh4jckDhP3Zm6eXg=;
 b=aTPZyczjW4IshLBuJHVv0pW6MCilxxdjvJkILeMsPzhXbCltZgy4eU5X
 lbAWhmkyXcHhOQbBgSpjAtKe/T3835VzV66hJH8DajuzBTaTYSFFsTW55
 zlj68QHA+ozJ9OPBdDadXBI5RPN9FGlnp0XJ7DVQ0Bn087Qrt5M/lFJG5
 vB9ivjF5wLRhLnB3DXv747Blrcy6oKm99nM4V5LJsZoe5rv7WxOEB/qaC
 jTmMqNQS9LWuxBikdyAtzL4DQ+QhIYCJuVDoP8nWVp2I1Hy1A81lHSdeJ
 Awa82dYMF1JBHuZTmiEN1uKZP/pVQgkwGU/MF9D92MKak3HLKtU3TOKCb g==;
X-CSE-ConnectionGUID: KePEumnfRLGsYf5AhQdaeA==
X-CSE-MsgGUID: qFpbCIgMTKOqbgKm/CqNgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="78660842"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78660842"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 22:52:20 -0700
X-CSE-ConnectionGUID: Rx/3sQjyS+KqSLmiUN8TRA==
X-CSE-MsgGUID: i0touWU5Rp+UuGyIN9JJfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="265770231"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2026 22:52:20 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 22:52:19 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 3 May 2026 22:52:19 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 3 May 2026 22:52:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fB5EESXbKFHRgip+w51T78fZIPeWtDelPaNHUReBr2M4w9RvLhB0h5JMzd7sUzDS7WQlVt0si/7pFT1+Yeo/rA44qyxxroCWBHfqKY4COeAi+GqcBm2L4vZTwnex/w/gVyGwtATiemtJo/aed+pS6Vz/uzBQqEmRj8fS0KgL6g9SI+tXI+u7YJ4VUB3TklUIwYSPeH3dzVryJJzd+YHuoyTgJdxcWB5yTEzME4vMEeu+QC132fTMjQVJRD/nxojnMXiKT6ZID2Pp2JQl7HhousVJVBacFs6EyGhg1z+FM2TqeqExkXDPvV4/LrZ8eiRW0js8F/4VJRWNCwgE3eQeTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3vSuEsB/u74J1/xVcpe3sVsThLTLfXSn8pVtk1Frsdg=;
 b=a4gVhtTe1fK9zstoHSv31LJmgXwDBJNVHwEUrrILzpnMcfNJBnAmhDvLDxpc+OcfVqXurW+gtMY9cIRpoeXwOqKlDC9yHRcPKb+gRXfFPMHE166/6sp45w4GhU/R0io3AKUVBiNByF1eYyPEoYWHkPAdO54igzWt/5TkqQbbkZNcB53ipRkBSwBI7GTtJrTe9iLQgMw4j++nE9o9YLlfBFUoE5fQsOn9/HoQnrA9nDfN55XWj7cOGKuggIcchZquN2sP4hg/tE7Iqc81S+xHqT/0aTo2SXTdcqZ6K2tJiZ9hvBTPxDaoWwTKaZYG0hCxH+ArQZ1tjcmr1gDZz6w51Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM3PPF807974CA6.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 05:52:11 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 05:52:11 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 3/5] drm/i915/intel_dvo: Drop call to
 intel_panel_fixed_mode() from compute_config
Thread-Topic: [PATCH 3/5] drm/i915/intel_dvo: Drop call to
 intel_panel_fixed_mode() from compute_config
Thread-Index: AQHc2KUZkabXsCafHUeptsm6mBOiDLX9YbLA
Date: Mon, 4 May 2026 05:52:11 +0000
Message-ID: <DM3PPF208195D8D54642D41174DDE0F9C2DE3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
 <20260430131220.3891497-4-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260430131220.3891497-4-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM3PPF807974CA6:EE_
x-ms-office365-filtering-correlation-id: 29466365-0b51-45e8-ef79-08dea9a1495a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: 6lC5n0dZx6hU5NnpKvCjrby9/vyl/EiXOFumkhEn1xANK9gy4GZLrhNq4+E082IQ7T3CIJGc4yVPEdpF8HiMh7oSSkZzmXsAAijSzGio1CGrtyW6YmCmpgWFK72GGkZbII2SdISiFehKJjCZqPT74uHZ4Ts6ef0iykKhDwFI4q1BePDcdII63r+w7Pvjv1sW7ExtfQ1vefnRSlM89i6lbe1sr/G8R/vaE12dxSaeHhE+PH6pbkTzzRmo5wVCTnfOEGey1DHPtRBkOEWnAudV9uDOCyOlr6by21YMVT88lcUFqyz/Pg41iRINxV+tPVJkZdsqiT30R4QPD4Twz7PhhT0HFCLaF/kwVIP14k9WdeSBJUna4ZHD6iRKXbUMFBgjqG0FrGTumbohDabAAsIHHCXC/A3l2JMkht819slcDHCj+JuH5sLx4z04qa9ZIhZNDrQ9gSWLw8fkCzr7WYeWYMOCDlYicnRlIQamFIAKM4T34yGjfu8zge/VSuRbMIGtizktL6KODZaYyWiB5TSbD40dY8063x905anNeaCyDDUIB5+xv0V2Dw8lIYqxcyeyhfK2V6xBsT7GNixKpgXzYdEbwXaBJfxy1x+UJ2rItURRSrWebllY8LtxpBTHVxK7jfkoleu8nYbIqfzEd/bS78Z1Y+RXAX5SoR00nlxwWTMxkDjZfGr1tw2emin4QcxPB2Uq4AUC1b9bkbRCO7eMt9ojrr92cD6XYybyvnTzPjSsT29MA+LPs74kkDatraDO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qcu0BNVeIIQd1q52vHS6W9dBVJ1NzMZ53xA1siEVGE4BUc+tMk+asLyVFY9Y?=
 =?us-ascii?Q?/fQa5w9Mw/CWOJGj/mjbrSMO09TzkpWVcCrEIjfLD8xVzqyJvfW3G8huxu4t?=
 =?us-ascii?Q?4KjQUH8BVS2726kJlS5fGg9FC/+BYjrenSwVrffdA2BCKFTOFbT0qPw6Bncd?=
 =?us-ascii?Q?rk090Yiy0hkEsKFQ3XNkL3DtxqNAqqnHPWqcsxTfcQjd11ZqTyIQpXMhgeyP?=
 =?us-ascii?Q?PNvwrcO+nWrXXHqq4A/szQSxBUAyHKlJVdfvrFJjU1j/VsnKLGSiIYTMMvbd?=
 =?us-ascii?Q?OjihX4F6+yGe71YTVfouP8IAkl7KGVGUkzYbz2Msznp1M1yaeIOWAFmP1Zd6?=
 =?us-ascii?Q?miyH/o045zh2uB9n7wSb9lKaTBSr+rynLY2v2QaYeCVDIpwxxsg848e5tdSl?=
 =?us-ascii?Q?HTlHVvPhF/z9Cb92nRUkVy3lZ1YR/NRGYEGtzDK7e4Gv985n/tKtA2cgxyM7?=
 =?us-ascii?Q?9HrpT5e112EHp/EpACzyhl6dDo3HTENq5u7S+cePsuyyuP4akcp5HgFJ3Tjx?=
 =?us-ascii?Q?vZODZ4bJxYlSR6J6SCse5IW7Bch6HWAp8RACCS4y84jVjEynrGozLkbqMWZO?=
 =?us-ascii?Q?T0CUOsZ+7M11mBNC7ANsHAiSABV+0hrcgtK9S9jiRMCp/m+wNTpinu+kHU37?=
 =?us-ascii?Q?C6BLWTv5eaA5Uma35DuqPkpKXqUm5BQ9FaVHxXjLInQ9Lgt/5YL8v6eIVILt?=
 =?us-ascii?Q?/eJ6LmGpT8mW95x/8gukkP8Qm+oASqXn79h+Lsdp5jFVvhTqUe9xv0/Kha6x?=
 =?us-ascii?Q?bAC3TUIELpM358esYJNBUqWBiwFtiXfnuUnAwEuNL8uQUKzfQ1idwPOOC6oK?=
 =?us-ascii?Q?Bfs5DFwoyO4NG+8B8XjO+rfbqRUGG/LvCD0/9ZA50mJgrWq84thxqsSYnccj?=
 =?us-ascii?Q?7kVzUAHLOK168QblKno60seBDaFvaB2nhIp87C/ro21j2exzEcRHaX0MvS7/?=
 =?us-ascii?Q?YsZLmYC+9TqZyXAUAL8mqqOstds1NIrLHpKpqtzMTWlhJcKTtWUwPcJXFvl/?=
 =?us-ascii?Q?Jl9WaAzdolDm6o8ge9F7IVdVujKMaQWvgQNSgoKs+UruvVKmY4rwBkrBEZyI?=
 =?us-ascii?Q?WiTLdjfsr4H5mFpkltxf9gDVpAWmq/SZena7KgtHKVTluu4ohB/EilMhX83f?=
 =?us-ascii?Q?PmPznQ5Lr1p7mhiwaxD9xaRPVKv2Roo0qmkseAa4mkadvRtJmE8TY/c2SHdW?=
 =?us-ascii?Q?0fc0qGudX7XlWTNnVvnfGJaLKQicF/2WtFSg4WYXdsdkOwgSlvEEblrqatBv?=
 =?us-ascii?Q?Zq7TH5+zlqc6qp/u9xyxVwRhv/jSTlf9hs3g4DnZQnR3fVCZXKzxTTOTS0zx?=
 =?us-ascii?Q?sp9bn4tH9g9yXnInQ2fquC4Arc8eJpkaBcx6AM3HLW3GR/sTP5LXYonWV+KH?=
 =?us-ascii?Q?yYffCo0civTQQxczMM/tzelthMKRcAWpBcHVRCTrKYik0mkGoVsUs91rifTC?=
 =?us-ascii?Q?t76UfxDr+ep/oja5a+YOeuaRvdxstIs4YZJ3ocq7ZIxYg7bHbqo5jwX/XF3R?=
 =?us-ascii?Q?nB1TBvd+qf8s3ikGtm3du9kfdK970LzXJd4xpPPPL+dROg/Jf5PfbXgpSbIo?=
 =?us-ascii?Q?wTcnckuN9yLlwrv9KT8/rsiiLpjcE3pAkcWeYJO9gMm+q24/dnZ1fZJ1izeN?=
 =?us-ascii?Q?JgYGouNlqZDrU3p7R/8U1DvdZsfBtjZ2x2Jt3D085qUW53k6c6RuSyeZA7ZA?=
 =?us-ascii?Q?qdXkzUIlkzpYXIsyNTJlIPb2XlHYQnehlPgvuueydJ6p9VlBxTS6ilfSBJ1x?=
 =?us-ascii?Q?m3Cv3htmtw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Bbsf+Mk9AZIVqhR63p+L2PNIHVhLDwjzeYf8BsBjPxOvT59i1+YY4UohK8h1SXXomZl/MDYi27h2Qw9IPToZfaIb/KiKZ86KIuANDZhSs2XcGC62Gp+qWu0EtpD2xxUofqxsxH7wvV6lraAZZCcF4v5NluiYJZebFgxbQKxNZVn2t5Fi2S7Q5lkhujnovwuHKttvZpNliyiDPNOZJY3bkCNmCALlKpccNF/bURRwNs/8nJB01B7VgqLufa8q7GgHg5S/GPVjssUTttFySLCVY/6+YaX3lXqxmQQskwEEJDSB8nZRKg1IYBQ3pLufQKpJNnt4jEWXWAq0AjpdgzYTXw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29466365-0b51-45e8-ef79-08dea9a1495a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2026 05:52:11.8508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ih8sieZY/G0TDoBBgM/y7B2MtmI2mKYu5UQrUsOF1NLABwQoO2Y4vm+f4hvJ/2Az+aYJ7FyMDFcr/tUffW3+Gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF807974CA6
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
X-Rspamd-Queue-Id: 87AA74B8B1C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

> Subject: [PATCH 3/5] drm/i915/intel_dvo: Drop call to intel_panel_fixed_m=
ode()
> from compute_config
>=20
> The function intel_dvo_compute_config() calls intel_panel_fixed_mode() on=
ly
> to check if there is a valid fixed_mode and based on that it then calls
> intel_panel_compute_config().
>=20
> However, since the intel_panel_compute_config() already checks for
> fixed_mode and we can drop the call to intel_panel_fixed_mode().
>=20

We can update this like below:
* "Since intel_panel_compute_config() already checks for fixed_mode, we can=
 drop the call to intel_panel_fixed_mode()."

Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dvo.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
> b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 65015477abed..dd1a995c2979 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -246,11 +246,9 @@ static int intel_dvo_compute_config(struct
> intel_encoder *encoder,
>  				    struct intel_crtc_state *pipe_config,
>  				    struct drm_connector_state *conn_state)  {
> -	struct intel_dvo *intel_dvo =3D enc_to_dvo(encoder);
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config-
> >hw.adjusted_mode;
> -	const struct drm_display_mode *fixed_mode =3D
> -		intel_panel_fixed_mode(intel_dvo->attached_connector,
> adjusted_mode);
> +	int ret;
>=20
>  	/*
>  	 * If we have timings from the BIOS for the panel, put them in @@ -
> 258,13 +256,9 @@ static int intel_dvo_compute_config(struct intel_encoder
> *encoder,
>  	 * with the panel scaling set up to source from the H/VDisplay
>  	 * of the original mode.
>  	 */
> -	if (fixed_mode) {
> -		int ret;
> -
> -		ret =3D intel_panel_compute_config(connector, adjusted_mode);
> -		if (ret)
> -			return ret;
> -	}
> +	ret =3D intel_panel_compute_config(connector, adjusted_mode);
> +	if (ret)
> +		return ret;
>=20
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
> --
> 2.45.2

