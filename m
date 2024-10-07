Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DCF9938DD
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 23:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE71D10E428;
	Mon,  7 Oct 2024 21:16:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NttO52rH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A7A310E428;
 Mon,  7 Oct 2024 21:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728335803; x=1759871803;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CdNqoyYAG5zUCpxSMEnqOu60hdTnZdcbdP5dMgIux6Q=;
 b=NttO52rHmqpJZFL8Es9iG4Oc1omxGlmVyAO8nDtK7EPNEKA3otxav+gH
 yGIa5Zsc9AdmT5hsOY16pBKPb5QoPGiTkotmdcupdvELajGmMzgW9yr8g
 W1tAS+lXMXfBQlCaqegXPsN8sQcnPx9HlN3leazgB2zAxmN5S5foS2plw
 kKsDv1rUtSjR8G6qpDtqlGmUV759VpXJyEcpAc4fScOSb+ucY9bO1NVP5
 LkAMKGXC8R+SsqL+RcTGqMFdHx2pSYBCGkzN6dh10l3OpBPnfiVxpvEBA
 DTx3UHFbTBBOc3cubUfnbjU6OZBrI67dsGOOQTs4nedkfxKb/dE2deeTY w==;
X-CSE-ConnectionGUID: 05kembD4QLKgGe1DOyWZig==
X-CSE-MsgGUID: P21NGdz3Sk68sVngTQqWdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27640894"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27640894"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 14:16:42 -0700
X-CSE-ConnectionGUID: CFqm3OYfQ1Cw87j8/eNOFA==
X-CSE-MsgGUID: 9tpiIAfQTV68NIJUpJXNhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75280135"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 14:16:42 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:16:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:16:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 14:16:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 14:16:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 14:16:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H6TPIxCP+L+nRUBaKGCbOuBjvK+967AGRzObzKkD9V9mHDb36D9FZpY78q1I/C81rHCyHZtK0aw8JiQM8f62K2OSvTY+rZRYlb9fAcBr5joDw50SU/c5bbrenWa6nVR20m7EVsxpSrEYgsGwagmzFspzbC4YJOqkypYG3SZtkQtNDxpuRA9o6hGzDUU/mzXuW1/PiUnBO/mZs58ZobgnGCHJjoXpQ8sH29ETzPKUm7Ax1RkKoHuTExIMXiW+FRwYMl1pjNE/6IbvXpP24NyeF7At2OFfhAWchxSw8e0gRvl4GDu1krk7+/mULgf3ug4acd0npmMtNtBNoLSe3SvR3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P4m+9KaFdhse8ZhJcRhLxENvaMGzbgnPpBAIpUJL7jE=;
 b=mFnk7NFKujeb0toy/qWR5ldPFwi48kwo2IqUk3+SRzypxA06hst0MfMbha0ZxfZ0uD2PHIHxTDfS7rozw6ZB4lU6CGgVa0JCoE8Oi9RDrkYr4r3ZAFna8TiSJZfehqa/dJ/j5fyrgVh/aDmiafTii3zgg3BkI/2EAY7Ay3rJwFbWK3E7Dxjzr3R2+IQrvykafhLgbzMphB5G67Td0QVDv0g0IyYW3P0Sxh52TNS6Ki7ojnl+T8FlbFtm3G7bC2rAg74emHLyhl6/oa0GCrF82XOPqZm68mxpe59dp+p1ACE5TwQ2+ILTbMadkj9WKs0sWcpk2zcLoJi9GNXNkxaYGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by DS7PR11MB7691.namprd11.prod.outlook.com (2603:10b6:8:e4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 21:16:38 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 21:16:38 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 14/31] drm/i915/display: Move resume sequences to
 intel_display_driver
Thread-Topic: [PATCH 14/31] drm/i915/display: Move resume sequences to
 intel_display_driver
