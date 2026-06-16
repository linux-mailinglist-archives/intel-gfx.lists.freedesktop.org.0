Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lyE5HZ2tMWo1pAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB11169518D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=BM4KpXn4;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5955310ED48;
	Tue, 16 Jun 2026 20:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7732410ED37;
 Tue, 16 Jun 2026 20:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640595; x=1813176595;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=HCDrgRHM8XbU9hHr1Ito5UzRLyHJIVUYNy/uzCiXLIk=;
 b=BM4KpXn4K9a4A4oKtKetpG8Ut/odBcVQHN4l5RXfDJRZB1A1FR+Dj64X
 4zvBR7aWNQq4tXwQfeQB/GnMAX4tnCvKHTSeYpzgobp0CSRhNwbKWUbNW
 zxDjo88v3t1/W0xdRjPwdchDuxmda2iVYVDijPoTbBlcYz4Iy3MFclrGc
 hUWB2IF7lJeDG+WgJFN9sAiOHNuVUzyOygzzOWsKKjQfa4BHOjvMaN79C
 zFJY5txvxv+IMJTox+JvFOF7MjenS2ww4Fbpclgq9gmr3tYUwxj5E6sst
 LdEk2Vtwn/8whrjeRkScDX+lGc5HtvMhbQzWKDQKask0xB+VQapgXr268 g==;
X-CSE-ConnectionGUID: 3oMtzA6MRj6IWBVPhQKyBg==
X-CSE-MsgGUID: hJhXKcV9Q7mZXmBlamQwbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255879"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255879"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:54 -0700
X-CSE-ConnectionGUID: Wyv94Gp2S/aNiZp6TQtEcA==
X-CSE-MsgGUID: Xqe4mQZuTF2uH4KP/ER6jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579847"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:52 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d8JLMCiUFkygQzgkO4FnYgP7MklpThtRPLu8tI/qzUwlK9HO0ZwLygndSnpcHHsyxAi2dxUob9tRPsK6n9R33XIPO/ylTL4OjJ1zJ78yISInNnKpiaBngxGdbnBfsEILo69Er8Cx/sjeHopZyWLg9oFwiSZqgoZBolRrwkWSdKVCcJ2LaHnvTMttkMZwJJ9EnovpR7rfwwCNqkQWb8TKt+8YIttj0/HRMeZENfCihImx6B3QiI9Y40ExQY0hqQhAvFqfWv4cCL0IdBoHDtINh42QOAtXeJ43nRc9Ut6A9wj6xE5QVK2o1Yk/maxqIvDQJg4IFKpee6OaIDQZD/AhsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KHYFYmL5oalsFgefFDE+FFpsKSukkAlIL3bMOyRH41M=;
 b=VR1BCIVuJ7Qu8/lL4CWxFPa5ttD0mlb01+aM7XhZOM2BKNm9Fmn5gXTQ6oCRrFGKUG7tT3DFSshi/3QRyVa1KEaqk8cKOfm4nLVRGggGazXFeveUupaWXYN1k4BzVQJ+guxqrazrOE2RixkeVNNehG/4nVbmysj5CKOBJ8emypXJhEphe2xCoEuGJaMC2y2al1POiKdBJKtPp6ayTp+/6uzzBm4PoJIv12UeTViH/HXHrA359YhMYCS9AGGSLzRG7DtmGTi2r739PnOte7iN+VhUzHnbtPApnpdwH38+0EPPQJOCKw+GgF25fqrVKeXK61aN9Mu6HfhaFBRq2nzycg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:48 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:48 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 20/28] drm/i915/dp_link_caps: Use max common lane count
 from link_caps
