Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X3JaA56tMWo2pAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAE0695196
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UZtgeNdC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0EFE10ED52;
	Tue, 16 Jun 2026 20:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817A110ED40;
 Tue, 16 Jun 2026 20:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640599; x=1813176599;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=P/FSg+FlJOIKm3abV4RoG/HBg8nwO8LYuajvNGB/3Gk=;
 b=UZtgeNdCrCPqdDW5sawiomrISw7XpasItwcU4ezWTMQwuikCEKHUlPMR
 25PuO6AJqRbDxntBMc7QSTgiqV4ojrn0IKKxJlzqVg3X26qXQbWJVTErV
 Ha/73gET22mhUHz0NwsP5VKTog3x67wtfRlXQkWo3QWU+878olmiNNro1
 p54huFQ+xCBF4zKBMyL4pBdpYoiAXf+yMR8DQPusiO0Ko7V/yA4E1zdQo
 QiLOpKr/3UHHQ7JOuWfiUzLMmzJfZfvUi/K7hof4ntewXF3Q5loEyKCCS
 ixA7mOPIUzD6nxgrrOE0+8pSCI4jlGlg2ZioboodRGWwS1xKnqvMGH1HZ w==;
X-CSE-ConnectionGUID: fIFHfAJUQC+cpcYjhUGj+w==
X-CSE-MsgGUID: pKSr2qXiTci/EC6r7pnx4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82618678"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="82618678"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:59 -0700
X-CSE-ConnectionGUID: j3w6vQc3SQCvewP/PblCQw==
X-CSE-MsgGUID: C2h3dxbeQHW9RLZsNZYeVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="241515582"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:59 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:57 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:57 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gfy19h3AJ1xqquVXgM0W0qeG1cavAEnFbpSx0lD/B4cWCZcpk/mm0VyHlVVp414Qi//jfM8hY43oi9/NO0iwoVKkN7sZQvWEeD8+wa3UOd6mu9/0JPOvrFgnuwcNDJNlTG3SZ9QLrCPYac6BsCl4kTTXhiyNtMfKQRx+QQX11xpWVBlovYhm23l0v0t4G+KHdfCcZ6fxNokMJ7Ybn6hNfbQXAQ8m0IknjKzr/f+X2sBgVPl0XHJ7Y6U0/xNnVO/RSi9N0mKzapV9MFEeEvXIM/Z6gKz6uBSr4+vlVGCuaDvxaVf8LaJRxSg/lZvT6UbcJx3iWqBZKkv52yYXGwlYkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4JtbOaHUgKekizfwTfmv5+dEB6CJ7WVGh02bCp7TwPM=;
 b=fiLMyr0G9lJ0/b8EWFZ97Cd61I3bdox6BhSN/6+o+9E6bETPcRaGpB7bSnD3xQ8lQndLvPOaHHcAzCkC1WaoV/P/Z+PXYkUbVwi0WyWWCJS3erUCE4mfq2Qkj3683/dFd+t7WMvUUAD3K+2Lm3C9sIYNDJDasvSPxSoUc0nEePYrWQXMWD2hAn1oaPpzHTjAyBql2PnVjPULWolmh0bLzz4jSxt1/PXezDqdki0wSC1+d/BX63Gnx75oEtFPqYig885fkx9B5DUuhdYLQJRhz05/IRus2kc8nbTVwO0oeVHCe6E7HQGMuJarMqxA9mJElcWn97yWH7fkQh3uXkXHQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:49 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:49 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 23/28] drm/i915/dp_link_caps: Add helper to reset max link
 limits
