Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39081C8FC6E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1939010E870;
	Thu, 27 Nov 2025 17:51:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KY4lfQ8i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2412710E868;
 Thu, 27 Nov 2025 17:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265877; x=1795801877;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=yd3IMEz9aDEukDl0iihtQCOh97NBq2776g66hJmQlDE=;
 b=KY4lfQ8iIyeG208+xqRn4AJpbYrohXeTdwkrl8kWwGzc0sOO3DUPnOCv
 IOb5oGWeJH27SDKyny7sCnKdLqsNeLMfULmPGms4XWziGkA/J0sv+iNn/
 /Uf1FT4+LdDnSmUfmu66FYQ1SMSoAhhzUjXPAA3p0OcdgWZZ0noTdc0+y
 UVJYCOvYxWrYn7xp+BDcfwUToFkFe4Ysowp8W5ZOzB1K2uhYJJPH4GS6V
 I0QzlZcaNLdWZEE2tZvffAPfL+fBnkEqaT44N016YB28nKcdW3+Gpsjxj
 Nra5LQUD0WKnLhVqjupFqeMXAq0LbN9Dja1mGBdHAkPfMuZqkDLdtzqgx w==;
X-CSE-ConnectionGUID: +Irs9TUyQ9u+y5LThj/7AQ==
X-CSE-MsgGUID: MOz8p886RmSYrAdX4yNToA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002958"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002958"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:17 -0800
X-CSE-ConnectionGUID: eUT5gIBLRq6LRADE5a+G1A==
X-CSE-MsgGUID: lyoc5Yy6SOCg4z75EeWDjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453597"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:17 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:15 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:15 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.37) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fO0srwHk07ZlXQSDqvtxnF3nDIRaDVDdpjqORFPj3IzPdBf4Nm5ZQFq2T6z4epkCB74X6xXL3etwdMhJGyB69bPOpfP9HaZN7WJ8FpYYn19R1MdLfez4HlEKAqz0F7tHKYCleukR1P/nFjafiL3+0YjrHPKbbysMutr6PIVxn+6qHbuaVacBh5ykOlOoTb/5npxAz0qQMZD0egIWFXvQIo6xOuGZDfEhgCPKuShFRDtv6K9SkN9wJE5oRCL54LQsjr+95aENjvAzgJlgeE/zbO4yaqcTaRMPGa3vjEE16tXLV9gmxTvs+YGlh18cLewYVWSt3FrGpOi4IRFwMCbvvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LI7cCEez5ANdEH4Qe04Rq4ixHsYt/9U+1Vi+JdDYkkU=;
 b=IIHnMYIymon8WduZSaQIv37MRk6KY8as1V3EvAsfbCrbsfP9hIz5KGvQdtuLn8hFX09puMpOaxtRuNPR6Ge0zHs/BRwcZeAulRK26tEMq7JWFUUshhOdFnBj31gxBlMfnF5sULdh5rv0XWXX6U2nCGLpfBMI0tb6U6wzFpt4jWQYxyKrRkCjydp4TBVbCQ1hp1Lu7J15emn4jlCOeOq/zMAzjN7Ko/ZzFqS1Q+tvVDIWduk33cRqgGXxegNjt1W6OerwfrWMma3PzhPSQ3MhgmeE1/J2wq3yWGKJqIF2U3NK01FUd82EE2nye143WSO+XlTlSaZ9g02yj4BBNnrkMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:11 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 17/50] drm/i915/dp: Fail state computation for invalid max
 throughput BPP value
