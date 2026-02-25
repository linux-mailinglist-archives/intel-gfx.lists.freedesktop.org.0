Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oE2mL1cjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB4319AA3D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E1510E7D7;
	Wed, 25 Feb 2026 16:29:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n2cGkwXE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CD5810E7D7;
 Wed, 25 Feb 2026 16:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036948; x=1803572948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tlqkdvyassL6GNmlrD5NiYyj1O5+dq7895DXaPh1RFc=;
 b=n2cGkwXE7hy2mJFaqoCORbM5KEWGmn54AdKAUt0DUIWfCMeGoi8I+kRi
 uH/pIX1Gi14+ad52XRE/Y5HBz454Y9znA8YJ6iHmW5a2+Omx0Naj+ikBB
 uN1t8HPsxc1XN/L2zo+QyE2brVff3k9RZgpCf7CTOgffWUZLbOB01oCzT
 J4dkg06m8Ircc5OwZRnYsRv3lqJNcxupDhy4PoDnMim9iS0bsiDu17dlM
 20zSiNBMcOJ403CMcAdUw0TJrQSg0FLu2CbXC8iCRIw2Dk0bnGgCYcxFS
 bP3HSsi5kCQaFDcwoyRcflCfLsviTkXHG5iXn4PkKlXDqlix9RcIW5Iv6 g==;
X-CSE-ConnectionGUID: AdvRQUmJQgqTAuWLpDvmtw==
X-CSE-MsgGUID: 1qYDRV5hT4qEYHc9xH8YMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72955458"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72955458"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:08 -0800
X-CSE-ConnectionGUID: FxU/Fo1RT0equ+k7FDVHRw==
X-CSE-MsgGUID: 9/3ZWndsTwCK9JkQrTqy9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220783882"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:08 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:07 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:29:07 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rmegJ0QkawyOhb1z+AKC9tdD4oid0rnzEgSWZekbDbG0D13r/ONT4tFog//X1g90ZpT/9mflax6+tNnDtUSbHBVX7NA9ganmFjd3ZRjMyV32+gLwqzD5qqRHfRwInqZ00I2jk2jswke/kyzf+VpzdGeN+xgyPLL19H2xdgQ48bwE0xWloMUZq8208wOEfjiLWCsOKlneJP4EUlrtNNUGLr3K/FqqF+O1j7k5Dp8P+m7sx8hoxfbVnj4hdRGI6Vltr0L8KPTzYlomy8rZLjfDE1LmjDxCJdPe3N8EbjPbME1j7EiFyZhBHUnB8mFNVrJxpJLDN/vDM3TlYoe5pqwx+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gIvSACm0td03jqkmbhGSlSUqaZslkD8BB0dCKAhoowI=;
 b=RS3n39dQbDK76WQ/m1M3dmajDdic04bx7o1iKUpGcZCBKkcHeof5dql61/rOVph5C4GzqrDFaYeyGs6Ha70xttDx78oSkAk5m4HTMBSLZdfbp9BtZD6o706WGyybL65ucSvPXalu68Q5Q0Eog9pdXn7qrX5g6dmV8eVgtWBBO9pWNeNS1sUwfmHG2qXoymfq5Q//6n0COVxJbmYQZ+GH5EudiqURBsZlB4Orau6CPYjIqrKsTIb4hT2QUdqHyLEXEzWGfy4OaaKGzYpH5v3bXGF2eFC90UpxxUjybTy+Qg3pLTzx4gIn0xWKiF7LGL8yWEx48DbffEu6k8n5K4v6Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:29:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:29:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 17/20] drm/i915/dp: Check SST link status while handling
 link service IRQs
