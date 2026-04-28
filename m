Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KCM/NEKu8GkdXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E06485573
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE2210EC91;
	Tue, 28 Apr 2026 12:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gxFDRJo8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840E910EC75;
 Tue, 28 Apr 2026 12:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380924; x=1808916924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=aSewV/cVkZW+hheSPkJdErPtbb2otPJzDnaiNfmOkWg=;
 b=gxFDRJo87qGYbpgN60+Rj9YLkqNN0+pNh/25+/Dy8w2FV/132rysvHsT
 95boGOXsb8wzsYNltbG+BsMwd8ubz7ujNKYI0UPIRYFTwLUpDpoBtrf06
 coRmgjMGJB5woDltq2NTHSMMuwZ6SfhXdIA83uHtPZEWKLZ8uVoaqq3Iw
 c8UKkbVb0ieYVQGIqoKnU0fwqiTCLsWowyevdQNw5ASemzlpwE52BME8d
 mWv51oLe7nr/Bc0eF9+2LFY3/whERZ4Z75JCl5kMAjjfH9nR5rUir7kJf
 P4O3fYQwwPuSSYWZfVJmQFtj0ogsUFyK/h66QIOBSoJGWcmRAMOnK0WUl g==;
X-CSE-ConnectionGUID: HyfdsydkSZiacaadJrkTdA==
X-CSE-MsgGUID: DqJApfubSMSKvkeEy2ISyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318773"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318773"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:24 -0700
X-CSE-ConnectionGUID: wIC3ZW7oRoC1hPbSgAEKqw==
X-CSE-MsgGUID: qzvZBn7/RoqfgNk5wPE31w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818229"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:23 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:23 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YhD+gLwBjbArhQdsAzUGBDSUTXrlqktgvDix+6dh2cAg5cgjGrxp6OJCEvXZqpxllDg3+uIbBEUJwwclLkBWw6tQvW4n/xHZ6/7Cc5pr7NTbPmYgnvSTTcZXCGzz057Rpe9XQzqvr+1fwtjVCKVXAcZHxyWLB0nT3UyZnmlWj4IsL3ouV8qank1GplVDk/2v7u3VFG6bUaMiIT4KoMHqLfMcOqD9Oqml9M5z3hB7WsQAfI/6fI1/Vvi462WclgwH2kshOS6RzekUPOwJFWXyohG2BZD4xz3A79INb5nVUdYwNHkwuVlx5JAFOMPs6Dntgr5LizXCbepFknkv1Pi+Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0venRyDKr75Dt5MEQPFYCz3DbqEN2MVUYFN7EyExiOA=;
 b=bVcY+s21+R6DhrBQclzLjUyy+zXwKLQIIyMAKICqeSBMa3HUfZPy+FhMsHEtn837WmYb/e7BB2w0x2mXI93CZPwvC5DMEFdzdZ6cfyLwWNUcueq6X0sXo6YxqJh2L6XoAf/awpxQVVxARZZIWpxabyYuLVRNOqUKWvbIFdeAAHMg01EoIzqp25mm6dirGbyqJ0y1017mO8L2kc5wHLK+XixFpKiNk7ZIr8cD3qB7wBapjjSvUDL9Eu8Sjso57Z+89lB6+wwJ5eXQP0rm/99TxJ5sxLkJVvNK7bf4iMB3E+AEpIy82YqFhNuAq6DFHE6XqarTxiDRIhBDVfVcLTvjzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:19 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 086/108] drm/i915/dp_link_caps: Add link configuration
 iterators
