Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A95976F7C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 19:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0427C10EBF4;
	Thu, 12 Sep 2024 17:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nkIDrFMn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D697A10EBF4
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726161954; x=1757697954;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=7nZ51yG4Uaz1G0gbEq6HheJPqe5Skl5DkyiSEgbZjlg=;
 b=nkIDrFMnIJ5GfIJ5WHYMvqfid8hVYE5YY4iztkNLtaYBPc0AiDoYPhzJ
 rvUDf44GgQJi/Xrn69wzXZRB9SlRDT/Ufy10pXSglZhNZT/mHAXZgcS52
 Ja4ws87UrbjGJ3lxVUrVsqZnCk8tDTAgv4Cb3sGm06Fbb8T3NbCVoTzGX
 BnnBVtJy6uLZ32ZrJqmXC3tRSbZi24xUEoVRmjLG4ZWAGrgy5fJWnLU2j
 PFtbom1FB0SA1NiXXqZhSjwP8bHpKVW5Uw3h3TZCudoNtoVPPE43f/EUx
 lLtvoYyt+skxKurRhV9UsOaJM7VDGRlRgwVkmtPpmiXZN4AYFq7ES5Cj9 Q==;
X-CSE-ConnectionGUID: ZjVd7+fYTtCuXPwLa1TTsA==
X-CSE-MsgGUID: YMWCBBEUS6CbewmNHELe2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="35703611"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="35703611"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 10:25:53 -0700
X-CSE-ConnectionGUID: nuLup1C2RrKhFf4O+rK0fQ==
X-CSE-MsgGUID: 7vxcBNmSQ220DnRIdg1Utg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="68299130"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 10:25:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 10:25:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 10:25:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 10:25:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 10:25:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GOnEk0veqkRpfQeHkLpEhRr6RifdfZ7Rp6GjMdHdujSm2vP+RdoFswHn4YAewnz3fcYPueV0Df+7Z9i5k84wadAtA/p+F+feE1Fl9meMgpb7n7b1umTvCgTZ8WipHghOCCJXc7n1R83WpuggW3TWnC8vOuMobAsvXvrBqLBkk7MwVSiBJpJgDukDz/j9+DmTGovsHYXJviqHIZ1bvF2d2QRpzjWVWp9EHYUXtRYIzYkNsNP0/fwnT7W6im7h9LCLehJlCL8kA4mr1KKXrrBOgehzbxlSK+dTMKksYLt+6XdHQt99S5NiDbujW8ONiLgS6w0lIQxKEsWKLbvKoQGSRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BGJ0nPGsppaoyNX1rvQJUB6UH3w+kIvnWuB5VXPJzt0=;
 b=UZToUT0Z4CyR3R7Cy/owLwP+cRmR0mPRdIbuoy2UgUfb9ip4h/l5T6IVFsRqWfRNBj53c2n1JlSExr5Ka7TKh2ydHCDcKXSR2BPm6Ww7Y+z3EQHz5de+XO+u+B+2aaV8dTbtcXl3N2EW+VoHFRI9HiL4jJszgUFOOjFD88PGqTo79T4BXq/yc+9p0OYbFTkQpzlzDiYthC0JeL75Gk7cDgR9FQ99I4VEguV1jcJ6fGhOKRI7Gsv/Hk2G/UuTECcArY2IdL8yuQ/pd5FzyNqICYAAsHTnugN9DtbePhX7UV103SxeT5ZriB0ZQ44mZR9V0BMpFt0/mqt0gpiVF6RRxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB7555.namprd11.prod.outlook.com (2603:10b6:806:311::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.18; Thu, 12 Sep
 2024 17:25:44 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 12 Sep 2024
 17:25:43 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/3] drm/i915/irq: Remove duplicated irq_enabled variable
