Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D151C75B92E
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 23:04:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3207810E1A6;
	Thu, 20 Jul 2023 21:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C23E510E1A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 21:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689887048; x=1721423048;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=wovNgzaLlFJ9KRIPLPP4zkc0eEAFwGfGh4N4y0oHav8=;
 b=UAcs/stCSoSv3YodOr6Hm4LGf3+VOupoOYqXlQLPoOkqs7cgHGGNGcGA
 TvoR5VE7mH2PF8fAl3iKT+v8I4HfMbfJQySQtimTvUQY9ufgJpA+8Ofvu
 EjLI8IE1PXnbTNIjEJUEcTjD+7/enVEAKKmwgQjQhQa+xhWSKDk/p8uVg
 iFsgJIt24JpPTqFJtwGeJJHuoPbXVfm3nkpnA/DsrTDRWVE9YR+8Y9jKi
 a9RRLF3XyLVy33LyHnJhgs53wiXkbaqcDAlrC7zhguL1QvPNPLD2k8KAQ
 9umVCv4L5kpqtIwyJ+sZFyzQim0Hn8iJUFKU1pnIz0evoJu0mobBRUu9P Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="347166166"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="347166166"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 14:04:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="754177329"
X-IronPort-AV: E=Sophos;i="6.01,219,1684825200"; d="scan'208";a="754177329"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 20 Jul 2023 14:04:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 14:04:00 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 14:04:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 14:04:00 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 14:03:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h1EhecS/cEazMyE4FzejItpbg3LhvmWHePxibdFN9d1NfihWqAjoaGzdH1bka9UIknBXcBTqpudUJLNEktOCrT3rsl3UgevqtqorkHP3cpR2twC/yoahmNGQAXig4O4vDB9p6UfS3OUDBJj5TGnvsknE2go8nLPiwAMNf2L8hAfvd1JizXDH3CrGqskJ/ejNmSTCDWS3t7btd32IN1hQQjxmQhSKBlHyC1NdEjEYK0tXDLxGRj8vL82Hc5oUzU61vDRZlr6te95YWbRmNxmHohriGFij3CTJce4VCKBt7kFRaEcMdzx4MH+SUiXqt+qDsPVslijfmxxvVigovUcCPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AMXlDWvz4BwodBCreoAGLArkDt2oVsTkOUMr7C15/yA=;
 b=IcnbPUp0uBHdk057jMtPWt3P450AAar/otbbOBaOYuVhUlztu2GjKjQ8FGw069Ift/gDxK5lW5GMnWaquQplYSTcybyF1cYiL7i+fAIYz/k1PeKsqUBYbNDSQmnCo86x/1wePBZJTBH3T1ENazojt/4MW8Dy5pNEpggoGnaEGNwRM75JXhC/vA3iimU7t/K5S/JAOlsBrytOrSyq3F+TSZMkUW96ZIEB7W+GVUBK/p/1NgkNnVQNWXH7Pvd5rcb43rtijwqk2FiGe58nrBIeVD0ibguavnCVPF0xnZGywX+k7TR96iHpN6TUkxZ9PtyIG3diXbbJV4iVLIdTrVaLog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB6892.namprd11.prod.outlook.com (2603:10b6:930:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Thu, 20 Jul
 2023 21:03:58 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6609.024; Thu, 20 Jul 2023
 21:03:57 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 20 Jul 2023 17:03:50 -0400
Message-ID: <20230720210353.214385-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0066.namprd05.prod.outlook.com
 (2603:10b6:a03:332::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB6892:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c35a11b-4c22-4b33-0c81-08db8964d597
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o1Bq/HsCfjkNrJF+kdcqzJxBZWkGedM4JhnD/G6Di/9dyfbalADxwqgwKt61I+Cd4nRLa9EJ97NHY1HUW86Szij+ExocPpxRMqRbDgx93QbSo4Q+f2PIIq6U0w9mRdW4/gckrnScphGLy574O9S+lwmEe1OnBnnbjAg2gscgI0BnZQoX1R3ueNcYs52f+urMgaDCYs3dXSr8O0jKzTD+sOgz60yTa7S9K78l3seVSBjXurbOaK9x5MFJ+BRVrkLnS1595QWJLQm1xkAsgtiOCSE4A+LWRJEOOTMDfLu3I3Loq3uC6RBEwIA1IUrVX3oZP8yCRwThw/shV4D4Q52GGxikY/sfG4C8rnzEE+wkdybVCBb91MuSyIzC5lzHBr5cZdXdIscAMlmMr2lRntxNj9a0pe4qjwdlaitY3r9C98/p/3/iOk3HHFfIhZujqcmewb2V+smd/SnBcSxzqH34lOAMn8VW7urO6Ik6xHjA/yKvbEzKgkpD0m8xgG0JRjNNUANGbssstp4B+twZJSwHQsP4zFxwX7+53FMbBIw1Jet0OQ2g9FMmar3iVqHWk5+K
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199021)(38100700002)(2616005)(1076003)(26005)(186003)(107886003)(6506007)(8936002)(83380400001)(66946007)(66476007)(316002)(6916009)(4326008)(66556008)(8676002)(5660300002)(41300700001)(6512007)(6486002)(6666004)(478600001)(54906003)(2906002)(82960400001)(36756003)(86362001)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4O5cwLy/kZI8PxbnOlrvAM/QZlwEyPwlN6aiMOZKLLqpCv4UTLgwfG6bx3Mt?=
 =?us-ascii?Q?C764wxXiFHoJ8g+vvaA/MCkrftgLkPz6tvsKaET9eUJxYXf1Ou3QmxfxWmZC?=
 =?us-ascii?Q?sgBBUkCSqufSljVWU8JCxoM+m3QQMogODjw/NpL7+gR6oDg5jJZ13VBjf5Ag?=
 =?us-ascii?Q?IXOmdm/hPGmpjPphWUf7/1T8MbBRDuZPYDBw2k07lCfhNLgwI4wADrXC60E7?=
 =?us-ascii?Q?Jaqlx504p2MQqzz3EtMfzdb8durN7HO3+hv1TMZA4vZUKHdqdf29VjBBq3bK?=
 =?us-ascii?Q?+t9WbofsKH52SBQDp9Nm4EP0W5TOlNPyOGPvG46uYBABu2yPzZWwFPi+Oaua?=
 =?us-ascii?Q?KeTL7RpNnhJ/730X3+VthS7OrxgGWlSH6vdrF7Y2G8IM+EtjAZOcv0SGwfPB?=
 =?us-ascii?Q?l3N2Y5nUyF9Mp/y8JXHH1suwN3HqcXyI+4cuV2hj4aNwQhf6/LIQiV7DoHVc?=
 =?us-ascii?Q?qOZxqNuD7luayoYLG/jnuV72Ju3ujcVMh4X0noXfbvVHeJeA5nZe4kNsSLn+?=
 =?us-ascii?Q?yUQEIAp8Xleoaqv7xVeL2IHel8ep5Zo74brcZv7OhS/5JarRiaRVU/NhM11/?=
 =?us-ascii?Q?6+vXDLqFgh5d5X9TVZ1JTQW/garBijPY737OUNHlu2dthD3IoFcgZ2AutmXg?=
 =?us-ascii?Q?5UJgDKf6MMQRuEKfSTSm9A3BMqHoRkLyI1feIbvb8zTsZwoBq01zGmziS5Sz?=
 =?us-ascii?Q?PE/U7JYt8uPmvicL6u8zJ9qjW6HUAnvxNQ4FO2fG2mwRDpal3CQOdIOYjcPJ?=
 =?us-ascii?Q?6BrzHCbgBe8G24Qk0wJVOZv5e71AgGz/3wANlbblTUdTmTWgqp2e9rz/DZi8?=
 =?us-ascii?Q?/4ZxkRqotJMcLx2dWWongZ3toKiV9aMAAjakaTbOGN8lUOfypAezTTKGf5T5?=
 =?us-ascii?Q?+WnuNMo9herH6JoVIvIyVtzoXMyG+SVTAjxYjJ0Up+8iuKX1Nj9CVzMK1N0A?=
 =?us-ascii?Q?mcDiLATmiIuwiyK27JoTN7rIbY8PTglYUbtL++hCWjTNUIKvmPYIEAGUuuX4?=
 =?us-ascii?Q?ngXj1YZeELlcd39S//LCM+Ym7i2a66PpeNriUWvNKCK5aYnSuNYW9P/h6tW5?=
 =?us-ascii?Q?lS5/4owD/95tqzKaUV+QI7qr1Ve2Bl//fCveYROPJPScDnBUP6djpt/Fh+1w?=
 =?us-ascii?Q?+CDjc8hqQbeae9H2VPEY2aMZHKzmvtdiETPqkziiKYX6+Y67Y6i16D6k8Fgk?=
 =?us-ascii?Q?6KhYFYL9WtrfuwH9W0ujNpR6P1fqRUUEub/kWxoqvKT1lAHkpyYdShSnjEdX?=
 =?us-ascii?Q?Hwe29zt9ZgCKtrH86cZSiEOJajf0DXUCItiLrqwHjfQWP8+hciTgCN3gpPnR?=
 =?us-ascii?Q?0rhYukH0NrwAY1U03uMfbXi0+6XrIW9m36/qmyCxnaptYhkXLMiXbhoEc5wr?=
 =?us-ascii?Q?SYWhmrBPxzaEiCUQEbddGXtpqQKfmYAzVYkTHSfxR2F0GyLyJLYbHtoazvz3?=
 =?us-ascii?Q?ndcgHzVXzVkF1P/NwqiyjdcFvgYWCPvTMTY7YpHlNsrda5N1Y2GflOV9Jta4?=
 =?us-ascii?Q?26sQldc2uOfLng3bj9+hSC0c3X1U83tkWPTPCkw5K8SycIcUn5G2tDqyIlqh?=
 =?us-ascii?Q?1h7N4vPeKiiRHHpK6z0D2o0iUUfzVz0aWcBjHmQU?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c35a11b-4c22-4b33-0c81-08db8964d597
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2023 21:03:57.8745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xJofCFlWvmImR5elua+dJzr2CsbGRTs7pgKCwKfPRymy65IWCAlF8ePSoB7GmwtJmUObdc8AdVMYX7n8zPRTuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6892
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH 1/4] drm/xe: Only set PCI d3cold_allowed when we
 are really allowing.
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

First of all it was strange to see:
if (allowed) {
...
} else {
   D3COLD_ENABLE
}

But besides this misalignment, let's also use the pci
d3cold_allowed useful to us and know that we are not really
allowing d3cold.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_pci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
index 78df43c20cd2..0c4051f4f746 100644
--- a/drivers/gpu/drm/xe/xe_pci.c
+++ b/drivers/gpu/drm/xe/xe_pci.c
@@ -794,6 +794,7 @@ static int xe_pci_runtime_suspend(struct device *dev)
 	pci_save_state(pdev);
 
 	if (xe->d3cold.allowed) {
+		d3cold_toggle(pdev, D3COLD_ENABLE);
 		pci_disable_device(pdev);
 		pci_ignore_hotplug(pdev);
 		pci_set_power_state(pdev, PCI_D3cold);
@@ -823,8 +824,6 @@ static int xe_pci_runtime_resume(struct device *dev)
 			return err;
 
 		pci_set_master(pdev);
-	} else {
-		d3cold_toggle(pdev, D3COLD_ENABLE);
 	}
 
 	return xe_pm_runtime_resume(xe);
-- 
2.41.0

