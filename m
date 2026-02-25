Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eGH1CF8jn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0CF19AA5A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9EB10E7DD;
	Wed, 25 Feb 2026 16:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jqHJFDpd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D584310E7D7;
 Wed, 25 Feb 2026 16:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036949; x=1803572949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=XfpIe19Tr55wwuebgtgbQLNmKypBCpzID5EEx3q5Qgk=;
 b=jqHJFDpdsAv1Vl1UWg4mp5xNinTYA+AsMjgxleGd8MYuhAKjulP97PD3
 yT6ZcbHn8xYRfOzAuTz8wdXKGsaonXrYvD9EEemHWz7KdyFkuda+16QHg
 6OIgcDq/tDq1dDk1/Cu3AjfueqoQHupCbhB/bQGXio4mf9nkDwbMygH8T
 8Mxi6Bg2Ok2aovlXrexmePN4uGdmiKRwU+14Xf4Z223yVwpzqBmcgpL4l
 x5wL8eIGpwrxmR9Q0/AjRBm24k/yErpwESyuVRozKLn273PmKRwtFVW58
 i18TOzqb1QY5b3zsHfRfnG6CxO0xGUNdP9SWH+mkdRvg+pH8TzKTwBhxb Q==;
X-CSE-ConnectionGUID: orRXuKsIRTuiqo4wGzGZBQ==
X-CSE-MsgGUID: x2Oioz34S0KFjRGvlSsexQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84175904"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84175904"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:09 -0800
X-CSE-ConnectionGUID: 4sQFUIzxSfiSKAsF0eAr9g==
X-CSE-MsgGUID: yPZ7yaoqQSi821rh93/lUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216425983"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:09 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:08 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:29:08 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qUznyUeysf9tAtC+2KNW/Ho1UqSvMe5BaKYpzpDX9t6VnTstuSJFWoyuXvyzUT4nEFS506GQBUGQnyp80hqqSvsj2hVeQrRSYdd/XII6FvnZRFxPiyUwGszecJMo3OlrvVrr2TzlHcZYC6ABNaCH9W5r4t6qffC73ZZVGVjNRTlXY1cKA3jr8nYbaF19f5VL9Sv1kIAZic97gDFA8Iyyw5oU3cP3inbut8bpxv0p7Lk/oa6lBPPcEKr8ZJDh/ekLB9VIEVxaWHpCnTML/sIACdeiATWkZBrXIakGjyoFviP7fQG1O2hpAdMmQI5deT7mSXTTqym/KBqe+SeARzp2VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3th0sDPXNwKuu+p1gBWpAAr2PRyciUqVU1sxF+hSe6U=;
 b=FlQc7Oa1GkyZ2+bG7nl/S3hyvBOqnBIJ+cjTEALz4LUUfB1aNVKRBw+kA1idwokc7zYSenItNff2iC3mrUW7Z8FLOlXKsi8qy2LQVWhuLh7alkNEajaZcnKXuhr6ulIUwYihPs+pBG+LXxtVKM4nPiaZmYUputkMfqyDDtFsB/F+gD5j6OhbjB3qECB1GKM0yL9+Ntfmf33qqzibbWyS2glkHO4jO5edJc5gB//9f+I8rNfnHGsFNkJN7LTDIQXvTCisVyaucllPPtyUg/vnoe2wBBjYrZmo00y8beF28QNzsRSkRr5npZqvMu9nEz5ZcQxYSkhWQaLKW9wvHEjxpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:29:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:29:06 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 18/20] drm/i915/dp_mst: Reuse
 intel_dp_handle_link_service_irq()
