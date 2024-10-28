Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE219B23CB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 05:11:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11BC410E325;
	Mon, 28 Oct 2024 04:11:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bGLl+Jef";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A34210E0D8;
 Mon, 28 Oct 2024 04:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730088672; x=1761624672;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pKNqh3hHIVN+twV3mR++aGkX5A+rc/wUaFBl6LII9m4=;
 b=bGLl+JefOdQOrSCrwh1M+hJDi7o66RvoOx/DTMiX8XBIkimcT+/JYYe9
 g55pAU6aP3yxPdYsMnGk/2ouNSj/OtJMBT0Knul+a8X1pkYGMrV20+lKb
 2eZnff1GkJ9gHVa82G7p3n9Z9J5XPLl2nNt+vgFKMmLRWK35VW/AgBXEg
 EXoxLAKjv2xYXLYeoXk866a747mPiLwxPnY0yCSmFNGnzdUjyqBsMljeA
 gkiYwPyd1oXlPk6E38vQF4bm3yWlqdp1se0QrsD8mT4WpwNQPpTu+KzGF
 fps0d0kEoackBpaFmsjt1EzQYe8Tj2cLeODl1uVlloFFlkLwlRCdZG+l9 Q==;
X-CSE-ConnectionGUID: LM5/V0JRQQWm4tdaRQsGVw==
X-CSE-MsgGUID: xqeXwFP4Tpaxbug6cmRK5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29536392"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29536392"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 21:11:11 -0700
X-CSE-ConnectionGUID: TdU3zVN/ToqSW9+2XzMpLA==
X-CSE-MsgGUID: Q1bYiN0TRo6g5UNz1L5g2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,238,1725346800"; d="scan'208";a="81928582"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Oct 2024 21:11:11 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 27 Oct 2024 21:11:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 27 Oct 2024 21:11:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 27 Oct 2024 21:11:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uGt0NOmEGK1VdygEZRqkLw3KEDdqhPcBDPQyEXj39PaUYw7mW5D4dV7lGOyJcSb/xRWyhTC8U078JIb7YT4pok3kb/+HMJ0L3HuT3IICLsqzArGboLDvhJNy79qc6l975uqqO76EohTGKjOWVkXMyKQt8OElzSBvxSWJenB23oZsZMGtyw8FaUY6VZjxCo8+H489UAlTxwjmdXgzC0Xdk93Boha8DeoGiDerC9ftFqIlIz99GRkIl4zmfO9cQuuy2/RV8EwItCEOnuZPTYIEkste9nbwLvX2Q52nWBVBuVwSChOkFX5R0sQ2MmSZwBg2wNemnD9lvA+kmVkOKs1gmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tcmJHC0a5JswWtyFd+0N2AWnvXSZoRFapWK4WNOawtQ=;
 b=H7dm52R808Av1g5BJz45epQAVMyvI27vPpaO4QCEAnymhUEtEbH89zahDaAANnNy+hb8OzvnvvT/+GYMYarJNZzSv15PPjlmZ/Tqb8byh7jyT+maVCDMi+n3jWzmExa+osm1Cm66L0rZ221herJnN6MMdjyHDDFUfBGakDgGMcLQXf85zjUshM7Tg3WgMBs1eH2McEO+P6G/tCN44LvlnTBSwrzMqPXe+5nSi4Wqa3DnXBsZUcO8t+fNoaFG1qAl4nRSp6rFuQ3kukpnxJ8ABDexCh6lL1tZc5kNeNvEvFyr9kCo9KuhMO8L2exguODy3UkLVzbHyihQ+wajyjyPzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB7692.namprd11.prod.outlook.com (2603:10b6:8:ef::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Mon, 28 Oct
 2024 04:11:07 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.014; Mon, 28 Oct 2024
 04:11:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
CC: "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Topic: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying for
 Xe3
Thread-Index: AQHbIZjVdt/ziriyKU6C6TcoqApVybKUpVSAgACV6ACAAqE7AIADuzjQ
Date: Mon, 28 Oct 2024 04:11:07 +0000
Message-ID: <SN7PR11MB67502B95C2D42E5C43B74B6EE34A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
 <20241018200311.67324-4-matthew.s.atwood@intel.com>
 <20241023175201.GO4891@mdroper-desk1.amr.corp.intel.com>
 <SN7PR11MB67501BE6E81E6C9F14CD4C05E34E2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <20241025185808.GR5725@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241025185808.GR5725@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB7692:EE_
x-ms-office365-filtering-correlation-id: 9e42bc08-a35c-4e4e-eefb-08dcf7068c34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?VRNrbeQwOKPAs6swv1i99+SSY68cZjPPBtpRbCRaAvmattsr/tGMefDqBa5F?=
 =?us-ascii?Q?FmUIfoX1slixUbFbEOSall+ZIaK09CseIByQI5ZuRmz2UO4hoBloi3qvs8oo?=
 =?us-ascii?Q?CxzQ7NFxzcRyOX+QH0BISUPh1nvvlW9H2AAeFBDXOdaOCJ8nPS7auSYjdm4z?=
 =?us-ascii?Q?gVzFlZwwSussJjLSlIubcskVQPHH4zSJ0UlLhlInIYlJJO3L5JZW+s/wG1na?=
 =?us-ascii?Q?bM0WdnLKLPernws6tgbSLFYf5c2CBgQZHhbQyxDuvyJ1dPZurPhdLMFBvSVO?=
 =?us-ascii?Q?nxwJO2W5E74kdIClBLmF5T4jzQvM5w/yI7bEmLDu06y3UY/w2wEEt4xWKlCp?=
 =?us-ascii?Q?O+KwujdHNO29aA9YDg69E7ZdhtNY/eR2kgI2sEY2QPSpjgO+Vj1ge0J3ychl?=
 =?us-ascii?Q?Ge3uC739TdF8Gy/B75p5VaCIxysaV0OGQL2ZicZh46InHFUgQiO+u8a7ki5+?=
 =?us-ascii?Q?OwwxWsbdHZbfu8ZgGs8XX5sTrmtJLAfcOzZY6Z2NoXADs7QIF9F9VnmwSN6w?=
 =?us-ascii?Q?aP8sfYir0RkRdhT+gKupoNs7veVKyNPL8kErA/B2Aquxo5ksWEfhDXPowRsP?=
 =?us-ascii?Q?aY9LlHSZp+RYQYHb3y83GkGL3uw48/L8sRlyeLLisELqrYmJnE+nitBMNrG2?=
 =?us-ascii?Q?FwxozRys7XUDM8M6zgcOO/60nc33GHN1YYIxEW34mGBBFfNNpLzl8CZLWHd4?=
 =?us-ascii?Q?56qoHhMwRdSesX+hEVtEKHZ7eMtvtA4Jky07cGKcRkVrA046mxuPCFzDE6G2?=
 =?us-ascii?Q?shu/AGzJ3NdYs7yeP1esc01FEHqfv1guODm4DR9eejp25HNmjdzjFsfhQ34V?=
 =?us-ascii?Q?3jSLD941r6PC+6T3uSWeVC60HhIyP6sAIcpVo6W1Nitrxpagfdwrx4nXQhT7?=
 =?us-ascii?Q?5FrEVsVYQlKqv4fgNsUJiRr2fAaYu0Ny1Imdb1F6ySZeq3hMzy/ctzUXaC9g?=
 =?us-ascii?Q?j+PYBVv+BBtjgkjtfPRGg2kaJlt+Jm66K0m3itoaxPrhysG5hY2TUR4jHXvY?=
 =?us-ascii?Q?NjmAmYmT1Oy1NrQfqCDsJyJqcOkF/gl62qmgWFNhP8ICXcDaBWx29DtMGGWH?=
 =?us-ascii?Q?B3pkwXyytNpi5JLci7IqbS/7iTwT+DT0vtzFV9iMTYqVYlSvajzYgcan5wZs?=
 =?us-ascii?Q?NkUL10nNdZMKIuq/PPkRd+os0Zf/HUUv0JDtZeXmuPccdFt3FBZoWKS2QGS6?=
 =?us-ascii?Q?+pwGgp2siidQoZn266mFGvPtGooCCw/6yX76Xz74Owi3NsXElnkdBRNB5Pg3?=
 =?us-ascii?Q?/eBqMfUnOifAfPhyCMJQO2lOMtCe4BTi+jtkBTBpCjbDsbQUMVrl1udVjeJu?=
 =?us-ascii?Q?WPRKkwR96z+Yw/ZmGOVAaT5Yruy48DpVHrEg5axdPWIOMtnkTn5+f3H6lVn5?=
 =?us-ascii?Q?MnRny0k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JVxS1bylhPUWWHFPBNUKrhDfagsDsJFXIJnxfoMq32euUlKVz8egmqEakTrh?=
 =?us-ascii?Q?ivYxrgdCTLgfy+aJXVs0dFJWghpxAhzEux0N9IrjMjUAujcjzwsgOXe5sqNG?=
 =?us-ascii?Q?dkdwyvxtpu+2kESTvw73onNiZzfKF+jY7CxZhpOQfxlFSrfiM7E/0bL0e5Yn?=
 =?us-ascii?Q?0YFzxJmIjLr2mkO3zdYhjiCFxmCj970eSnLzxFP1xH28K5kzMqF9wqoejQWr?=
 =?us-ascii?Q?/Rg7vIf7T+Jf4xD/hG3Z3kk6BOxU15hUNoBl3RIXlILSxQbL5o5/tD1QJiuB?=
 =?us-ascii?Q?d9qZIGzAxS/PSKWqCMG5RqY0xK1vvOWG5P16uJeEq+H9MA6uWlLtXp3dTrM9?=
 =?us-ascii?Q?1Z+b8ROOp8qN8rR1Eaoi97UFHHm2JiJan1J/0UiSy7MieCr9Ym45vmjxIwVW?=
 =?us-ascii?Q?FjNAav9rIy3yxyZBaafpJ8A6q0zrtxKzUCNo+2y6haYnFcCPmSsC2bhp2LKX?=
 =?us-ascii?Q?LQJ4q33WB9EViKARfUNhthZknN0djaISojucJwqJCR2hanmzyEwM8yLNQLaS?=
 =?us-ascii?Q?OQNdt3PgRtiC2JfvlrtGEkUI8QWoNfbq5EwRPCENgHeUAamXA00bQpQE94CQ?=
 =?us-ascii?Q?AYirU1NsEQVoM/RLslSU9SdE4yXpnV1CjblxxNzhq4JR/BwYLUeN11MSUete?=
 =?us-ascii?Q?9+xumO3d/EvJaDKG7+TEQuQPtaJS8W2RSGqZV23h+fHH2YiEb6zO+UjxejzQ?=
 =?us-ascii?Q?53eO20MkD3nzYRht0Zap4fs4YA4nvzrFpBXkBMSotisWTWAjdb9P3JAhVLBD?=
 =?us-ascii?Q?tWAnnjOyPHGK6j+mlEKWcE2dauW2vT9qawu4UpAV0SgBszlEylfWyBUhVxdf?=
 =?us-ascii?Q?J31ahEdtPfZ9vtFDBp5BgZ3oNVBh0Az+W4w2mnVEVEjGAQ8rC3SRJ/ewYTHl?=
 =?us-ascii?Q?7QiXELT5SL9kTwEKKxXwQoe5egMsu8badAkHrgTrriPW8QczpMcZbqfuecVi?=
 =?us-ascii?Q?FfIjbp4ibdpLztAz2Oxq6JhpPB78sG8k1lkSvT7CYN06WK5DyfkZj8bs8/+h?=
 =?us-ascii?Q?kx7OfOQlXr3J+J+uUczJfPxHVBCwz5i81nG3HqMxkQj0lOPhtniMkLFpzr8s?=
 =?us-ascii?Q?FZJpNwNa8Q2qELCHUlS7jRZaqG0dG+Myei+cwmr48Iv7sa7i4iTcqsALdYrx?=
 =?us-ascii?Q?JF5jc0nVNTmUKNliIXRLOi45HUoN/AWK5a8YvHavn4x4CBuwNvVPBH+JxDXU?=
 =?us-ascii?Q?E7biNRDnPkX/Cnb9Q1wqtixE08J7cQecuhGKgl5suGtbkMCAd/8THUixt/Xg?=
 =?us-ascii?Q?7C3ot8uetUBvyC7mksIeNK0j2p7rjYC+ePLTiSVFNIDzU80JyU2d+QJuHbrG?=
 =?us-ascii?Q?EXChxRaofGDMSgTZjS2ifhRwE6GxDVfasQwrValF3VTu3tpE6LQNOpU3DpVG?=
 =?us-ascii?Q?NkcOBIlDf9OTYIGgSM2o+ieK6ZGqiuq2ENdSL7AQtNI2DBNH1IkS9pJkARb2?=
 =?us-ascii?Q?gCt+Pt2j384NaaQoLyv8JwygnWNavWNXIWRvAH3Pn2T5JsiGzBSv81tDwRnj?=
 =?us-ascii?Q?2cs02QpB4tiV3eV5VrRPMRmqMTiOqznQcsCpiox3rifw55mMxSXJncXsxm0s?=
 =?us-ascii?Q?25djDncrk0gUDKKSsD7Y0zTIF3KVvg5duQ5Xz+I+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e42bc08-a35c-4e4e-eefb-08dcf7068c34
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 04:11:07.3544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PePak46FCeHX/AOhpDcToIB4UIQTxl8QyfhUP8b92jKxQ7xhwQzgXqhN/6akzmJDRG/gqn9pmAqWatWYP/ln5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7692
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
> Sent: Saturday, October 26, 2024 12:28 AM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: Atwood, Matthew S <matthew.s.atwood@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line Rekeying f=
or
> Xe3
>=20
> On Thu, Oct 24, 2024 at 02:52:14AM +0000, Kandpal, Suraj wrote:
> >
> >
> > > -----Original Message-----
> > > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > > Sent: Wednesday, October 23, 2024 11:22 PM
> > > To: Atwood, Matthew S <matthew.s.atwood@intel.com>
> > > Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org;
> > > Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Subject: Re: [PATCH v4 3/7] drm/i915/xe3lpd: Disable HDCP Line
> > > Rekeying for
> > > Xe3
> > >
> > > On Fri, Oct 18, 2024 at 01:03:07PM -0700, Matt Atwood wrote:
> > > > From: Suraj Kandpal <suraj.kandpal@intel.com>
> > > >
> > > > We need to disable HDCP Line Rekeying for Xe3 when we are using an
> > > > HDMI encoder.
> > >
> > > This is still missing the "why" for this change.  Is there a bspec
> > > reference that gives the details?  From the description of the bit
> > > itself, it sounds like the setting here (for both Xe3 and earlier
> > > Xe2) should be based on the HDCP version rather than the
> platform/stepping.
> > >
> > > As mentioned previously, this entire function is labeled as "/* WA:
> > > 16022217614 */"  If we're now using this function for something
> > > other than that specific workaround, then we need to fix/move that
> comment.
> > >
> > >
> >
> > Bspec: 68933
>=20
> I think you pasted the wrong number here?  This is a generic page that ju=
st
> has links to four transcoder DDI registers and nothing else.  It doesn't =
have
> anything to do with HDCP rekeying.
>=20
> Maybe you meant 69964 (which is one of the four links from the page
> above) that gives the register definition of TRANS_DDI_FUNC_CTL?  But the
> info there implies that we're not really handling this properly since it =
says that
> we need to enable/disable rekeying based on the HDCP version.  We're
> disabling for HDCP 2.0 and above here (correct), but I don't see where we=
're
> handling the enabling for HDCP 1.4 and earlier?
> Unless I'm overlooking something, it seems like the driver always updates
> TRANS_DDI_FUNC_CTL with a rmw cycle rather than building a new value
> from scratch, so we can't really rely on the bit being 0 by default for t=
he cases
> where rekeying should be enabled.

From what I can see TRANS_DDI_FUNC_CTL is written via intel_ddi_enable_tran=
scoder_func()
Which fills in the values to be written by intel_ddi_transcoder_func_reg_va=
l_get where the line rekey bit
ends up being 0 by default which make me believe that separate handling for=
 HDCP 1.4 case may not be required.

Regards,
Suraj Kandpal=20

>=20
>=20
> Matt
>=20
> >
> >
> > > Matt
> > >
> > > >
> > > > v2: add additional definition instead of function, commit message
> > > > typo fix and update.
> > > > v3: restore lost conditional from v2.
> > > > v4: subject line and subject message updated, fix the if ladder
> > > > order, fix the bit definition order.
> > > >
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 10 +++++++---
> > > >  drivers/gpu/drm/i915/i915_reg.h           |  1 +
> > > >  2 files changed, 8 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > index ed6aa87403e2..70dfc9d4d6ac 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > > @@ -43,14 +43,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> > > intel_encoder *encoder,
> > > >  		return;
> > > >
> > > >  	if (DISPLAY_VER(display) >=3D 14) {
> > > > -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0,
> > > STEP_FOREVER))
> > > > -			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> > > >cpu_transcoder),
> > > > -				     0, HDCP_LINE_REKEY_DISABLE);
> > > > +		if (DISPLAY_VER(display) >=3D 30)
> > > > +			intel_de_rmw(display,
> > > > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> > > >cpu_transcoder),
> > > > +				     0,
> > > XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > > >  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0,
> > > STEP_FOREVER) ||
> > > >  			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
> > > STEP_B0, STEP_FOREVER))
> > > >  			intel_de_rmw(display,
> > > >  				     TRANS_DDI_FUNC_CTL(display, hdcp-
> cpu_transcoder),
> > > >  				     0,
> > > TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > > > +		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0,
> > > STEP_FOREVER))
> > > > +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> > > >cpu_transcoder),
> > > > +				     0, HDCP_LINE_REKEY_DISABLE);
> > > >  	}
> > > >  }
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > > b/drivers/gpu/drm/i915/i915_reg.h index 89e4381f8baa..8d758947f301
> > > > 100644
> > > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > > @@ -3817,6 +3817,7 @@ enum skl_power_gate {
> > > >  #define  TRANS_DDI_PVSYNC		(1 << 17)
> > > >  #define  TRANS_DDI_PHSYNC		(1 << 16)
> > > >  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> > > > +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
> > > >  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
> > > >  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
> > > >  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> > > > --
> > > > 2.45.0
> > > >
> > >
> > > --
> > > Matt Roper
> > > Graphics Software Engineer
> > > Linux GPU Platform Enablement
> > > Intel Corporation
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
