Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CgzqNhmu8GkdXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3927948542D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8BA610EC22;
	Tue, 28 Apr 2026 12:54:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OcA7xuXO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5CBB10EC1E;
 Tue, 28 Apr 2026 12:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380873; x=1808916873;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=qFk/y8YSQ9zhA0ZHAucHDg9uv3Cr/13uoL9UZcPjQOY=;
 b=OcA7xuXOBgHssjxj2NbhsfbaALstz0aZx5M6OAUIRfzLczEfIhT6N/6U
 SSN2sLRJlT4ZkWeT0+nsm6T5/M8QPBPCVXZa/qInR7kVTIEwHP6OiTA8E
 N6gzf3jH6HbNLMSvzlKzmXAj96s0aZfBrclcZbpuXWnwE3N2nFOE9AOWs
 UdbvVByaSgOZVjx5WRZ2cyqfosEJIwhTv7C7gvDLgoysmolJeKl+4UI2N
 oU42J7UbSec1Nk2yGEYcdckLZBeUn1xs/xy9TjIJ6hjXPp8sb6R8lYLK2
 OAFLylDVAacr2B51RifKiRwPbs8uvb+YiUwa14YhMSzF514giOeuB9Xc7 A==;
X-CSE-ConnectionGUID: 1NAWd+iiQKONSNPYRpbagw==
X-CSE-MsgGUID: TdT8eGJ7T/SVjjBIUfeJrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945230"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945230"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:33 -0700
X-CSE-ConnectionGUID: 4nipHJ9YTw+EjYEk/8bKMQ==
X-CSE-MsgGUID: LPoazqWsRfa6I5qqvhkcXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377731"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:31 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HpffzB0y0k0ZnCp+FgvBqTjAXrN0HyxXvhI1Bsgnc1BMWzOPHniezxCzcz0hbaqb/+tQjlrKjWNMHB2BgNPXq/V70PtCwQqihec3jjOezE88rg65qLKDWCohrClffyw382DtUK0WtDBRZbqO6k1ttjO+vTMQY43NlgyDMk+ZEkxAicoB3ioftBCwxMtzTKuaYP26feKcmU8+F7N2rVW8imy5wPQuAvw2wS5kF0AbVI5nNHv5EE0K+nAY3QMmQRj8L5iXjB6ckqBrw9V/F9GknjS5xQ41OcGj1skiQRdNW0gNDGEmI62bRQ4cbM+bfSZTboXTXLulOpEexgiDbyaEHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EF5Zpi3ukxWqp3PE8tGNEIl/oIXW/42cmyKKATYy4M4=;
 b=QA/WGFb8LXIwuy1NThp/u0E8+XZ+aLA2QObIazo7s8DnKxXJFgwwK8Xqy30t96UKanuBEZUsPt7ZkD7C+UQAnvcOUYaw//Pa5igv1tVxZNB1XNYkevHkiZJs/LqfNW0lziZL476jKpgYYFWbb8TyGbeHDMe4o7u10bFb/qPYWMPwdseirQzRk5xOH2rJfNZWTOjl64OCU+HvOGCGhviBTg7TYXrl5/RDLBQ0kjtlUGksR2CgbQtKtUpXD3zWkqYpKvAN9YWF3DHFX1ryy3HhTvNiqBf7PU9XxnkjPdzZxjp3cwwe8PrMrekFPwEllXor1G9B4updzufRTQBmg941qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:22 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 047/108] drm/i915/dp_link_caps: Use max common lane count from
 link_caps
