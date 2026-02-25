Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKp7LF0jn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2183519AA53
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C70110E7D9;
	Wed, 25 Feb 2026 16:29:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hcb9fH/d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E8810E7DA;
 Wed, 25 Feb 2026 16:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036954; x=1803572954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=vW2NEAwh+2OTz28lM8V/ADh0Vc4R+RUuLu1OyD5O6H8=;
 b=hcb9fH/dfYonv62Ys+CdzP+BjOyGUXM+hohdW40KtgqJsziB6qy4Axu4
 M6pgHZhplQjZucJZ6ZeJv/RnYcPzI3OS6b2ZXFaTWkha3qWWqZesL4XgS
 VyxmrSYnFLrJlhcUrYOphKJkwIiG1GhhSN7sS+9CBA4Im/CqF3n3nMOyI
 kY3Z2IyupbAOpzH3/gFikVNDCKvclrF00p5WQ9mWa1gT1ZZuQQyakmlJ3
 biOlsocsyCi39/D+hMgVh+Ghut6wMHzi39Ub4MQkgxkENAbnVDbhHdMW6
 q8nKEx0MA1ZZytl4sOGri2wP7KcVPr7+fH80Kmq+gIfr6rzLjWPVlJZOk Q==;
X-CSE-ConnectionGUID: EGgJCoO2S1esCwcFwR83qg==
X-CSE-MsgGUID: Y/22QV+fRnWiZ1zq7LFV5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72955467"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72955467"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:14 -0800
X-CSE-ConnectionGUID: G9StxfPOQq+9IbI0L8qqEg==
X-CSE-MsgGUID: rm//IDCJTq2FelD2GFRf6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220783926"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:13 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:13 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:29:13 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U6aexcVlmLNNhJH89lsUgQ5K2ElJnZUxLdBGASKFRU3t9+ZnjM1hZtEfx7/Pdb+jYHRBGYufBGC5yAq+gErMKBOZU1po4gKmwwnAMxRKdTOE8Z3ECy4cV7/6QD6irkUboZmQRJLELmFqYMKiFp5dpgp7UkT8AFdST8Us4a1Qg4PMlD6EeiwoGHLfDhjyfDlF0iZW9G1RLjnx6QtmTYKx5XxFbOzfMoKMjIy7WuOTnu57dv5YlQYGMyzfuAqvMEaaZGv+C/MwX7kiYQwfgs30jwm2r7F5fVOYEgU1On9jW8KiDgUO8RVEkXQvzewDwgIBJBLHbj+fsI7qgpC2pkG55Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=STjssrW5jui+4u8KNrsk0LDCCefxeUaadSz0jZQXufY=;
 b=lF2+u7TEzFUZCQMLmguDAArMMjSEVseGmgtLxeBblr3HD94k03q3Cj/mp1N4+/i99UU6XBUQuIVugPSIuMqphj5DZ/KTHVWB67QO9iTBQhQ+GVteMgwnobNaFRFUggVDbv40uuFjVjXomSMSfomLZJYNNdjJB5KAEcSUMjptN6tuSNgCnwOyUdOR5yUHiNrslE2MZ3FWKwUsdHi2Emo8mpDfOwqXXNCHk1rtpf0NEkIB1+Q/gEa/5Vup/exqlbh4uODHhKe9jLLG/D3c+/J5qTYIcwofBOH9b4XKSsiVbRAoEFM+KvGUmrwWDtKR8nuS56mOw0/gUDtEvOKl+nKaFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:29:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:29:09 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 20/20] drm/i915/dp: Ack only the handled link service IRQs
