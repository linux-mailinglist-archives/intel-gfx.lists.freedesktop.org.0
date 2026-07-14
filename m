Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5ciDC3NVVmpO3gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7F57566D5
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cc0pSFNi;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5823410EDC1;
	Tue, 14 Jul 2026 15:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAAB810EDC5;
 Tue, 14 Jul 2026 15:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784042864; x=1815578864;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=PCBBA4GJCksIbOzggTmaT8R30SDwTh2S6MgwA3CkSRc=;
 b=cc0pSFNi+X4tPYYZs2WdHZy248cITOjE8m+/2p4W5UikJxOdcXU67c37
 i0ujjloXSIxZXp7ZXGnY5cc6rmw6P3J4YQnvI9PN/1YF+Lxm4+Oe5eGEW
 Y/InY2iS9Dr1eNIxXaYfbpN46ieD7Z11N/kHid/Ec3AlU4MaPsg3nS8fI
 5AQBmbB6td82kvxL9a5qEpkSFmA79uf3YZsVAHZomts8hcBO9g71new7p
 OMts7vpg7WeXjhDDan7fDK13sIXCVfna1eztdiNj7x5Rm3T1DwrXnwdOd
 Zd8yl6zRhwta219os5BJkjQUgzFEmXC7zI9MMw6c5WEIOaBhOjnTKbzt+ w==;
X-CSE-ConnectionGUID: sPn7sTz3RySYZc5puOAORA==
X-CSE-MsgGUID: 5PLgN65YQKuBLb+QfHmWEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84548018"
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="84548018"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:43 -0700
X-CSE-ConnectionGUID: WZ3/EtpgQCqV+XwcPyJzpA==
X-CSE-MsgGUID: KAXctDOrScWKVShXvdK6+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="285962086"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:44 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 08:27:43 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sEA1BccjlRPiDdDiI4ctZNn9yud1Nv2j0uEwT405bmXsHFdWwgcusRW11SUdsveYplw/sRg5mnjyJuaX7JZnWE473sh5fYZp9vBMXEQiPRLs8wV6c0D7mrzlJp+SZKQUo5lHuDLEH7yPw2a2G5FKcERGuONLKQaUdsULVPnj3z+k3YzRqZHIgDdunUz0iDoQPRgqd2VYbnyowN//X8/JnCfQxTm8Yf1nvHpnmNpxm8RdLtf33OCfPGDLc99l5acNXTv/P9+i0S10clrrZ+Ua/o6o7LeNC9gI6nZUOjcv8wOiG6O/4ni2RtPY7uX/+6Jt8kv0MmiZLcw7YlBIbNsFGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GGbm3TTc4j/LgwT4YEGzwBvTVlTh8A8o1Xt8zRylDM4=;
 b=kutDIb5TClClhyV8JPojZDp1S+x0fJPSgsZJ72rkBk/ceYrxM44QXUaLVrym/nB100KU2M8YIyYq4U/MkJoicMLVg8vve75O0HIMok2MdRm7/B3QzK4m1eA2KRyVuxhY+GqAABewe77vZwWYwjP2KthJerGITyttXwtEelZg6NcajbsZzK5mOdHbunioZbS51PxZz4Qr8mn197JhdxxqWka8RozuKObcEFFzIBdXJiX4XCTSKHnbeRVwkW2UtMznKz5iJ3EAWo4rAvsz6tc9ExMutcxFgiNiYAUND0L72NLHM+vuLEfKKd9oONYTVpLdloukvuuVHBKnv1eddzn07g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Tue, 14 Jul
 2026 15:27:37 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 15:27:37 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 5/6] drm/i915/dp: Disable UHBR link configs with 1/2 lanes
