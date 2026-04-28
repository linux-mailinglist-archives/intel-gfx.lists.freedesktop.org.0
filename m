Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id vGIPFhau8GkGXQEAu9opvQ:T2
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C772E485427
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E04A10EC32;
	Tue, 28 Apr 2026 12:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XzwCqvEc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBF9A10EC29;
 Tue, 28 Apr 2026 12:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380881; x=1808916881;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Jcl+Z73SxCgt9ciZ+UtGhPt7peO4H39Vl2O8/igO8Fw=;
 b=XzwCqvEckgvKBYEhR8TuOO1ZbIkAWQTN3+7UYmb6tOdHM8IM2tUBmrDA
 fxiW2J9VrE5Vk5ETaqCMlAbSqLd/ZxcyMQvEfOHL5lGqdk6zLVRd2hbbk
 z39uSDaLrFMZ5dI39o/cxSxdZvCz0F6aM02TINLNpQSyA7PaY4HLpex2t
 UUn1fzvcmE92CnNK3/ioSYn7we1D0q/0Ajgwt9BLt6pqdmgh1zsZBugwe
 UvBY76F/UBJ7TKQw/U6/XCtYIilZBY9GG0DO1oWK3vY7PL3YCRL7AOOPt
 /VhBZXuZ6OLkgUXw9WtRJ3MquYfllOQKpyb/oY8zu+EOCkOkQ1dp5xHlY g==;
X-CSE-ConnectionGUID: utM7C2xCRTmGcD3exdvSCg==
X-CSE-MsgGUID: 4dbNIv+OQTuhK01Victwuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893797"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893797"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:41 -0700
X-CSE-ConnectionGUID: izUlqky5TZOAapp7PGUVDA==
X-CSE-MsgGUID: GrFInymQT3S/iWcaV07buA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083546"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:40 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:40 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hBGlOn5xX57zwre6RH5/QPnnhUI/u7wT/J9WY66961c7yJaFfSXN1iFMkm1BgVjmfdcWI2oZeXJ/cj3/NZw8MRBNquOz2wjQsYuFkxptV+bKJdZab8GMcqQKntaqtnduxBNneJPemDcK9aerNRTf6o0M9UFcGdjrU8uR5Cbh//6NHfd2kTtGjhFeYrM2gazeV/r5mzAmQ6V7hYBo+x586D7lORfFuUxgfigWgY3i0nLUUuWLvVfCjdQOi7YXIFVi0AgWKY8DA4xbx0RUSUFmDpTGfD/VBXId7yawCyyWHqjjZntZjw4mFOW95UehyIrvsjMpzUAH1h3kalwNVwl2Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J6mfqlqiiEZ5uANjAOmNHEPU1ac0KQCO+hOnupvtD2c=;
 b=WKdtLKz08dvb+fnXZ984TdP36/BiLmCmGb4p557Xx3pk65KCzfydL7JzBoq1cG527zFoqXs72x83Zuy09AQL8E7kJIRiHpKNiTl+TsoVvoouoqSfYtx0qADuaGMiJL0VqATgyf8WY2Rb8AxKrzXvQY/CorH0CNLeJyRL+Sz4ptPEQXcacgH8qBkOhmx3L7f6AUcJaEGgBH/WRKdalep07lfumsz9LyROG7Zt9WUtR8JW34VMesi3qRTBZaAtWCB0PH62TqWXLp1yAZSpaHltMkNI/N0kCJCD3sKqR3JgZBHJUhdyXfRiBAtzHzYXXYcKnFytrL1417bWHn4ajRk5Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 064/108] drm/i915/dp: Query max limits via link_caps during
 mode validation
