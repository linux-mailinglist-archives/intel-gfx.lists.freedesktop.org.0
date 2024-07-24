Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 041F693ACC6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 08:44:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B226510E16B;
	Wed, 24 Jul 2024 06:44:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pp0L4TbZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6294710E16B
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 06:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721803442; x=1753339442;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YS3vlgcVLyzWS7Mf5seY3iYHBMNTdLGs2367LYjcPOM=;
 b=Pp0L4TbZ5rPtsMEkG3j3Z7a4iDGJO7O0QiqWFbuy9fXXOhgCyU0pI/hI
 pUX+Km0BBvTnNPseXZmZDU+BhnwM3Y3ifhJCJD09JZCJF3X3I779tgEJR
 bHZHucwm4Yen5b6qnNnAqEcvMXqcY4IwgXM3TCIqAHOffFlz0BScrs6DO
 xhZCaNkc/m+EYqkSGGobd2wmfQufuwP/EH1nLCQcWBcq5enexCnG0SqY3
 ZPAt7983uShws2ioL187NJz7oHOpIEI8fvjc4/WoKeIoLlTThBWg7MI4z
 zj6+MTL5uHlNXxXtOyQmYrDt7H/Geo1dS7xCFNoecz2U7C8/GoAQCSGyN A==;
X-CSE-ConnectionGUID: pCQbweJtSv6fXDP+FgIcrQ==
X-CSE-MsgGUID: d/ck8W+aSdu4GPv8UIJMeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="30879879"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="30879879"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 23:44:01 -0700
X-CSE-ConnectionGUID: RpgLT5zVTNuETCJw1DTyAg==
X-CSE-MsgGUID: cetmUineQ6OPNvPZJHZUTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="52422773"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 23:44:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 23:43:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 23:43:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 23:43:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 23:43:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c/qxlxdZPKRmschyp+G3oUe/GUQzr6oEXPX4hbxtcNQFrQkfeIXkbvdUvZUF5eaV+lLbxrmMl0zt3l5gxL3L0B45tUYDCVfMu4c+mHYnm5p3lXFtHR2RkY26Hiv2VgXGpG5zfuq0GjT5UPzDKjXsGmOPsJMUEiOtJQ9nzezgjR7F9thgMGeKQiPr4IJiRkaMZEbjepLbCCxs2ED06cT3pGbakF6NNGM6/mUbLYqXUFQXu2uWp0NeIEmAeh46xs3ngWZt4hdlGH1hUpeUOJZD5aMXhs7TtS2BVdqZaHEElioFxVmq7WXdbP4kFnmNBVoOLt3yNuvFkK9ty3wfuIogOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KzxB2Is09getIUlHDEAqfMSwFW8ndw3+zdP0d7jipwk=;
 b=i9e3P9fahMh/6Tay7twTDWGZ1NHzasA8DTVFDnBAr6BFXXLxXMfUMiavDVNRPjcR3qtAWFheCnh8ew/9iYTqO/w/dq0+sWs67JCLZnED7zGqg+J7l1z3qnfgYK8iZH3fikiN5oq7ei74XOVpKz+LOWuZvqH0g0NMP/vImlLMvy7j1gPlijq36w7JrD93mkn3Gjaw65Ee5S0Pz1AMXLTL1dgxtUm8E+I8YZDCh190QhcXU26kVfe6UR2umBmPGP4IIYZEHUDtRcvbhR2tL3E/JwW7RS0TG0t2RyMmbXgtyAuMibyeVOksQBIWMZRHby2FlGyLLAbp4OcYJKT3sWXwWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB7817.namprd11.prod.outlook.com (2603:10b6:610:123::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Wed, 24 Jul
 2024 06:43:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Wed, 24 Jul 2024
 06:43:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 09/14] drm/i915/dp_mst: Reduce the link parameters in BW
 order after LT failures
Thread-Topic: [PATCH 09/14] drm/i915/dp_mst: Reduce the link parameters in BW
 order after LT failures
