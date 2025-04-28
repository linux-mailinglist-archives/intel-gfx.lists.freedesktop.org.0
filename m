Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FC3A9F2A7
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C786810E1BE;
	Mon, 28 Apr 2025 13:47:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VcTnqTrA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63A9E10E511;
 Mon, 28 Apr 2025 13:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745848050; x=1777384050;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=VX56g1aiIUTefHiU0pfSpaM/0M3x620CRPbMg7lxkIc=;
 b=VcTnqTrAx4oMb1705x9IYrAS2jg9Deo4kkkhwdRPOUrmKG6YZ+0PH0rA
 vF8G0daPW4pI/z4HKTGKf7a45hab3wT+pdToFc2UW3543LE/9f+kDfyGL
 QbbG82YvS+/RjQLZTP06ykiDz+9BYFfA7SWL1I98IoBD44Dh3tTm1O7Vv
 pvqCSTODixawkPRsiATaV4KaxeWyEz8bgM4mwuM3K1PpXqan5ffi6bu0R
 3ex0n+qC4DK8D5d7/1LlUbStzp1dGcL3AI8Vm1M6zEQ4+F2/uuZ4wUn8U
 ADuMXYY/QF4wh5oSQbBUP53QYPMvr7cVgqUhVuOzaqf+hVfO1tOyeF2af g==;
X-CSE-ConnectionGUID: PjjxxwohSC2FIrnU5DlaXg==
X-CSE-MsgGUID: jGOHMikwSdqL0ZEuqdmaPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="72816679"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="72816679"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:47:29 -0700
X-CSE-ConnectionGUID: obbonppgQ2Wi2v1phydSRA==
X-CSE-MsgGUID: iF4KsizKStCcfjtgzcf5ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="134496685"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:47:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:47:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:47:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:47:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F75hielFgD90IX0NOD3TafP2XLdUUpq6OxR8PXvtw6pl6BBM0XpcH6fR+y+uSckZwwBVznXFLGkzTIvWzw//yxbgc/j/p1FTwUQ+KO+qea46+oim6J12FQ6rdwCsKwQM/Q9uRjAjWItf8XGmYKSWprIn3ocmXqW+DR1XIKONlukO0mxvmRBTOnZ0kbPV5vxgtHVogVrFgp/w4L62V/I4g9rUPAnZItFcw9oxqdEvt5HeM67WaU1aqvj4rSGfOQqjkrkQwVbJJUskcFYZLMz19xDkUn+tySMlNRoXnWKTg/toCtAffmbRMxK3cbKhp3WVOJGEzMWdepcKFFgSuuAI2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Meb1+lnY0Z9XN0lk6+qFjLzL+IqVCsfQrNzoQi+F4gU=;
 b=bPAPc+3KyjVlAKPA7O2ZzW25jAdrprMLUF9OlqJAZhALgaNxRHzXQ0JuVxhELu0lRxBDtE5Bq0/7jIzWxWFgmpr0/+Xb8+fszXTyDUkIg+23Zh5BJ79Oc3tecg7YF6nVjft4U6snlEVT3IKhyVoXifh7tbr6IYQ9TV7aaSANg4XA1/UBk2kwAUHxdXIklwTgfVdVzFEx0+Q3EpIWXpB9SdIgHQ44ysjNbDkOK2ZN1UElN244h95hUWCD9Cl7O8+9/e+3DZUtaVnPRxcOfMkCrW6eQC35zEsLJ7yqbq1yhVUDqzEUYswHMbbsfE+VOcsGYRSzSJ7GNZjgc62eQKdAlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:47:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:47:11 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/2] drm/i915/dp: Use an intel_connector pointer everywhere
