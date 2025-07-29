Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAECB14714
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 06:16:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61FFA10E1C2;
	Tue, 29 Jul 2025 04:16:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fCLI96lJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA8AC10E1C2;
 Tue, 29 Jul 2025 04:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753762593; x=1785298593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S5OM1Kh8Rf4ts1ueOWyU7NfItOHNhjgj5u9H6orc5/M=;
 b=fCLI96lJHspAA16PLEoykVWbnASTQhwrxT6KM2Kh5v/GqDlNRuCRv8dO
 JkM7cERz2SK0N48g9F90u/fcQyhgiu6gr5rvt3mmUz4MKYegDMxWDnXaf
 ghJ3Ka0ZL76AvdvHkXvOz7tE+SAwtTSZu3d9Z4HG+cSFrziZlui3ZZTEP
 cK+h3DKSXN7PtMxFYkhEHtz0hlkcSxnuR3EKFmVQQPi3nkihBB5ToG9Y1
 6Mug1Znw3RAtCrd/udrUl54eldXZNAkr0TW9WkBDfg5Vfe0z5eRGs25Vr
 Mkap6rd9FmTWvIpFPn7ctZbJVzn8xqhmQVpiUhV7ME6IRQHH3Mc9wZWw2 w==;
X-CSE-ConnectionGUID: AXALLX5CQaGqayRqsMNpaA==
X-CSE-MsgGUID: nA8fe3+6QXiAKhX2+osDAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="59847537"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="59847537"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 21:16:33 -0700
X-CSE-ConnectionGUID: dh/ufTAsRJ2pB+NtPWytGg==
X-CSE-MsgGUID: DsW+2+rdSHy6TtDjjfkCoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="199735358"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 21:16:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 21:16:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 28 Jul 2025 21:16:31 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 28 Jul 2025 21:16:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FTrpOdFXTma5NOUrDligHIwJuLgAL+Hw41PE/jWcdTCjfseZ8wtZwiXS2eseEV0gp80ZyCXSeofgKKGFXxSHC/V5nGdc4+AzDPeEku99dkVhA4ceb1FSFRMDYGtvVCRJYBda1UQNdLg44EI+W0Tdde4BEWRh+oWFfFZzePdudedG8kGoRfznIyfQBF94qb9UvfYLZQ+tuXsNwdkt3v6++NMNmqp9z4caNKtCEz+HWmXcuIJXkzUN5R8lghbkwUDlo0R2SERo8qTjkhM7NvWGDIPDq/JXmgNkVxutM3MjKlugItGUUP3YeLxkVmZKM02R0jREiAfVi9CVie+TlmHXWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uvygEAx1kRxzBdClab4k2vLRu/Odl7FaH0Geixc8YS0=;
 b=pqw/JQA0+n0TZqj8ughamEmLPidlx9KnWs97zNUH+ATm6UdFHGN3NUePmuMpW02ZVywxTm/BDEI2w9jPUgG8x6ATRLB8wjk174OSP+aj1P9+xjQmTR/1VVqPjOAcvZZlnHXgjQusnPV1yLpLBPDy2jM684lEtD5aOZRd91Z1v+g0KiJQg5Ug7TteFvJJ6Oi9kNsw7MUDSscSgbdLIjx2l3fEox2YoaEQ/1/o4jAzqNAhULDJNwKdh1UUQiOHIN4rbtl+EAbjrlSppfhCKpkRhHbc3hf8gP0x0yVD7pn0KJEdQWoboNTyjDEX26jPMNBh6MOfc1lvtmOKsfRUnaWmuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW6PR11MB8392.namprd11.prod.outlook.com
 (2603:10b6:303:23a::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.26; Tue, 29 Jul
 2025 04:16:24 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::76e3:aa2a:a205:819f%7]) with mapi id 15.20.8964.023; Tue, 29 Jul 2025
 04:16:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/vbt: Add eDP Data Overrride field in VBT
Thread-Topic: [PATCH 1/3] drm/i915/vbt: Add eDP Data Overrride field in VBT
Thread-Index: AQHb/SubVAy/VUa8Wk+85JdbGTx8hrRHgIiAgAECayA=
Date: Tue, 29 Jul 2025 04:16:24 +0000
Message-ID: <DM3PPF208195D8D7708315F05A53959534BE325A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250725061548.2704697-1-suraj.kandpal@intel.com>
 <20250725061548.2704697-2-suraj.kandpal@intel.com>
 <a5f45f92cf10c04072341750c60094f7c11f8469@intel.com>