Date: Tue, 16 Jun 2026 23:08:43 +0300
Message-ID: <20260616200849.3534628-24-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH3PPFE994B740C:EE_
X-MS-Office365-Filtering-Correlation-Id: d263cd4c-ffb5-49ef-7e3e-08decbe33773
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: jBRFqMxNkRxppxcQ2kJVyquh8RjJE/zWtdZ+qnPRBVW5mUyAFakxLEADOVGXdYWaX8pzbxesQ1rMsiAHVhyMOTZHDiWJHlbaS5lWAVU8cM/FEQ6gqcvfkULR24euT6UivtLvXcwHgLuR8zp8tbkNkSWabFi7qVqL3R4ujL9Ul9jxsr8LUD8IVE81PCXrmtFqS9EmP8k3CMW+rGjDlatzjUPYAsfTlL2lscr0fWBotRssqBzGk3Ijli1OxdPREo/9lUZ9h3+B60SNuVnXRCOLUIaxcjmdpMNQgJhcbi3uZEYkif23/mWIRPk6gXQ9bnCKuWXNY462MGWpjAUiVIYYdBxOb5XyZ2OPYxQq6cXFYVBAd1+94CvpPAaAPMwHTK22N3fWkuL/sAyJ1u2ogC9DbkuZXQNn/o6yaIfP7vqekrIh4tNezvZJFwdCqM/yNzrkRhOnLO138jBm3jwZpGCF3/GS2sgnFx1Kj3RsXEAjl0z1ZYiX3OpGefvwNysqDwCs1xQHC7bv6iqBs1eV88NIabBK/QomSZHPJpszBdLh5VYWr7vthM3vB2ooL7MApVzFioDOUZAedOSAieN3G6/cBS+7c01VqtH1JxdipD2Rw2nIakuF8yGvAka+BazqBxBUjHhXjdD0IU18koKAO9dobwQ9KkpwGta1bGoWUuXnM3keDXRahgSk6/QNw/Q2hCuR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k3pZd3vSuue7Dp6pC5Q3nYhZ+DPrcDjHVussYIXT1iFYcb/7zFXxZgenF+7m?=
 =?us-ascii?Q?yAPBAon0l7tvunGHoZ5pnQHV0nD2m0ry6umhYHtz99X+Z1fik9UpJvjj1YBZ?=
 =?us-ascii?Q?MnCtJIQZ/EEwVvj11/M9nWz4S5zjBdXvdHCdB+1GnY/m8p4rzLvq0GoCb6Qz?=
 =?us-ascii?Q?FkD2QRGBECjl+vrArkqhJ8VrI0qUcXy2qSszX2zMjAzCEqIsa1JTMtHdHtNC?=
 =?us-ascii?Q?CokqvRXtEHWcUkZuFLiLGCRyF7GhOK/hflT3WM0ikxR7Fbr7rf0r09CD2+BV?=
 =?us-ascii?Q?iLoQ8lL1EcwGcDt/UyirLIftHLP3hsWW8aKuo9Cj17Z27bgC984BtYEHn+Kp?=
 =?us-ascii?Q?Rk4WTo+8a0CiK2d2ntWmQiAy4as0g7AsW1TflplL9by3qPN5Q0A26ZLT9+fP?=
 =?us-ascii?Q?gytcaGMVtfxMqkGD2eo+YaEyDYf9x6uD5kuwEov6ArC34ucLdipCDvuJHPZP?=
 =?us-ascii?Q?vsBiiMG2jNsY8Cc+8gz9TtY2uxcEW9ru9x29vz4YLtdXTIeSfHw/Dxy7Quzl?=
 =?us-ascii?Q?J+1oWCjx1EfipD76Df5FLcgZaC9z8Uxo1leCKpVW7ODyT0nePqsnLIzRKbC5?=
 =?us-ascii?Q?W5ScsY9Seov3dHB5P6I8tCfwlL/DMgTeZzyxAwwcO3qNTvQHyEn5PjP+nOP3?=
 =?us-ascii?Q?kOIx/xEFKopE+ec48FEO9TUUoml9dXBGUXAePZps+2wWjjhHuDXad4Zhd+fR?=
 =?us-ascii?Q?kKMKJMWwgTUwOaX0n4hXiiBlZQGANdoJ6JeMygeSBHV/DeHhwR63Al4OiVRm?=
 =?us-ascii?Q?lTlv4jQoY3WtS+ipUSAiPsEEKO4PmaqoMafiAf7ID1K3B2gahJZdQo88179J?=
 =?us-ascii?Q?Xj3BVemn0EvQ1xQakEHpFRFPVNWa6HKcxvOKwEsV4JBcEY8r78KEkfj/6Dpj?=
 =?us-ascii?Q?oF9OubsGrQqF6imvd7GCN5DoVUCZqfPoiB3XjeEYS3T54zjQShQd4buE7JFg?=
 =?us-ascii?Q?KtukPTCxg4sEKXjg7Z+iueZznAujpZJI/j2sArHpZdQvEtszofApnNIi1Y2a?=
 =?us-ascii?Q?e/TTfjyMarjgTvgVHZsmdjePQoMFRE79bDXvRUPhqt3QEk+rWT6uKxZxC39g?=
 =?us-ascii?Q?9AGMcnA3rrOFFjXTBxdmaRc8YMH+RpjZZ40oU0GFFgG6e63Ode5508o9PeQk?=
 =?us-ascii?Q?XoaB0UYBjLzFWqUi6xa3xBhjdRdGWMRTKoyJirQn6sYKpn3EYsRAK/MBM1b6?=
 =?us-ascii?Q?GMdBiNd2b7uH2ByH8haXX3sUf2gPSYPBeduCt/pE1B9sLAcDDNfEjeNQBRKT?=
 =?us-ascii?Q?W1DMoTTJ2ZKzfFJdO3kw/Baj2ltcNym6NTVLK1vAUx8Xf42WSMoErlYwpajk?=
 =?us-ascii?Q?pVYMsYvD6SkmdX7bCPbZIqZJvVcWCmr07sjOp0cgDSDVxCeALzOvOoYDaxMg?=
 =?us-ascii?Q?wxXIiZ/WFVmMTG//yChgCVK81W2Qut+1KnLZOFVUZQ1b9kCoQ2V/1bMkdBox?=
 =?us-ascii?Q?Zv6nBsl+zr61PnJ34TkNsf/vRhnTDhrU8hxZrQBLFiWJ6nFeG+safi5QEG8l?=
 =?us-ascii?Q?zKn1fR/x+L35aq9cgeIa0zNscxZpR5+AtFdHS4M/dbv/Z0HWmwzJ2BOzXvZp?=
 =?us-ascii?Q?lKTpDXQrbmHwXKcut7OVwYYig+mKGtZQ/KX1H3xbPcC/1Ode+l8JnHB+KgNv?=
 =?us-ascii?Q?qiTP2lZOSyqsoNomDdJWhxwrReR+WC1cQe3kJ6Sb8V1ji880bhe3DFTx8aGs?=
 =?us-ascii?Q?ywfFvDi5gTMMm1GoOOS5TvkOFe29nP816+ViVNl/6a543PBVcqBaSXsWgT/n?=
 =?us-ascii?Q?7PIFyI/roQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: gu41EcHzz0jYBQRjuBo6dX0PO8bCJWg6X312U+OdMNPUaxIgxb322nlaDvMZdgorbGrOWnZtMrmRx0Hczzx3YTeBAgHPQYCho4plgcU+4kmWseMTlOP3izaIUsNu/tFwG2rFm5ZMYeT+28fjTSayaKBn0OUEPdk9YaN1bHy0a51mKJ/8IwwGrksiJuttr1x5I8bj5k4KDg98nSAauon/3FwVb8ke7+RMDK5hhplcxI8OvQwkumrDr0pbWkJA79Vu6ojOTrEaeG0To7lEwNNKwYCplwzP0Ge0P7SrKn8VbllRgPIwStNDm+qpFVV1D06AY1Ab2yccJViYoGGIAZmOyA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d263cd4c-ffb5-49ef-7e3e-08decbe33773
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:48.3404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2OMT8YtWbQVaokRTsi2GSy+bGgR5JL8j0J46ihKOjsqIiA/PGS8IEgSBSz9twp3cdr6Gpn3cSjR+UBQwS4sGXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE994B740C
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ACAE0695196

