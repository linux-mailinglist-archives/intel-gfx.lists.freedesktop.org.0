Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULA7D0mu8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE824855C2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF69B10ECBB;
	Tue, 28 Apr 2026 12:55:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lvHFwz0T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE6810ECAB;
 Tue, 28 Apr 2026 12:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380929; x=1808916929;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=eOSHw42Pnt7BkE93EM5rj4gy1CI2Nlpj3uOkTPW756w=;
 b=lvHFwz0TiYkjjjtWlQjoYFI9FDxzjBN3/jSso25f2mqHYrO8P0h6XVR9
 2bHfhNJmYiuYgZUL/ijELO8qlnDHK8SSF3830QGKLe8BIQUxDShZOD9Si
 +DoZhBLG0lTNauzk5npd2uJ0HPbKkFxjnljPW4zt0fxD58BSUfmc3Ajei
 Z8eyo6/AKYLK80S/FH/qPVEwrnh0ALabD725k943JCG0BjSwXKaZ/VcUr
 plu6GjuGQQz21jLmjoqeOu8VJryr/J7YQhId/tS4b4mZ5lPDGgZwBK4WI
 1PaOoRNh1wNZ/5/oh3WqBqxStdhhnEmGnRehaAUEgp9LvAcKXk6nc1Njv A==;
X-CSE-ConnectionGUID: hXm2nQcPQ2yQvAmukldN/Q==
X-CSE-MsgGUID: /BYeIKetTbCbvz+IDaoK2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883662"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883662"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:29 -0700
X-CSE-ConnectionGUID: 31C0tUi9TL+15eB+CooGmg==
X-CSE-MsgGUID: KPmKI9qbToeXDquBx0Z/yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795109"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:28 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:28 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.47)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mSBBIuKBepjImmcMCqZf1eSf6k6/FYVA+HQBrMmhwo4Jgy+ETcOqc/gexb5LD467zfk3Z6bl/ihAWK9MqHS7SCpkQnkmRGNw2+rL86I3nqxvggHo9QO/mRzG7QIQM2Q7MxVYaSeafsUq+N1PPJ8tGcYn/onGi+ryFQeSbdgv8PPHF5OCi/pasiEl0wuSnQt7dG+Xc0jHTKIiV8EDAO0D8oDxWo3bjXQrgKuxCma2x0ehWFUnJTcBHpAwKFbcAuXDQMurvEDPCLBoOe685cEjfvpG9IvhZ5lCj6tqUZUF91I3iyxD4ku3W2+yJcNEqZjbr/cMjzbFbkYYrMW5U6r1mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nYvkFwaOXX+tENpqPyjFxLlrsMVsQH0Pgmrw6RoYEHM=;
 b=VEnZm1YGyLddnstTZhM2e0c9ynNnCrYe03CnlqH+/OmjLPERAObCbt92mecMpEq9dDjWelASLaTGxlKG9eYTzuIVEJtEuM3/bwyBUEs5KBqXpn8uyO0i4lqpBhLKjq23IvFG2TmV61NRRG3Ftyp1pYLEus6oU6PNykvurR+DqT0WVzDT8o/u+FG7OEwz5Odc/63oVKFa2oPwGXwHkFEWwDBJp2msx77bBrGHbYijRQ7RVPL1aNTcrstTM2I8sZoqjIf6L76a5lBWsLKlSctUy9grHL35AspZ4QT61IjWpcimCyrKo4jUxM4cF5a+66HawL+Mfn+9QdzHRB3IUFrydw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:24 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 096/108] drm/i915/dp_test: Use link caps for compliance link
 configs
