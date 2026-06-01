Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Iu1L05THWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C0461C9B3
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAE71130CF;
	Mon,  1 Jun 2026 09:39:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fxU9o0q6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC3C1130CE;
 Mon,  1 Jun 2026 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306762; x=1811842762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=JozBkxL2UkV07YHmec+Yf2ePg4C4oC2L3sy1fQQzXv8=;
 b=fxU9o0q6BBI+WDP64fVv48oS6aEg47m21m5FZSuBNrORd3XKaXj9M1Gd
 4DgPnlc0Df/p4F4eHp0/ncWuECr0fwC8k2EFDtsSQ/TspGPlONJUmOdtX
 sHHVZoemi1aWugw8saxQel/BDRH5Aki7kC0Dz+P7F+/HuafhsRk5+SWLR
 jco6v2aL71A2C9eTwWRcGlj5B6KlQqyZvd+CttkpLd0tVd/LwnfcYTGyu
 198c8TJV9sEhd9IzfCZvzMnRJKHPduafZeLJTfY7m9CrJHtPGv0NpaeMq
 M2lvEIjuwTSw0vr44q1yBDySYV9r9O326+DkWMQGapdHsdLqZJBNSLo/+ w==;
X-CSE-ConnectionGUID: nzw85lQkQQyWuvinl17Qkg==
X-CSE-MsgGUID: LN1HIxUIRUC1/UPJ8HC/Aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80200588"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80200588"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:21 -0700
X-CSE-ConnectionGUID: 9DHSC5mTTFmulvqaQ4ySsw==
X-CSE-MsgGUID: KRTS3BsPSg2M3CofOirp1w==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:21 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yE+Q3lH7J8hlFvAE6BfYIo+pHb1JUVfIS5fVXA8QW+GE9cCAz/UKW9xOyyR0+sq3WnPqw2qq5afNevm97lb/GHtrOQGaYPK0JbgA598BAmytg5BSqaBr/gpDLE6lTaMu2/ATMJbfZb1rV7cVNfXiWTiGvebxmbMVVBql//BxHyZkWHXYaoMxi5rC73HtgpkHTDbQIVI1pxyvqaRPEfjbas+/9way2zWC6Py7Qa8PckB/fqBWKGK61GUUJJPaamm4BKvr4hUKlZ2dwI7t0EA0DD73TtlSxEr8N5zLmi5JOTz95wMDdlzRmuxMO8NMixw5LuapeQMCpKO0k2ii8vwj5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7R41k7w+wrI5CYl65v9owIfo1xmZNhJsnex5XCq+K/Y=;
 b=wQ2+4ck1UUzr2/eR3FF1/krvRK+4/RsmCi1RqTcS/fooV15Ceq84PM0LhtM2C68TNrZ9g3Oi/F3eBQd1WOj9vZwVf5ixGFQGU35f4WflsfBJLa3UuE/sy2QiMtEwOdGpjaVO4GvgCq8eCwu3pe+IFflW8GqqgO3UHLXaJSjEOysffZLbYd4MPHQKayr5EMedkhO0bbEXDUBiNeJZc1hXBb611XOqQiVL3KY8K7MIdFKM4g16zy7M1OaZ223hISSSc+93ZMa/QDEDyM8hm82PNE+4hZ6HBFNtrSLdAPI08gLCnToZlzA5hV4WPYM4MrrMxDfdE3uz4RFGPMWlTL+s5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:09 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:09 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 11/22] drm/i915/dp_link_training: Add helper to query
 pending autoretrain