In-Reply-To: <a5f45f92cf10c04072341750c60094f7c11f8469@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW6PR11MB8392:EE_
x-ms-office365-filtering-correlation-id: 48f0d238-ccf9-46bc-14c5-08ddce56ae68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?I+xIg4kMCipLvcKHWSZwp3Dq+Bp/EF9YYUIS/7Se7HaQWe9DFqQTMlzbIKfk?=
 =?us-ascii?Q?+O9AiIC4LKKb9vTj9Vp/7X8Sj4rVkLz+5ybxMz70caUTN3efXfyRb9JOSIQb?=
 =?us-ascii?Q?WC03ohzjfK92bpQM12fvMxL29E5EJk4/RqWPpyr/a2HwrvYSZ1YDY0afamt2?=
 =?us-ascii?Q?NgajI494MNeCAgACKtks774LEvhOv5LyHJq3hyWPDbDWqH5ltvXeJU5HxHwz?=
 =?us-ascii?Q?OVlTCEvYtv77/TMWtAQ6Ak1ig8V9fhC+cgAsiWIyOV0JUYiZWhSuQPe5YmIf?=
 =?us-ascii?Q?40CFn4paGwlwMzA7UEAuaQJawNRsbTkpMWwFoTbU7yshQm3uEU/v/kmeR29Y?=
 =?us-ascii?Q?EqMad7amu3QipIjQTUId/f/FPQZ/gtTknaVgrnb/Pi/Tii9g61Iejidj/QfO?=
 =?us-ascii?Q?vTEuf8tFvribiRqANh4dSCgk4dQHPdxpb+t5mCll5ij1lPnsC8Pn2Xpp62s7?=
 =?us-ascii?Q?Ygy9RgrZW7vw2cuLK0B1xY0WkGsuAZ3liGIiNK6c1ZxwNM11N25SN4WHQ0Qa?=
 =?us-ascii?Q?EZvwS+yjmQrjUBSQT6E/h03FlDUI8EcaPKl2lmI1jGUyiIGSBBKWk92ZO95b?=
 =?us-ascii?Q?4KFmp/s3xsfFBSm15evId5KOonmlt2wxebgQyo5MLkqudogQZrFfCluKEiFj?=
 =?us-ascii?Q?mDN/j6sSXUzyPyLStWnE5Kfka4EkY+MqzoTC5FNWhw4NIiWgwzx2jpGsoGta?=
 =?us-ascii?Q?xf77/727OTOfAd0qGN9uuSmA08o8cdZ33IZM/ZJGamG84K1fj8dPW51gAVh+?=
 =?us-ascii?Q?kqMF9/JKBuT2Bu5nKnQXg2hFa9GmaD4w9175JWNC2BcY3GSs1CBcBZH/J5zf?=
 =?us-ascii?Q?uGsrECcxGcF4Q0bfyMjf7VSzM+Ea5iVWGvv45Go+d5uoYELhHe6vxjw5M0bb?=
 =?us-ascii?Q?ZE68Cj3XphzBKwvfoXnzoZm6XlPqoUrY4NkdGOS92dm9zdtS3HMPobae17al?=
 =?us-ascii?Q?yS53eNoDstceLbJeJAsyP82gXBuOVqE+NVcpOw/PmB5r3c2DRBlOMXhT2Qnz?=
 =?us-ascii?Q?qqkPdCSsgRzS6jHrO0UuerrRPbYpfIh1PmYKXKTzkau/GcKHEW/0asNYsJum?=
 =?us-ascii?Q?9fSVaRn15M/F1EN69/lsYUchl8GSQPdUQ+HMJRaZCDSPHaLIEsp9PqFcohii?=
 =?us-ascii?Q?az07woxJaY2x4kkyPeTgSgpiUTq/ZKX8HGpPzLHWUeJ2lskT+X2Iocjs2HWA?=
 =?us-ascii?Q?MgYY8ajF2nu91z8pgLg+RYRUMCEzueDiq78eB5RI2jL1YOyIosKHX3twlLcb?=
 =?us-ascii?Q?sKr2RpvajI4NEvqYx/+w2axF7adXbzfLLmDDMYtR8jtTVBkNyrE4TFzyRhHr?=
 =?us-ascii?Q?NbR+cNQf0B4GTOHyMklc3WN/qVhnPo9V7WuLItyM6V6Ury4NR9Nn5yPUT69y?=
 =?us-ascii?Q?eDp8kTEsbTTKzkZMT77u8q2xPmDaGcZddJxu+qZ6Qv1paTV9UHn4QYlvME1V?=
 =?us-ascii?Q?hrk7cYDWrpoF14NzGpPDHY+O0TX9iRTlLRkBmm/SzBjEKxQPztDLzQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?v6x+wEwpvBSJv8xcEJY3fn/5YbYxh7lMIcMGdFxnJMnIoRJCd1aF0R50st92?=
 =?us-ascii?Q?7lAsGQ0qPGiuHsFF5XctJZgyfguTdnU5w6TQ4zEkhgLfGijPYiQ60qsc2VT4?=
 =?us-ascii?Q?L3e0Cm3ddACIcmIOENdVYs/DPRBVV8c6xladzCM+h2XDCmE0Gh6NrATdEcGR?=
 =?us-ascii?Q?m/I2PRUtmIW7z+f5ObuZNb3ga3Yv5CqzFmbCYxYvkd+0gWTawH+SbO8dlVk8?=
 =?us-ascii?Q?mjjDmFdJrrrEo/t7JgJP86i87zGpaEzE08sVHjIGU7k/5M8SoYXmyFzLoedS?=
 =?us-ascii?Q?7HgOuj4Qd11YTt9vtgTDJB9pRMg2ZEkGUt19QEjeWh95/nT7T7sG1VYmb1wT?=
 =?us-ascii?Q?UGFAQE5IulEc3xJL82ZPxwgJ/BF61BtdBoC4wuIkoNhda1dAqo7O4llA8bYy?=
 =?us-ascii?Q?MGNVhfTXf0pIzIhvrG+yEO2ZBQbIDwFcXdaiUNRtyv7Xysr3t1NrZXgB5JMS?=
 =?us-ascii?Q?Iy+YVWY/EF0QyodVSp/UPHcrXGTTkuicORt7XQXhZqVDJv13qxTjbZ4qhAFJ?=
 =?us-ascii?Q?VEQcXZ2yBqaHOL3rEpzeO5C2Ky/kE1ophj6bjGMhVNp6y9USSeimz0ewYXTo?=
 =?us-ascii?Q?6AjeklHwsZZMk60G7/Ng/BmntK6D6l8lH28prggxCRFZv/3GVJ1ZLvmm2gmd?=
 =?us-ascii?Q?XbKt91B5sWUrRwzdAnemZskv4DYPWnaTg2EEjdDB2i40yE0OjQPCX9VO7O5E?=
 =?us-ascii?Q?u4fiic1ufGVfs20MbupZxy+Tv/yIY/jwha1aGoVjeQ5swCBnXqfkDr8P1hmg?=
 =?us-ascii?Q?BvpFontpH1b5ECHxacnQSKvaJDLHVLK1+Ni5xFWrva77wEOSkSXOSzEK2vFP?=
 =?us-ascii?Q?QFcSIlELXekw4zcxe3EFV7WIdHPpU/3PaScQpJ4P3+zhgNpNe6TDVwN4GB4z?=
 =?us-ascii?Q?RZ9S+4lVbKxAPawkPLU7tKhFh+5I/3CcgvaEitqadXfm/3m9edsKi3ePwHFT?=
 =?us-ascii?Q?D9ehhqhhHIg46HBlbwMYPZx4jWjqvEkIDLmPFnBAZ/ChcBTwlyS03/819Plr?=
 =?us-ascii?Q?KW0HexiaCqsUBlbhA4yYvp5ce7ETq4uQzxwzWcWyO2Bpj91wPf+hKGXF0+Xg?=
 =?us-ascii?Q?00sdJqM4TZgGuh+H/YOJmtXYEOmetyWY/T3TIRlIvv0pi2rzTt8Kp3KYYyOS?=
 =?us-ascii?Q?xOw+9SS4xth1WXdIYkTetloYP2gLesiaYM0hu5RpsIJb8aIRMeBzdiDxwm45?=
 =?us-ascii?Q?GdlVlwnqQtXW2URgTXXFaE6byef6tZta6+I2WcEIdxbK5jVsa94zuFuHp7qV?=
 =?us-ascii?Q?CTabcxv6YlZmfX9hAz1g+XdJ/XSR/CkWjw6HfjEFabiXABje+Q96VUJujFMw?=
 =?us-ascii?Q?FZ7VEZuCrfa0Tq1JJxtG3U6yNoYWeohGsOSSJ4+0jm/AW6JlZg4VnvOIhb4+?=
 =?us-ascii?Q?qyj+t4qS7DIbVXgvjw2O5xz8CfLoyUstJd+QNvVQXHeN9bkJBV3YQh4fUzkS?=
 =?us-ascii?Q?eVzKRa3X2u9xWeRDajT2DILORR6Xm/OL4287YrLVNP3cJmPIBr4XqSLx5clt?=
 =?us-ascii?Q?9cKIUygvo/nBtQXu6yRhYxZTwdDcpDdo7u1bsTC70kBbRMGCiuej2yiANUVW?=
 =?us-ascii?Q?yoN+Q2e2OfPWHF/Th1TzoFg53BweR/ZnxC933eGz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48f0d238-ccf9-46bc-14c5-08ddce56ae68
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2025 04:16:24.4524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pRA69prpZ/XMKQLrEagGYce1yamzUXjN3knGA7+gS27F6vo3a00Bn86zEKVhyxnfvRHbj6psM/i0c682x2i2BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8392
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, July 28, 2025 6:15 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 1/3] drm/i915/vbt: Add eDP Data Overrride field in VB=
T
>=20
> On Fri, 25 Jul 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Add a field which add the edp_data_override field VBT which gives us a
> > mask of rates which need to be skipped in favour of subsequent higher
> > rate.
>=20
> Please look into the grammar.

