Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3560B8AA57A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 00:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8669411A04E;
	Thu, 18 Apr 2024 22:38:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EvrP0U0e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E8D10EEF0;
 Thu, 18 Apr 2024 22:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713479886; x=1745015886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=CxvJd2pwpEBQKdHDfUFg7JlE8lBAISqpM4cKv+Ova0E=;
 b=EvrP0U0eVSAWuI9RuZveRkHcLBE70YZDquWygPhKXUX6fN59ZtwnUUg2
 iHVxN6LQgLoZqHFnxxbit0buostKzoye7BBot9hzW67ZoLFBkLpKLMrms
 ztFWe6PIhBdU+Xf89UdEaKOSA740E3stRb0ZU0mhla+zXTuZDWA8nSuri
 ilP81mhZkNIGQYQYODBGMyX1e4XL9uVNhYRsvo7A6bJHvhjlavEbVGy2z
 sS1vHDoNGYr/x8cPpwxM0JcCoqds10a7qT3UbJl+7Ury7CoiuzH1qHhdy
 qe8CRgmyzAv3Tm2TqdjcgWAvqPszy8T/SGgxbZWaKDx1wcSS8wZqU4qXN Q==;
X-CSE-ConnectionGUID: 4YePmQ+fSESi/JrGmFfDdw==
X-CSE-MsgGUID: R6vESQTkRWu+uCMlVHfv3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8920509"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8920509"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 15:38:05 -0700
X-CSE-ConnectionGUID: nWPcyUiSSVSQH5UrPkQVjQ==
X-CSE-MsgGUID: bXbr/zlXRgWpNBuVDbCNHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="27767539"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 15:38:04 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 15:38:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 15:38:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 15:38:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 15:38:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BlE22qU1QTqO66dIQvF3CDy8WrOai3dK9+BKTQevTWEr8YQuZM8EM1ugJFhlJix0pmRg6OfLDiQ2fQKdHHP3Zv9WifWZro1PCTCFOb3tYp0vjwJnS1VS8+75zOFPaty2ZozloIXKjPFrG3O+Mf+VkT/4STS/7E9wRAQjgR79ILlFFuNbv1UYAlzngUdqWRqUX+PigGYkesA7xDPNbzUOnogytXQzyVNQDPK9mTUTOOB80pMavwc9LoNT4pQju3TlKWRWsr0rira+6HtofeSrG6tbTiGc+sR8WUZ4xVPh2uZgUI0CjcjyuVjck6OkMNk1kuSirOmqtfkF01ElDAkorQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oMoKgZZSn5NHTiEpyFY291M6VL1pudnJ+IBq0HRN1Og=;
 b=OCDiWy1SXjKc4AlhiO0KsxIa9aQNeSWvICLtOmRmAuN8dmwaUPdHXnhWhKxgzuiJQN8zYqgRiwd2WOVTnzNszjB9wtfZ1G0cJBOceMRmN9bGOsxDyeLI8tu+0LpsQppC2oVAHtAwdiQmR8ctUITYGm0cKQ8pXPG/c4KUejjMOGavGO3hEr0X4cKxQCB6ZmelAfVJMNxZEG3trBRNCaWaFmm0gRtMqKH9O+j7DwKrh95du89LRkXA8T1EOPCWs0RRyKO7fd3MX8n/b6se8LgXtZ5YLtxJKeQB0CN0N0BbBMN7vTc8jCjDAzV4KSvIEHJS06EaVXHLqAVhNP2Ez4DYcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Thu, 18 Apr
 2024 22:38:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7472.037; Thu, 18 Apr 2024
 22:38:00 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Imre Deak <imre.deak@intel.com>, Francois Dugast <francois.dugast@intel.com>, 
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915: Convert intel_runtime_pm_get_noresume towards raw
 wakeref