Date: Tue, 14 Jul 2026 18:26:59 +0300
Message-ID: <20260714152700.555527-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260714152700.555527-1-imre.deak@intel.com>
References: <20260714152700.555527-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF00073CE8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1d1) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA0PR11MB7354:EE_
X-MS-Office365-Filtering-Correlation-Id: dd175424-ea81-408c-3e04-08dee1bc6f58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|6133799003|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: MxsI4Nnu6w/fEbveomx+89M4xd2aEm6JNX9q7xI7E32CQ1zKC0IHC/dCvBbtAivzTryGnj/usl2rKXExAODWVHypOBOiLlEKihIDm+Gw3Y8YaxEJ25N2ABlNn2/MeSwOCR9kXWX6r6nmtGT/mYg14bl1GeWVCmXtFVX6zdJljuqgbLrYGfWvTSlU21pO+xlxBi7FcZKPnyBM1hpBznbCk5h2Hye3KLGdUWDbos/W0jxPXzcHUo88z8bcY8958PpTDgA/9A923UrzVtUMJYN22aKcXcCz/teF2JEB+PJN3fWiFW/4vwS265ZQpv46+GbdXn3ZHzyVrZEK3u13Xf8IybVe/gg0wYIJoClxfF8nxUqGNZp1OXuYRBaMdCKIAhWlexVq9j2mPypKvTz/3u82VhVJpcdL6+tWUG8ygyafyZZmvI0r6gFVs3QsCcyC4EvuVl08EEJE69MUOvmiZQdchT4SeNHOeqT9badqATX8nx6LzyKJvureYQqBlhixif6s7J4zXsKQc/qAsf31mOdsNYCHXvlxth1pjveUdVuU6VlMUKJBIRyG3CGLFv2A7GqZ7LpxvqYuU8q/lCG6wDvjgtZuzptIwC1WHkVpY8Pf61HDhg33UKMVs/XX6mMCzwed+6Rwoqsf/gooPeAy1LLsbg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(6133799003)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?++HN7F5RAtR4SS3ZqZOGGEyuGrZkWiPpnHui3KGLooBjL+7eePxgBnu6S4qI?=
 =?us-ascii?Q?7WKehFmgkIHspHvkUfw65PTuCdNbLCmvFA4OJ7vcCXNKWkbp3Jg8uvMV5JrR?=
 =?us-ascii?Q?qb64Mbt2wG3vu07T5dTGvtmWb5Qw5EA5ps56Mnkpw11P7pLGApUhpWrcLUJe?=
 =?us-ascii?Q?0qy2BJXhsetSTo7PDlm4Oijy+8ilfhEp2Jz+ysKl+WBWY/Zse47JIEwZmTdf?=
 =?us-ascii?Q?yFqVu+h/vEOW8iqxBFDd3+zf5xIM5x+6RtAwBpy7UK8ovJ9yoMujGnN7T3lp?=
 =?us-ascii?Q?R/Jwu0Kexz2duHo3eLpBNH492Q4aTFuhRcA9W/5E4Je9CafyfCiwPLHZUp/5?=
 =?us-ascii?Q?h+/bNZXPcEYFiYpy8fBjl2HJW9/HFqtoey3LHoyEOXoraq8g2JlhOS0QsUDd?=
 =?us-ascii?Q?/wgEy+7xfb/GEn/Ry4ytEydDzbAQTI1qXLMTES6bkRmLxxrh5stsEeoFnajM?=
 =?us-ascii?Q?TFM9dpuyFa9vXkGjOkxKPAbN9TJxHSjz4mM/LYAi/djVFBHI8K0mJHn34ULM?=
 =?us-ascii?Q?loaOWSU9Xv4RcefxqTEYYxSdWXxMU/i8NjPbG6ZPG37MQwHwlY8m+3uPolks?=
 =?us-ascii?Q?T/YjbDEzh/gQ87uyJxf8ZI/Qekt9FHF0QymlStv0Vc9A2cEZfIm+C+RebYzh?=
 =?us-ascii?Q?kBp7GGhwoh1i/lSvyi/LmGjP1ahyj5yTpqXdui/CTMC3Wyi9HLY+YK3oQGPY?=
 =?us-ascii?Q?ugQ1iWYJT9WXfi84A1/99rV7JE7px1xoZaklABgTvddmUafX5u+w+b/6Q+vY?=
 =?us-ascii?Q?Xtp2Vq7STZLbNhEmyKW57k6C+YgopnEo8YRpw5gtfBTdPZW2sxnzt2ZzbLMt?=
 =?us-ascii?Q?e1BBVoAj8QLKSQccNnkjV/NI6TVzk/HRZ6xjhBUbYFt3jpD4QxwPyXdUpWYf?=
 =?us-ascii?Q?1uk4twto9Eeo0ym0fKgR2KzS/kAP/Mg6d6pgkFUmp/54GE8aWFT4p769VAz0?=
 =?us-ascii?Q?SWvq5QXMyu36z+JSVA2WniJcMOIsY/Hc2t92z707jk/CqYOthrVEMg7Jr40r?=
 =?us-ascii?Q?i2I8QZzCrD89SpVBAWK/dQ8zyqR/DQ01IUNrm3GC3LHo/94okw1PqqTTsPxq?=
 =?us-ascii?Q?pDkWVK9Wi7/YyPEH/3FWjIjZdkhF/TXrOhtFGp5RaPLgXoBW6aN2ynJENt8/?=
 =?us-ascii?Q?JNL1nW1J9cAwmTBdxoE2vFFFMpU9y3oTmyhAzTai9qe6OVUUUVs1rvJc6VtE?=
 =?us-ascii?Q?UMVQs2i0YQKpXSDZca3IBhlko8V8vMXSxuV4dzVfUUKYDJ0WqyOGz3cIqJbx?=
 =?us-ascii?Q?LNcnOkiItOg7LCFyWI+tyOfU0rWwnSDDgbwR20J5vcC2QnLs9fnX0yDNaBWv?=
 =?us-ascii?Q?ZImF02V0iC0ycCNqDx/P0GTeEvqFZoZolrudD5ZBrIsxudUdS7oq/fZT40R0?=
 =?us-ascii?Q?IMkId4qrWKJ5n9opu+gTMXwfvr0K/5kT6wOTXIbyt+xGi3GLvRu5M7kt7jQT?=
 =?us-ascii?Q?JQ0AjotD7md1uOuoU5c10TtUJZ5ld9RwygHe8lJqUiUs3kXzEjvymAQzN3X9?=
 =?us-ascii?Q?DNDaBUwNzS7iYLysZQlgp+Z3kU3RBZ+tbjk5OIWNvVa+2Y1BHHPC5f+Jzyvp?=
 =?us-ascii?Q?IJwwXNUOybyMpRH3ebSjC+NMhToC3PUc/UB8FeCLOyTBIrFhNJexW3k0rB/F?=
 =?us-ascii?Q?FUxGODYFjN5TvMZ3myV1vZTJ0LENWhQoeg3FcizNJHnO2hUzfFBde78JVKbG?=
 =?us-ascii?Q?T9Irgqxpzxj4ZRmlKLzijIYVdjbsvp3yUdBnCLhKhrJ0VEBcwo/J/lPFncP/?=
 =?us-ascii?Q?6G7NBFPOcQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: JCU6s2+vKuf4vIAQoOfGqVuQEtyoKRDNwP+phyrLpXgmQKVobmy/ig62XHqULI+uF67zHhRbOJ3QPIqlNWQo54M2xSoIKTRVL7i14vIVByaO6q/DNaC7asSJoyZ6B83BRfzMp8oNpNQnH1Gf/pzi1LF2Wb6DE3PVFBLH0RGNP7UY0L6WDdSoldoVUxvZMruAzuf++m27m9w5DEF35CMzlgvJil17dxJCy9p1/eRaFFZt1RHAMPfaV6JbC0SIbBJ4qkWOmZSJZnyvwQfN9hCtRoCpIaLO5/pnKp2ka6iaXBtgSAwLi5IxISrNMfw0xreStcjQKEWIa9jwMte5lpNIUw==
