Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOacFB6u8GkRXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 018D24854ED
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E7210EC4D;
	Tue, 28 Apr 2026 12:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X+/W4Ahb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C28F910EC57;
 Tue, 28 Apr 2026 12:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380890; x=1808916890;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=jXtyfq9JUbHQtx+okjr2JuMT+QUPlNPtFkyXC36Way4=;
 b=X+/W4AhbcdaHYsgSxlwuHcSNwRXkCJDEHyUa49Q3xnKetoKui74rmD9t
 SlOLP6BDorDy6bMuvQqf4ZRCgmaRVNX9lkn07DDTCv81d4y9IY96szC/d
 cnJ/i/nKF78OZXa3Lbc2It8pkPdSxcvtTY2+XmK8sFwu0mVg3fbaKzg4/
 DPmUMqrTLw3qCEieuQN0sK35eJImPAzZm2+2IKm6UEYkCLZFcljWDMQsL
 XboQdXkJZ5XqxgPBBFQn4F71p7XfKPa+0Wpa32fxuKIEIW7LWBQS3piYs
 IpBRzQAbqJjuorgo9TJ5S667nEfRT71SaBatARtC8t4qc/fBBAu7FhKtD g==;
X-CSE-ConnectionGUID: tvDuW18WSyKvHJ7J4ZL5rA==
X-CSE-MsgGUID: Gd3LNaIfT2O1YIWIwkKu1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203236"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203236"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:49 -0700
X-CSE-ConnectionGUID: V1qaeKT4R+K+nLhVLX2pkg==
X-CSE-MsgGUID: AbB0BE8xSeamFFbOGttMJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244536"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:50 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:49 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:49 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YTZZPp2qdHFTA830offmVXHxg2o3ggWE/pwPY7t3V3OZMhKgTouq0Riq2l6v4OGpf6ABx94suH1EoVk1ODnFBPnfNUA/SnC9fJSyTtR+aVcLrPw4T1x50qE4zZixlk2I06bo6Xgzs6TYZ80BwN2+5+zkOgehMUJBz1TR4VwEhYun8DZHxVhVx2fg3qOOuCzIaEkNMOzz9hl0775JrNKz3VBUErQpjNr6xZRZcBsZdWCtsUdDZ9ILs3dmoey/lpTR2mavjLCPB1yP8G3Y5QdLpmr7ImjxOzjWE3jqkCE0TzQyPmFcOv4T2hL3UthE0eWmXkogLUPgoNOnu9SrU/FHAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Q5aN8wep7g8OyTueenzKNoeWOS9sIuh5jRhwizT0I8=;
 b=N8rVzrg+qzfcSfrPd4WzFgFlKyF0rVNrgq1Y2wHiorxDPKx7SxFM+qK0m3IjZ+em2JZ9ETxLSOmpTb+T/SUkIZpHmKtd0tSDJr/VafU8BHBPCcnmQ2KbGnYd0XzM3JXJ8x0ztV45MqQJJaFvQvCuSPJ+4AoofC2iWgqdMx81EPnLj8Tu7Bf/IKnAsCUMo6tupsSOLeK76SAFxVZCQNaKtLp4DhgmnSzlJjKJ5qIRuvydojujzoGHcYY0tsmlKZtENhq4DYk32YLS9P79BudBCwu2lXYy4VTDTUaokE772867OAv+L3P1quSPII9ah36HqwIg97LP2C7DhgpMshOtLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:38 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 070/108] drm/i915/dp_link_caps: Factor out helper to get link
 config from table by index
