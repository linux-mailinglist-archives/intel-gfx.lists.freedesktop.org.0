Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIwCAEWu8GkYXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B1F48558B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C2CB10ECA2;
	Tue, 28 Apr 2026 12:55:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fttqNASg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2FEC10EC8A;
 Tue, 28 Apr 2026 12:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380926; x=1808916926;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=rT2/CX3p3+9Qwt413jLGVE2NI5yKw/n+fX5jh/9ZVvs=;
 b=fttqNASgporDRBcMK6ghiW25nX2H31OpCwLqXl4jd8rxAZTM82wsWr6q
 fUgjfGwJoQGwRYM7y/piCcCKhEQmLn+5aFHXrVa28qesm8bvaWA3Ut0WM
 X7H66T2gwiBJ4WHkfzJnkobYBjAChUsfOxe6Wyyl59qBa21S27e62HFyF
 hU0ERxEUYQ1wMqKP3nET2wHtPcswctd7HHDO4pfbfBxgJRPzddGpyF9Pq
 Qz7UE1kS+U+6aqPYZarsMBF4JF4EkmA99VHw3+oQ50fOqgs411t1PM2sw
 bekO2DySiHI+6YqBUraPIrrq7RERP6/v4gK+aLRRo+B7qZd6JVuyvPaYV w==;
X-CSE-ConnectionGUID: o7a07g05QdyASWVPIvYr2w==
X-CSE-MsgGUID: KBs1pMr9Sx2bsjqyxr6gpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318778"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318778"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:26 -0700
X-CSE-ConnectionGUID: ky4vg6wSSCyqFGd7CoHgIQ==
X-CSE-MsgGUID: paAySEi5QPe82Bj/I2VHzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818242"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:26 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:25 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:25 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f7eKUNaWDXP8Wj0S/wGiU3/SZkek3+eJGxsdSYO1FtqSmLYNXqVgDKnder6aWcG22awX3lBNTxRUhkB5tWV/1mF2pvL+cI6WxOAzwa7alqsyZtokbFdYAWVx/5r1t85CMOWNIHgWg4hJVNiivIVux+rScCAv3ECEpdP0k7zrXlD6gqseBnE8ldIiOPns+Yi0LSGejpJgON7rTGNpcdgFQ6yv/AUmK+HttJTX1/69vQESlwLy3m9Fr/Vtoxo5ZeLUXMKJmPhcFs7MMXzNktKcRlMdSOL9UTOPb2LcUA/6KTkeLxRhrBZOgywG7tb/QH8j/tI7rv52cY56IhcXEaZ6Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+0Zl6Jdru7jPsmeGzep8I3HzSMUK/KriycvonrDBJrE=;
 b=oA0UUtWWBwdCJAsdKniePueZbEwTkzJ1w+Dfw7fO+6K/QJJxHxwndeIMydEKdRoW6IpeWh5NaXVvXGm3cXAds70UP3O4NYdrbFbjduvK/9FKzyBzxpKcPIzOYfPUQ7y9GXyiebH2KM9O6TBiylfO+cEokmPhcyVMm4tekk1DGqnD62wSkvw9NeK1EW/lyD9QjBmfsfTfzSUYVa6x489l5fhNnE9JOJWmNx+6G6g+WqbBVgtdRDvurdP38CPtXUqlFPY30j5QMG+/IwhAVlxN72iRC2Wmq/4YMhgY09/nnT/JMnJ5kNibi46fs71rQOjd71XjsdnHk0zG8p7uEAwmSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 089/108] drm/i915/dp_link_caps: Add debugfs entry showing
 allowed configurations
