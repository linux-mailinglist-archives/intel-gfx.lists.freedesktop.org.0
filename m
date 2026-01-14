Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CDA9D1C956
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 06:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9725F10E39B;
	Wed, 14 Jan 2026 05:25:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c8tOdBhM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67F6410E127;
 Wed, 14 Jan 2026 05:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768368354; x=1799904354;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HbRjgnCqoolS74TjCgPHbjfiWaFz/n67CYSo8HrIaWk=;
 b=c8tOdBhME+19zAUkwPBPkGYLUgSQTsRi7OuJkgmcfr0rc8N1uMdq8eM1
 RmtbNo9O5QvQPXdOe7bK71sUMLZHLjnmMcKEou/g6MDW/5LHtrtYannf/
 bUq8jKGnwSoc8SGHS9wSz4ldimCeAHd9GYJ1eHfcilwpm9fDy30/6QLKV
 MjP94jKeV6yx9QwDoX+jmd2BigPDW2DBRpx5bpoAjlCSn2mccO9qikPga
 c4wpOJocd7or59QY3BnppSAfHf6R28jVsuDKQ004QiESRSw/6L0Qsu1vb
 xJGb3w5OwMvY9XBUOZBFtIZeq3y16wOuua3oP57XQcL1daGZfkoEPJtU4 A==;