Date: Wed, 25 Feb 2026 18:27:51 +0200
Message-ID: <20260225162751.1255913-21-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 97b1e91f-84ff-4c36-eee6-08de748b00b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: qC7yu0ThV/tVRq60s/dQ02n7C4g6atcDla+OXGwnL3zQNQZq/4YO4HDPovuY7snd2EUf8EXipmDzgXfjGaWPgz3yc5FfJ3wKltN/rN9aD43x2+z+nc7oSdG6a3ha7SLQ8RwT386YQvMYIsVLt3DRmksDa/JlIZHHH1xEyVXXWtJ7k2LwtDHWhHvmoU7PFEujHNxWFbC5HQmP4cjLYgsMRfJiOsu48Gx2I89fzzkVsQyeH4XfrflR5Wn1CEtbA8eM6zaLk+PLx4UgiWMFtqBrEKfpJon2QiMvAsIdLpZy0M+z+AI0mhKuPQDJ786UL+TMsQ0n+DOKKub2ROWRDj8Tb82ZQWahr7AUvlfguRJRXQ+B6gYd5tu27v932Ae+KHloK/VSE651FoZ/332asYloExsFv4E2W4m6ugpEN8STAn33eD2JzkEjGbGPa5vn9G0Bw84O+8ebRuYtm8z6gRfziXpQKg18kXBvGzFtlDdm1w5cd+Lkm61o7/UhEIDYThsdySKyK1/2XojF0xwoQlb6EGD46nXf0CsQycnU9BpeuG0KW8I0ctfrp3UHIc6tlWtOBBQuh6ctp+al5Xath0dy6/QAtnAXcBuWXYv8eUJ+J/UwFflrzUdruzVUZxZBPT7RcvzOxRz9TK1TVND0z/DbqFFjpknkHd+RHOkWDAS1QEVgqpHBQ5jr8zylzNTID4Z0i0HH8HQ951auzf2R1ZH/NSPcwd6ZvKzD3gBG1xU+kRQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rFn7Q/yya6Q6V65UqwZfrNpQOteCsYS+yarxorzbadUtNvGU1zTEPDuEW0q6?=
 =?us-ascii?Q?6Qoc5N6Yl3zZSqlmoJ/FZdI2q1kkLcxt2iPdrG5yjjc4WAe25rL1jpNVEmEr?=
 =?us-ascii?Q?/meyzzh+C0kHRLFPbFTmaUcC8Qt6kguHvNg407LTFDO8lh1Pkkzp/9iEJW/u?=
 =?us-ascii?Q?mlGa54577Lz97L6lGhy3OcSjNLrkHAb7gg2QqqwDLgG/j7J4ZIhDxwFRWkfU?=
 =?us-ascii?Q?+TNgLS7XQN+rAidAuaJbpoLtT3pJ0cnNkHvE1nza5grPaoj54B4YAgZZLvMe?=
 =?us-ascii?Q?gslyB4uzqiR7Qwl48GZYWmEFV9jJp9RRbVuccLRqXLx05H+DOZyTz2/lTPIf?=
 =?us-ascii?Q?JyREm/lR2hxw0OFpK5lwT+SOYlsqS2rr3g2xQwbo7iqXDH0XB5EpR9F0YEAB?=
 =?us-ascii?Q?6GjMYe1PbbKvjMXWyVd7LFAiioLUD8UHy80X3tE3NHrWssMk7G4jk5Yqdx3j?=
 =?us-ascii?Q?QiIVa8deSYqWcPbyogoVjK1NfJOTR48l8526EMBV6ZtI1T6ABa0MGhaEcXlV?=
 =?us-ascii?Q?va/JY3fFqRbS2Fc8O9rIke7V58PeNUs5UsP1kbr3gHEgejsVJJx6DIN2nNKo?=
 =?us-ascii?Q?iMk3rwFnKSyqpY2ayr8ZAtMM373Fy0B1+PEFcsUDLf09GgaPXWwLBsRF4oTy?=
 =?us-ascii?Q?IHy5SmUlnqTdMKghT4m51g04bx247KW/e8G7bhdNXJ2YBnWOuV7Xia2wFkcH?=
 =?us-ascii?Q?neXqJAfHCP32LKVP2cVJsCT30mdEv9XrpPWJYHuriVfweKC8m7YKjnlVEh8f?=
 =?us-ascii?Q?ymaQFo5kXuJU/tea775GEj2DR4UzOQ9N+OIIk4UnUA3Dbk+mbPXSV/sMq1L3?=
 =?us-ascii?Q?aPDk91ep4J1aVAc9lQ+aeB0D6UVhgGF6b8+E5+RgWGIJ+EFt+DJFKoCqMKNz?=
 =?us-ascii?Q?lkO5PNPTPyhIQ+CUbSTa6nTil3zvOcM8wOtrSQ4WRGhyOF1pwZ4GVXLcMDU3?=
 =?us-ascii?Q?SA9Y1lC+tsDt/6/APOSRcIh5zpEgaDJTPWYL1ypzTQQjDppVfu+yXijFBH2w?=
 =?us-ascii?Q?du1rF88B/WOQej6OJXFr/gJXuk0BkveInmd85FG6q2NnrHLDlgcOV7fgrHcP?=
 =?us-ascii?Q?cK/67k30yqGvsTT34tXol+RfAjI2zBEBswk5AyIBGQPhMmUlrgaHgY388PRV?=
 =?us-ascii?Q?aFdcWA/rjX03vMfmgyVAUYQbd4SuEqqskQY9y8xGB3YlNfCIiuUV1eAsTEi5?=
 =?us-ascii?Q?3gI/n5Bvuoo83tj4RlxmREnqP7uqbUHUeYWkb5i+aHkTWn346c4Ott+5Dmr4?=
 =?us-ascii?Q?DztveNuyYoJ0UwzNPiOAfXHSWhOuEJFccVmxuRe0D0zOvUJ1JvxiVjiEKNXE?=
 =?us-ascii?Q?kImLY0LPKQdv73lDAeWwZZbcDrHvsgPzyRYoiGjy/DJx7tfTSVkuUuOLnOPT?=
 =?us-ascii?Q?US/Pvm1JIeUeGX6tyUwIP77VIzHfpWMHbzzWZxK0FOvE+dzIeYqoP+zgRXwy?=
 =?us-ascii?Q?bkT1W2+hY4ryMSxhh8Cn6JFdOo4zKzbUCdIC0bf2xt4AFWuYp0IPOJcAs0sz?=
 =?us-ascii?Q?lxJACjK/zS6TDCDt5uD+1bi7dbURiv5AE4OBx+G1eUKyQuuwgaHrV/Rpg4sV?=
 =?us-ascii?Q?qVY81+QPVS6jw+b2ljs5fR3J8FkhHXIne/83C24okuCsBKNOb6wM5vhL2luJ?=
 =?us-ascii?Q?WNf/3Q9PAT0Jwm+65KBIyYKHn+eLXZoR/kkGuvbcI5dNlDZU6/6dsbCxPcJv?=
 =?us-ascii?Q?9s1Sk9Ih3CuOIJzCNpRqBqlIg7qjK1h8HKnj/BkXy9PtBUcqW0h+DJFF1sch?=
 =?us-ascii?Q?eQ3uFZDOew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97b1e91f-84ff-4c36-eee6-08de748b00b5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:29:09.6394 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q4Y06EYgmU7Hk+18goiC897pNu+KCO897atGFaE+Ysd34Pao7cDArEIkzg0Qe3EOa4tPcmTcDMXw9eY6qO4Tnw==
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
X-Rspamd-Queue-Id: 2183519AA53
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

