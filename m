Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sOp4GpmtMWoupAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13744695175
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LeMLxMwG;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD1510ED3F;
	Tue, 16 Jun 2026 20:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 775A610ED37;
 Tue, 16 Jun 2026 20:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640598; x=1813176598;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=4XJJRY0CgEK2qqBTjDoZAnDeI83Bcga1Bek+RF6gglY=;
 b=LeMLxMwGFUKJfyZTuZpeqtj0fIoUFYwd0cBmFwED+hHLt3aUUewZw14T
 LsknCC4ybshMVyBRybUI0w1i4TKgAMHynWUhwVT0L6Nu8k9NpKigsMxgq
 MGYLDvMl8XfDg9ewA1TZ8eT4DINOALXxNHQWRMLo15TMhemlJkUj2cYaH
 h3KGXqjW4kYhf95BJX5eWmIqBRjJAiVm5LmEf1SqYtckFF4WV5nAulp6e
 MsvInTrlpf3UC3XKWwiHjf5TN0IpkMTBu/J+Hkpjrl8U+cMhuhs63qPKt
 DS57sqEUpHEjTEW+5UHvqwEvXw9RFta7OFGBJNYI9CPC2oOpNk/tulgA3 g==;
X-CSE-ConnectionGUID: xW2QMlIERbmXHwr2ZxCxMQ==
X-CSE-MsgGUID: JHCLQuszQNa99IsiEEk5Nw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81427291"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81427291"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:57 -0700
X-CSE-ConnectionGUID: Fe80AiIFT7mP4u0Z9HYnbw==
X-CSE-MsgGUID: yxO1+2YPTh2M8SOOu/9sMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="251786335"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:56 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:56 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MbDf0e38Q+pa5oNorscDqW5mSm2sFlJsye6Yudffe4AZ7wmeBLTMR3HQcn45WrCK4SqcJaLWsO7/HBjyJ4ZkDzgnxpnNJdPxGF+U7y8gTX8WYaaAiUuu06mHersdsl3EIhqEU37icQwSCePyCi5fWEovG9s5kZsmGA5xpmzwquUsuhPpP08mM0wVOl/LoSouEjRi1gBIGl2NPyY2iwYuXaXkkd4LkKgFUkf9brB1oX+mq5RlQ7AhuNeYzMmp8zI/5GZsJWN3RF/0ijvbpHNdxcw+6SBmmcg/3QojGkfKUYhBUCrI2tsuDfjDd+CcKDfDINxdhxS/pzY2Pxd9bBp16g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wTgJLaO6NatP6BJFRS7F3/1p94XHx/CQUJQyRZAXoNM=;
 b=QhW1XtE2ndN4ZDNSUsXjT34VjKeLpJWoj2tejYCFtCMv3ApIzSqp1Q1qPjz7eScafvsE4qxGbsws/ify2FvFraTx5uT0JX1SvqE1Vi6CbTmD3kxTiY/6J5PGXCOeShYPJ6NqwMlRkksYIHAaS7BSQbiG3JM7fooOxI4othxzKBpt6fbbo+7fswv0lpRzVaLGX65mNT0AjCE12Rqo3uwyAGhb2oeMvN7y8CfDOKFvwZ+kbzdEPGP0ojj0sHR0hcUxRkTxlGz3itpSiW7z/g1P1WLqWLAT0kqEw6hNBse1TzrQc8S60CMwsYz7Gn0CzrArlZnQ/7Qwltf4jEU2Q/l9Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:48 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:48 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 22/28] drm/i915/dp_link_caps: Add helpers to set max link
 limits
