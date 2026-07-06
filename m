Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KkWIJIDYS2pWbQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 18:32:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3BD7134F1
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 18:32:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VIrBHtKX;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7994F10E3DC;
	Mon,  6 Jul 2026 16:31:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33D7410E3BB;
 Mon,  6 Jul 2026 16:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783355517; x=1814891517;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=qcGAZQ0JdugosbR0bZHdQXO5HKuN0pLEhyVrtX4UeJw=;
 b=VIrBHtKX7ruwOJaUXkQsH7LbQFXc4+4t8Mj5AOkGvrfi06pV41aCazAT
 a4rDKe1cbWcOJS6xMIq6ATylAE+m7oRUbLc3HRNmAWsUoJvyfLah16oNz
 MPupSRc1aJX/50iJodrOgTczOOIfjERPhF1fxvvQ+v8RWbUaYJdM+8FBq
 1e4ngZOBqlO61x+d6i+N2b6iek9dfvQLKj/tuV45LIO7ZVhN58BFldv/Y
 ZpYQjx/QuLutkR2qQGFgTDAd3fwfmqNj93qjW60xkHMIpLNxBT2rihBv8
 FIlQfWwJBQwyH0dx+ANuw2xkAuTAPHHTUd7TQi17zmxOi/A8LFMKzf3Id w==;
X-CSE-ConnectionGUID: 9CMeg4Q7Q3GpwTk2RzdU6A==
X-CSE-MsgGUID: 6l2ffoU2Th2vlAYxzC/VhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="101539406"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="101539406"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 09:31:57 -0700
X-CSE-ConnectionGUID: nMysz/FMQQyQMtZJfMnW4g==
X-CSE-MsgGUID: 7S1VMU6GTRCmb8QQjvqEIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="253853365"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 09:31:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 09:31:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 09:31:55 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.62) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 09:31:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jS2/VZJ895iORo7nfMzM+L/V5AhBxghIV7yKyukPXpO2CQv5PqsLoopcHoBPEmaj2XbCY/kdI9GO7HByV79DvZzhRLTeWDGCZ3Yw2obv4yci0yWZE1H+MKhaQS8wmcLBFk/hJ9qaseLvg0L0VooixmFwUZ6C84VaB2oVtJbPcVZ4A+tr+fLgfGWKuIIhuX65hT3y1+u/crFpdFX/dlnsBcSc1OzIBR6lWlJB/f4W1Kv9VMGUJ1tyM+VUr6+SRO3R4iD5FENtICsgyPMfuO/uvMm+Eb9zpxRLexfGfqEw8LEI6yTHjvZuDjyrJKLE4dEBMmGs40ozMkaHi9B25Ba+4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iIuII0v7/vaF66LMp1fysogR2Ojc+ydhX2sGgAx0AQg=;
 b=mb9ehAm8x0goED+HVuS0l9yBZHciIe5Dg5Z4gQIei9A7Rd1Jvh7qqGxPipWaQ0ZIakrbv23cCzXXAsASc2Ft/bgxKK9j89I9LILiIJvO4i12woBNGor2PxDLeunoLu/G9CgEOIEaCpwVgmCSCiRdw5IPzE8RIxrYTbqxGzWrakkizu+6lMkTTWr4TkkxJdS9W0a+fvxVYgXnDBRoj/489bL892JDpsa1l2RFSpEFO99zMYLh7y2ePV8nB26g+twxm3F5ZOwdLSNq9A/PQS4MYMjm1LUgxr9/9T+urn+wCe2K9zDDKfo2Lj8PYRVi0yxuzPjtqTQuuU+uSBtIT8GArw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by MN2PR11MB4629.namprd11.prod.outlook.com (2603:10b6:208:264::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Mon, 6 Jul
 2026 16:31:51 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 16:31:51 +0000
Date: Mon, 6 Jul 2026 09:31:47 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
CC: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Natalie Vock <natalie.vock@gmx.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui
 <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Alex Deucher
 <alexander.deucher@amd.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 03/10] drm/ttm: remove ttm_lru_walk_ops
