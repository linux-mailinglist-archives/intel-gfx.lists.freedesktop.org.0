Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71ABF984C58
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 173C410E760;
	Tue, 24 Sep 2024 20:43:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KJKqaIZQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4716A10E75F;
 Tue, 24 Sep 2024 20:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210628; x=1758746628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=1bTXtWG15MpR0fHbG8z56jaP213m4bN+mAzlWrsd3cM=;
 b=KJKqaIZQYih0pJoc/y/zLzCJ140D5JB16NhNzDzXUl7ZFAIXJoRbTXwp
 zWfrFfpaKSkp8mvM2NlHNGA1TZLNKxYWncgmKyyFQOkuhx6G3f6EsZ8WJ
 6y9XEtFFvlb8HvpR1Cs6D6LHAQSx1JWJsNlJF1d4doyMJXzOXKfZyJFaz
 7zaRRi8AzeSK4U57pyRkxD37cJ1udJQmKnVcYVvZOE1YuhZb61VsSherS
 HFogM8WNQpP/B1LioBIBfSStqaNW15jBAcpdxFWycvEgykfez5XW/f8Ak
 KxC28Lokwl2fHIRGfc8DX/rLXa/7frK8Z6izn1zQuin2vb0HzRGdF9MuT Q==;
X-CSE-ConnectionGUID: eVVSz/BSTTqfnsleGmNuYA==
X-CSE-MsgGUID: dncZOb5ITiy49qmO9GM0tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26326187"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26326187"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:48 -0700
X-CSE-ConnectionGUID: mkz28BbpSoyiYsLMrZ20kg==
X-CSE-MsgGUID: M9tVyyUFRVaTelXlZ5yyRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="109001695"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:47 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ccrZHzYqkX7HfzudVaHSNrI3h9BQFcTdvkcejxrjjRKwXWfm3mxxLTP3gY4YAZuiJVBk6ZQejGW5PRl2wUUqr3wRtNP+/EyptO1PDeAPetWplpkZbia7mx2eio4iZRHZf2hYcv0DSK+tVdFDyT2JPNIqm0gRH0T7OfMNqVC2i4JogTap/odSKQWWuTnTOpfK6LBnspi3zrhaoE+AgUuUgbdWbfIJe4fLLK88LmXEejdMM37AVjovtR+0Yqpg0fcpsnwqtXqoU+Q0Z2bF76JvFpdvJ6agnbmttk3JE4tMXMlpcGewrhKusiW/2LWikUANsIbv8yFiMNWelti4Q7LPJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ngO28UCwI/G6U4rrsKlWSG/Kcr3dBBgHsDpnQ/yc9cY=;
 b=K2aNl3p2c4O/1I6ZHhP+lBtYmn9uvX7a4ZZ0FOk5CYboXTG2d0Z/nPxW3SpvXM86+2SXrdJYmjSOpVkgTi/7ks63AhsUtcuu1aMyeGUHQq4CjhIyJ3LtUDR/HJst1qBH0j3/LnrW+Bjnmog8/I/n4ZejhMemm13aiHbQdnJGZfyM0QjqtXKegpIqJxIBeftrzwP0rPS83atJuvrDaI0X7C5v+QCRNoFtIXnJtfhhZIYN5WfIhyi4X6CI3kecsl0aJs/ULE38JXMj/rc86oBdsjJZWhDYg1zqNaQIh07CTtZKbUpPY+/OFUkTAQPECPJ3yYwXKsp/I4/ViC+FQNAAZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 20:43:44 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:44 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, "Vinod
 Govindapillai" <vinod.govindapillai@intel.com>
Subject: [PATCH 24/31] drm/xe/display: Call intel_hpd_init on every runtime
 resume