Thread-Index: AQHa3FgM11VMltD9wkCfniFCeS81r7IFbRvA
Date: Wed, 24 Jul 2024 06:43:55 +0000
Message-ID: <SN7PR11MB6750ECC7B34BB74287512147E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-10-imre.deak@intel.com>
In-Reply-To: <20240722165503.2084999-10-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB7817:EE_
x-ms-office365-filtering-correlation-id: aa906f93-7a55-4a7c-964e-08dcababfd61
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?z3kzljJbFMzHlw7luxzLNAPzb4LAf6xIkadzdvSr5hyq2oG6CPYzPu9piqkR?=
 =?us-ascii?Q?bSlW7Xfo/ePiRB27CiQmAG33HBqHUzEE/mwGCr4kmflUETQGpbqUVLGm9S1K?=
 =?us-ascii?Q?yY9bUHEJa99D4eauaKhqzJ24b4mqlt2XmHMeqq1nUtyraaRWNcA1nUAdzYTG?=
 =?us-ascii?Q?loy+/dvWs79F1Jd44zNZV7W4ggnN0spxRt+6OVwpV/oCXWnyZYZrwFy5qb20?=
 =?us-ascii?Q?A61zdeLoSi565xBXtaWDAil9Y8gWwG15U0t+SSY9ylREnb7XtYloNd94gMcE?=
 =?us-ascii?Q?hdkPJASb6KjL0myCgVlA5vQ3bs+N4NVCWkiWAHKS4559RgIgEL4WsI1xRorF?=
 =?us-ascii?Q?0Wq3ni9Stnw2YuV62vZSmJBG4gme8xVdPRyy1KZvUAuBqO058NjE3LfF7xO2?=
 =?us-ascii?Q?Xj/VNJZy9W1utHScZtN5AStpKlsAiRDCfr+cpdLDbXErcBTP5CsWRzfIiyx4?=
 =?us-ascii?Q?jGtFNYgEcVpaZlXu+NFItfwW6+gt7ck17wqSH6XKEnHgXLYMOBZsEw/cy5EZ?=
 =?us-ascii?Q?9hlILBaIM82gJ8gudBXd+RjVuPAZf6Piu4eLgKf+ftp6b1xTTYVZkfqD9M5L?=
 =?us-ascii?Q?f07ZR6qKirmb8TZ3QQi1fEsbsDNKh1BD58Cw5JpHN8wi6WvskxUx+JfwfjqH?=
 =?us-ascii?Q?gYftKioXX+u9rrhMeEft0vQ0luyrq+ZFcI1JXxVYVANwfOs/thEGT+D/p6dM?=
 =?us-ascii?Q?2y8b0USII0XmwBvnwKBukxTM0P+yOddzqHo/c2Lt+xs3U9E/q2ID4uFgtn6k?=
 =?us-ascii?Q?jVgQPEKYaReo7zusABvHcryk2hns5Y+Zv40/yprlGIsG8xraNlSpYzXFkXXC?=
 =?us-ascii?Q?x7zVATiiBNnzUXnyUJaSXCZGJezx8jvHLMVa4VTwA7od6xf58ojulBC6zU90?=
 =?us-ascii?Q?+1t8QtpQlddtraJl79x36FFFO8n1VlRNrf1jz4f2j3QVUQvl2ufhjhls3e7N?=
 =?us-ascii?Q?+xcYg3XoLsCm1u0pbGdBLwNxzCQVGStlWORqu9CTntaKsG3VBz8vc8gxvqXb?=
 =?us-ascii?Q?HJwbP8+FcsYA0rCRUchzB6Jid+jsPcoDJTfUZTnHqzXSCR7Q/+m9pWJt7C0x?=
 =?us-ascii?Q?1QoQ7il5JjBBxnRaqVEIC3Tbp2Q9iTbZ7vSb06pE7O2vvWnwQkl7NBld5yr7?=
 =?us-ascii?Q?CYXMseZUdHbdACOAoLIlfikLIKJX6qTNlW1NlaohMx3H3foIxDMXymfJabRy?=
 =?us-ascii?Q?GBXLZNeoaThf/Y0c4ApSaWJX6Qmvyp4P4JRBvG1cAxOusrhpK0/ggDh+Ebsy?=
 =?us-ascii?Q?P+QEIDQuL+ze4PLvSRoJA8iPXkpK11KzrEwTX5za7+ON+8SprQdKAX8qoEqf?=
 =?us-ascii?Q?8+ctQZZALcvXbEuAf6GxKEdOUFbN3Olqv6ossL3DAj2Y7MEZqkTtGTMWQOOq?=
 =?us-ascii?Q?u6zKJKG/W/Q3O7xIjnULVOC/bb/xmO86RkqWdnfok5AiUh154Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ttkMDVxMBmAL6UDg4UrHCS4KUnAs5ErqpdZzFD8MGubExsE63uNkdWGTEpSB?=
 =?us-ascii?Q?7NH91+1DhxTo6INuGNeb1ZYZnapRW9Ormw4osYcKjKXP0CW5hmYaEyIeKO5J?=
 =?us-ascii?Q?HdyigwDPKexHAz6T68Ps+V4I+4bWwsIOqbq9KPFR6OmcFQ8prRylh47nNq6z?=
 =?us-ascii?Q?Njhs0TkNv35z4bu1RIuO04bsmwEzFYjOqxhKNW7Ht4//EQXGcRtNmY9DstCj?=
 =?us-ascii?Q?NNWdw1jj5tEJJwW0CzcB6MYDMPrBGNXw+coMWKQpfciAtjPcBfKNfQiawS+A?=
 =?us-ascii?Q?KsvBNr+sOcMlu2AGO4vDj5tUXLm5CVIPcuYYwYYV48H2fak9TRXdq2HTq5Sp?=
 =?us-ascii?Q?GXoiS5sU00rsF8QpjSnnZfcTyZqhRjBsFs5BEj+MLg4kzpC9d8Zl9qYN/GSn?=
 =?us-ascii?Q?ls/WF5/Qr68N0h6W1H3UWAD91GWdqVNvhoXBVnyVHwZYRpo+5jqqRc27+8kh?=
 =?us-ascii?Q?Yll6+oUk57cmRVW7sdMBzNZ+rQPVGWLPgLACVVv05msvvDaSWDfEnhEFQo3E?=
 =?us-ascii?Q?ewRRj6CcX0oLCT8F/vXeEdvyPpNLTwfSSGoyySDKy/d6c1qrNb2ZsssIctgK?=
 =?us-ascii?Q?YRCe4UAkNjm4JBCBGoQkNahyZEuIfsLzN6KELbvHPiB6Ka7RGPxJ0ilZ2iWc?=
 =?us-ascii?Q?XeYvVemsrKCoQ5GwpT5CE3ChFNL4cEdyA7XLZzjQhgnNt1aTZ6LbuH9p/i5i?=
 =?us-ascii?Q?3scWvqwLX1NTvASGA0Pw6I9SFOj1eMJRtEprAvxq6Q3qelb/6ZvQcTPfWLWw?=
 =?us-ascii?Q?+dDgkm7ysoFTodmlEriucuEkLwXko+hSIDKUkRtxHc5+clPNxHAVfGeq5frO?=
 =?us-ascii?Q?pV3QqQi9+P8hQzcpkYOVmwiif75JSwRukzZbPBlagYRC4lnd7vju+qTlKTSD?=
 =?us-ascii?Q?q1cVDvve7wM3rGQ1mTqt2Fm8JtbrIZcXIVbWGVx2W2HEWgvUG6NCnibWNsLI?=
 =?us-ascii?Q?uVaaFyTYJ286AWwkiGedJz7J4m8AfXGkOgoNWCZEeWbgjQMaH/VtsU8GzRX9?=
 =?us-ascii?Q?A2AWFP1Sg1QGnPaSptz6QQs3z77W8HLG8dLvl4lEqf6k2p8ntoa0HojYk2VU?=
 =?us-ascii?Q?A0d3KYSbaBXs8CdTw+mlqgCDN9reNi8F6ens2nzg024kTFJr4BDZllZAjiDu?=
 =?us-ascii?Q?8psygmKBK5f4GbmSAreGBjuhwUkWmMOErBS18jaZCgkUYmewo6JxkuYxgMMa?=
 =?us-ascii?Q?WRIuHMJbmOaZ7D3DopRwedTncJu449X/h9qAg4TiI2qE3mDCthAktjL6GHhz?=
 =?us-ascii?Q?pVYTW2OwWPgAHqA2RzOxF6Lc+UvTk1wqgHaLPcF6wVzYdli7gV8rDc6xOqOJ?=
 =?us-ascii?Q?7XYb9R7j33gNFoFAMnE4O2n59DiOGqYO8irhyxkYacG+RHHJ/8ws66E39sD1?=
 =?us-ascii?Q?Qctg52Gp22kVZ1tTcFlr46UNUrUwDaDhiKK6bMHTwJdXwfjOxcYs71NHdDnZ?=
 =?us-ascii?Q?vdenDhYwxcWNMH5TLrB8aDuHJ+HWJLOqb3224J1xABwxfQDKsAqQvvouRNtF?=
 =?us-ascii?Q?jBJhy7BuREvAusvntmXxCli9kDPrshDxzorqIMHOa+sB6kg3TQf0I0iuOSFS?=
 =?us-ascii?Q?KbyLvvNrt/1ZOx/Dxw8r4gggPJXT87XeMynGB55e?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa906f93-7a55-4a7c-964e-08dcababfd61
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2024 06:43:55.8537 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ak8+1SszDz/r/ea/vWw6THqFCG79qiKos2Iz39OdsBWFO4qpZmxz075fc22gfnaNj6UOeU7I5AhxzkZbJBKF4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7817
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
> Subject: [PATCH 09/14] drm/i915/dp_mst: Reduce the link parameters in BW
> order after LT failures
>=20
> On MST links - at least for some MST branch devices - the list of modes
> returned to users on an enabled link depends on the current link rate/lan=
e
> count parameters (besides the DPRX link capabilities, any MST branch BW
> limit and the maximum link parameters reduced after LT failures). In
> particular the MST branch BW limit may depend on the link rate/lane count
> parameters programmed to DPCD. After an LT failure and limiting the
> maximum link parameters accordingly, users should see a mode list
> reflecting these new limits. However with the current fallback order this=
 isn't
