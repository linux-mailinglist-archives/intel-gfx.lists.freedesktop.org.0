Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MLLK1ZTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 627BE61C9F6
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641CC1130E4;
	Mon,  1 Jun 2026 09:39:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kpkTRc2h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABDE91130C8;
 Mon,  1 Jun 2026 09:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306770; x=1811842770;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=rQ7xbh6y/8lv3DcVmAXjcpymfrBAE07rVAuqlbku4S4=;
 b=kpkTRc2h2gMHv9oyhtRSKA5RfUz2yIZ0sedKnOY+uRhJNw0V5sun/6YT
 A3A8MRzvmta8e6Mvnc6CpvGsVJVwcMENmf+rAwB4BxSrBwqwy6Pm3OprN
 BOOh4xfUYVpepkMv1sGrYWlzB6rIeDFL2DohDfzYUrIIwqKjH5TvrbXdd
 xtz3U3XphfWgAiksyj553eAwMBk+YsloSxc5a880wcSQFWWjMdX3tOSA8
 zjDFqKWbnGtel+Sid7lNgyECsz6MDv8Uy8ICERENJ86k2wj44TPI1BAC1
 Yk5aK7LwQuEma/E68uCeyh4DPCXtaI3VD4H3eAKAbA49cctqzK/ki8SrD g==;
X-CSE-ConnectionGUID: vD3jS22QTyq1sUKzQrJ4uw==
X-CSE-MsgGUID: +MngwVR4QGKEBJP0MZWYgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80200603"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80200603"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:30 -0700
X-CSE-ConnectionGUID: k8y8FhcBQ6mATB14ZOvk/A==
X-CSE-MsgGUID: j97WWFGgQPWqsuAhXZwHiQ==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:30 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:30 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o5DO2jglDSmdzfGnAS+ShuOxKj1KtAHC54tLV0AbLyEywYyDIAxQDg3pmfyyRKhZddttSD9rQh4kGzQ6Cb5/2cmky+8hbU2fOSg/uYtkrfbqK9yrZvYy8THLIlsD+qQiPNGgoYO6Kvv4uzU8JhM5pDRtczn7HKZU/jayU49noeZMO9s6zyIOHH+6VlPBq3U41Y3YTr0vOT0FwnzdAODl99X6nujMI8LGnUUtNtMg2dhxybLywURpoMz8cBwYmTp5aGsww8Id8uvn5wZMqnXYT1/2Wf037UKgmu6j/V8KZfb+rDTowqFFdNnI3iFRuPYtD03SriEERcxKADXjWoQD7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XW2kRb9LbY6jsPszDNf/AADFtnWimLU4cx2RCigyyEo=;
 b=MSvylZtL5MdCsuIHel4W5CauvbALTYU2+phikkH/w/io0shl5luX7VsmOh8Ja/m2UnzMnPuk3IoWjNr6G5u7BNX6tEdqq/PnuaW4q/U8m1WsPUQsPpo3KcHMldAOyiKgRO53DwmV6Ngibmzd74pjr1Me0kanwc+VLxGGZpgGubjisUAzmiqL8oZ8ywVxxhCNDNr1TNZDhjDNlDzIqpM85dGMKEf7lxMx/tcSO2AEmzkirCRQDCmHYRP53A/CE9K0LNLmgPk66BlGLNOkqC+ssl6FM/UXH2TOfw3jJ9wmkiwyBKKoAuw06eq40g9JRQ3hSrbnw/ojRJCGZnim8KKlqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:22 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:22 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 21/22] drm/i915/dp_link_training: Fix kernel-doc of
 intel_dp_init_lttpr_and_dprx_caps()
