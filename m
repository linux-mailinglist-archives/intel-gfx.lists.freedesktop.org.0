Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D91FAB1BF4
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C89310EAE9;
	Fri,  9 May 2025 18:04:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LN11y6zW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77EAE10E125;
 Fri,  9 May 2025 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813840; x=1778349840;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=6z039A+0U6MLFBWOnDKbarvWKhx1fKPzSLGWhgnKZWM=;
 b=LN11y6zWE+BC3PDYoA0dcoJXtdXyOgUoseKZqZxKBXHMcE4UAln3D4yy
 nKF+PfBJqbSDsA7CBzRbVgSyPA8Nak47YtiqFBNVy64J93sePA6BZu7hc
 +OxdHIqyyTPg8npgf+KoQ5EGLGNvP8OKyUHJvbjMv855xXXA7lecHMXxh
 sUtMc98RJ9g/o4k8Ed07exTsrX9hip2ftD17rGKum1hRV9LcaJPOEGpUp
 EdHCH1i9VzWa+cC1gJFv58eUxwUMPXghZ9CBNEcBK2u1mIn4YW1PUTmQk
 zJX2OTeNE0rv/Y+01jDO0slyZRLIYaWxfgaDQKKJZvm7dT4wYoWcRSy/i A==;
X-CSE-ConnectionGUID: XOgup2Y/T/SpFhM1pUmlHA==
X-CSE-MsgGUID: o60g/s2FTW+aTJiS4xeQJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52464868"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52464868"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:45 -0700
X-CSE-ConnectionGUID: T+tM/y46R7+N4oOEPc4TaA==
X-CSE-MsgGUID: jIJ1PG6pRd6MLYxvl/GhSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136564151"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:03:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:03:43 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WCl4XUBidKtvmMYd0gkJTUwcsTMfoM+t7drl4PE3dfhD8bok2r0ePvJGwcjx8gKA+5ii1BM/GXMumTjCJgy0UGWsMp57ZiLB8Oe6LC2W98wiWDxG3RCBDjlBgs7IfNFf7uFEHQWsEzi6zqLSaezyl+U/1/ZcXDf0kP6KtkGtvbnzqk82HQpoy9wdyvhdfNrFoojxqALza5oHwTYEFLOoj5AnGsxVAWQCU7Uz9EmOn6nAR6IyN/9y/+WW063UHKcccY1bll5O5ezcxe5tHfDiWG5vdjYXo/rGP3+cMX5F+4cfCWQgVAQWM0TpkS7M1gTp0glv9pC/mKEnW45Qq+wxig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zzg8eHcl5sadSdDm+SFFxTQ6C2Cws6ei+ln6im6+2EY=;
 b=IvC7BaNrgqa8SUv7zd5GDjIDnp0SKLZOpCybcKbJ+3tusjba0szXNoE7AwyteNiEOtFkqTXBP394kipP7UqwuDc/UYxts8PnilJK54jmVIXFmzyzyKxVJBjFihO3/Z/lSdWLCJCDyNxgkgl+yh0M4lZ5XlHSVlsqw6nIsf2mQX4GWNwT3lFht6sTNkqiCXi/7h51K3OCdkpeGGqGh57L3WdiXEciPxlPSUVgQJ31NepO8IwMEsK8dKCywduTaVRDiNhVI3SNgyDQwm7AVsDPU7wiUzziVc361iWr88BwFXVjXx9OotARK6RhPO1BD31uYz2aaQPJ09I8E7hgdqPRJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB7659.namprd11.prod.outlook.com (2603:10b6:510:28e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.22; Fri, 9 May
 2025 18:03:34 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:34 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 00/12] drm/i915/dp_mst: Add support for fractional link bpps
