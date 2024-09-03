Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E378B96AC4C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 00:38:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF1C10E60A;
	Tue,  3 Sep 2024 22:38:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q7pjlhrG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A27F210E60A;
 Tue,  3 Sep 2024 22:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725403102; x=1756939102;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=WbQJSW1tnsfoXm3OUtNMp4D7sagX4y9dkKOLnrFnRYU=;
 b=Q7pjlhrGu/vMyRUPiJjOgmG67E5Dm/ckQohkND0hZ4bw0asLkQ6UO//P
 XqQVE/0sAQrkELICNP5HgK8eKUmVt+vy2cxQUJR46zChmusnJiUvwCgOt
 W5Ygmnes8NKsS6yp/AFPCHr30ey409pW9aHDAyJn7BBpLyBIuBQi89NsG
 N2wXQiEgRekru/M5bEQJIJGQNd4DMmM1X4jYkD0qqd8sb/WWzpAJY/L8Y
 CwYzzgt4aytl5KYni/tw36hh37UvpqD/C7PNG7JP3eHYzAr5+kZ+sCacF
 64KZKbyox81PxJ5zS5PJPwS55kLJ3+kaT/vPS5dEA+lpFCXshm9lPI8gR A==;
X-CSE-ConnectionGUID: moUNiD4aRxeI3lIA7GyU7g==
X-CSE-MsgGUID: PfroZ1skRFWuOdkE+oarPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="35422419"
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="35422419"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 15:38:21 -0700
X-CSE-ConnectionGUID: 2eb0T2CoQb6hoj9L7ebQ7A==
X-CSE-MsgGUID: 9WH7cHeIQFa0v200lcHHfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="65421980"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 15:38:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 15:38:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WZ3XEcX22Faw9yOTrh+55iqmvD2kEqkuQ81BSd62VYNQyProL9G8nNLdXnLE4Ur1g0tDVgIOyfV10qjIKAivJ5VJO0xVjSzP6IQpoQ6HeC7CS4NIGEPsn+lPuUwqGPezeo25RB2x38/NKeQP2k3GlpxofgwpK2/8LwLkZKRJBey0/KI3zfug/tKcONNXk3u19C1OosPfNon5PUTRiUf2MDHy2ScDW5seZPu0wi0jKMePU2N6uCt+lbfGwLwFRHKTZ311IfFR0A68xX+lje3PcJd8K1QKOzmjlv4CmIFBDZSmmr3MzsNosjkEKJJlpk7ich9Rm3S/3L3H0Ch6Obxjgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4adDlV+g3RrJJ8v4+5lXRU+NWekL6upgc3rJzBKLoVk=;
 b=He9cKPtNxIJpaxmRq+WdcSNa/wFth+FO0D9/7CzEL/PoQpA56wg6kc6w6Vk080WekLiEykf6u+PFDlpp2aEfCd9M9/z2Zxoma0rKXI+0uKMzWXSlaRkcOI7Bf8PUcxiWq/vC3IBFL5ZHWCwp4SxRlGs30B0AS1LK2kKNJzT8RbWEcFZQKgUWyJf8bUlt9Pseq5DbrDJeMVzWGUieL2ijXdDap+VIFUXCPgs21rYN4mPDtxk90T94+N3isw8IVCmlzIjH0PRibumI8XKls/tJByw5NAgFAmdvnxQBL8nKB/V63Jr/toXCxaCNK2uvUhNXYaq5kAIg4sxLhaT+c0zxJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB8259.namprd11.prod.outlook.com (2603:10b6:510:1c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 22:38:15 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 22:38:15 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 2/4] drm/xe/display: Remove i915_drv.h include
Date: Tue, 3 Sep 2024 18:38:01 -0400
Message-ID: <20240903223803.380711-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240903223803.380711-1-rodrigo.vivi@intel.com>
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0214.namprd03.prod.outlook.com
 (2603:10b6:303:b9::9) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB8259:EE_
