Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEVeIG6u8GkfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DC0485640
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A624710ECD4;
	Tue, 28 Apr 2026 12:56:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nhIVOa9q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C64CF10ECC7;
 Tue, 28 Apr 2026 12:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380971; x=1808916971;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ZKOt4bja7iX8VgE8qYnnSrXgjaoM6myRkFdfDGs67gc=;
 b=nhIVOa9qgn7V3A/ZBQtz2+uez7LH5UN9h/22QWd9FknwVngoxMdF2aRS
 KqGD52iPkK9H+MlGTi2t6O7eMURT95U+4WQDEzYm7sELJBIX4mPWacduc
 ku6V23E4KvdXPUAX2LhZj693kxTCezGfNF/FPbCs6dFqkJk8cWPuqWOlZ
 8xUeH4KCvAlCCokU+TORH1vufm/1QRGZjHVrOo8S0dv+fKfQEa0cc1f7c
 PRdd2ckOcg9i2gCKONnClcYMsgCdqToKIKoKAseNN2ujiUDBtSwZgOyl/
 yA6EDT9hlZMafyOdvVHQfGQpV/ey038eIJT42D1So7a8/bkaN3FUlOiOE g==;
X-CSE-ConnectionGUID: 7vZOInVlSnawTN3Rl2g8Eg==
X-CSE-MsgGUID: Z0cfK9WrTEKkIaBruKmLIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883752"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883752"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:11 -0700
X-CSE-ConnectionGUID: IY774KipQDamMC1CN5tZDw==
X-CSE-MsgGUID: G3w0cgRRRo2c8baqL9ctrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795299"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:11 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:10 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:56:10 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iNnp2okGiQX74vAdCt0404DYRxCmpJcMiFxZTByZgzTgsvZBQAAJDV3QsCRJD4ss33E7At500LLNOwJiUYx4VzQo6fKaggEMyDlrD2q8aj/t/iUrldBiQYPcQR6lavQDzSs51bFPcWtEomqYmW4yWS8jTnJC0sU8vJbA4znXMpkMAyplIeM9Q/AbwKlp0AhgQiawVQre5a2FHOOrOx8nV4SvblbbyNtBrypF04LeskjW56yvWHd3h5ABm6ki4+5mDaPEgtooQ0cexAggwdsltu0F1faZiIgqAOtBS34hzVEPZruHjKkdQoe0tW5Gtg3tX8OlG8zKCzeGbdketSc3uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lzqcc5x6/GNUaBn5OwD6AR78cYgSbm08OkHkEPvJGEk=;
 b=VEyCyUs0IMxaxnrnVgQZwgy7uQWxvblecqhALQrvBRUhZTSB0DDsRY9PBpMSkMFRk0YPKWH5yA8GQbqSM4TS0/xBMLIx5Zv8zRt34nR4Ium21CVGGnPUtoW42r+FmjDtaWcKYI1t2AsfqYfZw7cgAk9MJ+7B2Wg3d4KWPtrTXCpN74DpT42ku9ssUiHhKPBjiNbxyMhhQoEFTkRZazZ/l6w3ltKokrHibx/H1F49w4Da1keE1sXSE18lVn0AZGSKblJXqbn8UUj3juI9liq2A2iC6aE8hz07iNSjLq/RKIZ9eNymIBgpOsHzy3+PwL8AM6Bqo8l83hIjYo5byHWtBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:56:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:56:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 108/108] drm/i915/kunit: DP link: add fallback tests