Date: Fri, 9 May 2025 21:03:27 +0300
Message-ID: <20250509180340.554867-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0500.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB7659:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f12a3f2-b809-4a1c-fb70-08dd8f23d04e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ODmg5DMz0fPhj5W4yO3bwhyLf7XpSy7AchSSsxT8gy2l5PFNS6gzNBzekCRy?=
 =?us-ascii?Q?bQVv42GGVXUZX+PSnsdMrnXtzcJXNhruFQdOT0M12x9ePFBgHXuyfEqcItpT?=
 =?us-ascii?Q?yP8/IMkbYk2/otrU5DUromfeTxkP7cGnrBmVlp52xA7k1rKTuMEx5B0P8Xnd?=
 =?us-ascii?Q?MAx5QkWnTURUjb5vmZPQVv7GbJnbXdyYaeZU/Byg1gGy1lY6vIY2eAR/BNdr?=
 =?us-ascii?Q?O+N5EoYvpLmYrQZkBekbwltlHnVu3fHw7t/R9o3p3ikH0UUl8uzEN5YXvdFN?=
 =?us-ascii?Q?/Mj2W655tknFPmAVAD/u41yHdeumLXbT03X1BkA18PNsNRcqnljorObydlu/?=
 =?us-ascii?Q?yVebXr43Zw3FRXkzw2GjWZj/vK1TuK3809am47f7dX0t52/kjuaymeHPqZ13?=
 =?us-ascii?Q?BLaAtrjXGBCPONhrQ0QzMV8ak/ZSs6JK63Vg+iBDH0jR/KZzGKZxSAFNI0GX?=
 =?us-ascii?Q?ZXkVVuxDBssbOeL0i93OGfviV3UepxwAS9MFi3fjPdxYfkHnc3dG+hqr/hgR?=
 =?us-ascii?Q?PdowHcr2lcuR2QDPeRVoDNotAqp6US21JT5SUO6V0BMH3UrCaP606Z6bN0aJ?=
 =?us-ascii?Q?2c0JI85BPVu3s3sjTq0O/l+xceR8yOvdoj1+S+3le/dj96lZAauZC3E32t+E?=
 =?us-ascii?Q?bHwUjFGVQ2Z9rGUPch2eUCFaIE52xkFGqE9UDlYClOEc4+acSsfVNxoExHF9?=
 =?us-ascii?Q?/yyZTUkUQ/mnOuN14SBGkmguf86NaU3FSYIKoWNbB9e3D+nbmpvvReyXzcZV?=
 =?us-ascii?Q?gg89W24crBvLnombofiYyEafvk2zAC9LBBy6prpjvXfN1XmzGFwPxeBzPYoO?=
 =?us-ascii?Q?O4+bVsz1VpQQfvwU/3/xSsk7seVDw33ANPteBKxcb8HXnfkCNwJXjY1AaGNx?=
 =?us-ascii?Q?XGu/AgE9K28PFtYryAas2IYGsiDDeY87PFTO8o7H/JAet2a9SuCAgPRbcomd?=
 =?us-ascii?Q?sXaJtwJz5DXN4IbTMR1DlMmMWLCfXgeT0dxRzKPyCk9wNHFWb1vHTkTrbVcI?=
 =?us-ascii?Q?332t2jvWh/pJWZxwJFvB7F/Jv86nfZa0vyrEiSszAZK5ki5DFTBMK9Q9wwaS?=
 =?us-ascii?Q?V9oKEgcsdKBEM3RgSfXkWAIomhJ9RaezJx+j3nEyu2odHG6kgdfB8+4wPcZ+?=
 =?us-ascii?Q?LQLt0l7FTmWhoUPcd7gBVRRYR+hq5KgMAulxsffnS34fQpytSiew4QZGQnQU?=
 =?us-ascii?Q?6gJREITzMI8a/ptrXcFmYf9fnmFFiga8bTEC5Xl5i3nqLukouM0B2fd7gkXd?=
 =?us-ascii?Q?7CxP8eN3GalcPqgTSbb7dDWKb6WHRCNYgcwDIhwc0LwQWPba079hrEM1By4D?=
 =?us-ascii?Q?7cttUDWl6NDUeQBV6j3vJcns1ELgzlE8qP4MNw0YGo09Dc42hBlT1xW14bR+?=
 =?us-ascii?Q?DDs6YjzQ/SVnG3RDx7uHRP5Po2a9ft3U6dQ9UwhJ28XlWGs/WPYH1OBDmGxU?=
 =?us-ascii?Q?rNLKF3MDDlY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1yoq4CSyW46GWAZ8auU53yjGTGG5YOKoS0dtxjyf4EqBFu2an3PZ6jjJvjVB?=
 =?us-ascii?Q?nVpMOUqfI2rD+gK6vXWcx/xrBsUg0uxQwWHN88Pn+n1mWv337Vj89DDRMd8g?=
 =?us-ascii?Q?aQkE0FpseQDNX334F/xybuU2hN9j/qYmYdEvYXBY5ZyGvPkJfKWu3pbNDBHS?=
 =?us-ascii?Q?8XKfQoGxygDwSzWTtfrCSwv4QWVZ0iXfQAmgivf+Pvt12SqaOQAAj4FmY3ue?=
 =?us-ascii?Q?pb8pjVYcaKWKiQXVBv0fy6BEt9xfSlGQSZ/k5s4s9ur/Sn+uVugZEPmEqOR3?=
 =?us-ascii?Q?DC6ZE1KGVBI4qqE/f6x1wK2W7gnHhDG0kIcqd3iKs/KDzOcEShtXiKT0LihI?=
 =?us-ascii?Q?1r2B1wXC7Z3W8m2AtQM06H1dHSijcN2PEfORHKZm4ve4gzem/ql23P2UxVVB?=
 =?us-ascii?Q?y1KFeUiU+zAto5/2Z0PAOD+OS/RiE6vOTlki9eLvnxu5UpjP6W6qPAbX3SA8?=
 =?us-ascii?Q?8iIEGO0TzxqrR9HPSH3+ZKPSc7AL8EG4oosgdWPoK/jE5s6pFeYKlXLKLOG8?=
 =?us-ascii?Q?4Ymc1AM9ThTbdZOuOa1TRLBnwFe67qtGKpF9NGzp6456gqIqFdwP45Y4KYf+?=
 =?us-ascii?Q?6xEBEoGQvzVG5C2A3/pIq60k9xQsKg0A3qwU1BPMVeDAWnWYGjoyT8O5Vr/I?=
 =?us-ascii?Q?dYvE5uBcZprOR/ejlAm5wGp059xJnTlrPraCPtixZUq1kMo7RZXhKDWEgzoi?=
 =?us-ascii?Q?ELVcFZhPJiIV+JbxWrtBt+jDcsgQZEADWSHrUJ6JfrgCy1CUsi/26UyZ09kV?=
 =?us-ascii?Q?HvBNRnq4P/s9u2xcDKuf5w9wICmRmI11McclqyIu9SevrK4wdipLV6tYOGjw?=
 =?us-ascii?Q?0SUKpDbMgnoh+mHc6SZLg0ccnTifeEaf6X8fnAeOkGXPCCzbG7Hv5vql7Rjt?=
 =?us-ascii?Q?N08Xck/Z/wyfqr4gXGOcgfi2zPAhrWJ66e3qjdCzm5kKnFIlB9XcSypIbj5M?=
 =?us-ascii?Q?LrGUvzymFT73CxlrmsbryeZ8WbYtKsfpCvlI2mDN5KY3f7ViSoKFYuoACu0l?=
 =?us-ascii?Q?vY/Zn3L8QK5EApyOQ8LzEAtYyVFr0e+3hDQ3P6vcLEJY2mVKhbwTFJbf0tMC?=
 =?us-ascii?Q?nGcmN4v7Wg0ekkTPfNkxKy28AYRlwXQkQfzSKTOhHAYeSTwl0IEbz4VgnPg7?=
 =?us-ascii?Q?NaJF6nioNhzDh5C/SXZygURY/J6ubvcvhW6Jmrt2LKx6qxGp4XmP2lrr6dZM?=
 =?us-ascii?Q?xp2g68RT2A35U/8GtpfFl9xlp+SSq9XlKOP6IlbE9N0XxYkSyPQ7Fl8vpPjZ?=
 =?us-ascii?Q?5TxvqGPOCRHFkiYC9UdXWf8bIv88/L47L1PSmWl3WEdmqG0f0L1vadj6HvEm?=
 =?us-ascii?Q?O06xG5yeG+Jf+o/GQLDUqWIthH816Gmvfd253w0nLe+5feVoRyR2Rg3yIZ8K?=
 =?us-ascii?Q?h4mwHfsiPjRK7NQm87tqI7WELeNFjBrBIHkpHbfBfVB2Jls1aVo+ux7kh7Q8?=
 =?us-ascii?Q?g6pY+G+jZ2npCY65mXKSWYOOV1mLVkhZRYKkibVvN7bKsTFE3WlQCTw6yCLH?=
 =?us-ascii?Q?N5ejfx8XTiG3HA7hQCMmkY6dg1y71EXwxpGK8xojST74E4/+ht1qujxthwKo?=
 =?us-ascii?Q?S6c1B8LkYBtq6OboEUfRoQpJBZmprVXVVQqycoQn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f12a3f2-b809-4a1c-fb70-08dd8f23d04e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:34.0057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BjjuNl0pTjAelBwMoUoCuy7LVNvK1gwk6pSiHQaHncAJyvhegU4zpVpol2Ri04sO9qASE3IC3WWtPNQD2CKLbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7659
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