Date: Tue, 28 Apr 2026 15:52:10 +0300
Message-ID: <20260428125233.1664668-90-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 05e17f4d-1687-4efa-4b97-08dea5255f27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: SGMiTuck29UOp4Bl3jIeSgxWyk3X+K2QJHYDpvjdI7tKBzdIQ9/ZMSHf+qe1pAf/JEazwGmWrz2DHk3uzMDRKA4J1qfhGVlyqqxdVWVj+t1GqezQe8k+4Tmuka/OuUNIZ2v3Kvrw8Pmzs15mLywx+jw2gbYZA/Qc05LmNdlR3GoUj2+EcmPCBeMQ7tCSW7jJ5QzP3XpXEEiWvF5+2iblwgYl832wPz1EsoOKnKbQb0d0kW9XPkxzRvdbkpXn0YgDMpIFygg0hJfT7sSa2kagUQ3vkcjXd2ZWWLAMlJPQ+y+IIQHc3nl6QoQROfELLrlKrlHZT+BtX34LGmxudZ3kJrDBO6pX5+utGoupEKj7PvAVQH3uiX5atE47+VE529gh8Mw7Szi6VSCYK/LOL9MlWpmQ6dophdwyrHAx7X0yh44mv2iH7gNHjtGHVdoXm8Z9aHVShCbLNI9Eyg2KwU11b4QR/SGG8Ey+S1ODMz7gAGYhPTo9UO5vF6FQrm5ArP02dXIMZ+v8ZskvGeA/AtnmdMMZut2VyYU0uWbXS+8qd5QUKRCIHcldyg/h1jHOXT5PJlVhEJpmDJPK8nN16LScjmR8FNSAa8yjJdpLAdUVnCt+3cDUccpzPChoyw5JPlksdB3UD004YC8l3qdIr9+NT2utxnlU44e5DU7Ua6VzzOX3RoVbrHOgpnqzPR3T7bK4xph44PPCvsPZqJnKyj8rUZT4E+DFDZ4Lc1tnReVgGPE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Bos65CrBgZ7tP7/VGPb6E3btpp1sXtXsAm+tEh9439adgS3AJZJl+yfyd/03?=
 =?us-ascii?Q?M6JXGPqOoUw7hA63V/xIpKWwObQ2a6s/1skIg/9AOAUBdBkN3cLIjcO/UZNb?=
 =?us-ascii?Q?tcE2JbI42pz5zYSYlF0JiJUyJ0H68riPfLgJi1rufEC36z1xFC7FFsev/eon?=
 =?us-ascii?Q?Nk/kKNznY/y7afOcTpTq2EehnaXPKfdZIwifL0bVH8G2VS8xc7r/89mFTv8p?=
 =?us-ascii?Q?CQnS08zcuq4P7CQ43bNgFW6MUWB7Zd7d29nOhS32vGit0TkppXOghK78rJ4D?=
 =?us-ascii?Q?zJPhDsjZA8PPhz2v9XZA4OcsPX25eRfOqB9rBA+OEDEqrMhK1odQ69Zdhd8/?=
 =?us-ascii?Q?fagjKjR8pPkE+0e1tvapbSXk6b/xuKiegSKMQHoGvo+K+NgWlG6+eJPMkvKU?=
 =?us-ascii?Q?1n6ZLlyMKAAdrkxGcxgq9F5oHXznE2GrVzh1EK7pl79KRrg9Hp9C0I9I/T9P?=
 =?us-ascii?Q?bW6L6U3bkGubKJ4yHwTosLmGChhaV9/eWKWi0aPvOFzdKRgdU9zPTjudLvUq?=
 =?us-ascii?Q?Gh4xYd3ptCeZIHukLdkel+OyRkckbKgu/+1KBLO6bwBeGQ4FmST/YoECLbZq?=
 =?us-ascii?Q?aAE45v1iSQmNalnif+cOIpAEBPii2Ilsj6/P6S/9gY0GeXaQWY8G324unsGT?=
 =?us-ascii?Q?sBdG31YoYK90EtuljAAPFUx1ckyABxGUxyuj96dKFaMMQZAXh021u+e/9PCV?=
 =?us-ascii?Q?PjtPfb6jQBeQiDwV0F9p8raZTNTF8/ytjprA5H+4UJ4rw43/2CP6NtL44orN?=
 =?us-ascii?Q?+J5MNa403Qgy59TqTlsA2Bgq1ZQEzVDa4b10wwewEeerKs37Cd69AKBK45h/?=
 =?us-ascii?Q?W3pDiTDIJR3Qg9ctF3/Jyg6ToP3/TCV3jm8TFxE7a8k0eOWXHzvixsbd51TZ?=
 =?us-ascii?Q?5Y/4vTe/XUplyKX+kmGL5TFzc8zrPQSHlaZsNpjjklO0XvjX3NI+Cwt9eGgD?=
 =?us-ascii?Q?HbHWHMyBFc4Wdez0jj3RZPWfksL15YYe+WzY9PJjaUP6l4nz1ZZfcLTUFKOL?=
 =?us-ascii?Q?EE2jSTrmUTXVQJsxixPXOQwDRAPDiMt8o/RrCe6hhnctth+fnjbeaD4v2UAO?=
 =?us-ascii?Q?/ywvukDwyrs4Iv6wdnu4xQQ7hDBy/PTVf2KGcqW8NOKXFLbungL+lmAmPm6d?=
 =?us-ascii?Q?TIZcUWDSc0y4I0xlYisH/QqPX418SJPey/rdLQJ+o93oUXypd2DuACcdPsD4?=
 =?us-ascii?Q?MREwMyT3qRvYLeR/NVYCAauOuF1tG+yFN2L43GG3+77blvqp/sWwNZzm1F6d?=
 =?us-ascii?Q?M/tCNzwManjb9B22xHvmGrjqU0Oublvedc4RHo5u85DscnqhFYJJpjNkd5al?=
 =?us-ascii?Q?HAbbLHV5PhgLwM14wdThQBRSMT0zbnqPRYQmZgeuvj9aMc5NdKCs+1Nzg5Qx?=
 =?us-ascii?Q?7ZTABpIQVCGjd8xoCVUh/6UkblbAiz1DbvQYh5FBex9R56aQUtNd8xwcH1ik?=
 =?us-ascii?Q?YWoWyuJ6FT2pQtJyBcQMbNtziCxvvt7TqXUXMR0S/S1IM0cobsFR8HOJT4l8?=
 =?us-ascii?Q?MZAmG4jHBi33aXvbWfAjkmeZuYBZE4RUGBg3L+XQHhbP0Uq/1758Z3g4y3Ff?=
 =?us-ascii?Q?9j5Vn7L9TcuumDjRkwZr1KOHZse7kdOr3jYvrUFl7w/dcCp72IXdfoWXCM3u?=
 =?us-ascii?Q?6PKaLqfRvL6LveJ65sndCibRQX/nwM5z4Nxfxg8K9ybKs0ttmdYt1KYCHHDh?=
 =?us-ascii?Q?foWPNAsMWFhIyZFk8n0c0nvwjnbuN8j9fRhaTWjWnAKLge4IJlQFuabybin4?=
 =?us-ascii?Q?sr0puSzSvA=3D=3D?=
