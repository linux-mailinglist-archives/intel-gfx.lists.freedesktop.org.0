Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 981CFCD6936
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8C810E6DF;
	Mon, 22 Dec 2025 15:36:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g22671Z1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97C710E6DF;
 Mon, 22 Dec 2025 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417786; x=1797953786;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=vblmFgh2aRJg8EXWe4SshTXOdj9oXdbTeZAz4hLujsA=;
 b=g22671Z1KByNyp1VFTX3/DaoHL9Z3mQvAsNEMKqI2UZQ5EV4+tV5zeNG
 ge4IuI9twOvTYRs1NvzOLGq4FYpweEPxZDgm9zYVhBGrdrHon3Cyaaxr5
 dFth7kYcdtQ2V5jRXrIt8WqPa3sg+tifg2uLFx+4ce3+u/3wWCaFrWfpT
 GY6CsTsi6Q3+7PBiWgZ7kHATUr0GPR1qxBLgayNkiM7qjQf2J1lnGQ0b9
 vCJuUihnKiN96JjuLt3nUJ7BA1nHrWumVkYsPey2Z4GtwMuqf7j+6hpL5
 Zs6klMrPN7CcXkcs2IoJMZvQSQ7wu0JDUxE3Q5WeJR9P6KpbjaBgUiMfW A==;
X-CSE-ConnectionGUID: R2Qq9WnhR7yMhUS12Y0MBg==
X-CSE-MsgGUID: U7e1YERPTbyLqWTsNQxSDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211479"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211479"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:25 -0800
X-CSE-ConnectionGUID: /x8fQ+DGQNu14k+K9QsDjQ==
X-CSE-MsgGUID: Qn4nVCymT8uafeMXvuJ7cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854953"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:25 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:24 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:24 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vfOLAcCh2p9AUtTGaX4CDNrhRCX3cgTTZEtDCEkO2D4R0ZZejWJK6ahVEC6GQKyFz4qbTguZKvSCO5Ewon+r9Z0AlZzV73jWLAvrH/D56o8TSWJHvsRloH2he9X6prNDWrj1FoJd8nt92SNHcROrukq3PtfF2eJpyeJGN50EoBtfhjbYUGNol/yvihi0VNotPlamctc0xQ0r3uvAC0pqlHqxrNys1vERRcAZk3eUJHLRwBPH67GWdBqvBZ9bcjzJ0LB8XxWcaDDj9uiW6TXXlbZFfF1baar1NjoqeEjq9zHm25vi7qxiOT2c/SNvo4H7irNC3aKGc5l5gHntASXFRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PvKB0MI0D2pEuKgsrJdmvQH3IR3I4nuRxybSIbfWFFk=;
 b=BQv6A/uuIqOLf7MlqcuoqWPMQIHsMhBiA/jW3iDCy8836tcT3tAnPBFRzf1PvrBKMbcs+VSA7Vy08w9acQqAFy0MDSRgojh/hYl7F2mzWfLtE+JLR9LAUTFn8FLkdKkguhiIe7br4A5+CMupuRriwNRSNCzyKrdUlakW8vBhwig2ppFBWmaqRzhYBWs/X91fBX16xUKpD+lsyt+D0pINpFsxyVIzw9nLIak1pEEc+eZcx5ZA8XlQBVkg2SYdvxQgnBuHlNCxY3b1G8zL3LIQ4iEwTy8/IIaCXqDNMnUPe2/jRfQ/ruoaJiOUnAqy8YgN+nWOGTw81WuxWjE7OdLbYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:22 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 11/19] drm/i915/dp: Add intel_dp_mode_valid_with_dsc()
