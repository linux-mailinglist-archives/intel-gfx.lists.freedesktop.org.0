Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oqLVCpmtMWotpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C67F6695172
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ghLAcuU1;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2809F10ED37;
	Tue, 16 Jun 2026 20:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED83B10ED34;
 Tue, 16 Jun 2026 20:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640595; x=1813176595;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=8nF5/UtTL/MWuKXCXwXC5Sm9CEza4uraDxjxHBGysbU=;
 b=ghLAcuU1qNpWekIsMtLghkPs4l97fSQUS+5BXYe2RkePHHLmUa7YWeqG
 dCRuXbhDEmXxuB+mfc+34/fQVVEYhBDkkzS/9PTdjHXhQLTaRAl58IJjw
 uQ7Y8kIMSsYTEP59mjMfQzMPFKrRU88IrUlJ4QLl6naiqiLluUsx1X1SE
 FsxVkX2dSmScLpXQygxSEScf+/vvd4zWQdKMgYTvmfvzJhRKNOML6dyrO
 CiBmVYSm/vGdkkXi/y2KzjTas2+Bi6MqiTqBbRUWiwPLSYaryTp4RTvjc
 sY1Ml8dvhOTk/UCF6JxM1U4WSB2R7GTUF5Nlx+20EOb/2BF0LkkEsZR6d w==;
X-CSE-ConnectionGUID: TiuwFZG+S4KgYZM8yXYn6g==
X-CSE-MsgGUID: X3EYhjKFSQaWjffzZK1qzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255873"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255873"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:54 -0700
X-CSE-ConnectionGUID: WUPS+lkuTUGbxYeGiQlYkA==
X-CSE-MsgGUID: 5SV6Xt8ISQKN1Igt8qk6sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579834"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:51 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:50 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:50 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x6GSMcS6nW119KcwgdZ9ZtVV12ShKkbzKmRB7jpyg1kEQYfSzG0bm1Mk4IMiC4cUF7tBrATjE6CM6ge2FaE71jOLEFUsy/CD0AtSen8i6ucPap9YvFxwP4356yNA3207ZsbvAyQ8R0ICg5qe+OuUS378W4srB6f3hGV22tY727ahZxrMoEOk3HIkyWQ0koRyMsgtPkBm+46ACBHk+CBPaLeaDJyQDPr7l0xOOjZ5gEPSmZKCeSThNqv8+zW5S/PlKwbR89Jk6XkMBqUKPJUmAd3xTlCtr51lR3HsSKhG0Nio5VIogW2med4FtyoDwoAkhEpQLoAIkZoXUpgbiQ+3Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5VIjoapmAXED5QL+VgEmauhMGyic9ItiRkrOZE9tOz0=;
 b=OgxQwkezn7i0Jh03BE2wcIScoshlu6qmbKDZZaj4+lTbcWq7fJn6csJ19WGAHe6glu/ezSfemT6scu3GOXKmeF6C5Glkvvkc4dwJpU+n3zn21LLZB+D7hcios3tGsh92mBCpfjYZNS7WSPuj4wbTZ/l4bKJgOoqWyfnvD/eOPvlzDaNzJ4NJKURK+dM9fG8ELeehPK0dfJOzTpaMJHHqYXAbg25xaueeogaUENbrfD4BjW9TLCnLzbEq766Fp+SCIvDkaN3iPgTLp6TKSPnwD0L+lDoZOcADVJ56zX4Tjqn3vHZT369Vk/KY0kdx7eXw7utL3lVBepctA4//WJR53g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:42 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:41 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 18/28] drm/i915/dp_link_caps: Move tracking of common rates
 to link_caps struct