Date: Tue, 24 Sep 2024 16:35:45 -0400
Message-ID: <20240924204222.246862-25-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR02CA0003.namprd02.prod.outlook.com
 (2603:10b6:303:16d::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: 83b9e602-53c4-4294-eb18-08dcdcd994ed
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ZAQdRwkMpAt9W7BCH6DsBz+mg0yQheWE2ex/v5FaCN8itGUrfDLM5wGN/biL?=
 =?us-ascii?Q?fvR8+jfpehkjeCAroy0g6SZRfrbPlbjpTw9/ApuMkrjJHt8lHEBKRJ/RgRDR?=
 =?us-ascii?Q?WvJqY04c2NH0Et+lO6THqq5XVbsu43RsGtQH3f/XQgoGBJYgGEkegn1HIZv+?=
 =?us-ascii?Q?0pq98VW9LLU0WKITaobksS+xLtHYSAR9ZeQsQBNGWdJjxKWI4K2RrwRuIeEU?=
 =?us-ascii?Q?HUD7iBr8fDiArKyF2bLffLkEsV7LDtLWewFAz3ujcD/gfYIk3mJ6spIMwPgs?=
 =?us-ascii?Q?KyKtk649jmBofZRTbJMCS0SKCGE25oiYjElQ6tS/p/i7fLfekKDCzTBlRn0p?=
 =?us-ascii?Q?A7Jo+E6QZxVFvyWYBoKD6vbxslOrKGyyprqdV9igHidqg5ERW41XGRu/WDiV?=
 =?us-ascii?Q?ZIqS6fMnQ4msQZe1PHl1XuWfxRSBxmWqDxUsA6tT+bFmrCXO86odC+wuaX/t?=
 =?us-ascii?Q?YyNrCsCZgdDANQDlSZo69b81o5y62tO5B7bbZsRxuI+tGE8gw7AuxD6GAKqj?=
 =?us-ascii?Q?Fwwx9IL5/lGaZ1AAFPzueHz4R2s6DvsSOFiJG94e01gRXbHtGYHek8l7Zz+V?=
 =?us-ascii?Q?IjGRoKSdEYC6woVCcyV7uPxsfjcjhezpE5HB+0Bh3QkouEoImS4Bn9z6hbks?=
 =?us-ascii?Q?dCheN+oqDqiZhZ4kbMM4CNfZ5Wg02+VfDMJbFs3djAZ6zCNWBeFOhwCz3vRi?=
 =?us-ascii?Q?va+xJLCsh12R3lwx+TfX3HVtzXGNE/VuR5UEUoWG31unETtwXMvqpPF1jPfW?=
 =?us-ascii?Q?EAk9G+NXXJHUewocuplRXrD4ke/J1DgkxdZdKCTACbgl+CT2Xhv7iJ3vLIJp?=
 =?us-ascii?Q?qlXkoqF5cIUShgTqAZsVkrPhQhMPpawLZaRG0NTGc4yCp3lMlIGjjPV9H3IK?=
 =?us-ascii?Q?/a7I1gPAD0XOhz5yLl24OMwI/q0ZlDCFCmXj+e4JED+KT1dRXR9dfZ8DNNsz?=
 =?us-ascii?Q?xuJv2HeSxcygNlNQ17+YLEUn84NGMoZoZB3mg0YUM2eZWn4uEogfI5LEfTBl?=
 =?us-ascii?Q?FYCF/iTA9mNoGpvPkjz3zOXYbW58AjBJ1qS/zMKJEVXbI6+n5xpu1s/V5aId?=
 =?us-ascii?Q?bGs82Dws2VeXOqtUvnHzeVtTn5e+iWcqlh8Io5kNbtkOld8n2YQ/H9pZuJ5u?=
 =?us-ascii?Q?ojJalOT2Q2+j1Inigf23VjVBITTyjj2qFpPWwgRiI69aPUANRhlq7Uy/FNXd?=
 =?us-ascii?Q?96BUcgXVSXyEl0FbBYEzqmx0zXdObQzW2B2dI4ds85AGvSbEH6rcwRCyBGqz?=
 =?us-ascii?Q?ErpUlR7dsgVpKxZTG3LdzVxLDbtYIkomZHRFqEJPlYHRnTsurBlHXSr5wTXC?=
 =?us-ascii?Q?py8vO2NHsaLnYALzn0kTFIo3wPBXvKJ43yAUlH33+a5Mvg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?L1Onn6eOxBBv9PCw8HCRZu07r4d5ZJHZdr8mSrMwDN3xILCdG+6TK9CDMDBW?=
 =?us-ascii?Q?UJ29FqKACkMcnSDsvX/WZ+eRon7DhZIyXrQ8C1E0DoyBjaraX71luesjLF00?=
 =?us-ascii?Q?swWJ/sbCDtJNOxkhuD4EStHlPfnbxvQnGMoU1AtEylhLPclm6w9SCt6kCs1U?=
 =?us-ascii?Q?bICgFpowVvgQFmv5MNFSIivXLDT5HHNuDAweuvsvnezjj4QaCrJjD/nyt2o1?=
 =?us-ascii?Q?VyXj4W5AOu5HbT150Dim5llGHEeBEFQfwq0emSSRkhCvla18qifsBNTGAOR+?=
 =?us-ascii?Q?3S6HC5HPY1f3ExS/LipTa3NKJvqe4EJOrZ1NZp4F2i7oNBlvVWxWD1ONsY91?=
 =?us-ascii?Q?7bmWfJ0mm9zzbHKm/wlVX5SkIs9wYsPDTa043Xe23GvuBPecNEuLB5mS9y/W?=
 =?us-ascii?Q?THha9Sh+W+QkA0nR3ltpsDOk8ombCDTS0KKA4nAiealMf4EuZWZtD2GimV61?=
 =?us-ascii?Q?ArhbadG/L+LENr2L7lRPMAiW94CFxXSlbQ8WVFenDI2tQ4bSIM/VD1/d0o2r?=
 =?us-ascii?Q?GCoNzeMY7WdPVFwLzErKQVqPsNvbGKPyzLBiXj7UqA8oqDlAGoNqGuCZyujN?=
 =?us-ascii?Q?PaE0L2oyJKyVyKa/+ehVtcaU4JfHKYgN8gx5O3sTZApxfvmO+rqd9oFiaQMv?=
 =?us-ascii?Q?NUAUNv27pBufBAurxMU/swzx9QScncJwrbQoH+GR6yo3jmRIhzNVDU/EOsqW?=
 =?us-ascii?Q?qYkL2Y+YFb/vxhjZWXSm4o26V3kivOeCzSIhwX+r0ftVuW+e91JETasdUyPs?=
 =?us-ascii?Q?/zn6Ys64p0Hyc9GbYTdVUjpvZozTGCpu0ok3uDyvV8tqkE3FAm027utGBeB0?=
 =?us-ascii?Q?XiGR1mlxqChzOegDBu6NO14OljpTcij1ozMR6THuiiCU7ZPBsgZisEn6fqUT?=
 =?us-ascii?Q?MvJHp2eSMW2vAYP5x+uDflXnzV0vI5/J1da+k7qyqtsP7YVJ9WwBqDMYkhIG?=
 =?us-ascii?Q?ps+BNF0fOQmDfTQ+QyR7n2l3O21aOE1Wni7UPfrpqt82MW1eid3fdx49vxjm?=
 =?us-ascii?Q?67PG6EaeiP2PZmyv0ZTzbBPM2/vzIHcRx2wrd5OjEo10cDKeNf1c0FUC96V7?=
 =?us-ascii?Q?qeAmXF29k8XtebZjPPY/Ell4Srez9vuUnop4dxwga94/x3h2d7wg4rHUdbya?=
 =?us-ascii?Q?MoFUcZnvAcT2LuNQm/C8F6nWKuC1zrmgvLn9nhgYh+A4bBT3V5tl6EodGYy/?=
 =?us-ascii?Q?axNSSptP/a6e0oY/UlLfolLqnBL8zUu71l11evJak3e8uwomDMSe9qm/ipvl?=
 =?us-ascii?Q?DrlFjusuJHB9nayJvA6LxXbqiXC25JVlty2ddDlOWjPAZ533HQ+fCY1xSvVt?=
 =?us-ascii?Q?f14qYukiCGtqnQVHas14DPEO1hk3en1KiK8SYL3P58Hu+A71Lpnomh4npiqK?=
 =?us-ascii?Q?WaoOUyjW5T3hh1V32qyFT8uDGQ67LXrX1wbobSd/sNAF9/eKHe/vctIumKn+?=
 =?us-ascii?Q?CKy+5BuIYjkBoDB0YGNnxjGBIK7v2PmIQIsIUHEAfluc/Dg4siMrrPCuIkqd?=
 =?us-ascii?Q?P9aJjiJzM9HSuoXTTLZ5exg1WkVwqOV0B19/L2rbfM3hCnUmU5FnZ/fpd5a/?=
 =?us-ascii?Q?HL0ve8YLUcR2TzgrDFB51StjlGn4DiNaZ2rabHDdyui7CBt2dKEqfhdthn8h?=
 =?us-ascii?Q?Iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 83b9e602-53c4-4294-eb18-08dcdcd994ed
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:44.6420 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +fUsfPAXlpR9GlYRS//NelDiN/IZITYkynJE2irXOQ1TOUlnsgz+brMASXFRBdK5wa9AVdUjKMmirwlquGoSJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7425
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

We need to ensure this is called on every kind of runtime
resume and not only on d3cold is possible. Aligning with
the hpd sequence from i915.

Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 1ab4dd51094f..4d1dd5294b89 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -330,8 +330,6 @@ static void xe_display_from_d3cold(struct xe_device *xe)
 
 	intel_display_driver_init_hw(xe);
 
-	intel_hpd_init(xe);
-
 	intel_opregion_resume(display);
 
 	intel_power_domains_enable(xe);
@@ -470,6 +468,8 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 
 	if (xe->d3cold.allowed)
 		xe_display_from_d3cold(xe);
+
+	intel_hpd_init(xe);
 }
 
 static void display_device_remove(struct drm_device *dev, void *arg)
-- 
2.46.0

