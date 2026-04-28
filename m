Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCf5OkWu8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9336848559E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5340710EC95;
	Tue, 28 Apr 2026 12:55:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JGkI97G0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6326410EC8A;
 Tue, 28 Apr 2026 12:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380925; x=1808916925;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=NQ6DGiP2SixOYq43UNwrbrp7dnIF5p0TZqhY6zs0Lw0=;
 b=JGkI97G0EqzrmLTyDfUuu6SEJ40UYkKXYeDOLv4N44lJ8mXtnpiSWDNA
 eoQb2Dj1R62yi18kcva/03pW34RuFOJe7L37zqoMHcDq7IFc7tVBkhAOX
 1EMJLHWv6ciAnoZAXmWxKa3PqEK55csCrmQLnDX0YIiI0fkFqScOPC1Cp
 nDfO6YUKOfn8oXWOdaRc7s0leyFK5+O0iEyQdGvo2r9blfVxmFfqasfDU
 A0zT1iLZAF4y/hp7udUmJG1y2zglllc5onIO40kf7WDATyNvnvRZ0flx/
 coSRQ9kJhUSHKNvuEx6bn2qN8lljM8DjZREHIScHnrggotg2ELR9maIQo w==;
X-CSE-ConnectionGUID: U2WAsjLPQXCQTxv/e6U39Q==
X-CSE-MsgGUID: 7qp3zvCmRIunXHLm/zpHpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318775"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318775"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:25 -0700
X-CSE-ConnectionGUID: N9/52NCHQ/Ko6s3HBAil9A==
X-CSE-MsgGUID: XNCdQl61T26eZI5ulcn5aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818237"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:25 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:24 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:24 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f2Jq8ZGzfEuzJrbsmgbscdKZQPBV0yUTFofDALO0NMupzNQicWJJIuHiDLhMqM5Dr3HyYnCyP0rAorWonFKM8WzcGSTyKqPL5XEjvPqdRKwGYdR5cTChC6ZyOze8YPMc/vvmXKTcG3dNMgJFL+g9pfglnNtWi8y3JRZph9GiiCkYm1v6dmns7htWYdqd7XCCc1E8FseCxrUr44urB15GHedb0YUlIUEqgieO+n1FlrIfTXz2BFs9ffrY44rv66A4VKeMXsnXAweH4O1jecyHpH1ymGj+gkfLfekuzYB0t1Qlt45Ff3hkhLjK8MFqCeQREAcmJFKaI7cBPAOrsrUb7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=upYZCjRNdiSjzkbEOg7OisRFYIuWHbJQMJHHceTVdkU=;
 b=Hd48dGuGAec0RKNY952cMNOIpp4MlaV3g6h0bPHu6yIsEn2iqEgxLSiviX7+RPJZMkYEXa77c1L8JPd2GxF9oostVEt62sxnLaXJtQaTtjlWBGjLzEdwZJSidNTbgOR0OGqdYmdflF96ZMo1ACYqmZUadq6uKye1Q1k7h05Gdwgeq/MyV8mGdCVJ5lWfr+DhZaaul7uLefJUgNSbystU7q2XATI7GWjJYE6ss7qe9vNu/A48WoBV077pCLhGsS9pqG+G4Z+SfkpPEIb3y3jeAfNCRPAlgd9CnTiep8GlqPiBg0kIFUJm6kss63eRHJs+xETzAl5C4RaPS6j8Lgln3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:19 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 087/108] drm/i915/dp_link_caps: Preserve disabled config mask
 during merge update
