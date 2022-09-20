Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 999665BED03
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 20:48:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B046910E753;
	Tue, 20 Sep 2022 18:48:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9973B10E750
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 18:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663699729; x=1695235729;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/QKLq3Pj57NLguu2bZ13TJcU+YKpulkVSl/oM1lopMo=;
 b=L2ldXutEbtas3+jOfwVPydXD4o8egAS+Or4aQCEqGG6KNj0OLXMlHdDS
 8UQvZdWjMpB/cD0apeefA8Ho0UvWjm9EtdMpIJjZu915P2gKQwhYnMPiA
 OtH9CuEQcw/7vfKkag5R5GXynYiFKhJIPo5hPaMRwQkndQ18tCKM8IZKz
 OXQKBNc5WasBtTRnrD/phOKGrm1dlpSmUcu3SWM4Mu2GtH9CudqbvNACd
 kJ5kfsZ5S95/VoGv25PCrJcdPkGWrWr04KeW1WupDxt+029wb0b/Spd0C
 YFo300HAgAwDbe8aUT1PypXr34LZoSgrZqXEV3z49hHKw2AjF+THwESL2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="297383660"
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="297383660"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 11:48:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="864094401"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 20 Sep 2022 11:48:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 11:48:48 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 11:48:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 11:48:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 11:48:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YTObeC+6xfs4urtkefDPvXhFifMAtXankQemw6K9lOquYAOv80/uy78doTGhcSB0XT0+SaTizYIr1yv9cbKeOv5VK+tJ1Qj+vwqw5ad9csZuH0fnz+gktxNP8QUPSDgC5yLQJqOauSSydeU0dyOJkjEa1Nsbqlt3A78qgEqEqXrGB8hR8mAxIIwVWvyiLY8TTVQxr4HdrX/gnx07M76NVLiS5Wq/JjRIFtmy2awzI6Z+AWfUekzmIiWh4ZLpv4NI+Ws6xSy4KLfgdhnE2QdI2P7ulYi+zfNXLI4yUbRdFllnWz52h+oLpBdKldGRon17IzlszDLv/r8G/R/baJ8I5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xbWV/BHj/sT6u09NsCwyZ2iQadqVbIpdv+a17egq0gk=;
 b=ld687SW8butNmsqqbSyvnjecTlSZwQTfoAZo3U6bcuRb2sHLjZGlgvcQOuoczm+2cG+8yD0zI1eJ6vYBCCeqRGo0Qth/V40Swq1GDyIFtgXatFvcXiJoFq1MxBBtdITXMCr4/VLggnNsOrvUfPb+AVqeoKqUQPD0pAqapghCHQCFk82BfefNG4brlDt4PrTq6HpDI1apycwDw824RyKCXP9T/PJ2z8EYtDS6f33IkXreXW6iS+aF27AAoelo4omTutts6ssUbBhwNSRlXUXEw4CliO6OyIwz+LebLPaHDC0JlRSdCbB0I2uRQNV4lYoftcX66nVdTA/xpUD8qZh7ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by SA1PR11MB7132.namprd11.prod.outlook.com
 (2603:10b6:806:29e::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Tue, 20 Sep
 2022 18:48:46 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::e045:7fe1:eeca:861]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::e045:7fe1:eeca:861%6]) with mapi id 15.20.5632.021; Tue, 20 Sep 2022
 18:48:46 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 0/6] Introduce struct cdclk_step
Thread-Index: AQHYyi6kDFMVlhHjNUK4AMz3dDZiPK3n/zGAgACvYkA=
Date: Tue, 20 Sep 2022 18:48:46 +0000
Message-ID: <CY4PR1101MB21666FC6A193F1FDA0B2A96BF84C9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220917004404.414981-1-anusha.srivatsa@intel.com>
 <Yyl3sZ/zE4eZR4fH@intel.com>