Date: Tue, 16 Jun 2026 23:08:42 +0300
Message-ID: <20260616200849.3534628-23-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH3PPFE994B740C:EE_
X-MS-Office365-Filtering-Correlation-Id: 114a8fdf-f681-4a7b-0c58-08decbe336b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: rqAnwhJiOpQS2XbGKWVd7U7Mh9JEJg6aXFJPTswA78iGNi/dM2Ro/hS8+yA5UAHXhJTCt2JCCtnjhmz9iig3bKFFvasBTiV99goKuwsHKi3I+uFN7UFnbQijCKXKiu/4OTmS3Rq/1wxij8ZRoiQJtQ2RHLnn2FxSqq/d3FD0kum7mJg7REZD7oBJeHmDJVYda64U81ktuPENVi7vBN38N8Zf4x8AqBDGtjGl4+74sqMbRukPWayV6Bmpxeu7P4/8wJHXsbNdVC/JrGO2m8G7yAysl/siIcZcEH9nEFPg/YCY2uNlY/KNKkzqJEM3PcPKqcDpl3swmDL7gJQd+HtvWca9DWcuzUlMZhCBsAbWLEuGsTyrupyrBOu+2SiNvAlLNAX2ldvjhDoGAtAta3RPQ8S1VMtOGvHvIAYriaSIgAp0uXWAexFyv+aippeNnwozdBjFpne2M4YHTVgW+zo384d+5DTKhcAKEKdG7C74QZ+wER0gv3RX6maC5QAxI6g82rrvvy5iCQeBOdiJqjX2+4Nqi7ygMSR8/CjIMiqP8JE2ubOcXinLFiuNklad++MKb7nEK0M+VIT8K2Yb9crN2q3zXRPBi67M6BoHZE19LgNrsWkCWHqN/oTdm0HbKGgyrO1cEey9XK4hGPRVKkIj69sfLWbGpm58jLAOcSfAkC7uqlvNgdFCpb+Cs11t/Eqn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Q59tSZ//0+rIguJ+prfqGTYVZ6lh8Gx55whax94h0686vWvm4BYFit4pamVH?=
 =?us-ascii?Q?u2p4DVL1RZ2usURu743VS6autSn2JBgPHNv+JAXRHj3jk+orBNbTZjdwJ3+8?=
 =?us-ascii?Q?QI7wagPX7Dp9BPMkFecmnGwWl1VPzytCDatkyV205Ehc8zL8UUwZrKS01iIl?=
 =?us-ascii?Q?+XnKWLTEzkJ4MpfJD/Px/gI3jT2NwdQkQojLDRCFhPNUSlvO58wVox19hy0I?=
 =?us-ascii?Q?0gPHlZ1wop8gNuNAMCj1gbfw9YqgDD4/V/gNXni53FUiQ/tw5+AOlIqFUP4f?=
 =?us-ascii?Q?3va3EI5KoNiXDuO3mlPYi+TK5s4MSzpt5X4BlMRbwC15std/MOjoqgbCc/gm?=
 =?us-ascii?Q?vrEl+tKfLESDX8mYgMmV1g/hLd5bvszaVWE8rBf9kxEeLpjHhWk5/BRxYwDi?=
 =?us-ascii?Q?YLH5YFtVa9LFlEyje7zbjwD8pIQnLYOaVjrIFiYOcIUoctUsYlgLoaTCf+yV?=
 =?us-ascii?Q?hYcL+yzuV1Dkz7OJTuAD4S8/ky0tjEyORZ+HgeF3Av5n4Y7p1WhYNZhh/sEa?=
 =?us-ascii?Q?Ye+2wnEw/fXcvgp1uFakRN2ltk+JBCZ/r52jJ1M/Qyk5+2nd1orsOT8dod0x?=
 =?us-ascii?Q?iErZBwoXjomX1pnVqPYS9UpTfsEc6Az04+/8yHlBttlbGdnz1DhCVpqvSyTs?=
 =?us-ascii?Q?kW/zuyG63KRvuG1k4009mtrtT5pArdMflWXCkUiDAGoWvcvqE8wEY6npZg8d?=
 =?us-ascii?Q?pUXstLxFK3htEigO9lmgnWzUsibG1zTUpNoVwBdLOlWLLgL6Pa0E6LBLuR2T?=
 =?us-ascii?Q?EBIc+NFRDuc70dDOsYq+mAzKec+92SvDDCGGuEDgj3XwcGtAd/m9wsCsp8dl?=
 =?us-ascii?Q?lTMZJoZUX6KYQa4Qa8aFo+cMZorQwoltoo8rOYEHx1r+tltQilh49Lq1K1zV?=
 =?us-ascii?Q?CwztnFbhXTiM9/nuK1lpjcHPDziY9u6Rhmn1ErnbTOXGKZ6DtOHakOBoZYjx?=
 =?us-ascii?Q?khN78S72ytRTzXParFkV0qFmlDgFIWjOJeNdHOBwdrkZI9oW2f5XyD0RgVgz?=
 =?us-ascii?Q?tYYfXFB3PrRRm8nDejfCWax6S2vXrZIGtCfhyIj/zBNR3b/8YO12Bd5frrqe?=
 =?us-ascii?Q?f+KB6ETY+zoSbsKkZg77KacO9UcmvL3MWHf16O+5FuQPiCB2rJS27EBgjVSO?=
 =?us-ascii?Q?b+xgVi6GNRN/J9Xs8qxKdxN7ViBz2XHpjFkaJ3kUfOXNYvdndntHrJDIwUa9?=
 =?us-ascii?Q?vX8jV52ncs9lzdRmu50mIQLv5varzwLSQTs9WHcTGpYkJbnfAlCRgCAXJPZI?=
 =?us-ascii?Q?70Jexg2jK8XkOfCE5ufXFXseeBumRhTBl07juarsEtiTJvq/7kRcDch0O87A?=
 =?us-ascii?Q?g8AYWOvxTH99viMOTFgzRzuH1RLE15ILGTbwuDV63uaVdXbLPzghWANyv9OU?=
 =?us-ascii?Q?jRQ8xtRMfbgwajjj7KBYr/Zm/cga3UA46tJSmx4gAekzlFj4rdgQNNtM+6Mb?=
 =?us-ascii?Q?UxeR0KZS80wZAELmaauj3/u4H0+Hhh4DFRJAM3AE5wpIVWhB9X8FH6jkA/dg?=
 =?us-ascii?Q?oonN1IWIya3eghmvEcOFd3IR3/tBDx+92lZ37OEIZXhmKB5e4AHXmREbP7N+?=
 =?us-ascii?Q?v8QCMWobLVMV1yC4s+DiLxqAiT3VYkmCARkGSoIMuC2tNvliJQ7PrXBC/DJS?=
 =?us-ascii?Q?RkxRDOnlsFzVNpFuTTV6cyiow87kLeo5YZzTzDhO3uBxW7Vuq+gZFxs6lR6F?=
 =?us-ascii?Q?YdhWJvp6CCGt335JmkE3w9xrAww0Li7qFmqe7MOmXbAx7nN3+utBKjXtqm8a?=
 =?us-ascii?Q?il6EVW4wnA=3D=3D?=
