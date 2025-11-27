Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A92A5C8FCD0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE2310E8C0;
	Thu, 27 Nov 2025 17:52:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sh8y6ygS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D94D10E8A3;
 Thu, 27 Nov 2025 17:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265928; x=1795801928;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=qvkazD8eS2SDWLovS5zjDjtjOUv3fdE1fYho+CzRQ7Y=;
 b=Sh8y6ygS4OPGewfMxQAUGP7TbH7oNU/0icPZhnJVNAOIbf8TFnEeWeDb
 rRo2dSbEhqrD3DFrQrwr/NpZ88AqIEy/+BZF1UWNsHDBzj8hMvk85nROW
 2eBCgLC8UPlx0fFFvgbeT9usI9bzJ9iny4N2HuaG3elSc93xkMyawWWsK
 1Xd1q0jWWQCb1ToQhm1jhpLmI1Dujlfcb2uvf4bNIkh3o3LB9c/bzxCmd
 JoZjQ3Tx2DenoEucgzc7WuHLXlfAPahc+HM2FgFtbTGH4klcst+D9HCBC
 F3/fIULCvf1E2nslGN+JuXd2LjhPc8crKy1t3PwnW9O7cBQKNfya4ORRN A==;
X-CSE-ConnectionGUID: wvA9/bs+TfC74bXl0ZPtVw==
X-CSE-MsgGUID: OSUU9CPbSdK6rvRxO+GLsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66276803"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66276803"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:08 -0800
X-CSE-ConnectionGUID: OZ2+18S0Ry26JKxfq+JOfA==
X-CSE-MsgGUID: VM3hxfF3Q/qflxwKJTu9og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="230562137"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:08 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:07 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:07 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mNnlclg+VG6/o6C66n1mmby7jFmvS7Ey9xLhcOb8m61e1Xy3w/GAc3xFnissFEXfj8O7BCHuhtafeRZiBUDocAqnon9fcifIrjFoUOKqg+FHoqC4PN1dwc384b2Amx5nOZeEfc+4i6k+0cBs5gsEbqmp8MFPejRp9+XrJ53HUerm5VQLVAI89IhaTUq7wLKgri8JZCambZTLce8bkJgJoFLogN9ExVuUUFfXs7ALgtFajB+DJYP/9VooFte5u2G6DOqjf3YC75k4qnWalS1j5Vy65DEppVK0XpjtLWR+RyLPfBhxPHUhOOCKoZnQ5nW5rdnX8NwoVwvrQVdggxjsig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o9zVwGKMOuvAOQaRdFpfWYIq4lgI49NGHiGen0oXC0A=;
 b=M/7j6NbyupgkdfOGQJvDbuaFyDfiGpHVhnTV8eQjKhWPotrZvTIw50nVRtRhUJbIcoUjUX7AIMDeBIl/qs0ikG+q2Znw4bAgGH9+wQaicVJ4+1d9qSe40netbMyqdKnAc8C1REhiOO7orm0wZTYbb+K/CMOJ0ZEBflBz6NEouon10PyDd8R7Iryjyyy2JJWdV7ut9lL5zRy3WOzWHA36AdA6MyUcyAJX/ruAj9GfAKkU9jo3gL1atqSYrXRUiOcxlZpkOjUqIC8VGUBLFCsoaMk2e6saDLyFcvzO7OC3fkxv4i/4Ooo6LE93J6DAuxBDAIGXbK4qyAtdQhROcp2kAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB7887.namprd11.prod.outlook.com (2603:10b6:8:e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 17:52:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 47/50] drm/i915/dsi: Use intel_dsc_get_slice_config()