Date: Tue, 28 Apr 2026 15:52:08 +0300
Message-ID: <20260428125233.1664668-88-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 03fafe6c-4118-4eb1-3244-08dea5255d0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: EiFxLxpUN4m63FruQWHMhtW0t6d9rOrZg9kgpNVuC6c0WLVG/1Jc6FQf5CqHansoxGWb/dM6QTkqWq4sa1O+xOrKI6SgdFL43lEEGiVgvDvGM1Hw8rjNefA0wigI8+RlnXkobDeGIqyN5yNqf7w5XXU7ajfO5OmNfvsHPrkEKXBCnRhZ8BkJ4xRp8q3NtbaQzU0NkmpdAwo0RsOg3X6KoSdWCFMHbK0k3afYMN88wKgKN+MjuYwznjmIJjJDZHVGAITluXWmkfnzS+d6p6ZkD3O+nZxBhI2sMItFpfFGac0RKD8Ah/MpeE5/cIcm/Ie33V1w5wde3iwK/y9dpirle0cv/Kr21CM1ACyNd1l4GEWBp3XO2EDSBDrZoN0FJKiP/oYQ/u5PFn3MRgQ9sixgQTSnUSAIhDWeJz8UspWEvK4os5QpBOv1zP/DYuR4gUzM0Y8pvHpEoc72uuWNdp/C5awiQuYqLeatRefthR7nsysfUhroZFZo9mxf9Fc7izCULcP9uC3vjzx+Tfyvh9mBMXMIL8vrxaIzoxUdJjd01IvLVLZ2AokQW8TMPxb4olw0GsyJT6Gpv4KIq8D56lKIMKHVH5BkfYVQyqB0ZDy4thjnaYJ8B3ad9XkUTJX1cl0fAmVYnTmQqtSKqPQf7jfxNyV9FF974xUgIG17/XDAGpObPXDr7J4PvTdEssFPnyvGNnWFoC1uBnJHqRJyxczM2Bjm1qMDDCaih/i8BZv7QP4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jSOnx46XSmyUXoh7IS/34QXsfjce0jl/AWd5bP/KZHk++wh1gA/cGuKUbPXa?=
 =?us-ascii?Q?SYTwDOEjCyd6rkKUQRXTpVKg9pkfCmRAFUN6a1aQB3qryWg4ONhWAjs7h62U?=
 =?us-ascii?Q?6n7QbI4tkDmLOx8f22iPqMFG93BctJyZFTeFMW92tikuLCX8UMzfGVOmJBXC?=
 =?us-ascii?Q?YJU2mnTdfblOLyoylf9pPabsV8yFcvdUOVNx1s6Qhg9HOW1vLQazVCZxl2di?=
 =?us-ascii?Q?DQPNJAWit+LlxmuvRQYAhelRE+bjxsMVSs8EEr2wbUKHMBuV04FqBN+q2M7h?=
 =?us-ascii?Q?PEK2UV24ZfrOrXmEcDb5DHTQCyHjwO3i3xF7TaoTQyxHdoFfLDKihLMuiNpY?=
 =?us-ascii?Q?lU9Xud0Nxr2rBEB519wjOEG0FXgbgrxodsePHujnP58gEzqNPvca9w9b8JHO?=
 =?us-ascii?Q?QfkHtDWkzoM2KN8sO5jp/ZzlIEvrbfrTfl5XZ2qkG4sKM2lRfzHTlP9nmgL5?=
 =?us-ascii?Q?yVs17RFd8tV2JbTqySD7EceU+0csIHhF+ZB1tQm7L1arEMFA5luBULiPtK/9?=
 =?us-ascii?Q?mK2yQT2+E+b7WGJUZpjMZLkip8rPYO1G+TOqOLEkchjIHmIolOABmVZbV6nT?=
 =?us-ascii?Q?KkqCyp+r7/18S/gmAsvtDgluX7rpGT3s4m7OQqg5zDcuaGfGFr8L9pSBkNUP?=
 =?us-ascii?Q?k3Fq7ixkHQEAzoF4JleJ69pxh1QqfvsBZOFZPPMZaTMGC/5SDeoZfoHDKN+6?=
 =?us-ascii?Q?C/a42qgPqJtO1ecakmJLPzLJx9BjcT+uVGFTLHJsoghkn4n2XFJbKktZyv1K?=
 =?us-ascii?Q?9Xpq37Jw2++aEjN0oKzMqPG/FoJi1cu0/aHqeaKgrgu6G0G5TlQISSElXDR0?=
 =?us-ascii?Q?xBcfWuljzeRUG6P6ZzHxDJArvBIiB8aequoA8InXjytk1gTWvNiEQOHTiYVe?=
 =?us-ascii?Q?M96/G+BOMW1qmW0ykNO6A7Q0k8/qAfcheMqwMhDXG9+PwHtiijOOpLrrqzhU?=
 =?us-ascii?Q?3M0qcVgBtOUNMf4zW5pwOhrDyn6zyw80qzYyQA1w1weowknjSGUCUDCG79kq?=
 =?us-ascii?Q?cDZi89qjRMVgBeZJI6XUfjfFO7v7etFFVsP9HUjF4V0yU6NLj8CvEaXxDK9x?=
 =?us-ascii?Q?CT379wA3O/ZHrs+K2imCxQtbeNNkdBYc86TPnp6heNKgwXKjiJRGiIyMjLsk?=
 =?us-ascii?Q?FbkDF9KBptBMiGZ5hjAiDHT3efH8Nmmb+rVJzJ3MWFjLM/f77+PiiJ6l055M?=
 =?us-ascii?Q?ZV2eqgjDdT5Rnbc8VzNgHPONR4+ZDHPF5r+eiTodIFYhu+bZjVbbLrGwKsDj?=
 =?us-ascii?Q?wnI+EJ++jqOA2orBsibi+wVsHwBJXqS8O3nkGxu1cO6lUhQu2WCQxBsygPCI?=
 =?us-ascii?Q?Zpu2n+ygRqT9w4C7/QI8Tpg5Lr+h53S6nX/WxPysaQF6fzxxFMMl4jiu4hLX?=
 =?us-ascii?Q?6ba87DosQY2mQW3x914Q7ldS69A3eEwdNVDqNs993d3yHlvifSr52MmNs8+0?=
 =?us-ascii?Q?DDElUhubSu/cdNM033Lpj/J7ovgIkAxPPSt4guSVnosw+HfgxfrzVUyvI1N8?=
 =?us-ascii?Q?aLoy8His78FKNKC1EcaQResFanz0JHNZTHAspSrwRUU2pWpLBVnJm8f91jGK?=
 =?us-ascii?Q?9Eo9Zn3FcjB4KN3jtgsa3dLvyaEHnxtjsHVbQoMciKLFZwowM2BzkIL0xLnh?=
 =?us-ascii?Q?huyxQkNbE24upkRPOUwzVqTG+ZBubX8xkkduYN/fzF2k76LhuOj3f5++ALo8?=
 =?us-ascii?Q?scX1LN4aMFMQw3EvhpJcH0KMo1gBUKnUuPDmv9qQ1Pi7YxwBkWzAQB/k0oA+?=
 =?us-ascii?Q?fhe2F9RZrA=3D=3D?=
