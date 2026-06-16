Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5LYUHKWtMWo6pAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FE96951A7
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=N9nZPskr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A5B10ED4B;
	Tue, 16 Jun 2026 20:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A7110ED3B;
 Tue, 16 Jun 2026 20:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640602; x=1813176602;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=bQ0dQ0PsaBuV1s3hUtQ97Ba5ZsTALBQeH92trkwf8sA=;
 b=N9nZPskrMZjs+hXJe33k1qDwJ0zReFYE0vbzCCa+d7V8jPB1hkshth0s
 7zmWHHFcjBuNjugHuUaNnNWxrZZljvHV+NiNCGCR8+Ft3qTjJC6tZIigI
 nEonshHDaJmd0L11WHZCCMDbKngjZHhSJ/9DeSd/wvf5du4BUM8yCKqUT
 4sclO0HHX5HuYuBfGUgOlQEBtcAuuY7knrdYp0wOpQkAHxnT5vm5d2eew
 FzN3QpHJa5rv5peV1LRIM6LsL3sLWir8Vlv6DL8JRkOkt0edWDEe/pYuz
 2uwoQxff3Vl2wN1dKau1fp+Cg7Pra6IlqatJsSDHT43+kf+bJov8KkJVz Q==;
X-CSE-ConnectionGUID: dC/1YhInTfCwLxw4gBPNcQ==
X-CSE-MsgGUID: aF8OMW5FTSeVRrjCY/PE5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="93913258"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="93913258"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:10:02 -0700
X-CSE-ConnectionGUID: yNc18uioSvKkUdvs1ILoeg==
X-CSE-MsgGUID: xbG0NjcjSemquhCwZPI5iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="243711610"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:10:01 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:10:00 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:10:00 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:10:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yBmkf4Nx0n1hKjY+lFxMEkxfuWHhAzp0PsXsRwb/VwDMyFL751N6XRvIiNdzdVDFKw9pgqjfWEofr9QlFVX9OUxxAAlC6/RjC8GHL9TDK3l3zzoPmGvPEVMdXikmKWiymdpZVOzO+CFNWVxfBnUndcHaJT7x63khFX0ph+rNVPynDW4Fi1/NP0w60SaqBQyIdKOa6xkjmPhbAWe3XrlgqgLsSHKXn+yqNtk/CiHoaxeMSYLNDgYK9iJwCwm6ub52YkDJvPPXrZoGjFPJd0wVU1AgCccuCAdEK3ivj7nqWPMxn4Ron1uSqThN4w1/8PyAx1rAnPUqUdefVW6st3Clyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VHUf2vjP8+DMeivH9o+Q791AaWcCDBhw7uJR6oGKPR4=;
 b=u9iNzEWQfOqKVWyV6IgmGDk1tOhES6/d3siiBROOq29yyvDCP3Y+zU5h8XEPV88cEMsQgsXkPVOZIWR1pD1U5TZoIcGLdzwvFNTXnJ7/NPF/IgY5vOdJZcrfRM22sQLhBKcFvxcaX7Xn6rErMInXsOiRGgn4qQBQ5WwApK4jjrpdohi7p68DyTyXZ4C5YnsX0wukPuS/QZPE93/cZvBF8pYrWHfrRXJtBO3RD+mhyffZE5pJBPvvFMcFlq/hPUl1szTmxGmIfhUwJe87BKrTNAcMpzQmF5SBj2LcWRCUGJdjExsycGT/3wZ1LtRjvULTJ6dOwZzbjh/hi7yOmNsODw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:54 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:54 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 28/28] drm/i915/dp_link_caps: Pass link_caps to common rate
 helpers
