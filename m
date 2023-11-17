Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC047EF8D8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 21:48:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF0AE10E78C;
	Fri, 17 Nov 2023 20:48:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3780E10E78C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700254133; x=1731790133;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=xEttIAiMfsqTBp4iUW0E3wPk/bo6Cd5lX667MNN8vuc=;
 b=m6y0HlGTJ4ZvHwTRirl5hmbEawwyLcVdUpeR1L+QYewpcrmnq/MNLah6
 B/gwzhdz1/1Hyne2CPNp0iPbiYExv9fwNkvMJWPZIE5tWu/KR7lcHgzeY
 ZhQkuEz91YMo7V9V/vxtLt3k+DElMumm1N8mrEBqDPpT3da5Z8ZP0z25H
 ySxdbu7aJHT0IVW3t+pdhLK6Dfs7OeIiHpD7FzKPYEZxCPVTYMP7FKUdX
 NY8ncXzkFP3llAE4Jat16qX0AtudefcHiEKjxjd0vVdwGR4NsRJOF5yIK
 Pnhb1Gtkhs8Bk2ZZyOx3RI38RkSUC9HZDvYuR0Z29RA2dmvsWV/5t+yAP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="390225763"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="390225763"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 12:48:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="883220430"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="883220430"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 12:48:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 12:48:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 12:48:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 12:48:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cd/SuXv8hNkMKR0II11sW/xi7bEfxkhEunMFHsRuD/KbmGI2NnBSWY9L4Kp7tXpND4lN3LIMrz7enTLodeYD6VnvZ3DzBe9BXXkPkHPzDmJqg4bXF6F7QE8rh+Z8mUkfcyBTSilr+vSYpmwGW4/tDH78SrZM3IDmVLgoYKJbu4oT3A++PKjvlt05f9HkpUmFgaLDWLnTpqE5c0xnHokpwvz2QcgfayNZcNLjcL9OTIkNwI5VPFbqKm9L/44hd3JR3f6V2WtviBnTl/1K2FUvJY+oZLb2ZhBA8E3OF4wqC7+vKfTb335GwezULVBv2lkIh3FfjG8xp5ewt+ddYt9Rig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VC28R3BIi6mdJVFDmyXapRCgAHfxgG/c1dnQ8aUfUKY=;
 b=WbozMiINX5kih9O1GY7xt8LL4oL9ak/XDpEqCEClbunNdFXXsyh1cj4NjHlYhyEBGesxgwgcRWRWpJc4KiYdO3BDNU8XOyRPFbZpApKPSmQQCrXJWGl0WYtUs900lXP4FsODZQohmeAzOyb5UZeAt4XAThcNGtOrrZ6noklui6wNaxLnlMSySUauHY0Du2nH7E7LI9pPDFiOFRhZFCHCUTJg4M7Jkxvy3CzjgWqAGa01E/ZRmIoVMuVfK8E4m7DHvVoJaV4VS2f+cf9fPxkRfQ1HsVGTwTR1nfAxffsN4olOD9Nx19YwkjuJFz81TgMC378GNqJeAexGUJKYtbAgcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by LV3PR11MB8693.namprd11.prod.outlook.com (2603:10b6:408:215::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.23; Fri, 17 Nov
 2023 20:48:48 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 20:48:48 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 17 Nov 2023 15:48:43 -0500
Message-ID: <20231117204843.182563-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <3c708b258b65451b231c5671fcb605d777b5b250.camel@intel.com>
References: <3c708b258b65451b231c5671fcb605d777b5b250.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0176.namprd03.prod.outlook.com
 (2603:10b6:a03:338::31) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|LV3PR11MB8693:EE_
X-MS-Office365-Filtering-Correlation-Id: f30fa7ef-5851-421a-0d1b-08dbe7ae98e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JSDoGr+RWLLx7We64ebHRRTZ1/OUUJtive+dR7eZ/8AqLpsLF8glIuMM2x7b3jZryhKKa66gfV+ERkutyVkBZklKtxzwlLfpCcbWET9gRC46mKlJNN9gE4aD6CPwkjOU5Uu94Meq8Ow6izAXC86eHX7/WeNarV3axlyrI+Ah8gU7YoyIYGGsIVEV5YZ8TlpsDIi8UPz2tHrFiBcKyT++cDG4Fi/fwF6eSCIaiy7yOMFLgu6j3UJclQgxWdBt7r7qcs7lQmbOwFZT9nkPRJJgLQ9D5VQMl3J82wxIBM56R6gcbt7jXXdik8DxBu5oZtz993MGOFQWiHCU+gqLTUme70myshZKqM9+9RrjRRBexBC3olSQV4GyA2LuTv7ZUFNJi4Lgm3Id5kzRCqa08/bCfuuAX4YiJkI3Q01tjEjVlO4BiCbWlCx2xbiKFlpl7kPCx4hRi4pYcBRIfQ+7CgT+ggAQWXaNU8xZITvoBOOwjYW1b2HJuolm23trLktPet2aK2VNTw1sepO/goDoxtnOt4fbWkuGxAkqPd01JimdUgDxNslgE1ZuooMS8snLO/ZT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(39860400002)(366004)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(1076003)(26005)(41300700001)(36756003)(82960400001)(2616005)(6506007)(38100700002)(83380400001)(6512007)(6666004)(6486002)(2906002)(316002)(86362001)(44832011)(5660300002)(66556008)(54906003)(6916009)(66946007)(66476007)(478600001)(8676002)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YUYxMGFwKzh5VmZISXB2QVM4M0svQmNaaU4vK05PSXBlZTdWSkF5TW44ZWNH?=
 =?utf-8?B?MlpKQ0RnOGlsaGVOaUNjOERPUXVPejhMZ1dYc2MzUlRTRk1CVHRYSE9Wb0Jt?=
 =?utf-8?B?a28yUVA4Uy9RL2JNNHo0QVFDSUxqSURGSkYwT0dCT1NBSCswbmt5MjhnT2s3?=
 =?utf-8?B?eG9YS2dIM1lESTZKaTNmTDhObVZBWS9ZcTdYQ1M5QTZsWXVlQ1RGa1l5MTFB?=
 =?utf-8?B?Y09seXVWNElVcE9jK2tRZjF3NHBSZnNHUmN6VHFWVUZtWmRSZThReDZiQnc4?=
 =?utf-8?B?MFdXbGh6MjdTR05VUnJqVG05ZkVwMDIzcUpSKzZJaWVsQk1pSGM3d2VISEE5?=
 =?utf-8?B?S21Bc1pnODl5cWpHZno4dmhOM0lmbXhnbnFKWUFLYWRVc0I1NHN6RnR5eTRj?=
 =?utf-8?B?aEZyU1dDc2lVK2ZMMzIzKzRzdGx2ZHNRRmJ1MXJIdEIyanJlbGNZcDVXbVhu?=
 =?utf-8?B?TEZDVVdiQlRXOE1PR01UZ2p4Ym5RVkpiVFhEQkVkQ2x0amlwNEJ2YkNSSllx?=
 =?utf-8?B?TXhDT2ZPODdJSFM5UnFGeUdQem1WbXU1Vm92OFlTZXN1Q3Z4SGIzZnNYS3Rx?=
 =?utf-8?B?SkkwNk1xNDBnakdtcVlqbXBwVkdsemZOa3dYSElMTWFHRnRnZURqYWx6MzJk?=
 =?utf-8?B?VjhLOE1nbno2V2VZeDhPZk00YkZRMlY3RFBmcmkvRG5jV2JWR0p1VEtSUUJM?=
 =?utf-8?B?OTZ2YmpkUCszS0ZWTm56Y2hEcjlidGptM0JpMW1IRXdZdFlFVVJSbDl5SHFS?=
 =?utf-8?B?MDVSRTEzekFuTXd4T0ZrcjJqUCtVZUZzdXpPQkZmc012d0dSTjgvVVRpeXIy?=
 =?utf-8?B?WDNKczBySDBYeWhNdXFxL2JBVytnZmNuYzRiNjg5M1JUVnZaUUJrT3Y0Rm1F?=
 =?utf-8?B?R1d3SE5yL3hseXZRYzBBejY3YmVMa21GWHJmWDVpTVpVV2RzenA3WHVvaHds?=
 =?utf-8?B?eTF5TGhVZjJQTzR1WU5oYUw4TXFNUkQ5N3lYRlVrQVd5R2xLYUlWMC9HQmlw?=
 =?utf-8?B?aWVZREFMdlVjYU0vNm9mM3pwc1pZNzZEdWY3aDdnclU1bW9PRUhUSmpMaUhk?=
 =?utf-8?B?RXQxakdvamNkMWphN3RLWkUvanlBNUdFQ2ZIQm9VZzd1RkNpTUUyUmkvVWlQ?=
 =?utf-8?B?Q0VUWWJSbWNmK2Z5a3N6WDZjUno1d25pWUFuV1RoTk1uR0IwS1M2YXVJQjNT?=
 =?utf-8?B?WG9jdDlQVy9zQlNIUHlqMHFwd2RvU2FlbDlEZ0NkNlFybkNBQ2kwZ3JtSURK?=
 =?utf-8?B?bGlVSExUVE9qVGlmMDMxUm00MzFnOGg3aFllWEg1L2xPQkxIOGlKbmJJSWt5?=
 =?utf-8?B?bWQ0K0Q1ZnNRSVVGTU5tU2R2cjZvODNkOUFzVWQ4VTUyYlpiV1dmblo5T2hH?=
 =?utf-8?B?dk5SQ1Z2KytEeS9NZTRiWjBmZnNYNlFRaVQ5bm1RVDRaaXJLSFlxeHVvUVk5?=
 =?utf-8?B?NitvQkx4NHkzY3ZadVdEcTlPVzF1Y2djeVlJNDNVMUlHeGZXZ3didTRubWww?=
 =?utf-8?B?bWNSbklmcnVtQjlYNmxTZERsWG95SVlFK3dXMWlqa1dPSFErZFgzclUrYnJl?=
 =?utf-8?B?RDN0MjNGdWFiVzU3N1NhaFVKWWJhTTNUNmpYR0wrYkdGY0pTd3Z2OTB3U2FV?=
 =?utf-8?B?aFZTMmxhK0xmT2dDVXhrYTZtdEtQclJFK0NjK0VZNXVRNHFIVG05QU5EMm9B?=
 =?utf-8?B?ZFRmM3l4SnBzeEJrcWpZNHNLeGlRbERIdUJ6Z1NEeDF4VFlQRGtQaU5OM29X?=
 =?utf-8?B?VE91TWczMG9LRnIzWk9SK2xZdnNNSFRSTG90OXpOMS9CbUVDbkdLdE9QZmI5?=
 =?utf-8?B?NUszbWIydHJJajRRbmhWNW8yemI2N2RHN1czUUtwOUVMYmZRbU5Xdnl6amww?=
 =?utf-8?B?eFNUUkZGQk1NSWZrVk1yMzhHeFhNcVc3OVFzaUZNbE5nVE43RHRERWE1UFhZ?=
 =?utf-8?B?MnlZTEtrMmtlU2MrQ2wxTnRWa3FvTUhOTlQ4SnRkaGlWazNLRHVnVGtkL1RI?=
 =?utf-8?B?R28xUjQrT05yU0k2ck5iSTE0Tnk1bnFnUGJGOEVFV1Vmd0JZYS9KZFhRQnhC?=
 =?utf-8?B?cjNVemNCTUhxYmg5eHB2OHRpTHVnYlBLRXlNUVJpNzU0V250Q1d6aFhHTVFr?=
 =?utf-8?Q?ByHWPLWicUsvA2HZRYBS1zOPS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f30fa7ef-5851-421a-0d1b-08dbe7ae98e7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2023 20:48:48.0767 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z6MVKzagE+D5l5hNTDE1bVyLpr8PIMYw3oTnaaER9MaXuIau4nDrBP1TmQrx8QxdU6R+rbccD6MLwsf+5A4EVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8693
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/xe/uapi: Fix various struct padding for 64b
 alignment
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Francois Dugast <francois.dugast@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Let's respect Documentation/process/botching-up-ioctls.rst
and add the proper padding for a 64b alignment with all as
well as all the required checks and settings for the pads
and the reserved entries.

v2: Fix remaining wholes and double check with pahole (Jose)
    Ensure with pahole that both 32b and 64b have exact same
    layout (Thomas)
    Do not set query's pad and reserved bits to zero since it
    is redundant and already done by kzalloc (Matt)

Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Francois Dugast <francois.dugast@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_query.c |  1 +
 drivers/gpu/drm/xe/xe_vm.c    |  8 ++++++++
 include/uapi/drm/xe_drm.h     | 19 +++++++++++--------
 3 files changed, 20 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_query.c b/drivers/gpu/drm/xe/xe_query.c
index 838f03795841..c5f2b3d67166 100644
--- a/drivers/gpu/drm/xe/xe_query.c
+++ b/drivers/gpu/drm/xe/xe_query.c
@@ -377,6 +377,7 @@ static int query_gt_list(struct xe_device *xe, struct drm_xe_device_query *query
 		return -ENOMEM;
 
 	gt_list->num_gt = xe->info.gt_count;
+
 	for_each_gt(gt, xe, id) {
 		if (xe_gt_is_media_type(gt))
 			gt_list->gt_list[id].type = DRM_XE_QUERY_GT_TYPE_MEDIA;
diff --git a/drivers/gpu/drm/xe/xe_vm.c b/drivers/gpu/drm/xe/xe_vm.c
index f8559ebad9bc..2f22f1feaf1c 100644
--- a/drivers/gpu/drm/xe/xe_vm.c
+++ b/drivers/gpu/drm/xe/xe_vm.c
@@ -2850,6 +2850,10 @@ static int vm_bind_ioctl_check_args(struct xe_device *xe,
 	int err;
 	int i;
 
+	if (XE_IOCTL_DBG(xe, args->pad || args->pad2) ||
+	    XE_IOCTL_DBG(xe, args->reserved[0] || args->reserved[1]))
+		return -EINVAL;
+
 	if (XE_IOCTL_DBG(xe, args->extensions) ||
 	    XE_IOCTL_DBG(xe, !args->num_binds) ||
 	    XE_IOCTL_DBG(xe, args->num_binds > MAX_BINDS))
@@ -2966,6 +2970,10 @@ int xe_vm_bind_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
 	if (err)
 		return err;
 
+	if (XE_IOCTL_DBG(xe, args->pad || args->pad2) ||
+	    XE_IOCTL_DBG(xe, args->reserved[0] || args->reserved[1]))
+		return -EINVAL;
+
 	if (args->exec_queue_id) {
 		q = xe_exec_queue_lookup(xef, args->exec_queue_id);
 		if (XE_IOCTL_DBG(xe, !q)) {
diff --git a/include/uapi/drm/xe_drm.h b/include/uapi/drm/xe_drm.h
index 8610ac461619..c07cd4b61baa 100644
--- a/include/uapi/drm/xe_drm.h
+++ b/include/uapi/drm/xe_drm.h
@@ -211,8 +211,6 @@ struct drm_xe_mem_region {
 	 * a unique pair.
 	 */
 	__u16 instance;
-	/** @pad: MBZ */
-	__u32 pad;
 	/**
 	 * @min_page_size: Min page-size in bytes for this region.
 	 *
@@ -384,6 +382,8 @@ struct drm_xe_gt {
 	__u16 tile_id;
 	/** @gt_id: Unique ID of this GT within the PCI Device */
 	__u16 gt_id;
+	/** @pad: MBZ */
+	__u16 pad[3];
 	/** @clock_freq: A clock frequency for timestamp */
 	__u32 clock_freq;
 	/**
@@ -723,6 +723,9 @@ struct drm_xe_vm_bind_op {
 	 */
 	__u32 prefetch_mem_region_instance;
 
+	/** @pad: MBZ */
+	__u32 pad2;
+
 	/** @reserved: Reserved */
 	__u64 reserved[2];
 };
@@ -741,12 +744,12 @@ struct drm_xe_vm_bind {
 	 */
 	__u32 exec_queue_id;
 
-	/** @num_binds: number of binds in this IOCTL */
-	__u32 num_binds;
-
 	/** @pad: MBZ */
 	__u32 pad;
 
+	/** @num_binds: number of binds in this IOCTL */
+	__u32 num_binds;
+
 	union {
 		/** @bind: used if num_binds == 1 */
 		struct drm_xe_vm_bind_op bind;
@@ -758,12 +761,12 @@ struct drm_xe_vm_bind {
 		__u64 vector_of_binds;
 	};
 
+	/** @pad: MBZ */
+	__u32 pad2;
+
 	/** @num_syncs: amount of syncs to wait on */
 	__u32 num_syncs;
 
-	/** @pad2: MBZ */
-	__u32 pad2;
-
 	/** @syncs: pointer to struct drm_xe_sync array */
 	__u64 syncs;
 
-- 
2.41.0