Date: Tue, 28 Apr 2026 15:52:17 +0300
Message-ID: <20260428125233.1664668-97-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 50aab516-c224-4cd2-2b1b-08dea52565f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: mtqQ30B1n7raM3hWorZmvPtey43oChjC5jcFCdDp/hn4jX94d2SkhcFMcXElU0mefQQ9J3qlHOwzrmVu3KoPy/8jF7SfR7mu36Q69Bs+Lta8qN/vfz741YBUa5Q20vz92s+NzdMfvN5pryFgG8afZDPEsYzjRWHqn/YLEQY51bhv++iZ1qaHEPT16i+fM/iunQ0+TQZ3/3iSBHA6I2uJqcwDzayj+wfcJpUfN5XzTksCJXoj5n4Run96+FEQTaDGw1SEJFHwM3waA8IksnkxYUuGydpUkZC/14TeJ+06UgRRi/dDTduNaKKpygygrW/0oMiu2KasoZpfgLQWoSgl6K3z+QNaQkpOHexwp2AdAMi2vPJ+n05ZBudskyJiPTUECIduAG+Zzb54nLuUbcVGOBqP4eAD5bbNjjCO3z4KCULfXw9e9aQ5hl1QwJmS2BcRejZpSqdlZR4xkJ2dGIB56+ar5g/r4VLrlgcodfsJzIO3Npejs4q/wfKmRRj6r/TcyP84GRpbKC4v0yg/sTmTtEWoD6LfYwmaoaF3+SWcePZDhuOOgp4hlECciQf3t/9gP0ptyPokhVzzT6LfdmRffk3uaIj20qu1fuK6hgojw0f+I2gaYqwMW1dfuJzfK88MOZbv586DqEkRjHQYlEmOznlQB8zpBjbAxgg2LUjTeEX+J05ikgD9jhMCgX9svm7CeW4DAtcpkfpPmj5nCz6GfuvSp1IRC7Pd2X8PO3rKAyI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qE+7wSceykPBszp39M4wdx6RSvtsynMblVDwjfEpSZyuwZWvJXrkqvMdrEgg?=
 =?us-ascii?Q?acpDa5XIM9V4k7ycXWoRRisEmn8svF4uy0LLm/kWPn2bmY7hLw9mYJEVZXBk?=
 =?us-ascii?Q?HtwS917p1GFI6votQy8EJdZ9F6ZzC9xEjSzcScX9cBJG9tf1hXEewBn1teWW?=
 =?us-ascii?Q?KnKz/17tFWBzBkYBrTnjBkzwH6agU5VbYmt5HUFPv4Zvhm3P35yOa9i0Ad6H?=
 =?us-ascii?Q?X1HypjaIxEPRFpl8xiKjVuAqJ9Rh96LWGwN0ZYvW1KsvJ2Pj2EnYSTsa+DQU?=
 =?us-ascii?Q?2FAs/MP7eWZsxlkCXazHJi98hKFpymizv2r0luWp/VABz7gftDyPTqoeuSkX?=
 =?us-ascii?Q?D4hSXa+pbfZaRQIFHj0wVjnnhC0kI9H0dAfF/vjkqO6iMEeOrrW1y1lftGf2?=
 =?us-ascii?Q?YHXNLICL93XpMY4efbs6i9GvShvH5EmTVnX4/IoxzWlYQjLGU+Ie6v1lUZQU?=
 =?us-ascii?Q?AefiOCL+KhrbmSpUF2W2sLiU33veXnBuJdtm/gVpHenoamED7eNkkrmaF37U?=
 =?us-ascii?Q?XgSK2ilQGIUTVvT1Pvsjw3CarZl8FvUFoUmdPz/Ve2BDKDGhub+gIgt+NIA8?=
 =?us-ascii?Q?SGv41LlD+tjS0JVr6AY6kovcgx+/rU5vQzyXE4dfL72+Xq+rsx8WNnYGPJ9L?=
 =?us-ascii?Q?LXhSCyEZ9xwTAUsSdYcNAJapcbScKXbm5aej4FR6Tz4a1ULnCo34aSznjQuQ?=
 =?us-ascii?Q?ETp6cSe8EPPeRRrL/Gf4RU0A0apoyODrxRNxRzivPdHxRrV6uj8mBnZUgYmC?=
 =?us-ascii?Q?nzGoDzMp6k6f/mTYVNvD2CYOVB6k4JOPTHMyvLxgI4qCVQYgQaPuWd19obyR?=
 =?us-ascii?Q?tJdNfjRs9XrQlxeIgdg7STmrfx7dDPq3ovFURiDmGPA6Bk66vXx99B5TISOU?=
 =?us-ascii?Q?8XFaSpmwZlRiDzTCAAJgItVmUH+yRdfOc/DkshZEcrSMa3ez+013hEvcDLvZ?=
 =?us-ascii?Q?k5xO5ogaal3a0Nf1GKA3AMGzdUBDGVjQafpnkHGTd8ntvh3OH9Qp2x750Wla?=
 =?us-ascii?Q?pt+f4DsUYJ4qa1GUUCrhZUPArAJmxnEaUgLjRazLbPNRO0f9nsxLzgr2AAHl?=
 =?us-ascii?Q?eUcLIG2EP7W6/1o/NST7xkhuPTY4ERqBJQS/ForRNLzBdcrHaCGbUb9OARSh?=
 =?us-ascii?Q?7piE2tb+DBz9Ctmyne/kGEYEOlL9Eb1XrCjrAhAbWgGYDs4xJsCQkxnj1j6U?=
 =?us-ascii?Q?hqZm0z3pE6Dw6BFt6WztYQyiBSHDUwSbgsxRbQqB0I7MeQPTCkQRnsV0y8ie?=
 =?us-ascii?Q?KRPAvZDRR170yQm0zDZtQnwTpHk1o5u7uV/6W7mqf/63Afp+FZRVYYNCdn5z?=
 =?us-ascii?Q?X8OwtoPaYA2h1yHczQMakxD2k0yU3R+8Og9hZNZ0NqiIwhtRo2983DFkC7zG?=
 =?us-ascii?Q?ABKbM+ZlB8I053OSHhei9hkCvel/TZ9kVFRrg1a7nAwoI2zuPUR15wzntdR1?=
 =?us-ascii?Q?Lh7WR3trv4NnTmmzxsEO1opqJrkzCyb1YNKixAbS2lY/w/1j7zsVNqxAsT4v?=
 =?us-ascii?Q?+ZmoaTh9Yh7wr77NLvzOLSZUa77CYV5PU7q3jtkRh2jwS6yRfDdKdNoJwaz2?=
 =?us-ascii?Q?yrJoajktxreUXXZk0jsb+fAxdvyCSd2IByiilqtZ61ACf1sQ4dPbK62MkOtv?=
 =?us-ascii?Q?2qoCeSQnesFxljaFjnMli4in9rwio5KcZsuIM2DLzKxxt8uv01s9xb7s/uqa?=
 =?us-ascii?Q?xWIPJndEYBlphXRHh7J49BddKd3mddYGPF1HftR0XcBAm1mpoBtazL0E0lqs?=
 =?us-ascii?Q?5Vx5RpTv0A=3D=3D?=