Date: Tue, 28 Apr 2026 15:51:28 +0300
Message-ID: <20260428125233.1664668-48-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: e11ea9fa-f3b9-493c-128c-08dea5253653
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: N60pSgjqSUyBD+KXNLHFRJkbi/rpIcUMwHjiHqDZMovNOoYA5sSbp+PA61BPpwITHIzP/Y1J1SLzmn1aW70watwPQoIY3BZNsOuV+/0USvkgo7VsD76WesFBU5KFN0W4oTzHJyq+9WMdyb1Qrbd1/BBABBBXQujDKmGdz04Yv94NQeJ37av3oKIe9op0pVFVq0oJwR/RfqsAx5X0l0lDrUQLa83ORbYwHse+LPAHxZ+eRtJf68Z02WNprdVnQtr7Fex2PocLYpJI8eJTpf7f6fmdTLVyKp5Vwukf/OZgKhfQ/jQCEaVZlKdwULkjPuUDec5l8GWHpC86oCaJQYGwATXkjUmT4QON9Bg72qiGBORtQ/uvqMDy2ZELLxTKdvD3fSBQya26zjA4HlMzKxY2FkGK3QXpHzoZNTJ4mM81n6g07nJgCqh7/UP/yER7UiyP4/qHyIxZjmqADWiwtZXrgt4jNHfdwWjoORhDkH04lIL1s1bIe2WXh1kQMRU5XcKHrAXLs26SMj0ZIKiO0oM34E0xTfVFsthq0Ptls+eWFtMFXEGTSSO+rDnZfuTIr0NXlJKT65+Sl8lGmXK2/V+x9e23aKk7QiFG7AHvGalEQUYyFDHPVvkPXxL3jbLzWZyo8f1cynCa7eGsm1D2gDEUAq4Vzdc+qKpq84jR74InVf3/4xwMegJ+SKDZ89ZiHuyG0uQgLzlof2gZORhXOK3XRjA9ltDa0Yvcm12xM5qAJ3c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vV4HJihPQDJXWmiHFgjqkNLSmuc54UROz6y4cnrwgJ1n8bVzuGyHfp8B3sYg?=
 =?us-ascii?Q?NW0rNlrajLRAe2ZJ2afOJspisOXNActpVQpSQz4lWjngBKJgCYB5ppJ1vdhT?=
 =?us-ascii?Q?5BjwfCZF1j8fLb5i9Gz5OT8F8vVFD01UCwdBUiXsXDE8qvz88eIkby2kegfS?=
 =?us-ascii?Q?HoKWdvEnJ3naMh807ZyPOzzTV8i/bq75jFkxMy1okLl3hNeosGtlvBpQUwBI?=
 =?us-ascii?Q?noveOty7z6DCIn7gmrX3ivmweScw5wNb0SNtoych5Zsf2z1qVU7M58dOouVu?=
 =?us-ascii?Q?2BBP71bVy2oPcbHVxdyoSy9ioL7BUHAiesmDOwhXbRrQ9dfw93X2PRxWxPVD?=
 =?us-ascii?Q?wroajyTJOGErctXahrQ0S0nXWmY+TnEWPZH0il9HHXm97EhF+CHGZtzSJFFB?=
 =?us-ascii?Q?sLfP0sh+7WAgv44qXiOKlUF6Y4ZHBms6CnSFhD8I3Gj0tvisf0BS3kaZHVh+?=
 =?us-ascii?Q?J+u+brO16FtnuDEJX1tzpVI0BZbJvDIlKqA/gijIFxDc/U9LdY+jL+Sdr6jv?=
 =?us-ascii?Q?VIRH+9qacLVJ4X+1Nu1MMG+AGdDpVHIsmbwvS7fzdKKyrecGezp3TBdL59u/?=
 =?us-ascii?Q?3z2U0FrcQ1HMTG3QRG3v8OdLc2BnGzxzpz+gHy/rJO+a5o3yjh240FDAi269?=
 =?us-ascii?Q?dK3oyz7kO8SOT2roFslg+IekjjxkDu6wWwe0A43o99/C56YfdnHah1o9Kg4J?=
 =?us-ascii?Q?xaEBCwO4dwnXHHit28sgYWYjEM3jyT0n+vGRUk5R5y6f+AxwerzSgxDmqwKk?=
 =?us-ascii?Q?0jmac+9cdHv3jqW6uP0n1LJ0mXoIyPBVoaGqoTPU7/Dj6RP1wr8cRsnMu5v7?=
 =?us-ascii?Q?Zi/m1MjqYvdqnjiriSZh90rhWjJzSuI9KExCGcX4mVeKlZmJRde52CvAVu9V?=
 =?us-ascii?Q?bTByjvO81O4/8Q2NBKPDg2dmaEDTdN7NLYlqLdGadRNFPalyS1WQgXLP4NBx?=
 =?us-ascii?Q?JtwGbhR1n0EQ4TTw3i8KXRZ5ixJFOiZzqIcsIn0Wb5cvN1DVlZVJ41BNbbEu?=
 =?us-ascii?Q?SQ0PPI1Gd30D/2Al7XpPGN+RiZwkvejFI2VorMHZSFky2sR1JScSDbsW5/Zh?=
 =?us-ascii?Q?5HFjmC3FLrIbcHRxc9Gh6He+UmFWD7qrDnJqyJJH/uUIbMSjKn3SVV4AlOrn?=
 =?us-ascii?Q?XQxfaST4uTspAtsOzWC+a2/9kzsNeezog+XCLjeXFMyX3r0iEf/2xNJRA3Se?=
 =?us-ascii?Q?xZx1am/FzUD8xYtw5rY+Cv4UWNjwW5R88Bg7vvm3GV7ZJx/jTrlV+u8kISY+?=
 =?us-ascii?Q?9okLohe31ei7hURH3DvZHYpR6G7EvbMQQ59c+fr+8VWpcIUI6Inx59bPwMsN?=
 =?us-ascii?Q?OCqhgAz6Bfby2nME9CkeOBqRhyjBQ/AXScSgwVnIIZxDKMs3I6LJ/lbDhPrR?=
 =?us-ascii?Q?1CGG4t4k6xMPVtmZ7mEm5SxnBMeET0Aetbzff/39u2f40rFKQq/ADntRlCTn?=
 =?us-ascii?Q?k0Ox7bjvgkNVRpRM/ENKZoC5iVlDOLWqsBwbRYla7+u4LnOfqSlDsYhaobJ0?=
 =?us-ascii?Q?gXlhnnwf2gh2OCPtQJ/ScqQqmxhYdvTCr0HFFlLLT+yWYDCMfsAtzV3veyn+?=
 =?us-ascii?Q?Fn72Q5P3zxvJTYzQh4sdFbifd437Fd1p2Ps3PbPKLI3M0nQusW+JV31NHjHC?=
 =?us-ascii?Q?P453qG3RHtrM3xHsJJtsvQnCFjWpsz2QShGxdlJoxNQwYQpuUlXUFdouCm0Y?=
 =?us-ascii?Q?+zvchANBGcWcfAr9clmhXNZXS6QFCPzgAxPD/Odpa90tdQUakYRtw1gaxEOc?=
 =?us-ascii?Q?VDnw600+aA=3D=3D?=