Sure will fix this

>=20
> > Bspec: 20124
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c     |  4 +++-
> >  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 ++++++++++++++++
> >  2 files changed, 19 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> > b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 9c268bed091d..8337ebe0f2c8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -2747,8 +2747,10 @@ static int child_device_expected_size(u16
> > version)  {
> >  	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
> >
> > -	if (version > 256)
> > +	if (version > 263)
> >  		return -ENOENT;
> > +	else if (version >=3D 263)
> > +		return 44;
> >  	else if (version >=3D 256)
> >  		return 40;
> >  	else if (version >=3D 216)
> > diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > index 92c04811aa28..8e29eeb01105 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> > @@ -437,6 +437,20 @@ enum vbt_gmbus_ddi {
> >  #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5	6
> >  #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20	7
> >
> > +/* EDP link rate 262+ */
>=20
> 263+ obviously?

Weird I could have sworn I wrote 263+ will fix this

>=20
> > +#define BDB_263_VBT_EDP_LINK_RATE_1_62		BIT(0)
> > +#define BDB_263_VBT_EDP_LINK_RATE_2_16		BIT(1)
> > +#define BDB_263_VBT_EDP_LINK_RATE_2_43		BIT(2)
> > +#define BDB_263_VBT_EDP_LINK_RATE_2_7		BIT(3)
> > +#define BDB_263_VBT_EDP_LINK_RATE_3_24		BIT(4)
> > +#define BDB_263_VBT_EDP_LINK_RATE_4_32		BIT(5)
> > +#define BDB_263_VBT_EDP_LINK_RATE_5_4		BIT(6)
> > +#define BDB_263_VBT_EDP_LINK_RATE_6_75		BIT(7)
> > +#define BDB_263_VBT_EDP_LINK_RATE_8_1		BIT(8)
> > +#define BDB_263_VBT_EDP_LINK_RATE_10		BIT(9)
> > +#define BDB_263_VBT_EDP_LINK_RATE_13_5		BIT(10)
> > +#define BDB_263_VBT_EDP_LINK_RATE_20		BIT(11)
>=20
> Please use BIT_U32() instead.
>=20

Sure=20

> > +
> >  /*
> >   * The child device config, aka the display device data structure, pro=
vides a
> >   * description of a port and its configuration on the platform.
> > @@ -547,6 +561,8 @@ struct child_device_config {
> >  	u8 dp_max_link_rate:3;					/* 216+ */
> >  	u8 dp_max_link_rate_reserved:5;				/*
> 216+ */
> >  	u8 efp_index;						/* 256+ */
> > +	u32 edp_data_override:5;				/* 263+ */
> > +	u32 edp_data_override_reserved:17;			/* 263+ */
>=20
> The patch was sent three times, and nobody noticed you define 12 bits for
> the values per spec, but here the bitfield is 5 bits? And 17+5 don't even=
 add
> up to 32 bits total. Neither 5 nor 17 are correct.

You are right this should have been 12 and 20 instead will fix this

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
>=20
> >  } __packed;
> >
> >  struct bdb_general_definitions {
>=20
> --
> Jani Nikula, Intel
