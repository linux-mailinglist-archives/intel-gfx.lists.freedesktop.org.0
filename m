Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGp3AFMjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB8A19AA0A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AADD110E7D1;
	Wed, 25 Feb 2026 16:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VTK2adQx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CFAA10E7BE;
 Wed, 25 Feb 2026 16:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036934; x=1803572934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=cMqYvxnLp9vCW+f2wT9n247JL/chydc/KwBposCV+ck=;
 b=VTK2adQxXP5CxcnBLO4CMxtefMwJBU1GYsCxJSfI5lJWd7BgGpBGjOo5
 z34Vkf03xEtR72Cn8xFLEGzB6X+rCtsTER/I4OXbjl2jt4EFSjotKk3it
 Tt6UVissMvjbU6qZX4rn8LIPFMlTC5iVeGHZi9atVp6Asy+DMl1R1by23
 hIYev8EEnoFjinfbBZ6qrRbEZQQUekznzSdyBIGWeUjYjaoZZ+8aaofiZ
 Oe8jN+WSwVQXlP4jpUArdBH1TpJLc/cOij2+538IIdWVY5dsuMXP6o7ky
 Zi+fM3565W+UxiOMm+HGJ54FTXrl76YEautONtRYq3DCYzCk/qoy2ArT7 g==;
X-CSE-ConnectionGUID: FE9ShedpRjidVhoraVpt1Q==
X-CSE-MsgGUID: VFvoCvhMTRijYatiA1yznw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72955420"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72955420"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:54 -0800
X-CSE-ConnectionGUID: HhquVd+ZRZWxe5aGFBH7fg==
X-CSE-MsgGUID: 8CH1CSxJS3WRAjnyn46x4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220783745"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:53 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:53 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:53 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.67) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TcObM9MO4BY90FWXrthmnUoeLjolbZ3jpQXyjfdkMLVBR5AG5nQppSHQjOtdgVEPuxwwJwaEoVRX5Zu4RS8erMWVSB30ZcRw5roShr5wGGRFCAqumcLzx994kZkHmMUHv4zOq4at2pdUePK1gcxQ3O/wH8MDMkfGEiTRKqixqw0klD5voiSkefWhIXq+oIH00qZ/LyfU2dqcP3fOW8vWMKDC7NnSwe11SSxgILDzhl6Jp6spNf7j1IWAKmCL4fGHEAiuc7TZTmacekBv2DNT5YYUW1Gr877svdJLKnniklMtXUXXTDHGgoDsJicwoogmeWrrcgVu9SV2YvWZw2L0ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hZ53nnW2C+JAFYoR0hiVK+roODuDsQOPyFTjZI/e7qA=;
 b=bmq50UV33CYX0I57f3W5wIjCXTglC/4jMGTk9/jRKxLExJvWwnFwdztocWN2Tw/no3su86jfg++ytnuCSreekwackR2gw5eb8frAIKbzZbNeYhrvvk7d7clSpkXok/pKQWkADbDP8TAl5MOERDag1F94nTARHUFi09MPWkJz2SSlZaoKnHf49hH3bqIP1cgggIwfrrv8emQvJVBZkfWtZqSqpjzBB05RKCfEbNXWt/75nSZ+o9iP6qVpHvbSuZioxWPBnAE17m1FB8b9LlEnGr2fuZ2Xmlufe45Dfw1y8XYLKnTjHpxTcd9nsaK2QChoqbpH1UIss7MJjOxf/WL0bA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:51 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:51 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 10/20] drm/i915/dp: Fix the link service IRQ DPCD_REV check