X-Exchange-RoutingPolicyChecked: brJCt4QV2+i8IFgdC+UQQuZGk58LaNKKbi9ap8yrpaj1yS0+oGNbtPA2cNVTsRmONv/n0G601ZpQHqnoe/iSDoed/VlHysaX+sClT50NYGbT8sF4XOGVS24DdI8erGUc7KiX+1peYZPDZM9We1qPZ85S9FWWF0FgQJFdMGkpt7Wip2tTXvUh6zEfs8QYiACBRF168vdM1dWM2cYvD8bAFbVEgaLIOj2aCuzk4yIEUpyoWC4hQ9xyiynuc0AwsYF4GgaaD3zW4DER2SE9J1A0tF8aoLFRf+pYhwH2YNkPmNr0jbkbreyjxuq8NsY5hi/CzyXWRNCe/ErnRpY6R8YOow==
X-MS-Exchange-CrossTenant-Network-Message-Id: 03fafe6c-4118-4eb1-3244-08dea5255d0d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:02.9095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GV+ezWRC15ahWrXUA0DufV1aJXAQS0H/YHp0GH85VI3T5IwBMiMt783EGo/a/G5pwBFF6wFHazXQEcjC6tATaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: 9336848559E
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Preserve the disabled configuration mask when merging newly read sink
capabilities into the existing link capability state.