Date: Wed, 25 Feb 2026 18:27:49 +0200
Message-ID: <20260225162751.1255913-19-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 78fa07a9-c28d-4826-ed95-08de748afe88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 1M5IZDAxpBp788hMSe6toPhLZe+05aaOuhzQX7tcpzHH54BLBQvGTsE/l3BpJlsoFerhdbRZx08EGjh9K3hYEPUCg0E/ygB5PQwdKc7hlQKJ9XqQu/Y8IfIgMiPgnE7I7xxeWV4WM+JtI+PU/STCrha/oVURbUqPLdRD5QHTs6p59CsaML25351/k+EjNojy6Im+rod66K4VUlQ0LaeXoKXzRryUcYXvdTvilMxB31a+m8ELVShCXYkTwwFkm5Kq2QQzJS45Z7P5mHCYRtvws1uHJ+k87efHSUwEUVrCXxLH9PLfITCdJVG/+u8g26CoQiJ/K+fi7OcNG56l5RqxD3JhLjeQ41THZd85ojuZAKkxGIjt9yT1Pxu5wzMc879rvjULDqa13ojFGgn7ve8f92jCN8A7zHfuWCekM78HEGF8nQ1U4Th6G21j8HNPU0pd1FDX0OgeM7JEMOtvNd0pHCuN1WEnVVpmDiPS9ZVH5xKQCfplxkrwTTDX1LiSxZDGndi5VI18tkVMCLLhWVnbR8t6MoEehITPmaQsGFxN+6upxeQ9x5yp1krLKfD9NynyTDK7TEI06zWt08Yno0X5Zw6Pz/F4sleF84NyLhFzq2kdnFuIO4T1jSKSzf08L6Gwl1XV+yfYddyODnCxzSu3NXjp+2q5d2Nbt+NKa8/5F6jiSwhJ/AiSbRpVYH0GfR3iVYlSSGYVajvuFZvHGJ4+WCWkIj8tMgtokeTG8vIzvGI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WrIRvMVDdqfBqdnPJXPL+GoRLVvIyPfcAbRS2+O3MuDsLUhCgSEkW/2TVrd1?=
 =?us-ascii?Q?c1grWqxva7l+c+0SGfbwwNv1HyGxEkHMl70qvBIZizbtMjnxD//VYOydfHlD?=
 =?us-ascii?Q?dw2wAEyO1QHKV0WIAl5qKRJW247h++WCJk9wl68cyU8VvYNDHBqkLNBlx0Ir?=
 =?us-ascii?Q?I/Z00HKxDSXQaqkWXLCqy17WNZUK4ig0TWKlGrb+elPk3LE/0lp5UG2xdxs3?=
 =?us-ascii?Q?V0UXBwoUeLwIBMQ9oSeyNwTz/rQOX3Yc33qTTtz8Bl6KEjZpkobPIEVGg5Il?=
 =?us-ascii?Q?gvSi4vW5+5eHRmfFld1y8AnWJj+BK6qvYrr5EkISYKLDMjX1woU39zWnbQgL?=
 =?us-ascii?Q?ZD8DZTDtZiiM6jzyHN6RMQGGFnBLph2rW/shKenF8vc8Fh+i+wmVyXdiEsDD?=
 =?us-ascii?Q?V7u2ZFNJnCi/7Ygj/3r3vZ8aVKGcJEngGsKl2BTrbAihmbZxw+sVwOC3BtTM?=
 =?us-ascii?Q?jmf4iNLs6RL8LintAm37P9jO9gJ9yC0hWLbplitmwxhotwMw5HPWZ3jqwHxW?=
 =?us-ascii?Q?EAJomeQcoBYGUzs+L4nzBL4d0wWXC++LtK0jIHjcLMRSMF5W6AGk6y1RrF/H?=
 =?us-ascii?Q?30N4ZbwAHtEIwEQnYnbF6cauOFvNXw4XzmPQS8bxQF7z+9iX/Z2cdGTQ9ZRp?=
 =?us-ascii?Q?Dpm8cNDQ4YwqjVUqu2aatdZiTtVcBLJ6AwgqntoURWF2Ohm0oHFYH3pUJrgQ?=
 =?us-ascii?Q?vc3Tr1BM4HXElG8IrzKa/MCqYFTyexyug9bwEQ3cBU8+OG1J8LRqKLwqYJd5?=
 =?us-ascii?Q?8QZYOq2OG79ek+UPVIe3zFMF5Qjjsj34BO2QgFlqL/gcX1qnYceFUZ09SLI8?=
 =?us-ascii?Q?MTp+viufZbTduvlCilAt6FEbxQBdA6CEUTEQ1TMbgxtEzEDlzTKzsrJ6sj4B?=
 =?us-ascii?Q?HaZG6B73ezPk6A19sRXUoxMsVd2X/M42YNmc4xBBGKt9ie2mTCOZtWL4MFn4?=
 =?us-ascii?Q?t1D/tY6zHOdRAkjhKUGr7RZFIL8hAaiB3f8aEHsGiLCh1gQln3xMtSEaFfXS?=
 =?us-ascii?Q?v8JrprKDW12m5XDYnlsSUGyxkBCX9n+GI1niguVxZ7TqukQfu7fy3MEJU5gY?=
 =?us-ascii?Q?zD2awnz9FtI6qyCsoYpq+7uE6egc89u1vAC5EE7kBGYz1VjiyXw1sDeLStGr?=
 =?us-ascii?Q?6X/+LSaQpigNX8/xXwWWXRud8CzLIvzZZcL/lsn68XaKbs55gx0qesx00RBU?=
 =?us-ascii?Q?EwxKXYY636TpOw7beMQ8wZykjKqLaSkRqwEAT1CuI1qE0VhacXjIrWSVAX99?=
 =?us-ascii?Q?dkTMzRSOV2PY74W3FMBZv63LLAEvaYxEvUt8RFJsddrhDmyxzxImDEsWtoGY?=
 =?us-ascii?Q?G7ZO0z6tfaUEWl9WodPqhZv463aBYBOmN4o7f/V8TQdvzSRf2pG6eCmcdXQ+?=
 =?us-ascii?Q?YZvlKRdFDnSIgKI6CXihavBfPMKzcbnDlj9X574fjOKe3/BsETpyD7kMXoC5?=
 =?us-ascii?Q?8wSZ6/4bXM9JUYkTfICofgb5aQ1G8Y29MB58HGWtjrV17YeoM5IYgXQHIBd1?=
 =?us-ascii?Q?MEWrVEQDYXRc+J8xpkufpIepCMwoU/mJ+skxzT1k1s7yo5NtpD+/e+YsLTpP?=
 =?us-ascii?Q?mvMLkcc212K9XNMbfXCWVIKjkuBU6vpHeoiGoWvFTYD4575+ygoalhjAmsWB?=
 =?us-ascii?Q?8CC/zwTKoc7Qr6aDe7PWNehmdihyuCFqWUGDN3orjyCkUd/qjl93kQnnMZkM?=
 =?us-ascii?Q?2pQfv8QLpIkdvuaQ4v/ZGiH237GkRAvj4I2PvZH7SHpKxBEAL6zhMtFs+8cJ?=
 =?us-ascii?Q?3EpWnNGzng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78fa07a9-c28d-4826-ed95-08de748afe88
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:29:05.9877 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /90m5isSVV7GTe4FfwWCP4Ae8hRUsRUiBEONE6+1XOjm4xCfGUqU6NY44mxDAorvkOSmu4ivX0Hqbjrn9DtMWw==
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
X-Rspamd-Queue-Id: AE0CF19AA5A
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

Use intel_dp_handle_link_service_irq() while handling an MST HPD IRQ,
instead of open-coding this.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 826d3d63c43ff..27eea2cc0c301 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5508,6 +5508,8 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
 	}
 }
 
+static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask);
+
 /**
  * intel_dp_check_mst_status - service any pending MST interrupts, check link status
  * @intel_dp: Intel DP struct
@@ -5555,14 +5557,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
 
-		if (ack[3] & RX_CAP_CHANGED)
-			reprobe_needed = true;
-
-		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
-			intel_dp_check_link_state(intel_dp);
-
-		if ((ack[3] & DP_TUNNELING_IRQ) &&
-		    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr, &intel_dp->aux))
+		if (intel_dp_handle_link_service_irq(intel_dp, ack[3]))
 			reprobe_needed = true;
 	}
 
@@ -5860,7 +5855,7 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
-	if (irq_mask & LINK_STATUS_CHANGED)
+	if ((irq_mask & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
 		intel_dp_check_link_state(intel_dp);
 
 	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
-- 
2.49.1

