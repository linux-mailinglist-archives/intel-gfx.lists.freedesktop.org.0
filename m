Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKFPK2uOlmnThQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 05:15:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7F515BFE8
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Feb 2026 05:15:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F1A310E672;
	Thu, 19 Feb 2026 04:15:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CMRePhHD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7729910E674;
 Thu, 19 Feb 2026 04:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771474535; x=1803010535;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z3iePleDLLAzo0n1Zep+t+h9DR/jclovrknkz01LCIM=;
 b=CMRePhHDakTkoW4WwcRRDVLwm/S1Y5+SGv/4Iw9eFB9t1g5SczdtrB9j
 fo1daElhD5ZOKJxn0QZ+fkS5lzYTz9KVEwkcIzu+u7F8PRg+tN7mUNBzF
 9S9xXK7PJ2Hfa4JEnWjuX6ITMrwSswuDBlgdQA4mcsaNtcBha/kBlfJrL
 40XCbjoQ7C/9mrmlJP425+eRZrbZqFugZzTWTYAS5ktM7RdWoDXRZCO2h
 NifniquQQw7Sa+K1sgNufIfIATgXgGanzZF/sINcIYVsofghHg8dRLQiM
 AZk0gUXstow7OsEYL5ChpzI8zbdI0BnMUkje5bjcQa6eDdDXAqmxnSwZ/ A==;
X-CSE-ConnectionGUID: 6qCnfqXzSUugb+2QaHev2Q==
X-CSE-MsgGUID: D12Xy8mKSxeq3acfTnrJeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72599988"
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="72599988"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 20:15:34 -0800
X-CSE-ConnectionGUID: IFdrtCGCSKq2AqC5UCbqlw==
X-CSE-MsgGUID: +rSqip0aQeaTJ6dtK5NLtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="243103663"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 20:15:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 20:15:28 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 18 Feb 2026 20:15:28 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.37) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 18 Feb 2026 20:15:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sQKjk+5CGjsSitHst6xBmSuSFYPJlTDnacPJ21M44ICCpnSAiLcbQ7HybGf6KGEBRlyxn/wbWQ/2eQHZ/K7d83tmQ7JngNHo6DOR6oemBmUN/ZHAihpi2La+v+CVIb/yNVsacmsQCBwkQS3pn899lepmbTKGeEc//R0OEFoFMK2sR4xfH9ly6JVGuTgJwOCM1QAlHpmKuW+eUaIO9wD0rhtZCMDcovWP/XqbFCQ91Crr8D92Ov7tD29omAgKdVWa7mDVC3lYkGTFpzLIEkIkjRexF3oxyxjW4MAMxC4xROV/6r/RvXvV+c0tEoy4/MDl1RSdkCQRWwevMZlOAkY9EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ux0mPHcC7zVaeX0hSqXWn54JpLfKcARCAeirS7IqUaU=;
 b=BEgT/ywe3ueBJZajKZ81+vlS1uhCyBl9z6tWIyUViS9nBbxWRKi7/TYwQm+XSuEU3+c6rgrg311ocFcbr4EGvc4ZnKuWwTZtsl2gVu4vCMtS5qi7r1jD4egLV9ERAyk1Cl8wWWIq27XWYlTTYjcQEjWVWj4emR1SoDdFlEPLWn0sEW16i29Zg3eysg+pUyPBCX77T/WaL3MutmlbIYSjeW5vnVviaEtiY5NQdfH8zXc5u0hY2QqGanqHAnwSFVR3/GC03CM1pfBj89Ks1JAHMcfjf5t9X0WePvAWT6UrLfm0G1V82MXx3CDbYalsztvsB6nDYq1Cm/AKdqqMEaCv6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB8830.namprd11.prod.outlook.com
 (2603:10b6:208:599::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.15; Thu, 19 Feb
 2026 04:15:18 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Thu, 19 Feb 2026
 04:15:18 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 12/19] drm/i915/lt_phy: Add xe3plpd .get_freq hook