Date: Tue, 28 Apr 2026 15:51:51 +0300
Message-ID: <20260428125233.1664668-71-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: e5cd6e0b-7024-48aa-54bc-08dea5254c8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 9m/DLi31ApeY96fvfopWHqE5A9QRuNUZhoqAetpT8FXhHWZPFBgL0Vm2CXVrnHsmiMoB829AMJbiYh96upLMAYKgf4s5wPwcqj2dCe/6rAWKBC8pJM4unIJ0Iyvo+5K2tkN42rCrfHWO480a90az6vuHAQO6SqwKn6eXL9KMxF70aMhybxh/Cub4U3F8Vknut5CxrvddZ9eE6c9SJCFYQarQc+oB8sRapZ3edQfX9v5x3rEksbjTig4oi1kxsMULomJld7qJ+Z0ZML9C6u34USmciL9RwKwXr3lb+wf50lB7CGB65z9OmC6GwP9kRLUCtrbyCBfD9zF7cedMZQjnqUrKLbvyD/0n3oD0lT28aWDyWDl2zDvi0lNhizobCRyIKR8qXJvGHA5GNYj5/Y9XszYT2Tj4wK2GAGl69qR/AnBvy6FA1G21oECZ+m8+HHskJvn+tkqMyM8nRVrAjII2qO5DwS5ir4qHY/LiqY60v6VTh9lvqaByJVlTq5vABY43EVoVPEUOy9lM9R8Y1SPd27XZjwP7AlkFAk74uLP8gA783YeXaj0tHmGaLvzjfyCzTVDtNrwGfFaN04jdi3/jG4hiFjfJpl0E7JxE/Ha7n/90CIdEZhdlfn+zMGFr7vzURYS0ZR4pQAocADZNTbTqhlUObi0YU45cmesr6PanW/ZHmE/0d8uvEPCB9nN2SS+eoxpvJ+Hq4EetRFgXgAYcfr22SpWgfXpDyYnHQezvDk8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PFlERnrDk0VrGhB8InJyLmy4406UHeYhLA60FRqitGO03HjFiu8inbo4jIfw?=
 =?us-ascii?Q?ROEKa4AVErbK/DCUjBqqZQUO/ZqURSBsPB42SnLoiMGMNBCWC1npJDSxjT2W?=
 =?us-ascii?Q?ZAlWEPWuENpmVi8L3+ekDB4YBMwFW+OwtLkfb+7OkMgC2zh7AeMA1Eil9YZT?=
 =?us-ascii?Q?GLk39/Wa5q6sxchQ7q0CjmQwI8XM62h9mfTJbrrdPzKEISlbDVCdNjRtBWII?=
 =?us-ascii?Q?I1LkhhGKrSvoujXcDg1o3RpUNxrgIsOQr97hnx7VNiWxKIwIAunSKGqeNhll?=
 =?us-ascii?Q?pESb6DuoxEt2RyZCq29nzFOTa8+l7P2CZ1FmWaBc46JiLjQ//rxu0/RBUn4N?=
 =?us-ascii?Q?LMwlNbGfAbwBoefIUOq+zZrD0ERbYIgrGK4l7t0DtaHsKv+D2G4pU41vD/iu?=
 =?us-ascii?Q?pl/n1IuobvoQhWbk5nwMWAjBBXafDqyL4mICiu3gVhTwbCct0YEV/oj58kb1?=
 =?us-ascii?Q?8xIxxu8ZPhGIOVd2Bf9gV8lNRqvyYJ4+bGIgEp2UHRcnRx0eqMeTaLrSEPzo?=
 =?us-ascii?Q?5d77T0QeTilSm2oMQYCc4iMw8wRo8jq7mS5ubQ8oeT6Cv9pwjU884KqLVT/r?=
 =?us-ascii?Q?dClvHrB2ueUGlUb/4+XURLtaiAgITAkhIXN4SMainXMJr/gTCQ4C//UFVD4v?=
 =?us-ascii?Q?Darx8d8RpFh90lt3HW+PK5L6kNpdSXcBHLRDbEwHwZNH/tEM789YV1xmwvD1?=
 =?us-ascii?Q?rXdqUlpo8hVmgSD4CmcDEMqDVNjWZcW+XRDJ/6kWyFleoN22lKpCmhGrtrdN?=
 =?us-ascii?Q?vaywzb7Yyl/tc/bsE2hiTPbJ5A+YYeZF7iWLAsKSEYJMe3G+S6OZoSmj72r0?=
 =?us-ascii?Q?BphLMHpnK2gfB9WNBg5gsBXiMnM0znrSuuwueAVjhNyliQvFHae5uNnkZst6?=
 =?us-ascii?Q?F2oSwCRebDvoQhnIsFetFDqkx1zVeWBTz2Ibb0nW2/ygWsEQphXdJv4Av3Rn?=
 =?us-ascii?Q?MuvlzjkfPU/p3I+J2gYC4z/CiZYhc0brqBdQljwlW0FRVIMfiOA3/+ofLzha?=
 =?us-ascii?Q?iaNqPBg8TvQDtCLQdc0ECJyoHIWYEJNAhtKmbMxPgeS9fQ5yn1ad+5L24H0h?=
 =?us-ascii?Q?Jf5fGomXVPoqnMbsWJQXwYwwGDSDLgDvpBhAnC0UwdgcJbdp85xA8MicTCn/?=
 =?us-ascii?Q?hZnJ2ZgUC/ukeOpgG5V48zqeSd1FUwRPBHkTnFCjX5avvs5vQkhvA8EXRo0+?=
 =?us-ascii?Q?vJQWRVjIEko42OEcyeQZIJzt1DUoTI3yDzddcpsUYYSKfVknpGKWx66rONTC?=
 =?us-ascii?Q?X603XR089/XbXqclb0n/7o+B2fUYwDfyryV1XrMLh12AG0DWfEg4zzzr5lRv?=
 =?us-ascii?Q?apIDlexvQyXgpu2BlKMsh+A7S6QfnsrYE1lbIAB/KShQwCLIIZv92GzWd+N9?=
 =?us-ascii?Q?Y/FtujMe4PuMkBTAhJj7aANWoPUoBlC7DFpw8xUyrCEgsLrczDhS2HAu6I6T?=
 =?us-ascii?Q?NHLs+VZcu96Cs4aQRdwMT2NwYeC7qrLVla6JDzCuzVoO1eL7Yg/O7bWCQAfK?=
 =?us-ascii?Q?iGcKResW65q/vCHWrRhkr+596exQBmEzVvq+Z6dzR1rYL8qrPlZGBz39YD/6?=
 =?us-ascii?Q?cr3wcZI0bG/lJdx3KkBVZzmUg/eXWdqdQnIslQgQNSb7iNj7TfLzKKz7A/a5?=
 =?us-ascii?Q?t9+9Iw/RKKrMP3QljdjjfMkVqm4ROjgy07f3M3mIS8sewhpxdunl1EIWrIj0?=
 =?us-ascii?Q?/Q1Zd0Pc4xXM4yNuNeyEbKgbUu1BgfP5hJxu4lwTGmi9Ygn3Nx/6TKWY5J2E?=
 =?us-ascii?Q?wm8HTMBj6g=3D=3D?=