Date: Thu, 18 Apr 2024 18:37:56 -0400
Message-ID: <20240418223756.68427-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <ZiGe/Tqo94YbxOnm@ideak-desk.fi.intel.com>
References: <ZiGe/Tqo94YbxOnm@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR11CA0088.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: a904f074-cddb-4b46-9202-08dc5ff833b1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Os5LtiOe4Yy96XmSil7b4rYJLokV906BukQWx+/hlmjDFSSgG+cfjidlJwktvIWNfz2kKyEJFAndc24MV0cIhl7aYHQgA3N9mUP07s153CNoQaSHJfC0Wxq0U8u5qpPq9zi9JDiCshPXErmYhhm6R9zpYPm5GHLlOxhEdiFCYu5YzjQNMYXostJRWVWkGGRATgrcegbeM5iBtn8OBeBFincqb+f3MOcogkjBlxbIUYzSpjOGapxhO2hdxId9z9mDC7gRqylYaIcyw0uZOO9LCx+GIoQLghYLvhixbGlXR0XFpGtxpFY3VwkpENlx3fBj6TbbYgHlXPTdDFhJbvSxaY7KMfdAr54+vofxRCR7JeZi7Mdnc0x7aGL+3cnd5sETP0lqbqU7Rb6sYi5p5PLzUGTlkZjG+ao7IjX7Lx+wb/8a/LRdvjuttg7ZbnS5yvjEeD9Dok/wsJKWhl/rrz96hzz4Dm+gN4Po2DnGOu5jUwAq5MmEg/LPhavNosOYvMnImv4cfdzd5Z/OCFJ8gMJwyJztB6rbyT/JqaOLAfgL3jJDNsBLf821h66qpbnThfscrWZEB2AB77ah4u12YrRjxwxfoi/J6NdzWf2ao22baYU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHRLNXlZYzd6Wjl4M0pELzVQZi90dUFIMTF5T2VUdUlsTWhpbktQVWl1dGl3?=
 =?utf-8?B?bS8yOHI1TlRPeXlyelMydGJrYllDRmRORGhZMFdyMmF5SmJ0M0hTUWpKbEwv?=
 =?utf-8?B?UkdNR3hPd3N0Z2JFTjNYTEtGOUdRNXpSZDN5OUZ1bHVuWGxaNTBQZGJKWVMy?=
 =?utf-8?B?RThZNXdGZC9PYjFDTWl3M004Ujl0Y3RFd3J1N1dQSkQ4QW50QmNOaWNjSGh3?=
 =?utf-8?B?TG5jVTI5anVOdFJHRUw5d28wcFJOdjlqRjlZQ3c1VTRFQS9uZmRGUWVKaE90?=
 =?utf-8?B?dEZRV0hscVg3akFGdHM3WGRJWHppQ1diR0Jxc295RUh5bmdNVFg1VlVITW5h?=
 =?utf-8?B?VXQ1aDNmM0NKbjRSL3Azd082bmUyb3lwUzRzelliMmMvalBjN0tjVzRzY0ZD?=
 =?utf-8?B?SUVhZ2o2SWpKR0JNZGZkNzA2T091Z3NRUG5BNWpDSnJmMFJLSVRyNUxaS1dS?=
 =?utf-8?B?Y3JyS3p3TCtlQlJjYlJyam1Gc3E3bWlhV1k0MWlENnp1amFQV3JkUCtqUFM5?=
 =?utf-8?B?QjYwRHppRldFR2dIQzdZcG1IQ3VkMFRLazlqR0hMeHEvR3VQYlkzK3pTMDFE?=
 =?utf-8?B?S1lYcmZDY0hTVWZRMm5SaGhSYkNHKzQ4VjJxSjBTQjlMRjB0WFUvSzVVWU9y?=
 =?utf-8?B?YXc4eDU0QWp5VUpWbEM0Nmk5eGRTaWxvUm03WldmUlBCZDdmWWlZV01tVllC?=
 =?utf-8?B?dlF6MFFublduaCtqSjBWYUZ4VXVJK3l3R2phaHpZNmswWCtHZWFIeTFEaDdL?=
 =?utf-8?B?dWM5YUlXTjNaUGZnLzZneWloYlk0WENiNjJiMlMyQm01V0F0ZFU4ZzYwRTFs?=
 =?utf-8?B?V2VyTnRFL1ZSUjQyQ3J4N2dMeVFDRnNvU1RsUUpBRUY4LzQzNWtzd09yYTRl?=
 =?utf-8?B?Y3dpSXFmdHIxSEdtaXd5QVJwSTZlS1ozQkdCUmVqSmpoa25qb0ZrMlZOVzJr?=
 =?utf-8?B?WUNKcnlRWHp5WUhwL09HOGhqQ1dWOGhnZkVXSytWWE15SDlQK3BCZ1pJZER4?=
 =?utf-8?B?YkxycFV1MUNCUk4zTmNsYW5iTG81MmR6MDloYjRBS0lXRzdTWXdXdmdHWXdu?=
 =?utf-8?B?MHQzMWFFTHFXUzNJdGFJK0RVY0JjSjJvRzl1Z0h6SUorM2RpVm5iRDJPTG4w?=
 =?utf-8?B?VXUvNjQ1cFc5cDJ1MXRGV2JUbExSR0xZOHVpOXNLVWN2ejZQMDJLbE05QStT?=
 =?utf-8?B?TVJ3R0hHM3hlVzcyMXZoYnprWGZkL0J1RnlXRWN3Znhtc0VQRjhNMDgwTXEz?=
 =?utf-8?B?L0NKYUlQc24xeTRqM0RVeVlWZERhNG5TZEo2Rndtdll6RVl1RlZ5cFJTcXdz?=
 =?utf-8?B?d2Fld0psNFVTS0Nma0h0NktFSkpucE5USkpVMHhFc1VxS3Q1K0JZVXQ1RURW?=
 =?utf-8?B?QVJRcHViTDBZRE85V1B1cTJxUUZRcmN6VEtFbWpLYUx3c1RhV0p4SkV5dnJr?=
 =?utf-8?B?OWZwQ1F5TU01Sm5DVW4xajhha1FzZmRSbTZsTGI2VTQyMzQrU1Q5d2NBTkVP?=
 =?utf-8?B?a3J4Z25GaGlSTGZNa004L0dkUUJHZ2xUcUtOUFRrcHhDdnFqNkhuY3V0ekVq?=
 =?utf-8?B?RTR5bDRWUnVoQ3JOZytkRWFiV3lySmFydXBrQ0lRSWlzUnhhR1IxSXdTTGlx?=
 =?utf-8?B?aGkrYUhLb2M2ZTduOERFdzNBVGErY0JQbERNeGJ5d2c5eUJWUXowUHpHWHBK?=
 =?utf-8?B?eGtTUFNnYlY5eFlsTE1UZmRBVHNBR0ZiYUVsOC9HQnNSaFlrdGIxTGFtVWJT?=
 =?utf-8?B?VEJBUHNUaG5hemJOYlMzSlU5cjdyZ0ZHVVR1SEtNU1BRUkpKNW45WjVKUldv?=
 =?utf-8?B?SG9odzZCSHQxTDQyY05DVUNpZC8zVU9nSFVFckt3S1VVVXkxelZzSlNNb1ZJ?=
 =?utf-8?B?SHJ1b2N2YitsV09jcVE0STkrZHJ6WmJkS1JNd1p5WWl4ZkxpYWQwMHN6NzNl?=
 =?utf-8?B?Rmg0ZURJOXNZczhieGtyU2RqNUplOU5JNDcydFBOTlA1R3Y3VGp2RzZBUENT?=
 =?utf-8?B?ME1KbzRvT3FYbU1BclF1ZWxrNWFQUEVkTEZVVWxGYjdMcXZFcFhuM2lKMzR4?=
 =?utf-8?B?MEpqQzNiQXk0TjlnazgwaEc5ZUVQeWRCTFV1bjBmSHpWVkxnWEsxRkNjMmNP?=
 =?utf-8?Q?sGtPEb4AyO7YRB2a55ZSEb1ss?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a904f074-cddb-4b46-9202-08dc5ff833b1
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 22:38:00.5226 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: goNTfTHa1K/nmTSEYbb8kIpEzcT4y/jBpQ/e6FAjEodWnnDtDCZ5XvwDUYcexZzptD0S96KkLB5ltN39EVYdCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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

