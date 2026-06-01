Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IZEM0ZTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 636A661C981
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A801130BC;
	Mon,  1 Jun 2026 09:39:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aw/8KKU8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA9031130B4;
 Mon,  1 Jun 2026 09:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306755; x=1811842755;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=oBCluMiDZV3Mc2NEYieu+Ps0tlHTHcnb6ki9Ch2e4PY=;
 b=aw/8KKU8huEhGPPzRtHntS9Yh3Rnb8Meg+LikLePSyrlSBR4bOXtHdNJ
 6nofADiNyisPrMYzUzW9IkD+REh8rmhM/8/OHh3W10FyiYT8R3+Af0WBx
 k/A5h2QZwS8rmPPXRmpdwNE1hLkoB7+Qnb/5QdxIi1JJVbTlxYezGInwi
 rI4lJ23IqO5AbunHss2+iU5PzcUsx9velidw6S++fHPX7JEOmbuCAnebm
 d7qLLm36B1W13xnIWG5jUIUbJUMgV85OZs2boTAjkOQ2coF3Eln+wvjys
 ENXW03CNqr9odVwblTrHOUQAxrcQva9/CKqtbkqxQY7verVxoAbi+6g0i w==;
X-CSE-ConnectionGUID: XjIhFfMrRRC/HMrk7rOsSQ==
X-CSE-MsgGUID: d3maT+XMR2iT81XAv8zd1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094039"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094039"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:14 -0700
X-CSE-ConnectionGUID: R6dswlZNSVGZZAYkDIWXMw==
X-CSE-MsgGUID: ueWBrfq0RyKoOfDKWz5fFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160573"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:13 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:13 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F9FEQAQ02AG8IxR8jXyr4v+CLUnZxbWG5Veca+bBiklFHgXJ6inPgf7pcU7fYTColHPJXl5TIEE4yd18VeAffJpv0+9Spx0d8jgICUqmAQTgBuwT/Z5qR8by64In8kmSpMmj9VY4fxdGzcOsQXCHQjgh075lPbi0FnquvFDuri9PVSZul5vKruOadMW5YarGXdiRG3nPf3VVBw/uqHIJ/GNpMDFd2SEpnJPPc1U881JyzasjSCqN5kdXQ0yhq+cczv3WvXXqaqzKR3M2ICjtZZUlMRHPVcUkNgYHq+fyRoxKqO+j4UaD18eMnnMebPUjRd9+vREBwEF6kx8wNMZdQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8QAVtsYUfHx1wreDbQ6b8JZWGG1RAqheBa0fE86nV8Y=;
 b=P/QbMHLkp8xiGeY/UjmleovzyDkCP7n5EXzrHoAXJSeZy9YIZgMwuqKAZM/xH8uy3hDkLHrP10SstHserCbxntZZxSsY2L4Uj//mAMAgGfWzS9LVtJfZcv02j8K72mqlgj5rnU1F2FJyJuWGwpK2U/hzOIJf33hS4zAGEZ7KBKV8Zhb0hNeus1U2ApiuooPHht+X2ZnXL4ffXwuLn2jVe+LlA2Zmv6dVfjVDqAidlCyHIMwJ/i4+FPPZOW+VSw1Cw+VVpfoZQWa+jefG6vhkYlflyU5sw7fxDeuo4nF0XXRY0f/CJ9YTGfPuFlGrxPxSBkhopWBE3TT+c2/OtTB97A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MW4PR11MB5891.namprd11.prod.outlook.com (2603:10b6:303:169::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 09:39:00 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 04/22] drm/i915/dp_link_training: Move link training
 helpers to link training code