Message-ID: <akvYc0RxAh4rkbYK@gsse-cloud1.jf.intel.com>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-3-43685ac1286b@gmx.de>
 <247fece24913008be6d42ab0b6f19da1cb95abe1.camel@linux.intel.com>
 <be0b18e2-d5c0-40d5-b5ed-01acf6189955@amd.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <be0b18e2-d5c0-40d5-b5ed-01acf6189955@amd.com>
X-ClientProxiedBy: MW4P223CA0028.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::33) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|MN2PR11MB4629:EE_
X-MS-Office365-Filtering-Correlation-Id: eb7a4aa7-465d-4f83-7db5-08dedb7c152f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|23010399003|366016|18002099003|22082099003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: prfsNmEsFGCQ691FxuVo1h2VnGutPRj5LF+7sV1/0sdS8fGNibaab8PR+aV6h9VZ4kSS/ZqtSQ8J+nlF0FklFItOco8+t81Do5aBZML5Bq+jiD0yIKQbxfaN2u1l0h78y/NeXbwcAEYyeuWYb/ULHfKsw0jiZsflsOSYGOx8xBx0x2C+EzxZZ0+lDM55VDfD61B0fnmXTPPB3Qs0ha+V9Si577wE5GM3NIMLbkKfATwbRT69kxs0oN6+fcG4wZ4db37iDYupDBdXu0zR485TJ9S8SRda2NjZ/7BRMf2GO8NLJS+Hir6EoyanzBPcIKAxAmXZ3AK0qpbK5f3T+W/eRsyaCqwNwD9RMWo0vmk2xJJymbVUpVWNlAsNf5qOhIfpJ8A/1dejVUXB4uF3YKTmizQQKxq1ZybaIau4WASdeFVnc8PYsz5pPGoDDMNkqU57HTSW/U5d/Nf0kxKSKo7JPs9dq2zfYT6cLYddKJb05miYTYHKRcEm9tITwNneKNRluK8la1Zc13poG23+181Z/S9Bft125WyKEFlf6+8DeesRboXKqpbBZoSfnQAQWc6lkvq5eM7CyysWhLVndyCDNR68NcqcT0Ai/zO5iXDEmUJL0vLA9NIVjxTv8TDFNDN1xnbaagCpF/Zn6i9S5zAQl3xUedUT5019eQrZ7hf/caE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(23010399003)(366016)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?6SSgR3dKgoc3YB6oV8qF17495B8iTI3VmvyUwLQiEntTSqkVlRbID1SXDb?=
 =?iso-8859-1?Q?utk01c11o+hP4w4PBEhZtULMzz0Azn2/Rbvv9W7NT5U6wGsxY0M1SMp5lO?=
 =?iso-8859-1?Q?UtQIyeyoRJ0Dh3Cr7j7937SJgmSWzS4/QVyhToJOMjUVwOcukukmRfpZCN?=
 =?iso-8859-1?Q?Fkj6lhThy3ZUyrwYtg1w76dgne9lGFNWzL+gdxeCylHYlKCdkq041p8L4f?=
 =?iso-8859-1?Q?7zoXLUxyCQXudcKIc78dFTQlXU1ta3FSklBnAf3kksdw7oQka5BpOIDYCZ?=
 =?iso-8859-1?Q?eXHxNGqo5G3XLCtRCJ7WF0LNVK04DYu64TFhyqGs+iOJv6BW1OR2QupGNO?=
 =?iso-8859-1?Q?zfJ26zAuHN+x1Jk91gCI7x/HCUOGH1B/0pTL+Pjsr5fno7/XeKm4x32Pvv?=
 =?iso-8859-1?Q?uTGG+MV1hQhDhBbrNw0cSav5KvjOa0BJguZZjBdyb2gZkJerkcDB5TCw21?=
 =?iso-8859-1?Q?Huig3JlxkW6FXjFcnmnG90HcemV2Olh3/RW8J8sEvEEyEz2WuW8wm7enVg?=
 =?iso-8859-1?Q?W991I5gh9L2ogZTmETKPY/piP4zvXFNynjDn/RonFBso42K1qAMgjAMpKU?=
 =?iso-8859-1?Q?TB1TtokCBcVg3zOLqH+RBe62cz/ajEHYeqrGazImH9KmlTZ+pxBAhlwYEW?=
 =?iso-8859-1?Q?4AKxvjtrX8WOy0I1TqcWCpZhX/mYlrKI/Ly1odHdYSNZL+NUI24LEyhjGZ?=
 =?iso-8859-1?Q?aumQicB9twknA3OAu6GvD5yvIw5+tey0CEQgddJhnMETopaNSGgWppWc8U?=
 =?iso-8859-1?Q?+ZoMLG6J4OlI3McFmJUC6wlebp3kPLhyu7q/UIs7Vg7GwBawRAIhgKARW5?=
 =?iso-8859-1?Q?9kjIosAqX67Bz7Jc4qgt18emGVm9o3NnwpaLFuKUuingwIBUd8mf7u9zEN?=
 =?iso-8859-1?Q?3vgtZKVG0RfjZ9oXUDHVWlH9qAnDWhbdLncxSt6tOchAq70c/cXsZQta1R?=
 =?iso-8859-1?Q?00GRVS//+CINLJSrM/yQKtkS0TbEXDK0/o96njYv0j0nSjZTTN+FwYJX3n?=
 =?iso-8859-1?Q?3goi9UElvjLq8ptO3Fn70wh3KRdJOS8l1NyPqNSO43yv95+rulNl3jz0Xp?=
 =?iso-8859-1?Q?BfNHOVvTH1urndu6on8uhtu7mIQqDoo8DlYY1OcYyDrV8MwFMayKDFnX7C?=
 =?iso-8859-1?Q?CkZ2NJM9anoroJNuHjBTGiEgzVanMVAzPQaIftwWwW1rabL4//0FGd3ipE?=
 =?iso-8859-1?Q?bblzDIbtuscMVxLmBUd2kRWiNKI8tou5m7BF08EZ/tvTpjU9u9VfdtfivC?=
 =?iso-8859-1?Q?YNtv1Zl3b+QhdwI2uvcuORjRiWy2CGuDu1OZ8IUUJeU2T+CmzEBXf4T8ne?=
 =?iso-8859-1?Q?kjsxwQl+qQnurUOHLpR/5YC7n2LIA8rc6r9t13nVHZKnt1aWgK6tph3YtY?=
 =?iso-8859-1?Q?uyrRkCxzFXuiOzyyEAwPSJ+ZXbwBpySghN8kTdYDUlj+4YlN1hyeYTxvlw?=
 =?iso-8859-1?Q?Rjwig7unvhOImv9M+cwKbmBZdcFrUvXxwTs4a4BtljIn7GnSQAoi88a/fB?=
 =?iso-8859-1?Q?EGtQhvJ+wYjtkfSwBTeANl/lOyeM3h/JR19+kWFZ8NZcuQ5Gc8bfA/3kE9?=
 =?iso-8859-1?Q?JBY/zYlmUdRKSx6hi6mmn6hvCFvAqNi0MG7Cn6jX9dIxCTc4g0gdlrPS7B?=
 =?iso-8859-1?Q?BdZ3neh0iYFZi+6ttNYSQ1zFkMiaHVn2cZLf2genlBti2X1PpoyaxP8nwu?=
 =?iso-8859-1?Q?E/Yp7FH0+dbUKpmiyLAUwfWwQWg5aSDU2zHw7cN5SUC+6kjZnbhHy66J5M?=
 =?iso-8859-1?Q?CZGL6DRfYxHmKRvql5VHh4/JS0w96++A23MOdNSX3ms74PlbS/b5vGBqZV?=
 =?iso-8859-1?Q?OROfWNeOoA=3D=3D?=
