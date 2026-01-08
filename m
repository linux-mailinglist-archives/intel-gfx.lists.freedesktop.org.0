Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C166D06003
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 21:12:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6B2710E0ED;
	Thu,  8 Jan 2026 20:12:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hG2XK5PB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 824D710E0ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jan 2026 20:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767903141; x=1799439141;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=HKfIonh9kMTYgOPKeFLn/mZBHdH9SxL7F8KLw6zy9Hc=;
 b=hG2XK5PB+hUdxn7S8VOXh6jWAf2RPf3Dq6KyqywcyQk2Dnukgs1dpiSd
 Duixwgd0z43SnNxsAK2pCs/tbPs0VuUkJdVu59c87lnyd7g6ZwaQoFiKg
 yhDf26rxb83qc+zWnpDa3yo+1XQEuNDdDyyBwnP85K/9dTVCbsBOKBzZs
 kzHup4nGol1bHbmRsbSImY6w6gpFK4R+qBeKM5KnDr3eX8oXah1UxSipb
 bogXJV+PR7KoeSwaif6q3r5T0uJUlk6HVyGrp+ZpabzW5YKvn8UKGC0FT
 50babyvES5hZgHnGIvLLtx//dOHGS/QEWvYIcMuubappDPGhlU9L8ecns Q==;
