Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1164C5094B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 06:07:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F8710E692;
	Wed, 12 Nov 2025 05:07:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zstk1lMS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8927210E692;
 Wed, 12 Nov 2025 05:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762924066; x=1794460066;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+F2M1WSivJZh3WEf3252XacqGQayhW/uZQxnuPUVwJM=;
 b=Zstk1lMSir61A8x5O5CGRWlOWqQXYjIllB78t/SpUBF9SQge1MiA2V2J
 tngZaLoQbkyhdEOULD5dEYQJOkqnGKjMRqGeDpx5gar1M2Z8X9gYb3DPO
 NdfETD6NSO2dgeYuPHQsvx1++/CX7bMy3RhOnUYVY1tashoky0H6K4xC/
 qgVAhXAxZe8NY50TETqWfmvh2pUJWzaVYsWSQPkcigiaGXFYa24x5Fxhv
 12A+VHjAB+3esA9Vwl4h6aPVlxWBa/SCG7k0F3UnCv5fqRRu5+Hn8yEMd
 hw+97/RkPbfs14/RAS+GZGoIE35mKy6bBsDXqnKicdYujTim0vC4wYKXD w==;
X-CSE-ConnectionGUID: zqiaMKd4T92O6SU019NATA==
X-CSE-MsgGUID: vyRk8pDNQyiu99ojJQ6ihQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="90454345"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="90454345"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:07:46 -0800
X-CSE-ConnectionGUID: 4upnggkFTPaHs7CtNQc70g==
X-CSE-MsgGUID: Be9GtA/VTlGBDK+u7uqotw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="188422704"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 21:07:46 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:07:45 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 21:07:45 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.7) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 21:07:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eThyeP0aT6irhXC01EUht3TuLCtyGvc59mfmUf2Q6NgwVP2kwagrD+v9q2gpxZ6rxFgHMFCp6b5hai1nGwKI+a38ewGQfrjitG9HbEQpdQpEZLiC3tsWeRKeK0UcV7VlOgeW6BKHgAkzUtG5d6oCnydabDdWWBTn6Em/90a0n92EeSK2zHY3PW8klTylJhNikyOZsua9R7cQZhE6sD7KPLbwMkwk3FFT7HL2BVh95q4PyF0Fh6tL2+2unDbC6qlv5QSUNVOhDbs9wjQj3f2QDBGXuzBSzuFIODpP7ulTOYUpz7lBxP989i4VBPmbPcBLXeO4YCRX9exAvwTOBJgc/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FpW7M91OqfcztbBZUSR625CyrvGZWKBAmXi27trbSv4=;
 b=dwf9DAuyAsVayN74Jcqc04k7jim2gchaM7VL3LAEAUT/pIjECk8JBkr1lnZa2rh1QJlntIUt4YAp2ORz9ShT7XMsW4h8O6dA/ljdkmAB+nvOObpTg126Uh16T1f+fYKm34R1Q+keP54HkkIprBWWfZFW80peFUmCPWng3dyhtzVNC63BKvRuKiaagEREjrmIPaFld2fR2lxtvDGlivRgN+AaR0IUe7VLgF6rVuNNPve+41CHZ+2GD/8lexEziOFlntGJZnS3uDCvFi+7aUu4hLsdAChbYAsqzsueB7FSNH8DpvR9Fa39sEj9xUcqI/6oUsh9GMh5ScSaJj/kFjOGng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB6123.namprd11.prod.outlook.com
 (2603:10b6:208:3ed::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 05:07:43 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 05:07:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 23/32] drm/i915/display: Add .dump_hw_state
