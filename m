Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UP8BILIwPWriyggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 15:44:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AFD6C63A2
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 15:44:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=J30iGzos;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A348610E320;
	Thu, 25 Jun 2026 13:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B58310ECB8;
 Thu, 25 Jun 2026 13:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782395048; x=1813931048;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=B+B2bMAkW7PtGLt/haGi9FS9AicqsxfqXglmqePTl90=;
 b=J30iGzosoEbc1DGXd75/g0lcIuXDj4dT5yKrwpf5DZkv2wVU1J+gvqns
 UjTge7Gq3qFfIz28liUKWw4opt5s9G660Dm34Dj0/Q4TNX5ED1m3gK2AC
 F9IHqqTm/nMzXO8SOUP04v5tbR5zKZFX13V6tuQpy1XvfBbt6HL5YB5fM
 ztMIP6Ig41orpRnEHfLoiQX8EhrH0da/e3RCZoPNpBwJbu5+hwcDMuhDW
 ly3OnOHxtPjLZJguT5fpYaSSRhfQdXHrQMJYiTU4wEDkb2HD+WaWgIo3P
 I66WuPCMPG3QSArbrbuk9dYiOvGAeG7OkYR82l7WiY1JleYr6Cf8I6kCt w==;
X-CSE-ConnectionGUID: EJNcnHPGTQqQa21YL6RhIg==
X-CSE-MsgGUID: OUe0W+J+QZ2m8E2cYlPM6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="94566682"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="94566682"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 06:44:08 -0700
X-CSE-ConnectionGUID: WAxNJmx7Ra+eBWss9m1lOw==
X-CSE-MsgGUID: 2TYCODGuS62v9OEISLosmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="254419578"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 06:44:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 06:44:07 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 06:44:07 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.44) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 06:44:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ausi+cpNt95dnf2RaWVucU8XG6fao5v+QiTy1pY6O3YXou1GS8z2UeVcBB8FW0X8QloKkzYg5k7I5a0WcqNoFxrrbZcXIM+PcQ8xyY5nOwPaKRY3vJlMlElcR75Ry+29TLC71qTPTg7s4pH4/d9Y69DnBSmBJ4s9y6z3l4cQD7mhcPSbElsBW5HMm7CSOleAVBhwUEoW8IyMFtx1WzHdaHm363Qb6a96RzJp6mo4RPZISvv1WmpHvpFwBBtn+V19lPFV8v7qqZVYAWnZ4b7Jxc538+E8ulb+NE8/cNKTjN5qtlB9pantWqUeUBRobnCJUP62sbew4whGSnxv1KanYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ezp9Odiisb28uzTAJmG1JK6PM4yEUynJSvcjN1CSqo=;
 b=KsfSbn2c20glTypM8V7x/AQ9CvYLoSon1EIK28dYI/XJ+w871a9JmgpuqURw3xBRZxGrSSIkyW7IJMmkZ+r0ntaP1VCzhc7rJ4g2h0BsMrS2uinnQDXABObqVmHbz3FxkMRaju4XEz3FDIzKnntbjwo/Era7YLqsykYWawtBhSCwEPTOi1SyBQMp7wQCgu08wayKVklJ7mEoxqV2He++3lGzdMm6iq7XKAtL0RlEqadaXcljqImbHmwA7EZ6VXYkOM+xyxbbhHRFRWvFQDP8jsdBF8o+ViWjOAijmhk2SV9IDvqtYUOuK7dKRfp0uE7O5vAqWk+AdCc9g1s3WnCzoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by DSWPR11MB9716.namprd11.prod.outlook.com (2603:10b6:8:353::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.17; Thu, 25 Jun
 2026 13:44:04 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0159.012; Thu, 25 Jun 2026
 13:44:03 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH 3/3] drm/i915/shmem: Count mapped pages in a folio
Date: Thu, 25 Jun 2026 13:43:42 +0000
Message-ID: <20260625134342.1102921-4-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260625134342.1102921-1-krzysztof.karas@intel.com>
References: <20260625134342.1102921-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TLZP290CA0002.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:9::8)
 To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|DSWPR11MB9716:EE_
