Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E37984C5E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:44:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 027A310E763;
	Tue, 24 Sep 2024 20:44:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OrWansM2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9A3C10E75E;
 Tue, 24 Sep 2024 20:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210651; x=1758746651;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=f9PbteR21BU50Ov1ik+/dpPT8Qr40Jnjf3iKpD9R5Rc=;
 b=OrWansM2iAVpxzKzPouIS/VjqIMk+McJ4q0HWpQX0rLaZX1wiMhRXoxx
 N3sA5rXmUrNjKV92JUv9ECuSbCibUlr7e7Pz/MrqjqxbJi7J0UZ2/my8h
 8zoIcw7O0Xk6NO3nm8NLrF8voJbda58gdaUxt/V3EXNsQr1ln2L6iQW6I
 yOzE/o3tYO5O8z9EKqtC57H7TL1LXWXJtcAxIqz7fi78ivuypGVdLa1jQ
 yDmemeqBLa/vXlZ7MdoMwqT6MG8j5xyyyV+SHjBBsKOAsd8VA2l6SuNKa
 f5DAxgXQM6iL9KRwHxkcBjgzCKh/v3SJhtcOP2EqZKsbjV/szOKI15tHz g==;
X-CSE-ConnectionGUID: sw5ujRRpQgucM8WhCDaQ2Q==
X-CSE-MsgGUID: FtZnncKlTMerIQoU6dqMEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26326222"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26326222"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:44:11 -0700
X-CSE-ConnectionGUID: k61AYm2oQ8GAK0fP0DGXRA==
X-CSE-MsgGUID: whzMSQ7CRLSaFhjSaUiZ5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="109001780"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:44:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:44:09 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sqLyu9rmPxsHq3Co+xaDMa5FZ71cQ1mG5WzK2NsKN3iTp8st/h0d2IYgN1LC+VH9GmpEQ3uV6jtDmS0sK/XdyOsNKn/OmyWiz+vTruepjEjZcLliW09JLdwVuHzCtrsUX3vmB8jc6rQUei1UP/0Aq2kwDLjbu/9gJtTk7VOhFfSA9Ni4hPa0VIt6EsKgfcjl793FKfsHbvO1KPen4xV3g3UOHi1XmqWsMIlyiqVm+4s3EnJGcv3enIbFVYiNi1FR2H7yU83xf2u28CgTxdTmStn2KZk7IqI1PHhmDasSigRNW4e1CUFGEL/8TNknkaCVLS5C/uZQGM7utG0s87idnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nQ/6AykCCnH6PxICJFFq6G0rKEiMd/v05pl3akJQigw=;
 b=i4KF0pQ+iMbp+pCQJbLv+e1wVCrUjviZIEWwUQtbdFHcBuoIg3y5ebTX5edDICmhHWmBOseRIcP9MLFSJprAv3Bap0B6CzE5riLZ/+AQPzqdJiua0X+IaKjvT5H5CSWZmh4HqGM50DlI9oL6dK3busukjjja+VGTZMFEpnEljEdZok51UpPYxE1R8/f8+FWPwSV0WMsZNVJg4S9A9CoqU1c/W2NlFxM8ndMs1EVpuJyo1eairXtPqdGFk0NSsyRgLjHVd7vqP5riQ33lEc6q2QbI20+DAf2AAH7+fUcoL+g7DIyKe/D7/gvkwzngnq3Rqb8R1YjZhortcl60oR0NMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 20:44:07 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:44:07 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 31/31] drm/{i915,
 xe}/display: Consolidade entire runtime pm sequence