Date: Tue, 16 Jun 2026 23:08:38 +0300
Message-ID: <20260616200849.3534628-19-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: f0b6170d-0ddf-46f0-1ec7-08decbe333a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: AsMlemBMwLxsF4sXivXpC8diwWg2x9XKgb3Xo0Ik5kqxGKySC9Fk+KSGxM0BgxUAHffpNRY1TV5UBINeo9K0mIsjFdB5Um3mjYxOIL3/L4Mo14MBreJHoECZtZ2cuNUMLXjueQzJqFZhgynygL/f5z4e9d+N20SdZdoXP1a7L+UL6yD/pC4NmuMF4dTvpgZS1nnYsGvLFLC3oAeJeV8eboCv7y/VPEndw7+aSu3cvyqpZyvGNWyURSQQ4vr2jkwTrBclFX1hUX8IV5orwC0wfyM0JjUBNaOljE8Y9h9mwtMP19ZejC9Q0Vgy6xxna3u63FleVlqlq7hynTGunK27XBgcb5LuEcgKAioG/OPpx8EkirUkr5CDRaocpy37rYj2mH47BhmWCP9Wou8fFci3zKRKUyHteZwSGbSRQx9rc/hh6Mfefw5gKLuXnUeTVYBVMBYE6YgxJAkZ6pJX7XXXdpw/XCQkGSeFbiOFxMzfCYxiDpvEM+H+LCZBz7IFWQ4rJI6pbBIY5Kr28l5tYzPycnJ+PiMSb3ScBPN9C4hBJ2hvgkUWrUyvpffnEEJjxvRixKyn9Q/enKzFQZ3af+XChqDeYX51dURjyu8F6MYjciBJ0lRAN5PUXeh1AswSoEhLSgys77qqxnLUwFkzO2uTp4WkvxVZamg87hLDXAhS/lXJsy5ryC9zNGjVQ7ub5WJh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0FT02zzY2Ru9HLKfbY3ObCVtvNI/7SP1n6yj98To8lupoSMKcx96kz1uejEW?=
 =?us-ascii?Q?9AFZYu7rGPrxUextIEoZxW+aixbQ34zs2/2zTR7K5o6LWFqB9VVXJqvBAQjA?=
 =?us-ascii?Q?eJ19zRsh6ZOLYCDytB43NLDxkpyz4sZ/vPkyBMAul+aN71oUSSFdNaqVcjCW?=
 =?us-ascii?Q?P6myxAdK0XJppZ4iBDtepPNiWXPiDw9htdaxo/AK2a4cM+ttOYl3XwvWwmcN?=
 =?us-ascii?Q?tZbFkHQEhFNfD7dBwbskph2lM72X8Md8UciKDro+SI/amvhfAd5vvTO9Uep2?=
 =?us-ascii?Q?VAzmy4okag5kGscym+OlAgl7zyisK1T8lnHV1DUKAxXlA8V4N7T5D1y/CKqX?=
 =?us-ascii?Q?C5iINCrO/NgcHZejjOyyStoo4XdDb1xO5q+ODeg1V35KPGxAE9W+ymitsOPg?=
 =?us-ascii?Q?abSnaul3L4TXCsV5+TehS91k2CPVNqKSQxfXhc+oMwnKzWFDoo7nQAcxphAF?=
 =?us-ascii?Q?huRCBeOAuPWae1gq28ShluIj3/Dz6CLJAI+q2Bdereswk7KUTQ7YEDQQT6ax?=
 =?us-ascii?Q?Lxdm+2f9emtk1g0mslqa4dnLsXOySt0MUiXCeM7UPxoXiuY1ckBQ4B09bTnk?=
 =?us-ascii?Q?qw3aR1tD3mXjkSQrHbg4F7WWzC46w13nvLU/nB63UOvfvscgHGdVN+tTd5T+?=
 =?us-ascii?Q?CE+349pWihwB4vbhe5jFoSFHLXIeUWjeiI2z558APlk5KBBR0LBcMOsifH66?=
 =?us-ascii?Q?mLfq5wj8MzqzJvgQACaN89Ugb39K5II9EdT2ZxrUd/Ja0OLjY8lFiROzIH8Y?=
 =?us-ascii?Q?YYfqtfX+CjRyWZtWhr0uoNgGXfQ6tTgoqlJRHre5NrmartZW18Eo7KNyYPL/?=
 =?us-ascii?Q?bhUHR0lvMMEec+7tgNTi3q2LE49+BCJpsu20nLnY54oOe5V5DFjlUKDoMzPP?=
 =?us-ascii?Q?zZTv63A4dQi33XTn0t0o0PIG9hJvOOXshH6laMZjVZ83gCkoDe1kMrTIvbi5?=
 =?us-ascii?Q?Ys0oxO2hLSSf9mYPNN0cKliiqqTbh8DxSD6Cx4tELyo4a4FcsEsjjmey5R22?=
 =?us-ascii?Q?+vCtTYSOldaKXL5DkjdZgdD5aF662TqgbAbllfmVleH83dA4LVd+rHal7tGs?=
 =?us-ascii?Q?qd1CJwcX9fOjZdmc/1kEBstxwJXiLAr11GZdTMUtBKw0YDoT+UbcVnZg5Z3g?=
 =?us-ascii?Q?0L/wR8LXm3VjnEWiW75GbAVSIdTnIhj1+eRVNqDThmL62Gpf4ZAlWkgf6lQg?=
 =?us-ascii?Q?0JIJxqgJraJ6rA6Cbv434aC6bD+HTi6WzPz7MeMcp6t9Hf8MG+RfG0Hb9qtq?=
 =?us-ascii?Q?SV+QPD7WVClFAC6n6Ka0nGjigyyikbCEIPhvw7XHyoJTDV+hFmZnNsCA8cwY?=
 =?us-ascii?Q?6cDavhblR7KfmDx9PeNA/XsrhkUG6W1cipEIYo5qAvz3sD2xO49XLz/dIwFq?=
 =?us-ascii?Q?Rbp+P9O1dC1ptLbAQXpCrBpak35uYGuTAUd6t4FqJ/0JWFXNL7TnUF21qp1e?=
 =?us-ascii?Q?EaKKcLYtP0r+/LYrh65lJmjZIPZJalAt5GhDHy8NUTE7hvxfQy7UxtI7rNuX?=
 =?us-ascii?Q?Yn4zYH+asWjHL/men3g5KQvuAuBfaCNXq+p4oEnZTINQdCbTWBtLYn35U50e?=
 =?us-ascii?Q?8KSCgNRNCVEq64BCj/SCD0t/mISlMJfjwimlgLl9G4sWoxWEsZY5e+rsvIb0?=
 =?us-ascii?Q?/FEhKZBqdZRlj/ttHi3bYMgjkBeUanhgp4MuRsR9/CpzXuK7FG7wzoU31YBU?=
 =?us-ascii?Q?qO+nF9orsUjmz2RFYyiE4VTNS4VIARsoUxwyfFcRq911ieN6cVtNwDHqCJdV?=
 =?us-ascii?Q?KhlTUcz1NQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: tQfwYoBO0v/QkZeH77O/jKwPZb7EeM7A2zTuyHHmkfw5WrMN9VDFB8gkvQzWwJHobgXCwWjs5an4JMohtWd6X42l69LsdGpzGeS0ejye2PldVVon5i9gGNpYtTto1fFGT0K5k8Km8uX5mIC8iOW4ioX9su4aX+BI7v0vM4t1IWmoicAlG84zF6eAJ+ESON5YN/hVz22ngZnj7iughVg8r4CF7y53MGbV+/XfXpZYY5CSbcq1zerBqsP7OSZ1cfxgy5DJ+sOE13ruSELOj6mWKy78UdwaA1UELqINtoW754+JMmibfhqu5zbf8iME+t33BvnpALv2GrB4C6+A/H0ezg==