X-MS-Office365-Filtering-Correlation-Id: b6e542ad-baaf-4c4f-98da-08ded2bfd1d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|11063799006|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: iNfkd3W/XkOM7JEkdY7WO70S8q2Qqi49bqPtVkY+aazGrKOLiLOEsV6Rx3egw7ND7WB/p/CYGxa/enouoYtCW83Qp3EmkpNoBKXVt3R4H+PEXx6KcivcPWfrBwbbC6IbUhQgyCQcNKv0C0TlfjMq/TraVv+OaOpsv5A4P7d6uHIMWvau2l9CKL8bjc9pRvEXS+M77g2d2s9G6Mvi81paC517Oj5ZTJH2+sJvo48XosIvgcASwCfCDGJh7A6ojZeHjXlSeuN50+YT1/hKo9DiP3LPabvAPHdfML5Xic9CsbAtPSXLwy3YxLtsuHGqoSuSk70W+8OslNsP6/+v87vxJXd+QzFgyKpGlmhjMmj4t+d9cJs4A8lVt0O4k/zyHPn3wSBXoaJfLiVCuKRfd5EwQ5nfELmjI1vD2d+V5bMQzmx8gmdKenel6hKVpnhpi5666u1HcOeWNxIg0e073MLxvbpvRhVKoXg5KAgojGcr9iK+WjS6dJRV+q9aAbgx/MDurPTFoJ56nzabPAyqANAXmbjpAm1OzwUErm5psK5793dkUZK6iGhFQedmpwNClG3v0lNPaGyqokwXPdAjbVeDH+98GCeF8SEcsopdCF2eqDg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(11063799006)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VJ3sQ8mg66kGNB7FOsZjfrYdHiuT+sxzMaZ9hzfO2OvKmnlE9qCeqGj4K3jI?=
 =?us-ascii?Q?rYAWk369tBpiRAgZrIpHpd017k0KVMgZ8noNyObpbA4wSO2S7TZ0BX/fx2Kl?=
 =?us-ascii?Q?khOnHvVMPT5z4gjUFeq0/TrWo1pCNjoCm26L9l7WP0BWZcS4IN64Ox5jQnCt?=
 =?us-ascii?Q?RO2bTOeASoQ7onyG3UwMXxnLS5KiXZ/XjjUK1Bdxf70Bdrb75aBdTw2JAyJE?=
 =?us-ascii?Q?RSwoputEBfykLL7/8yfB1lrfEZ4XuwD4/plt9gv2aoaBKQEpkr5mv1v1Doqd?=
 =?us-ascii?Q?mmz80u9l61CsHjE7SE9EKyFnTUJa3PJOv5kLNavWr0mut/YWGtCUrVMrRrET?=
 =?us-ascii?Q?Jc4NRo78/EE3Sp3rJtUoYwGYTPteIBkL7SXf990tiM6EbJMziiG2VdzMgZXQ?=
 =?us-ascii?Q?/Oy8U3jIhar8a1Y18NfexYJeJpYHjSRk8UtQ8oCeprHXCpJY36ehE0wYD+Iw?=
 =?us-ascii?Q?Eipr6Q1NFQprnouxqmdPHTtaZn4PWN6Vbmh+Pjlq1Onza1eWtxqj+RIQSbmj?=
 =?us-ascii?Q?8bY6zPNR4QAtrntX15I/XYNjpFS3GxbtRoHFg46Ac47sVLgMP4iJLyRhcWPP?=
 =?us-ascii?Q?Z4NAIeH6A7tgDN0LZpCDFC/2WEl+gIrsyjrzD3W+zqQ512eSr2ux1/xrryaA?=
 =?us-ascii?Q?i41HXaJMGDfFM9ZnjSqxwFV7yjUrf4OKk3/JSBu83h/mQSMJJWjrd7IDJSpk?=
 =?us-ascii?Q?2KkLTylKSTO7Ba87Ac9GLiaI4GQnNXBOj1H8U0sBXUNb8rMoIAKobxxw0OlW?=
 =?us-ascii?Q?QxySG79uvzoIka6HGuVUEqibPTKgL7vakFtDRd9mgnSYc+N9175+9pKsO4+8?=
 =?us-ascii?Q?iwif1f6HyaDoxzb5tDuvfRB+AltZKIFXC3jfsoqLZCphX2vQHySR6ahFdee1?=
 =?us-ascii?Q?EsnjbL9hzZEwf++qm4v0femoLGoY1hbrch71iMzri8rF58v7yhRDU2uucasl?=
 =?us-ascii?Q?qSGPDSSztkDCQPR+Fn2ZvvQBMEUcDj1H5PwKIO3rv1vKa5tKpmrL/u6B2dLJ?=
 =?us-ascii?Q?w0M86fs/J0WZQxXlJ3DNeFMYMUrOrgIhF/eqlX6NfbViSZvGmLI+xF6PsomX?=
 =?us-ascii?Q?LA3ta7toElvJ9r1kg11B7ourNhuBdoWADSlpYeP+U8XRbABtK/Iti0SpY8N3?=
 =?us-ascii?Q?Zs9ytyC6LbHI38ZCq//qYnzwRqCmxRT0EhK7ZBcfzb9PpzoMyB2ZWb5N8Z55?=
 =?us-ascii?Q?otsLugW+pOVnnN0bw+miSwYI60yFmXbjKLkF37wq00xaY3TNgHeFbuD2gjfE?=
 =?us-ascii?Q?/yOLMDoETuXEAebgn6+tQvqBTu25hUuMqvmm+9ek1DeAjUxRcmmzBVNfOZCw?=
 =?us-ascii?Q?ZuYb755sRmu+EZt9igNMtTmJ9ujMU/Nm439oJYw3pwqXafJxV7qCJY17nk37?=
 =?us-ascii?Q?204nG8tCkSm/PNr0Vwu9QECxH1SMmh14BI29+vsdLPxcXFgPM4lCyqmfJzq0?=
 =?us-ascii?Q?GhUlAWnnzgIY0RNcpj9hMNX3sg0i8/Mz5qVcrcffxs9K0V6CX8oIFHRBWU55?=
 =?us-ascii?Q?mEXg35knCUUwrESjDrB2BR1up/4YlGGC0wTyRNGEaXP7TFQeZd7gYjzdWpS7?=
 =?us-ascii?Q?PRk0611b5/2mepgyDccmgWFWSS6v9AShQ9RBKuGy2h+57cK0u+5rlPMVnDpr?=
 =?us-ascii?Q?CbipURck1j4eDQJVeJDexez3Wf7hvOKtDvLL3+8L4XxChedIuf0Z0/oXDRk/?=
 =?us-ascii?Q?d9iF1vqhnhg5X0Zp33JwYeofQ/SbmFXfUlVrzWyFCdcpiD63VIpO+bca75CL?=
 =?us-ascii?Q?EXDGpb9zq/fIH6422e9N/hbZw2BB5+4=3D?=