Date: Wed, 25 Feb 2026 18:27:41 +0200
Message-ID: <20260225162751.1255913-11-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 378c681a-6297-43a1-517b-08de748af5a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: JykPWpde1jTjd+6XF6zZ2R2feyeAE7y1JBTO7NF5wKPkU4L5oI8X1vNXl+AuDjuvcOAUqc4qv5ct9FnMlis+2iE9p/JZ9Roqc9ZTDlIZ/g7yJ30hvhqDdW1PMumcwjtICCuaGq9kr4UQAzKBBLLeYoZ+AaUDPDIvK22vvjZXE3kTd3MNoYu46aPk+4UXaVLRq6oV75Wj15Eg5OVXjYuV4F1jVa7SeVLbiMR9jdWtiERhQcTXmqMUbiHgf8H0KwAAk+oBYbIGpQ5RWKprbiTUO0sqJipp+gyyePZovV1e02lCpy6ai9kQYO1Fclv5fJZeiBx6qCgEusnprtJCr+sdTPZaMYiQp8CPboQniT7c8pKP4e1QVylW25HH/eMNeBdxyEQ/4BVGwGYDnw5FNbhNpRMN8bdOAfiEFrTgAxPu/VF5eqWxl+iY3dmxLDXwYOxxeA5V+obWgwPyY/NFpcz9MNiHN7V15DA5KqYMnhDkNAsqhL2s9n4pf+WuQBDosoJZuTmf4P0biGMEXSrf25r/DXyYsrUwMKhkI57BeLJniBYo6fUNLSufrda6XVN5FXHL2xK0gMDY4voPHRSU5O6ZubUWCspvgR+aYzFlklI1lgj3lYKvj1hxYNJK69YsjAydfCRrLSQW1etl442NiYGk3+5sM/mH0mZGfSBxkCqZwvbz+X355p9wQkIOd1S54APi6dSL/pRC67qz7FS6lOX/Sr6MauDh2bH7MdqEGsoAPVc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tJkMKcbgdd+nty+GvwZVdQoQxnK8gQ0teGQcV6TjNp9IY5b2XO1EgXqe2Omc?=
 =?us-ascii?Q?R0K3WMc3Z/swLmSLJDrc3Eco7VUvsaBmINcqr4voTfoXoZT4ku6Wg4i6jwVL?=
 =?us-ascii?Q?9t7gDMqKyZ2srJ7E3wC8JxeWXeGUbRl+v1i5rVCH0wX23NBf2/9VY5cmGqbp?=
 =?us-ascii?Q?TDhDXnGbMumlQUwDYUKofzmMhhsK4g6liHjKRZZp2NZI1b+d2i2SZLnwmwX5?=
 =?us-ascii?Q?2VtO5F3Xd17xTiGAv+PE1RCvmbO+9Yq085wsSqilLEJvpoKJASOiXnAAWfpp?=
 =?us-ascii?Q?3lOXy0ZKYzgLaMWKudLqifbhtHvbWjflOiTjWemMMtQyp8a2SIaOK8fpFVNw?=
 =?us-ascii?Q?mxzakd/ReG7gUWxzOVKcnPuC0V3gT2ibIXwCvOfs+36VF1ed7Zequ081AqQM?=
 =?us-ascii?Q?kPMB1pgYP9qsJck9vGkavMQ2uokaf0ONeqIOSFpiimgC8cPZpEQYBUHi5koM?=
 =?us-ascii?Q?Bv7AW5b5mN+YNQoow2v04kbwNrc2ifNDUs1YkeR5/tlZ7kQypxvCAKbEei3N?=
 =?us-ascii?Q?8vjpiDw2uM0DoRDgnZ6KrJSwzAW+BVgDjNfq0ScC0+CNK4KX0v6i/dyM3B/p?=
 =?us-ascii?Q?mGH+OINzA1ujTbr4exsVNL1wikzEyHoJJDuYZYJJbFwCAk6jI3RQt3jeYxdF?=
 =?us-ascii?Q?vah+MSGAbIU9CR0PtJJXP+0CtPvVIAa7vukNCopxd4mBopYyh7702l0IRvMs?=
 =?us-ascii?Q?8SX/jM/eYoBFu+PdGnvW9NJGwSa32CEYgjlvXYmMIb3JKd7q7NbeFhj62lKb?=
 =?us-ascii?Q?c7VM36C25ZiViMLL3H+fGmo3BX3+yEB1UhEvKjm9UqumEqQKubvaoU7eJOGE?=
 =?us-ascii?Q?61x65KNcQ2Bfv+wVMqlDwGURWTHcc6ZTXUchuzwDOTnCVM2VJBGlr1YTxOMy?=
 =?us-ascii?Q?w5xre1M9vrLQfudotHA7oso3XyR8fX7p7JaEYE1BgqLKx3VLfUY2wHwPkLMj?=
 =?us-ascii?Q?p88wC9BtRql4uZ4YgdeSHV4YhF2Ja9hoCe4izATcSaKLE9+htHH2hNMHrCl2?=
 =?us-ascii?Q?9YE0+Mh7D5RO9GTV7sH0JY7cQ5lGgtb9EI5rorduqEJfzSpfE7Dh7J24LSZe?=
 =?us-ascii?Q?Yy15WpTGnC/LZD6D129wAxsIC+A1P0ghwyDyL3no4agjJ1DtMVbsw0JJhfRu?=
 =?us-ascii?Q?LAFz0u65Btf40NCYTNdM5YEWM/uwBow+9hFj8zQPsQzV2RJoj38UCsWHmW6I?=
 =?us-ascii?Q?x3RAvTEarbD5ok0dc5xDnt1sDo9tq0IaaHcoTZ7KNS8UE4c7jgvzOpXAcRXM?=
 =?us-ascii?Q?lXumHwaVOr2pbmOaMwXoJiAWlsmPviguZWOZobJ+BNwkqnDEGH57UDZtMkpl?=
 =?us-ascii?Q?PEXhEr0+qES0/HSyv0jcmSwTmAlsU2/rlMClN85h/oM/rq84H40K/tmgQ6ep?=
 =?us-ascii?Q?DrDzIbtpem/ZeT5SfLkgN2ZlsrC8CDFacOilSEeRSA+R868LiQvfY8UuKJ0V?=
 =?us-ascii?Q?l20BQYqTlG7vsmR/LenihEdkqjBFCyU3TSi+uzR8ym/gB+QtZpSAmS3XUdP7?=
 =?us-ascii?Q?I3mUvGOFhCbIuCQoyo5EXeAEV1L6874Yb58NL7AeGXJrmlkzzDVEZkznPaHF?=
 =?us-ascii?Q?jmk8glbq0A4IePi+dq77dOsr6Cy/llqAJPdoR0oN2o+CRjXLicYQtAboSA7D?=
 =?us-ascii?Q?Y6a+ykL64L13IyLXZc850u+72+UWv5U9msw6QoHIpgllZbONvr4eZE0hu9DM?=
 =?us-ascii?Q?vrGT+jMj6XMXtdFPZrGyMAk/PNtjDOqVZTab3Y6e2W5xcWrhHqcK02EpWl+l?=
 =?us-ascii?Q?tXy2lMTuvw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 378c681a-6297-43a1-517b-08de748af5a4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:51.1702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o4rwvcr0iprVCzO4EhQmcyJN0lcYXCLA7ly5eW0zu4ugOm0oqkxYG05QkJRrOy9iG1McqF/A7kHkdSL0SB9HCA==
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
X-Rspamd-Queue-Id: 8BB8A19AA0A
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

The DP_LINK_SERVICE_IRQ_VECTOR_ESI0 DPCD register is supported only
since DPCD REV 1.2, so fix the revision check accordingly.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 11091b31694bd..3ac9458a2c7d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5799,7 +5799,7 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 	bool reprobe_needed = false;
 	u8 val;
 
-	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
+	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
 		return false;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
-- 
2.49.1