Date: Thu, 27 Nov 2025 19:49:50 +0200
Message-ID: <20251127175023.1522538-18-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: ba18844a-aa2d-4ee2-7c8e-08de2ddd8cfe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FBORcAFG+e8yiFJE9VyKLLVsxz6J6V/x9TFVaiFGXi9tVSM1hOuKhkqH7pG5?=
 =?us-ascii?Q?W2gfrmNdmQUUbgqF4H5UQro14vTwd4gMlE9E+IMXeRx4FyVqLBE/jz3XcLMe?=
 =?us-ascii?Q?ZxLKV+9h0bEOef6wSoqCWuBTRahuu0k1hg4uLMwsLt5IKTVCVGo1iGCM8Zmi?=
 =?us-ascii?Q?DCq3A0/2/MPuMsw1aor8NQfdmCg25dOQHi259zwm9JJ5kZ98aXoXfgPO34pI?=
 =?us-ascii?Q?5ztSp9llx+Sc0AaU9vuBtUZwa9QrPosofkV+5gudKDgjNw/BLfTjj0iZvBf3?=
 =?us-ascii?Q?k0SPbBuVHS3sHRwh0RmKNRDQtXV5pnkyjOXTBbbRhqu41KH6iCb/yxaM0Suf?=
 =?us-ascii?Q?yilGZSeBkIRGRlCJDgMXeYz0G+C9N2lnZxTdEwoJwLTAIa29wIRsO6UF5pgR?=
 =?us-ascii?Q?DhfkUl1UZUho+OKgusEnGxexhXjzoWxSP9SQhEbqeWJL2Djv0HNkW1lNpXBA?=
 =?us-ascii?Q?xJA8RZUXQyPyGk3Aoru1Tab6JCThKnnw46RuKYV+T8jHW23b/gcgKrP7inF0?=
 =?us-ascii?Q?2bYvIi4sep0o3+q6mTsUW5glg/GLKADhn+XMN2j7DJgNZW9u6FWqCvYhAahq?=
 =?us-ascii?Q?7W0wYKosO6DS3cZRQgISn43+THoUZRZu5MO/aIcvgIXaakPomG7wmdpZ0w2L?=
 =?us-ascii?Q?8ljZEYlCPxgEnxbUMkHuFl8mPF8KDx2r0azxv0amgwONVsrAQDHxMbfvjpxn?=
 =?us-ascii?Q?GJHNuTulAlmx3GsuSwRHZdYCU84zDfGY+GxUeHgIMLXF+2x9L0+VyCp6YliR?=
 =?us-ascii?Q?TjgWCUpdDpfdeRYq27p3y+FBkKOpJvIQ1/fqQQPNZrStUtndxjU4b0ky9jj6?=
 =?us-ascii?Q?q48thsFyOLdTJAPz9fA0AQwSJKNrGjvOUtOKVZZBl2b5JruEF9tuiouWBokx?=
 =?us-ascii?Q?OyjU6+dMnmHVoYYnqPy+P8oGqgy12k21sPHGwELDJCSeiLXQvAZiSJjwq3V7?=
 =?us-ascii?Q?0XgpzYvSYv2OFDAixVFLiss1xjzH0WVVeVIe/gJhuE4HQnRlWtSTwYE98cLw?=
 =?us-ascii?Q?jZNWdzCqUBPq8fGl28pW36oUgEpupIY+UzvsZcteUzgTz1z7qIvSgyPecbWG?=
 =?us-ascii?Q?tFXj05pI57mG5vS8QMmhGCPR4UOosbeE0BUBMRy7zdrTL/3RZ4ONxtHREIQU?=
 =?us-ascii?Q?Ux50o7eobeAa5SWs7pSo8jgBEgZhVg63XS9O/Hf29Zy7NteEjPFBB4lo5vTM?=
 =?us-ascii?Q?DZ8qVahrz27keL5zNQaUI9JYCTO8NcaDPt6ZNrcjYXezq/B2ROdUap0X38C/?=
 =?us-ascii?Q?jatAwLMCZ8KVxCKwmfRF4fbsHcr02KN73a7nBGy6yDW1JqN6wnzL5Z9wrhiu?=
 =?us-ascii?Q?Fif+ClbQLAhV8dgZemyO6MAWxW85OADVxL+9WoOPBe0S2xBHxWfc8HT9n/Lt?=
 =?us-ascii?Q?HgfOX8jwcbaaf30qwk01tVhnTs+W40BDWhpf55DDXXz0xG4rRpT4g932dwOT?=
 =?us-ascii?Q?70dhamSvoX6MkOVtkNjSORfxftikQ9zK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ogDmFT2WqasPJPFWhkKFx/jK6hLwDbRV7KbgRprZoMJ/RLhg9JXNCS7a4B42?=
 =?us-ascii?Q?ClqHb6kPvTH3/qiDprMAnSxqK7Bzm1katZ38/n78IZ9r941w8tCT008Hdh46?=
 =?us-ascii?Q?tpOX2GzbTTriqH6bJWee+Kx3ZfSsGtq5sK6Jq0PKYC53+EW+3YQb8+O7q/ly?=
 =?us-ascii?Q?AeqIdbJ1ZDszwHBzuFAoxW+rq/HSN1zOhuD0Unds3tkEiiV1iaSJ5j8hHruI?=
 =?us-ascii?Q?EjPw4rjnn1vjrpREudeWZgTPDGYW/Xe3Jvtzp8dv+spdqKU2/Vlpc0b86GtT?=
 =?us-ascii?Q?bG9R48rvbjZolIrojJ3eE3BJaRiDrq8MnTQqZXwnTNjme61nutqNXA1WkFwk?=
 =?us-ascii?Q?HzTVrt9fwdB1z07EqTpsZdix+37JOgp6Ddyez5HLw1Ge37aTuxWZ1Y1d+TT0?=
 =?us-ascii?Q?RarFGRE+hB+rF6HTwqNthBL7JTRmqiLSmUs15WycVgXjdqXq3/cW0B3MN0L6?=
 =?us-ascii?Q?HXxAGTl9idSbJ0UMCxuIaszbPj/i12+1FhB1gY3PZOJMQ4wLUiIi6gOqbPrr?=
 =?us-ascii?Q?M14DlN3Fz5N5OChKsit8de4b+Spx6NnbLZ0xEopWIe7vJJ0GU4xBfkyulQ/f?=
 =?us-ascii?Q?ThXHyE6gV/1zocPS5YGrU3CeHh4pSrCdOG9TT2QAu02G8vbzQlRRcaz3bUP/?=
 =?us-ascii?Q?PjUjf/L5Jcp9XFC1YC0G8hOfIl1KLorXhORUTbB6JSObb+MfFgM9Y5uD2A20?=
 =?us-ascii?Q?zCMHq2Y1gqq65D8QLcbdzWrveexfAef7xKUWYivQyoTYPOsNKZ00NlQOIAR6?=
 =?us-ascii?Q?tvd3nvI7zP1PCLByX0Q+yNX1P4EaGdesWPsnuDD9DCmJrVjbuOLl1d8JcLhC?=
 =?us-ascii?Q?NiPYIa8lVgjBVHcTC0HtOTVeOuM69xgUQIUuAaoTkCeaWfzwvPz4sML1m+Sf?=
 =?us-ascii?Q?vwsOk0HhaTRLqcPD8arKSffKLjVFXoOHrTWgozniPoWrj/rjF1lb68CVu8uM?=
 =?us-ascii?Q?PFuY1hCglJYnbi0SMAphMv/5XAp6E86iQhPsAiTOGm48QJjkg1iXg/d61JU8?=
 =?us-ascii?Q?yoYOnwE4MhJKUfUFvI68qS/aEBhEiRGaZA6334tZyzBrRXo/NUKauskTkfhD?=
 =?us-ascii?Q?1vgNki/+B++FtqG2jQdjt/kXMpN0JHuplVJVPsBwd9TOWzfeOnBCgCMQufTH?=
 =?us-ascii?Q?M149aMXhqJPYVbKgaDCE52AxIIi5Lu0MUO62V8rv3d2WtwCF1JnbZkjchmYb?=
 =?us-ascii?Q?oRp8Oh8S93UnOW+qZdvXFtyw/pMmDu174o7Wgkrk7RAqzHc9vGfxWn7XUUj5?=
 =?us-ascii?Q?P3FHXw9MhrV9Uv/IyHuuk6Kb6XIZg7DS5tC1qJApjDBMF/iawFPZ+qQ26rdD?=
 =?us-ascii?Q?j9OO6TYOImx7n8ulnNkbkirqYPIM8LOaFqMQwPFYC1QKGFnkt0j3FdxbLeq0?=
 =?us-ascii?Q?b44KbO8YPZQrICvng85cd/j857GEWejjwPwIu/tdDtXzvA1NePggokF3ZmCS?=
 =?us-ascii?Q?zov4VrYeqjWi/NVdY6/woBlTXdbm3uk1nOl17PWsYjorkmE/BinHxJ5/Z+9i?=
 =?us-ascii?Q?uCjfzGbeyTZJXzYMKuYOoM7ijFLw1ZwoeQk9W6blOpbRTzM5jECrpqPniz5C?=
 =?us-ascii?Q?gaw0KOpFyLSpivAx8wrkA4Fq2IuMpQ2YZXW276CdR5Y/pHBfafC/6nSspJN2?=
 =?us-ascii?Q?O8SPowE6G7zj86rmY+8jcreqC+Tb7OJ7SPBdYlbeOzNx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba18844a-aa2d-4ee2-7c8e-08de2ddd8cfe
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:11.2917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WmnpNQgnf7zwnzOGVp7RfyQeZLYH3dp4WXajHEIJ+bk2gnbhL8ZrxngceXqJ7Jxn3MeF0JeaofZU1Rxyo/zB1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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

There is no reason to accept a minimum/maximum link BPP value above the
maximum throughput BPP value, fail the state computation in this case.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 545d872a30403..f97ee8265836a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2638,8 +2638,6 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
 
 		throughput_max_bpp_x16 = dsc_throughput_quirk_max_bpp_x16(connector, crtc_state);
-		throughput_max_bpp_x16 = clamp(throughput_max_bpp_x16,
-					       limits->link.min_bpp_x16, max_link_bpp_x16);
 		if (throughput_max_bpp_x16 < max_link_bpp_x16) {
 			max_link_bpp_x16 = throughput_max_bpp_x16;
 
-- 
2.49.1