Date: Tue, 28 Apr 2026 15:52:07 +0300
Message-ID: <20260428125233.1664668-87-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 91b64671-d232-40b3-6ea7-08dea5255c1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: J5eC5XT9NYo6NDcNNLA5m6O1SBV27d9CSqRqcII0k41HmftFl36dJveZ4JqJFsShoc+ia5eV1J5N9OfdXY1H29szIYgO0HAe6NrCF8xdEZq6kjdTIfcskOOM1InB32FLcstxSDqMymq+CQHdTccOjOQ4Hg6ivxIFYSBupqXhITdvAkP6mx+XbavvBLpBjcm1tSyLP+OwXjXfXG0WgVq2p7Id3W4gQggDD6YQ0+oN+I5n5jKBQwhXBBRBNL2sx3kVQJBoYRPKtoxtfgj0dZJ9m9zApwn1/xVjXe5gYchsvhOvY3hKyHEbLzX03YxFUuUdTH+4H9Hn+OIExBa6yRKHBGT3P3rFLfSIoXvnMQ8Q6rF1UyOxEP3Pz9f4MSQgt+NYeGNhkWgY6vtlKEpUPjvql5P06ZvrY4EPXZ0zh0gGkH9wVeGHVVxfmKlrIkk6YiCwAgKpjD+oOZNf7Vu+yTtMzUqeaYne5Te9/6Hccd3gnLVEi4gtE0yHxSr0S42/gxWEznSvjQJaPv67jjQupDIFsGDNtck2YizvxSFBZTPUAOaJD26OvagPy/2ZADOk8AF0uj9XtxDFo7eQZ1yMQlRJeH7nVWekaFgi9UB5ISVgLC8GM7dqW7StYG6Y+sVARo2NTUxuqiWPlQ1FyAwQlSEw+NaHB7/AXV+b7gSmjcu2et0sDsPffG4c99g1rhM204DxxzZP+M11RNhRlnlwju3rgrgu6ChhB6RbNrUyJoLBroo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hWEYEIk6fApHsbWnzPVwkG+Apm8tvzg1jgMXUksN4aP5h+E2mcm/PSK7f/sV?=
 =?us-ascii?Q?knKM871uJqpZi7usM6+d+o+r+x+pTz4AfbCHFYA1aS0LPFP0wuDzEyCL7qF/?=
 =?us-ascii?Q?4J/ugfMoq7KC8JXJ7kYq+pFV/+J4PVMkUyHVMV0Kq9ZZ0aoD5kVZgfM/fyXm?=
 =?us-ascii?Q?FMRJvy/wXs8x9wb8yx/X1kSV910Ufn7DG3p7p+Ufy8JXrhxkO6UC3LrbwLeH?=
 =?us-ascii?Q?pQBAWjBFKUCy2C4nD+ojtBc4wUwwDNNk0ooIm+eai7mY0qDp1thsm3XZ/+Fb?=
 =?us-ascii?Q?AG7GgjkAThAaUYN3mfpNRf7fxqiY3IZHlRFlSADjdI4A3uNrJiDROIW9MgKZ?=
 =?us-ascii?Q?h+UPZydKBTdan+m2gMIhLCWMrB1ZVvOFqEuaVGUuSkB9lAqXQaxTRmqeKJ6G?=
 =?us-ascii?Q?GQrQQfscgXpizft5t/wjI5kX4pAV4a0Wr7DAlN9A8Rp0rrizi1KlDihvu4QF?=
 =?us-ascii?Q?dPp4Z9LEbG+HbVDj1V1kEXoJMRCtwRxKr3HWlX8eQuqKU/pkaO+whwH/Uskm?=
 =?us-ascii?Q?EgA+ocT2/mlxg8StxA6sy9xOsS7Cy10ur/ZndPZ8LDFb0oyjJRE1Qlp1O9bw?=
 =?us-ascii?Q?hXy6ddmcIU/dNnLSzHoPvGVyM2G/1pThOFwBW3Eg2uAMfa2ACgaOyJ8CqsAa?=
 =?us-ascii?Q?huTPHn4ePOWUNgAHqXlNfVY6Log+aDMwu191lFHB3EG5wHSO0V9ejnkYCYVU?=
 =?us-ascii?Q?0LxLitXsAsY/0N0Y2T+o2u0j7DySkXJtahRIAqxQ/ZcVXuYTi3+aeP6F36cB?=
 =?us-ascii?Q?nqwYVT2pWdmIrLO/g8sTt+RIu5/DFM5r3+q3pzsBjZPq5B+TQwxBRrrndRo/?=
 =?us-ascii?Q?RRp1Ih0jJPF0Y9SdEEI50FH3jR1L0jQLJm2O0kbDjgbvddaZb3Cz9+6ts43k?=
 =?us-ascii?Q?OAwf2bwqLH440MkBh8pr+Gk9c/yUp4LrMaXwwsXGCFSxNAW7RVQik/8V9wXj?=
 =?us-ascii?Q?1ZNMV8fU3barkbEbzLZwMTsm38+huiVULmJ6icQdMLJTlLnwSiRs6TzgcrDp?=
 =?us-ascii?Q?mWxbMyJm1oVTmTYtW75pzw77u3sk6XB54rfIDWbDdBkr9ShPt0SbBGdsdacT?=
 =?us-ascii?Q?9k4B46n9w3l424rGr/gmxm2KAPt3dX2GNgFXNu2BqVZucvHKKhj9rwHfFlC4?=
 =?us-ascii?Q?HejZD/nhmVfdG1OBLSGvSE6zfWhj6rFIS9czAi9KOJp9NzFxOhIqJWwaa0Dd?=
 =?us-ascii?Q?UoPcYq9qm2utlVh/wgfxxTSgY0s3b3MdCeGQZ3LQ4d806DwfF35WI1UCX7n6?=
 =?us-ascii?Q?IiMGQyvFWDcNcrKYOfVAUq2grtkF2HkL5r+1R37GaLbAvGEIya0ZYoB0LPyV?=
 =?us-ascii?Q?nV/GH+Y0iPpEh3qZTvtx/bEJOSBdkTkIgOYL5m9OqjK4IXPaGk6x4kJlJhS3?=
 =?us-ascii?Q?SFJ6bFZppbwtAq69btCVaswhoE079f6mozU/0oaBLhiQRyoQtX4yrk88aK1X?=
 =?us-ascii?Q?aexlBgX3xUYMDf6V6mcuSWpMj3ERpe3ycQHJYQEQmAsbcgn69VNJCT/3vuTW?=
 =?us-ascii?Q?3rEV72+Yo77CHWeoSnjJktmcYm7pP4utgd/hIq+hp4We2EkFFRu6k03f+o/5?=
 =?us-ascii?Q?8YAAR3tt37sUAY5n6/DJ4rzON+q5BpwCj6j0sHmOiStcueUZ8u9bTdY5WADC?=
 =?us-ascii?Q?x7zsXowDFuH9Viwga5YLntKPRgxOHk974RolKTToTmfQNX9GUCD3gOAon6BD?=
 =?us-ascii?Q?84dvMYFWk+D+ie+SjRHyX+XvS7NG3aX1m3LZvkFjfay3o6zDF0VUo7z+6JGF?=
 =?us-ascii?Q?k757lvPQTQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: TF1eJvEp/h59RFMkXp1et+xa4Xq79UCAJPRCrcX/hhNsEi8JTkirToKBYWGckP8czdwTeisZ8Yxh8ypFXGqVJGliQQazlWUyn0aajMBURN6imDq6QGUU//GsYVJ7SxN01Ukwmraug0bSQswn9uvp5VkdNigkyRgXrtaycpPjkAP/v9jCPbnrU4KQ85gY7EOlRLXVR/A/qt10ZXF25CiHrdOKRvs0bu+oFoVzWg3b09R5IU+9+Ocpi47MmeZAv0dpbKnAiV9pSu9QJDgyRjmFdH8FHIfGNExJF0XpyCWJFAh9dASZZp836cqrfp+VuRmb830ZIabQsYZIe+SUdWH6oA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 91b64671-d232-40b3-6ea7-08dea5255c1c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:01.2835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a8vJg/3N09I9S8GM3HWMrQy9iq6e1Y8BVKYMZdWdOgZ2hW4rh4EErmMyFvdlqEizdCQAmOapEPjBbw+5ZvasKQ==
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
X-Rspamd-Queue-Id: 72E06485573
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

