Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Hr7JXjeemmf/AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:13:44 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D844DABA02
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:13:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B46410E7B9;
	Thu, 29 Jan 2026 04:13:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DNA4zS1Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 407A010E7B9;
 Thu, 29 Jan 2026 04:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769660020; x=1801196020;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0qz9jiJ0baLOT/c+c3g9/IYrGHPKIQWkxfP/xZhFkzs=;
 b=DNA4zS1YlPtF8V926uLYrDBxPmY8MO0UYvPm4VUGvgEnLpVtvp6ZNH/v
 hMbohsSH2mI+fzIUuIzT6MoVV5a8IATjd8jyDthssGISjRG/l3/2056Me
 HnEdr15R8f91PVxp0pA6KB4HnXAHiWxG421bhMaMZdGhiBI8l1+qfPdZ3
 GRj9GlWnN2F00ZQBbwIGp8iDoxEKbon2gWuAb1h+fpv0t8o1gbtFTzEWp
 MvCnlZ+x2zauKi34m5Wj2ywnUDjRAXet0xtqkNzzUdpTMsuqtk85SXdXQ
 pW6fLTrqazgU7DgM66niwKz/RBCEnyKKmkq+Q248UniInNINe/ahA+nEd Q==;
X-CSE-ConnectionGUID: uQCOCCRUQjev9FQbaWtfgQ==
X-CSE-MsgGUID: bagxrDvIT9+reRCQzS5NHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="93548073"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="93548073"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:13:40 -0800
X-CSE-ConnectionGUID: ATrSw+HCQjO6+IWEFPANxA==
X-CSE-MsgGUID: 9BNA2LZ4R3iC1zzo0Ns+Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="213324651"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:13:39 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 20:13:32 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 20:13:32 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.2) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 20:13:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=auZLuVqUHCBmTCZqz9UN1YiuPJU8l1poV/HLPK9RYkQL/+ppbFTn5lObA06BTB46IgAEOUBihWnSqsiimY6Hy/ljdEO+RoYkuF+3nCG2328X6s1R1Z08AWE4HQ+pzzoNfTCcYT0lPrRbP0ZCDy+bDAI43BwWqJUd/VyuaZUhycyJjVTH6ZZhxAyqqP2ATt9Fidm1prjND7aplScg/3NSu5OFrvCIzXTrcFE3hkqiLs/DMptaF27GqBOMhyWoIi+cF2HR1I0c67oBj3tryskeAia9wIy6s8rDE72IT/dOb9WgTcsN2v0c9L7EmIoWDu/EQYSN+UC8Wgn7ISAfhP9urg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=laIvTsx7AioXu/65ChbsPNt9PYygOHHVCilia4t+CJY=;
 b=GFajsHN4qd8OcSemCCLqsiyF+OZMjlECsZkL/bIQ/LdFCoJXqGGtvH6yvrHI8Rp5gzRK5CRhLRTHyVaQHPy0IuF8XTzqMEekxqpBh57YdjAgG0wDLz7H4YTLnKu0tD1GUuc3xBBa12Wyb2An/eBTVTktgxaXglc/zjPEfpMdErkygVoF+7nmOsd2n1L4tTN1NllomGhaBgZj4Ip7KNS0Rht3MgcgNnhsLviB+j/EgqzLzLmboRi8UMOZSlQDew67A4hkd9o9u1go0KFtoC8qGwszzt0XoVJ7Wjkys3lcBp1yxV2kKWCCziiCToJ6IdrFXdJh+g0lv4M0eyD+iSAThA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH3PR11MB7842.namprd11.prod.outlook.com
 (2603:10b6:610:128::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 04:13:24 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9542.015; Thu, 29 Jan 2026
 04:13:24 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH] drm/i915/dp: Add a meaningful return to
 intel_dp_read_dsc_dpcd
Thread-Topic: [PATCH] drm/i915/dp: Add a meaningful return to
 intel_dp_read_dsc_dpcd
Thread-Index: AQHckBF/rxWE7SJn+0iWk9RJGzImnrVnbNaAgAEd8xA=
Date: Thu, 29 Jan 2026 04:13:24 +0000
Message-ID: <DM3PPF208195D8DE0811B42813551EF6F68E39EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260128044904.1293185-1-suraj.kandpal@intel.com>
 <51a869ec09c61bd8ba56db858c983bb9667ac11b@intel.com>
