Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMDxEbWt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E11AD48521A
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE5910EB8B;
	Tue, 28 Apr 2026 12:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VNKzJzYa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59ECE10EB89;
 Tue, 28 Apr 2026 12:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380782; x=1808916782;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=CHZl1gCyXWfxC9teva/PfbIGJ43DvUfRi+iu/h/uRQg=;
 b=VNKzJzYaln36qg7xAwtLqLWROcGtyL0iPJS8T3xN18a9MW2x8SuWsduN
 Gnape5xmiYuxiKkqvtlwFVX4S0w/4YaKfkTm32aNHF4RG16giPUbFV2+M
 16LdgIVvtce9eKHiYa5tLu/5ugvyk3KZ3QAxr+0q0/+k8naIkMJtTnBd3
 mojcAfwTLYSIyCVNbnYK6hGzkN5kSY5hxr55YYfhUl4pIS4VcWiKOLhy+
 ZVy9gRRgM+Psz/xTJT+HEsqCl8CD+ArZd0T7Y6CFQQzHVnFvRXJkLl28x
 MqmluDuhACWO2/2iQNGTV9QgUBAvWzLdN65/w1g8hQ5NCdQyX+O3pYw7i Q==;
X-CSE-ConnectionGUID: y6YCV7ugS0242sH7bw0LRA==
X-CSE-MsgGUID: Sov6Zua7RTaJWflKBOnzKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398571"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398571"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:02 -0700
X-CSE-ConnectionGUID: RQfAGwliSn+ZMCJgKFM9qg==
X-CSE-MsgGUID: mMpM/dJ4TfuQjV7deLh8wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911285"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:02 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:01 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.56) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GNMWEPBr5sDe9MATD8QR66kqgE58RdIiqI+EYpM8OawNXoZ6OTOqZnsh7yUDas2oF0Y4v9WCua9clDOOMh3SFAV5ej8XW78dAah0BKyk4JKo0SiHq3j013CHlfeSjGBQz38LFTgk/Lwezbd6Ye+hBNIzedeE1wWy1ZnoBHwkBLBE7SqII7ph8irKrFa6ztxisufLRXOQyJ9AJdhIhhZkXClaWpEpVAv2ysWSV+QpOGtYtNQIiQUVm5SOvF1/+sLvdvRvDu04ZiB9C2XSnAwkqN+1x91Xsxf1c39A1y4DLs0+MRmBKdYpYKeYvxFho02BEdfZFRwPQ21nbGmGpFkhaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=guVhPn2lfEZomz8KXpxTMIhvjr8xvRQvgZ4abVvpX6Q=;
 b=ZIsvv/SS3xVctBA17Di5JRTviwp6uQBrVVG3yj8wONhcleHpkq2zx2Us5pdbz2k3Mo61a5hRFwCqPdnKK/DJShBdFXcWWDoobA+Q3ZcE76pG7yZn1fAdoUa2eQ0pn26lurbJ7Ry3CSAyq/LBLr9AUdxwSid/tzxz0OBxGwBdSn/9sbuH0PNRx0SCcnPsc1CILP7g43L3kvBTSCrQAtr5zyRXWBGLANhXO7vlvb25SHRrzvsW/u9dO8+U3QX7o/H1r7owX6BpbFUlhGJhzEjLqO7FkW33xMtCxrnEvxw6hAf4Kay2KyQbK3Gci2qN/wJ/73fspuXJtQt9ntUyKBwLyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:58 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 011/108] drm/i915/dp_link_training: Move link recovery/debug
 state to link_training