Date: Mon, 28 Apr 2025 16:47:15 +0300
Message-ID: <20250428134716.3396802-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428134716.3396802-1-imre.deak@intel.com>
References: <20250428134716.3396802-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU7P195CA0027.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:10:54d::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: f0e0dc0f-aa0f-45e9-b97d-08dd865b2cf0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AeHt9MnikynNtvlZnYZkRA9t8W5BNhUhLoy6oNVVKxyDAtrAjx7pTYLBhegc?=
 =?us-ascii?Q?3mY2EGQ6I25yxold2RBJzAvu43kr8BO9VzUbe7uGrbBOTwDZpNV8YLGYftvd?=
 =?us-ascii?Q?swGK3js3ZO7cFdK9tThfWCsOqr/RPuldo5fHm6tNLQpt+NWJ3D/Sndkz5uzh?=
 =?us-ascii?Q?/RV0Hpzdwnbl4B9K6kpGu75qD6aLA6eAtRVvFbgIIJW6z1oTCnL3JBUBD17B?=
 =?us-ascii?Q?TDCBHbABewnJukZ380lUHXTLeWc32obbAJjCVXLFeBtEe6UESguqKEZHNTOq?=
 =?us-ascii?Q?Fh0DmtzrTdIJ+3Vm3HJEMrKEEI7hmTBdxGS68uIswoL8hEcqNHPxh2Ajdcsi?=
 =?us-ascii?Q?KnBlfeor21PJM3a4MQWOjr5EV+0r2GEuMmJ+euTxx3S/6RRcfemfkZ+vbflX?=
 =?us-ascii?Q?QcPWDW2dw6YXGkw9Hgyl6eYQ6XiA9wQsxIhC3/90wM5P7NzlfX01usInIUTL?=
 =?us-ascii?Q?nJ8eJ+0iN4YGriKiBoAGn3AOQhPwG1F/JExfM3AJk71kk+tlMCry8CqEuy/F?=
 =?us-ascii?Q?fpsp2qrN5wcVqPNOsionjAfHPCFOnuxtuxZmbHtjRnKm3jMHlFJWRGe/cP8C?=
 =?us-ascii?Q?sk8OvfRvekGQd8hUow6RSJ4vS2vadg91zuuiY6rIzr22brsTjZXxZH5xhIWV?=
 =?us-ascii?Q?LSopYUkJnVV0v+aEefPQJAuBy0bMs63Xse6xniWMbz0Xfvw0Q034nZRXBvPd?=
 =?us-ascii?Q?+RHsis7e9ghpQebUqPvi3mJ4S9vDsLpioJEIicTD6qmmLRURDLUMWMiSORqb?=
 =?us-ascii?Q?nWT+pqbNBFzIQk9KJiG2MR1eoX/hjUWbxxwaqUzcXTaw8//ZMbETz+5H3gGH?=
 =?us-ascii?Q?Sng/wb1eM0PX/kBDLxif8BECkqSC8UTssQhOVB7rijGQUYzCYGAZkptxlF7T?=
 =?us-ascii?Q?+1m84eEFfWvN2TiCfYEvZb9RAJcbgm5eqOFCMnO+w7hkc+8eS+xBUlzxhaT6?=
 =?us-ascii?Q?ITbwkbAxjE6/w8hsIxjzM+TJmwlXZB356SxnjqivQR0tmVdxWeTMN1eojBX6?=
 =?us-ascii?Q?In9S9Q2zb7Ix1OdddelhzpoYd1CUdHFkXnp0wwFjgE6PUXfolh/TexAc0jRs?=
 =?us-ascii?Q?0rJV4ELXXs6JVkscTvKWCy4jJgM9D/kZY6hH6ULt4D8ym/fL9AbRM83hn/NF?=
 =?us-ascii?Q?KzZyogHvcyz+hPW5Dj+S/zbvtBXrItEfK15coiWApBRNsGX0AxOrsPyq8RFJ?=
 =?us-ascii?Q?t75LSNnutALJDd/VkKOwNJWkCaghyMFhmZ+ZKT0NZNWid6y8c8neMgJqyPLW?=
 =?us-ascii?Q?s5NoYGTglL1w9X8fjs5/vMZvAWmSKpsYTL2C+gd/iWPc7IbkAerXjEkbPOdI?=
 =?us-ascii?Q?rppGZESIaECyYjVRitwOeAvwvRiVsiOL9wGI9vQxgpxU5lFYRenrUAkLHr24?=
 =?us-ascii?Q?R58Q0Wveqt9bXlueN2M22pz0dzwb+BXdHhMt2ZiED2rw8h70bQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A1mYGjrYlFfT2HbrKPlAxyxNDCM+zZbnrojVhfgHOE1E46fhIo/Y4wGBnkob?=
 =?us-ascii?Q?4d0gB5HM2rpvQYdjnLXRs5v55NP30iKIwUQLAmeB/k2SqSW0rYgJpO/jlP+p?=
 =?us-ascii?Q?G0/ymW67BTkGg8k0Frh1yttZwBRciBgzVzrgHoNpAyRaNB+Dk/XkcJ1GeG//?=
 =?us-ascii?Q?SRFG2uK2ZDLkIt+r454QK1Xvxcj7V3/sQR77h9HScKSdfMUWAqLZd54yQdFP?=
 =?us-ascii?Q?cc9if7zMd8na5pA5iQiDqXMSqNlzZjx09novXyv6pVMffxyLTvO44qvx/zuI?=
 =?us-ascii?Q?nDlw1K8K2xdfTnWapoVXpuyOT9Uo7rVYcI4k8ZOCTowT3CgPoSIjbxVkBH9/?=
 =?us-ascii?Q?ZOBRaJhb8+/pfhPiKmResvQHvxItApl/D+FYBTSCM1k+i7gXmIsgJeCo5BtZ?=
 =?us-ascii?Q?0lFsp2D/3Vi1BRU+R8RMYmlKibSgmx3TyO8RE5x8lOt26bah1drd7fhxClzJ?=
 =?us-ascii?Q?6DTWbPBZU2iDws7rhAlNKdEMJs6fBMjlsXh/QIx3WVaHtIQYukz4fELKX3vZ?=
 =?us-ascii?Q?E3At6IMRrEMjBurxIa4vCT4jdGCDZQ+9wgyNtvc2u7QEQ3579WUsJL1SyrRE?=
 =?us-ascii?Q?sOXopyxmaSgA+0xS7Ywot7roUl2viWJCYzQ6x+IaYSSXg4pDNRvREt2Qnx8Q?=
 =?us-ascii?Q?OmuA0WxEjmt4DwbzzIfUr4rCn1+D3diWgoJ2SXSMkCe9H83dm3Gr4AC16aBK?=
 =?us-ascii?Q?3anMMqyVEdn/ZvAbq5lnYS8PbFsGClDDiAvPPh9F2f++JlDL29KBJy2RHCya?=
 =?us-ascii?Q?fpLmeKASaLLZdjqm5odUvpiLGXbz+rbkx6mwGhnICA09EHChc3iY1LVfJB6B?=
 =?us-ascii?Q?St/1BITFDVCCYjPIW7Z24sjOCbpk1TJWPjopHDE8CJYbgfm/sZcuXy7Ri/j4?=
 =?us-ascii?Q?98BcbkgeHFGEXjzUa1UiehpNZ76dJic5t8Kwiq/7z0YaExjbwTZMC2jLCJBv?=
 =?us-ascii?Q?yCQjGSDQmNkcEyulSvcfo4JgnDXvA/lDZN7DAcxAw0EBwIbUK73FH++gGL8c?=
 =?us-ascii?Q?LY6hQ3tA74ufl7952+VkgIO4ZvlNN/qCgsPoWkS17/APDCYQmuWMSKW8Q3aj?=
 =?us-ascii?Q?Ag3MTzILcuRh7P0td3t27aazaF4uScSYJRCPjT6ARvLJIea8dQ8yaKJa8bSA?=
 =?us-ascii?Q?AOcrVNNWoVZDlkztkk5cJyTjpebu9eg9cvAiWJJX+ptwqtQ+ytk8vfsHxvoK?=
 =?us-ascii?Q?rL2HkGolTyTIWZOCtt90u+hxTESTZXD7OGtLMlJk+1Q3OuhVsP5slkldMU4O?=
 =?us-ascii?Q?8iZgCsZ9567IkAT/W237QVrHNCDf+aVnjpH96IDqdSmP9wX5tIUNZCOwf0LK?=
 =?us-ascii?Q?f2fBKdvUKsuLcopT84AnleDrAuornkszRLKRKQ1VDNYvHJ9cZ1r0yJ7MNaUb?=
 =?us-ascii?Q?duSXMjIQGs4FUy54CyHXIX+gCfhDerGsXRyo+F7F8zMYcikc9POy9cc4ORVt?=
 =?us-ascii?Q?Je05fx8jTk5GCeZrfmCHvTPbp5acwrxSWC/v9ZjTHmRQeK/0sSulcqg/AumI?=
 =?us-ascii?Q?RZ0BqBd2PTnehoUVK7GjfFUO0T5htdvUtK+k9uTnHwX7YwfHmRFtR7InXl2t?=
 =?us-ascii?Q?D0j6xRGb9MKSVVBAPAi3Uk+NaZ/SldHZY1x4JUDe?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f0e0dc0f-aa0f-45e9-b97d-08dd865b2cf0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:47:11.2933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AUSwAcLHrVTRlx+1F8X9FXL8bJNPzYioFFZvayBfBQ7TtqfjAY962zPlN+wUot2dohiCbZRCURPmom7ybb2bsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
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