> ensured, as the new limit could allow for modes requiring a higher link B=
W,
> but these modes will be filtered out due to the enabled link's lower link=
 BW.
>=20
> Ensure that the mode list changes in a consistent way after a link traini=
ng
> failure and reducing the link parameters by changing the fallback order o=
n
> MST links to happen in BW order.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  12 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 111 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.h       |   2 +
>  .../drm/i915/display/intel_dp_link_training.c |  43 ++++++-
>  4 files changed, 166 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 3501125c55158..51e2151315977 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1778,6 +1778,18 @@ struct intel_dp {
>  	int common_rates[DP_MAX_SUPPORTED_RATES];
>  	struct {
>  		/* TODO: move the rest of link specific fields to here */
> +		/* common rate,lane_count configs in bw order */
> +		int num_configs;
> +#define INTEL_DP_MAX_LANE_COUNT			4
> +#define INTEL_DP_MAX_SUPPORTED_LANE_COUNTS
> 	(ilog2(INTEL_DP_MAX_LANE_COUNT) + 1)

I feel this name could be a little confusing this define here I am assuming=
 the
Different lane count configs we can support which would be 1,2,4 hence 3,
Maybe renaming it as  DP_MAX_LANE_COUNT_CONFIG

> +#define INTEL_DP_LANE_COUNT_EXP_BITS
> 	order_base_2(INTEL_DP_MAX_SUPPORTED_LANE_COUNTS)
> +#define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) -
> INTEL_DP_LANE_COUNT_EXP_BITS)
> +#define INTEL_DP_MAX_LINK_CONFIGS
> 	(DP_MAX_SUPPORTED_RATES * \
> +
> INTEL_DP_MAX_SUPPORTED_LANE_COUNTS)
> +		struct intel_dp_link_config {
> +			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
> +			u8
> lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
> +		} configs[INTEL_DP_MAX_LINK_CONFIGS];
>  		/* Max lane count for the current link */
>  		int max_lane_count;
>  		/* Max rate for the current link */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0882dddd97206..d3529c5836393 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -29,6 +29,7 @@
>  #include <linux/i2c.h>
>  #include <linux/notifier.h>
>  #include <linux/slab.h>
> +#include <linux/sort.h>
>  #include <linux/string_helpers.h>
>  #include <linux/timekeeping.h>
>  #include <linux/types.h>
> @@ -634,6 +635,114 @@ int intel_dp_rate_index(const int *rates, int len,
> int rate)
>  	return -1;
>  }
>=20
> +static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
> +				     const struct intel_dp_link_config *lc) {
> +	return intel_dp_common_rate(intel_dp, lc->link_rate_idx); }
> +
> +static int intel_dp_link_config_lane_count(const struct
> +intel_dp_link_config *lc) {
> +	return 1 << lc->lane_count_exp;
> +}
> +
> +static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
> +				   const struct intel_dp_link_config *lc) {
> +	return
> drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
> +					 intel_dp_link_config_lane_count(lc));
> +}
> +
> +static int link_config_cmp_by_bw(const void *a, const void *b, const
> +void *p) {
> +	struct intel_dp *intel_dp =3D (struct intel_dp *)p;	/* remove const */
> +	const struct intel_dp_link_config *lc_a =3D a;
> +	const struct intel_dp_link_config *lc_b =3D b;
> +	int bw_a =3D intel_dp_link_config_bw(intel_dp, lc_a);
> +	int bw_b =3D intel_dp_link_config_bw(intel_dp, lc_b);
> +
> +	if (bw_a !=3D bw_b)
> +		return bw_a - bw_b;
> +
> +	return intel_dp_link_config_rate(intel_dp, lc_a) -
> +	       intel_dp_link_config_rate(intel_dp, lc_b); }
> +
> +static void link_config_swap(void *a, void *b, int size, const void *
> +__always_unused p) {
> +	struct intel_dp_link_config *lc_a =3D a;
> +	struct intel_dp_link_config *lc_b =3D b;
> +
> +	swap(*lc_a, *lc_b);
> +}
> +
> +static void intel_dp_link_config_init(struct intel_dp *intel_dp) {
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	struct intel_dp_link_config *lc;
> +	int num_common_lane_counts;
> +	int i;
> +	int j;
> +
> +	if (drm_WARN_ON(&i915->drm,
> !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
> +		return;
> +
> +	num_common_lane_counts =3D
> +ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;

Same thing here can we rename it as num_common_lane_count_config

Regards,
Suraj Kandpal
> +
> +	if (drm_WARN_ON(&i915->drm, intel_dp->num_common_rates *
> num_common_lane_counts >
> +				    ARRAY_SIZE(intel_dp->link.configs)))
> +		return;
> +
> +	intel_dp->link.num_configs =3D intel_dp->num_common_rates *
> +num_common_lane_counts;
> +
> +	lc =3D &intel_dp->link.configs[0];
> +	for (i =3D 0; i < intel_dp->num_common_rates; i++) {
> +		for (j =3D 0; j < num_common_lane_counts; j++) {
> +			lc->lane_count_exp =3D j;
> +			lc->link_rate_idx =3D i;
> +
> +			lc++;
> +		}
> +	}
> +
> +	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
> +	       sizeof(intel_dp->link.configs[0]),
> +	       link_config_cmp_by_bw, link_config_swap,
> +	       intel_dp);
> +}
> +
> +void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int
> +*link_rate, int *lane_count) {
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	const struct intel_dp_link_config *lc;
> +
> +	if (drm_WARN_ON(&i915->drm, idx < 0 || idx >=3D intel_dp-
> >link.num_configs))
> +		idx =3D 0;
> +
> +	lc =3D &intel_dp->link.configs[idx];
> +
> +	*link_rate =3D intel_dp_link_config_rate(intel_dp, lc);
> +	*lane_count =3D intel_dp_link_config_lane_count(lc);
> +}
> +
> +int intel_dp_link_config_index(struct intel_dp *intel_dp, int
> +link_rate, int lane_count) {
> +	int link_rate_idx =3D intel_dp_rate_index(intel_dp->common_rates,
> intel_dp->num_common_rates,
> +						link_rate);
> +	int lane_count_exp =3D ilog2(lane_count);
> +	int i;
> +
> +	for (i =3D 0; i < intel_dp->link.num_configs; i++) {
> +		const struct intel_dp_link_config *lc =3D &intel_dp-
> >link.configs[i];
> +
> +		if (lc->lane_count_exp =3D=3D lane_count_exp &&
> +		    lc->link_rate_idx =3D=3D link_rate_idx)
> +			return i;
> +	}
> +
> +	return -1;
> +}
> +
>  static void intel_dp_set_common_rates(struct intel_dp *intel_dp)  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp); @@ -652,6
> +761,8 @@ static void intel_dp_set_common_rates(struct intel_dp
> *intel_dp)
>  		intel_dp->common_rates[0] =3D 162000;
>  		intel_dp->num_common_rates =3D 1;
>  	}
> +
> +	intel_dp_link_config_init(intel_dp);
>  }
>=20
>  static bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int
> link_rate, diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> b/drivers/gpu/drm/i915/display/intel_dp.h
> index 9be539edf817b..1b9aaddd8c35c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -107,6 +107,8 @@ int intel_dp_max_common_rate(struct intel_dp
> *intel_dp);  int intel_dp_max_common_lane_count(struct intel_dp
> *intel_dp);  int intel_dp_common_rate(struct intel_dp *intel_dp, int inde=
x);
> int intel_dp_rate_index(const int *rates, int len, int rate);
> +int intel_dp_link_config_index(struct intel_dp *intel_dp, int
> +link_rate, int lane_count); void intel_dp_link_config_get(struct
> +intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
>  void intel_dp_update_sink_caps(struct intel_dp *intel_dp);  void
> intel_dp_reset_link_params(struct intel_dp *intel_dp);
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 214c8858b8a94..0c8e0d6437b5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1170,6 +1170,41 @@ static bool
> intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
>  	return true;
>  }
>=20
> +static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
> +					   const struct intel_crtc_state
> *crtc_state,
> +					   int *new_link_rate, int
> *new_lane_count) {
> +	int link_rate;
> +	int lane_count;
> +	int i;
> +
> +	i =3D intel_dp_link_config_index(intel_dp, crtc_state->port_clock,
> crtc_state->lane_count);
> +	for (i--; i >=3D 0; i--) {
> +		intel_dp_link_config_get(intel_dp, i, &link_rate,
> &lane_count);
> +
> +		if ((intel_dp->link.force_rate &&
> +		     intel_dp->link.force_rate !=3D link_rate) ||
> +		    (intel_dp->link.force_lane_count &&
> +		     intel_dp->link.force_lane_count !=3D lane_count))
> +			continue;
> +
> +		/* TODO: Make switching from UHBR to non-UHBR rates
> work. */
> +		if (drm_dp_is_uhbr_rate(crtc_state->port_clock) !=3D
> +		    drm_dp_is_uhbr_rate(link_rate))
> +			continue;
> +
> +		break;
> +	}
> +
> +	if (i < 0)
> +		return false;
> +
> +	*new_link_rate =3D link_rate;
> +	*new_lane_count =3D lane_count;
> +
> +	return true;
> +}
> +
>  static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)=
  {
>  	int rate_index;
> @@ -1231,8 +1266,12 @@ static bool
> reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,  static
> bool reduce_link_params(struct intel_dp *intel_dp, const struct
> intel_crtc_state *crtc_state,
>  			       int *new_link_rate, int *new_lane_count)  {
> -	return reduce_link_params_in_rate_lane_order(intel_dp, crtc_state,
> -						     new_link_rate,
> new_lane_count);
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
> +		return reduce_link_params_in_bw_order(intel_dp,
> crtc_state,
> +						      new_link_rate,
> new_lane_count);
> +	else
> +		return reduce_link_params_in_rate_lane_order(intel_dp,
> crtc_state,
> +							     new_link_rate,
> new_lane_count);
>  }
>=20
>  static int intel_dp_get_link_train_fallback_values(struct intel_dp *inte=
l_dp,
> --
> 2.44.2