X-MS-Office365-Filtering-Correlation-Id: e9afe5b4-4d15-4a7f-8c9c-08dccc69196c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?alBSQtUIzkupXCMzN690RwUEfF/7AVZ2k3/BdvoozDP4JLuNMyaevc9mbox6?=
 =?us-ascii?Q?1K+uFyFpumZF6I+DqqRsIoqwQlAb47XQdhA0Q7lH4MuvhrL3IyVSKi2Tb0wb?=
 =?us-ascii?Q?GOBmhy4hUTX3UZ67cqbTpoMcbAD7KTJdsiIR1Q3liOQ8tpO1fbhmkL2J3Pno?=
 =?us-ascii?Q?WOc/gO/4MAd+qSF4F2A+stIDno56TwjDQYLNej/KLnAc1p5N+/nTCNEDu7Fb?=
 =?us-ascii?Q?fupjKAFWk9/evMho2N0dxNYaDHl7Fcmd++ba+221vlBfQL9rvTSCtm7H2yHK?=
 =?us-ascii?Q?rp8eKhVNUnFKJdn21ThPeavRRS1uTm47Ghr5BnaXVs+VxpEqYtoEaeuVNSSi?=
 =?us-ascii?Q?ADN5z7GJo8F8LF48RU3qcgZ7qIWQWqmm9XlmnH2hgYuG1Ij2Szd1Lhoq9xhZ?=
 =?us-ascii?Q?FWWh2vJKOaUUV8bbrsufWXSPVhU5p3HlmzGh2VHFBwUQKw5txXIhB76Po81Q?=
 =?us-ascii?Q?oteOa4czioawzEAlEC8z5d+pVSlCoj/EN8Huk8UXJVTIvVZ3iZLNPA+/SAad?=
 =?us-ascii?Q?Ld9ANvQy9P7GLFbpW87zSZa8n4rYglIgbU8PIW55OagqLlZ9MUZvsqDyN0Vr?=
 =?us-ascii?Q?wPj+JOUeu6EWmPvz+CimOSSU4hYnHOO5tyaNykQ+23kVctwU9HjQoP76NXNr?=
 =?us-ascii?Q?CM+udFxgGZ9JEvicvthrnvsD/nXVm0V68wuJkHQKvXRP2bWCiJeMx+jveqRE?=
 =?us-ascii?Q?F8YwV7fTRwTqWEipoN47R1vDVOjGjIM6Wt2ALQySr3gGH//Ic5j1fbfGbWIW?=
 =?us-ascii?Q?ehsZkLjsBgIyr2EWM5aEEaTWX2EyLleOLT81BJfQPrQ3xT6jivq5ouBLJBaG?=
 =?us-ascii?Q?RvSXxFMCrUgipl4ru9aDWidBz08OV/rpgh41T/LwNuNx20oyPyUtKpRqpBo6?=
 =?us-ascii?Q?Li6ciT3y/YPg05mQLJhX0zfLnLW5L9MFMab2BpSawpqZid8OQQlLObJUJdfc?=
 =?us-ascii?Q?ZMet7/vxMerwcBI1YhIHF/dlqyTlyYze3rB38LkxADt+UiZRxgWWFfTNbseH?=
 =?us-ascii?Q?Sk9i0JfvGCY8QXD1k+z+yJdmiJt+zEcctmF/eGAZtrljzw8Hax8BGKsf89k+?=
 =?us-ascii?Q?lrdHz+cBKkoyQ+DACBDR1vsh8oYO+CgLXC9fhTnlFG6R+lVVYZEClRyvts5k?=
 =?us-ascii?Q?NK/81wqLpLWCIDzGXlOwlCvLJjCZfyiwJftZj+HkuSHTHtm+8onOecjZGCkD?=
 =?us-ascii?Q?n7FAKEkFHm02RqBWjmyGpmLc3yqiuuFj244i3gk/TuGz7GBMO3nhO/Eg6vJd?=
 =?us-ascii?Q?L8oaift0yN0TXPmyT31EQ+bFEgnvm41/4FNV1bxNrvEe39q/MA9L0qBUwbnk?=
 =?us-ascii?Q?tFRxSizCjQ6fX+LxZ4u+6mX5ZGakt29UPM2ous8tj0GIGg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7lC9pSobYIOAEoR9B0yQEz9n2DGcxO09dYw+/keF7kAysPndl7rSga6bZaS0?=
 =?us-ascii?Q?E3mBpyrN4bwmCR4S20ZQ4aPiimGd0jO3pLStp8U4kqTiECLSNihSdRq6weTs?=
 =?us-ascii?Q?NUnkb+xOIDlKepkzhnlrJ79Z6Vp9gt44Ydn0Z4hgeLfi4KCx4toOdcZ98Grg?=
 =?us-ascii?Q?dvvLlHs3enQHhiLeg+Zj4D0Oy/DmoZK0aywr8OmyWOlrjw5ZnZMzwVxODbk6?=
 =?us-ascii?Q?qexEXpvcsx76cMD2QWd2P4Jmp/x1OCaJkcdSqKroT5JgHg146d8tRIMSbrIS?=
 =?us-ascii?Q?xWN7hQzPeytnNl7gDi5Os4vuNvOYLeHU8ob2PzMY6kbaPXKBq6cABvTQKWvk?=
 =?us-ascii?Q?kbBc3n+4gLIRpwqp5sr4AY+YLYf3GA6qfFcq7gKTMDEs/RELkNAwhSC1sQLl?=
 =?us-ascii?Q?8XLGPtjsPAs8F8pEm5V8MHWYOhykpcmo+1qLsMH2CVUVpw8gri5ch40seKuZ?=
 =?us-ascii?Q?q1i0skA8+xWmJtiGH/QdLKL40Kv+Jt2JFYwKnVMFfuKB3oXC2vedSbGPSRNS?=
 =?us-ascii?Q?+GVQ186cM0dfCdY1OakiGpXosuTj2/SE7wpcclQ6/T2Hkjw8rnqs2TCvBd8H?=
 =?us-ascii?Q?4jiFvVrwf2S1kLJYYVeXWkR+NfdZ2ughlndSKxSBRxMMAJYt9j4JcmIRKE/u?=
 =?us-ascii?Q?V8bZg0fWCTffjw8XNtiiLGNAwehhMa61dgEN31acpjWJSgRVAbKEkRgGbfm/?=
 =?us-ascii?Q?JvZXzcVGXIC3fAdKSIktFQ+NT/tmK0LuM9wnlru1FmJqh53JZOwRLK1oEFkV?=
 =?us-ascii?Q?oxJPGvYCuQaQDnwHYK/IkW07hrGn1D8uy3ma6uquYKSW0t0Zdz1EoJicPDgb?=
 =?us-ascii?Q?MckJC0gwHsDP5leinGhUDxYcrSsw7H7Qdmks7WJjV3wDibFfSpYDYKrSV7qZ?=
 =?us-ascii?Q?0v1LE3CK4btdoEIpDkOLpBMqENuu9bywZc+ah/ZycjHoj1H6ezWdUDn9Fvjr?=
 =?us-ascii?Q?o0Yv9a1kpJ+sC47CiN2m6l7anX0DGT+NooH6E+EDW2KEdekuxRP5OjuJsMGZ?=
 =?us-ascii?Q?lSA5TzrwUevbpikk+YxbFc5KF73VWlJ2zACxFgmwvi8NvNPIJb2TRNVK/OVx?=
 =?us-ascii?Q?bpJ0QoNb+JiIFOwSy5tbj2mFKVtjt3s9oGXiVz0a+ue7YcZwOpIpZPDBv6lA?=
 =?us-ascii?Q?p+G33u3zNEldQCMo3IGzk35oDDVWh3hXv5ZX1vuhicSBc1FLEu7C0qZRa0N2?=
 =?us-ascii?Q?EUOiLjiW2s18v899DTfSZJZp/q8OaBy8lTErzjxpVOXSB/OMPE8A2O2rYwaR?=
 =?us-ascii?Q?SvKNYSvKx/Vb0qHJXD1DuoTtwNKTadHlAA7OSvGeKVWbvnM66/CSaufteQr/?=
 =?us-ascii?Q?FJhMjjpZX/Xs9M9N4WbMycmo58aj6gtT9UehspTOFbqtzxJ2Ch+ijA0LKWM4?=
 =?us-ascii?Q?IIfR+ZKDv9llL66hgINaOSIUJy6DrdEJnJvlub6mcHRfgS0HD/r3Mrx/SH18?=
 =?us-ascii?Q?ezXqlQnZGMPPNaH8zXceIedseHdwmPRFmJ7w5fdWLVbsZ/Jm7OtT0NPdSFab?=
 =?us-ascii?Q?6T93yS4G6cRBFVHfuD0oVbheUSxJDWPHgQ+TRZkfjWBCSARJ5HcPYy09RLXl?=
 =?us-ascii?Q?YUBB9vALSa2nZTxQq/7HYaIDAvcuh4ao8rFbnqCSd0pfAH5SfEmBPFfDN23R?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9afe5b4-4d15-4a7f-8c9c-08dccc69196c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 22:38:15.1675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a+1gpAHdBqF09rBC6bfMl4B4esOIqsNxa7BaRUb6nA+yBBO5Tc1WRB4MbrBTBxPk8OgIWpMdngFZFJoXTqGdiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8259
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

Change HAS_DISPLAY towards intel_display and remove one of the
last includes of i915_drv.h in Xe.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index c93b753fc88e..65331bbbc068 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -13,7 +13,6 @@
 #include <uapi/drm/xe_drm.h>
 
 #include "soc/intel_dram.h"
-#include "i915_drv.h"		/* FIXME: HAS_DISPLAY() depends on this */
 #include "intel_acpi.h"
 #include "intel_audio.h"
 #include "intel_bw.h"
@@ -34,7 +33,7 @@
 
 static bool has_display(struct xe_device *xe)
 {
-	return HAS_DISPLAY(xe);
+	return HAS_DISPLAY(&xe->display);
 }
 
 /**
-- 
2.46.0