Date: Mon, 1 Jun 2026 12:38:24 +0300
Message-ID: <20260601093836.3057345-12-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: e8b0d6b9-902f-48bf-d4b0-08debfc1a1b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: 1W/LUkvEKaE8t9DuiYl2xpm3m/KfNluWu3wXItqSIw7Zit9pe03BkKj9o3Of1ZoZO+0JfnePaONamX1AhZ/vGwzUG5fXEO/N8gZyK5897DY8+AAj2mx8ZpJVloaVaJZ5rbaqbsnj99oTVq2PGMef59VUIugOgcdju5eB78InBo5h2uCmne1/gW6izgiqKNvu+aVUDOTMmD7jW6yCzmITGrpe6iDYs+31Dx3SujB4anKzllTr4ovZf7FTqx12kXPM8z0sDl5HcF+k1z1cW+1H8xsW4NrYLNkk6cCAUvr1oyvPE0wTYnbV+BHlcIHT7QApNtteCYeY+NdqohK4fl0T3qf4TeompHgSQxTLiMmyTzqlklPjYpj5f0gnWhOAySUSDuxiuFNyWQ8a/Q1suD6CrUfG6mAgwZuguhjTeTYi/6VyOJGnLtjh1y9p+IDAIi5Z8PDEDxA05NZH8lo7zvlUiANV/Xt4TxliIh87Fd6bbJxkERJprAQs8Gqzl1yNnu6BW9dXesV5O2Cs8wkmM+ZePZtNMEXJHwThywBkyjvmWYkO6o67xoNKB90FxZ1FBtEZdvcefkM6spmdBmXmi7R/I50n5Xw5Km6djTNUnc7K6PKD6h5lO+hpuMIjtBsPEkJ5tobu9WhrXaeo6THp1gp92H2CZRz5XitN4antOOYje2/4m6cNaQXgviP2r11MxNgo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/xbtsmwvD3CWwaiobXzBVOLemVlfwAcKX5rccM9DdkbtvMJ15hMk7wCkTX15?=
 =?us-ascii?Q?lvAxSCvouZ1sJXm31YMvdzJzhjrTfERm/jMixQiFlJhP0zo88rx7S5qYyEgj?=
 =?us-ascii?Q?QzGG1HdJQUp3UfaqHmea+1ohGJu4vIijIK4Ag03K2WzdYtHZnBRp3iQmHT10?=
 =?us-ascii?Q?hfGfY1vT0PARA3IXm9fzQGFQjmjEKVo+3zTfkmh+CN+K++HtlghrNdBfHuI3?=
 =?us-ascii?Q?x4syBCxeXzUtD/H7oi+IHHZP2bUbEbx4CQxZ2TVLx2TWOiKG4HDk4GU3GNDl?=
 =?us-ascii?Q?valKkDqnEOTAX081Efxpq46bgjE8/5Ije/J//sGBAqsorZ/cWYE5cau32X5A?=
 =?us-ascii?Q?CMdjaabSEmbJezIBk07CUU3k+zYsUPwH/ilrnDiWbBisQnvFwYLZma1L12Yk?=
 =?us-ascii?Q?038siPRDd2SzrD4/rshGX+In4EIUeTFCli2a6Rdg8m1VAz1ushGIeCOU56BI?=
 =?us-ascii?Q?kv00tZmOcuQ15vgXc9FkrkaQFYnypuPd/GZ5gTRjs38nNKYniMpRc/Zmac3Z?=
 =?us-ascii?Q?aYs+qJdI+H06qC9mF8NOHK7hF5BzL9UFsC0WppsjKyvv00Fz5I8XujNvkAza?=
 =?us-ascii?Q?gAQWLZX2na2rAZXqvV7eTeMQg/GLRsvUq2sjPE5eYrO3FGUSiOWcb4mQsK6N?=
 =?us-ascii?Q?Iy2+8IIMq7rBhwGcrIQD2NTFjEjZqb1rHU9KbpZquwNdO9P+sUK3+YAw4IVc?=
 =?us-ascii?Q?9wKOOse0eKySj7ZzcPfnX8rhjyHG/mOw1WJMLZueFrf6z7nyC2B4RwM/aZQy?=
 =?us-ascii?Q?s0fIqaiRbeycbTrnTmhCoHAamwPZAC7Appj7/49zgP/s0FHSspnYC5H7g/g0?=
 =?us-ascii?Q?Lr369O/fSkG2gav4X1xcci0COiGjHW11Kb+5iRH+7sugdbJv8zk25EbsP2Iv?=
 =?us-ascii?Q?F/VY0wXnL6aJJoX12fJ/Fbo/QeJgxngc1r0DcmMCUWfRsgsDTn8malmL2Zbq?=
 =?us-ascii?Q?I2MY9C8ujxkN8TnwDV+Dtrl1rPy+hUdKUJlsiLJZKkUtiUxjvzSORwQ43Kg9?=
 =?us-ascii?Q?ujntdaZsSbamlAmT0MKmwtZUE+pxUvZa9oDjtK6tMLYDTn/Yo3sWeBQQvqRd?=
 =?us-ascii?Q?VrnfYebRJXk32MENC7iGZsACoi4im3M7zaVlPBnGy1xygMUqfIwoAGoj/CAb?=
 =?us-ascii?Q?VKjdk+VnjDcjgA37vtwGRfQpJ+CTAq5C3FdVa650uWBUe87NaXzIxcKO/1jL?=
 =?us-ascii?Q?c4uNMpNzYjZCCnt01s/IqMKcvNHV1VFPHisP/+u2ei1lJLxLcJWgqBFl02UA?=
 =?us-ascii?Q?b5e/GyTnQxIK4lO8vc5UdM7l6vPS+Dtd5DNSz05kano/0JSgRltnxIHFX4y0?=
 =?us-ascii?Q?sToBIsYY713jP4RH8FoUTc+JlmBumlWxgdExh9kj6RvJ6fMNKgaSyRVk2TZB?=
 =?us-ascii?Q?BCCq4humOWy3iqKULI71SlqtqLIsGveFaF18AiQ/0+KMv3hXhkJFOiJ4j8/J?=
 =?us-ascii?Q?pLA92z7Kn9Ey+j/vsY6OOHr4B41ihZskYfaDUQ4EZQng1ZuhOgxJns46apmD?=
 =?us-ascii?Q?9MzujBWxxexmJevh4O5Mx5lI4UPD2j8Km3TmyxjDAa02a29yw/IQGu5tgCk1?=
 =?us-ascii?Q?5sul4fLb0fR20VSTwlv8xpUuJ5SkUiLn6PatX7XUVIU41rWyjelek+d7m1L9?=
 =?us-ascii?Q?naQhnnYqTEhrMRi03mCCJ25IDJe1UwEHnNPZgjzxE/iNpKOb4gcxBOckZjJX?=
 =?us-ascii?Q?9vmu0wIm2ICrT2khAksiMtaJHhmZZctr7E5wfMVPkM55RuYKedY16rDK6SMf?=
 =?us-ascii?Q?fi2m2MMU3A=3D=3D?=