X-MS-Exchange-CrossTenant-Network-Message-Id: dd175424-ea81-408c-3e04-08dee1bc6f58
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 15:27:37.3203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GROaB+slEEzSrZPOJKZYaRyxPK8a1zU8oGfr5fB+SXLA4FPYhInQ0DNaG1kqKlcav3+rOPhREg1jKIH0IYgPTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA7F57566D5

Disable 1 and 2 lane link configurations on UHBR tunneled links,
according to DP Standard v2.1b "3.5.2.16.3 128b/132b DPRX Lane Count
Conversion Failure Indication and Corrective Action". A tunnel can
indicate if it's not affected by this limitation, check for that and
skip disabling the unsupported lanes for a well-behaving tunnel.

The Standard in the same section also describes a workaround for 2 lanes
which requires assisstance from the sink, where the sink indicates at
the end of the link training sequence if the link training must be
retried. This mechanism also requires quirking out some sinks - based on
the sink's DPCD OUI and EDID identifications - which doesn't implement
this link training feedback indication properly. This patch leaves the
implementation of this workaround for a follow-up, but prepares for it
already by detecting the supported number of lane counts at a place
where both DPCD OUI and EDID is available for the quirk detection.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  5 +++
 .../gpu/drm/i915/display/intel_dp_tunnel.c    | 45 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_tunnel.h    | 17 +++++++
 5 files changed, 75 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c048da7d6fea7..adde53dc9dce3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1871,6 +1871,7 @@ struct intel_dp {
 
 	struct drm_dp_tunnel *tunnel;
 	bool tunnel_suspended:1;
+	u8 disabled_uhbr_lane_mask;
 
 	struct {
 		struct intel_dp_mst_encoder *stream_encoders[I915_MAX_PIPES];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0d2c696b9e4b0..e0b95fbf7db0a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3629,6 +3629,8 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 	 * was called.
 	 */
 	intel_dp_link_caps_reset(intel_dp->link.caps);
+	intel_dp_tunnel_uhbr_lanes_wa_apply(intel_dp);
+
 	intel_dp->link.mst_probed_lane_count = 0;
 	intel_dp->link.mst_probed_rate = 0;
 	intel_dp_link_training_reset(intel_dp->link.training);
@@ -6281,6 +6283,8 @@ intel_dp_detect(struct drm_connector *_connector,
 
 		intel_dp_tunnel_disconnect(intel_dp);
 
+		intel_dp_tunnel_uhbr_lanes_wa_reset(intel_dp);
+
 		goto out_unset_edid;
 	}
 
@@ -6345,6 +6349,9 @@ intel_dp_detect(struct drm_connector *_connector,
 	if (intel_dp_is_edp(intel_dp) || connector->detect_edid)
 		status = connector_status_connected;
 
+	if (intel_dp_tunnel_uhbr_lanes_wa_setup(intel_dp))
+		intel_dp_tunnel_uhbr_lanes_wa_apply(intel_dp);
+
 out_unset_edid:
 	if (status != connector_status_connected && !intel_dp->is_mst)
 		intel_dp_unset_edid(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index df6e54508e5d4..7cbef16ab38b1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1453,6 +1453,11 @@ static int mst_connector_get_ddc_modes(struct drm_connector *_connector)
 
 	drm_edid_free(drm_edid);
 
+	if (intel_dp_tunnel_uhbr_lanes_wa_setup(intel_dp)) {
+		intel_dp_flush_connector_commits(connector);
+		intel_dp_tunnel_uhbr_lanes_wa_apply(intel_dp);
+	}
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index 49fa4c9699b61..2199396345646 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -831,6 +831,51 @@ void intel_dp_tunnel_atomic_alloc_bw(struct intel_atomic_state *state)
 	atomic_increase_bw(state);
 }
 
+static u8 lane_count_mask(int lane_count)
+{
+	return BIT(ilog2(lane_count));
+}
+
+void intel_dp_tunnel_uhbr_lanes_wa_apply(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_dp_link_caps_order order =
+		intel_dp_link_caps_connector_compute_order(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config link_config;
+	struct intel_dp_link_caps_iter iter;
+
+	if (!intel_dp->disabled_uhbr_lane_mask)
+		return;
+
+	intel_dp_link_caps_iter_start(&iter, link_caps, order, INTEL_DP_LINK_CAPS_FILTER_ALL);
+	for_each_dp_link_config(&iter, &link_config) {
+		if (drm_dp_is_uhbr_rate(link_config.rate) &&
+		    lane_count_mask(link_config.lane_count) & intel_dp->disabled_uhbr_lane_mask)
+			intel_dp_link_caps_disable_config(link_caps, &link_config);
+	}
+	intel_dp_link_caps_iter_end(&iter);
+}
+
+bool intel_dp_tunnel_uhbr_lanes_wa_setup(struct intel_dp *intel_dp)
+{
+	u8 old_mask = intel_dp->disabled_uhbr_lane_mask;
+
+	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp) ||
+	    drm_dp_tunnel_128b132b_lane0_mapping_supported(intel_dp->tunnel))
+		intel_dp->disabled_uhbr_lane_mask = 0;
+	else
+		/* TODO: Add support for keeping 2 lanes enabled as well. */
+		intel_dp->disabled_uhbr_lane_mask = lane_count_mask(1) | lane_count_mask(2);
+
+	return intel_dp->disabled_uhbr_lane_mask != old_mask;
+}
+
+void intel_dp_tunnel_uhbr_lanes_wa_reset(struct intel_dp *intel_dp)
+{
+	intel_dp->disabled_uhbr_lane_mask = 0;
+}
+
 /**
  * intel_dp_tunnel_mgr_init - Initialize the DP tunnel manager
  * @display: display device
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
index 8273e681a5128..13fc8fbb6e306 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.h
@@ -54,6 +54,10 @@ int intel_dp_tunnel_atomic_check_state(struct intel_atomic_state *state,
 
 void intel_dp_tunnel_atomic_alloc_bw(struct intel_atomic_state *state);
 
+void intel_dp_tunnel_uhbr_lanes_wa_apply(struct intel_dp *intel_dp);
+bool intel_dp_tunnel_uhbr_lanes_wa_setup(struct intel_dp *intel_dp);
+void intel_dp_tunnel_uhbr_lanes_wa_reset(struct intel_dp *intel_dp);
+
 int intel_dp_tunnel_mgr_init(struct intel_display *display);
 void intel_dp_tunnel_mgr_cleanup(struct intel_display *display);
 
@@ -129,6 +133,19 @@ intel_dp_tunnel_atomic_alloc_bw(struct intel_atomic_state *state)
 	return 0;
 }
 
+static inline void intel_dp_tunnel_uhbr_lanes_wa_apply(struct intel_dp *intel_dp)
+{
+}
+
+static inline bool intel_dp_tunnel_uhbr_lanes_wa_setup(struct intel_dp *intel_dp)
+{
+	return false;
+}
+
+static inline void intel_dp_tunnel_uhbr_lanes_wa_reset(struct intel_dp *intel_dp)
+{
+}
+
 static inline int
 intel_dp_tunnel_mgr_init(struct intel_display *display)
 {
-- 
2.49.1