Date: Mon, 1 Jun 2026 12:38:34 +0300
Message-ID: <20260601093836.3057345-22-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a4f7f23-a6a2-4776-e425-08debfc1a951
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|6133799003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 136pazsQ6xH2gFY/YcyJ6GvkJCTAIYYtGcyGcSTV7Crz7C5Yi9HXvJz0bK21bCKL36g4FJOfrqd6ltmWrUPyRjNCfKIBDwEQjaOylXjJoefOGJfQrhCJFPRbjVeY8hhrpuGFuGr7DA3FZ4Y9EIxIlGG1YVy83nSrjWY4fg3fpHfCeyp6Q4iJij/vJH4hPI55tHvNGpqY0rXg8YUYEVXxfqSE3J+cZtcumQYF9tapl5jCx1wuRx4KOS66x/MN2qgkJqmTG5Owop7jvUgXEFdFzL+PztxRMpszfk9l+T6pFyjhK1awUPf9d7+VvHMbJdZxkvFlSsk9xCDzeCpHC0JnZ62JgkECEsPQBJg2nCJa6Iw7pu/SHAbOzY4u41Vzt4J57un13bAWKCMD2aUZn4MFw2mJwjB+oqU/el9YQon3cs7PaZ6uktDgc4GxVRbwQq3WE+pXhGbF9vJKn5b6CAotmysDtXu0VjweytVfr2ffCcKuvJmgYFZJV+ojSwatrAwJp4rP8pG+8FPMBFTrltf2DAjZOG7ccPXf/OFekxHoY2OPzjpkNECz8dXWFtsinARhiOuM28chXEtih9COEtDXqR21EK1btKhvBrMYwiIfo+TKAL+XVK168vk4MQK2j8iIxRZ7JAT1/M0DHFqVR4YpKf6OmAmKocVK1OAo0Htwu/n54T591pLI7YqEB3Pv4Xuu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7qZ51wrkfDYGTH1czN3DZUOMaSJ9gY+ATrCPpTHjCibe5HC8wj043//FDZ6w?=
 =?us-ascii?Q?x+0qh0qfM4W4kcuH7LcGmX0nY1rNm7Bvu1+jNXYLl65NXHweH/qktLiRMUG7?=
 =?us-ascii?Q?oCOcNaZeF+RaFAEKJJOTF4E/3aNeXK448OOWAMUytrGB86PM7tfGB+rji7Xy?=
 =?us-ascii?Q?tz9E4QG/Y9RaRHleLcXXO73b2Mw1D2fgvi8gnxQw5OwdyrqlP09ZqDQE9vgF?=
 =?us-ascii?Q?n9J8AXq6z+Kw20ECpF/+tWAPKwwVEjakxbhjMFJRRtUa3tsInM3vh4gEofiC?=
 =?us-ascii?Q?+a9dUTA4NDjzMfRyx4SY6xZbd0lMLCKzwIdjGvE5GcTZo4Oqh4B9E0RBq4Fe?=
 =?us-ascii?Q?RzEGYWRahMfeb2D0pKdgHtJtSy3QrdTvEJS/u7wTeqYcocFqvdhPzQmkSIt7?=
 =?us-ascii?Q?wkLhw51dzaOBUfjZ9a6c+Kqkw3NnhvlK80rxHwxPs3wGrfGkbJOqHzufXGME?=
 =?us-ascii?Q?b0OZkbzaG4Wq217rWlNb4HR5bTNuyGhrt8uYVmVMbxBbgaECkQjDZbU+1mG/?=
 =?us-ascii?Q?taa76ODswT6319cg9w9NLBXF0uN3h+aYfbIMj+j8AqgKsqYv3NswGKYQKUy9?=
 =?us-ascii?Q?jkdeeUvdjpnqWpSq+Is+hYM+NBUB6Ly6SFw03Qs90Tp+8DOI6PEmaXfgUdz0?=
 =?us-ascii?Q?gLwKr+WPPpVoCTw6W5fBBNrBrhornHMKnyEEP/DTd9pDZM2jSHjTp1/MOEoT?=
 =?us-ascii?Q?ffka+IYuZS8VMZ2GUpMM2PeRLQlOjiiPfT28g75+ovF6P1Og7QxaBVoq7mYc?=
 =?us-ascii?Q?kWvgtIDFoR2+Rnf0VD4OT3AW39Eqt3VyIEbKFOlehqARK2RITtIe28el2Qji?=
 =?us-ascii?Q?nf9WEXmluSG7d2ArUIMkFNBpsJzQM43tlV04zTbLiQ9GVxJBm+8CuKA2wNdk?=
 =?us-ascii?Q?aLEn99EciXN7YU/maKqkiaRE3LYmHqWOsKUHd5MTgC50d5UFQ1KFyEwO7yUx?=
 =?us-ascii?Q?fCGZC30DgYjdgHZqf1gDVhybWPOEcl1ebxFqUoZfbdrrWMxaEZ7hIxMMalYF?=
 =?us-ascii?Q?/Dd8A2fluU9Jh2UC8qI+bm+6l4n/ELopBJvAADYOUrbI0dMqfdVd5RBxOGge?=
 =?us-ascii?Q?jGbsQRm/fJJUlaYuGkZP/GJyRfkgHw9OamL+8g0jkCpIL7zgs0ADl6Tph5UT?=
 =?us-ascii?Q?LM/1FruBhNOPip3OzTfxXQ7zOEXOpC5uYhbRFiUsmMIhsgMq4nCAqEOoFN5h?=
 =?us-ascii?Q?ks6XQu9lJ73da9KT8KF/dDvqav/XfrQsDHEoc8NH5TJcKcT8k40Tzv4KaVub?=
 =?us-ascii?Q?3p6pbaqJ0VTqz+x/Jm6AutD22jt2CSl5MHN0wXYFq7oj4UlV3Kv4cLqfKGuW?=
 =?us-ascii?Q?N3248fGTrpULpvMXTfg3l861DPcKSalsRwnOOtsfTfyZErvsQUWktBVAj5FW?=
 =?us-ascii?Q?NMgoTwqDz3ah54PtN5AkSoxOh1V5SjHFlT6LuEkPT7pM6c81JEhU2SHZ7qtr?=
 =?us-ascii?Q?KjjvVmHByWU2E9u0wnfB6KNU//NEDmWCkwmjvyGPeGy7oUHzC1lpHlGsxk9e?=
 =?us-ascii?Q?x9p+KtHXzrIuCysoZzmUVHQmfsccSuZp+9sMGFiGChocf1R59ikdkkYSCQkq?=
 =?us-ascii?Q?9rzXznd8dK40C2ROV2YfTIL1lS4iJ2vv48t7tnlvKGc2SQhoJS0ddgMvqXGW?=
 =?us-ascii?Q?mUawP/rkqdLz7bnpB79JbFNdmElg0uy+EYZ2sduWLYhHDez9fdQ2YMEjGeiv?=
 =?us-ascii?Q?5TjLTvkVE3rU51kjVteLKfbayuE3x48V4kL+YbjPqhWfDZcbER3a5leUm3SE?=
 =?us-ascii?Q?1CNjHeG7ww=3D=3D?=
