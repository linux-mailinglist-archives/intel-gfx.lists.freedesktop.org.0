Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIjmJD8jn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D35519A9C9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5348910E7BB;
	Wed, 25 Feb 2026 16:28:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YbEfM6JK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2359610E7B8;
 Wed, 25 Feb 2026 16:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036921; x=1803572921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=vB14LvMp7MZtvqeow47w6qupnKZR4eNaA7aLl/Oxe2c=;
 b=YbEfM6JKReREt4DxIoJqlzjuS8l/Dg6ndvHmktkQD6L+oEHgmnfatDkS
 OebsIQceyzT8rw0VIsTe6i8bGEs+lon+k3KKQl7RvmRGzdpKkJgLqK5JX
 qR2E4W80tTAVBvvAGUiGIR2CGx3QZffziUus9ZwFq3Fbm1uaG2NQSR4zd
 sTY6l9Qa9gT/BmGvnCL60Zh8S/pDzs1rK/s1GWhjKXcyhwP4QwMmGR4yP
 2ZhtstJH9R9Y+hVTR26cfcrrRfmitd5xHDIJRzbDVANgZqVII6vszuWZC
 hi18/tcFVCliGZTFkFncpnBKiyvvVZxpzMOY0SdW+KaaUIrpDp+EJ4gRW w==;
X-CSE-ConnectionGUID: nlQMt7OBRRWjSzfZ9WQScA==
X-CSE-MsgGUID: 5vesrQWkSWuncQ+Jet17pQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72955353"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72955353"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:41 -0800
X-CSE-ConnectionGUID: 2rnuZaYcR/eHdBjASzjhuQ==
X-CSE-MsgGUID: +1xhgdKES2+wxQhL+doaqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220783605"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:40 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:40 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:40 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dy6CjuWEBZnNqSLHDFWvnPdbgiTIzMN2oLtUgCdmrNM9Xat19i8E7YRYVQcGnn6Ww8sISxSLffigYwJmv8cY9LzRyNXk1i24tqlqPmL2/X0UFSM4aVz999/8aEFhBXi5/DwLx6GsWxA6b521OE6M/8UfVhkAh4YgOjNh92PQ/4E2T581ySGRXxTxjIr7sfjlvaR06a9TIYbnx+w5XWEHYGqqjFXFNNjjft9jLnqyIkRpllRmC1eJoiNbbwJ4eldrYR+n9iSIuzqk9hsVeQgblm8lhvgY4yuErSW/k/42i2utTqMf3cDiF3xdI84GGU5SnAuuA8MZsBC5CtECvViB6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xbTHwf96uMP5MhokozyWvsfPdo7eoQqQ4+fMcINtXdU=;
 b=K6nmB3UgJVGBKdJYkMCtpOrnHRBG2Np08ICvWV5sUTRS7JjJJ5C50HHrbo1guSSlD75WqulDK8ZGTrH5RZRXzH2z10b1cDnSG4pXxzpvE7p+tR4BU96Xo2uSnmibEe//+ftXxHplwPu5B3cHwEBBB2uJvptQNV2fVN4pBN/2DHavmYQRWZuIrWKC9P0/mY4wmO0frpn8e7G6JuZPBcS1TIaRMG4m+vHqoZ2aNz/KfqXxjzEOavMBl0cV3QmrIAJNyuvQXjEVeOHDHIbcZG6aa2FQM9YYgPIQNJbmH+MYzFM6Z8RqWL9FK8dNMP5CZJXqSdhIlTiISMXOeHBXUfF6nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:35 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:35 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 02/20] drm/i915/dp_mst: Verify the link status always the
 same way