Date: Wed, 25 Feb 2026 18:27:48 +0200
Message-ID: <20260225162751.1255913-18-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: b50272e4-9ff9-4c98-967e-08de748afd75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 6XNHljZB7aIKtVVVL+kjhG9QZOFfJ0OANHyPnfr/P8lNw7QhU8ctP7XCoeG+aRoQNH7ELoer0npIeEr0qwxqGyeAZRzrz23G/MOvJVZbG8u0b4wkpjm5Md2jDnkhDb48Cjlv59OFtaboor9mV/y0qBpcHJqJGV69gcN5XoMsD0oVDyyFHQkQw7rhV7UTvvoGN39QHDWsIGFFt7B/kL2wMF4wi6ay8Vx0iyU7sXrXDPQPdslCLIut1oFWRMi3iZbcp72rhfkjZFYQpKcCKM4UJJ5dnZFbKuibpXJamIbINSFQrnbNqDJkdjEu9g0jPdcHhVxVZzQiFmovFYtbAYJo9YFEQjCwrPFulo0oNEvDyXUoTR/NaCoL35Q+EYk2CVb2cro1bfueZPR5jYdPVBGowUQK13lV22TK3GJofQD8hUEyUfaczBsz986iOQyFqwjAxCKeiBiCTT/tT586O1YfNp3VtjArGBeePAnv3U4zDyYsTQW2wWggmr3yhvuudQG7tp0fX+zDg6LLB8eJN4YGfGTRwd37WBw7I/vNm7XOLa4y5gDt7/C846PlXOkSErCqdEnTT2Zkc51DDx0kzJI4aMfQudNY81184TmBHpB5ApoQZqXwO1X6ODEvQv7Nskj7oEj4wD2W6lKT/8zsT7ESmVnDb72xGP0laE94L//QWyMKDwyN59+QWVzf9zyMy9I4DJ2pdOHFE+yVjZRUEiQfU2L4AhSl02/Vq/qH1n0MrnE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VdyWlpHW+ObnXNnVVD0z2SRODS+T8tEmbLi9VwhSG+Wo7JiaSLF9l1AKgvCE?=
 =?us-ascii?Q?KtKiHtb10xEdMh/loRLgep4KJYDRzN5I9fzOF/tfYN7sP0dF3PUwhmbT4Esx?=
 =?us-ascii?Q?c1VveSRstrIpoOcZ7L3Ol4TbXoxx8sz2m8EdVa4r/smkFuMQtCXJrL09IMRF?=
 =?us-ascii?Q?KxCx6auWgMlP99UazR65ME9KYjcxqcsrzKJwy/aPbJbVTT3LEjwBjgUyuus+?=
 =?us-ascii?Q?L6rlhTVb9NfW41Mhjbulp1Lslt31xD6mJ5P7tlLjumjDIwMeBy7nqGx5Cq5C?=
 =?us-ascii?Q?++p6/xOzx65Qi7luOzMZzF3oCb6WjSv6+NTnkQAXvnroWUxcH9Pv1t3kiJ90?=
 =?us-ascii?Q?aVAMV3Hf2I/tZ1kIyKBGQTx1MfkS0Z4UL2M5fXTcw+FTS5eXAX3wUeFsnN9B?=
 =?us-ascii?Q?r/aKZaXua8A0rm3sCb20SSkR0mzRn7W1HRJnkObCVphxHhpiM/Qr+ybAIH5c?=
 =?us-ascii?Q?FBRHk70qgonP995pXk6yIe6rP5C32W9Splya5YWiKChPkjEvJGNv9HtvPAK3?=
 =?us-ascii?Q?+UWhCchgg9C0ly6rXP7WO4jFnRagU69NajpWaZLwlbYHEnAr+NOafGszQjw3?=
 =?us-ascii?Q?l4CnJVYuzq6iu/cmUJjsEsQKEKsGJ8F1R8qUKPZRUFG/BnxxL2sFo/34RUDc?=
 =?us-ascii?Q?gYql0UhNLFS2ymrXTFXTBbp7CkkWqxPg45/AgW5iYt+KwyB/1qIcJBB/L+RY?=
 =?us-ascii?Q?o8Ta39Y2MisrAJdCSdH/YEgbrMjGZigFHIq5rgk3czga1Y26hV5H6ibN6nDo?=
 =?us-ascii?Q?Vc7LaWWDG07PTUi7W2qZ4uNzef+RhVy8fPqMuWrApx/OWXIyqGyZ0UZ312kZ?=
 =?us-ascii?Q?NZORfASnlxyXjCzzpIhTEMNZZO+a32or2br11aIwORng0VOeUUozraB58684?=
 =?us-ascii?Q?66ZZptHuuf4sOB945y6qIUUGLk3ZFJ7S828VZVpgegPM4h4WX2hRuGB8z73c?=
 =?us-ascii?Q?q+UxILpG6FNsdq9xfH8N8z5IR78f9QQuS/49CPpo/cZOkIa3VWHOmIuZcft4?=
 =?us-ascii?Q?/AUaqlIIn9BwQFnGyMkOxHydBeWAXPRztWjCua+XEe4aYhlQ7Lg/id0kiq7+?=
 =?us-ascii?Q?AxekTVqZPtur+YW3O+98C3BODW9eSBz6xoQ1kqkQ3n7uxB0R/I19mkKAlSfb?=
 =?us-ascii?Q?0UjxaGRavNVbhg/l4j8w39gEChgZz8ZXNm3jwMooE/Dw5KutsCNVNKl6j4Vr?=
 =?us-ascii?Q?8zTqe/lZXaykZP9RudrD2iOpXi9EU0QKZTbwLAt9yP8iTMdzcsE9qVru8ger?=
 =?us-ascii?Q?Qi9wk1538Wu0x8aFxXwUf2DxSkdvE4ld+GSjcGNh/+/ZnSkLlTgZijIl2t6w?=
 =?us-ascii?Q?nkNr39hL2xcgeC6E4Xq6oBw/bCiEmlT/c5VZ5MORZZjkeiBzBj/M80pdoabT?=
 =?us-ascii?Q?bLPm1X46wqXWBumXPxo1v0/Ot0HQkDuYBrXQbDuTIMb+2NcK/TuXjOpJazcV?=
 =?us-ascii?Q?QvQyaabXcQBIWJ+7KocTVgK+aN5tz5VkXz+jFbBCDKurDtsJIv7CBZPibtas?=
 =?us-ascii?Q?8J3ADANzpJcYDfUmGv0nF0xivBsxapV6Oqy9W3krEmMU5xe02ow5ahLWAHJM?=
 =?us-ascii?Q?Er7Rs9erpKz6GBzSDoDQn6+FFtnmH20I3iA9dJw5DHtsLE1/9SpoOMuha8tl?=
 =?us-ascii?Q?0+jgjiwBEuy/FTSxKJv+qSZghh6k1BKXpgeWYT0l/EDwnUm4UlHJiFtA8rQR?=
 =?us-ascii?Q?H4KK5ErZ8PWLFxoB2UseKoRFsmDvuuVbX+KYCCr8f1eAjb3gBT0c2LuWh8oI?=
 =?us-ascii?Q?+TEAL4JyJg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b50272e4-9ff9-4c98-967e-08de748afd75
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:29:04.1899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yvp19xZhPnnFRxYsjWo3p90l2m5s53Lw3WxsgBVTyZ/H4IUZ0Cm8Ld/xXvhKxLn3m8L6Ka+eNxcEg4KLRWKl3A==
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
X-Rspamd-Queue-Id: 5DB4319AA3D
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