Following the convention, convert intel_dp.c to use an intel_connector
pointer everywhere, calling this pointer connector. If the intel
connector must be casted from a drm_connector, call this pointer
_connector and use this pointer only for the casting.

v2: Use for_each_intel_connector_iter(). (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 105 +++++++++++++-----------
 1 file changed, 56 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 607aea1bf6fa2..213bb92f3fff6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5832,20 +5832,21 @@ intel_dp_detect(struct drm_connector *_connector,
 }
 
 static void
-intel_dp_force(struct drm_connector *connector)
+intel_dp_force(struct drm_connector *_connector)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
 	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
-		    connector->base.id, connector->name);
+		    connector->base.base.id, connector->base.name);
 
 	if (!intel_display_driver_check_access(display))
 		return;
 
 	intel_dp_unset_edid(intel_dp);
 
-	if (connector->status != connector_status_connected)
+	if (connector->base.status != connector_status_connected)
 		return;
 
 	intel_dp_set_edid(intel_dp);
@@ -5884,24 +5885,25 @@ static int intel_dp_get_modes(struct drm_connector *_connector)
 }
 
 static int
-intel_dp_connector_register(struct drm_connector *connector)
+intel_dp_connector_register(struct drm_connector *_connector)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int ret;
 
-	ret = intel_connector_register(connector);
+	ret = intel_connector_register(&connector->base);
 	if (ret)
 		return ret;
 
 	drm_dbg_kms(display->drm, "registering %s bus for %s\n",
-		    intel_dp->aux.name, connector->kdev->kobj.name);
+		    intel_dp->aux.name, connector->base.kdev->kobj.name);
 