Date: Tue, 16 Jun 2026 23:08:48 +0300
Message-ID: <20260616200849.3534628-29-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 9878df8e-5aa7-45b9-fdd3-08decbe33b2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: 8s0dfD7c8mVgoARcD2IRYaGQEhiSbbgHKj5fLmxGYaVY6IIxABNZVkIqtiyJiF/zPfjDQ6leXNls2LMytAqtn7p2wSeTXC79MMJ07YhYcsL/S9LDJimiKLvZs4QftBRqvvLYif2azJ5GTg1bKobhhG/RK8ctQGorF52x3NH4Sj+Us592A3IU76eXjjtScBEMWMj+e94GWbX+MmyVdOsZyuYr4YCKZWmjTe5hMg/5c1nOhIjgszEyuqwVc/7YWcs1UdzkDBLwol3TrTMZDdGBHTEepssFQHbT9pjolh9qb1gUcoRkRy7mW5K4uH4EQn1PgKdB4qtq1HaOjue0iH6m1cRmuejdHDNwX8X6WSil05o2fThEmEhNMCPa6gigFUabOUJ6gUKUiP9a/XRowKMyQrNb93gH6gtD8kapqD0GyP9AcOVgRve89+2xiZfkTQX6v64zso3Ah6Kswhxp3WxLKGyDExvptTXBpl4Au0Z8nr2jc3un3n2Cubxbg7mPYetLc1tIX7mbJ9+wYe8O/cc+I8Zp2h/NMSgkBltmFl2iKdBNJ6NijqX5LYaJkZ630oVeHdGE1zvInIO8FdivhH3ujYAh7bLWMoCaiEdgbCKrCw/UVUgaO1Aqa3wkwAT6YUwKO6X500eKpgQhNk85+xZFF+a8+//N23/8vfUnQs3Pa/iFGdebsw3jNsjDj2bFR7HS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(22082099003)(18002099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JWWxpOJwapG1+x8+od4dlyQS8DlRTE5xgIe07Oxcx1jwLkkwiZqX3Hl6ERSZ?=
 =?us-ascii?Q?CcFJOp2LqLMqwpESupTmD1JM3yua6Y8RyrZaHqnl9tLLtBSxuZ+2NumwGZcH?=
 =?us-ascii?Q?i5O+0hHVXKY8ZwHf50uQsnwcVnEpIYXSXfQ8Dw5TyGCI4yUXkkS+PzRTEQf+?=
 =?us-ascii?Q?nrFuxJnhptc7UE40rmpxmodSGRqwYssJ6rJ96uoyVh9caMo9FNWMr/SSrdJd?=
 =?us-ascii?Q?JodUofcAZ/jVH+yaWqyNvUnh7726PiC6+eGt+M2AEgYHhfKU5hyfc4ZC3l9A?=
 =?us-ascii?Q?TSvwEyFLl0EC6dBSKKoFnQoggfjXRKJWrdJ6jmJ74/GLHywLRDHDUVmYVRvN?=
 =?us-ascii?Q?ZJhb2jQfzM1TTIGHV+9yMV276m0GslWOqiaVMn1PFS5nzfKhyx8TWR/sa21k?=
 =?us-ascii?Q?ovdPsUxWJbwFC4HfN97tP8UyxKIPkwEgAq/eZbuNZ1EFnv5/uW04XbsIQq1I?=
 =?us-ascii?Q?r1mpz/yGsMgWQc0LQ10RXFHMb1EEVuIAbaK3XQ4Q2DWfjM/zX3KjcT8eTSbh?=
 =?us-ascii?Q?dpy4GryC4Gg9L0FaAMGnqkJsmmkAOpIRTwpH2P6+E6aZwMx5dU1tKwlY+KOR?=
 =?us-ascii?Q?Kx87oPbwtf2I5CHvt0mHMCGCoS9Eu+y5rHxu2F7F2Jg25qs3Okw0S0G0RBAC?=
 =?us-ascii?Q?Z0S4h9HCorjjsFCVuHg4rqWaySehIU2IKDW3zb3IV2/7MieL7u6BCHKtH/nE?=
 =?us-ascii?Q?ppn8DYJQW7H02OVzo2YUWIXsqRYq3RPl0Juk9lKmN+Gf/rG6V7KPAozHYdKr?=
 =?us-ascii?Q?2bOaBYcFBz0920CbiUkX9ivULtCqzmj8Ec3N0XxazGr9b6PXuyc2lFdMe6mR?=
 =?us-ascii?Q?9lYehY38C80k+nk3bpYxlF3CEy+N0iMT9OT59NdayF4YygKTZTJdUk0q9mby?=
 =?us-ascii?Q?Wc7ec2+4ORmH+okBLZ3lV2//3E/GMWP0srkxdJ0CD2TpHUrDnRG3w/13/JBM?=
 =?us-ascii?Q?E05+0qvcJdv4NUU8uB7fCbt/xjxFfzOBYdFddqsPnNQDjihDGGdaGSv/t+ee?=
 =?us-ascii?Q?tONHbu3R3DpGElZjQF/f8BkumDijgWmDvr2zCT6f7PZQcAeY6A7g166ZQ7sn?=
 =?us-ascii?Q?UoRt291yMmr0F7bteySXQvQ7A0qjoQFCgtr0sx+wd6Z1beOCAUZ6wV+W8VgF?=
 =?us-ascii?Q?wqEBN5BYMM4th56c1kValPhSf7BJXhQUaT/PMj8zCl40+2PecYYhrH9+quBj?=
 =?us-ascii?Q?05D/WV7bZcdWATAyLkQqdppJvjtDk57daACzPX95IRDoPDFowIUqctV69uWC?=
 =?us-ascii?Q?1Iy5/s6x1GQbX1Whne/GssMRj/9CoQ+SWlr8ClM5+y4vDpUK3ZVyAbaAPebR?=
 =?us-ascii?Q?gallFnDgI2ys1BXtCHyyipPui/454azdl+bUklB56EIcfBSQ3EiHWyo+h0lA?=
 =?us-ascii?Q?w+1CAKsC+sv/AiU3X9HXNTK6dzRJROlYKhZG+V+2oqFoAM0/k/Fj1jZ45b6o?=
 =?us-ascii?Q?RGacnVpq/YwZV66shhxw/l/+1HGEkWvcMIjb10uB+OmpbxfnKEssuB2XpWm/?=
 =?us-ascii?Q?86tWrlUrJVo1ra5q/4aCZ6jXh23JL0eB4Eid/UJ7rXxtKul3XIRhweA64GtN?=
 =?us-ascii?Q?Tpo06IGZAljzSKlOLIW5s2k2NCBf42KXMtxPNAURW0R1FYLbB9YugLuZ3I5G?=
 =?us-ascii?Q?IA4g91g8QMWIkIj509GTrwFvLBIPRv2+uBN5bXmjiBTE0rNwE27UYgICeb5e?=
 =?us-ascii?Q?08kLn7nwh9X5ZnTTGYqxehILxRroNaUYQcdgw9334LaVDK0N+9AvJ8MJpzEz?=
 =?us-ascii?Q?QIvplqoZAw=3D=3D?=