Date: Tue, 28 Apr 2026 15:52:29 +0300
Message-ID: <20260428125233.1664668-109-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: ff5c4aaa-0de3-4e4b-6fc3-08dea52571b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: BUAKUIK6mC027jGvE+m/9ApF1z1tfl5l7waGc4GFETg+aD5L5jUPJWGkeHbixum1Ttp3OzecMkJSjkmRqFYCWCnEC+QV3abJ2L9HN9i2gP6r40mjtgu+jlLvzG6kRbBhXXmASVRy2TYnYWnRXBfMB7di+p23nZ85JAfnZLG1ky3otUK6h5bkK28L6tCJ5Q9dynCqKuNw4Og09+HYmAS71VzCqMyk0zyTQZwAFtZRbVoFFo1JqccQ/XKFusI9o5ivtPdr/0sm55p2pn54CWjA0ZKAZEINcm6WjtOYegZn4UGNX3MHDE9VoersKnhnz/Y3tojJVlP8Kq25/RgAgttoDig4YA2pzlx62Jz0ktQ/cN8XyEmNQn9W0es1n/F/RfksStuCLk9KO04jn1wvM1x1Za1JzYWYfIvZS/d73qddu2LVdLcSycyOW61fjQv9F8R1hZgk/EMRvlO6QVbFkogVXytcxunaf1Pt4ChwCW3LJWOQU8tx+79ZIGQ8/sc71Ta6wuy5vA3vk/Yx6Jt8rIn0BFnwCQReNzPY7FCYO7zaU5FWPb+fF5ZNFdFSdDtkGr+PeP1AkTMb00YnvZTtXQooLCwtX3TzC6iZe4HfnmUq3yrYnpwWIsQ12JUZKaBToSuyicERbNAVlZYR9MEipAdOlnmUt9MR4h3J8qdDRY49oYamfUDg01Iy21XxKJGVRQt7F7UoLfSmYwB31ajfQhmzv/kew96kLN+s4v0v3sayRB0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YcTABl78FJXtX9UjrPPQHCt4P02kNmP9DlZspos+WT10vmOCqbLO3+UJyfg7?=
 =?us-ascii?Q?wtS6A2EviZrnq8WYNsoyQ6bPqgs3chmPY8xNf6cESJF/5zo/haezejPVkKAW?=
 =?us-ascii?Q?Jm2Z5drSF6SE1CsxR3NNYwcsnPLhBQsLxKTzeKCfzz63D+a2FGYT6HXKwD2J?=
 =?us-ascii?Q?zqRM7LbaZTi5eI5m9E0bAXjMUQljJV2KJYxDh/zDL9Vtr6go59ou+1Wzrkih?=
 =?us-ascii?Q?oG/+vW2UmHe3InHljxh9xVynOyx2HGgqgbSvPhocFst50acOqUrUkHoOP+gj?=
 =?us-ascii?Q?Xe+Esmzxw/ymcD43lSaIEzuOjL+xN87qUeES1D/xl6i5KPQtg+jvV0D+Gyno?=
 =?us-ascii?Q?9ox8hVfxa8oBim9vdZcKFPn9zkBUKGyZIkpq8e1Nmdgv6hEFRUeIoHWF4lBQ?=
 =?us-ascii?Q?YRZo7hUzPlMEMD0RGHnYGoCzuWNNIA2lXVspsmm/h8KIpiEZcZrmELQ84t+i?=
 =?us-ascii?Q?CkbRRHcdLxzO1qggaLIfr9/DIWBNPLe8LAKfUalyC1gfVwv3QjzzXAophSXW?=
 =?us-ascii?Q?HTbw9kX3dMJ+qta+PlC0ZeiQmZ5XseRQQpYB6EmcjSfhXUHOaoTTsUSu0eTy?=
 =?us-ascii?Q?/fj9jfYjmUo0YBouIC387bSbl4/AheUyNbU8afnJflD7rIEzURMKPC++jT2G?=
 =?us-ascii?Q?wm/es5op8n/GmYGXRHZPDeQ0t+ck2DzZzNaNZHVptC6iGYXSI1XiJfEV3aij?=
 =?us-ascii?Q?VlJ3IepHpGWcCDVWhleu5vQvCiaXl19GfSkw0a8b8ePy9tCJwQGwG0fjBX6T?=
 =?us-ascii?Q?LiXJ/nfpIe4aRVIxywaxXBL/P+NUqcr/Y7WH27xAldUEjdXbaSBXrUmfyZB9?=
 =?us-ascii?Q?QBi6s0VldZhWoNnSU1qlOrN5Rqr4lvh1h/lvLMCAAYGjHzZHOETXjctMxRUo?=
 =?us-ascii?Q?KYlUoBb6Vdh1Y3s/LqI7ubkgiATThTT2CCxoQ0QGlWms0ebzhIEC9A/sp1Tj?=
 =?us-ascii?Q?dp2p1AnePQMoGAUIVMGQdu21h9qtdWa5Dqo3FLX2gPg+3EyWDpnsBigHSRZI?=
 =?us-ascii?Q?VCNbTl9ZXi2QMDfvMQE1+x10vzrZy3xyoh2CUuywxsse5qmnR3Uij7OSepLv?=
 =?us-ascii?Q?bQJZmZXLOIyhVCHom09H7j+Gy9/iuH9ZYANysp2YIHy0WoY9ZcmGAzUG2NbZ?=
 =?us-ascii?Q?xGdblXjuP62bbYMrC4C2Xq99YMO2C+HFSWkB/5xCxYcsnUPSMYqlBeECkQ96?=
 =?us-ascii?Q?ijYA3UOtTGqxZEC5tXBpWjsTtBoqP/8pqBXZg4kUfngvU/WnZmb7p44FHNVH?=
 =?us-ascii?Q?E9LyBaDAL3fb+tFH5+Qzi5eJYyeIgj1y0lZ60EYJePHWHwMKt8Dg1GQX5gmG?=
 =?us-ascii?Q?kIy/IhvKzxYbtHJA9T2DFIQU50zclwdX/yv0z8qTr4a59vLt4K0Dp5EM8dvq?=
 =?us-ascii?Q?uD88qMSkoYE/GCVjHzVXFzjnPoVdez3TkgjW2dlELmc7gFvYcr66oczc2jaC?=
 =?us-ascii?Q?Q3KUJgHg/629EkalTZWSgjk5lCekDH5zYFHlsmlySZLRC2UI86+8lK9OXl2C?=
 =?us-ascii?Q?uuE9S118juC2BqmIKLO55Qje82BHrNln1sy/HYCJMfXKc1fjSFPBtRB4mIvc?=
 =?us-ascii?Q?ITkp7TK/5/pMhWaiSgcXhTVQz6peqoVfYFZGpTo50j9FlPTn6+ee/zzXjorq?=
 =?us-ascii?Q?jw0fAeQ9Laceib1JJH9YxnxL0Xu5DeJfzwvLeqIuTuONiX9tamIuaCLktYbr?=
 =?us-ascii?Q?TMzns24mRJ8B7oudWx1EycAETM53qdyc6hFt/SYCMNP8n7wrelkU47j2yDXQ?=
 =?us-ascii?Q?i/eQLCYsmQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: ZpfaW434Iu4n5sPVwdyVHEMFYMyurvGv+E8xpU/rJAVXP1gXmrE4qruh/D6lB3+L4FUyiGieYzKs6w0xgyN37ny8SFDIyHWJ9bLHvr9z61pFMzg+dpilI//x0cMie3ibyfu3rLwCpvpKOR3MZX3JOzYuemO4Aes4HTn1lY/Xr7SVdG4qYujHjWej/ahSnNvGKF6hkL7CJS2itukJmbw2bXMIF3mxrVwzBvq1YSyEAfBq28TGpUjQmq4V9rx+DvtUMMGf/AB/j8UrkFJvOrD3sji4Vw+h0PvgIxfeEKR21P3W9ue7/+V3ULfGg6w2fX8DD0E6XG/WNWvmvD0UAcFo0Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: ff5c4aaa-0de3-4e4b-6fc3-08dea52571b7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:37.5343 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ec4EkbBq1VYZycWlgxRFoQM7qyZbaLoFONAZtUFqrzlDTjIxcvLBQ9FUILuOD8auMf1jNgqKpud/5vNNmxf79Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: 32DC0485640
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