Date: Thu, 27 Nov 2025 19:50:20 +0200
Message-ID: <20251127175023.1522538-48-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB7887:EE_
X-MS-Office365-Filtering-Correlation-Id: d1219686-0b31-4035-794d-08de2ddda37a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QDSW7XgmmU96aXC1qG3pSbalTGK7qK/86BReAu2psAVO2M8clxalOYnW/fhd?=
 =?us-ascii?Q?U4zoa/ihnBMJj0sA7oqpoZvwQ7i0hycWPGlAsbIXIzCQHgE/65jp8454YiC9?=
 =?us-ascii?Q?G+kWuMt2AxbhAUd1Td2abnWRGIGXvUWsb8t4KcpmMidXR2pOx0hOMHWg5+1O?=
 =?us-ascii?Q?zdnvQ2Z6Tiqf9PNO2ygRVGQJSINqF37GEpK3hXAXRPVhE+MxIVYQAPQaqjE+?=
 =?us-ascii?Q?sMB7UqNKYNAxldQUnNatJR0c2H9MbFVkm1RhdSqHSAxYEx7n7oqzZbBhrqq6?=
 =?us-ascii?Q?E+xJGyd+rEnFyhBbujaPToVFTH6of0TJIxYRedkTF9djTD1ZU1yEOpxsOThU?=
 =?us-ascii?Q?YQe96hGZk5dltEkMsBvH7fDHbGYRu0GjCRTzFYAq9Nwuw5CwXdnmGnSdHW58?=
 =?us-ascii?Q?PoUw4DWgMp6pjNNR6eDoGsXQO+KE0KxgmUZSUXUFjf1l8U/WLjbiIvpjFc3M?=
 =?us-ascii?Q?u3LZWyF8RhmdlnOvM7g1Tf3dA6AdrONHYC4cCUqfv4zNmHLqX7oJNrZAQ9nJ?=
 =?us-ascii?Q?aJjhizzcFQsVR0FGjsIVdCzTGkmSnTIazlR6caz3jvAR+nEPZ++BVFsOGv0M?=
 =?us-ascii?Q?cq+cw7DJsUL4Ehj7INoW24e4YZY8kBzgs+LJ6uaZbq63fQtuywX7QV0eki/1?=
 =?us-ascii?Q?4Fu0iWwRRZYygjfvWbQI/0WCzJ239aKN2h64SjrgS7/Dq6GfRtVDIasuEiau?=
 =?us-ascii?Q?Y6VxhVUq6HZw0vgQuryBITchB0HtUYcOM1xwo0DzvT3vRTAymgrap3HQwUtM?=
 =?us-ascii?Q?rEbVCQwoaxqF8wZswOWUxd/V48/e4IB79gW5WzRl9NhYOJ2CjJ1/ykJmdy5P?=
 =?us-ascii?Q?7dHjdIzSTSMQOKnzT4gyhWWRF7fJUwuuay8TVmoebQEIptl/o2WMVSoRjaum?=
 =?us-ascii?Q?9wgQi+jtUM0LkygooK5JRT1ej6cNEJRsxAJpXlhKikL4WV07C821aDpMWkaL?=
 =?us-ascii?Q?Y5vVX+BqIHbvHLhI8ELiPGnUCBvhVGaVrazpvLku+IrgOPixamsA844ouJn/?=
 =?us-ascii?Q?RBDksf89fl4FuXa63k+rchX5DQ4mfes9hVhgq8a0WiuVxn3hw2pgBiz7Kx8q?=
 =?us-ascii?Q?hN/D7Txve/vMQ3SPBvZKLaWzr3WfuSxhHxBy6LTBaif4okilXWdFh+woxTqI?=
 =?us-ascii?Q?g2AAGbPcOBIeRiWqJmmfkSTnfGgHjyEqeqFC/AAt7hrap4zSvStG/CrH1ASy?=
 =?us-ascii?Q?T35XFMqiS/FqJ7wiqBjpRM6W013s0mA0lDmkCa6YwQIG44e4dcsgZIeau+5d?=
 =?us-ascii?Q?VzPJZEvT0sNVuQFYahuEdTKrMxph2v1UpCh7t6Kttcmfb7SBeHTkPCwMpS1T?=
 =?us-ascii?Q?oCrurFUYRlhkA6wiQUh4a5ZnQcJJtuE9rVNnBMxapFCg3gWJOyT53TVcWl7i?=
 =?us-ascii?Q?HHk9f+nSBqlvIkWQ+U+d8bv9R+P9prlXDcJ5HGP6IEUYi5LM56YnQjKSU/9p?=
 =?us-ascii?Q?C/7KLE8LC9ApfwaapZx2BVou+7ctqcAC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2wA2OoWTQV9UqwwWpPvRd2eZjEyIYVPw5R8L+pR7LVarIlFEJ2c93eRzg/J5?=
 =?us-ascii?Q?+VQoqkKEB6lqKGWut8C8EL/svslcQlNg+ffMUfrarEsT/AFLKWGVa8SUA4Cm?=
 =?us-ascii?Q?PxNZIN4vWBevVWg5cZ3XWHmHsA6Y66NhEf/6mMc57NLZE+ro+bQNQMqh84U5?=
 =?us-ascii?Q?bwpw0N/Ol3CiCDD925nO8Nbv92PKQPH+bajKDL4WJR4o9Q5Zd/zWzmd6DpQR?=
 =?us-ascii?Q?e3cqtRtOYmU4UnXJPCJlsBf+UdAB3GJSsUwoFjrcUsHU23aHSEmMn18pa9VW?=
 =?us-ascii?Q?7Qu02IXwoN+TfaMSSVQTTCYymgb/AJVz0OMzRrvV/U1Zo1LtfuzA3j9Lhit2?=
 =?us-ascii?Q?hacuRji0q9aidoR6cvtLSOPtQJ0rjcZj/LTgDSRp/y+jkqK1kzu3mEH82CSv?=
 =?us-ascii?Q?9B6nLy+Z3SqgWf/Abn6XvLxhZl7j/ZRPbWSlLwXMVL4qHKZubmnD+dI8WVek?=
 =?us-ascii?Q?89WEReVYXC8csy/hLPQvYAJzQv4SspL7YF0bo9gV+YdeB8oZIQ9I78L6gi2z?=
 =?us-ascii?Q?pvuHU7nEreBx/gpVXuk1qw0b4kflFF+qv8JXnqe8Kx65jkg1JJGAAdOmMh49?=
 =?us-ascii?Q?EiYaU7x6FpyBEIaPXB8SFMWFjUk77p3EfybUJ+Jaa1Varizuu308bYOiWeJx?=
 =?us-ascii?Q?7bGz8FTClpt/5Xlm6S8GthZEEJFqU9VnZPEuh4aCR27mx5B1k3whRXd3fC6J?=
 =?us-ascii?Q?Z0kNFA2hEhIRviYo/poJKRPSFSZB+a2XJMs+Zf1ID+GLc2IPXJlHUsvvxdIh?=
 =?us-ascii?Q?GkKW/JAGfWCyW3lqeHlXm+7gv2EIf3ZbRj5eFfl0aZNWdnz4SMe+n57aQZA1?=
 =?us-ascii?Q?v7eNv/sYIgViVM6IL1y+NcyZT6xvF5TSVJgtC+BWqIpgHyWTxbgkKsSgX/gc?=
 =?us-ascii?Q?DowOItTCkk1BQsOXsrzHsQErZ+x2yvMGQ5BeTHgqBfJY1HoxIJ3Gagdw3hA4?=
 =?us-ascii?Q?tLYPHW+g0VcIaXakNkgpHOq3XyrJP//+tWAxYH5wAyHpmw6EV+h3Ik2Y+Piu?=
 =?us-ascii?Q?UXBIL7IiMUilcMx8Nd/EAMxI1MsYaI8nUvbtRkJHELtFfkzkoD6cZuHRKZ2t?=
 =?us-ascii?Q?iObd2FyIl7oOS9D38ElR+GS3RRNPeQF+jjm9dtXVmBlQbCrnZgfOhg/DZQs5?=
 =?us-ascii?Q?iu/BD7gc7JSJ+bEo+lckWMfoJv9buBehXqsZvplQqEt2MCb39OfTg5+EUK30?=
 =?us-ascii?Q?K/MBqrd5faTjK0Z+8AErKpcWPq2OPTttrlFE5JO1X5+YL8PetdC1WNnJ4+Fm?=
 =?us-ascii?Q?t9ZWYdV2xaGeRQv8PC6phpFMci3Q753C5P9eVyf4TMAifdbwPL3wHmJ/K6cp?=
 =?us-ascii?Q?2V5PSG368mJ8o4Y/PBe8pZKaKejKnkDWSNedmyVhUZi/Oaut3RmcALeRjyHg?=
 =?us-ascii?Q?f/B+wN8rqciQAzotJOkLqAI3AZkKVuU0ZJTIAU9jFM51PgwBX66owZigIk0q?=
 =?us-ascii?Q?NaCJpS9SoltuOCXX/vbIAQUvRdyZG7bi9K+UR6V0LRMBbfTm5yvPqWFhJzWN?=
 =?us-ascii?Q?71BsoECtLziffbHcM3ahKcSM9RoFuxeNOIBksjgaY2NhWd12FdIsVuEosuek?=
 =?us-ascii?Q?cBZH8UdcoapDF0NzmkCCNXd5qVprlYPZQFxx3VPyoM6s1Zlv0uooAEr7eE85?=
 =?us-ascii?Q?1bYk8/Tm4eQN+Qrvr0r1w7x7on5ZFnN4XPYc2gQsyla8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1219686-0b31-4035-794d-08de2ddda37a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:48.9884 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +dechg6ku7DxDGtj18lUj5cyV70lIqm0TXoCXPKpD5kZ3zxF+HhP35+blVXUJ4ScJCV0vL1Ab0rsYjnmFJkF4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7887
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