Date: Tue, 24 Sep 2024 16:35:52 -0400
Message-ID: <20240924204222.246862-32-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4P221CA0017.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: 019b67a7-cf51-4311-6343-08dcdcd9a231
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vu+SrTDLGwCBegHRsQkp/R+W47gTbNBnyXUf4H+et4jh036swz0faE6iWhVP?=
 =?us-ascii?Q?OizTlrEsm+aY/OQkkKgxmFvRcXI7wDBrKzgOnwOk39ryhw+V1PyCq4WfAlXk?=
 =?us-ascii?Q?PbXbfSLwoby+LRA8UmR2uqDKqOe4IdvwDo6BQgQKiSmw2N+v3avFgqikIt/H?=
 =?us-ascii?Q?K6lc+mGuBluFhGq8+BYxvqW8dk6/vP0UZRCxdrs2tYR8ylc8LW9YpUx06DyL?=
 =?us-ascii?Q?JsVwpvrVpqF+eYDHdxvdQrpro9Vz3u800KeTENk6PggikUmn3lRsaMSZAIMz?=
 =?us-ascii?Q?3Du4oyBmPgZIR6QQBS7SGncz6cg1kQfFnpEeR9arfl6V+KqkfoOyZ6wJeHKj?=
 =?us-ascii?Q?DWdJBc9cUbPFWN1qdE06izMwPYFHCz81dZN9aRhCpYV+CedUmjddhtgfhi5W?=
 =?us-ascii?Q?t+cda5w+KKGLZt2YoKMYcbn1KgGvyzrMDIEjgoNnydLU8mE3jrPHqRXV2O61?=
 =?us-ascii?Q?tE9b5b7v98ubAZAWunoyLlO72138fEFIXEOlWgJmZt6aPpx9K/YzUGT9MlvZ?=
 =?us-ascii?Q?g86ScnfKM1uyfWaB6rwdVpuvbMXZ/Q7rfExlaQHrermYfyk/140j9EHjPeGi?=
 =?us-ascii?Q?0JixNKMzCC12RXo/p0skleYAeXKofXBrurqegZsqoUUYggO6okrFc6E3vgki?=
 =?us-ascii?Q?45Ii1fHk2DZJvFZKewrDKF5S9gHLG6rcxYUgLNd44UeTx7vs1sbTzojGxGRo?=
 =?us-ascii?Q?AMzE/lWrPQEEj783nLXFT6qIoGYlKMRRg23do3IeR/6apWUKJUUQr2cciZws?=
 =?us-ascii?Q?nPMEeqS4BoLRhm3mzZu1KzBJC1VE/Imt1N6ysGWbJsvBptjugIkg6KF6q1ML?=
 =?us-ascii?Q?0MYLB+3/2zjdslPEzBq4Vi8Z79RKJPUqbmKixHdkSjtrJS8zxHRVybeOZUtG?=
 =?us-ascii?Q?ya0fAkQ5RTtGcWPu7ev+wo+5+k5QxD6OHXvPFK3LONOinFjMCEUAOForbtcE?=
 =?us-ascii?Q?bPjdrvRerSdT14cpBFN2rSXLcu4WTKtWiO0Q7swwqlQAenu/D5DsaclGkYLj?=
 =?us-ascii?Q?tKa2sytYhanAIjCstGY1hIzAfvVg7QLRYNj6GORID0AMdp4pyIcQ97YyuolV?=
 =?us-ascii?Q?RcoTH7nGYB7HiLdPoZRptQwlWFcSwxmkeaW5GpmA8//NKir3OmiAyybO6264?=
 =?us-ascii?Q?mPPa+LpV2fTPBNjBVHg4jjefHgFCdtTy2JIb8CKya4f2Vuy9gP2NMJqs5ioC?=
 =?us-ascii?Q?qftmasHlug8SJrJ+36C6wqbdoY/ioCro/cJZ5Sr9whHWwNiT7wmWiIEiBXXP?=
 =?us-ascii?Q?lFhqUHnHIRHXkHJ8oNw8eAtqnPJoHbizJ1o2upQElebxTxhkVtrvkVO3DjL9?=
 =?us-ascii?Q?I4MXkAygb9rmT4tDJbQWO5gzzT9VhTSo2JScjxK8zd4cwA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wF80i/bdxuKOYc/ttS8WiZf4205VybphUTkErwxMCZOr8B9Xqf8HXy1sJiuD?=
 =?us-ascii?Q?ZPwTLNuGcaViJ/cvdKVX4G+zjGl5Qq00WPz92pu4ohqMTnxZVcHE4zR1ds6y?=
 =?us-ascii?Q?lR+7E9D8puZtlBZU41eEq8eMPmcIfVJ5oP43T9oURTSLw5Y86X87jJXQV5EA?=
 =?us-ascii?Q?TN6VccSiUUHpAiW6P2AeYdoAiJBOJ0i3yPrjnlKLFMphnWinK/F8q809Ko68?=
 =?us-ascii?Q?rqtt6nxbtI/e5KVhlvWLVSdFJNOII4P0m5Zf4Sor9286k4sKpRsDEQe9z4fH?=
 =?us-ascii?Q?8Kf8mstfrRr4JQSn2T5G986SFeTmI4426c8l64Y3lg6i+1OeUT1HKWp2+ZOE?=
 =?us-ascii?Q?D0AoXtFIN93gi6rMslKQ6Y2UqtAOcffLwMrVjEntzJ6Zk50dke1ZlJYnX7Q+?=
 =?us-ascii?Q?dgHDiKioWgTOrIP0Eb7bY0rScPF2vsMwAqBJZ7SXEHj3NiDZTQIwb1rFqUzt?=
 =?us-ascii?Q?5fIMkG1okj9eL+7nI6mbxXKN0qlTTZrsOR5JMm4feuhFpjuTf70NMuuRJ79J?=
 =?us-ascii?Q?RHae9JiBvymat7KCmeN7sTTbGClAwccr68hd4x74A6Dg36N1AM2pVMkFGzOw?=
 =?us-ascii?Q?IdpWvlmFOibWS4LdGQv/UTdID7Kp0p+kxXxTKB2tvX8th0Y706mtJb34Bgtr?=
 =?us-ascii?Q?AmChnS9gApec6sdMksdSTHC/iejKYrLp1DECmxCTzQfUssDTSsS3F5w8PZ1+?=
 =?us-ascii?Q?xQ8JCGYnnq0G9NN3SArtaggOpYLAGO1AuKeAC1uCmV15q25TExyLPieEO0/i?=
 =?us-ascii?Q?6M0684rPbrFGSfpcADg0X4P/k4mPBNFlfmOfi4GgfJ4HFT9Yi1drqsGRlrme?=
 =?us-ascii?Q?l2qLxKSsq3NuDeJefpTnXrvPfCwwWgB+yI0/7lKqEjqRakVm2CpClmQEFyoY?=
 =?us-ascii?Q?1CN5yoCjuCDJNvqDoJVgKIk8dQ+ThCmR5Rmu+52PVaErxrDUEOPUCuLQrxLE?=
 =?us-ascii?Q?VbV7xC6BdF5yhNNGYXfwphNKUF++HmoKnjvH/i6tTE9ArnulzcIDfK/KWRrX?=
 =?us-ascii?Q?y4LJwAg3W15lbigDN1xKRPpsif3BGSTjyaeRPwiMtVNNBWnNHHlfjetouvJa?=
 =?us-ascii?Q?wrAr/ySTb4msGLTacsWAsoGgYZWDJBj5raFhjRj7701kgfyarNjn2S7SJFnW?=
 =?us-ascii?Q?2BkF1uq6E+Z6c4Xu+SuVmB5bRlQAglOzmKhwwaDUzmNgzE7DvXEJPTU9gAdC?=
 =?us-ascii?Q?qbLKLeIjY/oFrJDG87NzaMZ46ZpEaINZt6REw1u+Edz7wXy4wI4sBlQ/wjz3?=
 =?us-ascii?Q?LJHKxHMWLoG646QmMuF3gWsqn/rpyl3GOyesxhOZccJfZCM/x4Jhju9GjVbb?=
 =?us-ascii?Q?ZebbT3aZ7WCHwinSED0MBeu9smiaBTcvpyvCiGim0nIHXBcTfhf/3msoBPbl?=
 =?us-ascii?Q?5p0Ma82PHZbDSwf8KMHGloW+t8MNH+u1STV4CN9FQWSfg7yApiaRo8hVRqjj?=
 =?us-ascii?Q?NYEkFwpTTrWcm3hdZld+nzJg0fQiz+TlbJDCVzlPae3toAc0NeZfAHoiUCOH?=
 =?us-ascii?Q?JSv7aSmTEDBx6PUZAxdEnDyF3ySLljvIDCCtkHZF9ROQW01hn40YtxrJNMu8?=
 =?us-ascii?Q?ncepWOUyFFXks0MtMqZW6VCxhJJGjvwy7AxEsBhL+Q+XRcshJsIlK9sIHtJB?=
 =?us-ascii?Q?ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 019b67a7-cf51-4311-6343-08dcdcd9a231
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:44:07.0221 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jm9DyGpxw6B+3u+43NVvPZqZS3ECUkBITrsQeA/ak0BdU2yUPQ/Aw3ABU8DmnJ9PFWD0FLe5GSkCWbuKYmLb5w==
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