X-MS-Exchange-CrossTenant-Network-Message-Id: f0b6170d-0ddf-46f0-1ec7-08decbe333a0
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:41.9094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cDdaOB3B9ihL2R+/40nvGCy03IchknQcoIRcNoOLKyIafUTKeC2f9BH2LI2X98ERASkDWEZrfSqW0U7iKLxJ5w==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C67F6695172

Now that all users access the supported link rates via helpers, move
tracking of these rates from struct intel_dp to the link_caps state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 --
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 51 +++++++++++--------
 2 files changed, 29 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 443bb3b5e9fa3..dd43c7ee8f143 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1834,9 +1834,6 @@ struct intel_dp {
 	bool use_rate_select;
 	/* Max sink lane count as reported by DP_MAX_LANE_COUNT */
 	int max_sink_lane_count;
-	/* intersection of source and sink rates */
-	int num_common_rates;
-	int common_rates[DP_MAX_SUPPORTED_RATES];
 	int max_common_lane_count;
 	struct {
 		/* TODO: move the rest of link specific fields to here */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 84d9636f4adb4..e28f7308283ce 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -22,6 +22,10 @@
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 
+	/* Rate, lane count caps common to source and sink. */
+	int num_rates;
+	int rates[DP_MAX_SUPPORTED_RATES];
+
 	/* common rate,lane_count configs in bw order */
 	int num_configs;
 #define INTEL_DP_MAX_LANE_COUNT			4
@@ -31,6 +35,7 @@ struct intel_dp_link_caps {
 #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
 	struct intel_dp_link_config_entry {
+		/* index into rates[] */
 		u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
 		u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
 	} configs[INTEL_DP_MAX_LINK_CONFIGS];
@@ -46,50 +51,52 @@ struct intel_dp_link_caps {
 int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate)
 {
-	return intel_dp_rate_limit_len(intel_dp->common_rates,
-				       intel_dp->num_common_rates, max_rate);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
+	return intel_dp_rate_limit_len(link_caps->rates,
+				       link_caps->num_rates, max_rate);
 }
 
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	if (drm_WARN_ON(display->drm,
-			index < 0 || index >= intel_dp->num_common_rates))
+			index < 0 || index >= link_caps->num_rates))
 		return 162000;
 
-	return intel_dp->common_rates[index];
+	return link_caps->rates[index];
 }
 
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-
-	return intel_dp_rate_index(intel_dp->common_rates,
-				   intel_dp->num_common_rates,
+	return intel_dp_rate_index(link_caps->rates,
+				   link_caps->num_rates,
 				   rate);
 }
 
 /* Theoretical max between source and sink */
 int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 {
-	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
+	return intel_dp_common_rate(intel_dp, link_caps->num_rates - 1);
 }
 
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
 {
-	return link_caps->dp->num_common_rates;
+	return link_caps->num_rates;
 }
 
 void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(link_caps->dp);
 	DECLARE_SEQ_BUF(s, 128);
 	int i;
 