X-Exchange-RoutingPolicyChecked: oz9bsOm1uecNcW2mpF+IWwCoLHdQvgBBAw3NqJ47aILdEJqZgZJs463wbi/tJrAJtzSaQ/KC8Cfo6mGlYoq9I1xToFe7AXiAPknAtj5XPMmCPQlZkSIGgjrEoaCfxtXVJtORug8bCIbh/Wn1Jc5gZOmJVq+Roq+pj3jo+FbhhXp0CKZR5j0qkWAKzk/iwo+FV++9yn9sl4pbT8P3ZBaxBohIWnhPkkvUZoEsGG7E/ek83GdQ1++8dk6mUJ6uJTJuME3yJNjPJ4tTLBPnM5jWDa7LZfWz6N2OTbK4X5SB6xW8bNPkMyaq7MzgTO6HzyyIthO+wEJSwjg03nRK0oFuIQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 50aab516-c224-4cd2-2b1b-08dea52565f5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:17.7930 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZDjcxiEyuQB7cbRMR+FEVe4QyOhSGv4xTEKDguJwzfxifokfpNf3DuUdPTgdUrQmzNDz0VDLtQxkov/I4OvFsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: 9DE824855C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Use the link caps configuration mask when applying DP compliance test
link parameters during state computation. Expose a link caps API query
function required for the configuration selection.

