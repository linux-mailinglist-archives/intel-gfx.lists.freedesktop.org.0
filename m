Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eBjdGyAzRWpH8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5066EF444
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PeCpwxjW;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA5CF10E3BB;
	Wed,  1 Jul 2026 15:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A190110E0FB;
 Wed,  1 Jul 2026 15:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919965; x=1814455965;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=TFneZBml6iW4wMQqCLeHB8cXaeyxL+LFfTe0Hjt9jNo=;
 b=PeCpwxjWIx3zAtXpbkD1rZiaQua4ON3BIKYttyaFiXJ/egNrXE/DnfeS
 Kx7ut7ehzRxBPRbVWj6zYBkCR/XACZWiHPM/rQIKRXG0bRXDb6nQy3q3Z
 KuJ0a4PYToqhHRbQS1j9c2z0U6zOyQkecTvO+16kVMCCwZa4IxEhwRc3c
 c2EUug283vmSKVZ/UlONz1uZLUjD3nRh9GTxESPqcFqL3fvrSsQZne7Pe
 nWpLoX5V6EJF+G3WBvoztmI3xhLVrutgaAdg1LtGwlfpYW/3H0rKM2S+R
 I/sd3fdK7BU2eur50tjznJafAIsOeTKzNW+uqYbomME1k0byZ1UotIuTX w==;
X-CSE-ConnectionGUID: d2s5967HSLuylSUtGgC9Hw==
X-CSE-MsgGUID: 7tCTtyG0T1SIAGag/Zg0qQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310040"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310040"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:44 -0700
X-CSE-ConnectionGUID: Pg5yxMybRwGChYacABotDw==
X-CSE-MsgGUID: WCqqJQ68R0OrRDs6/Fw9EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515558"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:43 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:43 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a9pTb+JAqapGvQMWgTIeHf0wQGywLILhkZzkfqbj178rPvq4SqqnJH2Eh4hphtMXRLK1p/zIxAEmLysyo6DcAA35/PvfcpXHuyMmFCN4qKLicRux1N9bHZNmzUFBOaLHkTQrNRBdOjF+h8qob8zp4l3vz6+qIWtYSTspgEYmQpP4oXDxFIh/2sb/1P4ZVzBeiM+IgDAUzVj/Y8hZS8lG1usjexIZIds9nDkw4xy5akJYfvgzOplOcDKaj7UVMqXHE0++hQu52pnewFBvfpA8HlmR7rQSzJsvS5FV4h/a3KNpvJpFWRuf19DQuRnFqJYENSFpHH5WnH05gb3wwMvvzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BgbFN5frDbnx8WO2v1+YuLcnPA0QXk48OnuIJVgAvDM=;
 b=SyPMtqXp1p+jOyIPasoxAraWgQFQh17xrJ2+6GzGZkcd3fom0iH2bpfucEhsJxdEA4th6Cyv1deiYHas2dUBdFEgE0T9Aly7AjC6CZgJFMFjlMMj/pYkZoJtXFReI8pZF69Pv5BVnlxBlrnmg07hO0QEP6EY2l0b18nOv77jx44t7P0TGcWex/oc/8IE47Ma4xkqmXHlIJV49mtfxOyF30wTknuj9YQME3yqxJ0Pb23m6iazP0GgxZj/pEXoawSXIkcYmb9w2FZyO0j1uxZJaOcmNn8Qsm7t2SL9tPUZ0D0/e3ekwtteH3QtgrjWbi/uJ64wAsfxeWjLZZ91cdZdEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:41 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:41 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 04/34] drm/i915/dp_link_caps: Add link configuration
 iterator