Thread-Topic: [PATCH 12/19] drm/i915/lt_phy: Add xe3plpd .get_freq hook
Thread-Index: AQHcnOTUkupVArtbw0+qIHr+4D7fsLWJcm7Q
Date: Thu, 19 Feb 2026 04:15:18 +0000
Message-ID: <DM3PPF208195D8D6CF6064127A3B28C4573E36BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-13-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-13-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB8830:EE_
x-ms-office365-filtering-correlation-id: 8b712553-1ddd-4552-5ca4-08de6f6d7dc8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?03tMX6UI+he2gjJPbR3ffHP6of5KRQyv0Gse9DsORaDk/ChyG92AI6ez27qy?=
 =?us-ascii?Q?jOrFvUfQO1Tkhn8Bl6+jmsxgmqecoLWyGtEhxjOahs+flIjxYlGIkO9M46ND?=
 =?us-ascii?Q?POsD/fnc7V07F5tFKFsb4VcY3+OE2UzEOhToK4IENzkF/IGlnAS+8k1QhG3F?=
 =?us-ascii?Q?O1HV+blO+kYs3tPX31TeEuf5JlLhEOHHHm04I7ij6AQbGC0JrA8cqcSyToDs?=
 =?us-ascii?Q?49kGchTTwzli56GFPmIvdFROq01qlTTz8y4qjOy6x7ja6BpdPegBeFu7gjsl?=
 =?us-ascii?Q?KBq/h7pTBZwcE7l05eXpO9cF22F3Q0sihrtnxbemcl99CWE07B2gUqwC6UD4?=
 =?us-ascii?Q?uG5TrJRZZ/p4HD7ahIOZoksTRrZiPFmFeEGZKBNKFFOSXSuqZLIgUCzWClr6?=
 =?us-ascii?Q?8DMtTZ8pQ8SOCDA1lGMrgl4fZN+yNuPegu2Exva4PzNG5HfWoA0glkXWSZ52?=
 =?us-ascii?Q?wHoTRFQ+xUrYb4gYBDZ7w1kDlojJ/5X3jdEX6wsNBBMEkb/SqMr0gdTsr7Hu?=
 =?us-ascii?Q?uqxOQ8b5emFGz0U6xLxSh7Vx2WOAPwRxZYLnd6RpxXoNVk9OgQArOVnxTBH2?=
 =?us-ascii?Q?GdIG6scLt9IcuU0oJhw7nwBdKRvn3LHSp9dghgFRm7bxjefREwQhqFp3m5qW?=
 =?us-ascii?Q?n9YAfvV4qBx4WUKKpA63JkAaynnrqTniRWXkgFFU4mzmvHzCU0guG4kA0Fw4?=
 =?us-ascii?Q?6r19yFN/r0uYibnv2zLz1nZdKTz/Dz8Ggx1NBT2RiYbzLHtYNSWQtaEA6hBq?=
 =?us-ascii?Q?j9B60vl1djzWeuxc3uLbjyUKjMqSxiUAo7vhDf/6agVYoLD2e0+d/irBsuxu?=
 =?us-ascii?Q?Fn7/PUejWXNPj4blc2Pvp/XF+45cbX1sdMMJbs2e6ttHFlSoBY9qvr+eTWNT?=
 =?us-ascii?Q?ijhTS07bLDQE88hWj3/QvZPlWAB9xU8dQBl7D/p8PGJt+/girvEYG6B+mB/J?=
 =?us-ascii?Q?H5PQv1l0PsszaVaTi7TJHPiFAebt75FWckd2qbUJ6Hp8yqeeXIu+zEiwxCo1?=
 =?us-ascii?Q?oqb1wixzMK88vBkHSblhgzPco9wqTGQ1cnhii47n3jJudHIo2pZAlrvSDWet?=
 =?us-ascii?Q?7mWKjc5YSQ+bhI+ZfgTllnn8csC/T8j7DYPDy8t+bn8iYvQNmFX4GioCNtTJ?=
 =?us-ascii?Q?+pAOmn7zCixALjP3Y/XGiwXeVahCXyugtcUaGoovsNBCQ0gYMP36wxH4JpdF?=
 =?us-ascii?Q?ZNJ1besCtdUvBsbmv62JhVduN9U0vl5umpHWztbc7Hxh/U20v2NVUJ2Q/Vpj?=
 =?us-ascii?Q?0Ydi+aOwTXDEjZKsrgVFuA0WJRs7OwJrDeIFwS/EeNHlswNC36RPYB7j6aUl?=
 =?us-ascii?Q?510ZT0JdOHp53iTl1SfZEFQYo4EFiHN+FD2chCLnIBjtO6P1PPlnFKhy+osS?=
 =?us-ascii?Q?JSslXqp/USjXNqR8UM2t94+f1x7UrI1B2qZPTwz3wRJvb7Vjc9SPFfK9Mvv3?=
 =?us-ascii?Q?2MpDwRVJjDbqphpMelj6SlfoLnOXUQpYJYojq22X5SMM55o1dS9VyBb54COr?=
 =?us-ascii?Q?QMUgfgzxzDZfpIv+cdQKOehbHrmMW+VGDuJn9Yr2QzHPS5tr2GG6J2zs0nbB?=
 =?us-ascii?Q?Bwyr+G0EDGCdOlNloncIQEis5CF6esVsQSOmgxIuoV0wdIlhQSj0Dl1v+ctB?=
 =?us-ascii?Q?jRtku9Im4RCniUMZjhjEy8k=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EfCFvM4rQQ5JBGGMF2QXwkihVoFJglSDCWMkFTznfIf6uoubuUyqieQbpicN?=
 =?us-ascii?Q?S2LRb8pQmjLOKby5NowyfRiHIgV3yWOoaezAsdihpoZqbcYiwRwUOAxdYWYc?=
 =?us-ascii?Q?3GSmtGJk1+uyZPvEjWv7hQ7wIqSJAa7USMxZnKtZf0bjgbH5I+/S4CAzTPqX?=
 =?us-ascii?Q?nl9xaN5iEITv8F9duMrnTdgzO5I6yg+N+dbomp5OEDkN7jeSfJrtNuM5pnMd?=
 =?us-ascii?Q?Z7z267FYetC24+asOSoQPiQymBoWm3C45neLzHdHzgeYcog2k3mAYr5m7rAe?=
 =?us-ascii?Q?R0pAamVbLXVidG4+wchAqVbJnkEpnfay1azH4OZeyAa7slRZYpv4WrIgYL+a?=
 =?us-ascii?Q?Bl9QjXytgiF4IT8ElU+3+0jzpJcV5hm14SbT73yTWPiUkeJ3LVNpLhGoYhSn?=
 =?us-ascii?Q?syWoLZD8PTEHx0On4CW53Xqpokqb4M8Wr13+Tb5Z84kCSU1QEigvApjxBQHj?=
 =?us-ascii?Q?TVoWQWG9nUOTbMp06FGJ/Kv+WzmbXpRmk34syysB+aOpIkJ7opwdRo2hmnj8?=
 =?us-ascii?Q?VQB7WPIrVnnUrV0vlduvnk1WnT1q0e8z4luPwrCLKTuEVBsT5FsG/V/MlquH?=
 =?us-ascii?Q?6Je6OJjilvOM1NUYCpKj4GwUXZn4K8GtTX+d39Cc/SAW061ygg3odcnNSf3S?=
 =?us-ascii?Q?qLV+KWmZN5OFygChC6EaU70BBKpdcD/BAhx3tTcZz5ed5x8qEdGEurZ7z0Fz?=
 =?us-ascii?Q?kyZFN9fjaJZfrphBepNyyFMZ2H5T4hOlXHYXApdYLf6oKNwVHRh/ldRBNNoh?=
 =?us-ascii?Q?1K6D2ZxvShAmOd17ZdJVh7X0jnArsjJXP3bhXuAesCdnipLa0ObJaOL51Ixl?=
 =?us-ascii?Q?nxPIltgqnFF7+5N4pUzXUd3RGgG5mF1FQQ6ayBeMFwW9o/1tiNzZnE7A6JZr?=
 =?us-ascii?Q?kFVZOShrou/1tNSWBiyLThmUdMkSGbOiTYeSdG3g1ZT6yqLGKb+UzJYMA0hs?=
 =?us-ascii?Q?Ol8q55+YvGIRLRjbmf/YSu680CLGrSBst2X7iY/eX1jaES3RTWGE9kuD3Keo?=
 =?us-ascii?Q?ZZN7TVOiBEjCTn++hXKVTGPfRu15s/4Wo5Ydgwv7LYxTgnGce+8cFickTflB?=
 =?us-ascii?Q?Ng/ZKfG5b8mHe1YervltHdeRq7V7EYNOybJPpglwhIXgZ9AgdopMouY3lI7m?=
 =?us-ascii?Q?w3BzkJyX2oB3vkD8qt6tpn+SJXoi6XLIWASy6JvjEItQhzhAo52ETZtnLrln?=
 =?us-ascii?Q?hW3GycIBgJtcw29SfRM2HetqUrSX5edi3KsFN3T3Au7PLyaBdp5ED8HE30kG?=
 =?us-ascii?Q?deJOg+Khy1W06NK1Ty8xExoFWilQVUGgo8If9GkH0U/fONqQv/jB8/EQkffA?=
 =?us-ascii?Q?4x1+vknZ6H+E+3cmTLF8d07ciP2tXn9FeUBtHLCe5Ko8y/7AVmie3gLHSEe8?=
 =?us-ascii?Q?cDAOe+j21QXzFGq5Z84IbUseLkwI0YQxv1oHnMlf9BpfkGnBLpa9goSVzLsc?=
 =?us-ascii?Q?p5ZVNohid0u+WbP6rz/zlfp1JBfnob4wlb11l+92mFLNFKSYywh4E5A6BZIz?=
 =?us-ascii?Q?GFqCYmZYAbSxU+oxr60IP8UsE06NuIUFpbXbhYw1xLqfeS14lFt+fHj0HvbK?=
 =?us-ascii?Q?sBBUz/ukzcYqh/EzAyHUe8N/dB5Dcegs4+ZPruZBGqoZUiaAIuCKKGtYEWiF?=
 =?us-ascii?Q?UhdNgTPPEKRSsJqCo8mimaL13u9DC44ZXYkq1GGig7aY1YBJQnXEU3dnqRg7?=
 =?us-ascii?Q?E8AVHVqsCEW/d9oynLhK+mSwyHNoRwZNH/V5tmzFcbWXp4BoLKPCTfT5GiB8?=
 =?us-ascii?Q?/etZReDRIA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b712553-1ddd-4552-5ca4-08de6f6d7dc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2026 04:15:18.4955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XQDnDOp8RXIYOdpUh7FgzkTO0Qvk/eIrq0hwxWetsiwK5KVx3xrpo8Y8iAHDjIFKgUp/h725GSAEkF6Z1R+Qpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8830
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2F7F515BFE8
X-Rspamd-Action: no action