Date: Mon, 22 Dec 2025 17:35:39 +0200
Message-ID: <20251222153547.713360-13-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: ae00fab3-537c-4455-df99-08de416fdbca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RFMC1sFW+EHqx2/mzGHf7k+HAZg8TcguEvDljH00r3aYMUN+oyZSnHFpIztu?=
 =?us-ascii?Q?lWt0gQ51rc9qaKEOFJ59ANf6mFcTo7n+mJbzlp0/PyJbrWXkD44aH2IGzBwT?=
 =?us-ascii?Q?wKAySdPy3z41LAzQKoiwhk1HYqp74KLxDy4xM63wpEwJVBryDemBG/DREwDP?=
 =?us-ascii?Q?vqA/1UofiEwQF1Xh8C8p2SJSxj+UKjGdoN9k3/ie2dT/mtbCmJ+rLRz5UmZ9?=
 =?us-ascii?Q?PWqxIS2JIxPO0ZrJSUp82sOfj3t+uyv81nQd33DixJUGx5dQ+COf6Qj0JAAw?=
 =?us-ascii?Q?D0L3yFDBi178I2Ndq/Jh9VDheKTeL/RHN9AJ+V3YduNQn9PwpfXxJhV5zdrj?=
 =?us-ascii?Q?ANM3tZjsI/fLUdEuG/Z5DuQsKeTGzpF6b9dwUYOIWAZROKIUtBB291JbRqxP?=
 =?us-ascii?Q?f+FjSyH3fOkJWxgyuMrT7UwYX4S86wdRiG5fr/DwZoZrqctwZ5fYsGoRnEjT?=
 =?us-ascii?Q?Ms5kcXHn14OtXt3lj9UxL8rpzLFvHMvyLS6obfe80A/gOHhwQWeU3tLb6D9D?=
 =?us-ascii?Q?5h1Jkya/54jPzwwjfQT2mTf5YhnDJwWlOS+rEBHOE7YJyhzi7373QDWhkOUR?=
 =?us-ascii?Q?GyfgGI8jw2s5Z25WvpCBcSpHpLBshIJX+isW0rXauRJMs5IaY+EtV/1ZGj/1?=
 =?us-ascii?Q?hUEIsRSBLKfAurCpGRQfIFNKqyp2yDqfDAMpaT4/iv7FeBsm+yqjSSUtQR0M?=
 =?us-ascii?Q?gcb2+YXMcoj1HjesuGWctQRkKq9wWXrsD+ivVPFQv3+c2fFbzQHjgCNKORST?=
 =?us-ascii?Q?bhUAhFJ8hhQ041/YAozJYbKPAuIflPwtQq0cjaB39Rkl7jy3saZU4PBSScPr?=
 =?us-ascii?Q?lZm9XHuRZVcDRBTUTWywe2+bifyLU7WKP6xc6LtJzpL/OSMVM8PBGvN1M+89?=
 =?us-ascii?Q?M1N10udgJL2t4SRnyZSg4CGPJ/I68fzQlnG5DiFayYfSAN61Qee/L7mD31on?=
 =?us-ascii?Q?6Du/qhNZtZehpzeWkMljHDv/P6yexmUrhQEX76F7W9b+JpHHBmXthn+9o1Qv?=
 =?us-ascii?Q?6xM18mGlE87GaaKncqahaGTfssndhrZqR0D4/s/YEDG8gpXrBLpikHxV/xBO?=
 =?us-ascii?Q?ygtn62w9p4tBkqSv/heFV0QnKnb9YfSYnYMWAAgsTtjJpLQP9guDT56oOChG?=
 =?us-ascii?Q?utnENwFtIRumyOGNItV3XAnkdw+X3GVWnAp0M1F2zE19xZsSKVAuclRx6Tq6?=
 =?us-ascii?Q?sDAeYXRblZ+6WBs4T1ZGkrsEhSYFWGmPxnOZyAUPLZjtt2oPGw3vdcil8yIk?=
 =?us-ascii?Q?LVFfApEl320JflaU8xLc0SSenhWp42uefJztR7eJ+OuZKQ7dCxJwgrbPd3NA?=
 =?us-ascii?Q?WK2nANA0c22OJ7J4FvMqp0gMG7Oy9o6o4cMFkfX2kCXYa5dkFwZnGaTrB7IS?=
 =?us-ascii?Q?H3uS+KMEPpDzgwTs9mkxetevkFdjJVNzGFtqpMqWirFtaqtIRHlqGo6BDl/Z?=
 =?us-ascii?Q?jUKOmysdNzFNVNDhCYkBWcHwqm4QBtrs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yNwIAuhGr7RYBJuMiDjEGifOMN6TbbwVl0oAQ+QLdREkf3QNFrZJ4jCfUX11?=
 =?us-ascii?Q?e9C+NSfO2WQAt1q7og3MrGrE0GL1rmjyBZuu5DkeunEqISg6VJTcq2EaKM3h?=
 =?us-ascii?Q?rwQJb09y0lLy5CiYnzXCwT3XH/8aBZ+oB4jZnvhHWpvWk5IOEhIYlSnqAQde?=
 =?us-ascii?Q?kvkb6F2ll9NG+RWYVvfl85094//YO8/1JuivOUdC50GsOKidycLA88ZfUBNe?=
 =?us-ascii?Q?e39HPMsbmrAXAgwWS8NJ/RaEZx8vypsfIYqvrhLiSc+C3+Cge65K6hPS7p9h?=
 =?us-ascii?Q?5gFt5pCn4iUgPhNwHO/GXdWUAX8AtW5yflHow6sTFacXkcKA/qRukQn3mAlX?=
 =?us-ascii?Q?VsEv52bGXhSbIARSp9QKvqqSliw4sTDhkFaWu8yebNbAtFyQuefbdqXjQoYf?=
 =?us-ascii?Q?fC8tmks9ZLDdXE0XzIKLokKQwDbNLLJQzBPpchg2JxMujv5DHC7GttVeVQHA?=
 =?us-ascii?Q?69Zwq2pZFJwyL1qHxkDhuofFKKHSxEpABFEOYJ+IK51OdkAAzHtZG03nZN/6?=
 =?us-ascii?Q?nF+oFqKw1L3o9vNH2O5jQGNgURkvBp30HhhzrrHql1DGs/uFKuvCgx9LkLnv?=
 =?us-ascii?Q?eqiUYz92HBsHLMjGO8Z/exe0NXFRSmZStcEMR3VWP/2FBRoQ3LgYMmUZnVWz?=
 =?us-ascii?Q?1s3l1SwrNXTSsVrbVF56uUvW/MtzpdiQ4/jaoIjK+MkRuKK/jLFr5rgPjU+f?=
 =?us-ascii?Q?2thliivxjO4Svpz5NkksbSZlPcxh7C91/d19YK/WrobpQ4e/pGHjq3IAw4Is?=
 =?us-ascii?Q?ybUVY6IucqvUqfoQIPKOYV3G4VD9z7YYDC2ay1+Mc08ykzsyKH2zZT1DreAo?=
 =?us-ascii?Q?Uvaj1hp0Ixxt8bzKv8LbNEWrftqHqGp5oaJQX8XtmbDqseqh3mQ+d7hBTpwd?=
 =?us-ascii?Q?Fj2X2LpulJ3H29dgyz0sNA1dFklUiv6N879PHYhmO124HrjwpdfAgnlKHPDa?=
 =?us-ascii?Q?F1xH9cV0X6IAW4uvQsBDZvNTTy9LGriBWqC06krQ/DATBVtmXfofZy71qQhM?=
 =?us-ascii?Q?Alp6lEu4xWRrVqiLlN8rHbpl3O+mw8QBTX6tYGkuR+6ExndaGKm6gFn4C2GY?=
 =?us-ascii?Q?CL5pjDL3zIKdUQmkWeDgEoS+Fo4WfS9185QS7CT6+pxo5RsSS87xU6iCZ2y/?=
 =?us-ascii?Q?yNfhRPNCv9E3V2k/B2+c45betYnFyp3mJafOGjWZ5qpXPmzxanHtm69t0/We?=
 =?us-ascii?Q?JpkGN/uiNDR5268ednqpgqle+0fk9JMcg8ihzNCYYb5ZjUbu9W1Q82Sov0jl?=
 =?us-ascii?Q?rcCV9+OhcneDxpmICjXar/NaMEt6YilEehgtkARF0Sk8dFujtdT/iRWRL2pe?=
 =?us-ascii?Q?smGxpAcLr96u+uP2GlQ4MengBgkSof14OXDul3J8q6wHJaoDDiXlNVsL0hab?=
 =?us-ascii?Q?l5GLdqkFhv4YfukZpdQWui+3+obYmW01VHJvdFgvXsPLxMQNvaM7QlA8lXSV?=
 =?us-ascii?Q?aJUTwdsKr0bRaLN3fmcESm187wiefPTGjXslEf1mf4HrH8vWsvu3nc2UV3jV?=
 =?us-ascii?Q?4p/0btxV2ocAEeloh8t1Eu57F07G4Vmwdoo8daAK8ej/F3zSO73tU5/e/Xm1?=
 =?us-ascii?Q?UUkXBdQw+HPSpuy3xkVyA9EbITcEmLfieCD06x8OiLGOJzrwJIXVv7Vxz3JM?=
 =?us-ascii?Q?Rk1x0IM6gt3jtuSfTFjn+5h5fDt1CvlxmBYBdlx1NbNY7LTStn9UBBNImByl?=
 =?us-ascii?Q?YKHSzUiqqV+zheUQRU3fSFd8eArjt1SdjlmHghI2NCb6cu8RPXfHNb2tIQ5Q?=
 =?us-ascii?Q?srQEx9E/3k7z0dQjlqItC0uSvgmKySPljHMIgk7JuTq35RQegAbybITsq5Ry?=