v2: Keep grabbing wakelock but only assert for wakeref. (Imre)

Cc: Imre Deak <imre.deak@intel.com>
Cc: Francois Dugast <francois.dugast@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: 77e619a82fc3 ("drm/i915/display: convert inner wakeref get towards get_if_in_use")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10875
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c |  6 ------
 drivers/gpu/drm/i915/intel_runtime_pm.c            | 14 +++++---------
 2 files changed, 5 insertions(+), 15 deletions(-)

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
index d4e844128826..2d0647aca964 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -272,15 +272,11 @@ intel_wakeref_t intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm)
  * intel_runtime_pm_get_noresume - grab a runtime pm reference
  * @rpm: the intel_runtime_pm structure
  *
- * This function grabs a device-level runtime pm reference (mostly used for GEM
- * code to ensure the GTT or GT is on).
+ * This function grabs a device-level runtime pm reference.
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
@@ -289,7 +285,7 @@ intel_wakeref_t intel_runtime_pm_get_if_active(struct intel_runtime_pm *rpm)
  */
 intel_wakeref_t intel_runtime_pm_get_noresume(struct intel_runtime_pm *rpm)
 {
-	assert_rpm_wakelock_held(rpm);
+	assert_rpm_raw_wakeref_held(rpm);
 	pm_runtime_get_noresume(rpm->kdev);
 
 	intel_runtime_pm_acquire(rpm, true);
-- 
2.44.0

