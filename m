Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CFE984C5D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:44:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75AF010E761;
	Tue, 24 Sep 2024 20:44:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IXyid2g3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6BD210E763;
 Tue, 24 Sep 2024 20:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210645; x=1758746645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=jGEXJi12ALgy3inKTOyd7Yp2XqZ4J8vum0/oRQYngOE=;
 b=IXyid2g3j93FfVPtB8G32uzSpXa64McaLUzcZw0AOmvuLqpqHEf0EB+i
 XGiMq3MET1tleWg94HGFIREago0T0G1cb4K2yxCyLOaW9AxEvU0niKsp9
 /wPoUPRDlrpBkOh+OG4ESMvyFgrL6qoeDbH+Z8dt7vEZtgEoIlhpHLd2+
 TZ0k3H87G8KQRzwxEBQ9/CdPIoU0KCXoBUvMYo48VQOXAkkGgunklcKBj
 f46NDKEyLVqVdYGCqbys2Tpfl70Z7eTSH/ODyq6cT30qMI8RKx8Rowz8H
 A78u2a3pa/kQroRd9y0XLT3eYVkj5lupzt/SgQ5E6nG0CBFK+Ud2CuOaQ w==;
X-CSE-ConnectionGUID: HQ7OrljLTNqNJbQUwz2GMQ==
X-CSE-MsgGUID: dQSGFn6MTLCcOTo2spVAZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751608"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751608"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:44:04 -0700
X-CSE-ConnectionGUID: bqG9fh6MQZOfTWNFJjyR2Q==
X-CSE-MsgGUID: 24TVYvj1T0a88zfz90VVYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298943"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wx6HUzLO29uTo57vzcEoZUyDYjEpjslcpLBoXUo6OB9k/voOzS1+dZCQi0nAZVDVyKJ/ZFbOdrearThLPQM0GQWlG9caURSb+cg/H2F79321fF9dJLj5gdsARPpuM9AqBJ9uICzklrl0mAHJCn+SVUVVpZSxtOV+pj5upvtqryXrBGMWReOz112B45Ydk3WS5cTHojTCL4QDCV0NiVIS0IYTX5qBOVekUizCTlbrWElGl/ECu8Ge4gRsWPYAqLI0hHBCHdCq8wnq0apUSL08tipAAKbcqQdluVk+9gT6gmSdWzyLN/eYl4+kICOdtV2ohphFuWNUWnnnURZy7/PJSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oniIeQiNUkuJhLfnbiUW2DuMMBZRakNC9v5P9wfHyBc=;
 b=Zyo17KKRcF2/MpDBiUGhChGpgZcwKFf+8THk8xHDyUuJ5eyKlYNg+J2F12j8wrmReuQhnb9L3dKKvBNh1QYL5f+mrQ+PVAoGz3EA1nzlzCGWOVNMre578FKp33ZhspDIUMpLhS/mpTglohZulSlLpTK1yEKlIMfH3ElGwb8qPT4FtbSfa3HRjB0dbomYcQuBJCEWPSHk5b7ShwbhJz+RR3AYwSugGsJrbONdnWp4ZjYsPTwpdDDhhFBgKXEUCEf+s37n39jHpL8XnxWSLqveN8+5c95zziReDEWmuNnlmgg66H1o1XpS1rmVcJjq2sZakEBR526RkkNSCHvPoKeJPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:43:54 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:54 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 27/31] drm/xe/display: Notify opregion upon runtime
 suspend/resume non-d3cold