Thread-Topic: [CI 23/32] drm/i915/display: Add .dump_hw_state
Thread-Index: AQHcSlaJsG+k0alch0q4w+0AlTtPIbTujEvA
Date: Wed, 12 Nov 2025 05:07:42 +0000
Message-ID: <DM3PPF208195D8D8D6AE91CBD5F0F2175AAE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-24-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-24-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: cab4ef28-0a16-4bc3-2e44-08de21a968e4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?khPvlLwDIJbxBSYqgBINebUem6xBIG/ZWN/qzVwCFSNLGhro4tv6f6tPLraM?=
 =?us-ascii?Q?teyLL1+Lfx8ZhuvhVG4oiwtxedUIAeKFcDS6FxNQ/OLvctun1LKQnUfx8AO0?=
 =?us-ascii?Q?2RS89/qQqPATwGIBBpq9j8zK4WjuEYg1LNJSchtYiwYx1IBoub3GkHQWA5bm?=
 =?us-ascii?Q?XoYjp+Yi088QG1Ztb20J+lkhDK3Irz+qLpwUz1UsIMhEKBCopG6PcEyw3xO1?=
 =?us-ascii?Q?9o1ncoZaPfgAKmHRZlg4Bl0+ZZDJ+OWeI4hKARP3XjSKLf9SN658MEaJOeVo?=
 =?us-ascii?Q?4Yi75RgqcUK1X+A6/2K1LwfhjCzlto6sS8S0wKW4UQN4dzXZp64Zr7+yhVjq?=
 =?us-ascii?Q?uGS9MkEh9tb2IL9bn/6GOABVjSsRDtFhQ4keizBohvxy81d333A7BdDJXOUw?=
 =?us-ascii?Q?0icIs4x66pRoSaO8iEmy2WBDlLe+0zXwFlDbpFrxJThl3NquC04NA1oZyYXA?=
 =?us-ascii?Q?mXAtC2ZvdxgO2OjyOPGsy+DEnvKyLuLuxExHhsyIpUZhg+m2Wua8ft3YUux0?=
 =?us-ascii?Q?eHe18856NPaajXHUXMeB2Po4apnDo6dwxITy4g34y7pD8N3rZVy4KbWDJBxM?=
 =?us-ascii?Q?vVBEVQIvDZuzTZrzGIlXf5LFbPDBK660CRz7zeHdD25sRwblIKcVRNvOMHQ7?=
 =?us-ascii?Q?V1mE8V8XOPeGeGDdsUy1CPNHyWClC67rw+CT4vR7FVH2K/dyp8yc6OwHqPbu?=
 =?us-ascii?Q?k9mrr+sncKBP1Nb1a1Xi+2uMEIAYNPTmGKB2JrBpD75AVlsyg76YChGEcM92?=
 =?us-ascii?Q?2oPSdwApKZHqPqZQlFh+Ho8slbDyt2Ioul5yRCcb1KcilcSjQ3nUpjzV1lRs?=
 =?us-ascii?Q?daVlArKjXu0YkievgU5lY+bZbjm2h6b/uilTZRhnK220ULQbh9tR/wB0PL5T?=
 =?us-ascii?Q?qmFtTydDWG+unyVMYnBB4JBUdMvdQNVoclgnLkmp45BNli4DOAFkC1VXi5sB?=
 =?us-ascii?Q?eK/Jg7PPDIg8MHpqv4SIsTX7uabV0APloyY15siX18Ig0djBGX9vT8j/r2+u?=
 =?us-ascii?Q?C4rh+gWQVLxc6yAWjPDCVIC7ffzxweivfpN7imIDIVMUqlDkzx2Df08qo1I5?=
 =?us-ascii?Q?HQ3fTT5JUkLFJuHEyT0BJSIU61gs3XltXG6rrnSLeII/0lDmAY8XFPUyzDGj?=
 =?us-ascii?Q?+yDjZIm3VHU0fIs4mfGNy0iFxQYjKMM7e4WlzQYWiRzBY4J93sgZFYjK/9YZ?=
 =?us-ascii?Q?3iQeIwJ/2dQs8HvTu+03eSO7Wbkua8FWgJmGr7nc+7FvvYM2uCiWdiGlgKhl?=
 =?us-ascii?Q?Tp1Gg3aGI4GhJuKMq8517eT5do7gJAjX0/cdd5IbXr+uNphV0jGhV0Kmjp5O?=
 =?us-ascii?Q?tdhOn3qUVZBuObdSzRZ4jPmlXPc4dmjkAgtUHy8s4jm1JlL1bk1rBtZBEXti?=
 =?us-ascii?Q?zsoF53zYYXJ9ONCUYnyDs6/IkXr2+hzzAO8n8oj392AYnH5UZYh2wuW+wwiF?=
 =?us-ascii?Q?8gdAJqEyaudPRYzvE1mlUdmcrLLTMuoY5UKqbntuKlpycTkjznOH7B9roYT+?=
 =?us-ascii?Q?7UvVrPGh0nlfXWe9ib+ozzuNcr32cl8ePY/d?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FRlPTnqgdEb1bpOcsUeBO0s4HQoYu02n49+VlkrrnIDqljJrFf6u/rWziCE4?=
 =?us-ascii?Q?0fAFuFM5Xk9eoxmRDHD9TFJcHtmCWP4H4gHqhW33qF7HFmB7Iyl8QxPJ5IRC?=
 =?us-ascii?Q?8dQKNax/K9lhU5MrwOAxGXfxs0/LxrPasy79341q84DdB624tD5+9zbddo37?=
 =?us-ascii?Q?Yzf3/CelYdwwsKqKvbNgw5jewXPBSw7qeMFlM42OMAXCFV1g4HqUQS/86NeS?=
 =?us-ascii?Q?9aY05O8WDMjbYW9ORLNt+yf6CwE7VunE15xdWNc9nVsjjLkOcskHEmjALW8N?=
 =?us-ascii?Q?jZD+TFCabR09f22o/Qp9fs3SuLnrKIsskhhwEPam8KyQpPzH1olE4vlTaxpS?=
 =?us-ascii?Q?ASN3dc1RCmuwpXCbkqInQ7/K0y4+5aqoq/svDR/VBtr1a+MOD/0m374yktEH?=
 =?us-ascii?Q?ObwQmL3WPtu/BLqiUDO9LszwzZEnX9kl5N4VoZ/ieYmPXLkODIiiTIe8OMcA?=
 =?us-ascii?Q?l7Zp/dUyJRP3Ow41KV1NeTTqfteWkISVDgyylE3m/7s3TMc2x3pCFXJyzYZI?=
 =?us-ascii?Q?3I8Y4KUvetQXIS+0SB5D+LQGLe61qcRxCmpRDoMeWgo0a8ilAXr5b12wxA7P?=
 =?us-ascii?Q?rCn+XdiykbP4A0N+s5aFMKR6XX35JbLkl+cqW+LqhcbtpMJOt4fmhpD4FYRA?=
 =?us-ascii?Q?EL4P141fIIrMu+Hc330d6mj7GULklMMUYsY+BiSdNrBFDIK6whl12PEnJEZ1?=
 =?us-ascii?Q?yJrt2M3eYkOTG6wVoFLLWnud4tYQyQxdmUEeU8HfzVV/tKF2LW3XNlTwUuhH?=
 =?us-ascii?Q?t/Ba2RJYrbH6Ahuzoruq3FcJfTg7slIgBOaOChT26j4GeocBnrbTVt1XNnUe?=
 =?us-ascii?Q?+5z95Ih3MgCBnnVjWRNKhzhtLiWenUSCNGVe/JoDz6yDiB3aTTcoRht3xxiO?=
 =?us-ascii?Q?rGb3ydQKkY7ivU9ubvzQw4g3bysGmPSWj+2gUyS/IkfAs50y4EVWt/I3FDeC?=
 =?us-ascii?Q?Dcz7s3bPqD5hfl2ntm07DirFsNQBwRItGvoqk1qb6u4pzpXcEscRAypkAbo/?=
 =?us-ascii?Q?EEQFnSaZNZ7GvrvO7yDSB+7dJGwPum/mkCZ6NKY9/1P9/3/+vvAzGDUdyNuQ?=
 =?us-ascii?Q?vxeClavm8E2+cM68i8fErjWoFlNGo3UqjTWBzjNw61KjKpm9aH3MEtWh5O6a?=
 =?us-ascii?Q?vSwJXG4BKpnFy8smiFs7IpffkRNgs+OYGZ5R6xaCUZppp+2IovZowzzikFe3?=
 =?us-ascii?Q?FymAe1Y7paK1dne/H5KmWwbITys/ScRPxI6qvkguqXMpdVeKAn5KKxc0smUr?=
 =?us-ascii?Q?1cW21EOqX6N2tj6WFlvRJ03+/bpZJvlzJTvMx9K72QgDF3KKu2CIx8ub9UaF?=
 =?us-ascii?Q?Es5cKN/3des5zqz+nGB21owesGYd2jiq3via2CHgMNN4l/VWzLmey0LG1Qzl?=
 =?us-ascii?Q?N5BBwCSMDAvAFqMQA5x6QVUAiCQKXhyZO/C70hA835aJ9axtjDdy5H69o7R6?=
 =?us-ascii?Q?6bUuYNyr85YZDZmRgAK/bs/+N24ZMNz9INPTevVZswmENXJDqL7OJf/yALTr?=
 =?us-ascii?Q?uQUYVBFRu4buQn0HqcEtP4uAdGJGkkIWhrr+XZJg7St7SiGns/j7wTmxdF1R?=
 =?us-ascii?Q?JcL8a57ERk8ynsXIAk6L5Tlo01DDARTYh+rlY4gB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cab4ef28-0a16-4bc3-2e44-08de21a968e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 05:07:42.6096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A6mTg/MF7xE0T5Z8RNP+nF6r3hgEVcbh8u5WmvzvJV49RMfezjdgmvm0HnjXopHR88JgAyO7zitMOBvj42WLbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
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