Date: Wed, 1 Jul 2026 18:31:33 +0300
Message-ID: <20260701153204.4124150-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MN2PR11MB4598:EE_
X-MS-Office365-Filtering-Correlation-Id: 86aefb1a-9ba3-44c2-989f-08ded785fd79
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|3023799007|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: 31QNb6IFupB9k/zgA/vH7SPuZW/USRw/EZkWArIFREUQ4+j7hzzNnUK+154hTzavmQQ8z3STWX1RiIioMCAB28vzNfKItwIHetQajmpNcVNPrFxv/OoXk+899GD+MfHu9elwNNEBqNcdMOLRW9cjc9+LFVn2VTiOn9eFApQySlR1cBAvmlUBwBUGJ3HHDvcIOzRdhvmZYc7Dkdfht0L3bC5ABH2WLLZzf9YejDOmiDXB7S29D+OoYDrkdYD2KkcE6wms2bd7u16EiyFLE8Q4xn3xzxJOqKRkE/edOgfIPd2yo+byu8mIK8gv6/HhPCRKg1/rbGUYkuRGtXdT4LYy3ftz7QQ3hRk0CM8Oh7HBW0xtmfttMgW/aKKymmQjBqa3UNgvW0zNEhhvLp4ft4cmLqtXvASgiSYzrlLsWT58JtNEUblE5mzIZUDfIVT7pBK/2QlO5nl8/DPDe/Gelge4CRLOHhnobFqdW0VVge44a3oD44uUJx8ReQiKI4fIh1T+eWpvdSX2a12tJfHTZYH5/xDTP2jXZP4OKAGWbDmt02MUZsUkp5r0ASPvXPEAydjfPsv7X/dfgB7MYyq1/Mt7keKO/54ZkKF5jdY2FQbSrZi/4bftjtheHOyLkqrCAs/cnuXroFBgWJmhTVY5mMCJ0A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(3023799007)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rq01MZazi1FTE6PtiIn5e5UO0HBNRX3cTS2JjeOjaUatBGxA1XaaDxjb8YjI?=
 =?us-ascii?Q?aApXQFMzKaqL3YUK8yBkH8yMzpXqMSiwfQPu6D1blZcp7E5ulSwObMSm/Hti?=
 =?us-ascii?Q?FJa2UXIH5JI8wmFvBkR5WWgEp756ibg6JNpVDFRkTenr0UXnc1EDNJ8Ndh+i?=
 =?us-ascii?Q?SA4kMT+RZufup+gaMEnMAhwlpV/MzWyKmE+1QFvD/OH26ViylBUI0pCMpMzN?=
 =?us-ascii?Q?bvFpB55QDANwqxseVJ2Fzu0MWrEhVKX9kOGtTVkcUiXr66/jaIFxLVAj28xw?=
 =?us-ascii?Q?RJG1K3Br6o2mP7wiSqXCL6ufwhVHfFK0T8VLPlAnuBgydSFn+wB6QlkLrDjt?=
 =?us-ascii?Q?wWad1Nd8l/R3b1yrxYSoXBKimNRwpeLiJShLOi5RNbaH5cCxx34xX3L73/7+?=
 =?us-ascii?Q?qDfumc/Y5kWnj6SlWfWhCpVSEuBVMTuh0ZvX01W7AsFhtioEYeekFV8N+cbT?=
 =?us-ascii?Q?5ni8oRh/PsMMdCUsvr63uYIR76U/0ec26CpJFGJiTlCEs1X0ehsi1CsfduVw?=
 =?us-ascii?Q?C9AT4m9e6jpTrweLyoHhhPI4yQKzzBrp9lOcTVK7RtEz1wO/CUEhJCcPa4ye?=
 =?us-ascii?Q?uEReyEuIAgrMo0d7OjF17UjeRx9tSrhUiCHe+lfKXgeFWfphCTYpV3MH4gOR?=
 =?us-ascii?Q?1N7hQYr98atir1tSJ2A7MhlsrriCsARa50d4XKLFgJLC7N+1t1oQGQZT+9d1?=
 =?us-ascii?Q?nIhz4mK2LpiBaB+EonUQ8GovBvh4Z6PcJRr96D2zeIR48gy8Px/9W6paY1RX?=
 =?us-ascii?Q?u5hyV9u1XL7uKl9+vT4D4VOdpbn4jCyDQTlxZSFnmLAWlKxX7RL4IhPi1XRz?=
 =?us-ascii?Q?FZZTkkQI/gtlZkoK9SNfGlsHIwgQ17sQ98G0xZsadHCAkGj6rh/ZQCJ1IDsT?=
 =?us-ascii?Q?jGlvjRdFKHtzUxooM2V7t8WhLEbbMKnELrqcccQSS0tUYmKsoG9rkC5lMAxn?=
 =?us-ascii?Q?ggNZyyb9vrYw52bunukpp1/sm6VUSTxMh8LzHcXPCTEfi98Z+CizGrSyb3WP?=
 =?us-ascii?Q?04r6NDBkSZJKZxR0f5f9E81v1/w4cB2FmU4ANDHg8yKI8QLOJgyl9vWH5Fgu?=
 =?us-ascii?Q?i+7U6aHnM8oC7XYF3Kr+WH9amX170z4+KMXf9jaf7QWKKjyjd4CXtfV+y7Ne?=
 =?us-ascii?Q?vH1q7RXGhfvl+tqXGsf67j21c45hJyd6wBdaeIb9nqqcSNNT394j4C2zqWEZ?=
 =?us-ascii?Q?oox3bfbGawSf2V/4XPKrZ9Nev+Ybnjdg9OiFTs5SmBFYVgupYXDZtvRzQvi6?=
 =?us-ascii?Q?Cnc+prZLgD+pgZ/UmX9q2IazUKAnkag0clR6sZ1IDTGNS8ygdNi5U8/WHvav?=
 =?us-ascii?Q?y6bQNU3XqHFrIaJrlkm+iLg8blvZD09hs6JKdfJTo7dyGOAQeCJ2QW4IuWZN?=
 =?us-ascii?Q?7hOwMei1VBnGss3OgG+gkaiuAEjRJr1bWDe1ejxFIZxuU8LHyvKicWUh15lB?=
 =?us-ascii?Q?lNghPytfWVh2dZ7I7VyOQL9al8zT9PamyVrMsjyl7fSKWj6IPNwFUEFBSdCC?=
 =?us-ascii?Q?8GdrC4E4SuoRMiRE9ERzuznD5eznGxlqVU2ON+lmnKgDgGhlAl0dDydTK7js?=
 =?us-ascii?Q?OcgLiB4Cz4poFql94GOd/9eTGZ8PbitxlRjS6zyUcSyMxEWvx87jmgMO8qeg?=
 =?us-ascii?Q?3ZILcS0rp+m8Kbd00ML4dDhzyHYfK2L3f8Bs36wxJRwRinyp437jmr2yTYEy?=
 =?us-ascii?Q?gNzD8r+6GxWOG3+ofpVW8xGxjveYmEE/Bhy3WOdFBLb4ZOzHelkzmVmw3Xxp?=
 =?us-ascii?Q?sZIMQO1Pog=3D=3D?=