In-Reply-To: <Yyl3sZ/zE4eZR4fH@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|SA1PR11MB7132:EE_
x-ms-office365-filtering-correlation-id: 748309f4-990f-4622-30b4-08da9b38bff0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dAPdgKSi9XyS9T2UualUesGSlCWgs0jrzlRcyebN7a3EvNKmpmPcVJfur7nOJBuxQwePoFPcMFKzi0cdzvI6xIJM5rX3RuPkJupqTkarCTZmt/BGY4GoO6lx4/cNB/mjxKj5r4tBm+eje3kYTlj3bFSjHjQDO7mbUt8s4OLCSP6c8GNj9F5zDP+g3WeC8BZOHLEXDDy99wevMIhaDGsRJ+UD+Mao+63xw8eFe3FlhodEAIqLLCuVos4cbQovl3EFBG4gTIBzgK1iyEBElc1yRQsssG1IFfg5JevNLaN71NIHnBfAKFa39adJSpTzvR++GQE6C2v5EunQsqNcmRzVZmmLMx0tFQjasZJDpjwcorNUg/3NgFgmnvFl4mtD4kiUAJSkoU2ECjr0NSiqMBr702oAgnJ+IbZDF5h+ITPTZTDhFdm1696xEkAq4XskhyNRoFBfskUfqWeBOGNSrNwkBxT74YU35tVv7bWHDlc5+JLbC8nNbG6gn+Pl/8VZIfHGUGOK7nldf1zARcWoJNeuK1JyrBfugkNUzuyAu1w5WB9MALGxhmwmu1Lk59ptSOo+eMkBgVvtEUG1j6P8R5Nabn+KpoetBdMon2a3UibxfP0GS/VFpKmPHZ7aZl/klMw+LMPv/da6cK1aioftCVlhxqBWjy2KlQlMnCgeTrU5K59CD0qh/5dxfECIfUAhJF/60pR/5ChOmDC+LCwk2uGhlG2XI2/TPu9cQfN5pEE0ub5isa/ROFeiR52dRg5eXZdbHRryP6BjxrOB5/Ch7ivRBpz3ZdGKERibADQBJfw3wFk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199015)(9686003)(38100700002)(26005)(122000001)(82960400001)(55016003)(64756008)(8676002)(33656002)(76116006)(4326008)(6506007)(966005)(2906002)(54906003)(53546011)(41300700001)(38070700005)(7696005)(186003)(5660300002)(71200400001)(478600001)(86362001)(8936002)(316002)(66446008)(66556008)(66946007)(66476007)(6916009)(83380400001)(66574015)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?4niEq5uaqFZVG9dGhwfkI9r9zBh86GsSlEdKMzlkyPbCtcbLqMnZwlo6LV?=
 =?iso-8859-1?Q?7bZN9iBCDeD2rMnB5B9yzDTWIJkAqzc8NwublpzMf2j6awpD59dQ5ZIB2q?=
 =?iso-8859-1?Q?kxnxoNPZW3341s4Bh9B4rNSprFTeulrBP4Bs9n1pGcelhhEVNEUBwKWKQ4?=
 =?iso-8859-1?Q?GXshV73MOYlMi6R9zMw3fp96KYTkthYaldamzJ5wgtLKFg3wXoY0rv/wxn?=
 =?iso-8859-1?Q?TP9MRNg8vL9TUo045dlX8QUh9ee+VUKRJKWE66Vseo/K2CfZeflGQ3VT9b?=
 =?iso-8859-1?Q?m1jXKbVkLzL98LTkSPrkvHkkqhGvYtWxcGSCREr59qEUWjBku/OLfQ5ooV?=
 =?iso-8859-1?Q?YpiLFD/UVeQdnnptsi8QZutcVEH3DF+LgqWXqiVnXpmeSxXQkeMkWQp00O?=
 =?iso-8859-1?Q?N6DVrJNY32wFc92KdGqv/lrz3AyJWXWshR1/O2cXVHqc6OErMcIi0+yhwX?=
 =?iso-8859-1?Q?26eXmhpWhr3naLZ0LMxl51C0CFDjFqro59yvFoYlMbItzezpF5ApnY5Y7F?=
 =?iso-8859-1?Q?pQbicQzooU3+gsDYl+zSyL2t+sz2bJ7reiGXa4l04wAg694JPNvXxih0W9?=
 =?iso-8859-1?Q?NjTEcQL/wpcPvHZdh5B2gs3h+kJS4goXUhOS+FCk4HiIGLWWGMcKgw/5Xz?=
 =?iso-8859-1?Q?BMEclofpPrTsOHY+r6q7X3Gb/q8GE6kQHzhxDhZmzKWN8GnPE3pAoxtEgl?=
 =?iso-8859-1?Q?2Xd4HtGHwQ+LBuHFgQuWrABPsbw5nO93THEn2X8stTGnEEj2U1TfSOhcXQ?=
 =?iso-8859-1?Q?ercw4y01cYevehXLyKfKr7icNxdkfZhta0Grl3OwrnJ7SEAfI/Cypf8dms?=
 =?iso-8859-1?Q?22K5ImIQ0p1RXMbxhA9WM1wY/rFpkzLzfBODOjee3Pg3ghJPftNyTmf9m/?=
 =?iso-8859-1?Q?YIyIa0lpDSIanaWAIfO2rkaCsRaKeVBKBoMkCSFtIQPoTFgfGo4SgmjgjX?=
 =?iso-8859-1?Q?d/dLZyIo5CLFkVPWyk96J6idI+voNx2ic7Ys/4aGgnNiUkRTK58TsNfYfn?=
 =?iso-8859-1?Q?bACX2FpU7aQR76+ScfP1wr+0vYCTQfc02OI2b6gmzjYg6iqWhYc0/CUNYI?=
 =?iso-8859-1?Q?nQP+lX84z7fnu1bKD4oXjY6mtNaLuB3wbQdLiq4nqZ1OK0VxTQe44lbuu4?=
 =?iso-8859-1?Q?X6IeGX3vl7XDD0cNFrc95pHDgcX+jpASAl71xRGGA/7uawqv23k1jbcPKc?=
 =?iso-8859-1?Q?5NG2YlVqJE3VKjfTIEKByQjxRM1S6Wo/GkTp77VlsvwYUdvg7BXXZL6szu?=
 =?iso-8859-1?Q?ZwYs2lsQxfDWVh+Xj6LSFt8QM9yITscUQbivt5FZsJjONLnOXAGGibgCc5?=
 =?iso-8859-1?Q?ejUyDjk9UZIHs6vlwhK13t9GL6SuY6Pwgqnjv9a4wirnooHchZ7xuCdmq/?=
 =?iso-8859-1?Q?tOhZtElLCv/BXPZYfKnQ1+rTOtj95v5jSyJ8w9uq9pX5MYEodVmwA8fAk/?=
 =?iso-8859-1?Q?/CssPBkqyMhOwOi0pbM7Y4c9X0AVu6WC2DBbqrssliKVv22P962hpK1GA0?=
 =?iso-8859-1?Q?5wfSJu2UxqC4RY+dKobdaL+N9AwCCudLNVDypQYDB3KFSNP83G6OjCnDx9?=
 =?iso-8859-1?Q?M7supcjB+Ftgl9RanDldSp3zWjpTDq156rNjc/oxKeE5PJOAptG+RG5wc4?=
 =?iso-8859-1?Q?QmsfzoRaz+y8fjBxGGpKMLNQiAz2mlNA8U+bkFqedM48LASQPLDs0cug?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 748309f4-990f-4622-30b4-08da9b38bff0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 18:48:46.6228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R0IBlLyiRIwjjtjwjIt1p5GGMuhFwBjniIpdloxBiqT3Ic4LwIaOqpgF6yx+P1E6sI9E6GtI5zjkbzOF3s5sxYLPLNJRRWB8eTQh4khLo5U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7132
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/6] Introduce struct cdclk_step
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, September 20, 2022 1:20 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> <uma.shankar@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: Re: [PATCH 0/6] Introduce struct cdclk_step
>=20
> On Fri, Sep 16, 2022 at 05:43:58PM -0700, Anusha Srivatsa wrote:
> > This is a prep series for the actual cdclk refactoring that will be
> > sent following this. Idea is to have a struct - cdclk_step that holds
> > the following:
> > - cdclk action (squash, crawl or modeset)
> > - cdclk frequency
> > which gets populated in atomic check. Driver uses the populated values
> > during atomic commit to do the suitable sequence of actions like
> > programming squash ctl registers in case of squashing or PLL sequence
> > incase of modeset and so on.
> >
> > This series just addresses the initial idea. The actual plumming in
> > the atomic commit phase will be sent shortly.
>=20
> OK, people keep ignoring what I say so I just typed up the code quickly. =
This
> to me seems like the most straightforward way to do what we need:
> https://github.com/vsyrjala/linux.git cdclk_crawl_and_squash
>=20
> Totally untested ofc, apart from me doing a quick scan through our cdclk
> tables for the crawl+squahs platforms to make sure that this approach
> should produce sane values.
Ville,
Why have a mid cdclk_config? Cant we use the new-cdclk-config for this purp=
ose?

Anusha=20
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >
> > Anusha Srivatsa (6):
> >   drm/i915/display Add dg2_prog_squash_ctl() helper
> >   drm/i915/display: add cdclk action struct to cdclk_config
> >   drm/i915/display: Embed the new struct steps for squashing
> >   drm/i915/display: Embed the new struct steps for crawling
> >   drm/i915/display: Embed the new struct steps for modeset
> >   drm/i915/display: Dump the new cdclk config values
> >
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 77
> > +++++++++++++++++-----  drivers/gpu/drm/i915/display/intel_cdclk.h |
> > 16 ++++-
> >  2 files changed, 74 insertions(+), 19 deletions(-)
> >
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
