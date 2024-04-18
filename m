Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D86708AA551
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 00:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A496E10ED57;
	Thu, 18 Apr 2024 22:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aNnuIZ42";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F1EA10ED4D;
 Thu, 18 Apr 2024 22:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713478409; x=1745014409;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=nG8XAIDyAOqO0iqx9A3TGJN+4CYDlrLfvEHj6jcRyhQ=;
 b=aNnuIZ42vG04Y4mhLFU46dzSAVhMOe1D4rrItT5LP3JSte2VpD4eVXIs
 X7VZohKCX5BWUvAmdn8tvs8JshDhgkoTD+I7a036XLLsOpv6zaFrHsClE
 WWk6Rlqs/YYeZqorNC4/ddbLo8RrW5enuZU7sujOveQdyBX2OHhaK5VSN
 Eo8xu4J7CUJe/q5wzi7mPxORiqZHPNPgAxdXQpIE49tE8ZRkRmyTw1YXA
 w2tdwR/3VuEA8qQX6T121rC5v81YsFOr7rM05xaGe0aNCSodczhjA5hT3
 5lEz4PThuL7bhUP7Fmea37X7QnVaNdbGLf8x1uj+Dgwiv+PJFh5I5eM0s A==;
X-CSE-ConnectionGUID: 8bO2IgC7SLW1KF3eK+16HA==
X-CSE-MsgGUID: WEp02rSWTNqaH0bs4pGRTA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="31538760"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="31538760"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 15:13:29 -0700
X-CSE-ConnectionGUID: KVxbnOYJSoiAEHlHeAoM0w==
X-CSE-MsgGUID: AmzFmVTqTW+eF/w/m7caPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="27970282"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 15:13:29 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 15:13:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 15:13:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 15:13:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 15:13:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aqM3n+9zrsYCn4xhBT8646VwAJjXs5aAYK7SFdMK8ydtZ8W0/Dzdr7RCEDFzfywW/AsZtSnJwCp4HUFs7MK0V5OU71eKiWONvsGOKfgQpWGPzr2hieI6OJyonSjSTtLVPsZtHLthai9V1XeaB4WMc3BZ69BGCwiN9jWckTznfUg9w34gHv1SqEuuGIKEsTj5KoiBwHEtiY3RlAtUdeipH8rBQhVtZjP1wNUeSMVfcTBGD1nL1MVEfSDYovYQ34dAUsJ29/JKalyoYNEOuQtWaR/8ZoSzbeQ6QYOyjcop7+dS/EiS8lEFX1f0+8Mlx3VL022yTwNhT87savmTSWyOWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XbPtpMsy7m/qlSVwLIooEbuZl/vgcvyF5/jsRGMDleo=;
 b=VJhm2YbKtA36m0x9wdEj6DSjS3u/9P7rrFV+2RnY+sPk2Txoy5nGC+2kgdlGwvmx89jcWbRJ+0/GuTlj3+OlfDRBR1Rvw8S/yvvTf8qw3YUA5Sf0B+C0PPxtyF/rVKDb4EIq/XpzR3lRlZ/Y8Y3I5JPZ6BdGW5OgTROpaZ1h/jRQpm1lcACpthbFrwj48gohT5WNKsGwOammaVYtWlRBucRP73EJ3yMqKQcmidXP8GDe/oLZ3pymQRn2gbX9E5K7F5TGzGMvYXzoJC1khP+XU7RvMfj+bYPtAar0IXVkAZrukMcBovtwQR6LS8jIIgzg0tAb+o1Xvx0WfQqnAzsp4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6871.namprd11.prod.outlook.com (2603:10b6:806:2b1::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.37; Thu, 18 Apr
 2024 22:13:25 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7472.037; Thu, 18 Apr 2024
 22:13:25 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Imre Deak <imre.deak@intel.com>, Francois Dugast <francois.dugast@intel.com>, 
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915: Convert intel_runtime_pm_get_noresume towards raw
 wakeref
Date: Thu, 18 Apr 2024 18:13:20 -0400
Message-ID: <20240418221320.66644-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0196.namprd05.prod.outlook.com
 (2603:10b6:a03:330::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB6871:EE_
X-MS-Office365-Filtering-Correlation-Id: 144f5331-b0d2-4adb-4919-08dc5ff4c46c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MHN+xNjLjR6XyD7Em5W8b+0azcJh8KIA8HYL9P4u59yk2Bxd9ZkTRfPZOlqyJFUle/7NnYY+UL44z1rwTWrT8VbIo0a+9x1Io/mNUTPEwZlTiS/rxX2BO7Ac1TNkWRsP9Au9WlexbP8cBFDIr8prrPwa/o9E8wwPTvlLSDa+esjvUtJo0z+b2wbLwnWHEeNRjpnBL9avZBWdPkFyFT05ar0+wMotDy3kB60Fh/MIh9s3g8ivQ8D1k6fHKYsQBPkO0uOU7NVJebUu46IRN24/HpF2NiILcVjSO+5XbA3o2RcJheRjeN8TmnWgFmiUFHWPn44eKtmBnYoqugJXs3hcETb0F8G4wyUDR0xYHW8Af0gr4/qLeufI5Yy2/C1Rr1/AlGMsv3Zin4y/S1k9QvBd9le6ur86t4MUN3j+5q5WEOu7giv98NAL6F1+QC4kK9AcmfpHBcOWm231oXjqOtnoj79++jHuKAKIRMJbMx5zBDlF9uaVMqdv2XbFn+D+FLgi1qcDQhnqMFMS4ggPxYZML7U9mm4cA5qdpXZyEEiTPFCCG6vN+KR/ZnEBQrOwHf5L+4MD71gLz0Manocx7i7tT8fWep9R8K7COVjzezaFmiY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djFkbGhTUlVZY1RBZVJ3UWpIQ2lVM2VSYWJ4b1h2R2FHU1lFMEhMbkIwWnVZ?=
 =?utf-8?B?V2JuTUphaDN5b0VISURBUkhaQTNKYkRaaDJadTZaV2hZUkxZdzVoN0NJdERY?=
 =?utf-8?B?OG5CUUFwZnAzUEhqNGZ4ZGs3NGpDZlEzOHBzaVZMa2d4b2tWK1oyVnZReWJk?=
 =?utf-8?B?Wk5TWTM5ZE9TZUxraHNUblg4MWxCaXZvYVAyWFZBWHdYdEhjSlQzOEtJL0JF?=
 =?utf-8?B?MnpaZSs1dDBRT1hSbmEwUzVHaTlIb3krZ3lpK2RzcktIZStiY3dSODczdXN5?=
 =?utf-8?B?U3B6d3ZjSnFNWVYwbGNCd0k2cDVqbjlWUmdrZWlDTUFVanZ3Wmp4UTBtek1P?=
 =?utf-8?B?MVNkRmtTaE5hd2ZsbVg4UHh3a3FRMDVKR0I0ZHdLUFlOT05LRmxPbnVXVHVz?=
 =?utf-8?B?YlpXa2hyazJHMUJlcVlEeHFFeDIxbGhrRk50ZXE1NUx1WGtEblBBdmlINVJV?=
 =?utf-8?B?UU4ybys5cjE0a2FBdkFsM09aY01rajk4aEpUUG1yeUxBNTlkMEw4bi9SNUFn?=
 =?utf-8?B?YnMvTjJIb1lxbWo1Z0hHUG5taUxtL3pXbkJhWmJlVWFsbnRudUg1ekFrRUZJ?=
 =?utf-8?B?aUJ4WnpzOFdTRTRkVkF0NUNlK3k0M0VYZnNMQ2pNdmhzZGJyT3Q5alQxUXZ5?=
 =?utf-8?B?M3loK05OY2IrcEdxRG5WUG9ROGVRVFNGbU0zRXRueVlReXJleE1EWTIrR2FM?=
 =?utf-8?B?L0QyalRsKzEydmJIbXJjdjBod1QrOStPMXh2RHd1MXN2Y3BLVEZtcjBhSzl5?=
 =?utf-8?B?U3VsRkNveXNpSUxTTS9ObDJHKzRwUDVUNWpzbnFHMUlmUHppSGtSOXdXQlEr?=
 =?utf-8?B?NzhhN0pLV0JDWG9yNGlMMkRQWFYrUHQ5Z1ZZdXYrKzBlOEM5RmlaRTlrOWZH?=
 =?utf-8?B?VzBBck5lSTdWSGpNRnk4S2FIQ3FjSmdpYk12OXNjTzJUbVFwblpLaGxiQmpQ?=
 =?utf-8?B?S3RndGJkOUptRlh1aEtUMHV1K3MvOTlBVVljcHdDOFdwS2JBZS82dHhUL2dm?=
 =?utf-8?B?a0xFS2R6OGMzc1JQMFBxL0lVbW5lWUdST1N5aGZ4VnYwQXZFOVQ3QmNWbUd0?=
 =?utf-8?B?OXg2aHY5L3BKUWFHYmhGYnNrcDlJQ016ZnMzVlFrYmEzcFpjeXl1VmlnSndC?=
 =?utf-8?B?OEpTVXJYemhtVHc1TlpTWUlXMElzV3RPQ2RhRitsb3lqYVpYZEFyTytmVHUy?=
 =?utf-8?B?Q2QzdUJiSzlMcXFiaThxZGxFQWZOWk50YW9mTXV2RUI4a2lRZzdyQkVoME9q?=
 =?utf-8?B?UEhQT3dKM3YweFI3aUZhbDRZaEhQSzVvZlF4bmR6NEN6WWgzeWFVL1g5Z0pY?=
 =?utf-8?B?UVJScVJPbGJiZ3pZWXVhRGt5TkcvWlhPYUNLL0hwZTlsWStLbTFUM3pTUWlS?=
 =?utf-8?B?Q2NXeC9KTXJleFM2N1RITUZmWlpWWFA1dW9ETVhyeE55WkluWXhYNjY1b3dz?=
 =?utf-8?B?cUJwam9rTFBBSFhYM0FWQ0c4RHpNM3d6WkJzTVh3ZHpmc0h5OUdJUFVPQXln?=
 =?utf-8?B?cGxwZVpjV0gxdDJTdTh3N0laZ1JaWXNoYTViWktXeGhmSHlWMmMwS2ZkR2o5?=
 =?utf-8?B?MFM1K29qQXRCY1ViNVo3MGxrOVRKbVFzbnNObVdSNk9PbnZyYml6c1N6RkM5?=
 =?utf-8?B?US8vb2UyMmN2dTNRZVFTQ2pNei8wSlBFOFkyRGNCSmd2VlduRVhxQzcrbTZw?=
 =?utf-8?B?RDBHNG1idFZGZkk1MFBSdEw2eTBnWE95SWRlcGQzVzAwc3pWa1VTWlU4U29M?=
 =?utf-8?B?Vk15MGxKN2tTL2pIRXdEWXZyMUsxYWs2VHUwaFUwQWJSY29iU1JyZU9zcGRr?=
 =?utf-8?B?d25mVUp6Z1daUmhLYW9GWWtxakw2QnZHRHg5elRXK2JrTGRpamxSM25pUUZK?=
 =?utf-8?B?eTJtaDlFYlN4bkF4UmZyUHZ3N0x4akY4d1Y5akF5clp1Zkh2eDBsQUxpb0NM?=
 =?utf-8?B?Q2ZISGtxcVNnODJweWNka1QxYWxIWHFWcnhBTzJQZm0wM1FwQnlmNXk1Q1hE?=
 =?utf-8?B?cDZQRjBnUXZXR3Q1VVZkNGZNUjVaZzNMbFREY2JuNkwrMTRRemRZWDNMU3ZW?=
 =?utf-8?B?aGY1RG1ablhkQ2pmUnMzRC9MZEY1VUFNZDdXeHNFMFRZclZNRjhJb3pKaDJJ?=
 =?utf-8?Q?ysICc3kISvxXs2aaACak1GPE5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 144f5331-b0d2-4adb-4919-08dc5ff4c46c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 22:13:25.4631 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QSyXbKnDcH5iLeq2krt9KjpR9nmaj0UgUXh+MXglu7A5uZfmUhLsGyaPhBzMU84kfSWxFmevdypVR2tT1LhowQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6871
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

In the past, the noresume function was used by the GEM code to ensure
wakelocks were held and bump its usage. This is no longer the case
and this function was totally unused until it started to be used again
by display with commit 77e619a82fc3 ("drm/i915/display: convert inner
wakeref get towards get_if_in_use")

However, on the display code, most of the callers are using the
raw wakeref, rather then the wakelock version. What caused a
major regression caught by CI.

Another option to this patch is to go with the original plan and
use the get_if_in_use variant in the display code, what is enough
to fulfil our needs. Then, an extra patch to delete the unused
_noresume variant.

Cc: Imre Deak <imre.deak@intel.com>
Cc: Francois Dugast <francois.dugast@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: 77e619a82fc3 ("drm/i915/display: convert inner wakeref get towards get_if_in_use")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10875
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c    |  6 ------
 drivers/gpu/drm/i915/intel_runtime_pm.c           | 15 +++++----------
 2 files changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 048943d0a881..03dc7edcc443 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -640,12 +640,6 @@ release_async_put_domains(struct i915_power_domains *power_domains,
 	enum intel_display_power_domain domain;
 	intel_wakeref_t wakeref;
 
-	/*
-	 * The caller must hold already raw wakeref, upgrade that to a proper
-	 * wakeref to make the state checker happy about the HW access during
-	 * power well disabling.
-	 */
-	assert_rpm_raw_wakeref_held(rpm);
 	wakeref = intel_runtime_pm_get_noresume(rpm);
 
 	for_each_power_domain(domain, mask) {
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index d4e844128826..e27b2ab82da0 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -272,15 +272,11 @@ intel_wakeref_t intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm)
  * intel_runtime_pm_get_noresume - grab a runtime pm reference
  * @rpm: the intel_runtime_pm structure
  *
- * This function grabs a device-level runtime pm reference (mostly used for GEM
- * code to ensure the GTT or GT is on).
+ * This function grabs a runtime pm reference.
  *
- * It will _not_ power up the device but instead only check that it's powered
- * on.  Therefore it is only valid to call this functions from contexts where
- * the device is known to be powered up and where trying to power it up would
- * result in hilarity and deadlocks. That pretty much means only the system
- * suspend/resume code where this is used to grab runtime pm references for
- * delayed setup down in work items.
+ * It will _not_ resume the device but instead only get an extra wakeref.
+ * Therefore it is only valid to call this functions from contexts where
+ * the device is known to be active and with another wakeref previously hold.
  *
  * Any runtime pm reference obtained by this function must have a symmetric
  * call to intel_runtime_pm_put() to release the reference again.
@@ -289,10 +285,9 @@ intel_wakeref_t intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm)
  */
 intel_wakeref_t intel_runtime_pm_get_noresume(struct intel_runtime_pm *rpm)
 {
-	assert_rpm_wakelock_held(rpm);
 	pm_runtime_get_noresume(rpm->kdev);
 
-	intel_runtime_pm_acquire(rpm, true);
+	intel_runtime_pm_acquire(rpm, false);
 
 	return track_intel_runtime_pm_wakeref(rpm);
 }
-- 
2.44.0