In-Reply-To: <51a869ec09c61bd8ba56db858c983bb9667ac11b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH3PR11MB7842:EE_
x-ms-office365-filtering-correlation-id: 063fb1e8-4530-481d-0186-08de5eecbf56
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?mVgA8ajR9oYYzTzAhXla9Sw2Vowip68x4oqrVNkJHdz7kM9/3rUwMg0kAqpg?=
 =?us-ascii?Q?nhS7qFbTSDkIw3TvXInyNpKsiF4Sg6buf1/IfizYHK+blRFWQFziVSWDkOQW?=
 =?us-ascii?Q?413dRl/cFf8gpaXLNr7xZpqxHnQAL1xyIOlOY8zeLvLhpLk1DD5Soq26XESp?=
 =?us-ascii?Q?EUUMCYHfLQUSbuIKDjdUk11zLa4zWciRZCc2NrfdX3KV8xuI/pueyWxBVgT7?=
 =?us-ascii?Q?8DKzD1kNli4BSQUiDmud00A/VsvCru6h5V7bIuRRbNCDb1psOP38ynbXHeXs?=
 =?us-ascii?Q?/piTVJKZv9u/62hQH0UM2+vWHZHVlJEcgdYQ7aWgTHOQJ4xiHgmi9HYoknV1?=
 =?us-ascii?Q?oj/vc7GFLv74dlTJvGCm+jCRgMirowBZ3zmgFUzlwwD+DU/aMFL2tqlcBOr3?=
 =?us-ascii?Q?aNK9cYCoA7XptTGByAR9G8n2yUyK5tSKbp/VscwmbyxyV90EnidK3itaRnF7?=
 =?us-ascii?Q?lNHSZ8hAqwwJqRybnmPeh6BP+N0+TwDG9bQ3NGVA6vrrqyH0L0/I2pBBWOLt?=
 =?us-ascii?Q?Hs/6uoR4TbHRauAc1JOE22ZTAxxTYJd5q3K8Z/JvNeK0UCjT8FtRR42Dla2d?=
 =?us-ascii?Q?JQAAApaEUJ3JIWrVtJhrvbkTtPu6IHwlptt6hc81jcI1Y8jkbTITIsOdNGJg?=
 =?us-ascii?Q?PgzjbpZFcha80zvcmto7E9aNpQ+jYHC5xkQpFRwnBiDbbjGTmXiiZGF0BJ9g?=
 =?us-ascii?Q?yxA2kBSawhd9Ok1EZyDTzV9+jcPHNpeLVfX9jOD1KeZRaUq+uQM/7UKJ+Ogv?=
 =?us-ascii?Q?FXBO1cUQSLa3ZYttMqikV4P/IKByYi98VPqcMd6Z+Z4Pt0o/RArQXfPDtatv?=
 =?us-ascii?Q?RqM/24yNQhyrjRJ9/AmaZhIWqcg/dQQEegk0YRJyKtwNXXJjnC4DwJDZLlDO?=
 =?us-ascii?Q?W59dqRdwSZhK2i1B861XFpdAxu035cWmtqOVKt0tXCtJWbsKwgv2j8Zf9qd4?=
 =?us-ascii?Q?zAtTHV6rLwLjPoWBk+dssfRNrq+zKfrq98C239o03WGMsLmQFuKkj/VgBjN/?=
 =?us-ascii?Q?HTrpGfC5GqSgtGxp4oQd2pUyu39V+SSLWEWMdZihdsgagX4CCq2SBpE1r7vA?=
 =?us-ascii?Q?VkLkPZgJ5V1ip4yTBA2fFzXdybOoXrh6cP+uFZF+V7k5CC8iSvhxfeIp0YEu?=
 =?us-ascii?Q?ZDgAK07ekiai4NjlXtO2YTj40C+z0Bvae1kA0PEkJmIRFFD419SY4FXRIoKG?=
 =?us-ascii?Q?iIVX8ex7AuScgKwV/ywdm9vLD4sP6PbqK/Qiri59IR9x/fvyHSXByw7kVhZG?=
 =?us-ascii?Q?u+ywlCym2r63LR+ixfeNNm5gxTsWIFPnkbRnsX/QwJOik8K1vQ0KGFV2TQl8?=
 =?us-ascii?Q?1VxIiWoXEEWFc6qDOxzb1wC0Ws9/ZynsrECQt+03HSy9ulGmRi7cuHwSTfOB?=
 =?us-ascii?Q?mwcjJ9dtPIKNWFFeOfHarJCYHC/xYY99JZ8zUKEUawVW1hXQ0IvgUDWk21OP?=
 =?us-ascii?Q?6lfYg2DJxJfRXD0syonjxupTC80X6YHbBjed/7a3HcLn3PwwzCy6MaBWyC/6?=
 =?us-ascii?Q?edBstUDd4tprctR5VWxlP5btNkPePdYINOGeCdFHIl1Mx8NWtAF4LtBLpT/r?=
 =?us-ascii?Q?ycvXB7jdKlK6idhLYTwGPuW+DzwdGsBLGpJLjBAnf3j9YYmTV/TUarC1X/kf?=
 =?us-ascii?Q?UA8gywEpGmXBMnGzdA1EJD0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L+XyWuBrgT0MxpgKEqcgziYnX7mqB5fCFOyfa1GOcR7rnH9WcIv3ODrQ5x9m?=
 =?us-ascii?Q?VkfGY+hPaALk6lBpJ31sq2EN6rP0Yvqh980SZ1vHpRlayMWdzjtzQS68/RGf?=
 =?us-ascii?Q?UZH+RPCpBZJ4UFpBWiTy51MGkCbYEd43oAjzqyvYVcF8n7LPhserqBVxLcOc?=
 =?us-ascii?Q?cvnGdTULRWhUiCVD26hYULFMwOWtj/H14+i6fWKhHADrOzmNG632YiXw2cpH?=
 =?us-ascii?Q?Zx4T77wHoYy48duxWZLeTZxbSB2x7BeCMsBDHtLfTSlOk6hzFBxbwN/wt58+?=
 =?us-ascii?Q?QKnqJMAHFNcBCD4NBhK9JuYughZLOPIqaL543HxPEE/IMz6hx1XD+JPaRyfN?=
 =?us-ascii?Q?jAk4EsbGto19zKB69DV4HoFVLrY/zDCvtfUkWENd9AxwYvVTXxfUoZh3/MrC?=
 =?us-ascii?Q?yrVO1OEk7PQMS9jICvR8oWEHBFaQePvFJ3y5aykieytVXqd1bSkCC/naDTzQ?=
 =?us-ascii?Q?8+TVM5+timu64N2HLClncwN53K40SCSE8FBTEE4bOwzI0p3OnsBFgUFw3sNh?=
 =?us-ascii?Q?9JIWwq99QwNmuEgUBWzEC56GxKsm7F9h2qhXga8xMuoLhFX21Mj2pjr92+Ub?=
 =?us-ascii?Q?pPCg3CfqIHSHGfArbW5niKhx8jSIn911z65zpnSmm1TbryW/1HJWkDwVFZAb?=
 =?us-ascii?Q?mjT6eEBYfBPcvxPMciZnu0N4n17oJeMBWfTp8pZDxWY5RSzjBuxrp40+3H6d?=
 =?us-ascii?Q?pIlN9eJVSUCu/Bk+b3k98ZkImYnYUcG1wuQg+igBCPaZoHrxv1EOx4bFhdOO?=
 =?us-ascii?Q?H0QOco58MS/V5OHle7ndffNdigI+EHcSlIKlC/+ShmWuyvEZ2xMo8Q0r7fh9?=
 =?us-ascii?Q?G1Omxy+X7AF9XF8HItzAWf3LlFHE6KYnbmiAymD8cvuK/ciwWQ6PFOC9jxiY?=
 =?us-ascii?Q?NjXqNUsmuiRDoH0kWPuu0c1DmYPHRMBdr40MfKmq2SUq56u1h1Jblfbg4nrn?=
 =?us-ascii?Q?eGFiutrznCBJ9LigP68btf8MZnyOA4NpdtMtlpeaOJhXYBTZIzFjdZasIUvf?=
 =?us-ascii?Q?y2cNSOGEY2qJJZ7c+03S9DEUtQn6u7JAoJJf2+G1tw/oE5yAEq0/6goou2oH?=
 =?us-ascii?Q?Fam5UcV8o7oATYz8LH91HT9w2zRWhiX4xUY6m9OOq2YiHOXIoldJq7xGWKEy?=
 =?us-ascii?Q?lg+ef7yyz3PjTlLn7lO2kjwDEK9ruXfC0PV4+48Slw9SioYz+uLelsG7bc2G?=
 =?us-ascii?Q?WWlmqiDv7XEBo6M97BPgSztfDIizomHxFxZInVIX/xZOqv0PHAvFrnuuVFui?=
 =?us-ascii?Q?TfcKWyCjdmRw2Vv5chgEKxdabj59EoySIQA96X+6PUS18RZ1v0FBxOpBnq79?=
 =?us-ascii?Q?A9/nnH/ueztyZRmQNXj33oUw0LYfh65rFKf0pObH2oHyGh0E9LEFc4zNvNhl?=
 =?us-ascii?Q?JVab0szhnwCkX0cWI6N9pqIi+pdEbD2LWH76ZVCabJyYTpnoYF8buAEUnJ+F?=
 =?us-ascii?Q?eGOgFJiwUIRuGkot2TXkV4Ta5noW+fUkmJGNx3USSVXZnnNAEAIGkxbxIngz?=
 =?us-ascii?Q?1IMuIbNlg79y8Z/pbDd3mjYS49BV2Thw/XZVZvwSK9cAy20zshiWYs7GAiQ7?=
 =?us-ascii?Q?qfzu7vKT4/jYNWWMRy1IOsQXCDkD8iLisSms/CA865xmS5Fmp72gDiLhb8ic?=
 =?us-ascii?Q?JYOZpACdEBo2coYMdrBbJ5gNQLWhAv3PGYmR8YxHC1S8PhJBet0CjW6VpzYv?=
 =?us-ascii?Q?8HRLWJzB2yFo6WdINmLOscHUIQD6Prewk5OPZ/V8EIylTrevSKtgTL/eEWQj?=
 =?us-ascii?Q?blzk+LjO7w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 063fb1e8-4530-481d-0186-08de5eecbf56
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2026 04:13:24.8040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X0DfbWfRqyAVGM6EbhqqdhapLjhbfDd9YNmya+UCg65LAdpWKZ6L2qHXmMNAWYCNMJwUfUorLALCPh7Em9npxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D844DABA02
X-Rspamd-Action: no action