Date: Tue, 28 Apr 2026 15:51:45 +0300
Message-ID: <20260428125233.1664668-65-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: 4051a5bc-2623-4afa-b5c4-08dea525469f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: WLvsBlUqwKYLB4PgzYjxx+uN2Bk+Z7uzLlptOo1b0rqxikwWgB+otmUnwXJD1fnfQyu66ylANWeSW7WtnVatED3dNkjrEhVsO3X5V/WtqnFv+a+MEQqWaUS0qj/iAtKEgkhH5P5EEH4kvF8Qu9YKDXD+CVSeocixSUjuUUwOht+Qnpu7NiOYREXGXgDyMSZTIV3CIpYeNaM481r2/aHQMl7WWYqzVRJ0FXsvdi/Mf8pc18sZsccf6I8LfhGe+YzfZla8RBaF7mGSidwXTZV6/UEZoCtM4dj2cwyVCfKoTnDg/waSIH9x8cWCLdf03FuK5rAGg+Ez2fpgWUyrBuv9NcZtM0eck7Z9yJ9w/7tH3UU9JgmyESRO0tHKnhAb2MasdTS4x04XLVgKS9PABkxjqfjvI07hLUVxLb/wGohOp+F4fJbRIxuD8wuzeaQwCSUomrHdA5Up/bUKV0Mxy4tSyncE7QU0vxKr/WUeXNNucU85KlV+6EzFpC//NAuwgfeHZ+n5yCkcslPj/ISCO0IibZsnuj+A1+7YRyTVio6d6tCjH9Awh3I+1ix1Na5gBfbc/7k12JPTG2rV9rAA0bucALxpPkbBlKmK9WIaoS1aiI0SKBoesk2iRau8HTTf4lGB7UpwT+E2V+XjYJ9OSx3rXc/Gd1GyMcyOGP/yjdngFvGTAT1ur6PwZN1uBGtHCEZ1JfkZZPWXYl/m0QpFUdpZPOwqB/kPcRDFIampftIJaOE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oLuqCQTCZMy5qmlYaSVUHJagP5Rzz4qCGSJKo/u09D2amrVYcdhuD3wM+6h+?=
 =?us-ascii?Q?A7me3fPHoP9gH0/S8dt1LQAeXC+Qz91Pw0W9tPt1JM5QHxPbiw6r51Nfimon?=
 =?us-ascii?Q?33/DwdZVfvdh4O5CrRmd8w2mt5OZqfo6idl3cRLztJdQTqBdTh7JKV4EgaHe?=
 =?us-ascii?Q?kU3Jvov902pIHbfv5qK7x/YOgdFBuHgbAL9By41cjSIcyvwjEJKW9hKEnVCI?=
 =?us-ascii?Q?eA1V67FrXvBfaFq+iPsBjm9aokGEW7GzlvB4Z38T4kYVPIS3MJUXkaZjx/CQ?=
 =?us-ascii?Q?ABvMjwjbYulTtIwSOM8/fBD3lb7cnRkmNPp/2c1Fkawqpv3OTLwdswXwiTti?=
 =?us-ascii?Q?u2TP1gcUUEZinWoHKE3nZdNR1U43bPUB3vrgStl+pgPK5Du3IdpN12JLZSWG?=
 =?us-ascii?Q?3LVt5F8dYnOZbf7bSXi7ZPzQzwIJp2++1z8lFxpqH4pmQIgl4eAPywqak+XQ?=
 =?us-ascii?Q?b3PWGUO3TBHMmnKbA6LcWFYeF0Kj7cTTPi8hNJs/5I0EXIhBBpwOb8pPSDwl?=
 =?us-ascii?Q?Np9Wys/fL9LQ+S3bca2Zw0Si9p8CwULJS1Ib8sitqpjvp0nZU0SW9OviexiK?=
 =?us-ascii?Q?lF7z3Pe9g3PMf77scKmqY11X1wnmy0/MylZoOL19GUpaW8C3CIjaXgjSB9Wd?=
 =?us-ascii?Q?6g/6XEZqzWB/BtMhUBgzmn6Kw7E0TIuhSLqkGxiRtEV7iUq6zLj1HTvATnyS?=
 =?us-ascii?Q?5lzplKKJL9xJo8PNRkNZfFJ6/m6A0eiPK3ucA0oe+yeKTxSmbSs1EBbM6rUe?=
 =?us-ascii?Q?47wmda/wXS/Nk+yF54sTP+kSCWzZY2mbCaKF6U7329K3Eq+ZmQUGl8Kv5vIE?=
 =?us-ascii?Q?0YL0lcr0dFeSkbBDAlwIjwL+81oR5Sw5xDNLStv7/4cTTk1PWjiMCdG3dxrY?=
 =?us-ascii?Q?QAG/szJxPez0tQi3m8owsx5PNN/jjcZhokM+H+I3okoGpWlBFDCjbTCkhvsr?=
 =?us-ascii?Q?/29MsaeKqZsnmOSldwpZwnshuMvCdGj7JO5eAL5Tvhh2+nI8eiu38sblaHU0?=
 =?us-ascii?Q?TkjivKw4i/TssbPMLW8Oio/TShArPxopsZylyCeFym/2sCZ/HGkKLteRG48Q?=
 =?us-ascii?Q?irQhhLQGeLxnpXuOXfWCpZpACfPmUxDeoS6f9fEIQdSIUjtJd0V0IzR3iwC5?=
 =?us-ascii?Q?Lqxv1NAst1hNO+tHf4xADrs03DpewZhOEIZJHhK3H93WiKpa0Yo425iSA5N0?=
 =?us-ascii?Q?4iztjNkTxlrZ/7CfOVPHr/gMJ68syQwks/VkZXVZYKR5KA1+Te62N4geAayI?=
 =?us-ascii?Q?Zf0vjKtXyDXMrl07V0xK3gcWvgluRnfzd8ETr92H681q3zVkBAz3PQfsQySu?=
 =?us-ascii?Q?RqFL/YEgj/WhNkDEFa12w57CbEWvOhP8kOHRjquXTcBt4ftKFMSVsLjGF6y6?=
 =?us-ascii?Q?6N0uIelLN6Tfiruqyff3JQM+suZjviBIQw7Wocr0EqV2+s6v9LfGd6BFT2wf?=
 =?us-ascii?Q?BuEuj1epKs5DW2lxh6Bh7MZJhe0flG4zdp0DTNx/FgBk4fPo8DIogkIXBeKg?=
 =?us-ascii?Q?UQEDdQ6bvvEALTur2IDvkk0Z+iFkCwiPYnJuNxNGpURmV0+sjZxojszPCewW?=
 =?us-ascii?Q?G4F45yUHZESbJKesXONwhfQ6kSc9dMr87T9Pp5R0P2YfT/J8gBQHhvSU2gRG?=
 =?us-ascii?Q?Q1Km/yqsObTs5PhBickOVZrL6p56gEP6Wy10GLiMEYZlqWUpVwh/QpVu7nKY?=
 =?us-ascii?Q?YW56SmEu2CPnYAZ297hwknOMrxeau4fCgrfUTbBvovhEgS4exuEjrquhSnwO?=
 =?us-ascii?Q?QqAgeXtSIQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: vwY8jojUO8mKkR6JFMadfa5x3ihxGSoDOIUIPyG15fhoyFqHlWRiODZhfIgfmF4z8BKauSMcP5UUuSABr4qpN94AHSG97zy+iBmE+UAoJgXI6aHjPm8KathtzFrKUGcVfgDnIeAcTdWZY99ViLlFpXEjf9kypjX0dKlHWVeSYRpeaKywDb6FW2sXDzhMD4ZAt789y/yTLVyf0VYVjTRxR0SHYqGkJjvZoejMV4nwINhon2rZ/4oG6Xfe6AOPrO6LfEkVPh0i560BHwCPUbg+E7CqtMeLwa/q7krI4tLnpZn+1b6/Ls77if31dSTc6u+8qRhHgWk2gJevT7QHMXqSpg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4051a5bc-2623-4afa-b5c4-08dea525469f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:25.2606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J4yO3GWQMOpOMA0aTTp1RcsBH6ZbMDfM+AmAXm/E2or6faixC0s2nXuNoPLtL18Wr/jcnd1tKVDT6UZX0uhgqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
