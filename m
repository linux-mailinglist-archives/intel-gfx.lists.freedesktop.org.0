Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCy7MEUjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDFF19A9DE
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 918C410E7C5;
	Wed, 25 Feb 2026 16:28:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ek9RZQ7q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1093B10E7BE;
 Wed, 25 Feb 2026 16:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036930; x=1803572930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=IIcR6y3/TUPzMdkaw7FNjF+YnD5NIcMkoCqZfp4ukIg=;
 b=ek9RZQ7qcda2zv/xP+vvXav2ZFhOpEM3++aWBS45HGkrKfIg14UY5CKE
 dsD/CXI08L4GbusYb4n7MQQU6beo09Eol8GsMqHMycRQtkTTr6R01zcLe
 by1iKg3ZmK0046RKpVpoqrVQa8d6CVQ4dgQLOx+Q2ZrZ48o2BIge7peL5
 Wfg8GryBGPMdVbpyV9Ezqammmvphd0H4SJGjZtFKxycfKdyumXmJPgYtt
 /BKLSXDFpFBICIPKc7iN5B1XwHoyO3i+eUBhGuJ5IwitXxWInQAXkPCSI
 v0vkKWQjOEjaqpwSmOeuZhViCLK7kPGFPFw/Q5wixeXhKZnAKAbx6sHm5 A==;
X-CSE-ConnectionGUID: fVe5UykEQL2mGhWbN7m5TA==
X-CSE-MsgGUID: yBC8FuVoQdadwmQEqsEP8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72955401"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72955401"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:50 -0800
X-CSE-ConnectionGUID: iUlJKcA/TbuY44U7EL5L2A==
X-CSE-MsgGUID: HVy1SWE3T6+MbUawOKHc0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220783715"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:49 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:49 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:49 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.68) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FR6an/jVe/JZ26eqwZa9cE/kLfBOVp0HDtG9cBm0SYQDc+HMxp2B97dnWGCvwDqNXp9voXeq0PsS3/wiaiPt0X5IBJZJ//oQnoiRpygVzivtRvOnQ9gaXHSXM0bNJRDShAheT9Ww3eMIfnq6FVat4kd5co4sZKOBNk94ahDhB4FKqGnTKNDFQUYdk50hrLeqQtdNV9AuNylkJyxyzb8xR8M4vVV6bfLWG2I0OEiEIkSovlKwqCXlf4pFdPFBHFzdUsrZiMARYSSOge4qWr88L/HvkqxihhLx//vq8UJQM38eblbLvyqEQWUao8zvKgvzVEssFE/A9ixfgrapV1FD/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZLTva1KXKrTAW/vnktMX+RnCa9q+24XK1O9xNT2zOQU=;
 b=e18o8YuI/L/RJHQclze6w4Rtds8zEnb9T08k4P6y6XXq9UNBfc/BCSnR1w2YYh9UyzFYcGbCm6pIcZl8iczaw88dC+dN3UCkRYjZR3RIUclYeYRScl4c07av9vtgK3LJZwU4S8lrUbsexjyZbCGgUWMEvub0Dbs7ixDfLCbiP/oggJNYRK3cNcTnOJd1Zogc2FOJ2NbA66lZJCgwcvlt+BW7Radm4JEQCX00Zq84Uj0lQt+l8TcRwkE9463VgEbBF9+KUrBo7v/anCBe0eQJFjXBbOympVmsuaNY9WDzvzYtGMjm5NqhCLN1SLYOl/lxZ2OFeBYJveYQ1YvdwKoPWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:46 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:46 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 08/20] drm/i915/dp: Remove the device service IRQ handling
 from connector detect
