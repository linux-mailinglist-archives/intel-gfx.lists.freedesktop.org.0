Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D597B1DFA5
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 01:02:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D8910E113;
	Thu,  7 Aug 2025 23:02:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l01RqWrl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9391C10E113
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 23:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754607718; x=1786143718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=x9ivPfY1WJV8E3/Bqcapaa/vBsCmU5PdQgPm+buNNho=;
 b=l01RqWrl7j542zbm8zr30SlOJl4fcarDqBhvNlK7IeB4GOj9gCLliX8c
 DcW+/L+/iL5V6hdTF8C6yT0VHE3EZHmn7NihW5K0ZToaM4zYXkbZQdpsI
 +1bSCH0aBq5tArnnMmWr72w7mEpYyZRXQH1pz0lfdHL4QSupOeCCdI/+j
 dTTCM2195pXT+kVd7vRc3U4eNqkqtnB2QWt3ASewBZV1Osq5IbcTS1f8c
 7FnS3hOkzADZbVt40vAsvG6oZ6Fyb9IUxRr1U/aEYO2Ks/RKZHzUSErqM
 7wDdHUJDXYUJvqAdIk0iQo1WEsjCttSrF/wNF7ZbTodo6/SSfkbmEkk+k w==;
X-CSE-ConnectionGUID: d0KkaBo6Qn26GdZ/qkO0Vg==
X-CSE-MsgGUID: 65FARghnS/uEaPpAnXNKvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="79510219"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="79510219"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:01:58 -0700
X-CSE-ConnectionGUID: 1kprARLBTS2Wng74cE7vFw==
X-CSE-MsgGUID: hUn4pHsCQGa/4hFUL0mGTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="164406537"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:01:58 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:01:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:01:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 Aug 2025 16:01:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DE25HjvCRpE/DxzVqPyXWsOh2vrUNfRc3Jn+ROij+TzT7+6nxhPnyfC14HqTjdBwUJMXW75aoaMTmRCmIeMCIWfApqcUyp6g5vvTJTLz09aFsMjIk/m9Wnujux0Nccfw/x82tzBapDYXjkdhTxsOvO9X6BIVYrWrfFw7JQFSET8q+q8472/OMpisqiTss4yjdGr15tKtszwDQAAm+1C/gnBJwCfVPbX5n4Nuf/H8dEC6qFGxXild6gCkB39Ghf741eQwg/xiKJNsFo7ePZyrnqueINCLX9E2RCaHKmzlfMXCehh0qHw7dPIW889XISRVKi96Ju6Qb4gcFimYso9vsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f4VWykuuo7H7GyMoLoUK2bBcZuMbM1+61qFJm8XAg+M=;
 b=zDPfCQsDVTMXHJ137ViynHVirYSVI4iyP3BPph+LEVfYsk14vCqw2NU6UfugHbeuUEs3GCOnTCP5Uk4B1jUCEGoiKgLDja9bM/D+fG0RWcq+YnZGU/DSD/hcINYqo9KpN3OUtYHl1ztpxbi5tzZ6YDOe4DHDaBY+Nh68VI46CRNSIMwN67AQr3S2APmD2tt1i5UJg6/9E5Z3XggK2L0DrRBQzS90C9RwVMH+4skb8HG+k7iZUGCDRjTRJOl1yiDjE6vGgEkz7ipAWhppAason6WrEC7NClTgIDyNZ5nrLBD1XHtS30wbIs1upJZQ4B09lCkdgPkBqW9TZLRyOHVD0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DS7PR11MB6221.namprd11.prod.outlook.com (2603:10b6:8:9a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 23:01:53 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Thu, 7 Aug 2025
 23:01:53 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [CI 1/9] drm/i915: Move struct_mutex to drm_i915_private
Date: Thu, 7 Aug 2025 19:01:45 -0400
Message-ID: <20250807230146.128362-12-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807230146.128362-11-rodrigo.vivi@intel.com>
References: <20250807230146.128362-11-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR03CA0022.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::35) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DS7PR11MB6221:EE_
X-MS-Office365-Filtering-Correlation-Id: d70f2e0b-94fc-476c-0c2e-08ddd6066669
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7jhM6dwT1tQ7REuO0kS6Trr058ICY7s7DodXie1O76Im+kox5VwbSODC01X3?=
 =?us-ascii?Q?ZXil3otBQ2xdnR9Rn+3e5L/T9Tw7YAS9pBwjJODvhy6F4iq/DOzn/TBrNbYc?=
 =?us-ascii?Q?PVmTRCxHE7pkGLoSUrMsuDj/zWvQUU/gcvFpgXJdbE36FWcwVdu4t7c7DIt8?=
 =?us-ascii?Q?ilX8U370Q02QvYa30MBC83mc+oXmbM/ZN3PhweVAkyRUbxg+cYn/azZnrNZY?=
 =?us-ascii?Q?azj4HCJKRmouR1mPv3CCtxbmIdpJ2lC6IJ4/NyWrKy/5XolOX1qjd2/u6H0w?=
 =?us-ascii?Q?d3lampLFjqA8gxNJlXHAJaPn2gH1HbLgJ7W3eQxZviltaNeExFRWJWyl0C8N?=
 =?us-ascii?Q?oP2SRzfXKAkhhWipCeZqWuqq5vvvYF81axpsCcmi104CyqrzjXEjWe+hDpUI?=
 =?us-ascii?Q?Ag2z1T1dm6Zi/DpoY4jfvumehyKB9dUxz1qaCyCyOki2QGzu73XZpI1ZHhYU?=
 =?us-ascii?Q?0ASgjvLdYOQd4rhhf4WwUfRMyhyieoFjRMGe5jKBK6+BohfETONCMPA06hhH?=
 =?us-ascii?Q?Qu4dtNN03ukUbeW8qvmxGPjlyzRPHuG3lYX/a9eamhcOyUc/7hkKglQn/GHu?=
 =?us-ascii?Q?0oavt3xdFtDT+r8FNIkv1aTo3Qgt+xq600y76qwdheLcvoBWCuFA5JjTRzL7?=
 =?us-ascii?Q?OqcCd0DF9YK+rCmNMWhkMi/4J3Jzk/LJEbW3+ra1iFhsu2KpA/G9vHNtqOSR?=
 =?us-ascii?Q?cM3TrVvWc5SqFmB2OnaEfb5WCYEZhz6xq2Vd2qUqZfXXGSDM3aJLaBpXew1E?=
 =?us-ascii?Q?hxT+3J5SyDxz85Se5159NXndv9bQJI9W08ttb0Ol+EKnkmgFDNEmG4qpU7L9?=
 =?us-ascii?Q?p0QbV6w6bf8msZ5r2lTIoy9EKh/IYnmjn6Ry31XJZc7Bhyva0q28ItECDRmw?=
 =?us-ascii?Q?6vwUN3JU0vo6Av1BRHkKpFLanQNBIHzsPbsxxP1mOpwkGhl2KVgOjSNDUaxr?=
 =?us-ascii?Q?mAHgHYvARq73ByMZGvHFrGEtdLv0zfhwGkDZidcZK+G08uQo5y+HEPDKH0a9?=
 =?us-ascii?Q?juiqNx7ZcN56TAuNcyesQPY4N8G1gmTUVtOnNdFKTvcNpo2OyIEXvcUdY8AA?=
 =?us-ascii?Q?z9i7A2BYt+uSaV6cwcIzWW4gwizeUjCEDO9gn/ylsSpIuLXKQyZsqX3TjKwQ?=
 =?us-ascii?Q?oKiHGz7OmAPppd5pWjBUYnBjEMJCdEHAzxhHxrDt7jfm36PXtRMq3e1Jck7P?=
 =?us-ascii?Q?J4wevQbfL3ngBh8Opd+NaxlvJIVYZ4qTTWHulbN3Mo3eMZin1sbKT8nqxKkb?=
 =?us-ascii?Q?unoxsktbdvY+3QXAF7MQMvLaSpdmSlZ3qfFkBMQqAU0wvQb1P6uyvs4nzUCU?=
 =?us-ascii?Q?QkVuZX9X/vHcyLErMy8AthDEJvsb27MC7ahHrii457hOLDhU2kQiRkwSWsgB?=
 =?us-ascii?Q?88mx02/yPWxoSgP2RxVw2l5xAD/MLW8KrkNGdgbAww9ikEfCo9zWG5xAzyn+?=
 =?us-ascii?Q?yTVZlXXT7q0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2ejiO/UHq1FLQV1T7s0sZjzeFnTtJV0y6Nl0ZtZi6XUQoUikutPvAwR9fnBq?=
 =?us-ascii?Q?rk21OwrataCpiUl3LoADEQrZoXqaxzEhTw07skrjf2kjguG6kFlZ0QfjiiZQ?=
 =?us-ascii?Q?y3UHa9pbUXL7sake5d0M0Qsw15592GzmFY2eALpUovyqq8jjHGHw4ehhRlfl?=
 =?us-ascii?Q?jsOmLw4N03IEz0TkGIoiQMzGSAD1gJ5MCol0XeDE/UeNJyuuvlzCb/0em3xT?=
 =?us-ascii?Q?ie3aLvRcE8wXmL1UCBz3ISBZ/NY9AHzzwkrW64mG+34m1ZprI3hUmjyQXjbK?=
 =?us-ascii?Q?A59/I8gHnY1eXqzhkgALUjn/2h8axJEZuj+o+0HFV7RwY443ZkRyQcAii5tA?=
 =?us-ascii?Q?62Y1LfSRS9RbJqlOIPDHU0/ME3IxaTPPXaNJGqCVkvERT+pKgRyo/EBLIfiN?=
 =?us-ascii?Q?RcMNdka4wMXmLpnV9XCXAxyFk+dNqeQX9Ri+c7ZC+vyPB0MQs+ug+/1ftcnY?=
 =?us-ascii?Q?2l1NlVKLDwEh+pia3nS3kSt9GdHtbenra+0hAlJbZRRO7x3c4/hYX2l3iALv?=
 =?us-ascii?Q?rjyJr7H/Eoll+njUPqVoXOg6D1k+OTDOjOZ3yuI7dYZ7VX9TAAfoP44wR8qg?=
 =?us-ascii?Q?vbrAkdx05QORoYVnXsAl9yC+omLmZYq1DtO8dzbJFDVcHvRyFGekHGVtkiun?=
 =?us-ascii?Q?EvjSnWGuy+zqQYgm1sBLth70QKYtqvOur+qcjp1hJuSvE1nTNcfdnZxrqzzq?=
 =?us-ascii?Q?uw7GYO9q2aHumCOCVIgW4Rd83aajK6LZ0Hax6Cq3RAgqD/mWcBOTI/jxzpXi?=
 =?us-ascii?Q?akf5ECpyJ4pGOwRi1lltjhfu6gEfsZ7IX6vKohUyP3QT04+0IMdXUqRUvXjY?=
 =?us-ascii?Q?JWQNqxBtfS05zZ9/dDf7VlLeItdE880vlzYgYWZfQMr/kuRzJUfK7r87LAUO?=
 =?us-ascii?Q?OQnn0sSeih6oktGahhMOjk8vdaEWNn10Eier0z+ujviRAX5/2YuvAxOTqNZ3?=
 =?us-ascii?Q?yCGSAAOAfjFxT1rfRdbEQMFoLBUCi3Kr/mm3OZdU0PGkfhCLSZMqcqlglXMN?=
 =?us-ascii?Q?RfXsViUmtj7ADh6UBBOSu0DLTCD7KNyl2IqBfJtuSWNEytRhUjbxd1ergroC?=
 =?us-ascii?Q?btzMVlFQyqhbJRwpaFM6MNw/O6qbHSq1NQxyqhO3gb5cGVyWMXnhwEI7VmMv?=
 =?us-ascii?Q?YofAAXZ3hykENc/NkWS0DloPhJUvQupHSZ5rKqz6Sbo3nUElj+JLm0Xx/Iei?=
 =?us-ascii?Q?jSbNouPumqvGHna1rdfPvpCqt136aR+j5i1YJzzrRPROvNeJ/LYez6G/1F+L?=
 =?us-ascii?Q?qn1x1UOjsTHhNxTeDe2K8LHj8fjAtHA4MR2vNLM8/uSUQGoWoME0M9xml90C?=
 =?us-ascii?Q?mi8EIgWU3Wo/8YVMTyLZ4qR34XJiFvxQZnbqEyeARNEFrtbTR89jsabqXGjn?=
 =?us-ascii?Q?fOWiNJaIkVRuzx88HV21gDX3x9NylZxZZCzVDPEJBgEaeXu472uGA8bLTb35?=
 =?us-ascii?Q?Qiucdsghnh7qTANC6qwGgu89//AHbp6phqbeeKrGbfSXNGz7IzW039EqSqNB?=
 =?us-ascii?Q?gXIUaxqfDpu6EoYySo0sQ94tRuPKDhMESdkut/F1ZItENCoPrNXUA1b9iaXg?=
 =?us-ascii?Q?aD/G4WJQ0371ae0dJYJ+iQPDF3lkF/awo87sER13?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d70f2e0b-94fc-476c-0c2e-08ddd6066669
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:01:53.5033 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zcLOydeEgRh3EI9/7BGb+AUSCXzIGPme04upEEGhOwfT4K+oedb52riZVHF0k0KqTlaMQCMBYHMfM1qHZqPqcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6221
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