X-Exchange-RoutingPolicyChecked: hYH6hs2k4Ub2k+E7Rm8AsXUQrfUS8daZBQWw619ZgQ3OS+ZHNUz5MTGb0MeYvNVoKdOo4x+nRD+pTSiQMz6uSHX71oeIVRDqoOkZ7ieXySYxkm1erlPsCsFJMECa1gz9gGA+elJWHCWWX8MA9BLTEE77CVLRR7+IPYZJKYWvMVCbkrKsuMABzVGS7Mb7wFuVXimSsA8xqx2X6luxfMctceE8C+jKCJ2UPyuPMeMXLQzMn/WwJN4jddEfMw6w4Jvyd+gp9zI8BkFNcMyvdGrQGzoBGPc2LpdqJAZOASUufzXGKk7COB2Jbqo2ruzotJeT6mtLlWRUisMFoBBTVnKLsg==
X-MS-Exchange-CrossTenant-Network-Message-Id: e11ea9fa-f3b9-493c-128c-08dea5253653
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:57.9164 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oG9gnzAd5SRQb85faT6j+YPQ2jMu9oVQ3bhhreEtkkvGrdVtiRwc8zH2CZywUVyx12tjU2/cEZBLrpSAR/YhaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 3927948542D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Convert all users of intel_dp_max_common_lane_count() to query the
maximum common lane count via the link capability API, in common with
the link rate queries.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp.h           | 1 -
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp_tunnel.c    | 3 ++-
 5 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4e20e1fb20512..18b06e5402611 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -338,7 +338,7 @@ int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 }
 
 /* Theoretical max between source and sink */
-int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
+static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int source_max = intel_dp_max_source_lane_count(dig_port);
@@ -3575,7 +3575,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 
 void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
-	intel_dp->link.max_lane_count = intel_dp_max_common_lane_count(intel_dp);
+	intel_dp->link.max_lane_count = intel_dp_link_caps_max_common_lane_count(intel_dp->link.caps);
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
 	intel_dp->link.mst_probed_lane_count = 0;
 	intel_dp->link.mst_probed_rate = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 363907d463486..6abce846b8e7e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -103,7 +103,6 @@ int intel_dp_max_link_rate(struct intel_dp *intel_dp);
 int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
-int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
 int intel_dp_rate_index(const int *rates, int len, int rate);
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
 void intel_dp_reset_link_params(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index a250d7ee06ebb..5d41e6d9b07df 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -126,6 +126,11 @@ void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
 	*num_rates = link_caps->num_rates;
 }
 
+int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps)
+{
+	return link_caps->max_lane_count;
+}
+
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
@@ -134,7 +139,7 @@ static int forced_lane_count(struct intel_dp *intel_dp)
 		return 0;
 
 	return clamp(link_caps->forced_params.lane_count,
-		     1, intel_dp_max_common_lane_count(intel_dp));
+		     1, intel_dp_link_caps_max_common_lane_count(link_caps));
 }
 
 static int forced_link_rate(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 7a2e383caeef4..0283c27b71a8c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -19,6 +19,7 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
 					 const int **rates, int *num_rates);
+int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 64fd4f09d1cdd..0f1a6f9d47ec5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -57,8 +57,9 @@ static int kbytes_to_mbits(int kbytes)
 
 static int get_current_link_bw(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int rate = intel_dp_max_common_rate(intel_dp);
-	int lane_count = intel_dp_max_common_lane_count(intel_dp);
+	int lane_count = intel_dp_link_caps_max_common_lane_count(link_caps);
 
 	return intel_dp_max_link_data_rate(intel_dp, rate, lane_count);
 }
-- 
2.49.1