X-Exchange-RoutingPolicyChecked: p21e57fhzjQpI/NY3unaaGP7254fsNE7sNo1MRAAYcDk4uyS3mzYXV+WZ2hy99Y1ZxysroC6rZN0cATRkc7ceCC8zIwaOuj81aWjMYlmyanwjXk5x4BKSWAOX170pTLuaLiImyZyXQAJugGycOW/fErYdxiACGvirRg9Q11vBi/JHnROFmYGfJ0bbDclVKTjNdF8wXiwoGFxTbuhTiCXKKdNS1mRLmgn9AKp8eoghtQ1+OgvLYWXeJ+VCbxNAoWHWO/qsqKyoF9rhXK+cTFtH4mZYZKvXdTpalq6ekTXq/N3noYN8G+/06mbMFzAHfOgYEbWceo8ArkB3e62t4qjWw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9878df8e-5aa7-45b9-fdd3-08decbe33b2c
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:54.5724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U/UJEh4Gv9opZzQdF8aYTWM7PC3h75pOo0u2mgqqSs5wSwFKnk+yPmD6XEyBSppxeOaLaPzqI+g2WZSe8RDAKA==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D5FE96951A7

Pass the link_caps pointer to the common rate helpers in
intel_dp_link_caps.c, as it holds the state with the relevant
information.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 13 ++++++----
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 26 +++++++------------
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  6 ++---
 .../drm/i915/display/intel_dp_link_training.c |  5 ++--
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  2 +-
 5 files changed, 25 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 07266f4e6835b..66346b74b2c04 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1551,14 +1551,15 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 		return forced_params.rate;
 
 	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
-	len = intel_dp_common_len_rate_limit(intel_dp, max_link_limits.rate);
+	len = intel_dp_common_len_rate_limit(link_caps, max_link_limits.rate);
 
-	return intel_dp_common_rate(intel_dp, len - 1);
+	return intel_dp_common_rate(link_caps, len - 1);
 }
 
 static int
 intel_dp_min_link_rate(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config forced_params;
 
 	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
@@ -1566,7 +1567,7 @@ intel_dp_min_link_rate(struct intel_dp *intel_dp)
 	if (forced_params.rate)
 		return forced_params.rate;
 
-	return intel_dp_common_rate(intel_dp, 0);
+	return intel_dp_common_rate(link_caps, 0);
 }
 
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
@@ -1750,6 +1751,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  const struct drm_connector_state *conn_state,
 				  const struct link_config_limits *limits)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	int link_rate, link_avail;
 
@@ -1760,7 +1762,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
 
 		for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-			link_rate = intel_dp_common_rate(intel_dp, i);
+			link_rate = intel_dp_common_rate(link_caps, i);
 			if (link_rate < limits->min_rate ||
 			    link_rate > limits->max_rate)
 				continue;
@@ -1984,12 +1986,13 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   const struct link_config_limits *limits,
 				   int dsc_bpp_x16)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int link_rate, lane_count;
 	int i;
 
 	for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