X-Exchange-RoutingPolicyChecked: aJqV9zQX0A2orQiRZtY+d7+gLYeVWpRGLYljUy6aS2zBYKA9itiq59US4ywMR+eRk1v8XqUIrbonGQfTrCsV/wALFF9yOZl1HQtikEXJkVsjOqHmlncNIw0Gb4tZ0+GvhbTm7IPmILYLrEXjnuZAjvfQnBlF23FiAmtV3ZdNCbvoGlqT5YVA26AQ/YJQWaSLyW6uB1Mwx4vAVz3+ON8nM6W//3Pr7vXMSjQiRmBm918ecXtOosISeiQpYURSuXqqx38lVzYUVJAZGZ4EjTfJG82rWUXN9RvUczxTcUoWnMHJDIT2Y4YJ91vEBL6SSclU3HqdDqGXafx/SriSnONiSA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 05e17f4d-1687-4efa-4b97-08dea5255f27
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:06.4975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3ABhFk5imidzs1Ao2b3fy1V+n0Spd0ZdpZQfrZAAXXM1H3Avv29+eIbm1bt4nL/z6DquqE6CAZ5g3IS358sZvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: 99B1F48558B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add a debugfs entry showing the currently allowed link configurations
in the connector's iteration order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index d53cd416a4e09..13d39d07b42b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -1510,6 +1510,47 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 }
 DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
 
+static int intel_dp_allowed_link_configs_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config link_config;
+	int err;
+	int i;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	i = 0;
+	for_each_dp_link_config(link_caps,
+				intel_dp_link_caps_config_order_for_connector(connector),
+				intel_dp_link_caps_get_allowed_config_mask(link_caps),
+				&link_config) {
+		seq_printf(m, "%s%dx%d",
+			   i ? " " : "",
+			   link_config.lane_count, link_config.rate);
+		i++;
+	}
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	seq_putc(m, '\n');
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(intel_dp_allowed_link_configs);
+
+/**
+ * intel_dp_link_caps_debugfs_add - add link caps debugfs files for a connector
+ * @connector: connector to add the debugfs files for
+ *
+ * Add the link-capability debugfs files for a DP @connector.
+ */
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector)
 {
 	struct dentry *root = connector->base.debugfs_entry;
@@ -1529,6 +1570,9 @@ void intel_dp_link_caps_debugfs_add(struct intel_connector *connector)
 
 	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
 			    connector, &i915_dp_max_lane_count_fops);
+
+	debugfs_create_file("intel_dp_allowed_link_configs", 0444, root,
+			    connector, &intel_dp_allowed_link_configs_fops);
 }
 
 /**
-- 
2.49.1