Date: Wed, 25 Feb 2026 18:27:39 +0200
Message-ID: <20260225162751.1255913-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225162751.1255913-1-imre.deak@intel.com>
References: <20260225162751.1255913-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF0001DC1A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::26a) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6365:EE_
X-MS-Office365-Filtering-Correlation-Id: 1973885d-9949-46c9-cf5b-08de748af2f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: vuiJ+4WcNMx4TY8JmMC34dntFYOcr3QQtLVHUDRtS0MEu++1Pp2gRf3ZapqXAAUV2bjYGeTInC/JPU89E2RoZYzVYLJoKqELQ4tVxZB80Jpm8zQaA1KVB5JDI0ZoTGg4BmRPEXZBXS0nPduO50Pv2fH5ye5ukY+rA4UxZ+7jSwzAbBAlhoDXUUrI76yisRWL1zIIJpTfWYnDft2HlgyHVkudhSz5VMi1d4P+XKzilsFjB8eebEDYZ2AqKmKlOsmEFAtYSaC9nksX5Y9jFXMfARGTXemj8cdSB/G98a/PRQ7WvpJSzWQamDY3NaXgwYILZRbpdTgsllnAs7pDlk8clPi5oz8KzQ7CtN7qkJ+VGNP9O/wEwe3ePauu22SqGbrbckyzlI8u2zwFJGtCOnDRQdBbgdzNiAMlbMC9+RXT9WyUbZnkBrDZN83jbVOdSMn0dUfMh5IguZyxAREuy14duhlCAxrjU7qRm5VTE4hxzAoLoA3E36V1C5X2+r4J5zkVCcs03Jm9iqeTXkWxA9MLQOWwvCfiWl7DknTzkjV/VHUfT04A6HFViu06S1cwLUh+MOh8+NdPfhj/8kQw4rbklQagwxv3P2PMEQdWO3uaiXcxkvE9BfiRUMYYKM3AtUepG1y3/MjBq6mgcKEWXzoUNkSx8FIsWTU3dNQUnJ6LSBokmGKIAl+Za9fP6FxuDWtNSjInqbBLqnPGj3AZGI9S/y2epxTIdpTDFv58pRX7IWQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JV7GfTFOvozv5HTasjaCiJu5l0ZnfgEEU81UfBznrBNQXoH1kZXq6q5Kzhxb?=
 =?us-ascii?Q?+R0MiZLKS1BIJUSAfK0x4XRpAC26x2O58YDfYSOj7mJkDH5vZslP5PtXjE4D?=
 =?us-ascii?Q?QueAVKBL7wHrdYkqiiLF7ooTpC0VjBQ0plzC/SXaq4EhXjQ29sNiEsf7MEDQ?=
 =?us-ascii?Q?PlgX3I+dfUhNN3kQjGT8LMEecFZK8XFxaWPid6Sc6u7/ECahoC9y0vRvdw6d?=
 =?us-ascii?Q?+mqIQxCTBEVntCjfd0s4BGM+1USo+g3MQwAk0UO3FK9WX8Wlvt13Rh55TqWR?=
 =?us-ascii?Q?plw/OToE6J0TEITyrYnzbpM6FNNYIjbHdQ2rGIHqaNs/+ZMToxKjAQb1fybM?=
 =?us-ascii?Q?t6pyAIvMOSTC7w8RdQHibQUJ+mzPrD/ZvigRINW+QJA+F14ksCQ8Fg+/ZpkC?=
 =?us-ascii?Q?WehgTdjQypk01WLlIuZPrt0d5kawh5WoTZa4f10FFiznbpVvk+LUnM4Aca4N?=
 =?us-ascii?Q?uKqIxu3YbNcD+SiaOgV0L+xwTlh9rLFWknpS6tENTSvS57V1amcGLVUP8s1+?=
 =?us-ascii?Q?Bb0A2YPsy0W67Burosbj06FztLeS2GUvPLow/+lFfnd1P2kuBbh/eiLPC/5u?=
 =?us-ascii?Q?3IG9xwIlR5ovYEyJewypGPiTh2KOAHb59rcnxS4js3sbXQZT/Cv0nyURfXL3?=
 =?us-ascii?Q?oEgDDASR3bke2saNED36WMfv4xo0Trv32O3nvMNcBketgGQO1ZjvMNfOBDEq?=
 =?us-ascii?Q?AXAajHf/R30CyrkF86nMHIFXjKu4fVQrlaRRmzEMBFj+MUTP9dRGVCJmhC7p?=
 =?us-ascii?Q?sbpgOCYaarkxS9HBh5Ey4kMzXn43o/PYrYpMq9vAqJH7mSSmb6eYo8K44744?=
 =?us-ascii?Q?rambTKQF7+MmaNVZHbv/ERTd2hvSXzF1R6s7oNRS/h8gx56nzAIYSIPInzel?=
 =?us-ascii?Q?S7Rpr1IzbjQYcWs7V7tY0HmxK7Zli1pBeYEmO6v6qwRWVW6gq9p83us2mA71?=
 =?us-ascii?Q?SjzkuDlinXZw6qPnKrGAE4YSXKzFazp/AtnR4vkRXgMvEKiHR1s2bztPekfs?=
 =?us-ascii?Q?OGEKAscF3N/2Rl8OPFdVxbcUAIYQh/twp9UiW4pXCwt8Ru61bgFjGZepeKQ+?=
 =?us-ascii?Q?lxy9whnZqvPsfZK/tU8nFCg8HLlCxhWMRhUX2/yOBG42zBj79Suvz3n8fHc3?=
 =?us-ascii?Q?jZ3kHFmgZDZwLi7U9MdskfFlUX/bE57yc24ABk162otL7JwM38h2U/7yS6nR?=
 =?us-ascii?Q?r1FPrVwvd7mTw7wELiCKtdKCvl6bxjhB0FB+rcrL1JZqisVNOFm9vNp/Q9aZ?=
 =?us-ascii?Q?xssK55+e88ruAi3x5GMikbIyU//Llt9/yC0AkKN9BXgpf9zV9HnZ3x1Dc6R5?=
 =?us-ascii?Q?GciYrXrqI5tHxCN0VFwiDJD9PERfBk+iEs8Bwj0oRkkNXWlNtc8VIeIRLlo5?=
 =?us-ascii?Q?4w9pjGxEoRKmUOk+IaCYHD4D1ODJo/KMONnD0aXWkdVzDgXwZhyG4kSKLdcn?=
 =?us-ascii?Q?TQQFHZH5z/H5l2LreBtT6VvW16qFlgiBJ0z7jhxQIpSfiZ2PUmwCsTsCblgc?=
 =?us-ascii?Q?Nhd8LiFqcI6QAmrWojdLTaXJIoWVRnXaXd3SS0BgJZREPl875jrs7gKGJfpx?=
 =?us-ascii?Q?9pG336nWGbn2VzsFrsXo+Zh4PxL4yCj3Tnr72SO7IAr87R7J1OqE0W9n68ni?=
 =?us-ascii?Q?bWGiYO2bljQTYlFulnTd7iGz21yZmyeAdGoDbfdBgMorJfKJ4vFDniJDTP+F?=
 =?us-ascii?Q?1McerbqSrv6xndat4HOvqatB1TgOWBUnhcTNXHvahnqXr4cQtJ0m0Mz1hK0B?=
 =?us-ascii?Q?+wvvqha55g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1973885d-9949-46c9-cf5b-08de748af2f8
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:46.7140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2uBu1EmItpu2K5dfbf8+Wd43cGDtZyMmqpFbpObPK9Ck8XQvcmxy2FSydxp5AbqdFdCTPRYMhTOzSoOgOrnZHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4DDFF19A9DE
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

