Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F21587BE98
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:11:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB73510FB88;
	Thu, 14 Mar 2024 14:11:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BENU/8OE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1370F10FB79;
 Thu, 14 Mar 2024 14:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425466; x=1741961466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=s7Sv+cQbafPSw8YAV/KUNkzIdrUoIhLHlHUZc7im11o=;
 b=BENU/8OEP1bQRGFJB0cRLYdqz7+6LwHiTNRgag+5H9BmoE0x04HAdBrc
 o8Fs/G88QBhHww6/ieLGIze+y2H3VS/k95+iu/sKK6xensvo1khB8RmWH
 TLrzu80ezGpEzpGFvj5NvvMO3j0aOjnv0/lWyz8JXbBGiS48VB1LePfia
 GGrskhP6Ok7dWo6GG7RpwsL8gjfXf+SsKcp7UXJaBQBgveeAcDsbn8H5Q
 2w/tOe9oIk5sj9nlFPnYxjDdx6TJDj1GS+db9vajAG7bI6y37hkI0GDmn
 kqWXeHhuZfjsINM79jgxeAUOq1bAVhYKKcAICo/INh2rM4bB04RpaD8pj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="15885175"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="15885175"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:11:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12696148"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:11:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:11:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:11:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:11:03 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:11:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eEK7HLpHQFs4hdhtzj2DpskKZY2ikRaaWTwVNQf4VXyML6PQ2gAKCqdUX+UCBxrAZvVZ9omCN++N8ZSxfd2vfVmiL01yINFIohWvOswOkz23lCdGqvxYrDhXM06H89FrDEcQ2aZ7JLwhx0EbdXjKdPNIfA4qjKuaBMRKEa1XIkAj3HQuGaGdLz5HAui7JbNWR9pr9RU8hlXy9+V+QweTtHjPCrO2ifsNkbLYVX6UVhlCVoyUm+gNaMMsWV2wGfOB43xGEvjpYg8sDeJ7geAnkSE2CrXjaVW8oW5qWo0FDeU8tPvbzE/M5+rvZeVkzIKSL5iwPcFen4m4V6yFwJmrxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4AJ+P9oE+7RCbVplDdppI9RoVP+RW4cJKt2gPY37Ptg=;
 b=GHJafzd1z7jiraQI8pcgehncQ4BEaF3dyqazsBr2qFXpVleyQTqjNSBEvTfxHp5k11qo77ykBO4/NC81s40va7/nw2e8lso8IeT/XZoZjmVUuz7AQeAOPNRjTH7A5uSqJBP2KfwRCHft0//ka/3hxVytulCHA6RtlWB63ZIi/uRBU8qhdlPo7P043Ylm/5ov151UjUikOkpC1FIAplp03MJ1FAQIQv9rTESYQuAK2Aruu9uMMA8fwKjPp+qkmBZkBB3NHMxN+x5yEMINxYkepkJsJJN8SGMDRQr8XmbrQwrQg+M84LtHaILqbIMzqbSfwROClywo4K1H3GYk7+NaNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:11:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:11:00 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 10/11] drm/xe: Ensure all the inner access are using the
 _noresume variant
