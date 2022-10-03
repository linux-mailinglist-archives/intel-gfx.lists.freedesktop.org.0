Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9654B5F340F
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:01:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F6E10E434;
	Mon,  3 Oct 2022 17:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 943BA10E43C
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 17:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664816494; x=1696352494;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=axpCy/cvmkX/nPyW7nDkGmLqafnYae9FB/kU22RDNvs=;
 b=CSYejwvP5XChK5YZMyuApEuZyDwpQds8kyg6ww+BEYE3DOb08YyWW0bX
 snMiB5wHzWE/SBde1an8iQY4Jt31t+v4wyYiqU29DcEB7+4fDAYfIiyYQ
 5uvtdURYN3A78CQOFMhKsUjeFa/7bpnjNCDB4X4uHlKPjtC1sYAe3duJ2
 9AJXi4wBfDBYl1Hqo7f6GtPyWFdbrLOiX6IuZWNdv5zLeHUjiv5qHU+xY
 oLVhZ5nhPFh+fxYb51O8sh7c7jAf4b8H5FaBFTW5wczVuEFLR80ehgOCX
 pJaFySF2JhpcLyEze+LRVbtdpBGD6enXXbyEJx1ouNRRu9xpDMWcVUF50 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="329091886"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="329091886"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:01:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692141024"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="692141024"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 03 Oct 2022 10:01:19 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 10:01:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 10:01:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 10:01:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WBoGoHPX8rz58quYDoLd00dlR8PESEwTxpO1N3oDhRJ2CjOGcLfWnTQFLJ9shBSwrj3910CZNw+MAnKBC9IhE7YsLp/UbxYSeLc2UTNcMk1W4gBNwVEDDL8yvgyt281N9Y5MrmqXDjhS3/g4JWovTx0GbWH2ES+FdESbqo8MCAwYt6SXDK7b/tmhlelbstkeP8GuVi6pqpBBeaJGDnjowqC7cO9qdBAQXplRXXkXiFf5rvgxo85tN3u+EUu3XtfO9QtZpoFOauGSmnc3PTdsbo1yua3eFX+mpdO9o6s3ugkD9K5LtkouDSfY70cQA0hanEtKbDpxAdyrIR5Pye4JmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VRMBqPWpEV4xajyxjb92OC1osBEUvd+wrmDWaXKHyDw=;
 b=MFlrJDeWS6TeDRNvsamF2nG3rDKiSY/XiDoczy65cUZwvwLHfBhNkSiVNqQ2eXNhJKgGXhutvgyutaMJ/xi5ZATR9b25Xn9ZdCugj6pBSUZyIK3c26sh13IbGGZzbCPL8wZTngbtVj2pVbufkSVbVsAdBifIWuRGyMtsuzKk4BzZ/2wRdf+wTYzh+iJuyHRfsjkFzRIU0GfflBVDYF/Yx4qqz90XOT5mm09apucf7cqgGraBNC1UIea46g6NSItcqbQTzf1WG7gKTo5AEhIqK/s/ImAiJh6SA3Y1z3frpSyaoZnzSxwIbYhHsBtpIhG4yNfn6v33M7003pzKcuuAxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH0PR11MB4870.namprd11.prod.outlook.com (2603:10b6:510:34::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Mon, 3 Oct 2022 17:01:17 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 17:01:17 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 22:30:23 +0530
Message-ID: <20221003170024.195223-7-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
References: <20221003170024.195223-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN3PR01CA0143.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::7) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH0PR11MB4870:EE_
X-MS-Office365-Filtering-Correlation-Id: 758b7de1-a488-4109-a207-08daa560e334
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6M8Fjpjd/41qcYYSSFGo9yTMUEoyZ8J9iMdPdasOhQy9JtLtMvXD6ODRvPQW3EoV4H/jye6Xdlgl8PlFvy75XRyESwHE/0XjWpO305ZWg2FmU33/G3cl1Q4Mv4x0qDI48VulR4JG/HOlafWFtp9kYFJu8z7ilY1/McfIyQQXKFiQhLLmnaJ7Phxq564SMIp5aySO8IoBjJTbYLqJQC0aHmPIEIdjX8RN18JgjfL82I5nFnU48xfVcdP1+lQXJJPW1RyFc3TXdQey7CT71yJwxHAhH1XiLdlPmbOC6arN1KLbtSG8C2WlY4FvFeWWHSJRzT+LhYkfL7xz+cKEjGNxp+KgSGT0jlVAiY6lqqkIjTNPS2bOnQCzE/9DLYOiHlMbqInJgCloTIOv0BA6YDfNYDNtOaoZCucljyRL0ofvkKrh0vOl2NfOJCtO/ysUZGpdU39Sfh/tqbXvxAQc704g2SUuaA92kPo5Y25tD6JoZiHRKFRIDHDGeEBEH20njR1HnkdLYpHS0GxtQ/GDTI4mC+z6VTMvWgaf6hSR3iJvIZ+G+AInke2axtfrGhHRZvlLTHdxGH8oQNmtwS0yTquoTSwq0IZVYk9v3ptYVMU1Y27igXdckw2xMseO0nwnc9haw84or3QBdXigklzE2xCJD3XAY6ygrqhAmFbupM1xpFs2Dg/UNScEKTo6qMwpqdYOkVfPcx8SPtGEzFtxa4Nrkg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(39860400002)(376002)(366004)(451199015)(26005)(6916009)(6666004)(6512007)(6506007)(41300700001)(54906003)(86362001)(66476007)(66556008)(66946007)(4326008)(36756003)(316002)(8676002)(1076003)(186003)(2616005)(8936002)(82960400001)(6486002)(44832011)(5660300002)(2906002)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vSy9M3xuvDaR4/EHUzqlF4M/fr9rls7OebJO8heQyVJ9M4sLdSSK9fNFjQtV?=
 =?us-ascii?Q?uzggZy72Dz1Na+U7aqm7AAX0ycnP0j+HctF60SsRQ5314aeT6MTnIhzaG5N/?=
 =?us-ascii?Q?MnbWrqOrxRxDyhphQCRnA/5xb3diNNJTJ1GBkWnuYWKQwjGI0ageyojUbjE7?=
 =?us-ascii?Q?WURnODKUM3TUMG3TsZJPcGME63Yx1yxrnNVcqS5TmFI67d5Q8OVSWuAICNAC?=
 =?us-ascii?Q?kNm95CCXIF8djdTxxX71L+6VH6cbkHy+X4mPYCjwHQ3aXWz+q7u9xFE/lXL5?=
 =?us-ascii?Q?9pAzF2rsRaYNu3R2IbXLsbwbfIe1TQGlzAHCoWGwc+y+2LUUt+gHZIV+4SwT?=
 =?us-ascii?Q?Ybwe3CTQJMbJeOCbAJdOlb4TRqCx2Fep/uwjQ8pDT4/9SstuOPxEsVWbaY+A?=
 =?us-ascii?Q?HaprY8Af12YVgeuwQbG+Wog8efOXDxcJeLtcf7gZqswxE/ci1LnnV5vv2jxg?=
 =?us-ascii?Q?jwkNn1tSHe7prpKFDoHs4GDt6qfKb4WzUg4RBRye7xiu5XZUCfNTb8YAfxco?=
 =?us-ascii?Q?FhIcwB4uHsQquAhorv58zQ75KRHIGy7QVmCyHwYMmLDd0/8AwiQYzzxd8uqe?=
 =?us-ascii?Q?MKAFt/wQAcgZN6z7GyMB2PI6u6wMFnxDU/U58HOyS1wYtcdSPgVIRrb3ChBl?=
 =?us-ascii?Q?AA1mIRzYH3Fd/dQRyDr6yLp5D9NChyRLZkYgaY70uMSMKeqDUrN0fkTzn86B?=
 =?us-ascii?Q?VlyZbz7Q72C6kyt31PMz7y98JP2UXCHIgz+kw+QwAnMojtgGfZ3PdKBvmirP?=
 =?us-ascii?Q?UcFD44xzy6f11tyUA5cysdvL+IQWmOS97Eau4r0Dj3rAscdhrxpTYOvpNAt0?=
 =?us-ascii?Q?/tHKUwI2nZ0p9oH9JRYG8wIGg4ltDGBwOOvQuHIU/Jj1ELSTzwfC8Khc5oua?=
 =?us-ascii?Q?ZLGcmcIbBsgZ1RKfyeB+VYbmgkUFU8hyMWrBgLfxFpyEeOpArtJ8dWAgiMgX?=
 =?us-ascii?Q?GYDcdkd8TdByDSnAEqeVEKkmJJI0fkH8jY8k0xBuGo1rDT7OytKSr1O60fKj?=
 =?us-ascii?Q?4ErWnJ4HWgvj1PfWP1nl2WsJddxOtLbCCCptI7GpxGSBgfueiHKvLi0s1U6+?=
 =?us-ascii?Q?wIxCWME9NQ+cIViLUQBNNz3vpFY96E+fYiFd3o5+JKuDDo/AJdUIvyg8PBs0?=
 =?us-ascii?Q?UBYROkjBds9TGRnYWYSSV8R9Pdcv0ONhMXK754+BGcnYzpRBaq2sR4nEkb4M?=
 =?us-ascii?Q?RG6qVkrhIm9bS3byRg43MSKB7fRbq/nj86BRzohwtUXNW626MrLomMeCNfX8?=
 =?us-ascii?Q?rjV3gLQoqqejn8G12IrY5tAzcSzHzNk1E9+ocpIHgnlbgtmXb7TKBzC1akAQ?=
 =?us-ascii?Q?ev7gIl/itT1s8wD1T1kIyA2ym8o7zhIP/6Stq0uyDQgiXQn/ZPM/w5q1ECZN?=
 =?us-ascii?Q?XBI9z4L/YOgTDazBO1Q50+30ahyaNmV0+UxtXpx/bEn8d4HWBJ/xfYDGAjM0?=
 =?us-ascii?Q?SZxxWhL4XYaKAe5BDc+zDreUgtwCwJYJi/QxJPkIV/LUFyRejmCSeWNGY/WY?=
 =?us-ascii?Q?mue5u//7Ip6LUSBiMA+Bmit2pG/nn3YnrPFOCHbV6ZdZcrlXmygs2aTJPa8w?=
 =?us-ascii?Q?hxvXh+n2O8eYM620pYz1ma4cQjZFMdbNMXyJShFm4d3uq5ZNBdrqJsYca7th?=
 =?us-ascii?Q?ls0BhUM9Sg6pUUfXv4ARhHo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 758b7de1-a488-4109-a207-08daa560e334
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 17:01:17.4917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BESXX8yCpnFDAeG3IS77g+/e770H/yKBKmJcHfdBz8W3oviyTgQnLUtVI4L1mIPhZ8IkvTr/53RYqukY7Gn0X9wnyyxUA8Y/o0hX2/tVlS2kcKkWrB8u544XQCUYFLE0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v5 6/7] drm/i915/display: Fix port_identifier
 function
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

port_identifier function was broken when TypeC ports were using enum
aliases. It would return wrong string for TypeC ports.
With unique enums for DDI ports now, fix port_identifier to cover all
ports.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 62604cadf0b8..4a5f7df7492b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -250,6 +250,18 @@ static inline const char *port_identifier(enum port port)
 		return "Port H";
 	case PORT_I:
 		return "Port I";
+	case PORT_TC1:
+		return "Port TC1";
+	case PORT_TC2:
+		return "Port TC2";
+	case PORT_TC3:
+		return "Port TC3";
+	case PORT_TC4:
+		return "Port TC4";
+	case PORT_TC5:
+		return "Port TC5";
+	case PORT_TC6:
+		return "Port TC6";
 	default:
 		return "<invalid>";
 	}
-- 
2.34.1