The mask is remapped from the old configuration table to the new one by
matching rate and lane count, so configurations that remain present
after the update stay disabled. Reset updates still clear the mask.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 69 +++++++++++++++++++
 1 file changed, 69 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index eada84b0d1e39..9b69e7642717b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -501,6 +501,11 @@ get_table_config_by_pos(const struct intel_dp_link_caps_config_table *config_tab
 	return false;
 }
 
+static u32 config_table_all_mask(void)
+{
+	return GENMASK_U32(31, 0);
+}
+
 static u32 calc_allowed_config_mask(struct intel_dp_link_caps *link_caps,
 				    u32 disabled_config_mask,
 				    const struct intel_dp_link_config *max_limits,
@@ -650,6 +655,22 @@ find_config_table_entry_pos(const struct intel_dp_link_caps_config_table *config
 	return -1;
 }
 
+static int
+find_config_table_entry_idx(const struct intel_dp_link_caps_config_table *config_table,
+			    u32 config_mask,
+			    enum intel_dp_link_caps_config_match_type match_type,
+			    const struct intel_dp_link_config *link_config)
+{
+	int iter_pos;
+
+	iter_pos = find_config_table_entry_pos(config_table, rate_lane_asc_config_order(),
+					       config_mask, match_type, link_config);
+	if (iter_pos < 0)
+		return iter_pos;
+
+	return rate_lane_iter_pos_to_config_idx(iter_pos, config_table->max_lane_count);
+}
+
 /**
  * intel_dp_link_caps_find_allowed_config_pos - find matching allowed config position
  * @link_caps: link capabilities state
@@ -977,6 +998,41 @@ static bool build_config_table(struct intel_display *display,
 	return true;
 }
 
+/*
+ * For each entry selected by @config_mask in @link_caps->config_table,
+ * look up the config with the same rate and lane count parameters in
+ * @new_table and return a mask of the matching entries there.
+ *
+ * Each bit in the returned mask indexes an entry in @new_table, so
+ * this effectively remaps @config_mask from @link_caps->config_table
+ * to @new_table.
+ */
+static u32
+remap_config_mask_to_table(struct intel_dp_link_caps *link_caps,
+			   u32 config_mask,
+			   const struct intel_dp_link_caps_config_table *new_table)
+{
+	struct intel_dp_link_config config;
+	u32 new_config_mask = 0;
+	int config_idx;
+
+	for_each_dp_link_config_idx(link_caps, rate_lane_asc_config_order(), config_mask,
+				    &config, &config_idx) {
+		int to_idx;
+
+		to_idx = find_config_table_entry_idx(new_table,
+						     config_table_all_mask(),
+						     INTEL_DP_LINK_CAPS_CONFIG_MATCH_EXACT,
+						     &config);
+		if (to_idx < 0)
+			continue;
+
+		new_config_mask |= BIT(to_idx);
+	}
+
+	return new_config_mask;
+}
+
 /**
  * intel_dp_link_caps_update - rebuild the supported link configuration state
  * @link_caps: link capabilities state
@@ -1024,14 +1080,27 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	struct intel_dp_link_config old_max_limits =
 		link_caps->max_limits;
 	bool link_params_changed = false;
+	u32 new_disabled_mask = 0;
 
 	if (!build_config_table(display, rates, num_rates, max_lane_count, &new_table))
 		return false;
 
+	if (update_mode == INTEL_DP_LINK_CAPS_UPDATE_MERGE) {
+		/*
+		 * Get the currently disabled configs remapped to the new table,
+		 * before setting the new table.
+		 */
+		new_disabled_mask =
+			remap_config_mask_to_table(link_caps,
+						   link_caps->config_table.disabled_config_mask,
+						   &new_table);
+	}
+
 	if (!config_tables_match(&new_table, &link_caps->config_table))
 		link_params_changed = true;
 
 	link_caps->config_table = new_table;
+	link_caps->config_table.disabled_config_mask = new_disabled_mask;
 
 	if (update_mode == INTEL_DP_LINK_CAPS_UPDATE_RESET)
 		reset_max_link_limits_no_update(link_caps);
-- 
2.49.1

