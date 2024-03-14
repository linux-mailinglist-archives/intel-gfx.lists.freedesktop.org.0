Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B562087BE8F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F04610FB87;
	Thu, 14 Mar 2024 14:10:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HmEtZkO8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A57B510FB7C;
 Thu, 14 Mar 2024 14:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425445; x=1741961445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=pvh51CM4dvm8/ILZyE+gMzntt2UD51B1oleZs7ZcJaM=;
 b=HmEtZkO8bQ0EODHpKANyMTNIT7/72WOxYxnXQXbgpzCTf50+ZLkyKpKA
 VmOhX+HhV2+PFqr86q9y5LbSp8WGbK+OnoAFrPncBnjxiZUb6cHK3vC5k
 bfa+Lszh2LY5BFu/4haYaG99yl0pxE41XWXGhK736ShR9z9iLsQPVmg/t
 opNdLdoIML77LUGlxgEDbvleXdyYYjKNJsN6o7g9L1xUlVjySbFNYZir4
 9PPJlB9Nr/+bBgxxDXLEPKozRhvtl0oFQIZv+fEMlqEFvnEJpB/6eUF/k
 8ulQWm91OeY0Rq4sQFmeHqcu/Uq13QNi5xSlFRmN6dfU+nAWLFj2/OemG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="8182599"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="8182599"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:10:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12369282"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:10:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:43 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:10:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DArgFBDaIJynxTqBnFWgnGsaI467pxn52ktHQK4gjFC1mhj2XLhzfnrUDXDeTWSvjYkmghELfJlokkNAVOtVNvoA8kvOq5u9cdzZkFpFBFc3mZ5yvuGzJWlyE8ACBl2h8XzaMVd5DzMXLLeLu0toeIoWH/vkN7H6Cl6fpUxmveFhdWQuAF4eZp+YfTS+qPoKLpxaPbFyR2PRIvYdN0uZXXa1KS9CTJkD93y5ugFazi0j5P1pg58Jg+rUei/Z+tk/w4HyDSE9G4izibENtuYvvY6H2WJ+1EOWnLHXnXmJThSRZi0i2InevGkMMguk3KSFDxP6jOgnAhzEO+hijkzcyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TkU9iIsX1CFiehJF2VD0WynPvCJD7NNWHLUhH6KsJw0=;
 b=gqsRaFu5QtC06Pksq2laJyowpXV5e3TNVz+Gb/41CCYGnoYy2xRbvDIM3h5YWluEZ9W5xkxtaArpE28B947YpeqYOSSVh/IZgUVt9uOvZPizdv2gKW2LzkafNcHHO29qzpZpGIsQzjQzMGO37vHtAjoFAVbQYAM+9QIkWOO/0XM+gabrdhUM8X+dtxR1qXOTZnvPQmxmw1YXIvdu64W251GhlzWf8pDDaHblKoqhKbO/3fmOinQvYagL2xE1fLdoSB1rUjAJ+echV4idOnt9HXOmdgNsbi//3jlOUnxptio+F241IMZOLTdgF0CsyRu8mStCEdQib/4erXcYi3L8bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:10:39 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:10:37 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, "Imre
 Deak" <imre.deak@intel.com>, Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 03/11] drm/i915/display: convert inner wakeref get towards
 get_if_in_use