From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>

Move legacy BKL struct_mutex from drm_device to drm_i915_private, which
is the last remaining user.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/drm_drv.c                  |  2 --
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c |  4 ++--
 drivers/gpu/drm/i915/i915_driver.c         |  2 ++
 drivers/gpu/drm/i915/i915_drv.h            | 11 +++++++++++
 drivers/gpu/drm/i915/i915_irq.c            |  4 ++--
 include/drm/drm_device.h                   | 10 ----------
 6 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index cdd591b11488..ad3aee354ba3 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -694,7 +694,6 @@ static void drm_dev_init_release(struct drm_device *dev, void *res)
 	mutex_destroy(&dev->master_mutex);
 	mutex_destroy(&dev->clientlist_mutex);
 	mutex_destroy(&dev->filelist_mutex);
-	mutex_destroy(&dev->struct_mutex);
 }
 
 static int drm_dev_init(struct drm_device *dev,
@@ -735,7 +734,6 @@ static int drm_dev_init(struct drm_device *dev,
 	INIT_LIST_HEAD(&dev->vblank_event_list);
 
 	spin_lock_init(&dev->event_lock);
-	mutex_init(&dev->struct_mutex);
 	mutex_init(&dev->filelist_mutex);
 	mutex_init(&dev->clientlist_mutex);
 	mutex_init(&dev->master_mutex);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index e8a04e476c57..7135fdb0ebb4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -678,7 +678,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	if (level < GUC_LOG_LEVEL_DISABLED || level > GUC_LOG_LEVEL_MAX)
 		return -EINVAL;
 
-	mutex_lock(&i915->drm.struct_mutex);
+	mutex_lock(&i915->struct_mutex);
 
 	if (log->level == level)
 		goto out_unlock;
@@ -696,7 +696,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	log->level = level;
 
 out_unlock:
-	mutex_unlock(&i915->drm.struct_mutex);
+	mutex_unlock(&i915->struct_mutex);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c6263c6d3384..d1559fd8ad3d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -233,6 +233,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	intel_sbi_init(display);
 	vlv_iosf_sb_init(dev_priv);
+	mutex_init(&dev_priv->struct_mutex);
 	mutex_init(&dev_priv->sb_lock);
 
 	i915_memcpy_init_early(dev_priv);
@@ -291,6 +292,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 	i915_workqueues_cleanup(dev_priv);
 
 	mutex_destroy(&dev_priv->sb_lock);
+	mutex_destroy(&dev_priv->struct_mutex);
 	vlv_iosf_sb_fini(dev_priv);
 	intel_sbi_fini(display);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4e4e89746aa6..15f66a7d496d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -222,6 +222,17 @@ struct drm_i915_private {
 
 	bool irqs_enabled;
 
+	/*
+	 * Currently, struct_mutex is only used by the i915 driver as a replacement
+	 * for BKL.
+	 *
+	 * For this reason, it is no longer part of struct drm_device.
+	 */
+	struct mutex struct_mutex;
+
+	/* LPT/WPT IOSF sideband protection */
+	struct mutex sbi_lock;
+
 	/* VLV/CHV IOSF sideband */
 	struct {
 		struct mutex lock; /* protect sideband access */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 191ed8bb1d9c..cdfb09464134 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -167,7 +167,7 @@ static void ivb_parity_work(struct work_struct *work)
 	 * In order to prevent a get/put style interface, acquire struct mutex
 	 * any time we access those registers.
 	 */
-	mutex_lock(&dev_priv->drm.struct_mutex);
+	mutex_lock(&dev_priv->struct_mutex);
 
 	/* If we've screwed up tracking, just let the interrupt fire again */
 	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
@@ -225,7 +225,7 @@ static void ivb_parity_work(struct work_struct *work)
 	gen5_gt_enable_irq(gt, GT_PARITY_ERROR(dev_priv));
 	spin_unlock_irq(gt->irq_lock);
 
-	mutex_unlock(&dev_priv->drm.struct_mutex);
+	mutex_unlock(&dev_priv->struct_mutex);
 }
 
 static irqreturn_t valleyview_irq_handler(int irq, void *arg)
diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
index a33aedd5e9ec..016df5529d46 100644
--- a/include/drm/drm_device.h
+++ b/include/drm/drm_device.h
@@ -188,16 +188,6 @@ struct drm_device {
 	/** @unique: Unique name of the device */
 	char *unique;
 
-	/**
-	 * @struct_mutex:
-	 *
-	 * Lock for others (not &drm_minor.master and &drm_file.is_master)
-	 *
-	 * TODO: This lock used to be the BKL of the DRM subsystem. Move the
-	 *       lock into i915, which is the only remaining user.
-	 */
-	struct mutex struct_mutex;
-
 	/**
 	 * @master_mutex:
 	 *
-- 
2.50.1