Use intel_dsc_get_slice_config() for DSI to compute the slice
configuration based on the slices-per-line sink capability, instead of
open-coding the same.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 25 ++++++++++++-----------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 698e569a48e61..a7f02fa518d21 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3486,12 +3486,13 @@ bool intel_bios_is_dsi_present(struct intel_display *display,
 	return false;
 }
 
-static void fill_dsc(struct intel_crtc_state *crtc_state,
+static bool fill_dsc(struct intel_crtc_state *crtc_state,
 		     struct dsc_compression_parameters_entry *dsc,
 		     int dsc_max_bpc)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
+	int slices_per_line;
 	int bpc = 8;
 
 	vdsc_cfg->dsc_version_major = dsc->version_major;
@@ -3520,24 +3521,24 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	 *
 	 * FIXME: split only when necessary
 	 */
-	crtc_state->dsc.slice_config.pipes_per_line = 1;
-
 	if (dsc->slices_per_line & BIT(2)) {
-		crtc_state->dsc.slice_config.streams_per_pipe = 2;
-		crtc_state->dsc.slice_config.slices_per_stream = 2;
+		slices_per_line = 4;
 	} else if (dsc->slices_per_line & BIT(1)) {
-		crtc_state->dsc.slice_config.streams_per_pipe = 2;
-		crtc_state->dsc.slice_config.slices_per_stream = 1;
+		slices_per_line = 2;
 	} else {
 		/* FIXME */
 		if (!(dsc->slices_per_line & BIT(0)))
 			drm_dbg_kms(display->drm,
 				    "VBT: Unsupported DSC slice count for DSI\n");
 
-		crtc_state->dsc.slice_config.streams_per_pipe = 1;
-		crtc_state->dsc.slice_config.slices_per_stream = 1;
+		slices_per_line = 1;
 	}
 
+	if (drm_WARN_ON(display->drm,
+			!intel_dsc_get_slice_config(display, 1, slices_per_line,
+						    &crtc_state->dsc.slice_config)))
+		return false;
+
 	if (crtc_state->hw.adjusted_mode.crtc_hdisplay %
 	    intel_dsc_line_slice_count(&crtc_state->dsc.slice_config) != 0)
 		drm_dbg_kms(display->drm,
@@ -3558,6 +3559,8 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 	vdsc_cfg->block_pred_enable = dsc->block_prediction_enable;
 
 	vdsc_cfg->slice_height = dsc->slice_height;
+
+	return true;
 }
 
 /* FIXME: initially DSI specific */
@@ -3578,9 +3581,7 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			if (!devdata->dsc)
 				return false;
 
-			fill_dsc(crtc_state, devdata->dsc, dsc_max_bpc);
-
-			return true;
+			return fill_dsc(crtc_state, devdata->dsc, dsc_max_bpc);
 		}
 	}
 
-- 
2.49.1

