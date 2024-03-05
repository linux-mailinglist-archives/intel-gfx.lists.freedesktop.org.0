Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 169EE872052
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 14:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 131B1112AF3;
	Tue,  5 Mar 2024 13:36:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="blOgDqgr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0CE112AF3;
 Tue,  5 Mar 2024 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709645812; x=1741181812;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=heyJMDVq/6mkzWI559QPweJX4PS625sb8eKHc+SioUY=;
 b=blOgDqgr0B/WyZQYjmPSGXiaElNWMGc07+bb6ha+6owC6BycwLbHQ1D4
 V3GqfEFN4kMs13OCnHHN02Q27m6/i+GdTzak27ANdsylj43KeJlAxHLv7
 8q1s+gD0WvaYNrSeFRn57DD6ovZr+HZYWDlXrItrFURXvpRXNN43h+cws
 4PzkNwwxrBGL+fNHN6DpoSSypFCxKL3KUFM9p9U3HA7lwZW7sWWqnymVA
 ts/tpG3yrMILi8nyy/H6Ne7EM3oyQjjOHlytq5aOGdexlFj/+xBUyc/ni
 X0s+fAdxFmJybwvyiQ4NOSUdBHh7ZhRszL1tvPIBjeUPVViIIGDt7D1aA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="21654711"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="21654711"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 05:36:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9801960"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2024 05:36:39 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 05:36:38 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 05:36:37 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Mar 2024 05:36:37 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Mar 2024 05:36:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FanBLwTPVLK+yFLfUUrY+MVUPp0kJQtIZN+kvarWMvfq9FcRNdQKkz/oIt48BzrTRzF3Nk3tt92HayS8flXl7UsDM3+RtI9XnnA9FotME4iGzIOe5AsETShpSksU8PbnI+Uzs1A22XqugJo+FWDlze+8Jj7mISM90uYoAGrxkLWv4JkFdZoN8pjWMqwZXS9Tlt2mUV7KArkYwcbg+DDWUO4ApX2i6b1wzKfFr7FnbeBn1SkShS7refNmtogTl5SJ4N8DRl+0eege5t22T7S9bJ8+k+3vs+ytft8PyhiMa9q0GjHbxAqn/kRjjSK3tJV5gROvt9fdYrpuuwnN1oMTSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RSGmWO9j5R2b/c//Jt5DZHqirIg5Tx1sBm3k9UYfqVo=;
 b=GlkxHVAGpibrrsUZPtc2ESjWnP9PtFBugKgt8Xj3AZcenmYxpmYR+gb3SI5eIa9mXlkH0GfsawQ65Qa9SmXUYp1qMdlSiPK8MqQOJ3XbLomVRYy3Y/6To0ChO1jonKP9eNZn6xod+84+WmUepqH+EN6ji+h3/q49v0xFw5AQf9pb6ndoilFRq09DtL3TEOPjiSPKrpr4ysnEe+6QFyJW/aNm+1BJKRt649x9LZ1ty19vvKLRWuKHq+W7dLo2OzVMDT//XGfNPV6JAkTaVz0HXhQMIIm+vK2GqZEh/nqJ3rc9Y5k2/wAYm6Uc5h4GR9EnzdFNCawaSW3dBJ3FYza16A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN2PR11MB4566.namprd11.prod.outlook.com (2603:10b6:208:24e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.16; Tue, 5 Mar
 2024 13:36:28 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 13:36:27 +0000
Date: Tue, 5 Mar 2024 07:36:25 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Arun
 R Murthy" <arun.r.murthy@intel.com>
Subject: Re: [PATCH 4/4] drm/xe/hdcp: Enable HDCP for XE
Message-ID: <s5dzxgsdgd3rvgiwqsfisiqn3d2sg7ynnzrvz5x7bhm5axlzrg@e4bleclknppt>
References: <20240227053204.1748920-1-suraj.kandpal@intel.com>
 <20240227053204.1748920-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240227053204.1748920-5-suraj.kandpal@intel.com>