Date: Thu, 14 Mar 2024 10:10:13 -0400
Message-ID: <20240314141021.161009-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR04CA0005.namprd04.prod.outlook.com
 (2603:10b6:a03:217::10) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: b1f2aad0-4331-4de1-5ef4-08dc443085a2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oFiP3gCPJHBUZAicoQLcpg0h7IrBNPP3XvieQ/n8pjdX5CR7bujKx0eoqhlO5IH2qaZzEZp15z1mxUMYRB21zSrhA6U78D+YFZK3asMqvgDaVSw26qpoycX6dqiSrYQ4j5U3jMuv3LBvt8qy0hcy4DAyHEvirI8EjwDzR5H8Fiw9zXqRG7Pnr54aUJSPE6rapmaa+ZHa1EMvlJ+Sk47e/+UADKTqEnd9pCAEcHxxu8Gs9TCrZSrrZI4zVEhN8Ltey1uJlHFvEBlrAVZuTwvCbBCaQNf9aabrQXTA0LW8p2n7sLQF5bOXi+zf2FaO1BTZAvDOqadDX7ySw96Ai/YSnt/lRHYDM5ycn4Ub6QoYhWECsVBbHrs5LD44SP3hY8N84jETmqB2UkfNji7ZM5T8ZMknevy6p1d/t7q+hJm0L123IfV9nYMrLaLAeDJwv1kh4GVFAnLzISMie/KgWHxn9UmTBXx6qz2zzbF9SaAx3+ua7Gv3uJhjDUvl45fe5/5gcYI5ReuZjK7S7DHDiAMqi6qjr1sozk4urPZ0AMm1BrhozW5nk/lGuwUWnpDOCoDsRBUjJnjpoVjG0cnNWFkBy9zPO/qTwSiSIIe8vr8q5Obv3vOUSQXtqgCtO5MtRJM8ZiUQf4zcg+qwWmbtrHwNhgoqQruvKOyZE1wyhS2FxMs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UHJ6cXhUQnVmQU9pQ3JYaWFpRysyRVhKMW9kZEpUUXRwVU9Qa0hBUUpQUVN3?=
 =?utf-8?B?Q0daTXZ3VzZ0Y2g1WEU0U1JuYkN5ejRENFRBczhkdEVYdkd1ZEQ0ZjhQN1BT?=
 =?utf-8?B?TnJIbkx5aFNYRlBoVStMcVNkNnVhNVhxRFphbXVKWGNFeTRHd0UrOGN0RFBS?=
 =?utf-8?B?Y0hJalBQNy9rVFY2NElrbXVNMWhnc2haYXM3UzBvMzhCRDNDdzRSbHZ0RTd0?=
 =?utf-8?B?eGlpOVI0VWtCR0VMSnZzdzNjbkxhaldpWkZvaG0wTUMrbXZodEFBRXJQa21w?=
 =?utf-8?B?c0dQdGdiMzltbTd0UDdxR095VWJLbE5FQ3RrY2JrMGRsOEpwSU1iMy9FMnZ1?=
 =?utf-8?B?RWs0blRtTkJYeXlCc0paZzVkRlltRWlzQ0Z0emt4NGpKNy94WS9RSkcwVFZU?=
 =?utf-8?B?a3d0eklka0VFbHJVUm1VbnZGSDdsSmduMEVveWt0TDY5NDJGNkZHcEgwM1Ix?=
 =?utf-8?B?WXFzcHd3aERwK0IrRWZXYk5vTDhlYitnK1U0MjdVQ09hVjdFc0VBYTAzb09I?=
 =?utf-8?B?NGNqcEs5NXQ1Z3hndFAwZFdrUzRsWHIrUDBkYjd5RndSWGtLanZqbmNwc3d5?=
 =?utf-8?B?S0x5cDhxSXR3TGtNSjZ1Zm14Y2VnLzZPQWhlbFI3UzZXSWR1L3Z2cnpudERM?=
 =?utf-8?B?Z0JaZ0JqVC94R2xqWmZ1UVkzbWNFVWlyQTVCdllmRWlmam16Mk1mZi8rdFFo?=
 =?utf-8?B?ci9xV0tWcjJzNlJIcDRwYkNrcUxSZFdJaC9KK1o1V3N5UEtLWmJnQlZrVEtK?=
 =?utf-8?B?TzhSWXVlSVdaMDEvVFhnMjdrT2NYdUJGUFo5Z3E0c3ZaZzBLelBKQTdYV3dB?=
 =?utf-8?B?Y3VmaE5leHREWmZFaXVyM25xQ3dTMUFrM0tDMngvRSt5eTBuMzBQTWN4OWZC?=
 =?utf-8?B?cTUvNkZYdjFQY0lYUWFCamtLWHJQa2ZqSDA1ckZpZEhiSXg5dmpBRHp0LzRo?=
 =?utf-8?B?TTRHSzhkS3BQY1R6bXNaRERIZkYxazV4MjNNdXNBVEdvcENlaGdRSTI5NjVq?=
 =?utf-8?B?c3ZKb2pWTnpOS0pFdGVOWkl5L1VOemQ0bG1lWXRxUXNHUUwvZXJ3RjFsMVFE?=
 =?utf-8?B?b3RnQ0ViR1lOVkhyQUNqZC9EVC83Q1FxLzE3Mm1Od2J1Nm9zSnNxazU5ZkFv?=
 =?utf-8?B?TnUra2FjS21kbDdINTdMVlUzeGxWOFNjV2o3aU1pWDV4N2Q5NTR0bEhRbEdD?=
 =?utf-8?B?N3VqdUtLR3hINDFzZ0dMbzhtMGVWSVRFQWZlU09uanFkN0VFSlA5elZiOWNG?=
 =?utf-8?B?cVdNU1h2bG54K1NtdnNqNTlvZk0vUTR4d2dYOHMrc2JZWjc2ampDdUUxWGtp?=
 =?utf-8?B?ZjU0dG9sQ045Zm9VT2hqYnJBYjRKY3phb01PaG5LS0hFWC94ckRLdDQveUJB?=
 =?utf-8?B?Nmo2dC9QUmNoYS95aksycG1qUklrKzhwUG50aVhISXZIUXdMYUFhODRXOFVV?=
 =?utf-8?B?ejFXV2UzdzB3ZWZyR2ZZai9Udlc0c3g5eTdERkcydGlUOFJsUHhjUnVsd2hP?=
 =?utf-8?B?RHdoRDZpNkpxRnJRekxNclVNYitpWkR4OGFFZlVWOThwNzBMRVNnelF1K2h3?=
 =?utf-8?B?ZklDMlFiUmhYdDhvcE9qR0hXMi96Q04wWmpWcXJYYUJzT21OL05CUUYyajRp?=
 =?utf-8?B?QlV3MHJYREkydTJDRmMyMEJWZU9TRHEvNFY3ZnhRMlhCQ2JVSHQ4OVAxU0NU?=
 =?utf-8?B?YTFyZ2o0WUxGUzlLK0VDclhraFgvVG5RMmJZR0E3ejlIQzRyMUU4WmpzbGYv?=
 =?utf-8?B?VVRyT2V3YjZ0VHR1VnlJZWNEbStMSUlMYnY1aG1GNXFPdXBUaS9udGc4Q21w?=
 =?utf-8?B?QmxJcGsvdUNlR09ma0JJU2ZMUWFMb3l6M3NlY2hON1RGYXk3M3pVYUlxUnF3?=
 =?utf-8?B?NGduNzd1WG03ZVBPRkdGemlVSlZ6RENSRHhxUUowZ2lNZE9LbTNlbHh0ZFJh?=
 =?utf-8?B?L3lHQmF4Q2FPNmlyaUdrNktGSXJ6YVFpK2c3bXBaREhqU2xXL2srL09XWk9C?=
 =?utf-8?B?Q2xGNStxM0w2SFg2NXp3bzFicm1HVkJKSC9tRDVKMFYwcncwblVRRjhiUDRU?=
 =?utf-8?B?dXRwK3VJVUlBM1BDRjhsYnpnU3pXbkZYUG9mb1dYMWR1UDR5TERDNHd3Nnl5?=
 =?utf-8?B?SjJnVHYrR2ZwUGY4dlUrUXFmVCtxOVVtMjNvSGQvOXphWVBnUUY4emtSVnM5?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f2aad0-4331-4de1-5ef4-08dc443085a2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:10:37.3341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B5eo2aIbezQ9C/SOGgktKuxtdr/3f0pxA8JkGKg9Qd1Il/qDyhT0v08KOydc0wkaSFZd53thS8aFqI6aBJ+d/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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

This patch brings no functional change. Since at this point of
the code we are already asserting a wakeref was held, it means
that we are with runtime_pm 'in_use' and in practical terms we
are only bumping the pm_runtime usage counter and moving on.

However, xe driver has a lockdep annotation that warned us that
if a sync resume was actually called at this point, we could have
a deadlock because we are inside the power_domains->lock locked
area and the resume would call the irq_reset, which would also
try to get the power_domains->lock.

For this reason, let's convert this call to a safer option and
calm lockdep on.

v2: use _noresume variant instead of get_in_use (Ville, Imre)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Acked-by: Imre Deak <imre.deak@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 6fd4fa52253a..048943d0a881 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -646,7 +646,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
 	 * power well disabling.
 	 */
 	assert_rpm_raw_wakeref_held(rpm);
-	wakeref = intel_runtime_pm_get(rpm);
+	wakeref = intel_runtime_pm_get_noresume(rpm);
 
 	for_each_power_domain(domain, mask) {
 		/* Clear before put, so put's sanity check is happy. */
-- 
2.44.0