Date: Tue, 24 Sep 2024 16:35:48 -0400
Message-ID: <20240924204222.246862-28-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0118.namprd03.prod.outlook.com
 (2603:10b6:303:b7::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: e1df608c-3263-4c02-38b2-08dcdcd99a85
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XN2NvguClyWkYnuoBaKjI0/Xpb54MUhyl0YtsZdqIJR/dGIj1Fvlc1OiIlEa?=
 =?us-ascii?Q?Nq8ryi4UMYACp5RESNEn/39bW/7qCTx8e8dokOCCQTkXwmorXpjxj9AcSYCN?=
 =?us-ascii?Q?nSnZG3cSNspd5iWpBq1bdeD3Aa5U8QGgV4Mw4KNGOD6OCXbbdcm1TdIIiVv/?=
 =?us-ascii?Q?xklgAQT4Etc8K59XgVzpkKX138SdEPo6fFeLOS9uBzcLrpoOvlk9AcvA8GRq?=
 =?us-ascii?Q?BtkiVKIUM2xl0GXXx7DNJ5lnb9up+RQ06zPvKglZdUPsPxQtHqVeGpuTdZaq?=
 =?us-ascii?Q?cvAOz8skkoxomFWl1IpJoVFZ45QeUot7IXq+gcxL8dEOgmUIZKo8XdPsGbjB?=
 =?us-ascii?Q?fedkkkG4gJeMEgJxbwkQhM08H7yX17KDg3zTuayivjvOWM2biDC/EpUZC/1d?=
 =?us-ascii?Q?SqUrM3uENRwEgb3ciUBLxwfTOHrlJWC/jg6rP6MUbC3auU6I3lZr23zkQT9X?=
 =?us-ascii?Q?HKjHvtUXvKgxslI/Ul2StnVETnp2OdPgR++2j4mlBVPx1wNbtvxWDDGv5NH6?=
 =?us-ascii?Q?A8zsFpneM3LENW4CTS38XN0oDRPs54JadvzWZu6O0e28gtq//EFxlyuF9CVT?=
 =?us-ascii?Q?t168/py6vyVMJMD5cke3yRUP8qZTSv+pGar0+wkRN2JILmlemR4JJH1xxION?=
 =?us-ascii?Q?jpscbMwIzDu2w8947M49u6ZiWah5Vcg/MAw1AoEtlU12uNxgiJP1/9KZuFKo?=
 =?us-ascii?Q?EgweOPKTA96Zp4uWkK5AwrzlT0RFHNoktlv1Ks+VOyvoVcesFkxrGCkdi4T6?=
 =?us-ascii?Q?WfttEJFGCqgf3QZb6+yKN9QgOC5tnkDHizDc5ofN7ZMCFTRxPtjrvMomjBAA?=
 =?us-ascii?Q?hWi1VB3z9Kopjo3P7sKU+Ib8m4qWz5iZVHjwa6mj7r5UKRnEzHuo7KNJe/jC?=
 =?us-ascii?Q?kxoKIONATO4TRM0fxbyqGYiPF98oafsmkVwvYvKcJ5d5/tTp1itzMTtjsppS?=
 =?us-ascii?Q?GqGij8D4RdmdY3KERFDF/43cP/hlzukQlLV2Qa7f5CnDLdKlj8vV/dn7XdrX?=
 =?us-ascii?Q?AR9C2hE+SqYEUCHI8D9+lR+mzSJEdTiDfvSr3lbK6ppkTCUVo2uklPvE89gW?=
 =?us-ascii?Q?hEo6TYwtyh8AgbzWfEPgkLoQNu2yb/KZsbPDCvdSsxxlwfq7RQM6HVtOMFMV?=
 =?us-ascii?Q?C2mj0MCePxuqZYIgyUbd8pG+ILFnub73MAndwew9n1bvSskXjabeLh8DNxqg?=
 =?us-ascii?Q?R66Uyp55vonfDhcxVSf/tfGvrXEnVFyhEMPD9duOsPVOrmMPy4t7FvWihCOl?=
 =?us-ascii?Q?x5PxijCtmEUWJvF+wqVPnuONgUVdsB+/T6AFOCA8Ow=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4vdg5T3Sk2hzEphbxA5aBvR3w2F8qXyQ+Et5w9BBy+JxxBVNp81N9xBrQFpe?=
 =?us-ascii?Q?xCBBuxjhVU+g6D7Y105dgxMn+5cX4jzVerzWQ1HQFEY8E0WuQPae2p+jGW5u?=
 =?us-ascii?Q?sK6xYhC5YtDq/bmrT7ytStI0Lalv6F/p4Or51rXdxvlY1DFYDe+0nvGNH2I0?=
 =?us-ascii?Q?QEVS+9pcf9yF8u4IVVPl8u0hvj00HLrismlqKB3R1O0WZLdm0OAGwE+VsSGd?=
 =?us-ascii?Q?/BsYQM5nFdNvJJwIn7jUJ0lZtvp3GCzilsMfg/0na6QU8d9qLAo5yMoxwouC?=
 =?us-ascii?Q?nXOnzu79Jg8a3vh8xJ8APilaDfsP+HJS4QPYOpPPcqLSr8DtpIG8yIy96p+Q?=
 =?us-ascii?Q?jMQC5KsoEBWb/DXIjFsKZoRQrbNKEF5fAJWeaMqZqrtvHkw7Xm29luFUZlMv?=
 =?us-ascii?Q?qXx6ccAuSInecmJTtHDr5u0vScYKr1Ep2Q0bsizKLB7Bwj65FgyXKOj8nT1J?=
 =?us-ascii?Q?NIOevKCqI3iqlvRBpEKVtGcvPP/pzoqBlTVDUE2ZnaB5sD1iUOMjgkFCv4jw?=
 =?us-ascii?Q?vfowO4RwgrK6gD3oLIW6wdHRoWYl7x8Jwh7yKwSZ/PWemJ0VJeu8NbHoXHup?=
 =?us-ascii?Q?f09GQqst/8M9iYLqhfgSeABsxAMcFpKHsAdipjyJG3vJZeP2IJJhE114UI14?=
 =?us-ascii?Q?Kqepvu2RxtfC1qgCPNVoLag0lT2a/WjUkDzc3FLb4whp22YAnFFm/TfWuDZb?=
 =?us-ascii?Q?pWK3Py4RY3T60CmiasyemRG+PsRFoXSaggQMr6n1CHS55A/Ba3xbDVJnHfMU?=
 =?us-ascii?Q?bCN5EXlXo1dH2b5gvedFrc61K0AYwzzmu8uEa6vS/9wH2gwF5xApJy1wPBWz?=
 =?us-ascii?Q?+J8GWBl1Y6/n425S9Wqohpp6H+bU/SI50pY78szKs0Bt/GA+2ymJQ9lzD/L7?=
 =?us-ascii?Q?bx9xjvEb2FOW+1FZP7pA9SJNWrJwe/hbvggy12cNC9COr9gVbu7O/voS/O1b?=
 =?us-ascii?Q?GY5RimbZ3F1ltOeWgZsQK2r8ibPpjqVTjKh+rmiPu7k+CrKZ4n8dEXzqC+it?=
 =?us-ascii?Q?at9TwiVXjL7P8CVSMWSU8Xud0DT9d9NIQxu749SPvkgGSRSjuoleLy+DJD3e?=
 =?us-ascii?Q?Cmhh21i/AXDZQ/pqmjMGHdN2RItrWnnncz0oNDKgl47q/6BbzDaeWD02kC5g?=
 =?us-ascii?Q?dVXgRZw03TSSgVJ/O/UIdE4kkWs4TAo/RHhLfNKAKxoT3JedZflT1zTnyfNH?=
 =?us-ascii?Q?xxL/L+5SyHyd4iUoQMkobx7Iv0sXxd+l3BSCwgwNpJhPEiyGsWXhXeByPl6c?=
 =?us-ascii?Q?I/fj8MoEJgXpSySwC+QQdeB42VhEM1wr/cHcX3eikCImkJJ2T4WxAEkE0I5B?=
 =?us-ascii?Q?sGBOv7GC5UUF4Yvx+ewNcipBHPSZG6sbMf1/wrJVaLPSp3DNXbMtqe9h+NNc?=
 =?us-ascii?Q?9h/ZtPvRvboUG+T2cvc4NR64GwBIjUKPIglgTPzjTm0G8KyVIm9QpXmjHru1?=
 =?us-ascii?Q?Qfd5myp+QOPVh3tO3ZkGzNBo40iv6Z+I6yg6jwXU2BoSAiJ7vPoDft/Ufryh?=
 =?us-ascii?Q?H9Q+nCgREeTDaOtOL602+xC6KXq/l7SOiCfs4HCXvsCGhwGIkcrgG8uPPhnJ?=
 =?us-ascii?Q?1jbZbFYe1DA7/L+4b2BlgIJDeOX2hZ79BvmcTa9dvaia8QlH+2AUc0Lcl786?=
 =?us-ascii?Q?/A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1df608c-3263-4c02-38b2-08dcdcd99a85
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:54.0248 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /xtLMEP3ZbjFUzsO39PBy3gmKf7IQCuAWjJOG3WNAt0BG0tZ25mQsC4LR4S+OAF5xe/8E1HqrjWvhlRmDZSVnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

Opregion needs to be notified about the power transition even when
not going to d3cold. This aligns with i915 sequence.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 44cace0237dd..780c8d7f392d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -447,6 +447,8 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 
 	if (xe->d3cold.allowed)
 		intel_display_power_suspend_late(xe, false);
+	else
+		intel_opregion_notify_adapter(&xe->display, PCI_D1);
 
 	intel_hpd_poll_enable(xe);
 }
@@ -458,6 +460,8 @@ void xe_display_pm_runtime_resume_early(struct xe_device *xe)
 
 	if (xe->d3cold.allowed)
 		intel_display_power_resume_early(xe);
+	else
+		intel_opregion_notify_adapter(&xe->display, PCI_D0);
 }
 
 void xe_display_pm_runtime_resume(struct xe_device *xe)
-- 
2.46.0

