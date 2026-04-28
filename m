Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QL8TKRWu8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9BF4853EB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC5710EC20;
	Tue, 28 Apr 2026 12:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hp3ZlB5d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3462C10EBF7;
 Tue, 28 Apr 2026 12:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380871; x=1808916871;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=BEU5bJhYak0SpcxkPw9sVIdI0ck+KR12m3f7/Fph4tA=;
 b=hp3ZlB5dnXCMXCbxXe1Ds2lygeA+hccoO13kAAd3ctFRB/3f44NNDcCM
 KSAiJJcRspXz/hkjSmGEssPKcY3i8flOIjVJExXPpz8GyR8UJAsSLZbhB
 anvkXoyNA68+rdwbuq90fm98O9ifKorsd+qnMBR+TTB3tsKVqrNkbHehP
 Bo1tjAOGK7t+imP7AweX/S2D/PWpVnIe3EFwo2jJBXy4V9qBsC3MaFizb
 E/bBej1Wn5NZo1QvqlNFXfn1rP2tFLBhchQ+1YXXVa9ur4fohrHLvweMw
 WR2L+oI9uhmlHrDIXMsoOnG+cLkb6+f/Y3/fp4IN0a1dIWP29qj6/n3uH Q==;
X-CSE-ConnectionGUID: qmamgs8WRqKs/Xi306TVfQ==
X-CSE-MsgGUID: wG4si5+YSQ2asD8t2PiVlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893781"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893781"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:30 -0700
X-CSE-ConnectionGUID: OW4x5PAGR/aqLD0ANpWmnA==
X-CSE-MsgGUID: AgWQ7aTCT6uqLBovx28nYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083515"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:29 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z/hwVC3MH/+sITSyZbvdWL0nn7lZ29Narkd9V/uIzvqekQXLZxf23vbi87iMHbwXbtT5//ZbTgs985AcH7/fZ3vGRFh8V0YSb8JF9zdZC86nGz2Bq7DciJo2jKe1yvH+yaRC1ENDJp4KJhBmc27HSJ7P/I0kCwjGNEeipFa9Z1d+WiNvSkmXLhWPq/xeTP3292G0LYtbHBsnWmnUNjLj6qN/HunlX/qaxvd7uRG4yg+8BQQi2bWSTB0qprUyszkIs68mN8lDBt4uwHLaHnujhzGIfskqiJj1RHFIngBNXOwCtIiBieZp/bmASddTHByZCmgV7cTmYfFy+MhIcACu+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8oe+GHyodBqyi+QYqrG9Xj2vJBpa13nX0QLPjj7sb40=;
 b=EBGtnZ7NId8PCU9nbUc945ti04p/C5293OZL2E1+9ou3M148d815jKSQVB4omlN97Q1LP10qZPZxRkEC0sevmb1BoYrBOzmPCYC0dMA3l3dSfR0zIGUiHhZ2y9RX9Z4WVz+pcqYks7mOw1u5anIrSMmAmfIlTF7nW4AIW5rXbCIOA0HAm4JUezlZRqw10JlNLqXoI0aPAn7b+oGAhq/nqnRmtf3K9XJdFXLP7OhWYxe2VgRWBOrFxWyWFvXOtkfmdDNCMN5xMHKL+AsKA3FQyIrY81z52J126Ydp5kr9IsvgSU+uGuhgSpn3xyDUMWZqJHyQKiF+nCufbFr+sQqgzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:21 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 045/108] drm/i915/dp_link_caps: Track max common lane count in
 link_caps