No functional change.

Consolidate the entire runtime pm sequences under
intel_display_driver.

Simplifications and optimizations around the D3cold sequences are
likely still possible. But before that can be done, consolidate
everything at the intel_display_driver side.

Xe display power management functions are now only a wrapper
checking for xe's display probe parameter.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 66 ++++++++++++++++---
 .../drm/i915/display/intel_display_driver.h   | 12 ++--
 drivers/gpu/drm/i915/i915_driver.c            |  8 +--
 drivers/gpu/drm/xe/display/xe_display.c       | 56 ++--------------
 4 files changed, 74 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 62a7aa56f0da..3861fdbefaff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -856,12 +856,45 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
 	intel_power_domains_enable(i915);
 }
 
-void intel_display_driver_runtime_suspend(struct drm_i915_private *i915)
+static void intel_display_to_d3cold(struct drm_i915_private *i915)
 {
-	intel_display_power_suspend(i915);
+	struct intel_display *display = &i915->display;
+
+	/* We do a lot of poking in a lot of registers, make sure they work properly. */
+	intel_power_domains_disable(i915);
+
+	intel_hpd_cancel_work(i915);
+
+	intel_opregion_suspend(display, PCI_D3cold);
+
+	intel_dmc_suspend(display);
+}
+
+static void intel_display_from_d3cold(struct drm_i915_private *i915)
+{
+	struct intel_display *display = &i915->display;
+
+	intel_dmc_resume(display);
+
+	if (HAS_DISPLAY(i915))
+		drm_mode_config_reset(&i915->drm);
+
+	intel_display_driver_init_hw(i915);
+
+	intel_opregion_resume(display);
+
+	intel_power_domains_enable(i915);
+}
+
+void intel_display_driver_runtime_suspend(struct drm_i915_private *i915, bool d3cold_allowed)
+{
+	if (d3cold_allowed)
+		intel_display_to_d3cold(i915);
+	else
+		intel_display_power_suspend(i915);
 }
 