> Subject: [CI 23/32] drm/i915/display: Add .dump_hw_state
>=20
> Add .dump_hw_state function pointer for MTL+ platforms to support dpll
> framework. While at it, switch to use drm_printer structure to print hw s=
tate
> information.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 73 ++++++++++---------
> drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  3 +-
> drivers/gpu/drm/i915/display/intel_display.c  |  5 +-
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  7 ++
>  4 files changed, 48 insertions(+), 40 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f5e6634a6389..e44dfda43d38 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2302,7 +2302,7 @@ static void intel_c10_pll_program(struct
> intel_display *display,
>  	intel_c10_msgbus_access_commit(encoder, INTEL_CX0_LANE0, true);  }
>=20
> -static void intel_c10pll_dump_hw_state(struct intel_display *display,
> +static void intel_c10pll_dump_hw_state(struct drm_printer *p,
>  				       const struct intel_c10pll_state *hw_state)  {
>  	bool fracen;
> @@ -2311,33 +2311,33 @@ static void intel_c10pll_dump_hw_state(struct
> intel_display *display,
>  	unsigned int multiplier, tx_clk_div;
>=20
>  	fracen =3D hw_state->pll[0] & C10_PLL0_FRACEN;
> -	drm_dbg_kms(display->drm, "c10pll_hw_state: clock: %d, fracen: %s, ",
> -		    hw_state->clock, str_yes_no(fracen));
> +	drm_printf(p, "c10pll_hw_state: clock: %d, fracen: %s, ",
> +		   hw_state->clock, str_yes_no(fracen));
>=20
>  	if (fracen) {
>  		frac_quot =3D hw_state->pll[12] << 8 | hw_state->pll[11];
>  		frac_rem =3D  hw_state->pll[14] << 8 | hw_state->pll[13];
>  		frac_den =3D  hw_state->pll[10] << 8 | hw_state->pll[9];
> -		drm_dbg_kms(display->drm, "quot: %u, rem: %u, den: %u,\n",
> -			    frac_quot, frac_rem, frac_den);
> +		drm_printf(p, "quot: %u, rem: %u, den: %u,\n",
> +			   frac_quot, frac_rem, frac_den);
>  	}
>=20
>  	multiplier =3D (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK,
> hw_state->pll[3]) << 8 |
>  		      hw_state->pll[2]) / 2 + 16;
>  	tx_clk_div =3D REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, hw_state-
> >pll[15]);
> -	drm_dbg_kms(display->drm,
> -		    "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
> +	drm_printf(p,
> +		   "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
>=20
> -	drm_dbg_kms(display->drm, "c10pll_rawhw_state:");
> -	drm_dbg_kms(display->drm, "tx: 0x%x, cmn: 0x%x\n", hw_state->tx,
> -		    hw_state->cmn);
> +	drm_printf(p, "c10pll_rawhw_state:");
> +	drm_printf(p, "tx: 0x%x, cmn: 0x%x\n", hw_state->tx,
> +		   hw_state->cmn);

Can fit in the same line

>=20
>  	BUILD_BUG_ON(ARRAY_SIZE(hw_state->pll) % 4);
>  	for (i =3D 0; i < ARRAY_SIZE(hw_state->pll); i =3D i + 4)
> -		drm_dbg_kms(display->drm,
> -			    "pll[%d] =3D 0x%x, pll[%d] =3D 0x%x, pll[%d] =3D 0x%x,
> pll[%d] =3D 0x%x\n",
> -			    i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
> -			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
> +		drm_printf(p,
> +			   "pll[%d] =3D 0x%x, pll[%d] =3D 0x%x, pll[%d] =3D 0x%x,
> pll[%d] =3D 0x%x\n",
> +			   i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
> +			   i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
>=20
>  /*
> @@ -2832,49 +2832,50 @@ static void intel_c20pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	cx0pll_state->ssc_enabled =3D readout_ssc_state(encoder,
> intel_c20phy_use_mpllb(pll_state));
>  }
>=20
> -static void intel_c20pll_dump_hw_state(struct intel_display *display,
> +static void intel_c20pll_dump_hw_state(struct drm_printer *p,
>  				       const struct intel_c20pll_state *hw_state)  {
>  	int i;
>=20
> -	drm_dbg_kms(display->drm, "c20pll_hw_state clock: %d:\n", hw_state-
> >clock);
> -	drm_dbg_kms(display->drm,
> -		    "tx[0] =3D 0x%.4x, tx[1] =3D 0x%.4x, tx[2] =3D 0x%.4x\n",
> -		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
> -	drm_dbg_kms(display->drm,
> -		    "cmn[0] =3D 0x%.4x, cmn[1] =3D 0x%.4x, cmn[2] =3D 0x%.4x, cmn[3]
> =3D 0x%.4x\n",
> -		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2],
> hw_state->cmn[3]);
> +	drm_printf(p, "c20pll_hw_state: clock: %d\n", hw_state->clock);
> +	drm_printf(p,
> +		   "tx[0] =3D 0x%.4x, tx[1] =3D 0x%.4x, tx[2] =3D 0x%.4x\n",

Same here

> +		   hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
> +	drm_printf(p,
> +		   "cmn[0] =3D 0x%.4x, cmn[1] =3D 0x%.4x, cmn[2] =3D 0x%.4x, cmn[3]
> =3D 0x%.4x\n",
> +		   hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2],
> +hw_state->cmn[3]);
>=20
>  	if (intel_c20phy_use_mpllb(hw_state)) {
>  		for (i =3D 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
> -			drm_dbg_kms(display->drm, "mpllb[%d] =3D 0x%.4x\n", i,
> -				    hw_state->mpllb[i]);
> +			drm_printf(p, "mpllb[%d] =3D 0x%.4x\n", i,
> +				   hw_state->mpllb[i]);
>  	} else {
>  		for (i =3D 0; i < ARRAY_SIZE(hw_state->mplla); i++)
> -			drm_dbg_kms(display->drm, "mplla[%d] =3D 0x%.4x\n", i,
> -				    hw_state->mplla[i]);
> +			drm_printf(p, "mplla[%d] =3D 0x%.4x\n", i,
> +				   hw_state->mplla[i]);

Ditto
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
>  		/* For full coverage, also print the additional PLL B entry. */
>  		WARN_ON(i + 1 !=3D ARRAY_SIZE(hw_state->mpllb));
> -		drm_dbg_kms(display->drm, "mpllb[%d] =3D 0x%.4x\n", i,
> hw_state->mpllb[i]);
> +		drm_printf(p, "mpllb[%d] =3D 0x%.4x\n", i, hw_state->mpllb[i]);
>  	}
>=20
> -	drm_dbg_kms(display->drm, "vdr: custom width: 0x%02x, serdes rate:
> 0x%02x, hdmi rate: 0x%02x\n",
> -		    hw_state->vdr.custom_width, hw_state->vdr.serdes_rate,
> hw_state->vdr.hdmi_rate);
> +	drm_printf(p,
> +		   "vdr: custom width: 0x%02x, serdes rate: 0x%02x, hdmi rate:
> 0x%02x\n",
> +		   hw_state->vdr.custom_width, hw_state->vdr.serdes_rate,
> +hw_state->vdr.hdmi_rate);
>  }
>=20
> -void intel_cx0pll_dump_hw_state(struct intel_display *display,
> +void intel_cx0pll_dump_hw_state(struct drm_printer *p,
>  				const struct intel_cx0pll_state *hw_state)  {
> -	drm_dbg_kms(display->drm,
> -		    "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s, use_c10:
> %s, tbt_mode: %s\n",
> -		    hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
> -		    str_yes_no(hw_state->use_c10), str_yes_no(hw_state-
> >tbt_mode));
> +	drm_printf(p,
> +		   "cx0pll_hw_state: lane_count: %d, ssc_enabled: %s, use_c10:
> %s, tbt_mode: %s\n",
> +		   hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
> +		   str_yes_no(hw_state->use_c10), str_yes_no(hw_state-
> >tbt_mode));
>=20
>  	if (hw_state->use_c10)
> -		intel_c10pll_dump_hw_state(display, &hw_state->c10);
> +		intel_c10pll_dump_hw_state(p, &hw_state->c10);
>  	else
> -		intel_c20pll_dump_hw_state(display, &hw_state->c20);
> +		intel_c20pll_dump_hw_state(p, &hw_state->c20);
>  }
>=20
>  static bool intel_c20_protocol_switch_valid(struct intel_encoder *encode=
r) diff -
> -git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 7b88c3fe9de1..03441138ec01 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -8,6 +8,7 @@
>=20
>  #include <linux/types.h>
>=20
> +struct drm_printer;
>  enum icl_port_dpll_id;
>  struct intel_atomic_state;
>  struct intel_c10pll_state;
> @@ -36,7 +37,7 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder
> *encoder,  int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder=
,
>  				 const struct intel_cx0pll_state *pll_state);
>=20
> -void intel_cx0pll_dump_hw_state(struct intel_display *display,
> +void intel_cx0pll_dump_hw_state(struct drm_printer *p,
>  				const struct intel_cx0pll_state *hw_state);  bool
> intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
>  				   const struct intel_cx0pll_state *b); diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index a8b4619de347..2e927d6cd577 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4939,15 +4939,14 @@ pipe_config_cx0pll_mismatch(struct drm_printer
> *p, bool fastset,
>  			    const struct intel_cx0pll_state *a,
>  			    const struct intel_cx0pll_state *b)  {
> -	struct intel_display *display =3D to_intel_display(crtc);
>  	char *chipname =3D a->use_c10 ? "C10" : "C20";
>=20
>  	pipe_config_mismatch(p, fastset, crtc, name, chipname);
>=20
>  	drm_printf(p, "expected:\n");
> -	intel_cx0pll_dump_hw_state(display, a);
> +	intel_cx0pll_dump_hw_state(p, a);
>  	drm_printf(p, "found:\n");
> -	intel_cx0pll_dump_hw_state(display, b);
> +	intel_cx0pll_dump_hw_state(p, b);
>  }
>=20
>  static bool allow_vblank_delay_fastset(const struct intel_crtc_state
> *old_crtc_state) diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr=
.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 01e649d66f08..d4b58c426044 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4443,6 +4443,12 @@ static int mtl_get_dplls(struct intel_atomic_state
> *state,
>  		return mtl_get_non_tc_phy_dpll(state, crtc, encoder);  }
>=20
> +static void mtl_dump_hw_state(struct drm_printer *p,
> +			      const struct intel_dpll_hw_state *dpll_hw_state) {
> +	intel_cx0pll_dump_hw_state(p, &dpll_hw_state->cx0pll); }
> +
>  __maybe_unused
>  static const struct intel_dpll_mgr mtl_pll_mgr =3D {
>  	.dpll_info =3D mtl_plls,
> @@ -4451,6 +4457,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr =3D =
{
>  	.put_dplls =3D icl_put_dplls,
>  	.update_active_dpll =3D icl_update_active_dpll,
>  	.update_ref_clks =3D icl_update_dpll_ref_clks,
> +	.dump_hw_state =3D mtl_dump_hw_state,
>  };
>=20
>  /**
> --
> 2.34.1

