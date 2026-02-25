Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oP8NDIUnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3AA19AEB2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF66410E80B;
	Wed, 25 Feb 2026 16:46:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ElTc8qK3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D5910E808;
 Wed, 25 Feb 2026 16:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038016; x=1803574016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=dpZoP/Oh3quYo/DhbjnkV9VIc+0Yulkxk73lRgLIKwY=;
 b=ElTc8qK3igwE227199uPe+IgFUOIu7oZGLzUWRn9Ec39DG4DKVMQFPQ1
 l8fcAMrW9Lg36BU73TqyUTLaXp7inMYMsYLuXNN7lgDnw3dFt9xcYj25p
 q55qo8TLa3lUKURCwZdkbSdiTZE1iykOjOeF9Y/VNW3orCoNj4NzhovTh
 NAEodjVSK7iItgHjGdnmsKvjsZ4Fo0GmQHn+TPShvhlLYDRP/PqbljD6N
 9xxPIub9HgMYVXecRdtIqReyxrhTsIShYJ84RkjlD6VHGc/bc1I8f2T0f
 atJMks/jl2pl8eJG5G3kBsTNxV1NFYcuCIPULJUShvpOJpbOza/xD3ZXY g==;
X-CSE-ConnectionGUID: FhRoVBXFT1mAqyatxLNQnw==
X-CSE-MsgGUID: B3MQyeFaTJKYJuen4jQGiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73259829"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73259829"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:52 -0800
X-CSE-ConnectionGUID: NKVKPZEBTbK5G5SSkO6jPA==
X-CSE-MsgGUID: hbiZalF6QHWlDuZmPXJuPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216433303"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:51 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:51 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:51 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.26) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ajG4MJcCqZ7RCnNxI9okog+FUvSuAYImLEVjvpBDBkbWq/di3+pmdrB7U/pwDlWTwAU54XIKvFpCLQs5e4iqzVb0VxQTrFOU29BCHpKavYGQ42cCGXZOk82pJeyCDG1xEATZszCv8TR5Of6FD68CTqXNJ4PTPxiFJe8Gcfa4IAmpro5naT9R9kfyyC0AOHC3Uyt5rJyKGJWOIO1l4j4dHwC29s5Ne4CutBfZSD8TJExaKFAh6kX0Vg68yKhqnzfr/2U7mnK1YdaSaGbiguZbZ14sp67ujo/rfxLBZUa1H2OZlmPm6CrukLhpTgJsO1iJE6aG0r922qpdNzyHIfwMbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mHqTeBHGmqCg1WRGvS22Je8TNJ7M/6whhIEl8y6DqwM=;
 b=DWMfeYgqTu/FdgS2zGaoKhk1wGluwwS33NI5xNJtIijumHJO7isqvtkRa36sHvh5WNmVJW8zP5fA4BC5mL14BAZRiN0YwH5aNdXN7rIH4ya5Jg7bw3DzPdkX0BOd/PoUw4wxgBD3O/hHTMC2XIhxwUGGfz4sdVzJBVHgt6jPzTFBdcX1v3VWpQVm5Kv7TUPnVSQlq9lq6tSuZbWgiB/fNIOHTuPoFDcPmtLVwEvOfe8JHrGk5jvKmeejxUtXMBRXfkI1Lz2b8tpPfNPc7ctjqbHWuLhZEZP8H4EEf+Y4Q15z5lqH+faV7djt9Nxi9c0kM29tXY/f3D2gznc36kjC6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:46:48 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:48 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 08/20] drm/i915/dp: Remove the device service IRQ handling
 from connector detect
