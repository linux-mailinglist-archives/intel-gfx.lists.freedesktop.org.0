Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAB77B3BAB
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 22:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0651C10E148;
	Fri, 29 Sep 2023 20:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFA3810E13D;
 Fri, 29 Sep 2023 20:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696020900; x=1727556900;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=PF20PM7FMgyD6prs1HuxH66t+LbtpQ1+x7G/VS+BbfY=;
 b=Dx66iUhgpZ3P5E19Z/+En+zumWDpOSGysztX1fWKgb1jHZIriQvx9LSq
 nkRIKAhY2jJjv9vAr1TyAXnS8AKcJH7mbuTgi2uNn5IjACUQ0zt7nhPjH
 8XK5yGbOBRsKFEU/ElrWMPTIRyDiDhQD253Uv1TEjKC8/WfDXW4MDgT65
 6aF7pSsTP30orJd/kV9kTwPFvdmfZeaHlfuDRWC+FosfjMWXYKRvTziz2
 YrqyTQ9fUMKLlTQA9JjDvFOHFbf4Muw3Tm1dKKiv+qluI6XQiHTvRv2pM
 4ssmvVIm+ISye+NdO2Khlg7fo1KwoxKQzi8QNrxc6ZvlXNlwnsr/8PeaM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10848"; a="362626706"
