Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB529F3B3F
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 21:44:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE46E10E7A7;
	Mon, 16 Dec 2024 20:44:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZNVuXQKD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 844C410E7AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 20:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734381867; x=1765917867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=b09866cj8eBHMcESAmvWvO9LQiDo3S/tbx3XiC/6VEA=;
 b=ZNVuXQKDcuxG4zGnC9YuiPdgLnCQ19XS86c0jHJ+GVDBe4HUFFoKoWAU
 SFf1hRdNu+d/KJN/neNGryqmsGR8rOSDiUn3bnduwKrnjMjQ3Wz15Zw6g
 B/aAOWmh/irTRujmoZ3VfHDQjM8eCn7nTraNvwszkAIkNnTST5mO4bYSI
 TQqwekMBK8BLpUOE88vyRQHbd9ntHno5iNHB73HM2x7Yf2AHlQe/qepGA
 gJQNggEpAM/sm+ztzo0KF2kaLryEbZUsQ9Fk1pXMVaZgdwQLgaPTPEkeO
 3jf3a2/cH8xXE6r9Su3+LIIOpo0yVmDqlAXcvtupWRKe5l5084naM1EIG w==;
X-CSE-ConnectionGUID: UrW7VD9nQPuu/j1VUAeJEA==
X-CSE-MsgGUID: 8xPlZ3+WRGa/3axKl5z5Ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="22375572"
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="22375572"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 12:44:27 -0800
X-CSE-ConnectionGUID: RAMOFSpKQm23T+fREmrf5Q==
X-CSE-MsgGUID: neQnDwivQxOUmaaXfNew2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="102342740"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 12:44:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 12:44:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 12:44:27 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 12:44:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LcCiez10oazU2WuLtBiMAIFDRhcAbqsIt9PClLnFJGo3A5ZQcFhGYKLj+dBF3qnQFEXp2Om5a8V3tGL/NuvAkGapstL5W8iSQ1ZvP2ajQA6rcPtA+w4+HY99JC5VJWy+ukJSvBWH+KajXyCHg4TPFaO4TUE7nnvS/aoQlTAFcC3s0PqD9aIK5DTd0z5tmRzyomUEUdlz4MlVRoCFijs5TtBXkr6V7sivryekS+42QKrpeU3CcJOJPZO95I2Wuj40MiXC7yrMbXb5ArnAJRlLeJSuB6crS8TQJra4XQ0mvREJEoi3znku9Y5h3fl0Au1fJlSnbUmd1FqKAM+nyLPlWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t/6xR+XxhJdBeITAoqzqU4GvMggKlVCIQzXd+yzOPRo=;
 b=dA4igHD2wRI/RD22ZWlWTgLB2+fU0X1wiKA88dNjytUyJROGWINAapX9+nuU/XBx9X3OgIQYs7lko6F2aAz/E5srgvJf6MD7UyrIgn57J/ceFCOMeeJILA4LSJBqaad/ouk1GCo1t2YERwkSkAvilU0kCIS5qh30LRl3J9DPBGtK8XyIqGyYmxdlnY304uY2QCSk6hZT/DMyE4o7tW2Ri/uAM6Z5jUlhQUujJQ2041G2uyoBEdpP2p12bWivhLYMEGEUe9HIzsn31RxgQw9NeIoy8Dk2iuhacGHsq0nadQQtNFyqH35b5jGCnpY6S0DrIAR5DLl4wxNC4RwkxYMG1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by SJ2PR11MB7573.namprd11.prod.outlook.com (2603:10b6:a03:4d2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.20; Mon, 16 Dec
 2024 20:44:24 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 20:44:24 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>
Subject: [PATCH 2/2] drm/i915/guc/slpc: Print more SLPC debug status
 information
Date: Mon, 16 Dec 2024 15:44:04 -0500
Message-ID: <20241216204404.1621540-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241216204404.1621540-1-rodrigo.vivi@intel.com>
References: <20241216204404.1621540-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4P220CA0006.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::11) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|SJ2PR11MB7573:EE_
X-MS-Office365-Filtering-Correlation-Id: e9c77dae-6fcd-4b0b-ffad-08dd1e126ca8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/YHpeZJidrPT/N5WNUhKJSkBrFOkrPmCg4JJPTzjJj5LxkN8O7nKaksCRisq?=
 =?us-ascii?Q?+HcDPnHO1ZT56L9zys1lMXzEPTHKJw2aXaZTk4tMazWO70PNtE7K73gbhGk7?=
 =?us-ascii?Q?cQJ0VIc9Uf0hukoz/Lv3t1R0uQY3znSMJIzZrp0fg/XhmmJghcknB6GwRrOl?=
 =?us-ascii?Q?xG2qf6W6qoPbWGvGgIGoFrw7Lsh/7syNF8LVV5qfD2CJN8XXFdeXwIt0lPiK?=
 =?us-ascii?Q?sIwa98w9Y8PbkicQOzIUFWQxKvvHKk5U8sI9cG6UzSMdo4XV03CtEhYgwG4R?=
 =?us-ascii?Q?zaxiZGD390CWD7QVDBs/kOGDus8dw/6O+vEiz76ECqMGPE9BShLjF3n48aud?=
 =?us-ascii?Q?q7+6pZXRhc0vRi8MJTaWouAWFfFavDbzEjO4i898jYZ6zYSGg9VvwUrRr8ka?=
 =?us-ascii?Q?72URmufy963XmdAafkayc+gPB4uwU3v9bMVJ+m8szZsOZjJjWL1/Vu00y0Pl?=
 =?us-ascii?Q?eQy2SoECCLOerh2BCSb3DLQa/Q4ybIuzByPOXZFs169CU9YAbgxVigaORnUb?=
 =?us-ascii?Q?5qDfPPnh8pFcS9lFKwgsnZ/5JvQ+8Jvh5OBaDAaToo7vT3TInl9zTDCSLPbW?=
 =?us-ascii?Q?JyZPl1n0QloGUTRhx6aB2Eb66zg4hmyzda0116/S6HVKBK+7ZsMz2IghgYPp?=
 =?us-ascii?Q?Z8z+d1cH004HhwhWcqYKp3Z6cT/vnDrJfSAJ4d0K45wc5LajP6THv4nu/XnN?=
 =?us-ascii?Q?zs55ngWjzVGpkXx9gcEsBt/iZSCPfrN7eToPuo8rAbL4JiXB5CfZ/ClWQ0cG?=
 =?us-ascii?Q?7vaN1/j2edAzEptBkpysrSvHg61LpJ1YugY9MQAKWkU/GZsXOm2e6j6Jk+lS?=
 =?us-ascii?Q?f/bSq8ioks555X9wBIdQvX8STG9HBxxc5mmUjbCD5jwy10K5JvdPkxEg7XA9?=
 =?us-ascii?Q?oTFCMNE6HrYVqh1aSWHnl0DEtvS7O5QAg+Ve1BwFngHG/JMfhtcm+wnLSPy6?=
 =?us-ascii?Q?fxufHqcG9Q/w0GzSffGvlwCISEYf9YdFltb6ktMJzskEasXsdF6NG0Ol8y2W?=
 =?us-ascii?Q?GSDdX0p6Kp9xqlEL++Ra2TfqrnbL/jYFgfn2sruRcHgYOKt6TpHH0yABr1AE?=
 =?us-ascii?Q?oEdPrA3iL+4oWNITzhcKFi0ZM0v9geRFXZ5FE0Y6PLbYVWMGpgiCgJxphmkH?=
 =?us-ascii?Q?C16W/a0Xrsd3Ak+chS0DSJEL2JTQ6pS4NxgJpfVVN30lD59702uPKNV0w+vk?=
 =?us-ascii?Q?9zSw3uJnmI1NxWNGj+l74qLVP1hTBozKnjuqdcaNgS3L7Ee5yi0YkSKJ3ixu?=
 =?us-ascii?Q?FWojQnaleHUBw3jUYNs3pPcWG8t3P7UK8hVmnfyhF0OGQ12Wc9AAOp1hV5UZ?=
 =?us-ascii?Q?LC1MdfWYOCyPniQcLhqPA006dt/VSulLHCUjHbZQV3rYxWllOuHkDirgcxy6?=
 =?us-ascii?Q?ULPrPa2tQJ6R9ufHPcg36p0YBF8D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z1lgxndmo36kqt0LLy9I/cgslIkao4k20ansL1I+6O7FGBcsGq+03OKraBQl?=
 =?us-ascii?Q?yTtNmVDQkWQd3SyyAbOOnE5iYRoDEmXqh5dUMZXaFrfyEEJDBJkB3inAVvt8?=
 =?us-ascii?Q?ASMom7k9DhgW6WNFpdSbb8nOhAxurBIg10kEuq2aKL7/lTPPtn7xH1/pWNwf?=
 =?us-ascii?Q?zO8elR+XLx2G/J9nReLohCykPUMCa/zlnhKiKXHXq4W1RXICBjsPNvHWXYbQ?=
 =?us-ascii?Q?/s/+NK7KVzNTDM6WC3uca72D+AGh7e/BUNsDB+k6WRvWU1XyqrnrubgcPyG6?=
 =?us-ascii?Q?0jN37P7byYGCmPdam0DztK8d5h+Ky/qEllSUd/YUDotl1LspB+E0zXi57Q6c?=
 =?us-ascii?Q?kEWRrebwuoa8rV392ChW7IieNrSMgXQnIYJYKL8Jr2EJ1Xt5YvaarinFuigN?=
 =?us-ascii?Q?RlU0dfOfZeMycEz0pxp7j5RfyNuYHhxM5r4HxylJe1yP1SajBoXI1zCqavnn?=
 =?us-ascii?Q?kiiu5r1XgnEHqUasGJwHpaUD7sulf3sopjrkU76uc6K9qFrenHhGNC1mmvLi?=
 =?us-ascii?Q?N1tIlq8j3h6ay1R1CDqxI3IXc7cGdOjHpTc8KURCcRIh6IiLUkGQM6EVWF6P?=
 =?us-ascii?Q?kcHrGXm5ergsJUVjfW4HmO8F3eq1nxTe3OA2wT97uyuvS8I+CoXDN9vNsyrh?=
 =?us-ascii?Q?f2790/OTTQ+Hygov05USx1Cl/gs1g1MB5PtjPxy2EHPCioVUafOoOPv4Ul+l?=
 =?us-ascii?Q?JdzWc/A3P4FJgAaI7Zytw6dBRNPEUj+hTOq3D5BE8E6i0VAofC6Ff8C/RA49?=
 =?us-ascii?Q?DDHiZ/gBBm4P8ywhXeBnjzpkPk/WFqF7ghywYLl8iR27IeVW/gjXD+aTn4fR?=
 =?us-ascii?Q?vFIDOKNDWZUGts4KPL2GwHzTi3NM6DqHJevhoQxIPUvLnBn0FVxvzIvJ+ddJ?=
 =?us-ascii?Q?l73ifPPzPVzHiuaHPR2ZZs47B+eFvT1A+K458Aizf1YwnoZygAJyvPhMUt29?=
 =?us-ascii?Q?ryQ/kev31ukUlX0C8VU2ePugFbVNUY34AaWozQkpkLDfYhWbdVz7kTCYei3P?=
 =?us-ascii?Q?WPNdIkYYbL+bfIL75tCDXLytxrd8HG/mQVZP+JLoHU7l1RiQ9nKbEt1Tdw9T?=
 =?us-ascii?Q?pCMOCOBB/Qu8OvRj8aOfcVTJwvtIejBycM343J6mNEFCujZdEIVrzsxFgtvp?=
 =?us-ascii?Q?F13JRyOTBzxd/xHmlkb9iwaqRrSZCuWsl8bRKC0KazB1ZtThpKkUM4WzYUH2?=
 =?us-ascii?Q?4wdrFs7gUD2aa7ETD0KlnfLRvVr5SsDou8bxwGV1yvSfi9I7N1BYNmjfad5u?=
 =?us-ascii?Q?mQxwDH16HwFIINLimDGUxfLgG2DTjw3o46ASYw9BQvLxiGEAglt0kN+oPomS?=
 =?us-ascii?Q?ZWGaohds+wqvHmTgkLITC0MQTfBbaQ8hOcSUYbCfsmOzSrjU0DaQUtUbvWQn?=
 =?us-ascii?Q?HXUFi3bEmh6nlb46YT7in1Vf2ESaWql2SRV5fkYhrR5aA+Xl0OvHafpAFQsb?=
 =?us-ascii?Q?AyvYhZT/eMSXTUHq3My8xA3WeZ+zWITstbv+8xcttF0HY07ZfF+T3H4CXOX/?=
 =?us-ascii?Q?ZJaiReMx78vvOvtgVB3zw62SDK9dGZscmmH4pKo1bJ8h68qy4wwntXPpMPA7?=
 =?us-ascii?Q?d0TNtMPKb7cp6lek3Ez9W3i3b90RjDwa26J+G2Dcu5OApImRlh3eGuqc/EvM?=
 =?us-ascii?Q?lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9c77dae-6fcd-4b0b-ffad-08dd1e126ca8
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2024 20:44:23.9991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UhSqvSYfevvk05OUJOHaK7nCI1QR1mMq7NltGmoZbBDPBB2Oqf10GuUFUFER8XZS2Zr0WNideu4mY/qMqEB4og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7573
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

Let's peak on the Balancer and DCC status, now that we
are using the default strategies.

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 722da8a7f852..8b23e3a9f14e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -774,6 +774,23 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
 			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
 			drm_printf(p, "\tGTPERF task active: %s\n",
 				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
+			drm_printf(p, "\tDCC enabled: %s\n",
+			   str_yes_no(slpc_tasks->status &
+				      SLPC_DCC_TASK_ENABLED));
+			drm_printf(p, "\tDCC in: %s\n",
+				   str_yes_no(slpc_tasks->status & SLPC_IN_DCC));
+			drm_printf(p, "\tBalancer enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_ENABLED));
+			drm_printf(p, "\tIBC enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_IBC_TASK_ENABLED));
+			drm_printf(p, "\tBalancer IA LMT enabled: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_IA_LMT_ENABLED));
+			drm_printf(p, "\tBalancer IA LMT active: %s\n",
+				   str_yes_no(slpc_tasks->status &
+					      SLPC_BALANCER_IA_LMT_ACTIVE));
 			drm_printf(p, "\tMax freq: %u MHz\n",
 				   slpc_decode_max_freq(slpc));
 			drm_printf(p, "\tMin freq: %u MHz\n",
-- 
2.47.1