X-Rspamd-Queue-Id: C772E485427
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

Query the maximum link parameters during mode validation and MST link
probing directly from intel_dp_link_caps_get_max_limits(), instead of
using the intel_dp_max_link_rate() and intel_dp_max_lane_count()
helpers, which internally also call the link_caps query.

This removes an unnecessary indirection, makes the max_limits query
uniform across modeset, mode validation, TBT BW calculation and link
state checking, and allows unexporting the
intel_dp_max_link_rate()/intel_dp_max_lane_count() helpers.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 14 ++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 --
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 20 ++++++++++++++++----
 3 files changed, 26 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9be3b767fb54c..875e835848c39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -352,7 +352,7 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	return min3(source_max, sink_max, lane_max);
 }
 
-int intel_dp_max_lane_count(struct intel_dp *intel_dp)
+static int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config max_link_limits;
@@ -1322,6 +1322,7 @@ intel_dp_mode_valid_format(struct intel_connector *connector,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	enum intel_output_format output_format;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
+	struct intel_dp_link_config max_link_limits;
 	u16 dsc_max_compressed_bpp = 0;
 	enum drm_mode_status status;
 	bool dsc = false;
@@ -1334,8 +1335,13 @@ intel_dp_mode_valid_format(struct intel_connector *connector,
 
 	output_format = intel_dp_output_format(connector, sink_format);
 
-	max_link_clock = intel_dp_max_link_rate(intel_dp);
-	max_lanes = intel_dp_max_lane_count(intel_dp);
+	/*
+	 * TODO: Compute BW from the maximum-BW configuration; max limits are
+	 * independent bounds over all configs and may not form a valid config.
+	 */
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+	max_link_clock = max_link_limits.rate;
+	max_lanes = max_link_limits.lane_count;
 
 	max_rate = intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_lanes);
 
@@ -1539,7 +1545,7 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
 
-int
+static int
 intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 6abce846b8e7e..6d6bb9e23ff26 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -99,8 +99,6 @@ void intel_dp_mst_suspend(struct intel_display *display);
 void intel_dp_mst_resume(struct intel_display *display);
 int intel_dp_rate_limit_len(const int *rates, int len, int max_rate);
 int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port);