Add helpers to iterate over a selected set of link configurations in a
given order.

Use the new iterators when computing the allowed configuration mask and
the maximum link limits, replacing open-coded walks over the
configuration table.

Use the native rate/lane iteration order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 29 +++++-----
 .../gpu/drm/i915/display/intel_dp_link_caps.h | 54 +++++++++++++++++++
 2 files changed, 68 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 7a4a8ec8fdf40..eada84b0d1e39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -203,6 +203,16 @@ struct intel_dp_link_caps {
 static_assert(BITS_PER_TYPE(u32) >=
 	      ARRAY_SIZE(((struct intel_dp_link_caps *)NULL)->config_table.bw_order_map));
 
+static struct intel_dp_link_caps_config_order rate_lane_asc_config_order(void)
+{
+	struct intel_dp_link_caps_config_order order = {
+		.key = INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_RATE_LANE,
+		.dir = INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC
+	};
+
+	return order;
+}
+
 static enum intel_dp_link_caps_config_order_key
 order_key_for_connector(struct intel_connector *connector)
 {
@@ -496,17 +506,12 @@ static u32 calc_allowed_config_mask(struct intel_dp_link_caps *link_caps,
 				    const struct intel_dp_link_config *max_limits,
 				    const struct intel_dp_link_config *forced_params)
 {
-	struct intel_dp_link_caps_config_table *table = &link_caps->config_table;
 	struct intel_dp_link_config config;
 	u32 allowed_mask = 0;
 	int config_idx;
 
-	for (config_idx = 0; config_idx < table->num_configs; config_idx++) {
-		if (BIT(config_idx) & disabled_config_mask)
-			continue;
-
-		to_intel_dp_link_config(table, config_idx, &config);
-
+	for_each_dp_link_config_idx(link_caps, rate_lane_asc_config_order(),
+				    ~disabled_config_mask, &config, &config_idx) {
 		if (forced_params->rate &&
 		    forced_params->rate != config.rate)
 			continue;
@@ -706,18 +711,12 @@ static void reset_all_restrictions_no_update(struct intel_dp_link_caps *link_cap
 static void compute_max_link_limits(struct intel_dp_link_caps *link_caps,
 				    struct intel_dp_link_config *max_link_limits)
 {
-	struct intel_dp_link_caps_config_table *table = &link_caps->config_table;
 	u32 allowed_mask = intel_dp_link_caps_get_allowed_config_mask(link_caps);
 	struct intel_dp_link_config max_config = {};
 	struct intel_dp_link_config link_config;
-	int config_idx;
-
-	for (config_idx = 0; config_idx < table->num_configs; config_idx++) {
-		if (!(BIT(config_idx) & allowed_mask))
-			continue;
-
-		to_intel_dp_link_config(table, config_idx, &link_config);
 
+	for_each_dp_link_config(link_caps, rate_lane_asc_config_order(), allowed_mask,
+				&link_config) {
 		max_config.rate = max(max_config.rate,
 				      link_config.rate);
 		max_config.lane_count = max(max_config.lane_count,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index ff66056adc9b5..939586c74e644 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -4,6 +4,7 @@
 #ifndef __INTEL_DP_LINK_CAPS_H__
 #define __INTEL_DP_LINK_CAPS_H__
 
+#include <linux/bitops.h>
 #include <linux/types.h>
 
 struct intel_connector;
@@ -70,6 +71,8 @@ enum intel_dp_link_caps_config_order_direction {
  * See also:
  *  - intel_dp_link_caps_config_order_for_connector()
  *  - intel_dp_link_caps_get_config_by_pos()
+ *  - for_each_dp_link_config_idx()
+ *  - for_each_dp_link_config()
  */
 struct intel_dp_link_caps_config_order {
 	enum intel_dp_link_caps_config_order_key key;
@@ -112,6 +115,57 @@ enum intel_dp_link_caps_update_mode {
 	INTEL_DP_LINK_CAPS_UPDATE_MERGE,
 };
 
+/* Avoid "address is never NULL" warning in macro */
+static inline int *intel_dp_link_caps_first_non_null(int *p1, int *p2)
+{
+	return p1 ? p1 : p2;
+}
+
+/**
+ * for_each_dp_link_config_idx_iter - iterate selected configurations and indices
+ * @__link_caps:
+ *   &struct intel_dp_link_caps being queried
+ * @__iter_fn:
+ *   Iterator function called to get the config and config idx at a given
+ *   position
+ * @__config_order:
+ *   &struct intel_dp_link_caps_config_order describing the
+ *   iteration order
+ * @__config_mask:
+ *   mask of configuration indices to visit
+ * @__config:
+ *   pointer to &struct intel_dp_link_config filled for each match
+ * @__config_idx:
+ *   optional pointer to the configuration index
+ *
+ * Iterate the configurations selected by @__config_mask in the order described
+ * by @__config_order.
+ *
+ * The configuration mask uses the canonical configuration indexing shared by
+ * the whole API.
+ *
+ * This iterator calls intel_dp_link_caps_get_config_by_pos() internally, so the
+ * same locking rules apply: the caller must serialize iteration against
+ * concurrent updates and concurrent queries.
+ */
+#define for_each_dp_link_config_idx_iter(__link_caps, __iter_fn, __config_order, __config_mask, \
+					 __config, __config_idx) \
+	for (int __iter_pos = 0, \
+	     __iter_config_idx, \
+	     *__config_idx_p = intel_dp_link_caps_first_non_null((__config_idx), &(__iter_config_idx)); \
+	     (__iter_fn)((__link_caps), (__config_order), (__iter_pos), (__config), (__config_idx_p)); \
+	     (__iter_pos)++) \
+	     for_each_if((__config_mask) & BIT(*(__config_idx_p)))
+
+#define for_each_dp_link_config_idx(__link_caps, __config_order, __config_mask, \
+				    __config, __config_idx) \
+	for_each_dp_link_config_idx_iter(__link_caps, intel_dp_link_caps_get_config_by_pos, \
+					 __config_order, __config_mask, __config, __config_idx)
+
+#define for_each_dp_link_config(__link_caps, __config_order, __config_mask, __config) \
+	for_each_dp_link_config_idx((__link_caps), (__config_order), (__config_mask), \
+				    (__config), NULL)
+
 struct intel_dp_link_caps_config_order
 intel_dp_link_caps_config_order_for_connector(struct intel_connector *connector);
 
-- 
2.49.1