Date: Tue, 28 Apr 2026 15:50:52 +0300
Message-ID: <20260428125233.1664668-12-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8156:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f1c7edb-961b-454f-5d1c-08dea5251311
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: JI6VQ48e7o38teDtgJGxB078S6Gm038rbASLld3BDuDevPJvlsKR7X7wdZ/VDxnEjViobT3pBjLmlvtwBV9WFzBKTVCukfyc+qSQ7Zeb6+QdyOZ+10j7wDJ24S7l+xf/l6uEPVlbH7Kb/Sn8r2yrFmhoRjKuYZMfiznQGDCeZFwPRS9dVFMwA06xdcLqKGZ2hGzCfvZ8cWnKYIZzPabE6fOGwHNhuVgMePXe8UVDaju1xobMrus55pyVFxk3n3JAPMI+Vzb0ZTkKUgRWeTkcuHQycCeeTtwPQjzR7a27gZpeffDF8q82z0H/5t01XQOAoEIIqmjVGMSyJM3Afoyenl76eI6jTezQVxKZxxUKPxkKrBEilzUXCCVaC9YhE9JzAZoGATkxY8oz+Aqm2oRTe8TvKrxOLxSPSRYlVEGognMfPlD7Jm019X8r0iO2xDY6I+ecOqTVfEP1+9yfmRX7J4NTGSLPrwRczyenXzUrS1CFhR1NcfhoMwgNnNk4+hCTr/YADpG0nj9UXFNOIn8ATuxWO0Ab6HJ5cKwLK6aZ2rMroe1YY1KULHUXj8SVf6ghubbgGiHuM2VkL3tD2XjuAnydZ4G0i7OZnd3xFPcNPP2cjDR6WqwY4JcCYJIPAkgswhD6aZs444QIPSAo8mQokuHVmmSDRkiTmRBnFU/ruUf2E7dr2bBSQX3jQUx15auhh5OzFTvG9itF77ljl0r8kZh5gKuA36kshE78powP7nM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NXgrJ51DY3SyoGBJrAuWfGz3wgaN5pofsqPXwlrGHJhFECjZXI858tdG3EHI?=
 =?us-ascii?Q?YcEczi2nDe3Ee/jwGst2lK8bgpxeWxUeDIVb9ci3YG9tvvM5gk3AIeD5vpOX?=
 =?us-ascii?Q?Afp3fpFhj4uacObSDM2NnpieTmxBVJeS+KWqmVUcTxqiMRmJdVCidzKM09WA?=
 =?us-ascii?Q?J0CySqCYKo0bGJdUGN3hE+k5/rypDvMuUt5YS3e5+tC3vZ8lGHtejSWea8UF?=
 =?us-ascii?Q?PVEBVjxrtJA16WMGf2S1hQyU3vDQxtI1lIymT/JRb4zqq/pp2SocKgKFG+ro?=
 =?us-ascii?Q?VjXReTn9Mg058ufyw95RRnlyShC3dY533OjsvYklQ3sz094drSF01c9ILXyT?=
 =?us-ascii?Q?tgtDoWCDaqpyQDbcaOJFElBYE7YenDIdWvz/n/c1nSNz/1K9Sq6LtPTLq2Na?=
 =?us-ascii?Q?vkmFYSVskin/j6NOPbQRPKf7cdpbXtqQq14xhJKmIQJSAtyFd+9m6Kmr1OXN?=
 =?us-ascii?Q?U9Mdo7dAdXXEEBAXElcEg9OFIaEzeo2nuyDPNFiwKdpb1UiN9lfw3ptv4sUE?=
 =?us-ascii?Q?4WkK2+0dhMSswQjX58OW/f9ip8yGaGEj6fB3xSz2OrTQFvACnyDsnedbfsAZ?=
 =?us-ascii?Q?JS5W02aaoyYc4y6fTuTkLYgPKNu+d9z9lFtRz+6nxyhy9jYJBdT1Aq7Yx2DH?=
 =?us-ascii?Q?Zu2AWaiWqF06z1KPnu5R5Z/MVhyhFA7ysh4sUopntscE4XU9J8kHClGp9oyK?=
 =?us-ascii?Q?3tHJ8RupyJ3xsnEDvtJC/fmLwwieJbKAzgve9DM/uOtm0R3kZc8J62/ZaStJ?=
 =?us-ascii?Q?DREvrBBKIYTy4ed84DW8j02whqk0vIP0Elo6xdWqsyC2zPNsW4QPOy4hMxTf?=
 =?us-ascii?Q?S3X2S32hp09iOJV9WPvcDYLmbbrWsV5YZC65VHHsX/JeXd+02NFUO28nXqU0?=
 =?us-ascii?Q?fj1uS5xZQN/iJHOEOCulruyIPPRZaz3aed/LOF+r/c6X7z36xQaTyo2llXgd?=
 =?us-ascii?Q?A+4d2vz017GuQv9moSYIhQovYkDuO0ODerEf6OlRZ+LPqXlkDOfW3lUudpUH?=
 =?us-ascii?Q?UUYIDYjihZwICtxEFxxyo0TGAJJEx2C3V2fnM9ncGdj75LEUQU9LQEIL4a6G?=
 =?us-ascii?Q?6VAsUN6fEIwJPCqFnF3OOuvtSZjN2asRoXcIANrp/FiKOVorpYRjJ4f/lsmy?=
 =?us-ascii?Q?VsH1wOZD6ZHCd8VouwJKFlkbXn7bZsS9BONN/NOaGh6QKns//xJZITCDJJ9p?=
 =?us-ascii?Q?EPzOxszN35OnoLUM00HjSjkFyKnhmMom28sP5wFJ2dhkpXomuXpv/4yR+kre?=
 =?us-ascii?Q?y17eDPVNiU9OVbRllwV9ZM2PB6xn3x83WFeXsA9tQMrBrjFH3GX7HiHL6WUs?=
 =?us-ascii?Q?pPw4MrcPPEAMTgJg5ie2LLKtWOs53ykzKaYfu8/QCyvLXUhZBMQxZZ4T3jv4?=
 =?us-ascii?Q?Wf48EyvGfsRmsKBppBERCrEmHKeMYyTJTEdNtlfDAlWh5bS1DAgT5tv2LjLw?=
 =?us-ascii?Q?SigyJxYfc59KchrkGvbFbQEtT3kvcXiheUaFZYMOdyBo0MPFO8zEYwaRyhuV?=
 =?us-ascii?Q?XZYcEztS8oYkgZfXTdT98eHRLw7bs60JkMim5Z147DJ3k6h7crFuUB2yvO2j?=
 =?us-ascii?Q?EqIrwZUhQSeuesZPdtKGxiLU5Qq2d60QgE80/bUBq0fb91QzSapWA6X0v3/F?=
 =?us-ascii?Q?vs6zG+r+C4VUtyPIK+xbbRKtvjVcSFDsqhVvKZQWcRhVFYx+lLGDTb259+G2?=
 =?us-ascii?Q?YAak/ErcO+GUnS8Cex319/2m+ekxofARC6PBctpGKGy16V6IaGNYRbiiVv8M?=
 =?us-ascii?Q?T0EnsfcbuQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: bCrftBXDTZEntBFe6LsvMZIewbAsPR41zVSYgiyOCciW2JDLIexwJ44HCUfoeNdYa6ZqIqSnYK8mH+N+eSauuXYYRbLg6NA2lstOVSsiduSxFj0OfcqRIDmwjwmeijzX//ZTIGdSk0mvxEqjSR51SkDuzTIrbiNtd2+j1cOlZQcrU9mNzVl6Ey9rt8gPk6vEVJJ9pUvnR0rFMPA8lNXN9QUE9lUjSP+T+cOVcn3AhU5hHQvSNs3wyh/7vreHuIs0dhr3EoeETHsZ5E2HTOXCI4VRxjZ+94R5jBu32EWHS3fe6dPUySnDFjfJ0jReYnEwFToACxSoIJR4HYjU6kuWmQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f1c7edb-961b-454f-5d1c-08dea5251311
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:58.7758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pCWJlbqrQhSdNJ+aaCoqDK/eeZYXdADckzYi0dHxw5P4nUt5vpw2wjzHPOWctyueLzNVuBuMFJZQacbgYQEBsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8156
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
X-Rspamd-Queue-Id: E11AD48521A
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