X-Exchange-RoutingPolicyChecked: nYN/EJRvMG8JlGjSjXmT9OaxbDxZcjhbTdvtMRzbb57/s3P3qqdaxWpuT8vWmztBFc7lZYzmopJ0UVilDmWpLiNiscEy1EEnkBk3yIyFZ1z4+yTOplANd6nKorw56MliXyVMU846cijMYybi3KHayyXYXaHJ2OisgXV/YcxceE9BhHH1EogFZ34GfJzaUyg06OhFoVkeCY8PWEE8lGQhAPAdwOZsCCY1rfIh+g/78zz91Z9TfFrHqniZNEiuo1lokoyinrtJuD6kfMaX9jNGPH//fgyLD4TZnbbJpj4Vd91yCGfSbyhzbpTeE2F3pW9sYJKE8sIJGIZUjhFIbqA1Qg==
X-MS-Exchange-CrossTenant-Network-Message-Id: b6e542ad-baaf-4c4f-98da-08ded2bfd1d0
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 13:44:03.6051 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FjjSRbTVgkC6mU4KWkERC2dJAF/XOWbptsak6Vfmavi0GrufUTBYOZEQhIWHa942LpAapGM6DAacEdI1JEJH2/ZxC8zUGkXj3Gy/6DxyJDM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9716
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	RCPT_COUNT_SEVEN(0.00)[10];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14AFD6C63A2