Date: Thu, 14 Mar 2024 10:10:20 -0400
Message-ID: <20240314141021.161009-10-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0125.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::10) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ef270f3-67c3-4c93-cd92-08dc44309394
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p3qr/lOaJiALZJwMr92ROGANWbvl3ZjO4yFbc0WnPgCxPKdN6urc4S7CzHgbI007UK0PDibpE+A9lxAZKekuQQT1GtSg3Tj1s1keLBA1SKHSMg6wgSu4B8a+h1NiG2q6SlSafuu44DCKxkhYXcbYwUHyFgzsxJR6V3tekeqPKYAKq1l54ui5eytzHhSkD39mCscoqCkPSbejhGhjII/kfyAZdSd1R0Yce5NMoOTX6GKkyC+If56cKlSVIiyD2qyU/Y29sKk3mf7N4Ve/SxuBj6StqBo6X7U4svRjIzCGNN1UroMNLsVjZktX0LgKv64Na15NwxsPmvrrhfzfY84mplaVb2V87CoFnjR2ob45zScPnzSYfWcWn8EOVq29nKuk3UGmfoRakXRadNyWzzqmuZMc9/wxNOn3aCPHHg1LQBApPhvC2Q3xnkYRrh8uxiM3vhj8LY696sA8W7ALSBkEqpRnI/90hwlt8KsdpKIL18uyYSNXT6n8LyEQ5qwY7JQYWPCvfciC7I9ymO1VO6b/Lxt7job9b1REWPVgkVfKcSuei49GCYwFySzDF1t24NTUIOvlAQCrAWu0MrAhj6mgBUfhxTg1sOEJxfoksCRbTKylE9ggLgTaNhcG3PMVnN1ADQKL7vZlfbAxmIbvWX6Lxg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nLX461Mri/pfTLm23f1WxOVMzBkEYpdsUC+b18kmwpBkA5dBVP4V97Wdh0fF?=
 =?us-ascii?Q?Dw0LB9qgPrZVgXLAyRq0tE0rNSyfqTAnkFxbe6XDzR5n1j9qjFV4rq1tV2Cu?=
 =?us-ascii?Q?fNpAxCqeXU7OINQtb97ll7zG3ZkeoKluHE+kxCI82CdzCJuWIQL/D0YwD6dc?=
 =?us-ascii?Q?MUj2ez/02eEus20ZpvYpfmrG2kRn2HoNj+7+3PTY8n3mWCGsjlW+TMT2ZCh1?=
 =?us-ascii?Q?R0u9sJ5OyWZ+z6WdDr0fyjnmtYs9YrclDNF0VA44U8mykn6AOmgyAjfWKVBJ?=
 =?us-ascii?Q?iQB0d1vsmRAmi5NsOkN73RAcqKR9A0OoUqIVZIQPTgZwtSzcR+uDyuZOCmdu?=
 =?us-ascii?Q?zHwzp0OUvSqBldzPLDgjLzJl7Qwx+PFePyuDZPBWNjL7k7tD+cCVkm4PAdjr?=
 =?us-ascii?Q?iAv/pJKcGpWHZxCil0pvkiZk37B2fDvHii4Hnu06zYw+TzZ02g1aBqsZHAln?=
 =?us-ascii?Q?Who09f98Rie59zdpmXQ7JGYnq9a1GErCSZLVxr2nbU8hT1nJjz0vLjRwNoz6?=
 =?us-ascii?Q?tIaNHPYE7ZjAqd/wdk82Hp0aoX9D5yyTRWIiinF+vrD0WGVtu07HvV1qWIFS?=
 =?us-ascii?Q?qig1qGTr60BynL9yTPRWROKlnDiyXh1Ci+hVs8+SEcg5sDKMboky0AmCVpUW?=
 =?us-ascii?Q?o/i2atkxgKQBoCAjYPNRDd3dQmRi6YZAsyVk0uLOgGdZHTsukxa/iVaEwR0Y?=
 =?us-ascii?Q?JiypC8BjYakDmWFkns/0JZmc0T7LldfXaoAfX4LTVrg3W4fq3E8MrhdtIkLS?=
 =?us-ascii?Q?wTLvDqiC5mskxLIJKmplumliBDmSXoqm2QJzPY0WPJkaaPqQ+P/rqBr/2EWu?=
 =?us-ascii?Q?+lgQVVGFSA5XShyTdinclT51UWu1m3w3gak3BzhQlI0qQ7w5tM5NZ0e0KjzR?=
 =?us-ascii?Q?4co31byxBWXZWU67ZhX1bXIQusU0YlzVdArTG+xZPbp6UThmCkPs68DrU0wy?=
 =?us-ascii?Q?K67Sw8KMGI30BoucYlyihHdCuTn9Ino7f2zGhEMRit6BH7w2IBYcPLaf198P?=
 =?us-ascii?Q?n1cOChCZPlUfnRH0cAh0jGUwAck2yoQ/cN+a79gmWsjdYzcl2ZUh4z25eFYD?=
 =?us-ascii?Q?yL/URo2zGoJ5/IRWjVVIgUHbchPnnOdUTO/uS0FyLwkl4vHZzeaBwUY2/kbN?=
 =?us-ascii?Q?rEszUn7LzNXtETa6hj5uhKuFBpRww5pFM9L6VSFird5HnerGLp4KJ42g+WVL?=
 =?us-ascii?Q?FsfWdAuiPnkzJm+scfOVb+gheDttPjA0HMRK5mEksTDd5zJmZ1IdzxcyAm6g?=
 =?us-ascii?Q?D3lUpsToxSGrnelKgEjNiTyhQy0JyWP9M/hGoWuIqpKKkZYDIW/527l6hXoZ?=
 =?us-ascii?Q?P9dHJ5H9Z/H7sr6O2HbFiwdFxz8VALPnGsYj1QD2XqA6iEVE6IoXVeXnJxup?=
 =?us-ascii?Q?rn23lGaX6kVyFlMangx65qNfWvHXMydL2bHicYDtB5AbobObdzBqjLlRVXgr?=
 =?us-ascii?Q?to+70oRCq8oPs8RX80wgJMnXpW/ukP9ePlO3lvzbA0O0CoSNNSxxRB1H+VFn?=
 =?us-ascii?Q?zliEj0Fdsese8R0w0h/CKhdz44e9AxHdiYED6m3pMM2sFR/McyJIGVxRHOW2?=
 =?us-ascii?Q?+z2k/B6p/UIN73MXjpT/H6OYUMsNUKRtwjvFlFptojeorOEp3RHI7XEG/ovk?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ef270f3-67c3-4c93-cd92-08dc44309394
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:11:00.6718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: odDzN5aaxj9NPiLP54XHOs2FQkZ/bo4qiydPds9qSqao/OFWgcJ7Qr7c7ML3aJNZ1XCi8YSkSUnZ9jLNn1m6Sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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

At this point mem_access references should be only used as inner
points of the execution and a get with synchronous resume previously
called at an outer point.

So, before killing mem_acces in favor of direct accsess, let's
ensure that we first convert them towards the new _noresume
variant that will WARN us if no inner caller happened.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 0a51eddd264b..6ab402153242 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -671,7 +671,7 @@ void xe_device_mem_access_get(struct xe_device *xe)
 	if (xe_pm_read_callback_task(xe) == current)
 		return;
 
-	xe_pm_runtime_get(xe);
+	xe_pm_runtime_get_noresume(xe);
 	ref = atomic_inc_return(&xe->mem_access.ref);
 
 	xe_assert(xe, ref != S32_MAX);
-- 
2.44.0