X-Exchange-RoutingPolicyChecked: H10FuCoVZExA4T7x7jH9BCVofhXlLi36yBWoO1npWOOhqCe8+B2fb1/qNfFzhkUOs91WnfldNQcs507JM6CzE2LgBk7Mt3L0luT7QJiXGHoKUkFNNXB7OyRixhIDyI56J5yAys+uC7A2B98PVGLyIy6D9IvD707oD+ZmOZdQKrPhGCi6TuhmZIKerGpfmJrY3zGUwj9PDhiJ+3pN1dhY2g77Na/lAgkpPQDUjQ7v2Wy8Y0kiq6A1pRK/6/dZd6izQ8PLQuL7Wr29hHOKdK4NGOX83re4gCq/87wNRioVu/b4ympyPcXxbbwZnBTgB7JSdSUy7PqJTXxlgFI8n/33Kw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 86aefb1a-9ba3-44c2-989f-08ded785fd79
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:41.8287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HVg+9eDVyXcXVvAXvGJsTuUlHhumuZT+PtDOsXV9ibOjlP6aAQNHM9P1JYgvvGkcmFLopDDZKM/hcie0wD0laA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BE5066EF444

Add helpers to iterate over the allowed and optionally filtered set of
link configurations in a given order.

Taking into account disabled configurations will be added later when
adding support for disabling configurations.

Use the BW order in descending direction by default.

v2:
- Keep the iteration state in an iteration object. (Jani)
- Use a filter object instead of exposing configuration indices. (Jani)
- Move changes adding helpers required to setup the iteration object to
  this patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 213 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h | 106 +++++++++
 2 files changed, 319 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index fe5a11efbe67b..d46b9d505a847 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -16,6 +16,7 @@
 
 #include "intel_display_core.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dp_link_caps.h"
 
