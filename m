Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aI/SCEYjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B274D19A9DF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0823510E7C3;
	Wed, 25 Feb 2026 16:28:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m4RzL6+I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BA710E7BE;
 Wed, 25 Feb 2026 16:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036928; x=1803572928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=bWH4qSf+jnp4fdG/3o0JBb1PEnZAt0PHDNYT8S6hAO4=;
 b=m4RzL6+IY3LYoRx+Yw1g/xJlpJqetg2tGdNa8jcWAHXXqgStuwQqAxwS
 MNZky+jtZcHgsnWn18KHNZ5fC7+B2vRPd11WztS5GP272NLv95epVJVG9
 EVqBHAi5Uyxy3JfeMiN06+Y4XxvJGoxVSpcgfwmk6aCpLYRrWJA5hfR5P
 gsiw42MXo9Kw4qa+T+c3hZX1zbfhD0G7gxVPoSqPBMKRtdfzkNR1rUhg7
 iptLY+9y6wi/YL5vw5KKqdfgg+j5D4veBOSTTWOPctqEte6k1RgMYRn6w
 msuptFdI8zQIptes7USWq6kH5EQOKqvsnrR+awecF5Dkfxl7VfaN0GW2f A==;
X-CSE-ConnectionGUID: XKzzdJK9TB29hAEGrg+IuA==
X-CSE-MsgGUID: 8Mvf+YpISK28B3KVyTOFSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72955393"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72955393"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:47 -0800
X-CSE-ConnectionGUID: tCUINs1IQwKIgiBKEz0TQQ==
X-CSE-MsgGUID: EDJ96GkKTj2mNsg2LwZ0iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220783693"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:47 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:46 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:46 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.57) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ehKA1ijqK/vDKxAa2UTeHAEOwXV7h7LbwEyVsCGRZQ5t56k6ZTEAk3aXSGvJBmuNrS/DWeUQTPqYSWDXkFUMVYk3XOi5Etfb2AXHuv6eHQWM3SwLBCZCil1cTl8fNdTncw5Bhby/cYWDo7QK7x9WiaTMR186NZub6miWtkRggu4vWqA5CbVpkLLvltWNxW+dDYGuCnxDTyun5afwSdqT64/nm2wr8utk2lIIIVKpScM+VHijAaHKJDM/2WegD8dmtPWUS7+IYQXul8dBdtahGEp3h7IbnwV3WMipCsZqog4RuXiMMfNsDUtZod3nYSHXkorqX5tqN7fCI1XzK8wvgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RF7Qp++//GwaIrZHaCHRzagzNyfkfuMFq7M3wpPpKeU=;
 b=t/vQK3yGPBCJIeANDOwlPYeosfYLo8XQ9VczkXVUPSjVjaPL6Ja7bUa2MsJ5R9mO9z+vS/oVFe8we6JNmDB9B5lwzMWnjBMegmq44glU7ePiySFh3773WhLEFrAg4KZEXzLHmKCRBiaxwFecQsgkmeskkSCiW+HUFwcuT7zr5Ax6S6IJ0Eml3oFfGTrGlXz6CIwnzr1ZeY7IUa2G/zVdWE10eJHwAg4MmVbikIuzqRBySI7nNeOwTru5jFGjdnUULgJu5/44QdBJrISGwbM3R/IhWhYkICUMmpFIUUQTrBsJWp6FwfgA6EvbS1m8Vksx1x7I5BP3G9B12391WiEnbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:44 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:44 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 07/20] drm/i915/dp: Don't clobber the encoder state in the
 HPD IRQ handler