-		link_rate = intel_dp_common_rate(intel_dp, i);
+		link_rate = intel_dp_common_rate(link_caps, i);
 		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index c5701f02fbf69..0917e7f51a26d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -60,19 +60,16 @@ struct intel_dp_link_caps {
 };
 
 /* Get length of common rates array potentially limited by max_rate. */
-int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 				   int max_rate)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-
 	return intel_dp_rate_limit_len(link_caps->rates,
 				       link_caps->num_rates, max_rate);
 }
 
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
+int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(link_caps->dp);
 
 	if (drm_WARN_ON(display->drm,
 			index < 0 || index >= link_caps->num_rates))
@@ -89,11 +86,9 @@ int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int
 }
 
 /* Theoretical max between source and sink */
-int intel_dp_max_common_rate(struct intel_dp *intel_dp)
+int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-
-	return intel_dp_common_rate(intel_dp, link_caps->num_rates - 1);
+	return intel_dp_common_rate(link_caps, link_caps->num_rates - 1);
 }
 
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
@@ -129,17 +124,16 @@ static int forced_lane_count(struct intel_dp_link_caps *link_caps)
 
 static int forced_link_rate(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
 	int len;
 
 	if (!link_caps->forced_params.rate)
 		return 0;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, link_caps->forced_params.rate);
+	len = intel_dp_common_len_rate_limit(link_caps, link_caps->forced_params.rate);
 	if (len == 0)
-		return intel_dp_common_rate(intel_dp, 0);
+		return intel_dp_common_rate(link_caps, 0);
 
-	return intel_dp_common_rate(intel_dp, len - 1);
+	return intel_dp_common_rate(link_caps, len - 1);
 }
 
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
@@ -152,7 +146,7 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps,
 				     const struct intel_dp_link_config_entry *lc)
 {
-	return intel_dp_common_rate(link_caps->dp, lc->link_rate_idx);
+	return intel_dp_common_rate(link_caps, lc->link_rate_idx);
 }
 
 static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
@@ -169,7 +163,7 @@ static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps)
 {
 	struct intel_dp_link_config max_link_limits = {
-		.rate = intel_dp_max_common_rate(link_caps->dp),
+		.rate = intel_dp_max_common_rate(link_caps),
 		.lane_count = intel_dp_link_caps_max_common_lane_count(link_caps),
 	};
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 9256f02fed11e..af9028e7cb987 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -11,11 +11,11 @@ struct intel_dp;
 struct intel_dp_link_caps;
 struct intel_dp_link_config;
 
-int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+int intel_dp_common_len_rate_limit(struct intel_dp_link_caps *link_caps,
 				   int max_rate);
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
+int intel_dp_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
-int intel_dp_max_common_rate(struct intel_dp *intel_dp);
+int intel_dp_max_common_rate(struct intel_dp_link_caps *link_caps);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 0d4a0bf1dac53..b521dd11b62a7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1898,7 +1898,7 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 	if (rate_index <= 0)
 		return -1;
 
-	new_rate = intel_dp_common_rate(intel_dp, rate_index - 1);
+	new_rate = intel_dp_common_rate(link_caps, rate_index - 1);
 
 	/* TODO: Make switching from UHBR to non-UHBR rates work. */
 	if (drm_dp_is_uhbr_rate(current_rate) != drm_dp_is_uhbr_rate(new_rate))
@@ -1925,6 +1925,7 @@ static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
 						  const struct intel_crtc_state *crtc_state,
 						  int *new_link_rate, int *new_lane_count)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int link_rate;
 	int lane_count;
 
@@ -1932,7 +1933,7 @@ static bool reduce_link_params_in_rate_lane_order(struct intel_dp *intel_dp,
 	link_rate = reduce_link_rate(intel_dp, crtc_state->port_clock);
 	if (link_rate < 0) {
 		lane_count = reduce_lane_count(intel_dp, crtc_state->lane_count);
-		link_rate = intel_dp_max_common_rate(intel_dp);
+		link_rate = intel_dp_max_common_rate(link_caps);
 	}
 
 	if (lane_count < 0)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 9d9d8d04742bc..76e9753766b9f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -58,7 +58,7 @@ static int kbytes_to_mbits(int kbytes)
 static int get_current_link_bw(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int rate = intel_dp_max_common_rate(intel_dp);
+	int rate = intel_dp_max_common_rate(link_caps);
 	int lane_count = intel_dp_link_caps_max_common_lane_count(link_caps);
 
 	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
-- 
2.49.1