Ack only those SST link service IRQs that will be handled, similarly to
device service IRQs. While at it add asserts that only the known/acked
link service IRQs are handled both in the MST and SST case.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 52f3b1e88599c..09367205bab76 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4924,6 +4924,16 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
 						 DP_DOWN_REP_MSG_RDY | \
 						 DP_UP_REQ_MSG_RDY)
 
+#define INTEL_DP_LINK_SERVICE_IRQ_MASK_SST	(RX_CAP_CHANGED | \
+						 LINK_STATUS_CHANGED | \
+						 HDMI_LINK_STATUS_CHANGED | \
+						 CONNECTED_OFF_ENTRY_REQUESTED | \
+						 DP_TUNNELING_IRQ)
+
+#define INTEL_DP_LINK_SERVICE_IRQ_MASK_MST	(RX_CAP_CHANGED | \
+						 LINK_STATUS_CHANGED | \
+						 DP_TUNNELING_IRQ)
+
 static bool
 intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
 {
@@ -5016,6 +5026,7 @@ static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8
 		    esi);
 
 	esi[1] &= INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST;
+	esi[3] &= INTEL_DP_LINK_SERVICE_IRQ_MASK_SST;
 
 	if (mem_is_zero(&esi[1], 3))
 		return true;
@@ -5554,7 +5565,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		ack[3] |= esi[3] & (RX_CAP_CHANGED | LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
+		ack[3] |= esi[3] & INTEL_DP_LINK_SERVICE_IRQ_MASK_MST;
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
@@ -5562,6 +5573,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			break;
 
 		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST);
+		drm_WARN_ON(display->drm, ack[3] & ~INTEL_DP_LINK_SERVICE_IRQ_MASK_MST);
 
 		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
 			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
@@ -5866,6 +5878,9 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool reprobe_needed = false;
 
+	drm_WARN_ON(display->drm, irq_mask & ~(INTEL_DP_LINK_SERVICE_IRQ_MASK_SST |
+					       INTEL_DP_LINK_SERVICE_IRQ_MASK_MST));
+
 	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
-- 
2.49.1