X-ClientProxiedBy: SJ0PR03CA0375.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::20) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN2PR11MB4566:EE_
X-MS-Office365-Filtering-Correlation-Id: 275931d2-ec2a-4a9e-3819-08dc3d19425a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GcezU8cOtbBmhxm8cyX43kysbVJy5HBDLjdkWq3bEGZYKaTXEi5Qo0Hyym0D++O+lJKbNVk37jS3Y4n7meLlooOqjb0JW3aS43pgNHHyyV+mF266YRpreos8aHUDaolu82kslgrPvtaCG1MAiqxjwnr/lC1uAX90BAQ8hKlLubdoYes4jmkxI4olhjNmrz5ecyfZKaS3do+nvZRXbztQiPp20gHlRnUNUj5PdltH7hHVCSPQ0WZ42+eJAjUWIh05WjEv4z2h29QxWrGOlvu0Ul58UPtvYUqQS5G/FRc/BS3pXwQJ9k0JcBVn0qkYjhNPcukuvMFOl2NdTj++rXoLC1Ixi4H/0Hh86tGNadC5D7oTVOiEqSzqKUZM/ste6l425nsSeIjUIuxjazxVcNnU6tyHCrbRpV4qgavHdB5QIAhmxnHK6CJaXa4ZSyEY91YCzUcR9BainS2yTWZHK9NvPcBtmXShOiHaivXBSNRp25/Af8pajq+PMkD3uO9bjVMMwdxEfE38x7P8PosK3axXrvrwFbSb23oFpRNKKs8sHGX+34CGyoiVZeNnlEGSYjiFn7fffts5won5BGGQqsnlWiqFfcycReS1NFzc+AHdU6p89TH7EP1Dx5imTcypFVcj6aQneox2A3pRwKsbQYxWBC3YOqrB/N6FiYi1skmyjmc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cwxFhBwaUVdTtYKuUMnGWfNNkiM4ityKDFpPEn19Ez7skN24zZK31II+OFiK?=
 =?us-ascii?Q?dX2bvzNCwVqUTzMQOew/YyTXl+fpla8f+5kmMw+W34jkacEvf5ux9Lj6q2z9?=
 =?us-ascii?Q?kd6b6/Usdllv/KitSaUuWIfM7Bn0yg9jre6Hb+DeUohQy0cDhTmZfVRRVVHF?=
 =?us-ascii?Q?Ga+v7WjLngEml8ZidFLsmdq6WmXYDZNiRoQND/2jFTPNt8RmQdDT45c9mYfz?=
 =?us-ascii?Q?xBOYJbJt0TvuBwTX5q74mOxEtD7k87ePR/8Ho3ocIH7hxOWW5lUtuumrEIAZ?=
 =?us-ascii?Q?xpeQ6OW2fVGdkSZNEnYUXgrOrDjWbVkxlB2p9orBjZBGaRWJkjZiMkmVaZaN?=
 =?us-ascii?Q?74l5bEMxLU7GFSDec7c2/P+au3NRpzAV9uvrb4hx+/Ahno0PyK/AMxajDjlW?=
 =?us-ascii?Q?qfFg7W0AaQbJ8+Toke0Vql24bFnlp7MDIQxAzK9PRQhURjOKOP01w/4qqmAS?=
 =?us-ascii?Q?mTaE5nEgmAIaNQgcZg+sWUJ6nuvalzWkfToldL97DcCmz1RWB24HbnVSdrTS?=
 =?us-ascii?Q?nV5N1zxRMoL9D8mQ/LOG6xxVui8vfEJLReySh076FumY/Xo9irzJMv5N41A5?=
 =?us-ascii?Q?sIBnZQhmPQsloICQGLJogdS8C7Qr4n4YkcYNJYNMaBFXVT1tBYQmISxjSb1+?=
 =?us-ascii?Q?25IiyC7iEcxLQgVp1oG8/6l1wo+uJmW5Vdk55BiYhINsPbuBywtbhfd/mcvv?=
 =?us-ascii?Q?CKYyc98X7yYNKcGURc/KUJ3i7c27c9UnR8nAid9izgHX9PhMDUPBNZrhoSzI?=
 =?us-ascii?Q?Xy8I3In0J5X/LIHQBToE00Ncu4V+Z+V8rRHPZOFM0v/XobO22WPUk2Bx7IJK?=
 =?us-ascii?Q?SYetYYMd/3KoD9VDAwOHMGlwYkzW90CRpMG2rpf04FnTVpSvso5RRGQe5cGN?=
 =?us-ascii?Q?M6dSHoOfJEm03Y6aPIyCr+qx29xKO5E7nS13+edvXzrB2O+de1VVqmOZnmVU?=
 =?us-ascii?Q?t/gNZfuCkgVfJL1Wz3PwOkJIFjg7G+riiUpwPdMNC00cn847dEhngSw8HExz?=
 =?us-ascii?Q?PZ8vZ5TXR+5WB+16GEcuNleIKvx8tEIVTHI+2AeD/RLYpvJcUjK7XhXuB85b?=
 =?us-ascii?Q?sa61d1rCpOF7vhcrLd2+qkS6UjnBfNO8etstRrMAB5KeW0MSP4RllvPcT9aQ?=
 =?us-ascii?Q?3f0f4PTzqHN4S8/F3exh4xTRD3Wm7MMz63buxs+P82msAB+jAWE8nSCnlwlm?=
 =?us-ascii?Q?bVyd2ANLZqE9EiTrwHSjQminrBd75AuXfYAzn+IQoxNyZXLLNYXdUdztgWgV?=
 =?us-ascii?Q?37x3zb3zYvwuomEb/U4i/iWHffp49z2Buco2rLRsuY3pIPeKcyEm9nRUxKvO?=
 =?us-ascii?Q?2Mupu45IDOusRifAvnWs37X9st3OGlO3CvaU/YqoCwkfHRr/jh5mme3YNTyK?=
 =?us-ascii?Q?HshNi/piZ19pNRsgnj9mgEZsialQKaj9fSAY3ibprNjnewS23lGJgHbYj7e6?=
 =?us-ascii?Q?fmrFDELCKKxY0w/gRS3ZH7Ob7u0c016PPbogl+gkdq6LyGCpF/GR/QNNPDjO?=
 =?us-ascii?Q?JY3630QnJ8iZAfqlJGrsPoVh4+Cs3Kl60cotNh4P79R6Vj4EQgibu7lxtH1d?=
 =?us-ascii?Q?Y6cONGCTy16lpOCjAPcIhG94/6mYukJFnydLZ9W8R1j2NPefwPow3VHy2z60?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 275931d2-ec2a-4a9e-3819-08dc3d19425a
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2024 13:36:27.7861 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tC8S9BxHXTN9e+d8twbwAsWZt7W+OX0iL3JByFZUf2VeVnj+FXjbqsAeQu4/jWDjJ7Vncj7CwqRYzJtm4BooOw4DyQq7EehFObAis3YUDtk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4566
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