Date: Mon, 1 Jun 2026 12:38:17 +0300
Message-ID: <20260601093836.3057345-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MW4PR11MB5891:EE_
X-MS-Office365-Filtering-Correlation-Id: 8eaaaa6d-7a4a-4f97-51b5-08debfc19bc7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|6133799003|22082099003|3023799007|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: Ec9/+nqu+bSmpWlTd75w63fhPafG4mk7rBR5bO5TYFKyclwSN+PBwEGhE2/vxubDjjSXYJdfx4UDgFdz86/szwHUhFFOmM1HE5kWJ/VBtV8nf8ZTLdx6vCJubUBjbP7+IxavRnX1Un1fNPsEPzallGcG24LQz6jc38xYPyZUiHJRzmPsW9OfAcGYgt17YUYVvB4fieB47tB6QvGPBixXFrhnTCHme4zX1EQM8tE0uphiJsttnIMejCHpzQq497Sy6oo/qQo4TAbdPVY3LuAY2Y+q3vSxX0B7VX8qXCEiksMYenobYrLhLd3hNKVDIj12q8TlTc3bvyoOoxjVEKoohUiX+SJ2uBLolfRdp3vTvp54y+fTvD1h7Z2QJXEOWn17mFu08wHnkOxo5cVUaaFj97AJqcbOQOwd3mY8zZfzgnwPdUY2fg0QZQYOR8aW9aH/V5/fHLr6e08dJoRa4I8XoblE3uxYWIa+/69N5ldUZlK4ZUIJg5b84HfRlQScjmChSnALiYnGm/z6Bq5/eH6VfCjhITytnYOrEepHc3dodYP3Ubwd1BqWt7ALqkco99W4UKF/ZvQyjps0gqpFwEVIHiJfHL9N1oACGHm3HcRjZihudnSUrl1CEtku5Otj1Tuejngsl3XC10tlr1vbbVsuqAD01T1BEbi7cN7gZCtNRRSRAS3L3x9oanOR5ZNCIRkG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(6133799003)(22082099003)(3023799007)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7fF659raE0BY2yCQCeI0mY6yG5KPGBQWyhtFvDFiQQKitGl7uYSkoecGUCfb?=
 =?us-ascii?Q?p8Un2Njl6my5JordCsR9Sk6eAgOzwtuyQTVdLa13dsgpgDPasrt3GhmCoDxg?=
 =?us-ascii?Q?LBvHnvy8q/P4c+Nd2Xjjn5x7oSgohcOXbyVLLDEZh+aVVwryEXZk8qDtYWdt?=
 =?us-ascii?Q?bhWKpOl3WzPUkZnxrhZomUGXLUfx9nwPQemP0BT5f16566jgV9rADCjiTECG?=
 =?us-ascii?Q?GbLuppyP6riRSSE9qwnp5x+Y8zPv7WuYOKnuX4r6L6+xZvXIbICNbU1uaN+J?=
 =?us-ascii?Q?/5SiXBQUfgIs3yFOQWkGb3koTK4yby2A2KrFNDHUT9HmJSOONT0BY8cbQZF4?=
 =?us-ascii?Q?/4rBx+okTBXVTpxhPGjrkE8EZ+TeJqEBw3Gf4gN72unD43bBgWoij/KlJrFG?=
 =?us-ascii?Q?ni734Y4Chz0N0Urz+shWKzWqc2zgybZf45dTrUDbfY0E4AdLc4yCrxguSvOc?=
 =?us-ascii?Q?Ic0cSwSV6xeXsQQDQHFIvOSGAA9kaQqwF2fZ3Bp6iwOJjfXzylHFauBOnNd7?=
 =?us-ascii?Q?DJakGnbVgb3EcSJLY/C87N9Q2foroCJWufP3oGcLxWpc6cJNSugSixeWuiLI?=
 =?us-ascii?Q?ibz4fKfaEVUmqiVNzIx7wxpmJ8dSQg9FXFgXJ7iEfOyZEhzaLi7u6+LWwgQN?=
 =?us-ascii?Q?Od4t8uHqVnd90G0bYqg5xH0hRVA7ilW+vEXCKavIYpZkRqEj6yIQxh4Gn/NF?=
 =?us-ascii?Q?JTEDwhV+82fxvnNdwS7KBQ5c9ZjtlRrKoT8/gXcQ4VwYde5fGKmccuvwbAU/?=
 =?us-ascii?Q?aNJeusSQzPRyQE5oGf5hter4PANZpnFiw+tJJofXWRN0RwQjy5CCe3OTMwIV?=
 =?us-ascii?Q?3mVfyJYIZv1BZ49GGKCtRGEAy6Ap8CBbYbLo7rSz5L3bLsTbGbr38Q+6szPI?=
 =?us-ascii?Q?HCfkbeqf5U1puGDQ9vIRKliUQb2+lGY2gSDeGelfYOQwa0asTw41pFxyskhY?=
 =?us-ascii?Q?BzKCa2cFkYcLYai70ge4cnQGIXxmKxm8RVg7ALWBF11/yaBNOg79VDAfVzjj?=
 =?us-ascii?Q?7V7wOibl+yKhgW/H3eC2Jxim2jAK/dqIC43SUkzQ+BLpcmcBF/VdsDVWytw0?=
 =?us-ascii?Q?3kazYEMF6QrJtUqchi1ZqjVxzGInz8DU3gjDUVl9jW1sG1zeQpoBCBofTUaO?=
 =?us-ascii?Q?svjc3/UaXmmp0ucJiMSybPQuUeePHghsL1YJz6k78H6ZyAm4nPrJLt2LhYTv?=
 =?us-ascii?Q?UFQQdicDYDKj/FUwTb3XGGXWtrBuszPm3eQaOGE/wd6Gsvcn3t5qWdOsoGI6?=
 =?us-ascii?Q?YNEboGB1QD+NMKk1m06+3UGipOTyezKglGvwONhbshCbpTgrM/b6oRyvHNWk?=
 =?us-ascii?Q?08SISUMaY/KJGS2WMZfZIgsYZtjJPnm5gbl+w0liCLOJWVA5+9lv3FSoWCjy?=
 =?us-ascii?Q?JrhZ/oTy3klZoFUu9ifngRdQSQOE4Z/ak0UmfZ2jcQlh3khzkL/VashuzJ65?=
 =?us-ascii?Q?H48davEhzN/fLcw/WwEoBjVeZpGexLwA7ePgkW7niumi+vZ0T47qRiz43qx7?=
 =?us-ascii?Q?BoS1E3sRHeeVeV/fmU1u3wstbFSVNTQprCc5Z/eb5xdg4o9yUrFVRXK+S3Qc?=
 =?us-ascii?Q?0X49ANmt5v8TaP6WKb2JSuuQL4e92H54EoJjv6hbdO4a0L+GTm9HN35BJs16?=
 =?us-ascii?Q?ReI5okrzWGxvDgY3NXYklslAJRVQ0bzmee943Y5u4WBEzj3G/pBBBxcj8xDi?=
 =?us-ascii?Q?dKO2SJHXnXmCwTBI7tK0AYMOYWlikXX5vgO963qz9YiZI606QTBIChyc6XzR?=
 =?us-ascii?Q?kadY/ToCAQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: oJuhLb7HjqV0K8r0ukHyhIqmQesEYhyrA8SnBCOVr3Vx4DL82bmIzGBV6Qb7im5d+mG/7v1J9wb/X2/2uXWqoanXlQXPbZZAP8tNcUSTiG6FSNkNX41c57sRJt4BaryAIOPSH6nFI5X4imF0x0rwTP8ch4zVrEUod475EYzHegsb104i8q/JsYeQiy7ZejbpGFvBRMQHBK1tH5/mfDIK/zQ6mf6erj/byyCAhn31QR//Oxv2tX3NPfEVLyXvzxU59fl6vRubw6SD2xMHroP1x+yX8Oc1OBWhK3bIMJW0VX6C+GPuiMJivLdnPofgw9QTDpbfIz6dAklV6IjCbm6+yg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eaaaa6d-7a4a-4f97-51b5-08debfc19bc7
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:38:59.9330 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pcgzfc1uao9MRdh9S6gPbLKVNFfmVn21kwWdt7d4iHYIJvmLkliKaS7Sjn/wWWYYzfxX8B5AOMk8mljw6pt9Bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5891
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
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
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 636A661C981
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the link retraining helpers to intel_dp_link_training.c, next to the
other link training helpers.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 197 -----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |   4 -
 .../drm/i915/display/intel_dp_link_training.c | 199 ++++++++++++++++++
 .../drm/i915/display/intel_dp_link_training.h |   7 +
 4 files changed, 206 insertions(+), 201 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1bbbff0733e35..980659f5ace6e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -847,25 +847,6 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 	return params_changed;
 }
 
-bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
-				u8 lane_count)
-{
-	/*
-	 * FIXME: we need to synchronize the current link parameters with
-	 * hardware readout. Currently fast link training doesn't work on
-	 * boot-up.
-	 */
-	if (link_rate == 0 ||
-	    link_rate > intel_dp->link.max_rate)
-		return false;
-
-	if (lane_count == 0 ||
-	    lane_count > intel_dp_max_lane_count(intel_dp))
-		return false;
-
-	return true;
-}
-
 u32 intel_dp_mode_to_fec_clock(u32 mode_clock)
 {
 	return div_u64(mul_u32_u32(mode_clock, DP_DSC_FEC_OVERHEAD_FACTOR),
@@ -5668,32 +5649,6 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 	}
 }
 
-static bool intel_dp_link_ok(struct intel_dp *intel_dp,
-			     u8 link_status[DP_LINK_STATUS_SIZE])
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
-	bool uhbr = intel_dp->link_rate >= 1000000;
-	bool ok;
-
-	if (uhbr)
-		ok = drm_dp_128b132b_lane_channel_eq_done(link_status,
-							  intel_dp->lane_count);
-	else
-		ok = drm_dp_channel_eq_ok(link_status, intel_dp->lane_count);
-
-	if (ok)
-		return true;
-
-	intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
-	drm_dbg_kms(display->drm,
-		    "[ENCODER:%d:%s] %s link not ok, retraining\n",
-		    encoder->base.base.id, encoder->base.name,
-		    uhbr ? "128b/132b" : "8b/10b");
-
-	return false;
-}
-
 static void
 intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
 {
@@ -5800,78 +5755,6 @@ intel_dp_handle_hdmi_link_status_change(struct intel_dp *intel_dp)
 	}
 }
 