X-Exchange-RoutingPolicyChecked: sjzo/tZS5jXUKoWHpwLTXSaDWrVQnfA/jmXJir75/2cO1yiyhljMds2Fpe/A9YYy3A2pM1EpK/HYvZPbv+Sz0yrd2rs8M1sxlnF9lD57BSFydthfzW66S13t8Gk23UniDjSI3VHQ8DEXMvYYhXZ+PJhXQ1W+c/wLNgzMElWaAmCw3JJkHYCa1GLbqpKO5glDr1sV1rLmNFjkvs3iXJTieylPf/H65u2tg5Enz0W/TUIMAdgLJXaVFeBBYyedCzm39cPsMjylp6QupDPdZb3JmkWYNA2cFrwdqTEBFq4/D3xUA2PsYx41p7v93VC86En/9V1rbhwjxi2StAxe8CYyew==
X-MS-Exchange-CrossTenant-Network-Message-Id: e8b0d6b9-902f-48bf-d4b0-08debfc1a1b1
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:09.7375 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F2XVPTpAe84Myh8QlHmGNxwkdCUQ6BDD3blwe1MQOpBM9dOCpTHJQvNEQH4vi5zHsX6/Qh0CKkcmB/0jA0Hxhg==
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 74C0461C9B3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add link_recovery_autoretrain_pending() to make it clearer what the
condition is about at its callers: an autoretrain work has been queued.

This also prepares for replacing the sequential link training failure
counter with an enum in a follow-up change.

v2: Remove unnecessary function documentation. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index cbac9a70e8d5b..f6a8102a300c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1264,6 +1264,12 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 	return sink_status & DP_INTRA_HOP_AUX_REPLY_INDICATION ? 1 : 0;
 }
 
+static bool
+link_recovery_autoretrain_pending(struct intel_dp_link_training *link_training)
+{
+	return link_training->seq_train_failures == 1;
+}
+
 /**
  * intel_dp_stop_link_train - stop link training
  * @intel_dp: DP struct
@@ -1305,7 +1311,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 
 	if (!display->hotplug.ignore_long_hpd &&
 	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
-		int delay_ms = link_training->seq_train_failures == 1 ? 0 : 2000;
+		int delay_ms = link_recovery_autoretrain_pending(link_training) ? 0 : 2000;
 
 		intel_encoder_link_check_queue_work(encoder, delay_ms);
 	}
@@ -2006,7 +2012,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
 		return false;
 
-	if (link_training->seq_train_failures == 1)
+	if (link_recovery_autoretrain_pending(link_training))
 		return true;
 
 	/* Retrain if link not ok */
-- 
2.49.1