With addition of commit 029ae067431a
("drm/i915: Fix potential overflow of shmem scatterlist length")
max_segment size was included in calculating a number of pages
for the scatterlist. This meant that segment sizes considerably
smaller than number of pages in a folio (see shmem_get_pages(),
rebuild_st label for context), were not enough to jump to the
next folio, which has never been a problem before folios have
been introduced. In result, sg_set_folio() was called multiple
times with nr_pages smaller than folio size, using multitude of
scatterlists, all pointing to the beginning pages of the folio
and never fully covering its range of pages.

Track how many pages have already been counted in a folio to
ensure it is fully covered before reading next folio.

Fixes: 029ae067431a ("drm/i915: Fix potential overflow of shmem scatterlist length")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15816
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 43 ++++++++++++++++-------
 1 file changed, 31 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index b5ae7e5f80a0..0e4929efbfe5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -138,7 +138,10 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 {
 	unsigned int pages_left; /* restricted by sg_alloc_table */
 	unsigned long next_pfn = 0; /* suppress gcc warning */
+	unsigned long folio_start = 0;
 	unsigned long pages_done = 0;
+	unsigned long folio_end = 0;
+	struct folio *folio = NULL;
 	struct scatterlist *sg;
 	gfp_t noreclaim;
 	int ret;
@@ -166,37 +169,53 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	sg = st->sgl;
 
 	while (pages_left) {
+		unsigned long folio_pages_done = 0;
 		unsigned long nr_pages;
 		gfp_t gfp = noreclaim;
-		struct folio *folio;
 
-		folio = shmem_shrink_get_folio(mapping, pages_done, gfp,
-					       pages_left, i915);
-		if (IS_ERR(folio)) {
-			ret = PTR_ERR(folio);
+		/* Grab the next folio if we exhausted the current one. */
+		if (!pages_done || pages_done > folio_end) {
+			folio = shmem_shrink_get_folio(mapping, pages_done, gfp,
+						       pages_left, i915);
+			if (IS_ERR(folio)) {
+				ret = PTR_ERR(folio);
+				goto err_sg;
+			}
+
+			folio_start = folio_pgoff(folio);
+			folio_end = folio_start + folio_nr_pages(folio) - 1;
+		}
+
+		folio_pages_done = pages_done - folio_start;
+		if (WARN_ON_ONCE(folio_pages_done >= folio_nr_pages(folio))) {
+			ret = -EINVAL;
+			folio_put(folio);
 			goto err_sg;
 		}
 
 		nr_pages = min_array(((unsigned long[]){
-					     folio_nr_pages(folio),
+					     folio_nr_pages(folio) - folio_pages_done,
 					     pages_left,
-					     max_segment / PAGE_SIZE,
+					     max_t(unsigned int, 1, max_segment / PAGE_SIZE),
 				     }), 3);
 		if (!st->nents) {
 			st->nents++;
-			sg_set_folio(sg, folio, nr_pages * PAGE_SIZE, 0);
+			sg_set_page(sg, folio_page(folio, 0), nr_pages * PAGE_SIZE, 0);
 		} else if (sg->length >= max_segment ||
-			   folio_pfn(folio) != next_pfn) {
+			   folio_pfn(folio) + folio_pages_done != next_pfn) {
 			sg = sg_next(sg);
 			st->nents++;
-			sg_set_folio(sg, folio, nr_pages * PAGE_SIZE, 0);
+			sg_set_page(sg, folio_page(folio, folio_pages_done),
+				    nr_pages * PAGE_SIZE, 0);
 		} else {
 			nr_pages = min_t(unsigned long, nr_pages,
-					 (max_segment - sg->length) / PAGE_SIZE);
+						max_t(unsigned long, 1,
+						      (max_segment - sg->length) / PAGE_SIZE));
 
 			sg->length += nr_pages * PAGE_SIZE;
 		}
-		next_pfn = folio_pfn(folio) + nr_pages;
+
+		next_pfn = folio_pfn(folio) + folio_pages_done + nr_pages;
 		pages_done += nr_pages;
 		pages_left -= nr_pages;
 
-- 
2.34.1