Date: Wed, 25 Feb 2026 18:27:38 +0200
Message-ID: <20260225162751.1255913-8-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 281ae2b9-9e81-4e52-bdc3-08de748af1e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: V0rz7Im55UVkfiCahjd2sq7hb0DC5CQQrCVUKTJIhkio+7S+ZI/AzwMs5AKbFEEocOkgxViMByG2rRtB9SWn8wZJQPpXhLcLkvaJcFSj11fk84jTKNfEkYomefk51x/MumOtG1iom/nAOYoqa1eM8CGpj3xdXAQgVxbgTB95Yp1qMC7sfsZBhGyOloJU3NlblJZIwM1wHxOZibe5/8f9Is/rBnksOrXZzWrT5+i1AbwvHZXRNc0IqAJsvXGzs92995f/kv0KY3ovDQg9ye6OEj00SQ+q7XqkvB8r2q5A3ou0ezhYa758RgjUC5Mv42ZaBI+PKw5zEUw5SyLq3W6S2WjwNMv1N4Z+zV4CEXI7F6FikKMK/Yc6Qj3xqWHRhEWWHbU/bt8M+KK5JPwU8qkUUA6KNjvNWmkadlqOo0AhOndL7CUnHiSju042o6HUuQJuoEOEk5hAlXMMI3m8enzBm0gfaLT99eJiyYxjufC+WbAseLnqPEaxAyQqMysZr7U4vAXCOVlFEy2iJweRc+piF+wN95rU6DzA+CesAqiKZGxa8WS8egfVWT4q1ic7TAEXrhukKgaevCbrqRwphaMiPanx4jFpADR6k1EIWSPmhj38+71Ch/h/errK8R66XgyXUZ4Z3uPcBqoIGagWGMt5qtOplcB1M3bHbBDo9K96lCon5dhVlc9+8dgOEM1uB9FtCTLKXakJlYTSEXA9QAtefp0PNfVmEmWamtpSk1KEAjA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hTmcx3JUx8SM3cWYNB9ZIc1Izh3L5Yb4lFCorEMYbU2UfQOk6qOorSAGHUvN?=
 =?us-ascii?Q?4uUsnJLD+OgPi6gPqssK/uKivtThwbamM8qJ90+hxBrKpKuhkdR08o3HLJCi?=
 =?us-ascii?Q?khz5RXYJevgLihjE3gpSRJJM3s1IlZgwZcSU7wrfKYFI/em9qWtYO8jFUGR7?=
 =?us-ascii?Q?vHWJcAr0rj+uljpgYWr2bTEGY7KaIOyK6ZAla2JQfyNtIuEO/BMzP8DxRPTk?=
 =?us-ascii?Q?c1hgBU54159BeqV2ry31AHUBo5+L9HGGsDEneYcDeCwWtwtBUVaK/snFkpDj?=
 =?us-ascii?Q?Du1s1tKViffqggtSZigoRMVmbkQxuPtLgPexeWMLKjTa38HBzuEcUABHNnaU?=
 =?us-ascii?Q?pfG7vznB7iB2gLVzN0GqbeC2B7T1GastmFjtFQ+LcLaFWuvSyhrNiqUqPOy0?=
 =?us-ascii?Q?iMqT3IbE8tXVlkzluEA7IJMK+iMMNkeYXJIwzykvYTOlGqxQQz+QWQLxU957?=
 =?us-ascii?Q?20rAZGzZD0MdEJXmPVW4gz4A828KCj+ouYjLRRWvUF7EbD+T4CjQ5DC+BDW9?=
 =?us-ascii?Q?gipbrGl6aquOC/V7ZN2jS5nVXR6EheZULPRSoq6FNdbYkrDcV7jY+vWjTNqY?=
 =?us-ascii?Q?C+4sY2vpA/nCaN4f0URMMx9uwQAOJU+aybZQx2h1gqrj1FmL8NroygHzoLBd?=
 =?us-ascii?Q?EngDYNZbcH7ZDvz0ezVUN0IrJP5P4xVd+rJrwqbH5vKRF64wYlkkpw5Md4kd?=
 =?us-ascii?Q?KYQJOrGRu9tht5gn1OqpF4QqoZXEyX5umTh309Xc4/gy5YVNuQSLf6kFnDmt?=
 =?us-ascii?Q?JbafXgvZYb9tXZSpnhvDek4PTBRjzymskwDGibDqJc4L1XTdAdNuzNe3dZ4B?=
 =?us-ascii?Q?kRKrBZqZbpLh2l0bcixzHqM5KpQ6XzTAAi9xfH1/526GKA2H08iW1WH1tadC?=
 =?us-ascii?Q?at8cOIJak5PkOns89Zxo7BKqmQvQYE657d0YroM502RDXkKqMX+Tn/M+fmyV?=
 =?us-ascii?Q?6FYlZNrbVYq809lE/oUHOhz21A/DzPidzb0JK2/9x3mvpBjnJYoOwsVwTTEk?=
 =?us-ascii?Q?TTcmiunnNQfFZ4xcI9jmsbIBsJf87w8qFlhnHhkPUE1cNF8xmrdKjxjgFzLj?=
 =?us-ascii?Q?fnOp8NEvFnh6BOacLaXc1jEqK6oDrUyEFBTWgfsChMN52HVwyEbrWgIQwxEF?=
 =?us-ascii?Q?2GcgYfAmCSCtdjPXREzzliGswSvjsGweVSYHJnh70VSgt3V5mxbjkJKt9zMg?=
 =?us-ascii?Q?Jqdr5AMgdixPMTi5/Hw6yx7eNUrSZYOf+VmkRv2wJu/RNAihxDtHhXxwUVu/?=
 =?us-ascii?Q?GoqzLhUGk63lUiXLaIuLlneWgZJfwt05LYsQlPppOA0+NEBcvc2PqkGO6M/U?=
 =?us-ascii?Q?cV66e470b/sjLp0pZHZ5nusFGCBL65/Tc9Y0yf9lSkK2El9tVy+ZWtCa7BH1?=
 =?us-ascii?Q?td/6MVZDMOAQZlksUPTKervrj422UL7ehWToT7OJOIk4UA2g21ISNHokZdRL?=
 =?us-ascii?Q?Te1ZY5bxPfMj0OYBta3B60ertIjEPHUUMHWF2l/qv2mx1CWARcrwhqWdyi8p?=
 =?us-ascii?Q?E/gRewpGDuzld0+huCXSvejpnQy5gKwUiRP99t/JR+16o4JgG7VKTGR9tlMH?=
 =?us-ascii?Q?lFa1kaEnIg7z/F72FBZi3AsqMF/ioRm43aj8JOb6BTb+1nDlAMcRrQM47QEN?=
 =?us-ascii?Q?c+a/y32/StLMzgz6jgDsln/l5W9DdqnjAHydTmAmA5nQ781QDUTBwYGNCYX5?=
 =?us-ascii?Q?A6KcIAcPSpKYBeBVbR1HwcogMxe+nHJfKdDPYu8qsO3NR+pN3SgGOmYewpcB?=
 =?us-ascii?Q?6UB/ACXkOw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 281ae2b9-9e81-4e52-bdc3-08de748af1e6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:44.7815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YoVuLbXR5bZyVULSQ4zcyP9bi/42rgdT1KyaJpmtHKVDO5VT7DLLqlLTCw1BlCIJD5IrYYZDd+Fi/Dhua9NCfw==
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
X-Rspamd-Queue-Id: B274D19A9DF
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