Date: Tue, 16 Jun 2026 23:08:40 +0300
Message-ID: <20260616200849.3534628-21-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: d8560596-0c3d-403c-fae0-08decbe3352d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: /w7lOI+oy+dHO4GOa+b4OBUvs1zcUecHoKCVB3+3xoIsEM9Rd2j0GhgN3/HgpzwCVnQuv5GS3FZ3gwsgXBiidrs5wkfOuBGlS5SXPUNCG011/xf5TXsAb/W1GXkcT+QeKjB+dRtOo+0YHkkac3YjFiZv7gerpVxzY7JeRIzjoui+V341XuKnvJOuIXQOVJZrpM7wHh3Rsrt4lBYjOQ2Kc0TG5AxrKQLiEGwfEL0MO6AI/p/leLE/9KoOxUcsmowYohs3PlDpkj0g0qPGkRqyuBDWXoMv2eo1k/GcnD70swNvHj7AAw2NzOEaxa5P+N2ulaUPuMH6QeNhRH6+yX3q8ZSGZ424EW+4vKjuHzr9Mg27ikNZM26ahk1z5tQZpqEhfhmHRiCBmm7uufWW+EhiVlcV3SQFEL12P0+T5N4u4a2BrFj8dTxZfemJqwkin4TVKb7ZnWDpOpOmSGn0ZEQXqOxNpLj1KQeqfX6z1GcHpCypcsEeLcQkRLjcPI4OMK5i4hQPna7jJX5X2tJSBQzn3RzYEJGTzsbk7livunIkw154jFCSl3SqYzqYi5gNpmFKdsjEr8aD+v7f1B79U6v97eGc28nnDIJ2jsfMoGcJqVYcN0wEAPVPKJXY1GaUP59doHRZgwcPF6CPXtMiGEFhfVJmr/1O1mM5snSQPYjeg1vpy0I03eQHbM+/bD+UOsLD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dODd05N8eEX2hb9qZXEGvsjBNYHJ5Rxn3DsZR+xpYsTz480SgJS/QAsQ7XL0?=
 =?us-ascii?Q?im2f5MJOjAA3aYwTAo3YaAtIRN0kqaD949yfDAYg0F0+GHzl+hCquUvEL/fS?=
 =?us-ascii?Q?LB93ZO1ebCEHIJgvhLtEmrP0Of9tDmtlUT8Qb6aZil6RMuI2ZcVJ56l1j3xP?=
 =?us-ascii?Q?M1j3wm4mi1gHlDO4MKlRrtXiCpv7qTe5ad9zJMb2lu3ctIneCwUpjF8mzdDf?=
 =?us-ascii?Q?NjGjDEe//osUlCStNsh9UbCSZzh7U3oOmKaNDBfdmcXT+0iTNkgxXRKOck9K?=
 =?us-ascii?Q?5Y8xvANsOjGcD3L+Fa4zQugzzGonjveZD5eWaqb6QE2R5vcdWSvL90rTUt9A?=
 =?us-ascii?Q?Ym5ePlUm0JOKwcWJI1H3PdeRcVPU/VQ8/mWp7lShGPi/sGjNhEj5Xk0GGW/F?=
 =?us-ascii?Q?Q1QS9BWmQDC7wQxSp+Go0EnNJmSm/NIHAyu/HZG2iwRNfrpOL9EE55WIUgkk?=
 =?us-ascii?Q?N8JJ/73YxkAGMbRHi4opUrvw/LPHWNOI1EnqoQ+F49Ekk8+W4jeM+KTrfjTR?=
 =?us-ascii?Q?vUqA9WjNw6WyVYberdX3BZI7mGdTdpleWoiXCsw7v8N3z/aF1VZ6F8pyxL7n?=
 =?us-ascii?Q?imcFbl5wlLhI8mxzzIGXzRsxx6qt8gvCbLLS7v44m57Ch+b8KfUomnfdG31D?=
 =?us-ascii?Q?bBEJ12QziltGVRpw1ib+WPdAqFsWfgcuqHYyZXhJoYf4tSR9ECT+OngQkHNA?=
 =?us-ascii?Q?iVWWswEJkGl6Vte7Dju57VBOdvZCxhwWJu/yQY09eQxbrVmqtzDJl/inMET3?=
 =?us-ascii?Q?uhbbnz41lC+oy//bV+Su6GsNLYwKnyAWC+b4sW8mEECQ98WJLd29T23a91Ov?=
 =?us-ascii?Q?QdXFN1pl6bQMJWo1PGhsmGdexo37cDXeR14RayT90CVfsjChFNwM2twN9wrk?=
 =?us-ascii?Q?1aNqNLrPIXZXaCWpltnYZen2CchnJB8reC9ZgWMRtjjyN2aPnuBZ2YxfxfgK?=
 =?us-ascii?Q?lH6WrwAYNTBoT/t9pgrS7ma2yhfQWCKWBT2blab8O6oM9exXrFsKZirZqYOK?=
 =?us-ascii?Q?Qd0HeBIHFcCXbafItbz0dGikNpEkyo0Vp8c8pK9YOry/WetzrJ81AIWAphQF?=
 =?us-ascii?Q?VtkiugrAI3exoXvgH3bvPaPOenOupcuJOz1mBXFr0KO9uqHLuo7L5Gi+5PdS?=
 =?us-ascii?Q?0JBf9e+lZKUSXgdQcZNb5Iz2fZfargkNfopRHn/o2sOgVawkCz5iMOmw7sQN?=
 =?us-ascii?Q?LVFuGBFY+2myRAfWxSjbxyisNcpSDjoBsOlAMfgtJsfeYsXAbPPeKiZplDLb?=
 =?us-ascii?Q?C1J5XqREO13wo5hIAgWooBXJQFIbaI2nq/HrkiFpJG2ZuB0TVcSpKV8eouDq?=
 =?us-ascii?Q?R5FgRkGF5srw7ZG7rRdTUxahl2UGTKsAYzFJSWny6pqE4gUNTX+MT5E3WLJj?=
 =?us-ascii?Q?3u2oLzL7UL5tQnlhUDtn3+/+u3PbzOXVaGkLj4jenZNFOEgUZIxzm2AaWOQ2?=
 =?us-ascii?Q?NSDf405YU0c+mhgD8QXf8P8H8dA+2mOn0Je6VtpcB0cJA+4XZeX3Cg3TR0nC?=
 =?us-ascii?Q?Lu0DzwY3t9DTxOovTx9liq4mE6kGue2HDbpOcdJKOccy+0GxYbP76TYOSXRA?=
 =?us-ascii?Q?0ICX8BjV35ZDRpLdr0Z4XgwoemnbJsniRM3w6YEXbQaYKvZw+/Y9J+acR2lx?=
 =?us-ascii?Q?ladsDg9GArOu0xh7pvkeraFJqzORWmrS5OByji/TJtzfSAvv41HgKAIvOYh0?=
 =?us-ascii?Q?ixHTFndy7CL9QSQlaYBSvYKJjxtOh0K9KSm6o/irNA0uCRoviHJu4FIij/Zu?=
 =?us-ascii?Q?r/xkJAPDWw=3D=3D?=