Move checking the link status for SST to
intel_dp_handle_link_service_irq(). This is the logical place for the
check which should only happen in response to a LINK_STATUS_CHANGE sink
IRQ. This IRQ is only supported by DPCD revision >= 1.2, so for sinks
with an older DPCD revision the link status is checked in response to
any HPD IRQ. For newer DPCD revisions however the link status check can
be made conditional on LINK_STATUS_CHANGE.

For now keep the current behavior of always forcing a link status check
regardless of LINK_STATUS_CHANGE being set or not.

This also prepares for a follow-up change sharing the link service IRQ
handler for SST and MST (on MST the link status check only happening in
response to a LINK_STATUS_CHANGE IRQ).

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a3bcc5de37442..826d3d63c43ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5860,6 +5860,9 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
+	if (irq_mask & LINK_STATUS_CHANGED)
+		intel_dp_check_link_state(intel_dp);
+
 	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
@@ -5913,14 +5916,18 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_dp_handle_device_service_irq(intel_dp, esi[1]);
 
+	/*
+	 * Force checking the link status for DPCD_REV < 1.2
+	 * TODO: let the link status check depend on LINK_STATUS_CHANGED
+	 * for DPCD_REV >= 1.2
+	 */
+	esi[3] |= LINK_STATUS_CHANGED;
 	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
 		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
 	drm_dp_cec_irq(&intel_dp->aux);
 
-	intel_dp_check_link_state(intel_dp);
-
 	if (READ_ONCE(intel_dp->downstream_port_changed)) {
 		WRITE_ONCE(intel_dp->downstream_port_changed, false);
 		reprobe_needed = true;
-- 
2.49.1