-static int
-intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
-{
-	int err;
-
-	memset(link_status, 0, DP_LINK_STATUS_SIZE);
-
-	if (intel_dp_mst_active_streams(intel_dp) > 0)
-		err = drm_dp_dpcd_read_data(&intel_dp->aux, DP_LANE0_1_STATUS_ESI,
-					    link_status, DP_LINK_STATUS_SIZE - 2);
-	else
-		err = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
-						       link_status);
-
-	if (err)
-		return err;
-
-	if (link_status[DP_LANE_ALIGN_STATUS_UPDATED - DP_LANE0_1_STATUS] &
-	    DP_DOWNSTREAM_PORT_STATUS_CHANGED)
-		WRITE_ONCE(intel_dp->downstream_port_changed, true);
-
-	return 0;
-}
-
-static bool
-intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
-{
-	u8 link_status[DP_LINK_STATUS_SIZE];
-
-	if (!intel_dp->link.active)
-		return false;
-
-	/*
-	 * While PSR source HW is enabled, it will control main-link sending
-	 * frames, enabling and disabling it so trying to do a retrain will fail
-	 * as the link would or not be on or it could mix training patterns
-	 * and frame data at the same time causing retrain to fail.
-	 * Also when exiting PSR, HW will retrain the link anyways fixing
-	 * any link status error.
-	 */
-	if (intel_psr_enabled(intel_dp))
-		return false;
-
-	if (intel_dp->link.force_retrain)
-		return true;
-
-	if (intel_dp_read_link_status(intel_dp, link_status) < 0)
-		return false;
-
-	/*
-	 * Validate the cached values of intel_dp->link_rate and
-	 * intel_dp->lane_count before attempting to retrain.
-	 *
-	 * FIXME would be nice to user the crtc state here, but since
-	 * we need to call this from the short HPD handler that seems
-	 * a bit hard.
-	 */
-	if (!intel_dp_link_params_valid(intel_dp, intel_dp->link_rate,
-					intel_dp->lane_count))
-		return false;
-
-	if (intel_dp->link.retrain_disabled)
-		return false;
-
-	if (intel_dp->link.seq_train_failures)
-		return true;
-
-	/* Retrain if link not ok */
-	return !intel_dp_link_ok(intel_dp, link_status) &&
-		!intel_psr_link_ok(intel_dp);
-}
-
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state)
 {
@@ -5963,86 +5846,6 @@ void intel_dp_flush_connector_commits(struct intel_connector *connector)
 	wait_for_connector_hw_done(connector->base.state);
 }
 