-	intel_dp->aux.dev = connector->kdev;
+	intel_dp->aux.dev = connector->base.kdev;
 	ret = drm_dp_aux_register(&intel_dp->aux);
 	if (!ret)
-		drm_dp_cec_register_connector(&intel_dp->aux, connector);
+		drm_dp_cec_register_connector(&intel_dp->aux, &connector->base);
 
 	if (!intel_bios_encoder_is_lspcon(dig_port->base.devdata))
 		return ret;
@@ -5912,20 +5914,21 @@ intel_dp_connector_register(struct drm_connector *connector)
 	 */
 	if (intel_lspcon_init(dig_port)) {
 		if (intel_lspcon_detect_hdr_capability(dig_port))
-			drm_connector_attach_hdr_output_metadata_property(connector);
+			drm_connector_attach_hdr_output_metadata_property(&connector->base);
 	}
 
 	return ret;
 }
 
 static void
-intel_dp_connector_unregister(struct drm_connector *connector)
+intel_dp_connector_unregister(struct drm_connector *_connector)
 {
-	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
 	drm_dp_cec_unregister_connector(&intel_dp->aux);
 	drm_dp_aux_unregister(&intel_dp->aux);
-	intel_connector_unregister(connector);
+	intel_connector_unregister(&connector->base);
 }
 
 void intel_dp_connector_sync_state(struct intel_connector *connector,
@@ -5986,21 +5989,21 @@ static int intel_modeset_tile_group(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(state);
 	struct drm_connector_list_iter conn_iter;
-	struct drm_connector *connector;
+	struct intel_connector *connector;
 	int ret = 0;
 
 	drm_connector_list_iter_begin(display->drm, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
+	for_each_intel_connector_iter(connector, &conn_iter) {
 		struct drm_connector_state *conn_state;
 		struct intel_crtc_state *crtc_state;
 		struct intel_crtc *crtc;
 
-		if (!connector->has_tile ||
-		    connector->tile_group->id != tile_group_id)
+		if (!connector->base.has_tile ||
+		    connector->base.tile_group->id != tile_group_id)
 			continue;
 
 		conn_state = drm_atomic_get_connector_state(&state->base,
-							    connector);
+							    &connector->base);
 		if (IS_ERR(conn_state)) {
 			ret = PTR_ERR(conn_state);
 			break;
@@ -6064,10 +6067,11 @@ static int intel_modeset_affected_transcoders(struct intel_atomic_state *state,
 }
 
 static int intel_modeset_synced_crtcs(struct intel_atomic_state *state,
-				      struct drm_connector *connector)
+				      struct drm_connector *_connector)
 {
+	struct intel_connector *connector = to_intel_connector(_connector);
 	const struct drm_connector_state *old_conn_state =
-		drm_atomic_get_old_connector_state(&state->base, connector);
+		drm_atomic_get_old_connector_state(&state->base, &connector->base);
 	const struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc *crtc;
 	u8 transcoders;
@@ -6089,17 +6093,18 @@ static int intel_modeset_synced_crtcs(struct intel_atomic_state *state,
 						  transcoders);
 }
 
-static int intel_dp_connector_atomic_check(struct drm_connector *conn,
+static int intel_dp_connector_atomic_check(struct drm_connector *_connector,
 					   struct drm_atomic_state *_state)
 {
-	struct intel_display *display = to_intel_display(conn->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
-	struct drm_connector_state *conn_state = drm_atomic_get_new_connector_state(_state, conn);
-	struct intel_connector *intel_conn = to_intel_connector(conn);
-	struct intel_dp *intel_dp = enc_to_intel_dp(intel_conn->encoder);
+	struct drm_connector_state *conn_state =
+		drm_atomic_get_new_connector_state(_state, &connector->base);
+	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	int ret;
 
-	ret = intel_digital_connector_atomic_check(conn, &state->base);
+	ret = intel_digital_connector_atomic_check(&connector->base, &state->base);
 	if (ret)
 		return ret;
 
@@ -6109,12 +6114,12 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
 			return ret;
 	}
 
-	if (!intel_connector_needs_modeset(state, conn))
+	if (!intel_connector_needs_modeset(state, &connector->base))
 		return 0;
 
 	ret = intel_dp_tunnel_atomic_check_state(state,
 						 intel_dp,
-						 intel_conn);
+						 connector);
 	if (ret)
 		return ret;
 
@@ -6125,21 +6130,22 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
 	if (DISPLAY_VER(display) < 9)
 		return 0;
 
-	if (conn->has_tile) {
-		ret = intel_modeset_tile_group(state, conn->tile_group->id);
+	if (connector->base.has_tile) {
+		ret = intel_modeset_tile_group(state, connector->base.tile_group->id);
 		if (ret)
 			return ret;
 	}
 
-	return intel_modeset_synced_crtcs(state, conn);
+	return intel_modeset_synced_crtcs(state, &connector->base);
 }
 
-static void intel_dp_oob_hotplug_event(struct drm_connector *connector,
+static void intel_dp_oob_hotplug_event(struct drm_connector *_connector,
 				       enum drm_connector_status hpd_state)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool hpd_high = hpd_state == connector_status_connected;
 	unsigned int hpd_pin = encoder->hpd_pin;
 	bool need_work = false;
@@ -6285,36 +6291,37 @@ intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder)
 }
 
 static void
-intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connector)
+intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *_connector)
 {
+	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 
 	if (!intel_dp_is_edp(intel_dp))
-		drm_connector_attach_dp_subconnector_property(connector);
+		drm_connector_attach_dp_subconnector_property(&connector->base);
 
 	if (!display->platform.g4x && port != PORT_A)
-		intel_attach_force_audio_property(connector);
+		intel_attach_force_audio_property(&connector->base);
 
-	intel_attach_broadcast_rgb_property(connector);
+	intel_attach_broadcast_rgb_property(&connector->base);
 	if (HAS_GMCH(display))
-		drm_connector_attach_max_bpc_property(connector, 6, 10);
+		drm_connector_attach_max_bpc_property(&connector->base, 6, 10);
 	else if (DISPLAY_VER(display) >= 5)
-		drm_connector_attach_max_bpc_property(connector, 6, 12);
+		drm_connector_attach_max_bpc_property(&connector->base, 6, 12);
 
 	/* Register HDMI colorspace for case of lspcon */
 	if (intel_bios_encoder_is_lspcon(dp_to_dig_port(intel_dp)->base.devdata)) {
-		drm_connector_attach_content_type_property(connector);
-		intel_attach_hdmi_colorspace_property(connector);
+		drm_connector_attach_content_type_property(&connector->base);
+		intel_attach_hdmi_colorspace_property(&connector->base);
 	} else {
-		intel_attach_dp_colorspace_property(connector);
+		intel_attach_dp_colorspace_property(&connector->base);
 	}
 
 	if (intel_dp_has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
-		drm_connector_attach_hdr_output_metadata_property(connector);
+		drm_connector_attach_hdr_output_metadata_property(&connector->base);
 
 	if (HAS_VRR(display))
-		drm_connector_attach_vrr_capable_property(connector);
+		drm_connector_attach_vrr_capable_property(&connector->base);
 }
 
 static void
-- 
2.44.2