Date: Wed, 25 Feb 2026 18:27:33 +0200
Message-ID: <20260225162751.1255913-3-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 1d436d1f-6285-4ae0-0834-08de748aec81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: U5/hz8a2YEN+w/NRRlZut3n4V2IwhUxyh563dmEJk9plLuDK+8cSRhTWXUZy9RMNbZqvoSI/on4W53lBct+680ZiWHz0NDYD5DFes9hO4qawGu+/XllZRKPCVTdRkQv3eimc4cBvj8Os+h0OOH0HQDQq6PPYZe2hjx7UCoLhQvMi/11WUicFzVspS1Gj7JasDj4jwPGzfXPtHXkZTtJCm+52/5xuH0szQFbruUnj/wWecLkFNJ01WkwXuTaIEwPm2lC5fZChwxcGEyXR3sKPz5K1qXw8H+J7sBMyayGO3iozdP44KO60kxvBDYDCdD4hdKGOue2vv8OqtK4WGh1Ex1g+HDAfLICqpohNLeaN81n8pAqD3yL09bi1VQIB9rlqdq2eIN2Bq909cn/NObjUDp9iPq8tILD3+CwcU8CbapF2OMlHogUUj51VfSF+MNlnBbJ+HdtWv4QPZc0Yi/a5xxdzLdHX4V1KU8OqI5c+lLfNBv6em/jvH8dvBf8UqwuVB1seKwQ3bcZaqa27YmDK1XPfWfgOrme7Ek9fQ9tId1rgF/b/FyRzMmZC0O/M0Q+8V20hz4pdZQ86MtNiofhF7wdz1JcQng+0XWBbU/LADkY/xCFwfV4mOIJyIiOfzknD53cE0xA8soDauGoSx9ge0JsVsQte0+kXDiiUaZwfKNHDZNGFWhQpEUPxBvoG96vIEvY7TcdJzq4KuVJqlzUMIGSTVV7poKBbPTEgdY3sUWQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qOV+0zC1cv27mknBQdCVYRYl6fn7tocBBRZ2LxvhdvcRjjPlxdHGF/h5J9kK?=
 =?us-ascii?Q?gNmvvOXmf5yiI81/c81AF1gSZtlfhDVtgxaPEWWXRV+NLLa1yI3rsfsRZ5Yc?=
 =?us-ascii?Q?cwoASu6+HrlWmmsrnNVrzx1IGuETYFS3tr/CabsTedii6NXIKjnnFWPEMN64?=
 =?us-ascii?Q?Zc+UQJVqkDhnuq3BIaiFZEb5QKADHDQWdHtxhD9M42hBIHhu3Urar3DS/0hA?=
 =?us-ascii?Q?/03vZEA8IBIUW9XflBogje43WTqxL+dMX9dntZlTCU6PL1FWWn3a8yYPxrFR?=
 =?us-ascii?Q?zs7HDAANWLhYZvIkifuJukBFSnjCziIxQ405V+ysIITMs8o32vySYeEO1YCN?=
 =?us-ascii?Q?jfB6EzEJFI/3vYEWJpLpsyfD0AGgF1ceHBn2GiGZmIA6wWuFAFcVD4IXvLpT?=
 =?us-ascii?Q?At0veKxjAHRh1sXRcjZna8hnH/e4/Qj0Z4sxm3yFxgdIbhsBQfNOk1tMxLQH?=
 =?us-ascii?Q?aaOrum58pQ8srXIXshfp+Ke10GW7TROu4U1IKVKBfjg3TJECyt1CWeZGZCdh?=
 =?us-ascii?Q?LHWrzY2X9AwoUoFoH4k3FSc5yfc/Av+MSFe6xW3R3s0v4i7SVOxq73SkWBpX?=
 =?us-ascii?Q?/2FvjbC3hVkkOnT6fBnsASyCkP7veF3cBsmIjmIXdOcgo4vwByXadsjC1mHD?=
 =?us-ascii?Q?0oI/Dh4sIfoSSSYw4PS/fltBiAY5InBXXvNqZoqbIM/KWA3+rQgG0Go1vDPv?=
 =?us-ascii?Q?MYaPrYOrp+gNgXEb2mcUaQZg2fwa1LhlrsKU+9x7zY4VjLmK49jV7mgjeVoD?=
 =?us-ascii?Q?LK/mQyGDef2g++Si72kngj6w225jfRwupyYlFsJ6EPsG7rFQimyND4y4j/lq?=
 =?us-ascii?Q?raGpbdu0t2WJJgO9VMuomVkFLeH29b7NXj1oubHkNCUGkylSSw8cv9vpn5zJ?=
 =?us-ascii?Q?mcRxnmnRzZw1bH/Ndnp+UF+TajbK4I+lYk6AvLRGPmyiNj3tb4+IUPTfsDIJ?=
 =?us-ascii?Q?4UPuZebVXhiv3ZAP3zpsDahWA7rjDs3OtWY1GU9ZTzFjct2yovijSxKgSud6?=
 =?us-ascii?Q?kpMGev+Yuielc4bEZcc9SN8+eA/4ixz8rbJe8JRLTcAv03M3nb5s4DV6kBOO?=
 =?us-ascii?Q?CXPpT+s0onxM1E8sWQoUYOpTL5TM57iPlmKvBQhuPurTVdHktYkQ/iE9vWhl?=
 =?us-ascii?Q?3RNyyT0xAydUJpBtHaHYy5ZFPomVcm2DkXbm7l641I1NXA5FVsCQSeeejHFf?=
 =?us-ascii?Q?VKxRjXv5E2nuJXZA/5OVgF5hQhVZlSCLTFhb/p9rWZoqd/Ubmxs0YJ9A/KFI?=
 =?us-ascii?Q?2KLoPsUeOkL21T9hal8VyY0cJTxaOWUe+D1TLHBS11cCmzZBcIKGY/y4bvjS?=
 =?us-ascii?Q?KqluoNsaVcWQdjszRnuPZrYk5fcyT91xhiVmio5uk5uZc77LJMi730ZXlUrs?=
 =?us-ascii?Q?8GP2dXa/S6Vo5OI0QqmaNkmOG4I0cnNClG4FypFVE/Pb6ZwjqC/hwkGHV3Gq?=
 =?us-ascii?Q?sbSVCoeHIApHk1sUnckgkZW9EjHtf6ZgftyTKiyE7Da6I/okhSl8Va18ZK7x?=
 =?us-ascii?Q?PomPeoToNInUs/9FqbzCXYQdnf54QIMh1nyBnjUaRC05FRxDr/unF9O9wRBq?=
 =?us-ascii?Q?86qcVuR70gplL+VgCj6nU65ZkFMg52h7+lNOjx/01jO3q2v63yANIMmV1x1b?=
 =?us-ascii?Q?k7QypeC6jzWFIWWHDRJeQUiaGjrYX9/EHtywlCEic7WTLuM2y9n1wj808g75?=
 =?us-ascii?Q?7t0OM5MP5k9FUG7CtKP2k2XLXtZbbsis+H8/GMkgenLl32eds0jgPuslfssv?=
 =?us-ascii?Q?kpE7cG89tA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d436d1f-6285-4ae0-0834-08de748aec81
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:35.7119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1zgaA3LCYocGy6HO4VRJ//7tloj36LXA2wuJbcEEhkSw2JLIdE2JjaCkQuYFAa6zeh4nS09Yvb1JlgnKp9cVsA==
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
X-Rspamd-Queue-Id: 2D35519A9C9
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

The MST link status should be always verified from the same DPCD
registers after link training. Atm, both the legacy (0x202 - 0x205) and
the ESI (0x200C - 0x200F) link status registers are used. Use always the
latter ESI version of link status registers.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index eb4a1c5c55714..7cd4fb130a7cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5555,6 +5555,23 @@ intel_dp_handle_hdmi_link_status_change(struct intel_dp *intel_dp)
 	}
 }
 
+static bool
+intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	bool ret;
+
+	memset(link_status, 0, DP_LINK_STATUS_SIZE);
+
+	if (intel_dp_mst_active_streams(intel_dp) > 0)
+		ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_LANE0_1_STATUS_ESI,
+					    link_status, DP_LINK_STATUS_SIZE - 2) == 0;
+	else
+		ret = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
+						       link_status) == 0;
+
+	return ret;
+}
+
 static bool
 intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 {
@@ -5577,8 +5594,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_dp->link.force_retrain)
 		return true;
 
-	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
-					     link_status) < 0)
+	if (!intel_dp_read_link_status(intel_dp, link_status))
 		return false;
 
 	/*
-- 
2.49.1