-int intel_dp_max_link_rate(struct intel_dp *intel_dp);
-int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
 int intel_dp_rate_index(const int *rates, int len, int rate);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 832a43ebe00f7..4736bfeb25e06 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -47,6 +47,7 @@
 #include "intel_display_wa.h"
 #include "intel_dp.h"
 #include "intel_dp_hdcp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
@@ -1473,6 +1474,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	unsigned long bw_overhead_flags =
 		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
 	int min_link_bpp_x16 = fxp_q4_from_int(18);
+	struct intel_dp_link_config max_link_limits;
 	static bool supports_dsc;
 	int ret;
 	bool dsc = false;
@@ -1505,8 +1507,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		min_link_bpp_x16 = intel_dp_compute_min_compressed_bpp_x16(connector,
 									   INTEL_OUTPUT_FORMAT_RGB);
 
-	max_link_clock = intel_dp_max_link_rate(intel_dp);
-	max_lanes = intel_dp_max_lane_count(intel_dp);
+	/*
+	 * TODO: Compute BW from the maximum-BW configuration; max limits are
+	 * independent bounds over all configs and may not form a valid config.
+	 */
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+	max_link_clock = max_link_limits.rate;
+	max_lanes = max_link_limits.lane_count;
 
 	max_rate = intel_dp_max_link_data_rate(intel_dp,
 					       max_link_clock, max_lanes);
@@ -2132,14 +2139,19 @@ bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
  */
 void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
 {
-	int link_rate = intel_dp_max_link_rate(intel_dp);
-	int lane_count = intel_dp_max_lane_count(intel_dp);
+	struct intel_dp_link_config max_link_limits;
+	int link_rate;
+	int lane_count;
 	u8 rate_select;
 	u8 link_bw;
 
 	if (intel_dp->link.active)
 		return;
 
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+	link_rate = max_link_limits.rate;
+	lane_count = max_link_limits.lane_count;
+
 	if (intel_mst_probed_link_params_valid(intel_dp, link_rate, lane_count))
 		return;
 
-- 
2.49.1