-	for (i = 0; i < intel_dp->num_common_rates; i++)
-		seq_buf_printf(&s, "%s%d", i ? ", " : "", intel_dp->common_rates[i]);
+	for (i = 0; i < link_caps->num_rates; i++)
+		seq_buf_printf(&s, "%s%d", i ? ", " : "", link_caps->rates[i]);
 
 	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
@@ -175,7 +182,7 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
 		return false;
 
-	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(intel_dp->common_rates)))
+	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(link_caps->rates)))
 		return false;
 
 	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
@@ -185,17 +192,17 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 		return false;
 
 	/* TODO: Add a struct containing both rates and number of rates. */
-	static_assert(__same_type(rates[0], intel_dp->common_rates[0]));
-	if (num_rates != intel_dp->num_common_rates ||
-	    memcmp(rates, intel_dp->common_rates, num_rates * sizeof(rates[0])))
+	static_assert(__same_type(rates[0], link_caps->rates[0]));
+	if (num_rates != link_caps->num_rates ||
+	    memcmp(rates, link_caps->rates, num_rates * sizeof(rates[0])))
 		link_params_changed = true;
 
-	memcpy(intel_dp->common_rates, rates, num_rates * sizeof(rates[0]));
-	intel_dp->num_common_rates = num_rates;
+	memcpy(link_caps->rates, rates, num_rates * sizeof(rates[0]));
+	link_caps->num_rates = num_rates;
 	link_caps->num_configs = num_rates * num_common_lane_configs;
 
 	lc = &link_caps->configs[0];
-	for (i = 0; i < intel_dp->num_common_rates; i++) {
+	for (i = 0; i < link_caps->num_rates; i++) {
 		for (j = 0; j < num_common_lane_configs; j++) {
 			lc->lane_count_exp = j;
 			lc->link_rate_idx = i;
@@ -231,7 +238,7 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
+	int link_rate_idx = intel_dp_rate_index(link_caps->rates, link_caps->num_rates,
 						link_rate);
 	int lane_count_exp = ilog2(lane_count);
 	int i;
-- 
2.49.1