X-Exchange-RoutingPolicyChecked: cqViJ7BnAK0CodkLu5F1agF5ugKnXmff5KwXDaCmolb7X1eTdNlUyjWm0m88HVLxfDhvoWXOSHOBuCEFRLG3AtKZjHrYUW9OToh0WBu+mL0tWKnLALKMffk59rdXdmiaw1OM/xY6YZ5gPjMpmBkAYb0cVN4Ap/hwBtWJm2kJ63ySUjRdNHT5pKEDlLytb4QRYasesXJY/L+0DHOH4DA7AQwi2yw4DRVv0+ogFD6SU5a8bFt6lkj/9dqrnsFtDNmJWX7uTdmz8l18WAYHWKZWHv/1rru9ajkvKfd82xsizO7ZR92eQ+muMeljkBOQbha5h0BJ0zxXfOIjTPh+krpiRA==
X-MS-Exchange-CrossTenant-Network-Message-Id: e5cd6e0b-7024-48aa-54bc-08dea5254c8e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:35.1920 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2/b8kHwIcEzKQsWUJ831Po/uDJ/oM12xWB8W8iB4RAbMx5shdPdDg1U7gNdw5eRzqNo4RAffz3NOcU8Ugp2i9w==
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
X-Rspamd-Queue-Id: 018D24854ED
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