Add KUnit tests for DP link fallback selection across eDP, SST, and MST.
Verify that the fallback logic properly selects the maximum allowed
configuration, iterates through allowed configurations, and disables
failed configs as expected.

These tests include UHBR vs. non-UHBR conditions, MST vs. SST mode,
and validate that subsequent fallback selections respect the updated
allowed configuration mask.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/tests/intel_dp_link_test.c   | 316 ++++++++++++++++++
 1 file changed, 316 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index 10c4679f31efd..c90281dedb3a0 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -1022,6 +1022,317 @@ static void intel_dp_link_caps_test_update_params_expand_disable_random(struct k
 		test_update_params_expand_random(test, true);
 }
 
+/*
+ * TEST: Fallback sequence
+ * -----------------------
+ * Verify the eDP fallback logic to set the maximum supported configuration
+ * as a preference.
+ *
+ * For DP SST and MST verify fallback selection from the connector's
+ * maximum configuration and iteration of the resulting allowed
+ * configurations.
+ */
+static void intel_dp_link_test_fallback_for_edp(struct kunit *test)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+					  LINK_TEST_MAX_LANE_COUNT);
+	struct intel_digital_port *dig_port = dp_to_dig_port(&ctx->dev.dp);
+	const struct intel_dp_link_training_test_ops *lt_ops =
+		ctx->link_training_ops;
+	const struct intel_dp_link_caps_test_ops *lc_ops =
+		ctx->link_caps_ops;
+	struct intel_dp_link_config min_config = {
+		.rate = expected_table.rates.entries[0],
+		.lane_count = 1,
+	};
+	struct intel_dp_link_config max_config = {
+		.rate = expected_table.rates.entries[expected_table.rates.size - 1],
+		.lane_count = LINK_TEST_MAX_LANE_COUNT,
+	};
+	struct intel_dp_link_config iter_config;
+	int fallback_err;
+
+	dig_port->base.type = INTEL_OUTPUT_EDP;
+	ctx->dev.dp.use_max_params = false;
+
+	update_link_caps_and_verify(&expected_table, link_caps,
+				    INTEL_DP_LINK_CAPS_UPDATE_RESET);
+
+	test_for_each_dp_link_config(ctx,
+				     lc_ops->config_order_for_connector(&ctx->dev.connector),
+				     lc_ops->get_allowed_config_mask(link_caps),
+				     &iter_config)
+		break;
+
+	KUNIT_EXPECT_FALSE(test, ctx->dev.dp.use_max_params);
+	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config, &min_config));
+
+	ctx->dev.crtc_state.output_types = BIT(dig_port->base.type);
+	ctx->dev.crtc_state.port_clock = min_config.rate;
+	ctx->dev.crtc_state.lane_count = min_config.lane_count;
+
+	fallback_err = lt_ops->get_fallback_values(&ctx->dev.dp, &ctx->dev.crtc_state);
+	KUNIT_EXPECT_EQ(test, fallback_err, 0);
+
+	/* The fallback should've changed the order. */
+	test_for_each_dp_link_config(ctx,
+				     lc_ops->config_order_for_connector(&ctx->dev.connector),
+				     lc_ops->get_allowed_config_mask(link_caps),
+				     &iter_config)
+		break;
+
+	KUNIT_EXPECT_TRUE(test, ctx->dev.dp.use_max_params);
+	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config, &max_config));
+}
+
+static bool test_fallback_from_target(struct test_config_table *expected_table,
+				      enum intel_output_type output_type, int max_rate,
+				      const struct intel_dp_link_config *expected_target_config,
+				      const struct intel_dp_link_config *expected_fallback_config)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	struct intel_dp_link_config iter_config;
+	const struct intel_dp_link_training_test_ops *lt_ops =
+		ctx->link_training_ops;
+	const struct intel_dp_link_caps_test_ops *lc_ops =
+		ctx->link_caps_ops;
+	/* Modify default order direction for max config lookup. */
+	struct intel_dp_link_caps_config_order connector_desc_order = {
+		.key = lc_ops->config_order_for_connector(&ctx->dev.connector).key,
+		.dir = INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_DESC,
+	};
+	int expected_fallback_err = 0;
+	int fallback_err;
+
+	/* Get the max connector config, optionally filtered to the max_rate limit. */
+	test_for_each_dp_link_config(ctx, connector_desc_order,
+				     lc_ops->get_allowed_config_mask(link_caps),
+				     &iter_config)
+		if (max_rate == 0 || iter_config.rate <= max_rate)
+			break;
+
+	KUNIT_EXPECT_TRUE(test, link_configs_match(&iter_config,
+						   expected_target_config));
+	KUNIT_EXPECT_FALSE(test, link_configs_match(&iter_config,
+						    &INTEL_DP_LINK_CONFIG_NULL));
+
+	ctx->dev.crtc_state.output_types = BIT(output_type);
+	ctx->dev.crtc_state.port_clock = expected_target_config->rate;
+	ctx->dev.crtc_state.lane_count = expected_target_config->lane_count;
+
+	if (link_configs_match(expected_fallback_config, &INTEL_DP_LINK_CONFIG_NULL))
+		expected_fallback_err = -1;
+
+	fallback_err = lt_ops->get_fallback_values(&ctx->dev.dp, &ctx->dev.crtc_state);
+	KUNIT_EXPECT_EQ(test, fallback_err, expected_fallback_err);
+
+	if (!fallback_err) {
+		/*
+		 * NOTE: This test does not verify any implied fallback
+		 * target selection.
+		 *
+		 * The current driver behavior may still select a fallback
+		 * configuration indirectly via max_limits, but that is an
+		 * implementation artifact rather than part of the intended
+		 * fallback API behavior, and is therefore not verified here.
+		 *
+		 * Instead, the effect of the fallback logic is verified by
+		 * checking that the failed target configuration is disabled.
+		 * Selecting the next target configuration from the remaining
+		 * allowed configurations belongs to the modeset link target
+		 * selection logic.
+		 */
+		add_config(test, &expected_table->disabled_configs,
+			   expected_target_config);
+	}
+
+	verify_link_caps(expected_table, link_caps);
+
+	return !fallback_err;
+}
+
+static const struct link_config_set *
+get_target_configs_for_output_type(struct kunit *test,
+				   enum intel_output_type output_type)
+{
+	switch (output_type) {
+	case INTEL_OUTPUT_DDI:
+	case INTEL_OUTPUT_DP:
+	case INTEL_OUTPUT_EDP:
+		return &standard_dp_link_configs[TEST_CONFIG_ORDER_KEY_RATE_LANE];
+	case INTEL_OUTPUT_DP_MST:
+		return &standard_dp_link_configs[TEST_CONFIG_ORDER_KEY_BW];
+	default:
+		KUNIT_FAIL_AND_ABORT(test, "Missing output type: %d", output_type);
+
+	}
+}
+
+static const struct link_config_set *
+get_fallback_configs_for_output_type(struct kunit *test,
+				     enum intel_output_type output_type)
+{
+	switch (output_type) {
+	case INTEL_OUTPUT_DDI:
+	case INTEL_OUTPUT_DP:
+	case INTEL_OUTPUT_EDP:
+		return &standard_dp_link_configs[TEST_CONFIG_ORDER_KEY_LANE_RATE];
+	case INTEL_OUTPUT_DP_MST:
+		return &standard_dp_link_configs[TEST_CONFIG_ORDER_KEY_BW];
+	default:
+		KUNIT_FAIL_AND_ABORT(test, "Missing output type: %d", output_type);
+
+	}
+}
+
+static bool output_type_allows_uhbr_fallback(enum intel_output_type output_type)
+{
+	return output_type == INTEL_OUTPUT_DP_MST;
+}
+
+static void assert_config_is_supported(const struct test_config_table *expected_table,
+				       const struct intel_dp_link_config *config)
+{
+	struct kunit *test = expected_table->test;
+
+	KUNIT_ASSERT_TRUE(test, has_rate(&expected_table->rates, config->rate));
+	KUNIT_ASSERT_LE(test, config->lane_count, expected_table->max_lane_count);
+}
+
+static bool get_fallback_config(const struct test_config_table *expected_table,
+				enum intel_output_type output_type,
+				const struct intel_dp_link_config *target_config,
+				struct intel_dp_link_config *fallback_config)
+{
+	struct kunit *test = expected_table->test;
+	const struct link_config_set *config_set =
+		get_fallback_configs_for_output_type(test, output_type);
+	int i;
+
+	i = lookup_config(config_set, target_config);
+	KUNIT_ASSERT_GE(test, i, 0);
+
+	for (i--; i >= 0; i--) {
+		const struct intel_dp_link_config *config =
+			&config_set->entries[i];
+
+		if (output_type_allows_uhbr_fallback(output_type) ||
+		    !drm_dp_is_uhbr_rate(target_config->rate) ||
+		    drm_dp_is_uhbr_rate(config->rate)) {
+			assert_config_is_supported(expected_table, config);
+			*fallback_config = *config;
+
+			return true;
+		}
+	}
+
+	return false;
+}
+
+static bool get_target_config(const struct test_config_table *expected_table,
+			      enum intel_output_type output_type,
+			      int max_rate,
+			      struct intel_dp_link_config *target)
+{
+	struct kunit *test = expected_table->test;
+	const struct link_config_set *config_set =
+		get_target_configs_for_output_type(test, output_type);
+	int i;
+
+	for (i = config_set->size - 1; i >= 0; i--) {
+		const struct intel_dp_link_config *config =
+			&config_set->entries[i];
+
+		if (config->rate <= max_rate) {
+			assert_config_is_supported(expected_table, config);
+			*target = *config;
+
+			return true;
+		}
+	}
+
+	return false;
+}
+
+static void test_fallback_seq(struct kunit *test,
+			      enum intel_output_type output_type,
+			      bool uhbr)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+					  LINK_TEST_MAX_LANE_COUNT);
+	struct intel_digital_port *dig_port = dp_to_dig_port(&ctx->dev.dp);
+	struct intel_dp_link_config fallback_config = {};
+	struct intel_dp_link_config target_config;
+	int fallback_count = 0;
+	bool target_found;
+	int max_rate;
+
+	if (uhbr)
+		max_rate = expected_table.rates.entries[expected_table.rates.size - 1];
+	else
+		max_rate = 810000;
+
+	dig_port->base.type = output_type;
+	ctx->dev.dp.use_max_params = false;
+
+	update_link_caps_and_verify(&expected_table, link_caps, INTEL_DP_LINK_CAPS_UPDATE_RESET);
+
+	/* Get the initial target config. */
+	target_found = get_target_config(&expected_table, output_type,
+					max_rate, &target_config);
+	KUNIT_ASSERT_TRUE(test, target_found);
+
+	for (;;) {
+		/* Also test the case where no fallback is available. */
+		if (!get_fallback_config(&expected_table, output_type,
+					 &target_config, &fallback_config))
+			fallback_config = INTEL_DP_LINK_CONFIG_NULL;
+
+		if (!test_fallback_from_target(&expected_table, output_type, max_rate,
+					       &target_config, &fallback_config))
+			break;
+
+		/*
+		 * The fallback changed the max rate allowed for the next
+		 * target.
+		 */
+		max_rate = fallback_config.rate;
+
+		/* Simply select the fallback config as the next target. */
+		target_config = fallback_config;
+
+		fallback_count++;
+		KUNIT_ASSERT_LT(test, fallback_count, LINK_TEST_MAX_CONFIGS);
+	}
+}
+
+static void intel_dp_link_test_fallback_for_sst_max_non_uhbr(struct kunit *test)
+{
+	test_fallback_seq(test, INTEL_OUTPUT_DP, false);
+}
+
+static void intel_dp_link_test_fallback_for_sst_max_uhbr(struct kunit *test)
+{
+	test_fallback_seq(test, INTEL_OUTPUT_DP, true);
+}
+
+static void intel_dp_link_test_fallback_for_mst(struct kunit *test)
+{
+	struct test_ctx *ctx = test->priv;
+
+	ctx->dev.connector.mst.dp = &ctx->dev.dp;
+
+	test_fallback_seq(test, INTEL_OUTPUT_DP_MST, true);
+}
+
 static struct kunit_case intel_dp_link_test_cases[] = {
 	KUNIT_CASE(intel_dp_link_caps_test_baseline),
 
@@ -1040,6 +1351,11 @@ static struct kunit_case intel_dp_link_test_cases[] = {
 	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_random),
 	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_disable_random),
 
+	KUNIT_CASE(intel_dp_link_test_fallback_for_edp),
+	KUNIT_CASE(intel_dp_link_test_fallback_for_sst_max_non_uhbr),
+	KUNIT_CASE(intel_dp_link_test_fallback_for_sst_max_uhbr),
+	KUNIT_CASE(intel_dp_link_test_fallback_for_mst),
+
 	{}
 };
 
-- 
2.49.1