X-Exchange-RoutingPolicyChecked: sOm54EcEjwYaxVG8H6Bm2a/AwS7YPlven+vBP2SATUuKrv1VJBbfA1FtRs3uV/k65Vc9NKgx6KexSFIHcuPx8pAyIc6ggFFRxteehKsc4WTdKjzQWIrSSiu787jY4I/R//alL1bRajwNmCjVV61lmLb4/7YADmrSSfKg04ibLnIbiOMt1YeUJwK6sa3I0ochlWMXvhnf/+AZc4dIsR2NpVeQmffkjJ/gNKHjMkz3t27ardcvtFQnXefWgZm85kPh8TQUULEUut+V/Rm5Zu6p54rCplAojBWKcYLq/xCanF3gy8C34sm0c5sICLB2djJLp/XmcWkuBM49aB2iDGKOfA==
X-MS-Exchange-CrossTenant-Network-Message-Id: eb7a4aa7-465d-4f83-7db5-08dedb7c152f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 16:31:51.2290 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8Ge1nOPeNW+unTvfdh6yR0m1m9j3NWo/y58fBXV4lNMX3qvexm6EdeGoTlgGerOLeo33VrYeZ4/3eMB5gdhx2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4629
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linux.intel.com,gmx.de,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,amd.com,lists.freedesktop.org,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:dkim,gsse-cloud1.jf.intel.com:mid,amd.com:email,gmx.de:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2B3BD7134F1