Factor out a helper that looks up a link configuration by index.
This provides the rate and lane count directly, avoiding the
indirect conversion via the packed config entry.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 43 ++++++++++++-------
 1 file changed, 27 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index bd0a7a44279a3..f17e30e84901b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -285,13 +285,28 @@ static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_ent
 	return 1 << lc->lane_count_exp;
 }
 
-static void
-to_intel_dp_link_config(struct intel_dp_link_caps *link_caps,
-			const struct intel_dp_link_config_entry *lc,
-			struct intel_dp_link_config *config)
+static int link_config_idx_to_rate(const struct intel_dp_link_caps_config_table *table,
+				   int config_idx)
 {
-	config->rate = intel_dp_link_config_rate(&link_caps->config_table, lc);
-	config->lane_count = intel_dp_link_config_lane_count(lc);
+	const struct intel_dp_link_config_entry *lc = &table->configs[config_idx];
+
+	return intel_dp_link_config_rate(table, lc);
+}
+
+static int link_config_idx_to_lane_count(const struct intel_dp_link_caps_config_table *table,
+					 int config_idx)
+{
+	const struct intel_dp_link_config_entry *lc = &table->configs[config_idx];
+
+	return intel_dp_link_config_lane_count(lc);
+}
+
+static void
+to_intel_dp_link_config(const struct intel_dp_link_caps_config_table *table,
+			int config_idx, struct intel_dp_link_config *config)
+{
+	config->rate = link_config_idx_to_rate(table, config_idx);
+	config->lane_count = link_config_idx_to_lane_count(table, config_idx);
 }
 
 static u32 calc_allowed_config_mask(struct intel_dp_link_caps *link_caps,
@@ -305,12 +320,10 @@ static u32 calc_allowed_config_mask(struct intel_dp_link_caps *link_caps,
 	int config_idx;
 
 	for (config_idx = 0; config_idx < table->num_configs; config_idx++) {
-		const struct intel_dp_link_config_entry *lc = &table->configs[config_idx];
-
 		if (BIT(config_idx) & disabled_config_mask)
 			continue;
 
-		to_intel_dp_link_config(link_caps, lc, &config);
+		to_intel_dp_link_config(table, config_idx, &config);
 
 		if (forced_params->rate &&
 		    forced_params->rate != config.rate)
@@ -398,12 +411,10 @@ static void compute_max_link_limits(struct intel_dp_link_caps *link_caps,
 	int config_idx;
 
 	for (config_idx = 0; config_idx < table->num_configs; config_idx++) {
-		const struct intel_dp_link_config_entry *lc = &table->configs[config_idx];
-
 		if (!(BIT(config_idx) & allowed_mask))
 			continue;
 
-		to_intel_dp_link_config(link_caps, lc, &link_config);
+		to_intel_dp_link_config(table, config_idx, &link_config);
 
 		max_config.rate = max(max_config.rate,
 				      link_config.rate);
@@ -712,15 +723,15 @@ void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
 	struct intel_display *display = to_intel_display(link_caps->dp);
 	const struct intel_dp_link_caps_config_table *table =
 		&link_caps->config_table;
-	const struct intel_dp_link_config_entry *lc;
+	struct intel_dp_link_config config;
 
 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= table->num_configs))
 		idx = 0;
 
-	lc = &table->configs[idx];
+	to_intel_dp_link_config(table, idx, &config);
 
-	*link_rate = intel_dp_link_config_rate(&link_caps->config_table, lc);
-	*lane_count = intel_dp_link_config_lane_count(lc);
+	*link_rate = config.rate;
+	*lane_count = config.lane_count;
 }
 
 int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
-- 
2.49.1