> Subject: [PATCH 12/19] drm/i915/lt_phy: Add xe3plpd .get_freq hook
>=20
> Add .get_freq function hook to support dpll framework for xe3plpd platfor=
m.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  5 -----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 13 +++++++++++++
>  2 files changed, 13 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c
> b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 147baa777856..88f11cb8c5e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1219,17 +1219,12 @@ static int xe3plpd_crtc_compute_clock(struct
> intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder =3D
>  		intel_get_crtc_new_encoder(state, crtc_state);
> -	struct intel_display *display =3D to_intel_display(encoder);
>  	int ret;
>=20
>  	ret =3D intel_lt_phy_pll_calc_state(crtc_state, encoder, &crtc_state-
> >dpll_hw_state);
>  	if (ret)
>  		return ret;
>=20
> -	/* TODO: Do the readback via intel_compute_shared_dplls() */
> -	crtc_state->port_clock =3D
> -			intel_lt_phy_calc_port_clock(display, &crtc_state-
> >dpll_hw_state.ltpll);
> -

Do not remove this code till end of series where your whole framework is re=
ady.
This introduces a bug interim.=20
Intel_crtc_dotclock uses the calculated port_clock.
Moreover calc_state is only called to calculate port_clock

Regards,
Suraj Kandpal

>  	crtc_state->hw.adjusted_mode.crtc_clock =3D
> intel_crtc_dotclock(crtc_state);
>=20
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 6502916793f5..412582e29ca6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4583,8 +4583,21 @@ static bool xe3plpd_pll_get_hw_state(struct
> intel_display *display,
>  	return intel_lt_phy_pll_readout_hw_state(encoder, &dpll_hw_state-
> >ltpll);  }
>=20
> +static int xe3plpd_pll_get_freq(struct intel_display *display,
> +				const struct intel_dpll *pll,
> +				const struct intel_dpll_hw_state
> *dpll_hw_state) {
> +	struct intel_encoder *encoder =3D get_intel_encoder(display, pll);
> +
> +	if (drm_WARN_ON(display->drm, !encoder))
> +		return -EINVAL;
> +
> +	return intel_lt_phy_calc_port_clock(display, &dpll_hw_state->ltpll); }
> +
>  static const struct intel_dpll_funcs xe3plpd_pll_funcs =3D {
>  	.get_hw_state =3D xe3plpd_pll_get_hw_state,
> +	.get_freq =3D xe3plpd_pll_get_freq,
>  };
>=20
>  static const struct dpll_info xe3plpd_plls[] =3D {
> --
> 2.43.0