The intel_dp_get_dpcd() function called from an HPD IRQ handler reads
out the DPRX capabilities from the sink and updates these in the
intel_dp encoder state. Since the IRQ handler can run in parallel with
the encoder/connector detection (intel_dp_detect()) which also calls
intel_dp_get_dpcd(), the encoder state can get corrupted, since the two
updates happen in a racy way.

Fix the above by checking only for any change in the sink count value in
the HPD IRQ handler, without updating the encoder state.

Note that any state change in the sink requiring an update of the
encoder state is handled via the sink's SINK_COUNT change,
RX_CAPS_CHANGED, DOWNSTREAM_PORT_STATUS_CHANGED signaling, which all
should result in a full connector detection.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 25e14bc0f5b9e..a49e30e3edd16 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5843,9 +5843,7 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
-	u8 old_sink_count = intel_dp->sink_count;
 	bool reprobe_needed = false;
-	bool ret;
 
 	intel_dp_test_reset(intel_dp);
 
@@ -5855,12 +5853,10 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 	 * the value that was stored earlier or dpcd read failed
 	 * we need to do full detection
 	 */
-	ret = intel_dp_get_dpcd(intel_dp);
-
-	if ((old_sink_count != intel_dp->sink_count) || !ret) {
+	if (intel_dp_has_sink_count(intel_dp) &&
+	    drm_dp_read_sink_count(&intel_dp->aux) != intel_dp->sink_count)
 		/* No need to proceed if we are going to do full detect */
 		return false;
-	}
 
 	intel_dp_check_device_service_irq(intel_dp);
 	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
-- 
2.49.1