@@ -146,6 +147,18 @@ struct intel_dp_link_caps {
 	 */
 	struct intel_dp_link_config max_limits;
 };
+static_assert(BITS_PER_TYPE(((struct intel_dp_link_caps_filter *)NULL)->config_mask) >=
+	      ARRAY_SIZE(((struct intel_dp_link_caps *)NULL)->configs));
+
+static struct intel_dp_link_caps_order bw_desc_config_order(void)
+{
+	struct intel_dp_link_caps_order order = {
+		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
+		.dir = INTEL_DP_LINK_CAPS_ORDER_DIR_DESC,
+	};
+
+	return order;
+}
 
 /* Get length of common rates array potentially limited by max_rate. */
 int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
@@ -252,6 +265,206 @@ to_intel_dp_link_config(struct intel_dp_link_caps *link_caps,
 	config->lane_count = intel_dp_link_config_lane_count(lce);
 }
 
+static int
+iter_pos_to_idx(struct intel_dp_link_caps *link_caps,
+		struct intel_dp_link_caps_order config_order,
+		int iter_pos)
+{
+	int config_idx;
+
+	if (!in_range(iter_pos, 0, link_caps->num_configs))
+		return -1;
+
+	switch (config_order.dir) {
+	case INTEL_DP_LINK_CAPS_ORDER_DIR_ASC:
+		break;
+	case INTEL_DP_LINK_CAPS_ORDER_DIR_DESC:
+		iter_pos = link_caps->num_configs - 1 - iter_pos;
+
+		break;
+	default:
+		MISSING_CASE(config_order.dir);
+
+		return -1;
+	}
+
+	switch (config_order.key) {
+	case INTEL_DP_LINK_CAPS_ORDER_KEY_BW:
+		config_idx = iter_pos;
+
+		break;
+	case INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE:
+		config_idx = link_caps->rate_lane_map[iter_pos];
+
+		break;
+	case INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE:
+		config_idx = link_caps->lane_rate_map[iter_pos];
+
+		break;
+	default:
+		MISSING_CASE(config_order.key);
+
+		return -1;
+	}
+
+	return config_idx;
+}
+
+static bool iter_get_next_config(struct intel_dp_link_caps_iter *iter,
+				 struct intel_dp_link_config *config)
+{
+	while (true) {
+		int config_idx;
+
+		iter->pos++;
+
+		config_idx = iter_pos_to_idx(iter->link_caps, iter->order, iter->pos);
+		if (config_idx < 0) {
+			iter->pos = -1;
+			*config = INTEL_DP_LINK_CONFIG_NULL;
+
+			break;
+		}
+
+		if (!(BIT(config_idx) & iter->filter.config_mask))
+			continue;
+
+		to_intel_dp_link_config(iter->link_caps, config_idx, config);
+
+		break;
+	}
+
+	return iter->pos >= 0;
+}
+
+static void iter_start(struct intel_dp_link_caps_iter *iter,
+		       struct intel_dp_link_caps *link_caps,
+		       struct intel_dp_link_caps_order order,
+		       struct intel_dp_link_caps_filter filter)
+{
+	iter->link_caps = link_caps;
+	iter->pos = -1;
+	iter->order = order;
+	iter->filter = filter;
+
+	iter->get_next_config = iter_get_next_config;
+}
+
+static struct intel_dp_link_caps_filter
+calc_allowed_config_filter(struct intel_dp_link_caps *link_caps,
+			   struct intel_dp_link_caps_filter enabled_configs,
+			   const struct intel_dp_link_config *max_limits,
+			   const struct intel_dp_link_config *forced_params)
+{
+	struct intel_dp_link_caps_filter allowed_configs = INTEL_DP_LINK_CAPS_FILTER_NONE;
+	struct intel_dp_link_caps_order order = bw_desc_config_order();
+	struct intel_dp_link_caps_iter iter;
+	struct intel_dp_link_config config;
+
+	iter_start(&iter, link_caps, order, enabled_configs);
+	for_each_dp_link_config(&iter, &config) {
+		if (forced_params->rate &&
+		    forced_params->rate != config.rate)
+			continue;
+
+		if (forced_params->lane_count &&
+		    forced_params->lane_count != config.lane_count)
+			continue;
+
+		if (config.rate > max_limits->rate)
+			continue;
+
+		if (config.lane_count > max_limits->lane_count)
+			continue;
+
+		allowed_configs.config_mask |= BIT(iter_pos_to_idx(link_caps, order, iter.pos));
+	}
+	intel_dp_link_caps_iter_end(&iter);
+
+	return allowed_configs;
+}
+
+/*
+ * get_allowed_config_filter - get filter for the currently allowed configs
+ * @link_caps: link capabilities state
+ *
+ * Return:
+ * Filter of link configurations allowed after applying the current
+ * maximum link limits, and further narrowing them by removing any disabled
+ * configuration and limiting to forced link parameters.
+ *
+ * See also:
+ * - intel_dp_link_caps_get_max_limits()
+ * - intel_dp_link_caps_get_forced_params()
+ */
+static struct intel_dp_link_caps_filter
+get_allowed_config_filter(struct intel_dp_link_caps *link_caps)
+{
+	struct intel_dp_link_config forced_params;
+
+	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
+
+	/* TODO: Get filter for enabled configs. */
+	return calc_allowed_config_filter(link_caps, INTEL_DP_LINK_CAPS_FILTER_ALL,
+					  &link_caps->max_limits, &forced_params);
+}
+
+void intel_dp_link_caps_iter_start(struct intel_dp_link_caps_iter *iter,
+				   struct intel_dp_link_caps *link_caps,
+				   struct intel_dp_link_caps_order order,
+				   struct intel_dp_link_caps_filter filter)
+{
+	filter.config_mask &= get_allowed_config_filter(link_caps).config_mask;
+
+	iter_start(iter, link_caps, order, filter);
+}
+
+void intel_dp_link_caps_iter_end(struct intel_dp_link_caps_iter *iter)
+{
+	memset(iter, 0, sizeof(*iter));
+}
+
+static int find_config_idx(struct intel_dp_link_caps *link_caps,
+			   struct intel_dp_link_caps_filter filter,
+			   const struct intel_dp_link_config *link_config)
+{
+	struct intel_dp_link_caps_order order = bw_desc_config_order();
+	struct intel_dp_link_config iter_config;
+	struct intel_dp_link_caps_iter iter;
+	int pos = -1;
+
+	intel_dp_link_caps_iter_start(&iter, link_caps, order, filter);
+	for_each_dp_link_config(&iter, &iter_config) {
+		if (iter_config.rate == link_config->rate &&
+		    iter_config.lane_count == link_config->lane_count) {
+			pos = iter.pos;
+
+			break;
+		}
+	}
+	intel_dp_link_caps_iter_end(&iter);
+
+	if (pos < 0)
+		return pos;
+
+	return iter_pos_to_idx(link_caps, order, pos);
+}
+
+bool intel_dp_link_caps_filter_add(struct intel_dp_link_caps *link_caps,
+				   struct intel_dp_link_caps_filter *filter,
+				   const struct intel_dp_link_config *config)
+{
+	int idx;
+
+	idx = find_config_idx(link_caps, get_allowed_config_filter(link_caps), config);
+	if (idx < 0)
+		return false;
+
+	filter->config_mask |= BIT(idx);
+
+	return true;
+}
+
 static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 					  const struct intel_dp_link_config *max_link_limits)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index af9028e7cb987..5ea87f112c13a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -4,6 +4,7 @@
 #ifndef __INTEL_DP_LINK_CAPS_H__
 #define __INTEL_DP_LINK_CAPS_H__
 