On Mon, Jul 06, 2026 at 03:05:54PM +0200, Christian König wrote:
> On 7/6/26 14:34, Thomas Hellström wrote:
> > Hi,
> > 
> > On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
> >> From: Christian König <christian.koenig@amd.com>
> >>
> >> It's just another layer of indirection.
> >>
> >> Signed-off-by: Christian König <christian.koenig@amd.com>
> >> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
> > 
> > Personally I don't have a strong opinion on this, but the reason for
> > separating out the ops is that adding function pointers in the walk
> > iterator itself was once pushed back on quite forcefully by Linus when
> > I tried to do that in mm/pagewalk. Claiming for various reasons the
> > standard way of doing that in Linux is using a const ops struct that
> > ends up in unmodifiable memory.

+1, I was about to comment on this patch saying iirc I a read Linus
statement once const ops struct was Linux prefered way.

Matt

> 
> Ah! I was already wondering why the extra indirection was used.
> 
> I'm perfectly fine to keep it. It just looked a bit odd.
> 
> Regards,
> Christian.
> 
> > 
> > /Thomas
> > 
> > 
> >> ---
> >>  drivers/gpu/drm/ttm/ttm_bo.c      | 12 ++----------
> >>  drivers/gpu/drm/ttm/ttm_bo_util.c |  2 +-
> >>  include/drm/ttm/ttm_bo.h          | 34 ++++++++++++++---------------
> >> -----
> >>  3 files changed, 17 insertions(+), 31 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
> >> b/drivers/gpu/drm/ttm/ttm_bo.c
> >> index 2b470c1746f60..1fb8c53da0362 100644
> >> --- a/drivers/gpu/drm/ttm/ttm_bo.c
> >> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> >> @@ -545,10 +545,6 @@ static s64 ttm_bo_evict_cb(struct ttm_lru_walk
> >> *walk, struct ttm_buffer_object *
> >>  	return lret;
> >>  }
> >>  
> >> -static const struct ttm_lru_walk_ops ttm_evict_walk_ops = {
> >> -	.process_bo = ttm_bo_evict_cb,
> >> -};
> >> -
> >>  static int ttm_bo_evict_alloc(struct ttm_device *bdev,
> >>  			      struct ttm_resource_manager *man,
> >>  			      const struct ttm_place *place,
> >> @@ -560,7 +556,7 @@ static int ttm_bo_evict_alloc(struct ttm_device
> >> *bdev,
> >>  {
> >>  	struct ttm_bo_evict_walk evict_walk = {
> >>  		.walk = {
> >> -			.ops = &ttm_evict_walk_ops,
> >> +			.process_bo = ttm_bo_evict_cb,
> >>  			.arg = {
> >>  				.ctx = ctx,
> >>  				.ticket = ticket,
> >> @@ -1187,10 +1183,6 @@ ttm_bo_swapout_cb(struct ttm_lru_walk *walk,
> >> struct ttm_buffer_object *bo)
> >>  	return ret;
> >>  }
> >>  
> >> -const struct ttm_lru_walk_ops ttm_swap_ops = {
> >> -	.process_bo = ttm_bo_swapout_cb,
> >> -};
> >> -
> >>  /**
> >>   * ttm_bo_swapout() - Swap out buffer objects on the LRU list to
> >> shmem.
> >>   * @bdev: The ttm device.
> >> @@ -1209,7 +1201,7 @@ s64 ttm_bo_swapout(struct ttm_device *bdev,
> >> struct ttm_operation_ctx *ctx,
> >>  {
> >>  	struct ttm_bo_swapout_walk swapout_walk = {
> >>  		.walk = {
> >> -			.ops = &ttm_swap_ops,
> >> +			.process_bo = ttm_bo_swapout_cb,
> >>  			.arg = {
> >>  				.ctx = ctx,
> >>  				.trylock_only = true,
> >> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> >> b/drivers/gpu/drm/ttm/ttm_bo_util.c
> >> index 7ed085adf1c9b..29f068944a972 100644
> >> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> >> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> >> @@ -919,7 +919,7 @@ s64 ttm_lru_walk_for_evict(struct ttm_lru_walk
> >> *walk, struct ttm_device *bdev,
> >>  	s64 lret;
> >>  
> >>  	ttm_bo_lru_for_each_reserved_guarded(&cursor, man, &walk-
> >>> arg, bo) {
> >> -		lret = walk->ops->process_bo(walk, bo);
> >> +		lret = walk->process_bo(walk, bo);
> >>  		if (lret == -EBUSY || lret == -EALREADY)
> >>  			lret = 0;
> >>  		progress = (lret < 0) ? lret : progress + lret;
> >> diff --git a/include/drm/ttm/ttm_bo.h b/include/drm/ttm/ttm_bo.h
> >> index 1eae9eea5ff32..0fcd5082a7080 100644
> >> --- a/include/drm/ttm/ttm_bo.h
> >> +++ b/include/drm/ttm/ttm_bo.h
> >> @@ -189,24 +189,6 @@ struct ttm_operation_ctx {
> >>  	uint64_t bytes_moved;
> >>  };
> >>  
> >> -struct ttm_lru_walk;
> >> -
> >> -/** struct ttm_lru_walk_ops - Operations for a LRU walk. */
> >> -struct ttm_lru_walk_ops {
> >> -	/**
> >> -	 * process_bo - Process this bo.
> >> -	 * @walk: struct ttm_lru_walk describing the walk.
> >> -	 * @bo: A locked and referenced buffer object.
> >> -	 *
> >> -	 * Return: Negative error code on error, User-defined
> >> positive value
> >> -	 * (typically, but not always, size of the processed bo) on
> >> success.
> >> -	 * On success, the returned values are summed by the walk
> >> and the
> >> -	 * walk exits when its target is met.
> >> -	 * 0 also indicates success, -EBUSY means this bo was
> >> skipped.
> >> -	 */
> >> -	s64 (*process_bo)(struct ttm_lru_walk *walk, struct
> >> ttm_buffer_object *bo);
> >> -};
> >> -
> >>  /**
> >>   * struct ttm_lru_walk_arg - Common part for the variants of BO LRU
> >> walk.
> >>   */
> >> @@ -223,8 +205,20 @@ struct ttm_lru_walk_arg {
> >>   * struct ttm_lru_walk - Structure describing a LRU walk.
> >>   */
> >>  struct ttm_lru_walk {
> >> -	/** @ops: Pointer to the ops structure. */
> >> -	const struct ttm_lru_walk_ops *ops;
> >> +	/**
> >> +	 * process_bo - Process this bo.
> >> +	 * @walk: struct ttm_lru_walk describing the walk.
> >> +	 * @bo: A locked and referenced buffer object.
> >> +	 *
> >> +	 * Return: Negative error code on error, User-defined
> >> positive value
> >> +	 * (typically, but not always, size of the processed bo) on
> >> success.
> >> +	 * On success, the returned values are summed by the walk
> >> and the
> >> +	 * walk exits when its target is met.
> >> +	 * 0 also indicates success, -EBUSY means this bo was
> >> skipped.
> >> +	 */
> >> +	s64 (*process_bo)(struct ttm_lru_walk *walk,
> >> +			  struct ttm_buffer_object *bo);
> >> +
> >>  	/** @arg: Common bo LRU walk arguments. */
> >>  	struct ttm_lru_walk_arg arg;
> >>  };
> 