The device service IRQ handling was added to the connector detect
function by

commit 09b1eb130e43 ("drm/i915: Move Displayport test request and sink
IRQ logic to intel_dp_detect()")

since some Automated Test Request IRQs couldn't be handled in the short
HPD IRQ handler context. This has been fixed meanwhile by deferring the
handling of all test request events from the IRQ handler to the hotplug
handler (intel_dp_short_pulse() -> intel_dp_test_short_pulse() ->
reprobe) and by handling all hotplug events (both for short and long HPD
pulses) in the test application.

Handling device IRQs during connector detection is not standard
compliant (the IRQs should be handled when an HPD IRQ is raised) and it
happens in a racy way with the same device IRQ handling happening from
the HPD IRQ handler (since the detect and HPD IRQ handler can run in
parallel).

Based on the above, remove the redundant call from the detect function.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a49e30e3edd16..30b2aa3f5f5b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6324,8 +6324,6 @@ intel_dp_detect(struct drm_connector *_connector,
 	if (intel_dp_is_edp(intel_dp) || connector->detect_edid)
 		status = connector_status_connected;
 
-	intel_dp_check_device_service_irq(intel_dp);
-
 out_unset_edid:
 	if (status != connector_status_connected && !intel_dp->is_mst)
 		intel_dp_unset_edid(intel_dp);
-- 
2.49.1