Add a helper to reset the link_caps::max_limits max link limits to the
maximum common supported rate and lane count.

This is needed by a follow-up change in the link training fallback code,
which temporarily resets max_limits before searching for a fallback
configuration.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 22 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index e568f00720d31..ae10200bdd934 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -160,6 +160,16 @@ static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 	intel_dp->link.max_lane_count = max_link_limits->lane_count;
 }
 
+static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps)
+{
+	struct intel_dp_link_config max_link_limits = {
+		.rate = intel_dp_max_common_rate(link_caps->dp),
+		.lane_count = intel_dp_link_caps_max_common_lane_count(link_caps),
+	};
+
+	set_max_link_limits_no_update(link_caps, &max_link_limits);
+}
+
 /**
  * intel_dp_link_caps_get_max_limits - get the current maximum link limits
  * @link_caps: link capabilities state
@@ -216,6 +226,18 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 	return true;
 }
 
+/**
+ * intel_dp_link_caps_reset_max_limits - reset the current maximum link limits
+ * @link_caps: link capabilities state
+ *
+ * Reset the current maximum link limits to the maximum supported common link
+ * rate and lane count.
+ */
+void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
+{
+	reset_max_link_limits_no_update(link_caps);
+}
+
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 				   const struct intel_dp_link_config_entry *lc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index c6c60b7888874..7baeb4359d2d4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -31,6 +31,7 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 				       const struct intel_dp_link_config *max_link_limits);
+void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps);
 
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
-- 
2.49.1