Preserve the legacy behavior of falling back to all configurations with
the requested lane count if the requested rate and lane count pair is
not allowed.

In case no valid configuration is found fail the modeset.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 23 +++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  6 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c  | 92 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp_test.h  |  3 +-
 5 files changed, 107 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c33209ec7782f..d577cdb1dc4e7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2793,7 +2793,8 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 		limits->link_config_mask = BIT(max_config_idx);
 	}
 
-	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
+	if (!intel_dp_test_compute_config(connector, crtc_state, limits))
+		return false;
 
 	return intel_dp_compute_config_link_bpp_limits(connector,
 						       crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index f822c8952df3b..6eb5b67b6168b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -702,6 +702,29 @@ find_config_table_entry_idx(const struct intel_dp_link_caps_config_table *config
 	return rate_lane_iter_pos_to_config_idx(iter_pos, config_table->max_lane_count);
 }
 
+/**
+ * intel_dp_link_caps_find_allowed_config_idx - find index of matching allowed config
+ * @link_caps: link capabilities state
+ * @match_type: requested match type
+ * @link_config: link configuration to match
+ *
+ * Search the currently allowed link configurations for a match to
+ * @link_config.
+ *
+ * Return:
+ * * Index of the first matching allowed configuration.
+ * * %-1 if no allowed configuration matches.
+ */
+int intel_dp_link_caps_find_allowed_config_idx(struct intel_dp_link_caps *link_caps,
+					       enum intel_dp_link_caps_config_match_type match_type,
+					       const struct intel_dp_link_config *link_config)
+{
+	return find_config_table_entry_idx(&link_caps->config_table,
+					   intel_dp_link_caps_get_allowed_config_mask(link_caps),
+					   match_type,
+					   link_config);
+}
+
 /**
  * intel_dp_link_caps_find_allowed_config_pos - find matching allowed config position
  * @link_caps: link capabilities state
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 742b88e6b0643..1e4ce6a58e4fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -92,7 +92,8 @@ struct intel_dp_link_caps_config_order {
  *   supported nominal link rate.
  *
  * Selects how
- * intel_dp_link_caps_find_allowed_config_pos() matches
+ * intel_dp_link_caps_find_allowed_config_pos() and
+ * intel_dp_link_caps_find_allowed_config_idx() match
  * the requested &struct intel_dp_link_config against the currently
  * allowed configurations.
  */
@@ -189,6 +190,9 @@ intel_dp_link_caps_get_config_by_pos(struct intel_dp_link_caps *link_caps,
 				     struct intel_dp_link_caps_config_order config_order,
 				     int iter_pos,
 				     struct intel_dp_link_config *config, int *config_idx);
+int intel_dp_link_caps_find_allowed_config_idx(struct intel_dp_link_caps *link_caps,
+					       enum intel_dp_link_caps_config_match_type match_type,
+					       const struct intel_dp_link_config *config);
 int intel_dp_link_caps_find_allowed_config_pos(struct intel_dp_link_caps *link_caps,
 					       struct intel_dp_link_caps_config_order order,
 					       enum intel_dp_link_caps_config_match_type match_type,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 0b791eee3b910..fcc71d21be2fd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -28,13 +28,66 @@ void intel_dp_test_reset(struct intel_dp *intel_dp)
 	memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
 }
 
+static u32 find_link_configs_for_lane_count(struct intel_connector *connector,
+					    struct intel_dp_link_caps *link_caps,
+					    const struct link_config_limits *limits,
+					    int lane_count)
+{
+	struct intel_dp_link_config link_config;
+	struct intel_dp_link_caps_config_order order =
+		intel_dp_link_caps_config_order_for_connector(connector);
+	int link_config_idx;
+	u32 mask = 0;
+
+	for_each_dp_link_config_idx(link_caps, order, limits->link_config_mask,
+				    &link_config, &link_config_idx) {
+		if (link_config.lane_count == lane_count)
+			mask |= BIT(link_config_idx);
+	}
+
+	return mask;
+}
+
+static u32 find_test_link_configs(struct intel_connector *connector,
+				  struct intel_dp_link_caps *link_caps,
+				  const struct link_config_limits *limits,
+				  const struct intel_dp_link_config *link_params)
+{
+	u32 mask = 0;
+	int idx;
+
+	idx = intel_dp_link_caps_find_allowed_config_idx(link_caps,
+							 INTEL_DP_LINK_CAPS_CONFIG_MATCH_EXACT,
+							 link_params);
+
+	/* Preserve the legacy behavior: if the requested (rate, lane_count)
+	 * combination is not an allowed config, fall back to all configs
+	 * matching the requested lane count.
+	 *
+	 * TODO: Recheck whether this behavior is actually correct.
+	 */
+	if (idx >= 0 && (limits->link_config_mask & BIT(idx)))
+		mask = BIT(idx);
+	else
+		mask = find_link_configs_for_lane_count(connector, link_caps,
+							limits,
+							link_params->lane_count);
+
+	return mask;
+
+}
+
 /* Adjust link config limits based on compliance test requests. */
-void intel_dp_test_compute_config(struct intel_dp *intel_dp,
+bool intel_dp_test_compute_config(struct intel_connector *connector,
 				  struct intel_crtc_state *pipe_config,
 				  struct link_config_limits *limits)
 {
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_dp_link_config requested_config;
+	u32 requested_config_mask;
 
 	/* For DP Compliance we override the computed bpp for the pipe */
 	if (intel_dp->compliance.test_data.bpc != 0) {
@@ -48,24 +101,29 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 	}
 
 	/* Use values requested by Compliance Test Request */
-	if (intel_dp->compliance.test_type == DP_TEST_LINK_TRAINING) {
-		int index;
+	if (intel_dp->compliance.test_type != DP_TEST_LINK_TRAINING)
+		return true;
 
-		/* Validate the compliance test data since max values
-		 * might have changed due to link train fallback.
-		 */
-		if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
-					       intel_dp->compliance.test_lane_count)) {
-			index = intel_dp_link_caps_common_rate_idx(link_caps,
-								   intel_dp->compliance.test_link_rate);
-			if (index >= 0) {
-				limits->min_rate = intel_dp->compliance.test_link_rate;
-				limits->max_rate = intel_dp->compliance.test_link_rate;
-			}
-			limits->min_lane_count = intel_dp->compliance.test_lane_count;
-			limits->max_lane_count = intel_dp->compliance.test_lane_count;
-		}
+	requested_config.rate = intel_dp->compliance.test_link_rate;
+	requested_config.lane_count = intel_dp->compliance.test_lane_count;
+
+	requested_config_mask = find_test_link_configs(connector, link_caps,
+						       limits,
+						       &requested_config);
+
+	if (requested_config_mask == 0) {
+		drm_dbg_kms(display->drm,
+			    "[ENCODER:%d:%s] Invalid autotest link config parameters: %dx%d\n",
+			    encoder->base.base.id, encoder->base.name,
+			    requested_config.lane_count,
+			    requested_config.rate);
+
+		return false;
 	}
+
+	limits->link_config_mask = requested_config_mask;
+
+	return true;
 }
 
 /* Compliance test status bits  */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.h b/drivers/gpu/drm/i915/display/intel_dp_test.h
index dcc167e4c7f65..a08f37a63dc9a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.h
@@ -6,6 +6,7 @@
 
 #include <linux/types.h>
 
+struct intel_connector;
 struct intel_crtc_state;
 struct intel_display;
 struct intel_dp;
@@ -13,7 +14,7 @@ struct link_config_limits;
 
 void intel_dp_test_reset(struct intel_dp *intel_dp);
 void intel_dp_test_request(struct intel_dp *intel_dp);
-void intel_dp_test_compute_config(struct intel_dp *intel_dp,
+bool intel_dp_test_compute_config(struct intel_connector *connector,
 				  struct intel_crtc_state *pipe_config,
 				  struct link_config_limits *limits);
 bool intel_dp_test_phy(struct intel_dp *intel_dp);
-- 
2.49.1