X-Exchange-RoutingPolicyChecked: MziEtvLulkA8FlP/g9sinuB/0bG9oZDbKPvzaOWubEce0cumsoAdlIN28IgDcfLcUVhqwMLJ7TcTKk2SdfTemghaK++DBMv5DETKPNIg7IkDiA6NKCe/X8sDuJ3AhKTvgyLhVr7w9/JVJE3O2leM01dF7cz7Cgktn3zDVl9pxW+8Tj0jENYNjwxWGKLES+RvRUsbez6xjgto5NwweDJCLxdqPIQoDfr2QC0yCWl0Yl+lShZrrYzSz22DXqNCTNtAblWx/eTOXg9Je7hk36Iiz3terjQuBPNkqT1qlPedbnDXYLQOZhijVMrNzHjnNCe1JNuEckdayv/aWLHI9QXwTQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a4f7f23-a6a2-4776-e425-08debfc1a951
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:22.5166 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /pRkzhoGS9Fc39qIlSUVBmWznAIocsgYH1C2jcwZkR/diw/4ixEwG+8Mwz9T8vbVNj2aORXqaAwLPOKdSSyjfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
X-Rspamd-Queue-Id: 627BE61C9F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Fix the list formatting of return values in intel_dp_read_dprx_caps()'s
kernel-doc.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 77e7beb65cdd5..db7b47665cb76 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -312,12 +312,12 @@ int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_S
  * transparent mode link training mode.
  *
  * Returns:
- *   >0  if LTTPRs were detected and the non-transparent LT mode was set. The
+ * - >0  if LTTPRs were detected and the non-transparent LT mode was
+ *       set. The DPRX capabilities are read out.
+ * -  0  if no LTTPRs or more than 8 LTTPRs were detected or in case of
+ *       a detection failure and the transparent LT mode was set. The
  *       DPRX capabilities are read out.
- *    0  if no LTTPRs or more than 8 LTTPRs were detected or in case of a
- *       detection failure and the transparent LT mode was set. The DPRX
- *       capabilities are read out.
- *   <0  Reading out the DPRX capabilities failed.
+ * - <0  Reading out the DPRX capabilities failed.
  */
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
 {
-- 
2.49.1