Thread-Index: AQHbDsJ2DeX0Q3JfHU2LMPiotkdxAbJ73ncw
Date: Mon, 7 Oct 2024 21:16:38 +0000
Message-ID: <BL1PR11MB54459471058B36090762308DE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-15-rodrigo.vivi@intel.com>
In-Reply-To: <20240924204222.246862-15-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|DS7PR11MB7691:EE_
x-ms-office365-filtering-correlation-id: b24a79aa-691f-447d-fb3a-08dce71554c3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ymMcPn76IE3WnLI9+eIt9E9IOW2bu5IrrubYga4sveKbl0nBskBgtFUfDUyz?=
 =?us-ascii?Q?coK+hGiQdGabcWbxnbOFGYukz8vAlfr1vxBJJXMAvLjH0cmdeMTQIMKVrbjF?=
 =?us-ascii?Q?ZZJWmtlnmkwGLKSEFfdRdqFCWKc23js6m9N902zirjVkxo+HQNcrbhdDIEtF?=
 =?us-ascii?Q?TiaeL/2AVKIuoVTe+hAjngxWmEwmXXc9R/eerG7PNqXLHdEcatTZkpwLzW1M?=
 =?us-ascii?Q?sn45iXZkldvu519OqaW6T+F5uSMDxfskb5eZqItoIEeZrXKDLoJwC3hmjq6q?=
 =?us-ascii?Q?Mu5yffZysdKhNhgkOSIoLNmza43eogPPGM0IQhWfQO3tq3rIkD2HJsSr3Sdp?=
 =?us-ascii?Q?Jq26xmm/JV/muhsKEGrIbNemQn7B2x8iE686WUjjp7h+0J6KdenTnzQeAKba?=
 =?us-ascii?Q?OTOcCyzFAIrANB61hJMbj3wdI06PKjK+bxJ3+ps7Wt5O8FjlFyC8ibIs6rrv?=
 =?us-ascii?Q?PG9C9CiuB3XdQkkrmfxhF785X2w9g4J/bl4x7oLcx+kjQBTzjgXJk28neP+J?=
 =?us-ascii?Q?Lj8xujmJNsVA1bxVN4OnlnjD5VtAQrngxmcgHaEemcJKy4O1vj6xbT8xsaWc?=
 =?us-ascii?Q?whkC1ZOCjyYnrZO6pE2AK99L12VaOkVCRPq1JkFRwnuuT4ArRJPvzJgiL+9g?=
 =?us-ascii?Q?6mi408rQ23tOBi8jw09Plz6O6Cco8rYZrccjp4c8C+MpFaH1N1xOar6Luwg5?=
 =?us-ascii?Q?HtyrJROsKPlzIsqGv64yaMkK9tAA3siBcX0RB8fHyisGjv+aGqjdQHIJGkQP?=
 =?us-ascii?Q?VWGq4zWviCN0J8TILl4MN/vmMfDWEpxgVqMLHkOfBg5hr3Qm+vTW/CZWhXFf?=
 =?us-ascii?Q?RqbqvgMP4BC3IfN3e58PH4+CZ+tCwPJIEu3LiXgApRSvF2c3RiAo2T1Ixg9z?=
 =?us-ascii?Q?ePUgCfbLMSSYU/Xk0xcGi0xuFE3rTeWLXlHNKfJ+qEj/XYEH81wIdTVqtxRV?=
 =?us-ascii?Q?Ctx5v7RNdDf6MJAdlMem+SG4vbQ2P31RX+tXu7W+MCB2Rfvn8RgIuFmthtBG?=
 =?us-ascii?Q?nL65NsXdOhb4i0gAnxWyQw2std74XJI81NHnQkL29ORHGNkZfJUm8mPbpuRf?=
 =?us-ascii?Q?cOjyqwLMLw/tmuRPDdvLMXRyUEeWUeSYL6yC2XwUjqJ/r/F5kdK9+LvTG+f9?=
 =?us-ascii?Q?AJiX9iHoX7CWTLyXRrI9o7iGwKTzc162rhUTDrxwp6yVp0XJB8rO2Z5YhNy1?=
 =?us-ascii?Q?hjS3VxZUyxQu/5vpV9dUQYbPMVaXLY2Qjli4xR6rO3TK0lUd+2/65bwmkZO6?=
 =?us-ascii?Q?jvfGgjnrXzAxgzudljfHRy2BT3I1pOwBQOKA0WaQx9AvLi3buwqdQfka5fL1?=
 =?us-ascii?Q?nRFlOUEvSPBKgUGxzGtsACbNgG9Kge3X9q269XkPUeWHRg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?N4WOqPyEd+XdoCMG3cbJY4Phk7o0hmbcgHTu6I4iyrHG4NkH/bw0UqQzYEIj?=
 =?us-ascii?Q?khdMwBuLEkkoQ5orGXJTYr720KI5t3kELeE9/0anIggzkFNmRcVb7aATSW/i?=
 =?us-ascii?Q?ocyMJUs7P6GJ100wp6wxqi73XpSRWwgUCAgr/zYD+S4lqbkXHz2NwSWY4moG?=
 =?us-ascii?Q?H/SEJuLBr8wV59AJT1abHsX6tyz9ADS8FAIiSwwcs5WIAXCjfPTHhC/zDx6s?=
 =?us-ascii?Q?ki5Z1iKbfUiN32qzMbfJsp2Vw5I0OgKavZJUdpJO/ursz9v+12954lfciVXh?=
 =?us-ascii?Q?qOqMxPNcZYuU/SNS1f0MJsZpJu4JqVfry/XTPFe5v5U77lxaDneWSh6ZK4cV?=
 =?us-ascii?Q?3sbm+/7fYgEPXRtlVDVhHA9eRZhEZQTbRk/sZTCbRkziKfkpshtm8x1oTucN?=
 =?us-ascii?Q?SMuWUbQQVTivZgP3kiU0toAEs74lEY5nAdwavkPkwdlssTg5/vmYvecHvs9+?=
 =?us-ascii?Q?ljknGBVbx44gfCIjZc4mXgIKGuhY+iAWFqj7cMpgLGHvtP7QRoluz+ojsBfc?=
 =?us-ascii?Q?yMricz7s1e/uiw0Pr0akBu1Stu8FcZLYBctdVaaRhbOqHKwG+5LEKFgygi6G?=
 =?us-ascii?Q?C/qzIBxkJjCPwsSz2auaMujyxfGUGAZ1GiG3d2PsFIytO5H6AGtgzYFQ7deO?=
 =?us-ascii?Q?tp6z7SiCykNB8xh7aJY9MRL8j+gwjp1PEzefgNKy37dR/KpJexhP8MbiGfHY?=
 =?us-ascii?Q?WJVRb5BvGpF1bXPhXf95i72iZaA7CWyG2lbd/bJwOOaHBj0wFN9qyPQMJVrp?=
 =?us-ascii?Q?EQHQn/9fFcpwUIs1gbF2vlSAVw2TLwQ/ET0JauGG8ToXpYQF8T7vaMysGgM+?=
 =?us-ascii?Q?FenOgpZPqBED92BXYlk3qa8iwMyW03K0trZ2vt/yQvx9D6SJzwZ0o/geab/h?=
 =?us-ascii?Q?4GiCJqBjdLWDoxeI5ijwr3obt45DiSsWHzxi+UvNk2jaa/lyUWKjLape0jc+?=
 =?us-ascii?Q?5NamPgIqwcG2Hr11QmGYsEeWG+V2c9yQTYmBCVIQdYasM70D+MH8SjE0SXPH?=
 =?us-ascii?Q?vS3nk2h33tObjsAcUdFX1fYYNp40b0F6ba0RLugv+q97PC5AV9InF5Ss+6FL?=
 =?us-ascii?Q?ORVt6qfAcvFNmbvcc+iLYThgsMv1AtOsQH4a5wccnkAO1+97wS/UFnIJ79cv?=
 =?us-ascii?Q?GB+cGikkrpW19CEZcmEc6hIQEaNrnq8O5nphtGMRSyhwv/MZreNPiy3dFMpX?=
 =?us-ascii?Q?JjXtBpm6OiAUyWLiDxx41YvJrRW4MsLv7ICDEdP3ymFRb2yOZ4pExyuZvDbl?=
 =?us-ascii?Q?WtRR9i1dcac4TqtTHqu+reg+OaBsCvZu13bHE1+yGzrzu+AyqYdHAUhgbwT2?=
 =?us-ascii?Q?duZKoVi+hceHJO2oxvHEWISxU/t0X8GbhUq+UuNnPzYvCU89hViiZeBo8v7K?=
 =?us-ascii?Q?aMGQRzgi83eMm+4ubc9mHbO/X8bJ7sU1jIC/2nZDmIMQeIaSfDixr8VVgSU+?=
 =?us-ascii?Q?I3o+ukGPUh6l8fx5QbtA3cT436oGbAHh4YOEYLtJOLDUAu1eKFyPEwwHQph6?=
 =?us-ascii?Q?sdqtDAsjsL50KTrWwhwyTVEd/SQI4Bxissejypbyvq8oIL64/ApBKLEbbfYw?=
 =?us-ascii?Q?gU4LlrdTkMFtQJR/15sKQLEWUpmrhvA37o/A+pHgTiXniA/x/60KcERt8Ini?=
 =?us-ascii?Q?Bg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b24a79aa-691f-447d-fb3a-08dce71554c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 21:16:38.2127 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wpYTLlY/0CpfFgXXc8WKPT3sW1maaw2JOEdPrKLLwsquArU3afkKzy1oT83sntA2HEPy9y1QY9ibilALBmAcFLkxPruWQgNb6D0aB5NMlLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7691
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Tuesday, September 24, 2024 1:36 PM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com=
>
Subject: [PATCH 14/31] drm/i915/display: Move resume sequences to intel_dis=
play_driver
>=20
> The goal is to reconcile the Xe and i915 PM functions.
> Continue by moving the display sequences related to system
> resume from i915_drv towards intel_display_driver.
>=20
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   | 25 +++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  2 ++
>  drivers/gpu/drm/i915/i915_driver.c            | 17 ++-----------
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        |  4 +++
>  4 files changed, 33 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index f509ed1503c1..2a171cb2613a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -53,6 +53,7 @@
>  #include "intel_modeset_setup.h"
>  #include "intel_opregion.h"
>  #include "intel_overlay.h"
> +#include "intel_pch_refclk.h"
>  #include "intel_plane_initial.h"
>  #include "intel_pmdemand.h"
>  #include "intel_pps.h"
> @@ -711,6 +712,30 @@ void intel_display_driver_suspend_noggtt(struct inte=
l_display *display, bool s2i
>  	intel_dmc_suspend(display);
>  }
> =20
> +void intel_display_driver_resume_noirq(struct drm_i915_private *i915)
> +{
> +	struct intel_display *display =3D &i915->display;
> +
> +	/* Must be called after GGTT is resumed. */
> +	intel_dpt_resume(i915);
> +
> +	intel_dmc_resume(display);
> +
> +	intel_vga_redisable(display);
> +
> +	intel_gmbus_reset(i915);
> +
> +	intel_pps_unlock_regs_wa(display);
> +
> +	intel_init_pch_refclk(i915);
> +}
> +
> +void intel_display_driver_resume_nogem(struct intel_display *display)
> +{
> +	if (HAS_DISPLAY(display))
> +		drm_mode_config_reset(display->drm);
> +}
> +
>  int
>  __intel_display_driver_resume(struct drm_i915_private *i915,
>  			      struct drm_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 179fbb86923a..dec93f2f37c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -29,6 +29,8 @@ int intel_display_driver_suspend(struct drm_i915_privat=
e *i915);
>  void intel_display_driver_suspend_noirq(struct drm_i915_private *i915);
>  void intel_display_driver_suspend_noggtt(struct intel_display *display, =
bool s2idle);
>  void intel_display_driver_resume(struct drm_i915_private *i915);
> +void intel_display_driver_resume_noirq(struct drm_i915_private *i915);
> +void intel_display_driver_resume_nogem(struct intel_display *display);
>  void intel_display_driver_shutdown(struct drm_i915_private *i915);
>  void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
>  void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 12639fa232b3..c9df361f898f 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -56,7 +56,6 @@
>  #include "display/intel_encoder.h"
>  #include "display/intel_hotplug.h"
>  #include "display/intel_overlay.h"
> -#include "display/intel_pch_refclk.h"
>  #include "display/intel_pps.h"
>  #include "display/intel_sprite_uapi.h"
>  #include "display/intel_vga.h"
> @@ -1115,20 +1114,9 @@ static int i915_drm_resume(struct drm_device *dev)
>  		if (GRAPHICS_VER(gt->i915) >=3D 8)
>  			setup_private_pat(gt);
> =20
> -	/* Must be called after GGTT is resumed. */
> -	intel_dpt_resume(dev_priv);
> -
> -	intel_dmc_resume(display);
> -
>  	i9xx_display_sr_restore(dev_priv);
> =20
> -	intel_vga_redisable(display);
> -
> -	intel_gmbus_reset(dev_priv);
> -
> -	intel_pps_unlock_regs_wa(display);
> -
> -	intel_init_pch_refclk(dev_priv);
> +	intel_display_driver_resume_noirq(dev_priv);
> =20
>  	/*
>  	 * Interrupts have to be enabled before any batches are run. If not the
> @@ -1142,8 +1130,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	 */
>  	intel_irq_resume(dev_priv);
> =20
> -	if (HAS_DISPLAY(dev_priv))
> -		drm_mode_config_reset(dev);
> +	intel_display_driver_resume_nogem(display);
> =20
>  	i915_gem_resume(dev_priv);
> =20
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/=
display/xe_fb_pin.c
> index 49dc91bdbcb0..c26a47dac332 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -412,3 +412,7 @@ u64 intel_dpt_offset(struct i915_vma *dpt_vma)
>  void intel_dpt_suspend(struct xe_device *xe)
>  {
>  }
> +
> +void intel_dpt_resume(struct xe_device *xe)
> +{
> +}

See my note on patch 8.  Otherwise:

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> --=20
> 2.46.0
>=20
>=20