Date: Tue, 28 Apr 2026 15:51:26 +0300
Message-ID: <20260428125233.1664668-46-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 85cd638e-24dc-4f75-5dcd-08dea5253469
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: OmMPngA1HiB9f5TpZXRJXxRIhJ6/ggvaHm+vU7WSinmKINJILRzAd9Ch2l4UdpS5EBwphVd6hWKnfyb/3pCE/Qa6GLRLAoASHbwq719hKT942YDaJV3foc2lkG/E2H9BnrWkSgmfXrK/lBANCd/yRixwdV9pr/7Aukn6Lq+UZfbDFlKqQlFOp5DLXtZzQS4UMuKLOJJP6jlZOlvazIv5/NHNjl/DeWg/5cKM4K5xlh+Rqw8uCWCmaT3y6ynRhT+rzwN6lZdSbx7yLmzuqRT4VwGApR1ZaqZpxOiBc0azbF5l/+R+0ekJO720rRG3oVJKqBJku0kuuoPdEO6w5sipOg7KdrNEB0WkpDqWb4yixmb+lgQ/ry2z85a5LhTR6ZzJ57RY/r5L/LRSVbzKNUmQxShCXvAAqgxa26BRpyXZTrzJ5448QnTWYRljFRMvGQCWM4OXHT6KX2mVqRVMOMJbd3gIG8XlTPHB7FlXIngUAk0LVAecKPJVyQFAAUYEvcvKZpdSkm6QT5RXYxf7rCkFr4mWFPDiaI0S2ryY0Bm4lubtQn3u9u/S4wRoT2BDXy6AZO5xilw6dS08O5/dq7H1N/LP+0PMaCr5jpml/+vgBisrWcff2khogBvQhQzyAUkTB+W7wWLlxu2AsdYYiwrZ5WBGnNXUKuO8nXLYsHnvBmoG1RkihkRz9Iu+OE9WMvdxy+FGJap7iEDCET0G5vxfJKa825s4uAcQuGnKO7ruIhI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z/+jYf5lafVQOtGqYoPGm1hpBW+GW18xHkC9DBu39tkoOXmC8sT2J2XGCf1c?=
 =?us-ascii?Q?AiUGodmuBqyd9gasejSwLhNDaNBKAvmoUCnWed1LY4OBEhys4rKdo8seGhe0?=
 =?us-ascii?Q?iEG2r6S28HkK+5+yiDWozi+alLEuhtenENaGwvjTFdNsumIfc8Hvuomuvgn5?=
 =?us-ascii?Q?vDI/RavYYdyb8PrgXRat3n/aabq1CfCRn/zmKOGsbzcvjPKa5s+nhe43977h?=
 =?us-ascii?Q?UpM5k0l3T0+kZUe+qOQ02qvKFx+O/rYmJMagLoZoAQP49YsUTyaGgQBi056b?=
 =?us-ascii?Q?c7bK2ntbvWSHCAozadUvbUWuEMDJMFu0XtgcxEtIRe8Wkkqn6HNI+P1vtO8D?=
 =?us-ascii?Q?4sUR2e8LfXcCtIzYIAnOLQ8p4YPLB8B1u05npbTg7pUTVsY2UkTCpCRLythk?=
 =?us-ascii?Q?PrFFyEx+/j3Xwh9KYMGCLIZpOGMMcGq9XQKpD0Ej8L8drXqNIH7NxIUGItoO?=
 =?us-ascii?Q?mdVF1Mjr3fu8M5W4mUId3jeHlhedRzknAMJLT0dsr3s/xkk1zoxEUGGMM9xp?=
 =?us-ascii?Q?ke0fTo3y5GIZNL6t3mkpDx2LYxR95pOAZEoPiT3wTMnG2g/zbK6Ha3m0PnA1?=
 =?us-ascii?Q?1c7+XTUse5U3zg3859LfHrkqlb9ymHjUEBNGyyhAz9QRiTdLhi8fOE6YWGwa?=
 =?us-ascii?Q?rRCBVy4g7XXcCPjjIAhkeZ++u99IdJnNk13pgM2YWlWZjiqZsFZxUmpkP5s+?=
 =?us-ascii?Q?CuIX90Jkog+5AdSTOQHLlLAIa08EV3KAbP+Ndq/aQ13UbMqEVFbtxehIDv/h?=
 =?us-ascii?Q?saUEG21cVaBhx7LzJAevgNkxCduzofnMm14Kau8O6KpX/f5yxDJip1yo6UBG?=
 =?us-ascii?Q?EGjxRWU65fdsfdZ0AXSbpqwZMRv3oX2X6sLWzvBHy5VYal8ZKXA+eTOwxy9K?=
 =?us-ascii?Q?/CMABerGQOIwdmmRsZnIAItHdH4etaWWTTm2Bz85FR4+inapCEG5IR625sMS?=
 =?us-ascii?Q?pfA8OV1zxsD1iEFYF36PyXqiH9LhLYuNxcnK9ehw07QQSj75tA6AmgHxF1fb?=
 =?us-ascii?Q?aRcAQGWbUkCJ0E3vOr6drzkheeVwOoEnBL8kmBPBiq1SabrU1RydZ0f3p38I?=
 =?us-ascii?Q?VDc6MDQ1lzehlA4B7Qkjt8k7gZZ8032LrpzHp4oUvFZ0eY2IoczfAes+eFND?=
 =?us-ascii?Q?V6bdryYi6fNrid5i7AU80N+mnaUu8f1xIsmHfNg7oH8Cndiv+UWRoyxy1a1n?=
 =?us-ascii?Q?GW3/VM3Uka+Fcm53p2Ei9cRDIKtdHHkGrl9SwWnNGXnGuhY4xIRLUgkRESOG?=
 =?us-ascii?Q?ob4Dxk+JgW25NCv1KlkBS/5cNu9yLcQJQEZRCX0EKgwVcPXqtrkwVmtuqRJG?=
 =?us-ascii?Q?iecidSOBl3kTFlvfTf+extK4JyE/Qd4wvmG4h3ZlVZPmZ0KlLP2B5X/EEMk4?=
 =?us-ascii?Q?lil0/C9IsLpvd3yY5F9kwJexADkYy8d9K4tfQo0xRX8bAJR9YgcFerCycM3h?=
 =?us-ascii?Q?agdzFm1OiQ0JRpCNXfKrmUJgZmRASw25a+1HbAvA8HMQAYV4Wn5H1gbFYi4C?=
 =?us-ascii?Q?Xmt5BFl0cId+5m2vZFL/CGW4TtsRCEonZR6djUkWktc9/7k9ZPFmmpnhL5LX?=
 =?us-ascii?Q?f9ZJOMUC+9gAj11bZzK0YeilCeBewfnRXLQBH6OyM6d0rvUT3lOej0mqOPxq?=
 =?us-ascii?Q?TIjHha4lDAIAWPeNTu2LxshEo5a8plkN7AMfA9blyzVTvWAKcSVQHHgtkoUd?=
 =?us-ascii?Q?eSyQ151wIAubT/+j9CSX/j1qvJSYIazBICJMT+5Pbna9VJg+cvAhQcu7wOzE?=
 =?us-ascii?Q?7dzgY6KjNQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: sIinAsaa5M62HZM8vVjte4DJJ2fOjL8MPbbkAiifkf+pA1zPl/8NJ6/le4fVBXwHt01nD9e+0G5QZGyOeMM+DbZHarOrUaPTgSsEu05SUuJ1N7xk1iBma8fAJszdsa57xOIfkLhj1cMX7HiL6X8TExOQ0mjrE1X9+nFvi+xhd9mfLbZYictQEuzQvWQZBc30uNPz90unanOgYcEbh/ZuqDvHapWAal14RDy68in7xjmv7blI6NvFLuTetsPFzzcvZhGhs6mna1PQlJ2J2boDx0Kaxe33Df3HC4Juv/wpPzcrZe1aXz4/5Z2RHm2RRUSzklxBNjx+mND0jxg+ulZGIg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 85cd638e-24dc-4f75-5dcd-08dea5253469
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:54.6894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UFuWaoZLAFEutfFeu4oaXdfoHq1GHODUKivJJJ7RrigVZ4GeWoC0C7FhliGXoErPracyMOLaaXhaCP8xJwLP0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 4C9BF4853EB
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Pass the maximum common lane count to intel_dp_link_caps_update() and
track it together with the supported link rates. This prepares for
converting all users of intel_dp_max_common_lane_count() to query the
value from the link caps module instead.