-static bool intel_dp_is_connected(struct intel_dp *intel_dp)
-{
-	struct intel_connector *connector = intel_dp->attached_connector;
-
-	return connector->base.status == connector_status_connected ||
-		intel_dp->is_mst;
-}
-
-static int intel_dp_retrain_link(struct intel_encoder *encoder,
-				 struct drm_modeset_acquire_ctx *ctx)
-{
-	struct intel_display *display = to_intel_display(encoder);
-	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	u8 pipe_mask;
-	int ret;
-
-	if (!intel_dp_is_connected(intel_dp))
-		return 0;
-
-	ret = drm_modeset_lock(&display->drm->mode_config.connection_mutex,
-			       ctx);
-	if (ret)
-		return ret;
-
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		return 0;
-
-	ret = intel_dp_get_active_pipes(intel_dp, ctx, &pipe_mask);
-	if (ret)
-		return ret;
-
-	if (pipe_mask == 0)
-		return 0;
-
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		return 0;
-
-	drm_dbg_kms(display->drm,
-		    "[ENCODER:%d:%s] retraining link (forced %s)\n",
-		    encoder->base.base.id, encoder->base.name,
-		    str_yes_no(intel_dp->link.force_retrain));
-
-	ret = intel_modeset_commit_pipes(display, pipe_mask, ctx);
-	if (ret == -EDEADLK)
-		return ret;
-
-	intel_dp->link.force_retrain = false;
-
-	if (ret)
-		drm_dbg_kms(display->drm,
-			    "[ENCODER:%d:%s] link retraining failed: %pe\n",
-			    encoder->base.base.id, encoder->base.name,
-			    ERR_PTR(ret));
-
-	return ret;
-}
-
-void intel_dp_link_check(struct intel_encoder *encoder)
-{
-	struct drm_modeset_acquire_ctx ctx;
-	int ret;
-
-	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
-		ret = intel_dp_retrain_link(encoder, &ctx);
-}
-
-void intel_dp_check_link_state(struct intel_dp *intel_dp)
-{
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *encoder = &dig_port->base;
-
-	if (!intel_dp_is_connected(intel_dp))
-		return;
-
-	if (!intel_dp_needs_link_retrain(intel_dp))
-		return;
-
-	intel_encoder_link_check_queue_work(encoder, 0);
-}
-
 static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 27cc95a344936..92ce048523267 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -59,8 +59,6 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
 			      struct drm_modeset_acquire_ctx *ctx,
 			      u8 *pipe_mask);
 void intel_dp_flush_connector_commits(struct intel_connector *connector);
-void intel_dp_link_check(struct intel_encoder *encoder);
-void intel_dp_check_link_state(struct intel_dp *intel_dp);
 void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
 void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state);
@@ -209,8 +207,6 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 			       struct intel_connector *connector);
 bool intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder);
 
-bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
-				u8 lane_count);
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
 int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index eea75a744b5ba..d8f1834e50433 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -33,9 +33,11 @@
 #include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
+#include "intel_dp_mst.h"
 #include "intel_encoder.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_modeset_lock.h"
 #include "intel_panel.h"
 #include "intel_psr.h"
 
@@ -1868,6 +1870,203 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b enabled\n");
 }
 
+bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
+				u8 lane_count)
+{
+	/*
+	 * FIXME: we need to synchronize the current link parameters with
+	 * hardware readout. Currently fast link training doesn't work on
+	 * boot-up.
+	 */
+	if (link_rate == 0 ||
+	    link_rate > intel_dp->link.max_rate)
+		return false;
+
+	if (lane_count == 0 ||
+	    lane_count > intel_dp_max_lane_count(intel_dp))
+		return false;
+
+	return true;
+}
+
+static bool intel_dp_link_ok(struct intel_dp *intel_dp,
+			     u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	bool uhbr = intel_dp->link_rate >= 1000000;
+	bool ok;
+
+	if (uhbr)
+		ok = drm_dp_128b132b_lane_channel_eq_done(link_status,
+							  intel_dp->lane_count);
+	else
+		ok = drm_dp_channel_eq_ok(link_status, intel_dp->lane_count);
+
+	if (ok)
+		return true;
+
+	intel_dp_dump_link_status(intel_dp, DP_PHY_DPRX, link_status);
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] %s link not ok, retraining\n",
+		    encoder->base.base.id, encoder->base.name,
+		    uhbr ? "128b/132b" : "8b/10b");
+
+	return false;
+}
+
+static int
+intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	int err;
+
+	memset(link_status, 0, DP_LINK_STATUS_SIZE);
+
+	if (intel_dp_mst_active_streams(intel_dp) > 0)
+		err = drm_dp_dpcd_read_data(&intel_dp->aux, DP_LANE0_1_STATUS_ESI,
+					    link_status, DP_LINK_STATUS_SIZE - 2);
+	else
+		err = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
+						       link_status);
+
+	if (err)
+		return err;
+
+	if (link_status[DP_LANE_ALIGN_STATUS_UPDATED - DP_LANE0_1_STATUS] &
+	    DP_DOWNSTREAM_PORT_STATUS_CHANGED)
+		WRITE_ONCE(intel_dp->downstream_port_changed, true);
+
+	return 0;
+}
+
+static bool
+intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
+{
+	u8 link_status[DP_LINK_STATUS_SIZE];
+
+	if (!intel_dp->link.active)
+		return false;
+
+	/*
+	 * While PSR source HW is enabled, it will control main-link sending
+	 * frames, enabling and disabling it so trying to do a retrain will fail
+	 * as the link would or not be on or it could mix training patterns
+	 * and frame data at the same time causing retrain to fail.
+	 * Also when exiting PSR, HW will retrain the link anyways fixing
+	 * any link status error.
+	 */
+	if (intel_psr_enabled(intel_dp))
+		return false;
+
+	if (intel_dp->link.force_retrain)
+		return true;
+
+	if (intel_dp_read_link_status(intel_dp, link_status) < 0)
+		return false;
+
+	/*
+	 * Validate the cached values of intel_dp->link_rate and
+	 * intel_dp->lane_count before attempting to retrain.
+	 *
+	 * FIXME would be nice to user the crtc state here, but since
+	 * we need to call this from the short HPD handler that seems
+	 * a bit hard.
+	 */
+	if (!intel_dp_link_params_valid(intel_dp, intel_dp->link_rate,
+					intel_dp->lane_count))
+		return false;
+
+	if (intel_dp->link.retrain_disabled)
+		return false;
+
+	if (intel_dp->link.seq_train_failures)
+		return true;
+
+	/* Retrain if link not ok */
+	return !intel_dp_link_ok(intel_dp, link_status) &&
+		!intel_psr_link_ok(intel_dp);
+}
+
+static bool intel_dp_is_connected(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+
+	return connector->base.status == connector_status_connected ||
+		intel_dp->is_mst;
+}
+
+static int intel_dp_retrain_link(struct intel_encoder *encoder,
+				 struct drm_modeset_acquire_ctx *ctx)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	u8 pipe_mask;
+	int ret;
+
+	if (!intel_dp_is_connected(intel_dp))
+		return 0;
+
+	ret = drm_modeset_lock(&display->drm->mode_config.connection_mutex,
+			       ctx);
+	if (ret)
+		return ret;
+
+	if (!intel_dp_needs_link_retrain(intel_dp))
+		return 0;
+
+	ret = intel_dp_get_active_pipes(intel_dp, ctx, &pipe_mask);
+	if (ret)
+		return ret;
+
+	if (pipe_mask == 0)
+		return 0;
+
+	if (!intel_dp_needs_link_retrain(intel_dp))
+		return 0;
+
+	drm_dbg_kms(display->drm,
+		    "[ENCODER:%d:%s] retraining link (forced %s)\n",
+		    encoder->base.base.id, encoder->base.name,
+		    str_yes_no(intel_dp->link.force_retrain));
+
+	ret = intel_modeset_commit_pipes(display, pipe_mask, ctx);
+	if (ret == -EDEADLK)
+		return ret;
+
+	intel_dp->link.force_retrain = false;
+
+	if (ret)
+		drm_dbg_kms(display->drm,
+			    "[ENCODER:%d:%s] link retraining failed: %pe\n",
+			    encoder->base.base.id, encoder->base.name,
+			    ERR_PTR(ret));
+
+	return ret;
+}
+
+void intel_dp_link_check(struct intel_encoder *encoder)
+{
+	struct drm_modeset_acquire_ctx ctx;
+	int ret;
+
+	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
+		ret = intel_dp_retrain_link(encoder, &ctx);
+}
+
+void intel_dp_check_link_state(struct intel_dp *intel_dp)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_encoder *encoder = &dig_port->base;
+
+	if (!intel_dp_is_connected(intel_dp))
+		return;
+
+	if (!intel_dp_needs_link_retrain(intel_dp))
+		return;
+
+	intel_encoder_link_check_queue_work(encoder, 0);
+}
+
 static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index c9a1ca4557f46..36ba9535fc34f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -13,6 +13,7 @@ struct intel_connector;
 struct intel_crtc_state;
 struct intel_dp;
 struct intel_dp_link_training;
+struct intel_encoder;
 
 int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_SIZE]);
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
@@ -55,6 +56,12 @@ static inline u8 intel_dp_training_pattern_symbol(u8 pattern)
 void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state);
 
+bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
+				u8 lane_count);
+
+void intel_dp_link_check(struct intel_encoder *encoder);
+void intel_dp_check_link_state(struct intel_dp *intel_dp);
+
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector);
 
 void intel_dp_link_training_reset(struct intel_dp_link_training *link_training);
-- 
2.49.1