Date: Thu, 12 Sep 2024 13:25:37 -0400
Message-ID: <20240912172539.418957-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0295.namprd04.prod.outlook.com
 (2603:10b6:303:89::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB7555:EE_
X-MS-Office365-Filtering-Correlation-Id: 07968eef-191b-47c9-e41a-08dcd34fee52
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vHzbuWG6l/W5rQf/1EkcE8tV3w7BMeIwRru8x4gmSPEYBLcukABuMRGwmg5B?=
 =?us-ascii?Q?7kQ6lx4JWhB0TurHq0ZMMuCj7wJ0x0Y9Q3QtCACCSb4kR6R3A4PslwcYkamu?=
 =?us-ascii?Q?3J8HnfCUF225eQ0DLrNIipdiDL/pLVaYs5Ih8LriJtsmpX3hG1b++0bwUO7U?=
 =?us-ascii?Q?PSNckKReN+OnlRjZ9ziEL1/I7JP9pJR2WDpFXYtZUksxHX4yotCv/RsaGewZ?=
 =?us-ascii?Q?oG9KMb7VkFMLc1qaY3DQTsSZlpFFWXrZAoA+Q+XQhczKY9TNyPvJGivYq1vN?=
 =?us-ascii?Q?yaIPTYi8YySYWFtGPsLwh/joMmTVZZCMtz5JhgDVYpzO54P870tAyitTSJr9?=
 =?us-ascii?Q?LXL0fU+q5aLAdcpVtqdH6x9efdKJoAgZ6eCdIMYrylsab5wJ51HQ27vcUcjE?=
 =?us-ascii?Q?PVGSV9iU1btoIrky7uc8V+xbr8xaW2MIZp7MuKAAyOEgXFq9LXMgyc3IEkDd?=
 =?us-ascii?Q?w6yyv77oV8JGubCy2SD4RAbEVQn47DrMyZdA7IdT6CFq5cDB/QoC7Zop4JDc?=
 =?us-ascii?Q?muzqeUlRPZlCOuVkOGr7uN97AJlqoFeSt6s/+ARH6gW/McwHgS/1+Wf3uPlV?=
 =?us-ascii?Q?7xqcTNl6MhijCeFxvaBugdSDXgNd3gAYs1hAVqe5Oa6S2R3qxNZ37hXoayfE?=
 =?us-ascii?Q?XZ0kTSng/zUxYeGwCWRid9xtHHZ7TMAe6P/HpHVjwq5oiObFn4RoRPUfx/bP?=
 =?us-ascii?Q?Yx9H4M0rppVDLvDSmcrZg5daLULJdJjt/0mujlZLEtidrtJ9RaIEqCcUnDQ/?=
 =?us-ascii?Q?JHQOKF/homEzB3NiMZqlMVCWWCpA5Mvolu2SH5YPyfOPlq4EtG+kdPoGjuQa?=
 =?us-ascii?Q?SpTQ45DMuCUTxRDLVs9vT8cByQJPO0S2VBTK3tmtmV4rYzQODBBXw41+mT0y?=
 =?us-ascii?Q?WSObtdAPgv2y2l2q84Iw4m/CoTPjx35DxLB9EN6B4wvk9K1QwHEIbAj3vr3F?=
 =?us-ascii?Q?bbUCuZcrOiOS2VT9UgW3Q92muWiDY9PmNc2MDoQfIjtDOVwBpc2AMWmrzxP1?=
 =?us-ascii?Q?aZuXGB829hEsuvt8fL96Jxd/RetuOE3dWJbt8BLSpT7mI/KAvscu7ArfQvK9?=
 =?us-ascii?Q?HbgzH4bj5oY8A+kNW2jGcSbQM7Vfx7aru0dWTSfLkJzDmWyF/1yx1f3ILnvM?=
 =?us-ascii?Q?ugZ8OVFCJqS5nDQolD4FksyYlrlxWXtH0H5ajhznfghivZze3ktdxb9EZwb7?=
 =?us-ascii?Q?BNtKau1GSSi/HuUsKbMypr+9+HgYRNNlcmBU6QoYKgGPbsxeUkcqjFoM0W+w?=
 =?us-ascii?Q?YJ9Ad9PHhpghtxQBtWWIfmFDxKthv1aecyhnLOlbW1MxaRr+vsau/5aRYTXw?=
 =?us-ascii?Q?97o9RidU2Mkt2Jx3Y7yff4loMB1Jyj9j28lYjXGGf0tg5g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QhBQ+PZQozRi7jbD6884blOgcK1DLvC/wx/gUXJmda4O2+EYfeQv4z3X4Dy+?=
 =?us-ascii?Q?hI5Q5IKmPJFUkEUbZh6n8PBPIMY1FSU4iYGpwIX3YPO7kRCSYYI7te4+Z3P9?=
 =?us-ascii?Q?gAeWq0Jqxxj6nNcgvBWG5EPNKAnd+jCKlm7tWGQ8q1dCBAVmKDGNNkQSYHap?=
 =?us-ascii?Q?SibOmzBXQaPewM/uV2IibT7SGAxqQE1SsG4M3JcGdu8AkEv1OxPdk4iL2AAm?=
 =?us-ascii?Q?rqUNRqE8NxuQFgOxEhLeaLDVDNeTStUmvr4fPEtAcgb0bt7CHgJiZO8Dzk7P?=
 =?us-ascii?Q?uoPz/wAySv9R2/G0+g2rHpfOFqyAMCf2IaBgZdOEUIHWIAfJzGXN+2fnLH4b?=
 =?us-ascii?Q?DybGtS+mSj1tj6FESCrubIaxkJ+g/FKfveLMLOYfaNdrz36+giIWs170KM4W?=
 =?us-ascii?Q?JQ6+F2PnAb5JzjBrDLlsFQJvqE2G34mxwX0GrcN76Dovf39mVZ1TXvFvtDAe?=
 =?us-ascii?Q?Bhyb3CvfFfGQgMhIBLK5RzgkPKyN1iriDyYyhONcpx8gM/qtMGs9fIMMKoEa?=
 =?us-ascii?Q?zrZrW80EScSQJg8bWoXvkH5EM0g5xnbVnAr2ONgjqyrBYLj0Fvv9QITLjXlG?=
 =?us-ascii?Q?k+9MXckjnNiXheY/4q6oQ4BEdFmJnBBu3IQNDM9EwWDD0Yi/Dvudeg5eDki3?=
 =?us-ascii?Q?rOv1eJaHpdB8ongtXDqpx6Gk8833kOKJuh2NlyWThmRn6KJHbTsCL9ZRBYpR?=
 =?us-ascii?Q?7xEOkl1YckbhoDjJm9ovvvGnlq0Rld/L7OXEhaTUBJoQmrIlZMbAu2edgElD?=
 =?us-ascii?Q?kHCWhAfCoyuieCXEdukeKUBGaYC5sdBY/V+TGMU8PzTQPIrfdmWez2JVxn2w?=
 =?us-ascii?Q?w6ppQpKcMtzGtF3lhA3hQnc9VA+/SzCrb4mvUjX2TaC840NoyAv/5Z89LSzv?=
 =?us-ascii?Q?AwoTK+osGLJsAzOPFT0VnYn+x8iSGpiEuxOr1omlSe4l4qNgW7lvnwzAJ8OH?=
 =?us-ascii?Q?KIogcSiJ/1jRBvaZloyZDYaXPIl2HQRbXGCwj2BZMTha3hX/6fEPTe34xGLK?=
 =?us-ascii?Q?fDwYxsEYKz/2mZHfjDluAgImwJV2DZsrqdHrk0WteNG9sDdlaVBrjoHffVao?=
 =?us-ascii?Q?HhaPqTQi/Q+2AuGUA5XRvf+tVPqL1zZTAxOBPjru/Wy/CdltnCVgOu+vWj32?=
 =?us-ascii?Q?QGGf07y0leAxCFqmvHAu2IbnyKx0HhLbMRw316TTPEV/OEJO5ymyYI4KUTs9?=
 =?us-ascii?Q?aaULcTMAGa3U8ABaHAIGcAuglKUiq+H9Bw7wUF4isFPRbFZ8y5j+TxUGIXkM?=
 =?us-ascii?Q?4/+4KOoc8PlYLj8DE210Qj/CT8Cehvc3C0fwSmANqQiensZbmvzPhvJi3szg?=
 =?us-ascii?Q?lMNT9tZpDP5yQtuKNvMSI9a1+C7idofzzYHwB+FVYxZGaWvosr1JZVo+LHhf?=
 =?us-ascii?Q?9syWO/YxQAaoRw17cSTUUfJp/1xIsEP3e4/4m3F5jr4zjgM5vzKB1U8YBTGA?=
 =?us-ascii?Q?HqBHH5ayF2ylxNLqgVtA9soAG8LbrR+MuWGzsGOx8qHjz5sWEm9g27RRdK5m?=
 =?us-ascii?Q?h8wNyhVdvl2LMpszUtDTkX+5moKeADCFnBkHmuHbqol3UIFL/M2HqOpNK6aO?=
 =?us-ascii?Q?yRsR7Nv/M5TEAe2IBOq6d7+26nh91a/ehm4yX2+soEkCWcphbGcdAEyvpte1?=
 =?us-ascii?Q?1g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07968eef-191b-47c9-e41a-08dcd34fee52
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 17:25:43.7258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Hrygk/Vn1WCnEg9EySXcLRfqKFuH2kBO1eOeKIHv9uyb2kY3ZtohdLMRmOiawiVzBvfEqK5rakwAtTBl9okew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7555
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

Let's kill this legacy iand almost unused rq_enabled version
in favor of the real one that is checked at
intel_irqs_enabled().

The commit 'ac1723c16b66 ("drm/i915: Track IRQ state
in local device state")' shows that this was a legacy
DRM level irq_enabled information that got removed.

But the driver one already existed under a different
name.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 --
 drivers/gpu/drm/i915/i915_irq.c | 8 ++------
 2 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 39f6614a0a99..aa3000349116 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -343,8 +343,6 @@ struct drm_i915_private {
 
 	struct intel_pxp *pxp;
 
-	bool irq_enabled;
-
 	struct i915_pmu pmu;
 
 	/* The TTM device structure. */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 2321de48d169..9f1a6f692dd1 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1406,14 +1406,12 @@ int intel_irq_install(struct drm_i915_private *dev_priv)
 	 */
 	dev_priv->runtime_pm.irqs_enabled = true;
 
-	dev_priv->irq_enabled = true;
-
 	intel_irq_reset(dev_priv);
 
 	ret = request_irq(irq, intel_irq_handler(dev_priv),
 			  IRQF_SHARED, DRIVER_NAME, dev_priv);
 	if (ret < 0) {
-		dev_priv->irq_enabled = false;
+		dev_priv->runtime_pm.irqs_enabled = false;
 		return ret;
 	}
 
@@ -1439,11 +1437,9 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 	 * intel_display_driver_remove() calling us out of sequence.
 	 * Would be nice if it didn't do that...
 	 */
-	if (!dev_priv->irq_enabled)
+	if (!dev_priv->runtime_pm.irqs_enabled)
 		return;
 
-	dev_priv->irq_enabled = false;
-
 	intel_irq_reset(dev_priv);
 
 	free_irq(irq, dev_priv);
-- 
2.46.0