This is v3 of [1] rebased on drm-tip, fixing typos, adding a TODO to
patch 11 (Ankit) and adding R-bs.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>

[1] https://lore.kernel.org/all/20250428133135.3396080-1-imre.deak@intel.com

Imre Deak (12):
  drm/i915/dp_mst: Use the correct connector while computing the link
    BPP limit on MST
  drm/i915/dp_mst: Simplify handling the single-bpp case during state
    computation
  drm/i915/dp_mst: Validate compressed bpp vs. platform restrictions
  drm/i915/dp_mst: Update the total link slot count early
  drm/i915/dp_mst: Check BW limit on the local MST link early
  drm/i915/dp_mst: Simplify computing the min/max compressed bpp limits
  drm/i915/dp: Limit max link bpp properly to a fractional value on SST
  drm/i915/dp_mst: Add support for fractional compressed link bpps on
    MST
  drm/i915/display: Factor out intel_display_{min,max}_pipe_bpp()
  drm/i915/dp: Export intel_dp_dsc_min_src_compressed_bpp()
  drm/i915: Add support for forcing the link bpp on a connector
  drm/i915/dp_mst: Enable fractional link bpps on MST if the bpp is
    forced

 drivers/gpu/drm/i915/display/intel_display.c  |  28 +-
 drivers/gpu/drm/i915/display/intel_display.h  |   3 +
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  48 ++--
 drivers/gpu/drm/i915/display/intel_dp.h       |   7 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  97 +++----
 drivers/gpu/drm/i915/display/intel_link_bw.c  | 239 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_link_bw.h  |   2 +
 10 files changed, 348 insertions(+), 83 deletions(-)

-- 
2.44.2

