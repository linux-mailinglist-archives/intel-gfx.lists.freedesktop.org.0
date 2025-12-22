Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 735C8CD6933
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108A110E6EB;
	Mon, 22 Dec 2025 15:36:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VyOMKeNs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11EFF10E6E2;
 Mon, 22 Dec 2025 15:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417780; x=1797953780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=kj+YHgew8cWgcNQBGLjI7lw6w+PxZEDvViEcFTy5fsM=;
 b=VyOMKeNs5/ijWd4I2OEcDAj02nW3LfFP4mA7vv5AhDeVwYhobLT4156e
 IPqXniYrU9g88ZJTVoKfuzTM5a/eo7/4SNgf7DHXLbEDJMAKOcgoFTUpw
 davi7cwxBjjW0l4Snl9cYIHh2q6Z2e9tGa6EMe8mZ68otqa0f6o3XTeLQ
 Z2yGWPc5o68OOO2W7KtSwnbRVFU4TTkxX6BBiqjWqyGJ7ddIb43MBWUWx
 BIfmTI8QBdwKIJr0zULklwMrH1OS1KUIY/MTugZt4488rsH6IHOmKqvZy
 qS7tVgqDAC3Vaxg9MQUcuhnQE0AWWxtg/S6Jo8/E8el/uf7bhJjjJo5VY A==;
X-CSE-ConnectionGUID: flMuXs+ATAyy7AESX6F+yA==
X-CSE-MsgGUID: /79XnrgxTD6TRy7jL6fzDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211469"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211469"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:20 -0800
X-CSE-ConnectionGUID: 8bRaUBztRsKOueEIWfyQ3g==
X-CSE-MsgGUID: YZ8TglHPRRutQGnqYhILpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854933"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:20 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:19 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:19 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.34) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nEF7flBNOvA99Ne23ed0vMhibwxzYQRrp4trg+qmh1yq6y4AmKJmNMYqLKkEMseK5IFPWO5WUZC10vriSfFVypc2jkow1zaSjx9UcOmvpm060pgpXYgKPmLkR+awA8HanQI4oQVT3RdSrT4+ud7Lf7FM7FTGwNEH75wfcY9xgUMucgvyKN+9ptcgW65kYlctiJ5qj5YBgIRzfPIxDhG0pwktgAOlMvOIFntkOjMBuTqAm/0cAXMO1bHTQlJHfyQ0tRDnTVx/ygUuHRKzr43NCfKU2/9XuyN3hBPHllOjhZ4gx1kDbytsG+hDI85DosWdZSKhltJTnVvRU0eQ7JOnyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m/ycypppbXpmGlS+i2Noe2z2pHf9d919e5OI9PLZF/U=;
 b=QuXVJ4nQvk6b/8r14/Nx8VmhMylCFspx0WDexZjHWUWzO9tAQpdN8lf6xqjQrMsFWArcC0XIJIsqIBeF0V+fpv5Eyt1uN4CNjAtupOal0FF/i32OJaMvY4Ue2Q9tjwJLuHsXe3vJ8NNSxsS1xqt9+iBceBksHpbKlLPZWfGLy7qjCB/yVoFsKQrLkax0eZK4WWM91OBMVRmhrfV2toz/ZYhdyWjDXxHp7TDePUU/42tipjOxr/E9zBkAHh3E1j9AVDk25p3/+DHynpO8xIQZvG+F3AnNh/h7+BKZQcvpvJySYcKTiMdCaNNHiHJduYD2NNOXX993iVlceZ+0MCM/KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:14 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 06/19] drm/i915/dp: Drop intel_dp parameter from
 intel_dp_compute_config_link_bpp_limits()