X-CSE-ConnectionGUID: wQ32V6XYQuCgf4axhD9n6g==
X-CSE-MsgGUID: 2CvgvVfiTs6ySl3CZ5d7BA==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="80382135"
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="80382135"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 21:25:54 -0800
X-CSE-ConnectionGUID: 8Qo/FshqSFurH6PWtuhPxA==
X-CSE-MsgGUID: dQVLman3QLaDUrhmuN0pmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,224,1763452800"; d="scan'208";a="235830797"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 21:25:54 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 21:25:53 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 21:25:53 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.56) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 21:25:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZViVWHCF4RdXb+9bjAfga4RZazWDgT7FUouFmp+9+rsdMteC3StnZSblzu1VrET3YSWUBGt8mXJ1amxb9n+8YasHJRdt8N/OLPLDglxdJGqocMJ8GrT4NXfyMsZT1P9sKFzvy47L2VsPS0Qx5b4dY0ahaT/UNlVC4VZYxtNDmKCIMTrkbzA4ofAHc8UWb4S00wNYTtZGcDKItnG7ptFPk1p0Ni3dGY+MR9+R6/ZXeABX4HDZ+gQQMg2h3YtjoCmnUQ2vh8tUAxTaLDVqkZkf2Pze4VxJCdTd9bL4Br5hh3L6p20lgrwP/HgZlfV6rNedol5ALmEb06ecTOGQ7ck+jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2+Xb5o8/7j2A9JEObRzzXw/ZMJPdAdIMuUAFI5E4bw0=;
 b=zIxKo0z/nPQliSSfGOTZ4jPN77UMS/tj7irJdokRcTVJzxzy3ZVYFpeafI9wAhqxax/eXCVoi0Im/GaQ5c5Ln+hOmv1knlbqx6P3lLwFOfQ6TmYvOthNjgfkd3hR4tPIZ0jWWtLrZ6UvF219VqI17zviqM3HNElig82OHWuThwaeNqI11YOGkaZcBanQMKu2qFGOvQSqSqhMQdsFhAUzZNriyWyuIqDIlmPKS4HOoPBFGRGrTp/+3RmUyNOKHbnwUaUvptndWR7ZOlnjGzjl3ujHybQlCFdqY2aDs1mr6FuDGt1X5Z2ebPPgklgnnS2t4BqxDDahl6xSIyLqGTZyhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB6998.namprd11.prod.outlook.com
 (2603:10b6:510:222::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 05:25:50 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9499.003; Wed, 14 Jan 2026
 05:25:50 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state for port
 calculation
Thread-Topic: [PATCH v2 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state for
 port calculation
Thread-Index: AQHcb2nmh958LfSunEKV4sYxMU3yA7VEwPnQgAOywACACNm94A==
Date: Wed, 14 Jan 2026 05:25:49 +0000
Message-ID: <DM3PPF208195D8D32EFC6D9E9852C5D9ADEE38FA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-5-mika.kahola@intel.com>
 <IA3PR11MB8937D97F8D85DEAA1977839EE387A@IA3PR11MB8937.namprd11.prod.outlook.com>
 <aV-8ENon-SNGF36w@ideak-desk>
In-Reply-To: <aV-8ENon-SNGF36w@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB6998:EE_
x-ms-office365-filtering-correlation-id: c3608fd0-f6ab-49ae-74e4-08de532d6114
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?GAKGKDTtdouboQQTh3EBOqiGyAptkQFChkj5NRxLrosVhYxbNWpPd2ToynI1?=
 =?us-ascii?Q?KU6wx5QNbkm5x2g8FnziFC7rBl8vCfr/fx9e622evrzpJT23J2kXmh+AAjbd?=
 =?us-ascii?Q?4uWSiueEk0hdBSyfNlWQEeL0Yt4Nuy6sLiC0U/d/7u6dEd/vOD0sRnKHmuiE?=
 =?us-ascii?Q?pSjej1R6Tg8MlA91GCRkQNR9EK0bMLgpQa55Vg1mHYBewkMzrhBTKFYaXgEP?=
 =?us-ascii?Q?khFT/K/TLj8FwgW9MqQfbZ8tWmOzUhzhL+0lPw0PuKHE/NOmCH8+Np/9H0G7?=
 =?us-ascii?Q?of8Mdqvt8spl4HH/7j8rZVmUspi3f13lshrJX3oSJOskGbLDklqL6PTccYDW?=
 =?us-ascii?Q?Y8xo6jF/31ZJTGYz2lB6LISsfxN0r2khEvMr2/c1WviDNrqJoPjQnjx5y4og?=
 =?us-ascii?Q?TNfon8OACaBSUz8YDaliafqLOaCNYPlzJRgWzRh3zO5noj9dXAGP4vmmvKob?=
 =?us-ascii?Q?qbkDTVIOd86Xjq/csL4TFX+ykZDZSrYvGc06MJ93xkr42GqbaiH0zzqFdZWz?=
 =?us-ascii?Q?fSFBmaiaOKKqEgaVoiZuT/oglydNQicf+owQJKussNFleqED+Q/apXP/iUP1?=
 =?us-ascii?Q?Q7953ZPAevXmfe793W45qtKSBfxS96rYOTDmqNVRiW7cG3JqCBLjUIcYRela?=
 =?us-ascii?Q?aKrTsvyDnIBnhxqnh/oTklC63lmlH9sReDxObzf5mkHm9/gSCwk+Dln+SlyZ?=
 =?us-ascii?Q?j+zsDIcS4vGt1EKIl9sSDTq4cZo3EC02rjWBhOan6AG66u8k1EY3MI5juk3D?=
 =?us-ascii?Q?Zm/C1hxvGu8Sx0kCOhtIjKELR+wepNEdx85dEtsUSFa4ZRrMD+D++Q1fEK41?=
 =?us-ascii?Q?AlBeSieHB3odEnuEOKv7+tOwI4RzZPnW1MmvI0SYiZW0yFYVEJaGlGyTyOc2?=
 =?us-ascii?Q?E/6TYJVtM08fsuK+NPOi5+n0nRgRjgUm1QNPZ1URFf3Q2Qa1vEr5oqWwcIhh?=
 =?us-ascii?Q?V3QI+eXCoNaXB64D7rHGocltDyFkVgtbpIgXdmdEvPjPR8bkNiWCgMFC3I1Q?=
 =?us-ascii?Q?TVFa+xYz2kPkeq+zGtXGLCKEI1QP0z7KYCB9GZPt2k4zToANI5lR3N9ehenu?=
 =?us-ascii?Q?q65RGrVMDJVpZv8kpfVNpnq1Mc3XoPJkSy+DWSj1hJOXv9HfW/NxqJz3IwP2?=
 =?us-ascii?Q?4LebvgE93aPvJARTqD17jPHyPW3KODoT6Zn0cI0tBrcjIKp7JJCLbBlfCQPN?=
 =?us-ascii?Q?2/tLqpj04AHu0vxhFkFmWcaha/DpRDP1CeIazXQFslXTjhbh3iItv1MIz+PV?=
 =?us-ascii?Q?6zn9Lb34u4DMeskJ7okxkXCnqDEJeB+7Jbv1+sdjWAcQ7aw4EHeTwzP0ADqr?=
 =?us-ascii?Q?kNjNgtYK0535M6SNwFAHd9Ga80QpDfInu5z8ccuZxpRLwthqRO/aveMxUcIQ?=
 =?us-ascii?Q?e7F+pXHjbAv3/uTWhmlxPr9HEB0wqHWCALW6u4VcRlvGg7mNv7o58q7tUISA?=
 =?us-ascii?Q?hJR+YTtkNBYBeAaZ2f6USUjtxfvWv93kvLCDEWY9ht6orPRdC7T4m8GDpLmW?=
 =?us-ascii?Q?1yxEJ3GJQ+MmAkR2drDzNC5+1HE6fvEQsNX/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xOP+OwcDZ1+uk5myO338txEUpVpM2KRFbPM5biEC/ggrZfNKW+ZQQsaqmy4q?=
 =?us-ascii?Q?y8xz37DTZ3ISDSXn48BnzNmc53xUz91zHgbFcKJfJElMuuAcxCik3+1uqiK0?=
 =?us-ascii?Q?jJddq1ePUr/EJ+XAvKLfrxi6aGk3b8QiLW2ZMu5WCw/QCnsg2A7AfKP8/SVO?=
 =?us-ascii?Q?lX50JTXzgBFFlou1tDTfPqzxmH2XlSD+XFt9B085dlYTuCh/8ushokkC02ER?=
 =?us-ascii?Q?eTtyeF7zLIvxnrC/6S2kjQaG32Gkwu0wLUo4EJQ76gX6680Zz90d4USgQMxp?=
 =?us-ascii?Q?zJw/juaAFr8mtEU5VzD2fzwkXTBEIc668UQgXo/iIrECdftNQuo6CdbwG4y5?=
 =?us-ascii?Q?O5xn2KxWO8e+OtSUb8jlfiRdrQJg88Y423bBu1Gel4QntlKH9jXh6gA3xXyP?=
 =?us-ascii?Q?bjew/zJLUvP0zt8cHQVyDbteDDR0wiMr6nIzWMgw98gcL5Trnf+pPs4x4NyK?=
 =?us-ascii?Q?BkGfD1WTPOuNyfGaYwEWSTMzyru/OVhAXBo8CDcpuqQbN2soRTXxTBCjzmwu?=
 =?us-ascii?Q?xUAxXynzWZbLFnvEs/xybz0CLHHjZBM3JXhNL6CP9QRHMbohyVogpXzvhXSC?=
 =?us-ascii?Q?ZJVg9LdrxYCC5TPvrZmYOVBhRoP6mFdFwQHx17nBIfAileQg4/a+iWSpoggc?=
 =?us-ascii?Q?7KfUG8++RKWTPiM8CKLnBIZxBbm5SxQ1uk8NLRPYP7+xir3/pUeoSd8LBXy0?=
 =?us-ascii?Q?Kp7ZeMv4GadnHMGrKaUfUvUIqjnIC/uO5/OE9hR3RivQkME0M3otnpEbb/lh?=
 =?us-ascii?Q?E+pN1AGeyiFn2V1b61E+rcUH9KWp5Eq7Uo3IUfK35imhYqWKmNP/vhP8/CFv?=
 =?us-ascii?Q?Nk7iHqsbGS6bDDCXPhvj/NuIRIKBCN6jG1VGXMmVPk/QmYf0xvENyHpPgefD?=
 =?us-ascii?Q?ScBWei5QABo2oHBnB3RDHUBV/ABM0kP7dQBS1QHjY0rcUt2/7Uji0OSBkhw0?=
 =?us-ascii?Q?5y9dwfcTolo8efMVHkbYKGfr4gcOS83v3wn/V33HBs/cIXecxIH+F9t68WEd?=
 =?us-ascii?Q?jV5w4kCpADVoW/elF5wKg5P8X0kYmqExmXtKh065EH16aGcFyb3PFIklHKm3?=
 =?us-ascii?Q?+ghfa4QazN98q4v+UJitWE7PG3Px6+4eFy11/o5xIKkAtss1pfNzNxssxfy6?=
 =?us-ascii?Q?xlIB+KkWfqvRSV6mx/YtxJYsJer1jFADfVI8Ckvdlysp0tuOTgK3bbmYDhV/?=
 =?us-ascii?Q?T9LLMt/ULwh0BQwYUs2q2h1WKvOtfcpjp7Xgbe/2KZqzS2DP3eRcQENgQ7Bp?=
 =?us-ascii?Q?/PXoRfVsfLgSQYrB2Hy3ztHY9mgfJMmvvI9+bpi5MTBFRat8IMFoa3nHTOIZ?=
 =?us-ascii?Q?l5LxaGa5TLgnsFpmPVJrk/mjwjmgJdCwWkpDhn7eRuOyu2sY+Amg3I+CLyrS?=
 =?us-ascii?Q?tcY7z218JTIYMAD4aqlfFd6cKUe/TeEGeZipBP02iXua/+SROFQ6Rvj4+6II?=
 =?us-ascii?Q?eQlQxUQXo78Pl9IEbr6t4HhVo7qtyo49/m7UhpLXAkr2iGAkm2EBxBMZsNCz?=
 =?us-ascii?Q?fqZ3UHPGsy46yxS0JfJUF9bgKe+kd3M3hD8ooAXS9kq+71tZzta+IjvTOQYH?=
 =?us-ascii?Q?/uJDpsx5xoeac3eJEuZJqq305i6OiJdTjnAWLHu5dinkE/nexIRyUBQfXbgV?=
 =?us-ascii?Q?AcCJo4dGuOqCCCMm7qD5x6Cftt4kUN+wEFRMIAWlHKGgCls9Z5crBUWbXtfn?=
 =?us-ascii?Q?s4XpQyYPsWkyXFIZfNlfymgfEgT+fXbz8wa6S/3cv8ikq/PPK7Wvt5IIfiHp?=
 =?us-ascii?Q?4lllPd1ZSw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3608fd0-f6ab-49ae-74e4-08de532d6114
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 05:25:50.0057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oTswUaPuNrPBT+3kcWDXsUtkRiS3tjdeBUeUiHUxyHEdL+J5hnzvWwdDqzOlz0My69Bc2VQ71CB0HP03TGBSsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6998
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

> Subject: Re: [PATCH v2 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state for=
 port
> calculation
>=20
> On Tue, Jan 06, 2026 at 05:49:15AM +0000, Kandpal, Suraj wrote:
> > > Subject: [PATCH v2 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state
> > > for port calculation ...
> > >
> > > @@ -1748,12 +1746,10 @@ intel_lt_phy_calc_hdmi_port_clock(const
> > > struct intel_crtc_state *crtc_state) }
> > >
> > >  int
> > > -intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
> > > -			     const struct intel_crtc_state *crtc_state)
> > > +intel_lt_phy_calc_port_clock(struct intel_display *display,
> > > +			     const struct intel_lt_phy_pll_state *lt_state)
> > >  {
> > >  	int clk;
> > > -	const struct intel_lt_phy_pll_state *lt_state =3D
> > > -		&crtc_state->dpll_hw_state.ltpll;
> > >  	u8 mode, rate;
> > >
> > >  	mode =3D REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK,
> > > @@ -1769,7 +1765,7 @@ intel_lt_phy_calc_port_clock(struct intel_encod=
er
> *encoder,
> > >  				      lt_state->config[0]);
> > >  		clk =3D intel_lt_phy_get_dp_clock(rate);
> > >  	} else {
> > > -		clk =3D intel_lt_phy_calc_hdmi_port_clock(crtc_state);
> > > +		clk =3D intel_lt_phy_calc_hdmi_port_clock(display, lt_state);
> > >  	}
> > >
> > >  	return clk;
> > > @@ -2220,6 +2216,7 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
> > >  				       const struct intel_crtc_state *crtc_state,
> > >  				       struct intel_lt_phy_pll_state *pll_state) {
> > > +	struct intel_display *display =3D to_intel_display(encoder);
> > >  	u8 owned_lane_mask;
> > >  	u8 lane;
> > >  	struct ref_tracker *wakeref;
> > > @@ -2245,7 +2242,7 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
> > >  	}
> > >
> > >  	pll_state->clock =3D
> > > -		intel_lt_phy_calc_port_clock(encoder, crtc_state);
> > > +		intel_lt_phy_calc_port_clock(display,
> > > +&crtc_state->dpll_hw_state.ltpll);
> >
> > Readout_hw_state already has pll_state maybe you can directly pass
> > that instead of what's inside crtc_state Since by this point we would
> > have read and dumped everything inside pll_state anyways.
>=20
> This is actually a fix of the existing code: crtc_state is the new state =
of CTRC
> computed by the commit when intel_lt_phy_pll_readout_hw_state()
> is called from intel_lt_phy_pll_state_verify(). That new CRTC state and w=
ithin
> that the new PLL state is what supposed to be verified, so nothing from
> crtc_state should be used to derive the read-out pll_state.
>=20
> In detail, for the verification intel_lt_phy_pll_readout_hw_state()
> reads out the PLL state from the HW into pll_state passed to it, also com=
puting
> the corresponding PLL clock via intel_lt_phy_calc_port_clock().
> intel_lt_phy_pll_state_verify() verifies then if the read-out PLL state i=
n pll_state
> matches the state in crtc_state->dpll_hw_state.ltpll. So computing pll_st=
ate-
> >clock based on crtc_state->dpll_hw_state.ltpll is incorrect based on the=
 above
> (in the existing code before this patchset) and as such the fix for it sh=
ould be a
> separate patch.
>=20

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> > Regards,
> > Suraj Kandpal
> >
> > >  	intel_lt_phy_transaction_end(encoder, wakeref); }