On Tue, Feb 27, 2024 at 11:02:04AM +0530, Suraj Kandpal wrote:
>Enable HDCP for Xe by defining functions which take care of
>interaction of HDCP as a client with the GSC CS interface.
>Add intel_hdcp_gsc_message to Makefile and add corresponding
>changes to xe_hdcp_gsc.c to make it build.
>
>--v2
>-add kfree at appropriate place [Daniele]
>-remove useless define [Daniele]
>-move host session logic to xe_gsc_submit.c [Daniele]
>-call xe_gsc_check_and_update_pending directly in an if condition
>[Daniele]
>-use xe_device instead of drm_i915_private [Daniele]
>
>--v3
>-use xe prefix for newly exposed function [Daniele]
>-remove client specific defines from intel_gsc_mtl_header [Daniele]
>-add missing kfree() [Daniele]
>-have NULL check for hdcp_message in finish function [Daniele]
>-dont have too many variable declarations in the same line [Daniele]
>
>--v4
>-don't point the hdcp_message structure in xe_device to anything
>until it properly gets initialized [Daniele]
>
>--v5
>-Squash commits for buildability
>
>Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
>---
> drivers/gpu/drm/xe/Makefile              |   1 +
> drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 198 ++++++++++++++++++++++-
> drivers/gpu/drm/xe/xe_gsc_submit.c       |  15 ++
> drivers/gpu/drm/xe/xe_gsc_submit.h       |   1 +
> 4 files changed, 212 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>index c531210695db..2b654c908ff3 100644
>--- a/drivers/gpu/drm/xe/Makefile
>+++ b/drivers/gpu/drm/xe/Makefile
>@@ -254,6 +254,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> 	i915-display/intel_global_state.o \
> 	i915-display/intel_gmbus.o \
> 	i915-display/intel_hdcp.o \
>+	i915-display/intel_hdcp_gsc_message.o \
> 	i915-display/intel_hdmi.o \
> 	i915-display/intel_hotplug.o \
> 	i915-display/intel_hotplug_irq.o \
>diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>index 0de06e0373ef..bb3bddcd5747 100644
>--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
>@@ -4,14 +4,31 @@
>  */
>
> #include <drm/drm_print.h>
>+#include <linux/delay.h>
>+#include <drm/i915_hdcp_interface.h>
>
>+#include "abi/gsc_command_header_abi.h"
> #include "intel_hdcp_gsc.h"
>+#include "intel_hdcp_gsc_message.h"
> #include "xe_device_types.h"
> #include "xe_device.h"
> #include "xe_gt.h"
> #include "xe_gsc_proxy.h"
> #include "xe_pm.h"
> #include "xe_uc_fw.h"
>+#include "xe_bo.h"
>+#include "xe_map.h"
>+#include "xe_gsc_submit.h"