Date: Mon, 22 Dec 2025 17:35:34 +0200
Message-ID: <20251222153547.713360-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: f7770321-daa6-4d4f-dff6-08de416fd789
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MZiPHAP74cyw3+Pk0VM4pPSr/FiVmsOESA115db6uB/qJMyIOUo7SgdYtB1M?=
 =?us-ascii?Q?OUMv2OiVpCi2f6NoRysETBPj1GL65TBVshUK/SGwnNZK+e3BZQ9laNIWgA6O?=
 =?us-ascii?Q?+tO+ve6yF9u3ww3SuWvVwIwFUmoI5iZphKK7SdccFgsDfy195gMOFMnhVg4O?=
 =?us-ascii?Q?FR32mDYTX5soMZCZHdV7owcdA+hZRRYfguvpcJabhgm4SSgnwFiRVaUiVmPT?=
 =?us-ascii?Q?Ckt4lQ7vTNGM5BIMyAp7S3XpRyigKoLRXyG2woPyxnmZh/hg5lE1+ngprThb?=
 =?us-ascii?Q?W1K9UXgO4Bu0bafgVq2i1IAH6THq742ox9xaoA/1xSGHhGtNSWZqtqE+lfjW?=
 =?us-ascii?Q?yWTNBrvXaKfqwd38J89qVta6VMxAqJ8MvZ40b+5MDy16R4eEKtWx0Z7Ck2j/?=
 =?us-ascii?Q?lvC2LpAjdTVby0/zAGEcd/3kAaUdtj9vxZbM/R40mwBtkffHOXX9xJ0+P/rG?=
 =?us-ascii?Q?laAt0aN/wfOJ2CQGTgyWdj9S7/xzn8UiJCcsCdDIBCtFUGUiCEcLmP/6Q8ll?=
 =?us-ascii?Q?I+dF6Yp+ugvFeV5dw3XWr9a36Uyjv+n4dEmt5FR3PTtOYVQpthzlphLM3bwk?=
 =?us-ascii?Q?Wosc/iCJFKQ8ARIKqfnVYf5N6hCzQJI+wEeNv/BHZ2/CmwypUjU1/Mxmz9B9?=
 =?us-ascii?Q?HGHRj32h0zv9iRRhPVLOitJVQBC59eF3STC7kQtGz9aTAPbXYJI8Y5fPp8mq?=
 =?us-ascii?Q?IUiRYfyea+ea0UX4d9gRSmmGkHmP+vsrldNEqWjfBQVGCVbJhLl2qSv+f9Kb?=
 =?us-ascii?Q?Lc0n6/qevevCoN1Ag42uEZsjCu5uzM2sIZ4+RDSK15swUscEYLdOdy01226r?=
 =?us-ascii?Q?lgytr4NjPqoHOic9LaoaDU23hnk8/DMzczMRSdWEZ9rrWtJDaFLWAjoxZHxC?=
 =?us-ascii?Q?UBFG5MW3rGt9Rxz34R7euabeDr1hpweNMvLxsA4kRae8w0I+FNF45OivVkm+?=
 =?us-ascii?Q?HAo/7K985oqU4bOVZ+r1hfrMCJoVP3Kh15HxTKsOHg+mjiD54Oxb8axVIZVw?=
 =?us-ascii?Q?W16AniW6L890hD3xM08rX9Z/Dh1hihtjzgIBBCbHSuJN+m0WYtbq87GdXTnP?=
 =?us-ascii?Q?TAEGm0oMMwpUOWvIBf/YLSqZYMzwnNPYOrtmmfJVyJad09JFDJjMcvsuUhV0?=
 =?us-ascii?Q?2HMve8DjpM0XJ34H7rg7GVbYNE+WgY2FFpqSo9WXgYYtZN9CdD8aWaQyPPRE?=
 =?us-ascii?Q?KaKY55rtw7o0DzF/izdLvh3386vS9tYrFE4dSn6H2dhnK3W3jpdPHQjzi8YA?=
 =?us-ascii?Q?KQFCWwT0HnH7NqcX0T/pNo2ZduDdOomNZgj04Hwsma9BBTumoYY3l9ZviRiZ?=
 =?us-ascii?Q?+pLmAu+yTUfIntMHoi+vicBM0YsITwcd2xDRBvUtgeq9EG/zkNXA6cs6jtVG?=
 =?us-ascii?Q?TW2F15moN72mD1dwBFyyL0NhY53huC8kyHbZQjI1HHFWHz3rs2iXxwEBBdTE?=
 =?us-ascii?Q?QzShzqfUXWAuaJL8PxxQRPOFuhnP6y2m?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5lRLiO3nIrhayI3rrjOgK37Lqt+ufgQMUMJ/TASx6b2MzT3nLAVbUfJn1/zb?=
 =?us-ascii?Q?dwzjyNIps/SssqpRHTPyspgNiw964dAARfsliuJ1p+ulVdd4g9atbMLJaEjK?=
 =?us-ascii?Q?VvP5pkwHJEEwV54PCLgfqXLZfOvYIc6WcziVUkGMA9nO1LyQBYo7IIpQS9+h?=
 =?us-ascii?Q?shGhL9YMY59LpmL6bSa95syFkz23NRmtHZED7rSfbNCw9JlYyEvvfim1uKtE?=
 =?us-ascii?Q?Kaj1PtfcoIJItvsy6EfcEf7dkipA69bmtifmAgMoBlyhEwaOnMMjv8Kmu3rb?=
 =?us-ascii?Q?J7w+rz5h27R9bSiliKOgEQNkkNiK2erVFLbEbhK7V1TLiYZHKHV8R0VLCRXV?=
 =?us-ascii?Q?9EumBFERsy9vEhapzJwVYTM+kvhc8SAxONOkyMeXJmgd5yjtcTw9d2T5ZdpY?=
 =?us-ascii?Q?7LN8c283O/IFLKP5t0gvWlWyzOJ06x0EMfsiNCk4HF+WuyJx3vRYtnsSb19z?=
 =?us-ascii?Q?z56WyQ126IuwHhA/qi9Bq6H8Je9j0OblP1qekSRQIVUTgIBTPB1szZJUYZBA?=
 =?us-ascii?Q?gQShb6N2oszuomWK5S7HekWfyNCmGJoA6CSUvDiX6Tw0Fq0oOxAr8wDFsIrh?=
 =?us-ascii?Q?68kqP8i8Y5jkwBNvU4HT+aZ6dOToh6jnudtobLWxW3ngHALn3SyjNHyCfAu+?=
 =?us-ascii?Q?5v6VXvr2qWL9H1f0uHPUk4XdbRxKpUtMTWGOAqjMIgT7j5KSQge/HVAybnMs?=
 =?us-ascii?Q?HmL3T/GSDdRbvCKWECZrdHmK0N1PSAziHFZjy3iUTZP66NaLuGWeH57znZSW?=
 =?us-ascii?Q?kmjiaE2PC2X5ujxFqmcQn6ZTV3NItBCV5qSq2iRaw2FSu50EHMeQuaUsfRYV?=
 =?us-ascii?Q?BYP0TGnwwj4b5PIt3ahY+7hHkEOqg9pu4mbWa4YUpo3hBj0eJRO81QjmP976?=
 =?us-ascii?Q?jwScuvYe3o7AKKaPxfc23EUifP9F5qnKmPG8yQyaCYuxJLgvXFACdOmVd5cz?=
 =?us-ascii?Q?8Rxm4CJfzSJXq3fi9F8MrrxtoT7tyOUNtbaouMmysKDHG+m3ksAPCSJD6+Y3?=
 =?us-ascii?Q?ILkz08djZ585hE7pgWFkWCtYldBDp0sk6BS4p2Ui5ERwEXB1hviDNCiK1zO3?=
 =?us-ascii?Q?rjThTna+A+xszZHO/Ha89rujieyKfV+WTkDET7FvnbwSv7L9zDG2vm1fYoy6?=
 =?us-ascii?Q?KIDkWkPJ5nrt8dfTJoamw6/DQ6pnfTja1+mKQtu0W3e66MvA9Gg1B4qypoMH?=
 =?us-ascii?Q?Aj9VHRBVjt9pNV30i/Y4rZvgibXaA7GgVtN3f4FnvdIq3btJxB9h69rdaNBV?=
 =?us-ascii?Q?d5PGjWuMO+7vpie3V1kjoGyiWFcokKrbUMA5DZG7it+RCXb1NKbnzSTFHbmU?=
 =?us-ascii?Q?PTaSSjsAl3t6oTrdNUBP+dJKFmARBxlvT5CSRiuIcdZpbk3D8zMLM8W2ZKNp?=
 =?us-ascii?Q?4sRwLHcGNn5fmVpd6QgI9AQ2hi914IqjYJi9ljfUSpILbWlgSV/pLrqAsbC6?=
 =?us-ascii?Q?eWvEJxoL8IAscZnueWJMae71UXQ+flhHcN61Z1p2YKL+XjlWkqSAXiMqtSee?=
 =?us-ascii?Q?v0LsfuQUtKcwhyVyONlB5k/83MoCVAF/wbT57KJ2jKgToIkwtrUJiI8LGHq0?=
 =?us-ascii?Q?JvQz/6kacAqVdErX8ja2dnI6m+bASBGogES5FmVVXawa26n5UfFLOIrwWOZI?=
 =?us-ascii?Q?ClwHCjIbjkcnk1SD2z4Mwz1VtwLWShDjroyZSZWyQp9fvHKWLwKiKkQ/S8uj?=
 =?us-ascii?Q?IfmyNO0Fc+tMil0VoN0EgqF2LrFnDjKfdW3OX739rrZCJ+MwI/MaQV9rmmOl?=
 =?us-ascii?Q?u81kxLf9fIEF9IznuZt7G9zDWjYB17MjPwjtDa0XIB/pKt1kPmndNirZAA4x?=
X-MS-Exchange-AntiSpam-MessageData-1: 4w3nMna2j3qmlA==
X-MS-Exchange-CrossTenant-Network-Message-Id: f7770321-daa6-4d4f-dff6-08de416fd789
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:14.7880 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5IOlF2IkPRCkzpcS4InaDWPIkbkOOddwaIDczI/lWgGarAfFVJkKGgBnjYi7MU1cIA7m78/k7tspj8q5zqFn8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

The intel_dp pointer can be deducted from the connector pointer, so it's
enough to pass only connector to
intel_dp_compute_config_link_bpp_limits(), do so.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index daab43187eb0f..bbb7cff908183 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2654,13 +2654,13 @@ dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
  * range, crtc_state and dsc mode. Return true on success.
  */
 static bool
-intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
-					const struct intel_connector *connector,
+intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 					const struct intel_crtc_state *crtc_state,
 					bool dsc,
 					struct link_config_limits *limits)
 {
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2832,8 +2832,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
-	return intel_dp_compute_config_link_bpp_limits(intel_dp,
-						       connector,
+	return intel_dp_compute_config_link_bpp_limits(connector,
 						       crtc_state,
 						       dsc,
 						       limits);
-- 
2.49.1