X-IronPort-AV: E=Sophos;i="6.03,188,1694761200"; d="scan'208";a="362626706"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 13:50:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,188,1694761200"; 
   d="scan'208";a="941077"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Sep 2023 13:49:55 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 29 Sep 2023 13:50:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 29 Sep 2023 13:50:30 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 29 Sep 2023 13:50:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V5KFRFGgYfu6NG2T4+yQTwMw1hJp2MeprJ7j3cujqKEzP5SO23tUYpoou9tH/kdi5GlBNpOk6GSejQfLSB8vor6XPzk3kjQI4cexmfSYRG+uLvyYL4R3G+QabKAgTXj74t9XNuYVekgkPCVGI+XvkwLg3A8/3rQhGxdu9tsnsCoCOfs9zESW+gR6Js264r1OJponmyxV6VG/Va2jNsw/yWbsckWXnNcVBYd8wJRdbTqTloYJyvNFI5Ol59URhOSN8e1RiJm3lDXtJK8DwKCdEAp4n9phHNX9CfkqwWB8GAAwZxocymUtmbpEDWxtNyB8HLl0LugFTsU3Z6g1ifT2Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jut8LzOg5TQYYTj4krOnPJWm1FgsrIrylj73qrrSi5U=;
 b=jObPK6QBDPe/04pz4a3cMe/aTb4LG76zXcBsEIZb471w1vslRp7OTKb82M3I1/ZJ/X/tI/RAU3kVIuWfO6NiHH9bKiOcJmVSKpcIgKC1OpvUi+d39wXqXkiKILTFEVrVRMh43t426N7RBg27ERy802RCayNjO08S/Nux3Ow4CdBwilZsEpoOiXRQwcuRZZIbWMihyL313on72mD7K0Jtr08SCuoj6Zmxx8tI6ZaLi8u+Bu3vpbGZqcYymkzYtAnSFcwN7GbaGKLCBV07svPmvYfiOELmmYtfk/W+za2pVLxY2Nx+8QyW7lR/c9K8ysFjRXLf7gAJHCHPbkiKqBLyeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5485.namprd11.prod.outlook.com (2603:10b6:5:388::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Fri, 29 Sep
 2023 20:50:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6813.017; Fri, 29 Sep 2023
 20:50:28 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 29 Sep 2023 16:50:23 -0400
Message-ID: <20230929205023.1202735-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0103.namprd05.prod.outlook.com
 (2603:10b6:a03:334::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5485:EE_
X-MS-Office365-Filtering-Correlation-Id: fb0eb5f9-8695-4591-b2e0-08dbc12db6a4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HlS3rHvbcmCadNUuXhw8aGP0EYTi0+vk5JDYdDe9NBKP2yYF00JGjeesNJt+iUuMQUfCHbc9ypJGjmlu/ou6x+yct8zsO2Z0e3PliSuRe6Pwy1df+bYFdjEcpf6M09u+0uHk48e3QM0f3xvZgtwAKpG+aAkYG81vJiNMnY9u9LA5iv4tSi1e5p+5jNAj3573geqEcXhMwB2DApCs6wHNNClMluvYDaoZdifnujxm8xvAl+Sqq/GzdPMVMSIWqCwSg32RMEQ/2oX+pSD2LM68yDBiAZof0FucZWwZTBCnPSxLC/OPqRCzMN6g1fx2kCJfF8m1TSF/14G5YRcChKzsTlBf3+t+JLTcGIurEf1+fP5ZGo9m42Bly7sMrnh1Yj4/7xlzFKqcktRAa/b6NPtg+sHqsTwLsy2/kL1BqhfftB3Sb7Q1p9Iq5CC27X+W/QIlYxu4CtdFTNCzUv31bn6mstfIVxEgmwdOV4CSJlrYrsV57Y90FTq4B4hR1LKOgvPGzZdS6xYl0MySZyoQ6ZYthHMAoqqLY/iu95xubg2Irg0jYp+6AQbOr99yNZWhv9ZG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(366004)(39860400002)(376002)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(2906002)(66946007)(4744005)(41300700001)(66556008)(4326008)(8676002)(8936002)(450100002)(66476007)(44832011)(5660300002)(478600001)(6666004)(6486002)(6506007)(1076003)(107886003)(6512007)(26005)(2616005)(54906003)(83380400001)(36756003)(86362001)(38100700002)(82960400001)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fcGhFhw+F8hJTpZ4WVzYxKBIUUgwuhZKZeVO2TAEA3rmV5OqlwqlqvZsYwDS?=
 =?us-ascii?Q?MX4OUziyPtZter3t5UV4JGjBLxWfWnQoKhtjHQZozfqN7dDMC+cWhvWAB8El?=
 =?us-ascii?Q?GyqRj/WDIS5siwSEJ6qkHMAqgKGJUJWNhIImH/fPNCF9AqvurvBY5KGRdYyF?=
 =?us-ascii?Q?22QNrBqLRgZzWUEKpjUlNhZNmScbTmRQsgYdcagPFthQ5inrdAXpbkl6SzuE?=
 =?us-ascii?Q?xUxMlg7qBbKsZE0vy8WfiTUQbbq/Y8+gDkq2PVitwB6NBNNzN2dWUiq7DF6e?=
 =?us-ascii?Q?Iw5ZvFiBylSaxYOHQ9p/NZJ538gnOTMX+OozZOlyPFa1hJ/8PLgUYue6UyMM?=
 =?us-ascii?Q?YVl6y+mlqT2A5Spfdmy8d+vfLSnu4vwsVV30+elC5/seYwm6/UxheR/xt6Cr?=
 =?us-ascii?Q?RSupdLsB4FZEmHCP9pm4vI4+aeyI26QdaGUX7ysaoyP7jwL7XDOspO1tJUn/?=
 =?us-ascii?Q?8l04RZhXpfxBFGhMfMYHC7R69eRSBspbvjLCCRPJ0yCD9DdQ8Q3q2/SEtlti?=
 =?us-ascii?Q?Az2GDAq4KiFgICMbCBOzPuB1Dx5YXm0tQ+MNDEHd3V7M5waQxgbXIe+0132n?=
 =?us-ascii?Q?Pw2Qw6DLw/rmRV/Aq2Gr1aK4xitL33vbphhe9uR1Ol5vsS7zamEvnsWCCF97?=
 =?us-ascii?Q?CGJ+JB5eQAZZO7hWQEHnXf/tpAWEIvaW86MtKMxnReougrZjULvl9hThk4mA?=
 =?us-ascii?Q?CD2NeLRSM834T7NCBJu/b54bkgxuD6kGdjGsi0QFlB8XsAsPf1XxAMqiJ2Sm?=
 =?us-ascii?Q?kuRml+JWOEMIBupgxowVhPOjiGQI1BxUUE+2S9T24qJymA9cXBNxaV08ijlQ?=
 =?us-ascii?Q?mbBWjB+9sGaoT9j2JWsljQ8RHpzKclQWDf2NGyKV2kFw+RhsPtNlaXr14K5T?=
 =?us-ascii?Q?xkdmC131x24iAHb9nLHqKAElZllB//IFz7GOicITbHww7Upe/r1oWrmzFBFc?=
 =?us-ascii?Q?+qMIOd8CqzM7bUzW2X4b4jnR0r7myibdEurCbyyfa85TmGM24t0o9WtDC0AF?=
 =?us-ascii?Q?KS2b/avKqArrhq0YyxHm1l5/1VP+DF5C5GZRraIDVbgvMOD9ZknyLGn/LROY?=
 =?us-ascii?Q?A8YQ0fzsIU35n8HQ6ZQAe7AwQF+0rtHgKO2JYvfnHcpzAT3l7az/k5zM5FAa?=
 =?us-ascii?Q?n8oQwoHPy0sAiNvVCZOR48pFrCPmMbfHcELMFFwQTZxjgHOJTF/+DDXqHGLd?=
 =?us-ascii?Q?vpFtChg5BoaYMlTUCP5fogsTzBqBjoth42m0Fn5I+o2ahWxIwSkmCWLAabfz?=
 =?us-ascii?Q?D/wp3Gr3mtHoqnlkrMdHDJenWxe4AkCj3ziMA6Udkbo+P3Qfu+0eqpP/Fum/?=
 =?us-ascii?Q?D5Fh1wbAM/QfZ59mklMqe3eznl6QgMoUhSgDReTJbY0XoZCCjxOhepWRJ+bi?=
 =?us-ascii?Q?1Z3ywmK7+At3iY/W8Te6QAJEJfetgF9iegUdI85SHstsvQOF4xvvAk//Wp7v?=
 =?us-ascii?Q?wKEEotC5FzNmsNrgb4sFtpB621bzxYQIumriZXRcgH2H6skD9eKvMBm3vO3F?=
 =?us-ascii?Q?0cjdqyugWVhXGjJDgjL37alIF6YtP20IHGD4ZaLLxAGQD953imA94eBzpjw1?=
 =?us-ascii?Q?dl2BPnL7a6py4UaybvaumNOjIW+BUyQnTMaRIhHi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb0eb5f9-8695-4591-b2e0-08dbc12db6a4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2023 20:50:28.6241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FTIMDwqXCmSzjKmXGHfxg+K3QReGBizCr6fE8iGeMhFQNjWFqKwFDjG5HBfcKYpltT2/HD2vZddX5utHzxVMrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5485
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915: Abstract display info away during
 probe
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The goal is to have this function ready for Xe to use
directly. So, let's use the available macro.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a6a18eae7ae8..ce55b968e658 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -926,7 +926,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	else
 		info = probe_display(i915);
 
-	i915->display.info.__device_info = info;
+	DISPLAY_INFO(i915) = info;
 
 	memcpy(DISPLAY_RUNTIME_INFO(i915),
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
-- 
2.41.0