Move all state related to link recovery and link training debugging from
struct intel_dp to struct intel_dp_link_training.

This moves towards grouping all link training and recovery state and
logic in a single place and prepares for follow-up changes in the link
recovery state handling.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  5 --
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 .../drm/i915/display/intel_dp_link_training.c | 52 +++++++++----------
 3 files changed, 27 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 27714e4cffcdf..dd61d958d5b6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1849,11 +1849,6 @@ struct intel_dp {
 		int mst_probed_rate;
 		int force_lane_count;
 		int force_rate;
-		bool retrain_disabled;
-		/* Sequential link training failures after a passing LT */
-		int seq_train_failures;
-		int force_train_failure;
-		bool force_retrain;
 		struct intel_dp_link_training *training;
 	} link;
 	bool reset_link_params;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2ad65ef0f697e..3dc27dbf2bce8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5897,7 +5897,7 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 	/*
 	 * Force checking the link status for DPCD_REV < 1.2
 	 * TODO: let the link status check depend on LINK_STATUS_CHANGED
-	 * or intel_dp->link.force_retrain for DPCD_REV >= 1.2
+	 * or intel_dp->link.training.force_retrain for DPCD_REV >= 1.2
 	 */
 	esi[3] |= LINK_STATUS_CHANGED;
 	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 72e023b733b33..db1e03c15596d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -65,6 +65,12 @@
 
 struct intel_dp_link_training {
 	struct intel_dp *dp;
+
+	bool retrain_disabled;
+	/* Sequential link training failures after a passing LT */
+	int seq_train_failures;
+	int force_train_failure;
+	bool force_retrain;
 };
 
 static struct intel_dp_link_training *connector_to_link_training(struct intel_connector *connector)