X-Exchange-RoutingPolicyChecked: C17QmUXU5RaPGApSTJ378NDvF9enc5iYB//PXegnkD9046TwS4fPvTWJ5AoY6I451eVigny8OC4RWQTe10nPRo6VGemduSlOafifXrn462IYncEIdMgccHbkO2bg1dlInLQawIym4B41oHmuBPCsP9oQjB5o8p4Y4eXPmRhpsB0Bia42IWAc+ZZmx8gnWecj/rmRP+S7d2y0MyVXXbs2vn+vjoskJdgbMLGE56iSeSxiqPDu3NGaBEvwMYnMrZkIobTPvAppoyMfl7th0BI8DVTak1oJS01pT71a+sIjfkNRKc7jg5YB/wEQBK2chVNSzWBkb7YSMs/PzU+CrmNfug==
X-MS-Exchange-CrossTenant-Network-Message-Id: 114a8fdf-f681-4a7b-0c58-08decbe336b0
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:47.0816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y0BsExVEDdD/x9WX6YGX28DvLx5vY/BhIohd0HejzMWlvcEYudame5HSkOGHKDXIIWBeRVoikAFk1T3jzEZO4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE994B740C
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 13744695175

Add intel_dp_link_caps_set_max_limits() to set the current maximum link
limits (max bound over all allowed configurations) through the link caps
API instead of direct accesses.

This allows tracking the state internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 35 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  2 ++
 .../drm/i915/display/intel_dp_link_training.c |  9 +++--
 3 files changed, 44 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index fa7dabc94ddf1..e568f00720d31 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -151,6 +151,15 @@ static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_ent
 	return 1 << lc->lane_count_exp;
 }
 
+static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
+					  const struct intel_dp_link_config *max_link_limits)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	intel_dp->link.max_rate = max_link_limits->rate;
+	intel_dp->link.max_lane_count = max_link_limits->lane_count;
+}
+
 /**
  * intel_dp_link_caps_get_max_limits - get the current maximum link limits
  * @link_caps: link capabilities state
@@ -181,6 +190,32 @@ void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 	max_link_limits->lane_count = intel_dp->link.max_lane_count;
 }
 
+/**
+ * intel_dp_link_caps_set_max_limits - set the current maximum link limits
+ * @link_caps: link capabilities state
+ * @max_link_limits: new maximum link limits
+ *
+ * Set the current maximum rate and lane count limits to @max_link_limits,
+ * constraining the set of allowed configurations.
+ *
+ * Unlike intel_dp_link_caps_get_max_limits(), the caller must serialize
+ * this call against concurrent queries and updates to @link_caps, in line
+ * with the rest of the API.
+ *
+ * Return:
+ * - %true  if the @link_caps cached max limits value got updated with
+ *          @max_link_limits.
+ * - %false if @max_link_limits is invalid.
+ */
+bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
+				       const struct intel_dp_link_config *max_link_limits)
+{
+	set_max_link_limits_no_update(link_caps, max_link_limits);
+
+	/* TODO: validate max_link_limits */
+	return true;
+}
+
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 				   const struct intel_dp_link_config_entry *lc)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 376dbd9bd5aba..c6c60b7888874 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -29,6 +29,8 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
+bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
+				       const struct intel_dp_link_config *max_link_limits);
 
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 7145f2d0ad6d3..9d9911ebad439 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1958,6 +1958,8 @@ static bool reduce_link_params(struct intel_dp *intel_dp, const struct intel_crt
 static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 						   const struct intel_crtc_state *crtc_state)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_limits;
 	int new_link_rate;
 	int new_lane_count;
 
@@ -1983,8 +1985,11 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	       crtc_state->lane_count, crtc_state->port_clock,
 	       new_lane_count, new_link_rate);
 
-	intel_dp->link.max_rate = new_link_rate;
-	intel_dp->link.max_lane_count = new_lane_count;
+	max_link_limits.rate = new_link_rate;
+	max_link_limits.lane_count = new_lane_count;
+
+	/* TODO: handle an update failure */
+	intel_dp_link_caps_set_max_limits(link_caps, &max_link_limits);
 
 	return 0;
 }
-- 
2.49.1