+#include <linux/bitops.h>
 #include <linux/types.h>
 
 struct intel_connector;
@@ -11,6 +12,107 @@ struct intel_dp;
 struct intel_dp_link_caps;
 struct intel_dp_link_config;
 
+/**
+ * enum intel_dp_link_caps_order_key - key used to order configurations
+ * @INTEL_DP_LINK_CAPS_ORDER_KEY_BW:
+ *   Order configurations by bandwidth, then by link rate.
+ * @INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE:
+ *   Order configurations by link rate, then by lane count.
+ * @INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE:
+ *   Order configurations by lane count, then by link rate.
+ * @INTEL_DP_LINK_CAPS_ORDER_KEY_NUM:
+ *   Number of ordering keys.
+ *
+ * Selects how a caller wants the configuration table to be ordered,
+ * together with an &enum intel_dp_link_caps_order_direction, for
+ * iteration queries.
+ *
+ * See also:
+ *  - &struct intel_dp_link_caps_order
+ */
+enum intel_dp_link_caps_order_key {
+	INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
+	INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE,
+	INTEL_DP_LINK_CAPS_ORDER_KEY_LANE_RATE,
+
+	INTEL_DP_LINK_CAPS_ORDER_KEY_NUM
+};
+
+/**
+ * enum intel_dp_link_caps_order_direction - iteration direction
+ * @INTEL_DP_LINK_CAPS_ORDER_DIR_ASC:
+ *   Iterate in ascending order according to the selected ordering key.
+ * @INTEL_DP_LINK_CAPS_ORDER_DIR_DESC:
+ *   Iterate in descending order according to the selected ordering key.
+ * @INTEL_DP_LINK_CAPS_ORDER_DIR_NUM:
+ *   Number of ordering directions.
+ *
+ * Selects the direction associated with an
+ * &enum intel_dp_link_caps_order_key for iteration queries.
+ *
+ * See also:
+ *  - &struct intel_dp_link_caps_order
+ */
+enum intel_dp_link_caps_order_direction {
+	INTEL_DP_LINK_CAPS_ORDER_DIR_ASC,
+	INTEL_DP_LINK_CAPS_ORDER_DIR_DESC,
+
+	INTEL_DP_LINK_CAPS_ORDER_DIR_NUM
+};
+
+/**
+ * struct intel_dp_link_caps_order - configuration ordering
+ * @key:
+ *   Key used to order configurations.
+ * @dir:
+ *   Direction of the selected ordering.
+ *
+ * Describes an iteration order for link configurations.
+ *
+ * See also:
+ *  - for_each_dp_link_config()
+ */
+struct intel_dp_link_caps_order {
+	enum intel_dp_link_caps_order_key key;
+	enum intel_dp_link_caps_order_direction dir;
+};
+
+struct intel_dp_link_caps_filter {
+	u32 config_mask;
+};
+
+#define INTEL_DP_LINK_CAPS_FILTER_NONE	\
+	((struct intel_dp_link_caps_filter){ .config_mask = 0 })
+#define INTEL_DP_LINK_CAPS_FILTER_ALL	\
+	((struct intel_dp_link_caps_filter){ .config_mask = (u32)-1 })
+
+struct intel_dp_link_caps_iter {
+	struct intel_dp_link_caps *link_caps;
+	int pos;
+	struct intel_dp_link_caps_order order;
+	struct intel_dp_link_caps_filter filter;
+
+	bool (*get_next_config)(struct intel_dp_link_caps_iter *iter,
+				struct intel_dp_link_config *config);
+};
+
+/**
+ * for_each_dp_link_config - iterate allowed link configurations
+ * @__iter:
+ *   &struct intel_dp_link_caps_iter being iterated
+ * @__config:
+ *   pointer to &struct intel_dp_link_config filled for each match
+ */
+#define for_each_dp_link_config(__iter, __config) \
+	while ((__iter)->get_next_config((__iter), (__config)))
+
+void intel_dp_link_caps_iter_start(struct intel_dp_link_caps_iter *iter,
+				   struct intel_dp_link_caps *link_caps,
+				   struct intel_dp_link_caps_order order,
+				   struct intel_dp_link_caps_filter filter);
+
+void intel_dp_link_caps_iter_end(struct intel_dp_link_caps_iter *iter);
+
 int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 				   int max_rate);
 int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index);
@@ -29,6 +131,10 @@ int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
 void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
 			      int idx, int *link_rate, int *lane_count);
 
+bool intel_dp_link_caps_filter_add(struct intel_dp_link_caps *link_caps,
+				   struct intel_dp_link_caps_filter *filter,
+				   const struct intel_dp_link_config *config);
+
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
-- 
2.49.1