X-Exchange-RoutingPolicyChecked: QzqDStuGRV+UKp/nAt6kxGUsqvyp5El16aUB8+loTtxpGJWNo7xEOKmTj+uADGGsl3gveQalLvgEZAWaydeSCC3PAnGIKzm6dAaV6l0Aody1clkzCj+7nDTHhSVtFecgZvFZspEfxhBXgH9aYa19U+OfEBvxTDCEap2XmdwtcmbBEqAxcTlgluGf6ZKidmISKKICOEb7ohIqvouXLlfHOSIA1HrTUHtPeH5LixzS8LimIduQopuUtR8+EzytRwTHopWMpCRKQaj6ef6DK0HvAmSa8efMLsHaJKbFUzYam/8WB25B3erUYEo03hw7ZFRh71VP0oSab/XednaxHlHuPA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d8560596-0c3d-403c-fae0-08decbe3352d
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:44.4778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: txZwUl5RR8wY0kCGbtuE+mOhFMolcsmKVvS+bnFg3/U8v+NDfrCfDOZM+kNv3SK98QS6Q6YdaGpfwEoZ1h5y7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
X-Rspamd-Queue-Id: DB11169518D

Convert all users of intel_dp_max_common_lane_count() to query the
maximum common lane count via the link capability API, in common with
the link rate queries.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
 drivers/gpu/drm/i915/display/intel_dp.c            | 9 +--------
 drivers/gpu/drm/i915/display/intel_dp.h            | 1 -
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c  | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h  | 1 +
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c     | 3 ++-
 6 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index dd43c7ee8f143..19c66b3a81509 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1834,7 +1834,6 @@ struct intel_dp {
 	bool use_rate_select;
 	/* Max sink lane count as reported by DP_MAX_LANE_COUNT */
 	int max_sink_lane_count;
-	int max_common_lane_count;
 	struct {
 		/* TODO: move the rest of link specific fields to here */
 		bool active;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2873b2df29f84..0d7ec7a8898c9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -354,11 +354,6 @@ static int intel_dp_get_max_common_lane_count(struct intel_dp *intel_dp)
 	return min3(source_max, sink_max, lane_max);
 }
 
-int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
-{
-	return intel_dp->max_common_lane_count;
-}
-
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
@@ -701,8 +696,6 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 	int common_rates[DP_MAX_SUPPORTED_RATES];
 	bool params_changed = false;
 
-	intel_dp->max_common_lane_count = intel_dp_get_max_common_lane_count(intel_dp);
-
 	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
 	if (intel_dp_link_caps_update(intel_dp,
 				      common_rates, num_common_rates,
@@ -3613,7 +3606,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 
 void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
-	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
+	intel_dp->link.max_lane_count = intel_dp_link_caps_max_common_lane_count(intel_dp->link.caps);
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
 	intel_dp->link.mst_probed_lane_count = 0;
 	intel_dp->link.mst_probed_rate = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index fdf9bd88859e7..f776bec7c4254 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -106,7 +106,6 @@ int intel_dp_max_link_rate(struct intel_dp *intel_dp);
 int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
-int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
 int intel_dp_rate_index(const int *rates, int len, int rate);
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
 void intel_dp_reset_link_params(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index bb727bcf4de18..b227c9a55f63b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -102,6 +102,11 @@ void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps)
 	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
 
+int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps)
+{
+	return link_caps->max_lane_count;
+}
+
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
@@ -110,7 +115,7 @@ static int forced_lane_count(struct intel_dp *intel_dp)
 		return 0;
 
 	return clamp(link_caps->forced_params.lane_count,
-		     1, intel_dp_max_common_lane_count(intel_dp));
+		     1, intel_dp_link_caps_max_common_lane_count(link_caps));
 }
 
 static int forced_link_rate(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index e2f53eb167a8e..9218cb5de2c71 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -17,6 +17,7 @@ int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
+int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index c82adfcce01d0..9d9d8d04742bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -57,8 +57,9 @@ static int kbytes_to_mbits(int kbytes)
 
 static int get_current_link_bw(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int rate = intel_dp_max_common_rate(intel_dp);
-	int lane_count = intel_dp_max_common_lane_count(intel_dp);
+	int lane_count = intel_dp_link_caps_max_common_lane_count(link_caps);
 
 	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
 }
-- 
2.49.1