don't append includes here, please follow the alphabetical order.

>+
>+#define HECI_MEADDRESS_HDCP 18
>+
>+struct intel_hdcp_gsc_message {
>+	struct xe_bo *hdcp_bo;
>+	u64 hdcp_cmd_in;
>+	u64 hdcp_cmd_out;
>+};
>+
>+#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>
> bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
> {
>@@ -45,19 +62,194 @@ bool intel_hdcp_gsc_check_status(struct xe_device *xe)
> 	return ret;
> }
>
>+/*This function helps allocate memory for the command that we will send to gsc cs */
>+static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
>+					     struct intel_hdcp_gsc_message *hdcp_message)
>+{
>+	struct xe_bo *bo = NULL;
>+	u64 cmd_in, cmd_out;
>+	int ret = 0;
>+
>+	/* allocate object of two page for HDCP command memory and store it */
>+	xe_device_mem_access_get(xe);
>+	bo = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, PAGE_SIZE * 2,
>+				  ttm_bo_type_kernel,
>+				  XE_BO_CREATE_SYSTEM_BIT |
>+				  XE_BO_CREATE_GGTT_BIT);
>+
>+	if (IS_ERR(bo)) {
>+		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming command!\n");
>+		ret = PTR_ERR(bo);
>+		goto out;
>+	}
>+
>+	cmd_in = xe_bo_ggtt_addr(bo);
>+	cmd_out = cmd_in + PAGE_SIZE;
>+	xe_map_memset(xe, &bo->vmap, 0, 0, bo->size);
>+
>+	hdcp_message->hdcp_bo = bo;
>+	hdcp_message->hdcp_cmd_in = cmd_in;
>+	hdcp_message->hdcp_cmd_out = cmd_out;
>+out:
>+	xe_device_mem_access_put(xe);
>+	return ret;
>+}
>+
>+static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe)
>+{
>+	struct intel_hdcp_gsc_message *hdcp_message;
>+	int ret;
>+
>+	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
>+
>+	if (!hdcp_message)
>+		return -ENOMEM;
>+
>+	/*
>+	 * NOTE: No need to lock the comp mutex here as it is already
>+	 * going to be taken before this function called
>+	 */
>+	ret = intel_hdcp_gsc_initialize_message(xe, hdcp_message);
>+	if (ret) {
>+		drm_err(&xe->drm, "Could not initialize hdcp_message\n");
>+		kfree(hdcp_message);
>+		return ret;
>+	}
>+
>+	xe->display.hdcp.hdcp_message = hdcp_message;
>+	return ret;
>+}
>+
>+static const struct i915_hdcp_ops gsc_hdcp_ops = {
>+	.initiate_hdcp2_session = intel_hdcp_gsc_initiate_session,
>+	.verify_receiver_cert_prepare_km =
>+				intel_hdcp_gsc_verify_receiver_cert_prepare_km,
>+	.verify_hprime = intel_hdcp_gsc_verify_hprime,
>+	.store_pairing_info = intel_hdcp_gsc_store_pairing_info,
>+	.initiate_locality_check = intel_hdcp_gsc_initiate_locality_check,
>+	.verify_lprime = intel_hdcp_gsc_verify_lprime,
>+	.get_session_key = intel_hdcp_gsc_get_session_key,
>+	.repeater_check_flow_prepare_ack =
>+				intel_hdcp_gsc_repeater_check_flow_prepare_ack,
>+	.verify_mprime = intel_hdcp_gsc_verify_mprime,
>+	.enable_hdcp_authentication = intel_hdcp_gsc_enable_authentication,
>+	.close_hdcp_session = intel_hdcp_gsc_close_session,
>+};
>+
> int intel_hdcp_gsc_init(struct xe_device *xe)
> {
>-	drm_dbg_kms(&xe->drm, "HDCP support not yet implemented\n");
>-	return -ENODEV;
>+	struct i915_hdcp_arbiter *data;
>+	int ret;
>+
>+	data = kzalloc(sizeof(*data), GFP_KERNEL);
>+	if (!data)
>+		return -ENOMEM;
>+
>+	mutex_lock(&xe->display.hdcp.hdcp_mutex);
>+	xe->display.hdcp.arbiter = data;
>+	xe->display.hdcp.arbiter->hdcp_dev = xe->drm.dev;
>+	xe->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
>+	ret = intel_hdcp_gsc_hdcp2_init(xe);
>+	if (ret)
>+		kfree(data);
>+
>+	mutex_unlock(&xe->display.hdcp.hdcp_mutex);
>+
>+	return ret;
> }
>
> void intel_hdcp_gsc_fini(struct xe_device *xe)
> {
>+	struct intel_hdcp_gsc_message *hdcp_message =
>+					xe->display.hdcp.hdcp_message;
>+
>+	if (!hdcp_message)
>+		return;
>+
>+	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
>+	kfree(hdcp_message);
>+}
>+
>+static int xe_gsc_send_sync(struct xe_device *xe,
>+			    struct intel_hdcp_gsc_message *hdcp_message,
>+			    u32 msg_size_in, u32 msg_size_out,
>+			    u32 addr_out_off)
>+{
>+	struct xe_gt *gt = hdcp_message->hdcp_bo->tile->media_gt;
>+	struct iosys_map *map = &hdcp_message->hdcp_bo->vmap;
>+	struct xe_gsc *gsc = &gt->uc.gsc;
>+	int ret;
>+
>+	ret = xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in, msg_size_in,
>+				       hdcp_message->hdcp_cmd_out, msg_size_out);
>+	if (ret) {
>+		drm_err(&xe->drm, "failed to send gsc HDCP msg (%d)\n", ret);
>+		return ret;
>+	}
>+
>+	if (xe_gsc_check_and_update_pending(xe, map, 0, map, addr_out_off))
>+		return -EAGAIN;
>+
>+	ret = xe_gsc_read_out_header(xe, map, addr_out_off,
>+				     sizeof(struct hdcp_cmd_header), NULL);
>+
>+	return ret;
> }
>
> ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
> 				size_t msg_in_len, u8 *msg_out,
> 				size_t msg_out_len)
> {
>-	return -ENODEV;
>+	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
>+	struct intel_hdcp_gsc_message *hdcp_message;
>+	u64 host_session_id;
>+	u32 msg_size_in, msg_size_out;
>+	u32 addr_out_off, addr_in_wr_off = 0;
>+	int ret, tries = 0;
>+
>+	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size) {
>+		ret = -ENOSPC;
>+		goto out;
>+	}
>+
>+	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
>+	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
>+	hdcp_message = xe->display.hdcp.hdcp_message;
>+	addr_out_off = PAGE_SIZE;
>+
>+	host_session_id = xe_gsc_create_host_session_id();
>+	xe_device_mem_access_get(xe);
>+	addr_in_wr_off = xe_gsc_emit_header(xe, &hdcp_message->hdcp_bo->vmap,
>+					    addr_in_wr_off, HECI_MEADDRESS_HDCP,
>+					    host_session_id, msg_in_len);
>+	xe_map_memcpy_to(xe, &hdcp_message->hdcp_bo->vmap, addr_in_wr_off,
>+			 msg_in, msg_in_len);
>+	/*
>+	 * Keep sending request in case the pending bit is set no need to add
>+	 * message handle as we are using same address hence loc. of header is
>+	 * same and it will contain the message handle. we will send the message
>+	 * 20 times each message 50 ms apart
>+	 */
>+	do {
>+		ret = xe_gsc_send_sync(xe, hdcp_message, msg_size_in, msg_size_out,
>+				       addr_out_off);
>+
>+		/* Only try again if gsc says so */
>+		if (ret != -EAGAIN)
>+			break;
>+
>+		msleep(50);
>+
>+	} while (++tries < 20);
>+
>+	if (ret)
>+		goto out;
>+
>+	xe_map_memcpy_from(xe, msg_out, &hdcp_message->hdcp_bo->vmap,
>+			   addr_out_off + HDCP_GSC_HEADER_SIZE,
>+			   msg_out_len);
>+
>+out:
>+	xe_device_mem_access_put(xe);
>+	return ret;
> }
>diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.c b/drivers/gpu/drm/xe/xe_gsc_submit.c
>index 348994b271be..9a18f5667db3 100644
>--- a/drivers/gpu/drm/xe/xe_gsc_submit.c
>+++ b/drivers/gpu/drm/xe/xe_gsc_submit.c
>@@ -40,6 +40,21 @@ gsc_to_gt(struct xe_gsc *gsc)
> 	return container_of(gsc, struct xe_gt, uc.gsc);
> }
>
>+/**
>+ * xe_gsc_get_host_session_id - Creates a random 64 bit host_session id with
>+ * bits 56-63 masked.
>+ *
>+ * Returns: random host_session_id which can be used to send messages to gsc cs
>+ */
>+u64 xe_gsc_create_host_session_id(void)
>+{
>+	u64 host_session_id;
>+
>+	get_random_bytes(&host_session_id, sizeof(u64));
>+	host_session_id &= ~HOST_SESSION_CLIENT_MASK;
>+	return host_session_id;
>+}
>+
> /**
>  * xe_gsc_emit_header - write the MTL GSC header in memory
>  * @xe: the Xe device
>diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.h b/drivers/gpu/drm/xe/xe_gsc_submit.h
>index 1939855031a6..1416b5745a4c 100644
>--- a/drivers/gpu/drm/xe/xe_gsc_submit.h
>+++ b/drivers/gpu/drm/xe/xe_gsc_submit.h
>@@ -28,4 +28,5 @@ int xe_gsc_read_out_header(struct xe_device *xe,
> int xe_gsc_pkt_submit_kernel(struct xe_gsc *gsc, u64 addr_in, u32 size_in,
> 			     u64 addr_out, u32 size_out);
>
>+u64 xe_gsc_create_host_session_id(void);
> #endif
>-- 
>2.43.2
>
