Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E12AE9812
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A27610E86C;
	Thu, 26 Jun 2025 08:21:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M1hcDFRz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905B910E845;
 Thu, 26 Jun 2025 08:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926078; x=1782462078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=htum/PJiusghR2vzO3qIAZ6bUwDcV4GBz62Xzrxw89w=;
 b=M1hcDFRzS/mnhnGewWW0uSo3n3hdmchbB3QKm2ks+N4hJvmF55ckUhdG
 8wAqxtvUJpVCYJG/893G85oukXig1XPim2rX0flxfPhw1Gq3dRNkMVnqB
 CvOpEayqnAGbOCd+LsSp8bumRlnQIaADy3AH2IHuY8Z26ZGSnI6crW4TO
 wbm3VwfJ4iFE4WvtOXO5maMACkSWATKEhXD6jEQnQ1YUQzsCO97iXIMjC
 XEztJxMIR3SpKt8lIr3DcQ/Mi7JnLAKy6OFVBEPTTsjntKxAqFfiTTuW+
 ZkZnOopnpGOym6OO4rtBBvlGlSstfQXqUIVkIz5dyFTWxhnXoDYGWX747 A==;
X-CSE-ConnectionGUID: kJhR1rzAT0WmbOtPRBrfBA==
X-CSE-MsgGUID: j5DnXWMxTjGCMs4/zLk4cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53345730"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53345730"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:18 -0700
X-CSE-ConnectionGUID: ySBy8HeuRUSZhUODtMR0Ww==
X-CSE-MsgGUID: XLNLa9DdS9KtUhS0cvrPPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="158211291"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:17 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:17 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.67)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iykU3oKS4crLQoy/7do+v1Rjt/o/K1WIK5UGzFz6mG8IlTe2RLdnqI47F1Xr+rQmKiIhShWr8OLMFtDGkaMP9bWeYNnFQbNLUkwBCfWfkr8XTkI+puVtLWIZ0paKXsegfWAvu4Jkuq7cWtzmAYeAs/H3M6/F+BgO6nJm2NPafQ+lZNPoS1Sa39AiYig9Nxc10PeMQcimEvDVAyCAR3vIs08jxAUzgyqhHrpWOtx/0lzzfIHy4crxi34/V3wVQQRKoDw5eOAXjnLgtxHc8IoFbv+ntR2WYmmp/lwtWcHCuNfzY00+sDYiT6nzIlh54rJ0nliMfEZvTQoj3RrqDjuBcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DIYoroflMUTMmeOjeJB7v6W4RBM87/q8RHWRBDbdTZ8=;
 b=lVCnQHbLJ82vHsvAPJPxvpiHgu9NBgWE0WG9TWWgFnZSpflPTbkMRs6CfTqXJkX+cFhvXlTk6tbGTEoNLy7GXkOA4GqTNnntZHHB4RGZw1hVThmOQR1lzOuedZVd3IQkExnpuseReoOSt4v0u5AodQBqkBvAis8gH2ncrJTgN/uSOA1SBw5wCv7QiZ7byVJqkj7Ux2d62djR9xVBfDAv1kOf/kfzp5PZFKV3SiGaBtqPkuJzhFtPqNn8UJzvW1Oie2I0tAMrBARLADvU8RMu2mWJ3FZpMtwSmW4mpGVnsAgSKPQ5WAPHSTnAhhksDOFfI2AUfNRP17N5x7W8TUzSAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:14 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 10/20] drm/i915/dp: Fix the link service IRQ DPCD_REV check