-void intel_display_driver_runtime_suspend_late(struct drm_i915_private *i915)
+static void display_runtime_suspend_notify_opregion(struct drm_i915_private *i915)
 {
 	struct intel_display *display = &i915->display;
 
@@ -887,20 +920,37 @@ void intel_display_driver_runtime_suspend_late(struct drm_i915_private *i915)
 		 */
 		intel_opregion_notify_adapter(display, PCI_D1);
 	}
+}
+
+void intel_display_driver_runtime_suspend_late(struct drm_i915_private *i915,
+					       bool d3cold_allowed)
+{
+	if (d3cold_allowed)
+		intel_display_power_suspend_late(i915, false);
+	else
+		display_runtime_suspend_notify_opregion(i915);
 
 	if (!IS_VALLEYVIEW(i915) && !IS_CHERRYVIEW(i915))
 		intel_hpd_poll_enable(i915);
 }
 
-void intel_display_driver_runtime_resume_early(struct drm_i915_private *i915)
+void intel_display_driver_runtime_resume_early(struct drm_i915_private *i915,
+					       bool d3cold_allowed)
 {
-	intel_opregion_notify_adapter(&i915->display, PCI_D0);
-
-	intel_display_power_resume(i915);
+	if (d3cold_allowed) {
+		intel_display_power_resume_early(i915);
+	} else {
+		intel_opregion_notify_adapter(&i915->display, PCI_D0);
+		intel_display_power_resume(i915);
+	}
 }
 