@@ -1262,6 +1268,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_dp_link_training *link_training = intel_dp->link.training;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	int ret;
@@ -1282,8 +1289,8 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	intel_hpd_unblock(encoder);
 
 	if (!display->hotplug.ignore_long_hpd &&
-	    intel_dp->link.seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
-		int delay_ms = intel_dp->link.seq_train_failures ? 0 : 2000;
+	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
+		int delay_ms = link_training->seq_train_failures ? 0 : 2000;
 
 		intel_encoder_link_check_queue_work(encoder, delay_ms);
 	}
@@ -1776,6 +1783,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
+	struct intel_dp_link_training *link_training =
+		intel_dp->link.training;
 	bool passed;
 	/*
 	 * Reinit the LTTPRs here to ensure that they are switched to
@@ -1799,15 +1808,15 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	else
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
-	if (intel_dp->link.force_train_failure) {
-		intel_dp->link.force_train_failure--;
+	if (link_training->force_train_failure) {
+		link_training->force_train_failure--;
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
 	} else if (passed) {
-		intel_dp->link.seq_train_failures = 0;
+		link_training->seq_train_failures = 0;
 		return;
 	}
 
-	intel_dp->link.seq_train_failures++;
+	link_training->seq_train_failures++;
 
 	/*
 	 * Ignore the link failure in CI
@@ -1826,13 +1835,13 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (intel_dp->link.seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
+	if (link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
 		return;
 
 	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
 		return;
 
-	intel_dp->link.retrain_disabled = true;
+	link_training->retrain_disabled = true;
 
 	if (!passed)
 		lt_err(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after failure\n");
@@ -1931,17 +1940,13 @@ intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STAT
 
 bool intel_dp_link_training_get_force_retrain(struct intel_dp_link_training *link_training)
 {
-	struct intel_dp *intel_dp = link_training->dp;
-
-	return intel_dp->link.force_retrain;
+	return link_training->force_retrain;
 }
 
 static void intel_dp_link_training_set_force_retrain(struct intel_dp_link_training *link_training,
 						     bool forced)
 {
-	struct intel_dp *intel_dp = link_training->dp;
-
-	intel_dp->link.force_retrain = forced;
+	link_training->force_retrain = forced;
 }
 
 static bool
@@ -1982,10 +1987,10 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 					intel_dp->lane_count))
 		return false;
 
-	if (intel_dp->link.retrain_disabled)
+	if (link_training->retrain_disabled)
 		return false;
 
-	if (intel_dp->link.seq_train_failures)
+	if (link_training->seq_train_failures)
 		return true;
 
 	/* Retrain if link not ok */
@@ -2332,7 +2337,6 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp_link_training *link_training =
 		connector_to_link_training(connector);
-	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2341,7 +2345,7 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	*val = intel_dp->link.force_train_failure;
+	*val = link_training->force_train_failure;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -2354,7 +2358,6 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp_link_training *link_training =
 		connector_to_link_training(connector);
-	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	if (val > 2)
@@ -2366,7 +2369,7 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	intel_dp->link.force_train_failure = val;
+	link_training->force_train_failure = val;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -2430,7 +2433,6 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp_link_training *link_training =
 		connector_to_link_training(connector);
-	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2439,7 +2441,7 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 
 	intel_dp_flush_connector_commits(connector);
 
-	seq_printf(m, "%s\n", str_yes_no(intel_dp->link.retrain_disabled));
+	seq_printf(m, "%s\n", str_yes_no(link_training->retrain_disabled));
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -2479,10 +2481,8 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 void intel_dp_link_training_reset(struct intel_dp_link_training *link_training)
 {
-	struct intel_dp *intel_dp = link_training->dp;
-
-	intel_dp->link.retrain_disabled = false;
-	intel_dp->link.seq_train_failures = 0;
+	link_training->retrain_disabled = false;
+	link_training->seq_train_failures = 0;
 }
 
 /**
-- 
2.49.1