This will make these queries use a cached value, similar to the
supported link rates. The cached max lane count value - along with the
rate list - is recomputed on sink capability changes, via RX_CAP_CHANGED
HPD IRQ or long HPD pulse, through intel_dp_detect() and
intel_dp_reset_link_params() respectively, so using a cached value is
ok.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           | 3 ++-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h | 2 +-
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 666bb8e51f59e..ef980ab274e34 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -698,7 +698,8 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 
 	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
 	if (intel_dp_link_caps_update(intel_dp,
-				      common_rates, num_common_rates))
+				      common_rates, num_common_rates,
+				      intel_dp_max_common_lane_count(intel_dp)))
 		link_params_changed = true;
 
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index fc0c100835595..214974658b343 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -24,6 +24,7 @@ struct intel_dp_link_caps {
 	/* Rate, lane count caps common to source and sink. */
 	int num_rates;
 	int rates[DP_MAX_SUPPORTED_RATES];
+	int max_lane_count;
 
 	/* common rate,lane_count configs in bw order */
 	int num_configs;
@@ -208,7 +209,7 @@ static bool current_common_caps_match(struct intel_dp_link_caps *link_caps,
 
 /* Return %true if the supported link parameters have changed. */
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
-			       const int *rates, int num_rates)
+			       const int *rates, int num_rates, int max_lane_count)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -220,13 +221,13 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	int i;
 	int j;
 
-	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
+	if (drm_WARN_ON(display->drm, !is_power_of_2(max_lane_count)))
 		return false;
 
 	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(link_caps->rates)))
 		return false;
 
-	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
+	num_common_lane_configs = ilog2(max_lane_count) + 1;
 
 	if (drm_WARN_ON(display->drm, num_rates * num_common_lane_configs >
 				    ARRAY_SIZE(link_caps->configs)))
@@ -237,6 +238,8 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 
 	memcpy(link_caps->rates, rates, num_rates * sizeof(rates[0]));
 	link_caps->num_rates = num_rates;
+	link_caps->max_lane_count = max_lane_count;
+
 	link_caps->num_configs = num_rates * num_common_lane_configs;
 
 	lc = &link_caps->configs[0];
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 7ec1612a044ed..7a2e383caeef4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -27,7 +27,7 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
-			       const int *rates, int num_rates);
+			       const int *rates, int num_rates, int max_lane_count);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
-- 
2.49.1