-void intel_display_driver_runtime_resume(struct drm_i915_private *i915)
+void intel_display_driver_runtime_resume(struct drm_i915_private *i915,
+					 bool d3cold_allowed)
 {
+	if (d3cold_allowed)
+		intel_display_from_d3cold(i915);
+
 	/*
 	 * On VLV/CHV display interrupts are part of the display
 	 * power well, so hpd is reinitialized from there. For
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index b1441a55d72d..21aa0e551898 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -33,10 +33,14 @@ void intel_display_driver_resume(struct drm_i915_private *i915);
 void intel_display_driver_resume_noirq(struct drm_i915_private *i915);
 void intel_display_driver_resume_noirq_legacy(struct drm_i915_private *i915);
 void intel_display_driver_resume_nogem(struct intel_display *display);
-void intel_display_driver_runtime_suspend(struct drm_i915_private *i915);
-void intel_display_driver_runtime_suspend_late(struct drm_i915_private *i915);
-void intel_display_driver_runtime_resume_early(struct drm_i915_private *i915);
-void intel_display_driver_runtime_resume(struct drm_i915_private *i915);
+void intel_display_driver_runtime_suspend(struct drm_i915_private *i915,
+					  bool d3cold_allowed);
+void intel_display_driver_runtime_suspend_late(struct drm_i915_private *i915,
+					       bool d3cold_allowed);
+void intel_display_driver_runtime_resume_early(struct drm_i915_private *i915,
+					       bool d3cold_allowed);
+void intel_display_driver_runtime_resume(struct drm_i915_private *i915,
+					 bool d3cold_allowed);
 void intel_display_driver_shutdown(struct drm_i915_private *i915);
 void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
 void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b3eaa55ebacb..719b1c21b695 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1402,7 +1402,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_display_driver_runtime_suspend(dev_priv);
+	intel_display_driver_runtime_suspend(dev_priv, false);
 
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
@@ -1436,7 +1436,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (root_pdev)
 		pci_d3cold_disable(root_pdev);
 
-	intel_display_driver_runtime_suspend_late(dev_priv);
+	intel_display_driver_runtime_suspend_late(dev_priv, false);
 
 	assert_forcewakes_inactive(&dev_priv->uncore);
 
@@ -1469,7 +1469,7 @@ static int intel_runtime_resume(struct device *kdev)
 		drm_dbg(&dev_priv->drm,
 			"Unclaimed access during suspend, bios?\n");
 
-	intel_display_driver_runtime_resume_early(dev_priv);
+	intel_display_driver_runtime_resume_early(dev_priv, false);
 
 	ret = vlv_resume_prepare(dev_priv, true);
 
@@ -1487,7 +1487,7 @@ static int intel_runtime_resume(struct device *kdev)
 
 	intel_pxp_runtime_resume(dev_priv->pxp);
 
-	intel_display_driver_runtime_resume_early(dev_priv);
+	intel_display_driver_runtime_resume_early(dev_priv, false);
 
 	enable_rpm_wakeref_asserts(rpm);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index ab85c7fb217a..9a652292d988 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -283,36 +283,6 @@ static bool suspend_to_idle(void)
 	return false;
 }
 
-static void xe_display_to_d3cold(struct xe_device *xe)
-{
-	struct intel_display *display = &xe->display;
-
-	/* We do a lot of poking in a lot of registers, make sure they work properly. */
-	intel_power_domains_disable(xe);
-
-	intel_hpd_cancel_work(xe);
-
-	intel_opregion_suspend(display, PCI_D3cold);
-
-	intel_dmc_suspend(display);
-}
-
-static void xe_display_from_d3cold(struct xe_device *xe)
-{
-	struct intel_display *display = &xe->display;
-
-	intel_dmc_resume(display);
-
-	if (has_display(xe))
-		drm_mode_config_reset(&xe->drm);
-
-	intel_display_driver_init_hw(xe);
-
-	intel_opregion_resume(display);
-
-	intel_power_domains_enable(xe);
-}
-
 void xe_display_pm_suspend(struct xe_device *xe)
 {
 	if (!xe->info.probe_display)
@@ -413,10 +383,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed)
-		xe_display_to_d3cold(xe);
-	else
-		intel_display_power_suspend(xe);
+	intel_display_driver_runtime_suspend(xe, xe->d3cold.allowed);
 }
 
 void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
@@ -424,12 +391,7 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed)
-		intel_display_power_suspend_late(xe, false);
-	else
-		intel_opregion_notify_adapter(&xe->display, PCI_D1);
-
-	intel_hpd_poll_enable(xe);
+	intel_display_driver_runtime_suspend_late(xe, xe->d3cold.allowed);
 }
 
 void xe_display_pm_runtime_resume_early(struct xe_device *xe)
@@ -437,12 +399,7 @@ void xe_display_pm_runtime_resume_early(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed) {
-		intel_display_power_resume_early(xe);
-	} else {
-		intel_opregion_notify_adapter(&xe->display, PCI_D0);
-		intel_display_power_resume(xe);
-	}
+	intel_display_driver_runtime_resume_early(xe, xe->d3cold.allowed);
 }
 
 void xe_display_pm_runtime_resume(struct xe_device *xe)
@@ -450,12 +407,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed)
-		xe_display_from_d3cold(xe);
-
-	intel_hpd_init(xe);
-	intel_hpd_poll_disable(xe);
-	skl_watermark_ipc_update(xe);
+	intel_display_driver_runtime_resume(xe, xe->d3cold.allowed);
 }
 
 static void display_device_remove(struct drm_device *dev, void *arg)
-- 
2.46.0