X-CSE-ConnectionGUID: 0mUSd6qrT/SALtfYvtxKtA==
X-CSE-MsgGUID: ALujuVLaRoKD4/vemvAZtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="80011218"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="80011218"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 12:12:20 -0800
X-CSE-ConnectionGUID: AGWov8xgR/ebafqh3dhyuQ==
X-CSE-MsgGUID: A0+/GEmASDOFTLlWB2zY2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="234466488"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 12:12:15 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 12:12:14 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 12:12:14 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.37) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 12:12:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u5MK0io4AahZk92K1fnDoSSCjBHREPNS6x8KQcE+oY458B5SqWxzHoKXOKWYC/qc0QiBEX5Yk7x0Lds/WoYWmuaWDsPy52CJaibyuT+tNpNfrIhx8AORotWsUBFk9nJh+Xm6ReAp9JUiKcJdq1QfvMuoKhTnXoJHqrdRNcLTAHdLFWqN9+EbcDAQjivSYM85d3DDJ4oeQoTxTQ4FV87p9iHkOt+FglmywR71C607yGYbeqF42fTQvunMKnixQYS0ncQH67kKGYl3xSbvpKMk1xwCab9EY1CJcramBhdlfy5Pqftax9B8tuBnqxNTDbVBX5M5PRSCnku1R92dAHICeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KrNC4YqG8zgvHfxCMYtIvocTsN0uT0lctN8mOdlfZpE=;
 b=DfYs2nqPkMpbq+/WTCDxKuv98CJJH9uG6Y8b3XPyD0Mcuysr7LoTJXKpofbrZSHvoEDx3WmsiQJv2fCSS/wXoYl2RUL5y5PU+T4LHs8deFL5VAzK9WpmRkSWrR7M8Gx8j9mzMg4f4SyAVfARrfVUq1yFAj6ec/Yzrxi1kZCZIryqXt7m2KfZL5CsEkAUQBy06OSrbVVFkgzX1yFPlnqpSLqM+e5sV3b4N48GDjpSSzYryHhFBde5YXUcAbHG9YYtCZohNpQ2S+SZTOi15zIvWEw9mu6dXVtnoQxMThXtL6e6xhB7z2VMmuJ1d4/bP3g6wz5gYeftvgiPUjRAxrpcxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by IA4PR11MB9130.namprd11.prod.outlook.com (2603:10b6:208:56c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 20:12:06 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 20:12:06 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Ben Dooks <ben.dooks@codethink.co.uk>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [CI] drm/i915/guc: make 'guc_hw_reg_state' static as it isn't exported
Date: Thu, 8 Jan 2026 15:12:03 -0500
Message-ID: <20260108201202.59250-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.52.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0091.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::6) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|IA4PR11MB9130:EE_
X-MS-Office365-Filtering-Correlation-Id: b754e2a6-8c46-4cae-b872-08de4ef231fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0iLG8dd5qwOgp/I52tXid1BT5Jc/rIBnlV6fTrozjnpG6Qt7ZS533LC82smI?=
 =?us-ascii?Q?5/zqpyBLqd3WDaT1cdg9IAIWqsVWtkkGxt2kJs66lWRo3vV0/fW4DLHlmTeU?=
 =?us-ascii?Q?OC/Bm3PeGk8/amenLaw4XMe5kuC1cTfbRlscgPMEDs4rOI0LKgq0hOFEnVz4?=
 =?us-ascii?Q?j6BT3Q2dqcVJ1b88uSR6MtTrn+/n6M34zpMJJGJU+IGbU+X5GaI5jryD23N7?=
 =?us-ascii?Q?YpMmVjbHVcLeRN3RYJwF0Q8wwdrE4EfGIv4nSRElI1zWzweJSDJCt0HfVZP8?=
 =?us-ascii?Q?Ajy3hj0FIorFZbNRW2ERTAFkHGkSVs+22njy5WWnkiqRRl9Co6ywALVqF72z?=
 =?us-ascii?Q?qLQ8tCY0vBXKnf7aBcO3cXIjePuC6SQHkClM82Q9WIcVR+l1xbDO6Shxfo46?=
 =?us-ascii?Q?j8loH5n79WDoS3fB3QVdk5gnVCNdjZOpv2U2qVP946nMWQoVSBlRVVRC+YIH?=
 =?us-ascii?Q?JaoyrKVlDKu38sN8Xxr50aJIvrxZhtQmf05+UXC4h4T53L+fpFE0MBDkrw3Z?=
 =?us-ascii?Q?etXvp7Kc07cK6euNcl1iTfBXzMdb32uRwyfc4mlhzsH7nwPHVabc8BfriTny?=
 =?us-ascii?Q?4coSHCaw0duZnINkXb5AOIb9hSrBj7kDKURPE0BJNqeHR8ZcPdcWoD/M+yqm?=
 =?us-ascii?Q?7/NVf7wTd1fmWAuEdq5wV5WoBin2Gz0dvBLaDifOMrTBnent6AwneZpFPjCp?=
 =?us-ascii?Q?0NGAtjEEQakQyyUlSRzNZI5Y7O3013eBod+hDWhQQhe9mzum9cd46tx1bU9b?=
 =?us-ascii?Q?34kotil2qxYc2CwgSCqmpiRu+yHowXTdVFjwM7bHj/cej+nGlkWxUS27o7Ru?=
 =?us-ascii?Q?n8GBwJcuzWVh+Vr3K7UUwnNmY3/2ytkd2y+wtX728plKMA0sW5EfALMi4E9O?=
 =?us-ascii?Q?HubRiixeiB2kSeXpBcyhR/SpKmL8Hyyfw+tgmgzHSgZO4AbelSFNPVFUCpyQ?=
 =?us-ascii?Q?mtijBc6D3NktytHJIaN827SDLSnkxf+nTCJzANfLCbX/LyfF47EpUfdmlztG?=
 =?us-ascii?Q?JtEhh7q+4M/j/RlvtqscAugb+BiH5KbbvdxHTXHWMI2HIrM2E6NuwKy1usPv?=
 =?us-ascii?Q?+45+RtMHgcE+NQVemyt75vJkMxRhJ0+tJQs4r4mTeYmDRXkmyyUV/ruKenjb?=
 =?us-ascii?Q?oMIxKM8WISHKVOiJHC6fJOxNn1G+VqXUeKrmpxeoBKN4NOkfulFxsIyZY3gl?=
 =?us-ascii?Q?2XAnZiqmWSxrRkUR7BlOyzQBZqWpiFTDnOKr0HmHDZ0CZrNRuAC0HhQd14Ok?=
 =?us-ascii?Q?85TT6YJLq0lp4v1fE87PqEKs+Z9Na+6eHBY+UpiNfX8JMGlkwcW/72IeaUDQ?=
 =?us-ascii?Q?d8CGKPLYG0NQlUUSS8qWggcXhxgzxtt8vp1A9q0B3QprT7JGMMtC5QpTpWcb?=
 =?us-ascii?Q?iYHKUQSQxWpuanHMFsHEDVMtdNu+0iQhJDmfRre7Wr1507WGmiZPvcKuWrHg?=
 =?us-ascii?Q?dwpyjPaS7DawAjzx/hmtV8MYDAs9sBqU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?j3+z2wwPhUdYhsw7hTkQZIczlRBvt6acmAj9vtkGxZ+UQHT6oHYwGeku0Xk7?=
 =?us-ascii?Q?XSO80lQ52zgKy2Tm9yjLwVjo2uYRB8X1o08Ensd1rOszuuo+YOraan9BDkkw?=
 =?us-ascii?Q?aJLrzZbrNT6QWGBVAGmxhnu+MLETB5AkPwCpL+tscum3flVZcLqSV0gB94rA?=
 =?us-ascii?Q?OPpjSdiEI+XdOv0YCwd5rFaBepuFXUmw3T0RowyoxMiiaTqgflCquM5FSVkt?=
 =?us-ascii?Q?78iVnJWE/X7YEchK7DwD6xyLklCEd0CwrmvEJMrkqBKXGLhU5EAIt1rEVWne?=
 =?us-ascii?Q?10cLJ9bKiglPqSZoc6gV8A9SwBKTnDGML2XtDBHex5Q/CN3HkxRwo2hVfk79?=
 =?us-ascii?Q?Je5Q1LWs6ghqrwdgoF59wHFnswQCB+AvwzdcRB8IvmLMyPDRBwxyPPSklkyE?=
 =?us-ascii?Q?lzh+8OEysbElqPkTbdW6vCFsNf0uVRkfJ8/tGc42RILTnxNFlhh8JfzrGD0g?=
 =?us-ascii?Q?nWTjS/QcFk3lL5ZYcF0KyocO2/hCAoqA64xIhkegc6JeOHTyq6wW6kV2X1/E?=
 =?us-ascii?Q?WE1YZegsBLjueN4RnSF3Jzjw0acg0RvXr7gSqORpcHPf00aAPaGSNCSX1upR?=
 =?us-ascii?Q?zYp1fuf2paVtOnkxXCBobgSFRYcLxWcrnfr0kj5OKshneV0B2zkBkZH3Qb4C?=
 =?us-ascii?Q?rOgW1UR+DYgy6sEyzFUdidUynQabqJZd03qyPU2AHetmh2jZjeIL9y6RUSCR?=
 =?us-ascii?Q?vOU0gO6hFZYKkS0G5Md5bEi6qx9hOtEy2fWyNUTIq57p6hd90s6DNfeTEORi?=
 =?us-ascii?Q?wexsp/PMBuvhPOkjUMeR9Oqczm96BvlhwDGZfcYX0EqtP+ajYc81igXMnqTS?=
 =?us-ascii?Q?QfoQ+gKm2PjD3bqnqgf781Q99kfWDiiywyGMsRXQxc179s5GtfwBIPLf/laE?=
 =?us-ascii?Q?+w06a8mPUpwVWK9J0QTAj6wrTz9m0JHtbTbJRVq5tbhrezVB9+XX/KEfDGoW?=
 =?us-ascii?Q?uMXta0VvBBUMyZLSKDQfNbjMBKMB4L1uulc/B0Ni843Ky/9uoNG4RsQIUGzS?=
 =?us-ascii?Q?ONww+w/H9ar79SaF+FMMjCEWaw6MVqv/Mk1WaPZa5g7uLQ8CdpCpB6w4b/pu?=
 =?us-ascii?Q?tXio0P1FWoKW9UNJ+LHD+IKFc42UvhtGjJkUiCrGcAu/58PoyOdRtlHBgn+R?=
 =?us-ascii?Q?bnmVQrS89Pf5gaL2SyI/RqFU8u/NscDAGpR2kPrwDJLZMPfAM3y4B0t0XU24?=
 =?us-ascii?Q?Cy/9N2sIPXDrTv37hCcJnVt0ZFWocT/UJ95h55bMo3WPBRca0sTSeUdWr9+o?=
 =?us-ascii?Q?BzYwlxKAui4SUs0p+ZJTxD4Dbue9bIDOJN5gXD7sGy20M2bMWftQ0P5+4Zek?=
 =?us-ascii?Q?rxdoLXVt1XVUZtRnhJcu/DYXlpVVWhjO3Cu54M5Ighuetdp0KB3OGDX+vFKF?=
 =?us-ascii?Q?S/IRkepIHXE6jmsIV8MNzjpeX3Uqj10TcJ2sNDJOnW0XyZjjij3vcEIq3tZK?=
 =?us-ascii?Q?3XXxWvGn9Pdv0aggOe4JhXId1+/jAfxU3EMz9ySiFJmETGim4seuPR4GMy0I?=
 =?us-ascii?Q?jthQ9QlmMroXRGZ8okWtwBqyReeF66JqTULzuDD6ptK98Foc+gTuI7faEBpK?=
 =?us-ascii?Q?zta9hnu88s0UpV7wvf/hZ7eAYTlfJf2wXT71/HMT5apZ7L6KQSWG1KY7H1RN?=
 =?us-ascii?Q?D+bqVutd3KjUXvOQVVxVRe3Opf/lL2SNL+xviyaw981m4LqwLpauVO55oqlw?=
 =?us-ascii?Q?gqWAtbN41/sZ7HsYlqFYwsNvaromc4Aiqh4VqcnB8/w092iFCGGiQ3ZGuUzZ?=
 =?us-ascii?Q?oUWY9rHtuQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b754e2a6-8c46-4cae-b872-08de4ef231fd
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 20:12:06.2969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A1334Z1Pk0ifXBNUlxKk+/QPLXP8zPD6XDUlILJxj0wR/Kv4PtDQIh6173YnLSSI/G5XNPhnAfBrFXpPWabbuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9130
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

From: Ben Dooks <ben.dooks@codethink.co.uk>

The guc_hw_reg_state array is not exported, so make it static.
Fixes the following sparse warning:
drivers/gpu/drm/i915/i915_gpu_error.c:692:3: warning: symbol 'guc_hw_reg_state' was not declared. Should it be static?

Fixes: ba391a102ec11 ("drm/i915/guc: Include the GuC registers in the error state")
Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 7582ef34bf3f..303d8d9b7775 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -686,7 +686,7 @@ static void err_print_guc_ctb(struct drm_i915_error_state_buf *m,
 }
 
 /* This list includes registers that are useful in debugging GuC hangs. */
-const struct {
+static const struct {
 	u32 start;
 	u32 count;
 } guc_hw_reg_state[] = {
-- 
2.52.0