> Subject: Re: [PATCH] drm/i915/dp: Add a meaningful return to
> intel_dp_read_dsc_dpcd
>=20
> On Wed, 28 Jan 2026, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Add a meaningful return to intel_dp_read_dsc_dpcd so tha we avoid
> > unwanted DPCD reads which are not needed once we know DSC DPCD read
> > fails. While we are at it remove the drm_err since we do not shout
> > error during intel_dp_detect phase since it may take time to come up
> > after pps_on is called for eDP scenario.
>=20
> Please pay more attention to the commit message.

Got it will fix it up

>=20
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++---------
> >  1 file changed, 15 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 79fd3b8d8b25..d2ed8ec145a2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4281,20 +4281,21 @@ static bool
> intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
> >  	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
> >  }
> >
> > -static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
> > -				   u8
> dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> > +static int intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
> > +				  u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> >  {
> >  	if (drm_dp_dpcd_read(aux, DP_DSC_SUPPORT, dsc_dpcd,
> >  			     DP_DSC_RECEIVER_CAP_SIZE) < 0) {
> > -		drm_err(aux->drm_dev,
> > -			"Failed to read DPCD register 0x%x\n",
> > -			DP_DSC_SUPPORT);
> > -		return;
> > +		drm_dbg_kms(aux->drm_dev,
> > +			    "Could not read DSC DPCD register 0x%x\n",
> > +			    DP_DSC_SUPPORT);
> > +		return -EINVAL;
>=20
> If we want to do this properly, then let's propagate the actual error cod=
e
> instead of inventing -EINVAL here. And switch to drm_dp_dpcd_read_data(),
> which returns an error if not all bytes were transferred (also a case the
> current implementation completely ignores).
>=20
> Finlly, the debug logging could log the error code. A combo of %pe in the
> format string and ERR_PTR(ret) in the corresponding parameter will do it
> nicely.

Sure seems like good fix will get this done int the next revision.

Regards,
Suraj Kandpal

>=20
> >  	}
> >
> >  	drm_dbg_kms(aux->drm_dev, "DSC DPCD: %*ph\n",
> >  		    DP_DSC_RECEIVER_CAP_SIZE,
> >  		    dsc_dpcd);
> > +	return 0;
> >  }
> >
> >  static void init_dsc_overall_throughput_limits(struct intel_connector
> > *connector, bool is_branch) @@ -4345,8 +4346,11 @@ void
> intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
> >  	if (dpcd_rev < DP_DPCD_REV_14)
> >  		return;
> >
> > -	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> > -			       connector->dp.dsc_dpcd);
> > +	if (intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> > +				   connector->dp.dsc_dpcd) < 0) {
> > +		drm_err(display->drm, "Failed to read DSC DPCD register\n");
> > +		return;
> > +	}
> >
> >  	if (drm_dp_dpcd_readb(connector->dp.dsc_decompression_aux,
> DP_FEC_CAPABILITY,
> >  			      &connector->dp.fec_capability) < 0) { @@ -4376,7
> +4380,9 @@
> > static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct
> intel_connector *
> >  	if (edp_dpcd_rev < DP_EDP_14)
> >  		return;
> >
> > -	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> connector->dp.dsc_dpcd);
> > +	if (intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux,
> > +				   connector->dp.dsc_dpcd) < 0)
> > +		return;
> >
> >  	if (connector->dp.dsc_dpcd[0] &
> DP_DSC_DECOMPRESSION_IS_SUPPORTED)
> >  		init_dsc_overall_throughput_limits(connector, false);
>=20
> --
> Jani Nikula, Intel