Date: Wed, 25 Feb 2026 18:46:06 +0200
Message-ID: <20260225164618.1261368-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV1PR11MB8790:EE_
X-MS-Office365-Filtering-Correlation-Id: fc51af6c-2bf6-4476-409e-08de748d777c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: Ie3tS9ca+Aq3qV5oR/s0WKJ0ho+U5waW0hd424AdeSDiOpfiPKyb41vaulEMM0rLLi7oxETDURE5yQISmb/SoOjqkHphDL3E7awKu32D176KY6VVE9xBaZHwjYkZnUwuD2g+NFGEAG/x/7/WdP3N7MuAx8dZZwDqWf8oLls9lCn0/9v/V+cYSwASpzGwXOq5p4LbJ4+00BwMeJ79RXrETs5AFNb7ktg9gybksWcqUCIjIxEp/W107rSuDQPA0uo105i7F6NeVAqbYCGgpF1UtrT3ObnjXJXebChi0MzmqsGOMOgb69T5Pllb1HIDRFAfKXXp2BkbShKU2kzwZ7wjbI67mB5ebZjealPfKL9dx5TJ82S6KEuT0+yjWvT+9tfH8g2uCVpMdDcckuTCfkA+u2ms8fc1MT23hLWXvkqyFbX1ky94hWM/WR+8a6JY10nEfbnHhCQDL+yS4VvoRAKOKw2WabhE/rlftvBG1Y69etzCw4T44nFXHYgajF+ykluB5sDiD0Ba0GPs1RklBj0IUBKXvQsj9JcES0HqVaX66Rhy2/56Pz1/QBQ4HGezJ6dRQP7uLc8529DsUN0uqLHAjkY2COJ2iVlrM5GUL/KJy4dAVaioJLV6ysiKPpjEiNRL0WaSZLv0OQ25Pb5lqkjIBKx6A3RDiboOX6prN13zoWgIhxctnk2HaYn1Ifi3OPFWWf1aUW3RLiZabLsphnb2GxNQxcQ5QIumclF2f+zzEO0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sZhW9YEdfiFGxae8K8GxkU2GJ1ilxpc88qPUEAWmvwSRnn4adgip69RnhE2/?=
 =?us-ascii?Q?/DugNmxsxOj5YEur8QWo+aaX2aIsV7vM7xIfMMyVb/J0yFNh5PSvkaiywVuf?=
 =?us-ascii?Q?CkkducffeclmaFYCDACJjmSXZwH9aPDy52DLRptJHWeI3mI5HTjMCFbFmOpj?=
 =?us-ascii?Q?8Wf0ev/4y66BH3xaYevz3QiI7kTE9wrQpCEOvB4LmwYc1ohMgvJvb0oiUHpR?=
 =?us-ascii?Q?2iE/drr+Sj4eS0TkV3849Tb41dWr9+8lgUZqsBp94DoG0RJAkpJ4AltuyNsi?=
 =?us-ascii?Q?D5iME48ptswpzSNn4UMNi90ItUavt8WMP8u/XQafyiINI5OsccABq/JDMjko?=
 =?us-ascii?Q?6flukpBOlwfQ9VY8RV5XolcS+hzJBv/yAfJR9IarF2Xv0kh+ETNbjD4eUrBf?=
 =?us-ascii?Q?t12mfLlUR6SBIOlPC/rXwhGt5Gy/FTGOp3CZdXmqpNr/cBAMcCzdkpKlv6KG?=
 =?us-ascii?Q?g7asQpqDX9hpwFaqfR5HzaS/LUzkp1e345J77wA+e5OwAdFVG4whHdyPPWxn?=
 =?us-ascii?Q?/x4EnIzceevL0sYQPbpvd3FyYv4InFx4mrF78GbXiC3FYBqZvZjH7Hxexp/s?=
 =?us-ascii?Q?5zWE9FpIq/R08jZrycJpSnsF8bFfu+eJ9b3OCkkOx9q/SwcWd61BCaRFLP76?=
 =?us-ascii?Q?DmVf33E1cfUywp5thUXYHWDGw5MBu88bb9hQO0fSORBWUcAh8fUnEoXY/26H?=
 =?us-ascii?Q?0IRKJcSgKvdnl5oBjwc9CR3cUG+xwsIEvUVdMuFo5tvs+ITdMXnpee1Gaxxq?=
 =?us-ascii?Q?nJL23B7n5VaYCshWHoF+fB7NQYFSEs5GQZbr4unBBwWnPGp3AOxGszQ3UanP?=
 =?us-ascii?Q?apGH9O4fqfBjF2WvAEMRaSrwyu/MZ7oo45qY3QR+NQsd45DLzqqvxjZ0A28r?=
 =?us-ascii?Q?G9apwbPxV67XaxZbouo9ErpGZTRH0rAfPUMG4TBdezN5pJbVmi4UTgtcrqPb?=
 =?us-ascii?Q?V7tCS9GsA3DMU6EXxM8PXYgbOZkq2hhUks/I7CTJ1QuNOUnKXHb7PjfAZAp0?=
 =?us-ascii?Q?KbthdVXr3l8rinVxFdCCiI8L5b+T/5WMa2qSNEEY5keQyb3XmX1pDGoSkmHm?=
 =?us-ascii?Q?lDE91K3IMYah1LKFU3V1Jiq1Tzv92jKAcusawSwmdH6yqbrHJy/hX+P9PEBc?=
 =?us-ascii?Q?F5eBZ+jx3XeURCBqAttiIKHUhrl9L5MA+4h8hVIAvGM683pidSs4GtgPzcnd?=
 =?us-ascii?Q?Tvpw9PzbJ+uSckmm8athr7wfk7XYzub+pRfKO31iJ6/1QmC0PCi/X9jIuPlM?=
 =?us-ascii?Q?BnoE4jdpDak2YHig4n93wi4R9rbmVjl69XSQ8jUyKYpQgKFqjFdpKyATUw8A?=
 =?us-ascii?Q?/VDp2ZVDO1aqdeVcdZ10aNt1wKauK2FyBuogFGorBjQgvdGU0OmIn4If4ueA?=
 =?us-ascii?Q?skq289pOeISDaITV6c0XiiGQoM9ysl5jOiz/cMHJmlkyV+M+SNL+Kxffh995?=
 =?us-ascii?Q?eCkBQNUCO7PvCd68iFC2O6h0qYxHXPCLMhUlcR9LDVFHjWT1vAiCKT+nheGI?=
 =?us-ascii?Q?65aKnP5Jyd23UdTZy0gfrrGobb4vqaZ4qGCulw1n6vr3TY07PYNwHhKc3nWc?=
 =?us-ascii?Q?OXPAKoKa33Q+1acoE1jdCWlwGoeT+GTKkc3ngNzyHVYk/jMO5hsv+5Vq0nyA?=
 =?us-ascii?Q?KCAIEbaq6qftXngSHNo3HkkjAU6/pKh7VsdA12NtxYnL/U9gFBi0FE08IMpG?=
 =?us-ascii?Q?vcKeIG8GgOjVLgo+joIyoYKC9SpZ8jx7FIYuPc/Aal09sDeWKIm5mB+ikAZq?=
 =?us-ascii?Q?5QtDBPvkMQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc51af6c-2bf6-4476-409e-08de748d777c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:47.9605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zh071HUuvbwOxKWROSRV5HEsGFOnMGlPXTwgbPGPpdRivKVwy/eWtLACd8UzYv9BOngQzTGd0STBuCPddx/yHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8790
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BF3AA19AEB2
X-Rspamd-Action: no action

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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index acef106b041ea..1fab6ad42d02b 100644
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