Date: Thu, 26 Jun 2025 11:20:43 +0300
Message-ID: <20250626082053.219514-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: ef191170-5215-4ae6-7926-08ddb48a6a72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FO+Lo4ZkyUrtBKzVMC/63fJ6aqqOHM8dwK0GAza/zY0sUTRYXcH6t84csjng?=
 =?us-ascii?Q?gUQhF/WnUWf3MSLmwbTDL1RJ85gF6GvPPZnsQhMU0PCa2RakIuQ7pXHCN75y?=
 =?us-ascii?Q?V9FH15pMKaAzVoT9EYSNmz3TdBIEjbe9pOeV6LV8spdyNVFdL4AopukLhUIp?=
 =?us-ascii?Q?7pfBwObkTqQUmojbqFdKQOAykILqKBzXJyjc3ENEXSOAvr7UeQbKzpKhlgcT?=
 =?us-ascii?Q?3iRWBmJpfY1zZWNqjDUQ7hbOAKprk1kRsbMc+Vn1w4qavLeMBhdOkwEqi6xN?=
 =?us-ascii?Q?p+R29X1qecaCeNGyE6pYdqrKW2/ZIbwi7yYrQedK2cPEjdZIem4v0LaAcmty?=
 =?us-ascii?Q?PX1SO1y2RJoT+nZ6bW+4Fcgr7MvEL+iANcbWP5U08ktnlzKSncncTwf1Xity?=
 =?us-ascii?Q?UHHaosVVpFv0zR/IivfztkFcQ5BEhlvE55tLaL3B/3WKmXnuEkJLwvM5wMNP?=
 =?us-ascii?Q?tOJ0CgqUJwrxBc3EA0cyxIGK62AlCJeORmsJqlw57Wn3sjpa021LTai9LBJR?=
 =?us-ascii?Q?ZuRgvzu0jNpQUjfgvIWXvnhJk331Bsx8qE4CrTv8ZvwEn++1FAKhGplCK/4a?=
 =?us-ascii?Q?On143XT7lMu/s0XCCPxDHlg+iX2UHj7EXEgQoXBfYyetRkOOqmQTDczLobKJ?=
 =?us-ascii?Q?suzM3glKuB9sOa1CnB31Wx05u86jnTPL6ZfkSerclUIVLGxaOfHbL1Kr9O93?=
 =?us-ascii?Q?6/II2lutR2w75GVU5XF3nZGrsv/s7PQ3d4llxY3hbaETVYnjpWTqOiCTf7XZ?=
 =?us-ascii?Q?Y6/okCQ0NAiOJe2vVLMChjOv0bFmykCiPD7yiZFqHgPDKLCi4pql1IqNON1Z?=
 =?us-ascii?Q?Kot50tAyTA2GHukwO/NPNPoJWR0cCOXO6BsWQa7MXCJUkcbIPvgd+xLY6VN9?=
 =?us-ascii?Q?q91qswKeJY5s0KmsmEia0Qarx8NYhwWco+ZXs8Fa67couS4k9u7PQ7Zd7wkL?=
 =?us-ascii?Q?/RZC4ximLEw4yf/Fb8DyTDnP68pvBGlX7RItfinfHgz7MxddRoMsM79wvX94?=
 =?us-ascii?Q?/Bexk6T7kXnE/bJ4TL6LoxBNiiUlBaKu0JQiLvFjOp+G6ZvFafEloiYfyTnB?=
 =?us-ascii?Q?5ksqj3yUDd7QU7EKECNJ4HON0p+/1UqCVTlQBqYZOgtiNhcHAkeK5uMYC6/Q?=
 =?us-ascii?Q?D496TTcNi8GoUM9VPLEGPALiUdC4ru6QxZ/h7rxKw+7F+Y1lI3BbRkiMD7OU?=
 =?us-ascii?Q?vbfXXSdhgHfnuhdfdffsg/4rNLZk/UxHm1zOuaf2b4cxUdQe6yZ06QOwurZt?=
 =?us-ascii?Q?u6Dv5W8y/YaWSaxOphG73gQQL0lRdW4bACb6OaJnYI9RlTcQ4Bf1jWc4ZcYD?=
 =?us-ascii?Q?I2i7BDrG+DGo+jPeMmcsTCpkRALtA7LZfrzQlU/czjzW8dSPP/HfWElUvcSK?=
 =?us-ascii?Q?9qO0hdKLVcH6pPpN+PkXogH7baRy61ygK/vrNcmLdV9BOmGEHf0LmakgtwGk?=
 =?us-ascii?Q?77ITqr/4PSY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6EsSqedobEf/3iyfpuRJkl4Cc8BvqesWMwbjTaboZPK8PNIL+WCkNb26/nCL?=
 =?us-ascii?Q?mvgnSAKatiu/UCEpb2glV30YohW5yq3VHf+gAJ66CCp6W1liT1JQSP7qZm5O?=
 =?us-ascii?Q?Tq6Fo0pVNFLw4aF+/4epww7MnUzth2bq7Ukblk+oBxf6FoIzID60OaiAkC1d?=
 =?us-ascii?Q?a4Qfjpb5s1yUhPlcUMZzI7AxxLhoCJv9WnOS1Sf5awvCGauzaRqy14bOVoD4?=
 =?us-ascii?Q?xPeo9p1riZP9nVAcfCLuch5RBFXItI+/alF5K6l64k/J4GjSRPCA6KqHH6yU?=
 =?us-ascii?Q?hIwiewh6DzSbUiIhnb/zcZaa6ZjHd4SmoCiZQFqQnjMYcOevnEjEsf8l/fGI?=
 =?us-ascii?Q?wt56H7neDUsCsSZofp6xS09NGhJY5H6K1BjJibJWIFWqlB/gU9/BZq+h48Eo?=
 =?us-ascii?Q?+AAl9Qo3xF/ZgJ1awK2+wW+ahYZcqIHsJ65nT4PWqv1OZto6cGIN9OcmEAzs?=
 =?us-ascii?Q?Tw79+vycNNoqSAw5scMTDcRGhmVugiJl25spjxO2hjLZURRVa22A/av8oKMY?=
 =?us-ascii?Q?6krugPp8edC3Bq15VFwDP/oEKPBfYojPRDPeD4newLB46Nx6WNhdMBQzyGeS?=
 =?us-ascii?Q?vnaePgxpMvdSWO9yAITO/a8pxB2v6/S29rfCHfRVly/kIBMfzcUD3S+XQTP/?=
 =?us-ascii?Q?1E3P8E9yOL9N4JI03JcyqRzRQSSeT1ZQogHqYh9IQbtnmUzLksMeAvdBWzpk?=
 =?us-ascii?Q?V3RB0s9z/UKgKGXEwBwEtUGTTvklCkjT/VC19IV4/x5IpAGztGFW6H52+uiU?=
 =?us-ascii?Q?J+BBsNzpc8ZTMJba24czEEt7OhxGIZ8hjfx3KQHHHNxz79J8rVg8SFNLMb7O?=
 =?us-ascii?Q?BBDDzcgvo28iGjZ9M9Gfuvl90f8ZFH+2zC34Gv9VLOTEgKzzhAZRD9enKB/8?=
 =?us-ascii?Q?MHtFxpoVqjC9mgjAFYa0FcQHtyC6grMTehvUsZUZ/R/vHcCvwzFV+jkIqhY4?=
 =?us-ascii?Q?8J+DY55lmXjpeGnfLLAzinQJE+68S+YliluXwIPRvzN03uXJYtLQAfWEShQf?=
 =?us-ascii?Q?sMw8ijgrs8f9NSqxtz30CU8vzyk8n+aMVvXCsYFgkOZMkrGbuOCY0n43ss3x?=
 =?us-ascii?Q?fbmcINpE4r7WjPL3/Czm/fSJG6oRYCUEFl8l7xwZBrXiRZZPZkEvUnBCvXCc?=
 =?us-ascii?Q?ZsPq/eKcH+mqjF+bJkbbd3VWAWAuXIKE+GE0FOirYjzJz0/6ZvHq9BQdsYw+?=
 =?us-ascii?Q?UfqtLp6Z99CKhnuEc5bnDAjf4/PXNS4JKLp/jL52Y3GNvhKEh3ACDuDX7BMF?=
 =?us-ascii?Q?SwfOtSVIDwNNmXjZTj+exi2+ZvT+qNxSV/uYUB6ZwMDzevWAasaqAlL3EcDl?=
 =?us-ascii?Q?pndo88q6iYFmaBEW1ALx3kLXrLHU7vsmPEcO5+ODY05XnRiyS8W+IdnnjQHb?=
 =?us-ascii?Q?fOKZcyg1qv7aBz/Tlw5Lpwa4d3usM+mQ90fpP/ri65HEL0z9AuCoFViuSwbN?=
 =?us-ascii?Q?mBOfkvIwhYY30qnq/9/kjzOiLhjSa19Qbidss/z4ndZ9OUb6NnXQ0PNjqNhu?=
 =?us-ascii?Q?6WRTQhjOuNOe22Ztnr6M6E3y8Zt5zsjimfRUDd9WXcecgQxgUCyLeva7PG7t?=
 =?us-ascii?Q?v431Eyyob4S9xWxkhAwGcR/IfEscaqPqtv06bzi2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef191170-5215-4ae6-7926-08ddb48a6a72
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:14.4332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1Mp4CB5hAcZ6JsENrVbEyqzB22ZljEoPJnX5Szerdb1m6cHlN3sUAwAgCH4ePknXPdWBf606N5Kn6S4t9+tVGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

From: Imre Deak <imre.deak@gmail.com>

The DP_LINK_SERVICE_IRQ_VECTOR_ESI0 DPCD register is supported only
since DPCD REV 1.2, so fix the revision check accordingly.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6262b661d026e..7793a72983abd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5420,7 +5420,7 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 	bool reprobe_needed = false;
 	u8 val;
 
-	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
+	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
 		return false;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
-- 
2.44.2