X-MS-Exchange-AntiSpam-MessageData-1: +Emvo0NAX9+nBA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ae00fab3-537c-4455-df99-08de416fdbca
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:22.0078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fuYODQtGgMZp4NHSI0C8P8ckc2Dj0UK7prFHq7i2dxLDo0/G3diaYF1shU6N09RCJPqVzNlBGHJnAUpcvfvhCA==
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

Add intel_dp_mode_valid_with_dsc() and call this for an SST/MST mode
validation to prepare for a follow-up change using a way to verify the
mode's required BW the same way this is done elsewhere during state
computation (which in turn depends on the mode's effective data rate
with the corresponding BW overhead).

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 57 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h     |  7 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 29 ++++-------
 3 files changed, 57 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d1139d6582e10..abd7632666183 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1580,24 +1580,20 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 			dsc_slice_count =
 				drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
 								true);
+			dsc = dsc_max_compressed_bpp && dsc_slice_count;
 		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
-			dsc_max_compressed_bpp =
-				intel_dp_dsc_get_max_compressed_bpp(display,
-								    max_link_clock,
-								    max_lanes,
-								    target_clock,
-								    mode->hdisplay,
-								    num_joined_pipes,
-								    output_format,
-								    pipe_bpp, 64);
-			dsc_slice_count =
-				intel_dp_dsc_get_slice_count(connector,
-							     target_clock,
-							     mode->hdisplay,
-							     num_joined_pipes);
+			unsigned long bw_overhead_flags = 0;
+
+			if (!drm_dp_is_uhbr_rate(max_link_clock))
+				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
+
+			dsc = intel_dp_mode_valid_with_dsc(connector,
+							   max_link_clock, max_lanes,
+							   target_clock, mode->hdisplay,
+							   num_joined_pipes,
+							   output_format, pipe_bpp,
+							   bw_overhead_flags);
 		}
-
-		dsc = dsc_max_compressed_bpp && dsc_slice_count;
 	}
 
 	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
@@ -2705,6 +2701,35 @@ static int compute_max_compressed_bpp_x16(struct intel_connector *connector,
 	return max_link_bpp_x16;
 }
 
+bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
+				  int link_clock, int lane_count,
+				  int mode_clock, int mode_hdisplay,
+				  int num_joined_pipes,
+				  enum intel_output_format output_format,
+				  int pipe_bpp, unsigned long bw_overhead_flags)
+{
+	struct intel_display *display = to_intel_display(connector);
+	int dsc_max_compressed_bpp;
+	int dsc_slice_count;
+
+	dsc_max_compressed_bpp =
+		intel_dp_dsc_get_max_compressed_bpp(display,
+						    link_clock,
+						    lane_count,
+						    mode_clock,
+						    mode_hdisplay,
+						    num_joined_pipes,
+						    output_format,
+						    pipe_bpp, 64);
+	dsc_slice_count =
+		intel_dp_dsc_get_slice_count(connector,
+					     mode_clock,
+					     mode_hdisplay,
+					     num_joined_pipes);
+
+	return dsc_max_compressed_bpp && dsc_slice_count;
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 489b8c945da39..0ec7baec7a8e8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -150,6 +150,13 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
+
+bool intel_dp_mode_valid_with_dsc(struct intel_connector *connector,
+				  int link_clock, int lane_count,
+				  int mode_clock, int mode_hdisplay,
+				  int num_joined_pipes,
+				  enum intel_output_format output_format,
+				  int pipe_bpp, unsigned long bw_overhead_flags);
 bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0db6ed2d9664c..e3f8679e95252 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1462,8 +1462,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
 	int ret;
 	bool dsc = false;
-	u16 dsc_max_compressed_bpp = 0;
-	u8 dsc_slice_count = 0;
 	int target_clock = mode->clock;
 	int num_joined_pipes;
 
@@ -1522,31 +1520,22 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	if (intel_dp_has_dsc(connector)) {
+	if (intel_dp_has_dsc(connector) && drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
 		/*
 		 * TBD pass the connector BPC,
 		 * for now U8_MAX so that max BPC on that platform would be picked
 		 */
 		int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
 
-		if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
-			dsc_max_compressed_bpp =
-				intel_dp_dsc_get_max_compressed_bpp(display,
-								    max_link_clock,
-								    max_lanes,
-								    target_clock,
-								    mode->hdisplay,
-								    num_joined_pipes,
-								    INTEL_OUTPUT_FORMAT_RGB,
-								    pipe_bpp, 64);
-			dsc_slice_count =
-				intel_dp_dsc_get_slice_count(connector,
-							     target_clock,
-							     mode->hdisplay,
-							     num_joined_pipes);
-		}
+		if (!drm_dp_is_uhbr_rate(max_link_clock))
+			bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
 
-		dsc = dsc_max_compressed_bpp && dsc_slice_count;
+		dsc = intel_dp_mode_valid_with_dsc(connector,
+						   max_link_clock, max_lanes,
+						   target_clock, mode->hdisplay,
+						   num_joined_pipes,
+						   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
+						   bw_overhead_flags);
 	}
 
 	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
-- 
2.49.1

