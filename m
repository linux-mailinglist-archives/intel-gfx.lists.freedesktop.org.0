Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oyohB8u2VGqmpwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:58:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AAE749887
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:58:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=XSdWcmhm;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426F810E8A8;
	Mon, 13 Jul 2026 09:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFBD210E8A4;
 Mon, 13 Jul 2026 09:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783936712; x=1815472712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=26crN3s3kToIoImRFFy1nBN7iCRExuGZv71HSrWtFWU=;
 b=XSdWcmhmyYYzo74cWZx0wDrT88yputqMr4YQ5IQYzjdsSLsoI53m2ryt
 rp7meOvyfvofR+QVYw+FHLZOZET9SF+CreqO1oUHZbMw0ZaiLU4CTLyNF
 +3l6H0Bk85YyvHXP/qsmBj9WvSqN+U9iCaPuLwmv1+Q1hr/UNa64c6ady
 juKVcydU9Cj4BgyeEfiqULKM/RyW+7VJXa3+d8bd9faPiWUQhhiTlS1CR
 wZ57knZkLpzEQniAx/VSmHH3AgSbD45GzTgjH2qN8mdyzrvW+eK+4gr7Z
 iGtsSk3+PEgS9bsXYUBM347cu71+yZXGoc+KdRKd9J6KcmJqwKP1J4c+v A==;
X-CSE-ConnectionGUID: MEBA22kKSv+eUyEwu9nvog==
X-CSE-MsgGUID: k/qylC19QNKvQmBmwwjywQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="83519219"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="83519219"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:31 -0700
X-CSE-ConnectionGUID: fFS6rdA7SVC8HP6DEZxi7Q==
X-CSE-MsgGUID: /g4kCZ6oRGWg7jefD+Eh0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="254991069"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:31 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:30 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 02:58:30 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w/V+ANzvocyf3zBCZ0lUDl1y30DTSRxAX4e94rfgKKt1acgHCIku5/Bhe4GnZam4rRVm1gq7hYM64TO7D+AXG3PxQdnZUdnQ7b/LkwYiQUCoYnxQfUAwEcw672dOQpGzwe37bvEaXmPNoer5xKA95lhNmmB2iUdImemmsJeOu3doPndshuHppBJlo22gJrSDou5+jpiz6x749fvrlQ33wnW0j69qaVAazLHIkZe9vCbfD8l3mrcHVW97iooa4jc+n/OcVPYpv/FRebDUNSJIrn5fVKQEkcX5JomfOscDRhO4pdNrB/kYMYOM1iU34KjQ1zZLfXVGDGo90KHxxpOy1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pra4SyRk52m1vKRbl8GqX9lwf+R4C4mOOs8kfTvAR7U=;
 b=K5vwR8/69c4c/tgU3pr/BVCXqh6gX4/G6GmZPk4CyU8SC04/q70Yu+o/Cxn2k3Bm1UnKo5Hog4+VEe9ig+SKboyMU89r0uMrkMjFO6yeYNENglksD7gjgALwNx89gEHZsdI9ElTCe1Z2d5cMUB2B1ElyxgCSBIDsOnjKSW4+mD2xQvw/GIpCSQM22v1/j/1K4WnoNyeA0GCsQOywq6NdAxEqS462kzkcD4jzwRonqiVMymi56Yuv0JBSZUT1hymUsr+sV04BEiJ9+f8QhFjWXDYX+Nm1kXHIsdCezH8HVkrKnmNlmW0mfgUaWMek89vu/4cXqYbHtyVeJK6+xEEuIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by DS0PR11MB9456.namprd11.prod.outlook.com (2603:10b6:8:290::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.14; Mon, 13 Jul
 2026 09:58:26 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0202.018; Mon, 13 Jul 2026
 09:58:26 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 2/5] iommu/dma: Catch scatterlist length overflows
Date: Mon, 13 Jul 2026 09:58:09 +0000
Message-ID: <20260713095812.1014365-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260713095812.1014365-1-krzysztof.karas@intel.com>
References: <20260713095812.1014365-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0155.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bd::11) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|DS0PR11MB9456:EE_
X-MS-Office365-Filtering-Correlation-Id: 84499d06-4364-4c41-015c-08dee0c54850
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: zzsCZbXdj5VNrftNURjnfJ1YMbtBc644+Bjki9VMtfFS1bn58lYjwOHX6d12tBDlX7InlwlxkM0f0TN/YyERwL9JqC9Oie/oSkgeCYfrjh0UY6LXzhKVoRJVV5+HraHcudkhYGSS6qP0V463qZtKWU8h5IKKu7wEy/TXrCcImbOVpPjgghRGFv52ResJMcATN11ERMfwlXlGmIvyrCRGdd6i/ZgC8wlyNeSaOUIvAF1Wa45p3ewmy1OezWUU6jbR2WoNPy2+OtB7YgJApL4fvcvj4EyAyd6Sd6pVzaih3TbVKPpk+YqUXnn9QyPdMztxMtGw/jj+xY3aI+FTSBBfO8I15ObF/Jvc/e7zH/yShHw223omhvIZzck9KlG4+wFADt6xqtkEWV+aCbhWHZdmXdYJyoPpyvQdewgOU+n5VnhehMw8ueMhpBQea2rnlJBTIj+n1UsEqptDluFRYCA7ZtNU5E+ik3N+LFbFjCeIt+ceUS7Ea5JWAJHwBraemPhBRjhevIQIbPcPU2FyRWB1S5sIk/d2ZKMVSV0fKJ6E7Jpw7QHgv/CCeiGI9pfnq6kQSnVze/jflKupV93yt9tfFizDYAO7LfkbQxYOunMM1XuPZ/3UqKTTzZK1pZ0jSPmJgEn8k9j9GepZO08f9JfnKZd1aZE8ckPV2yzqnDPF1GA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?syRZwisRhrubEMMIGeOk9G8w+a0JdXeEJV2crpq+UnQNjigGVa6vhDkWhFwU?=
 =?us-ascii?Q?wuRNIAZWc2jhcneXrJdEkbfLOnReCUrqYHIQQNDFdyTYztWczO7eyFTeJnYe?=
 =?us-ascii?Q?qBN9RbBWowhm2DkFZKUBYnVsvZ2j+fUHX63WWxm2SkidNB1BZ0dL3pm5gUN6?=
 =?us-ascii?Q?nPAvFc8qkptCYWg22XHcj882MlCcjVeKFp7ojkG0/l6XCX5KUn5akQdgcLjx?=
 =?us-ascii?Q?E9zqQgeXkW28NViyoD6b6Rnie9hJkqb/B8U1LzPNNrrffP27JffzVlTu+8n3?=
 =?us-ascii?Q?LPGXSKZFAXDJ9qQ/YTbba9Rf4CVjEQO5xgfj4EOEbdSdfjfjO7xmmEzojYmV?=
 =?us-ascii?Q?6BAV5m+MN+MZyAHaXaLMzfsP/OSP6FdVy62b53pP1UrTjcvuwWEj/qGx6kv6?=
 =?us-ascii?Q?Quo17eUDrYsPRuKCtv2f8hvAZqqk+dwAGl/cw/cfkjUplV9kpjH5NfcZsxPh?=
 =?us-ascii?Q?D1Nvr5AcaZ1tUBMpSghpmW2SqsUirAa0nGroO03qHBNZsDIjHha8kGyOwqmp?=
 =?us-ascii?Q?UnqlewEfaxcLi+SqLXXzg2qovjYAG8gGzDVmpSFG/z67I4sdKsdvGoLSBUo8?=
 =?us-ascii?Q?uLa+yDjw2D+iQF4Nl7UxC4Ou0pUUYk7uDxUA/A4Yd3GqlUl1gQwmKWi0ZSeZ?=
 =?us-ascii?Q?NNjg/3XpN5ZAAvuyNvQsmKJv/uQ0Ry5TjhkHaOCRqUBnyqn+xYXUEXvYwrZJ?=
 =?us-ascii?Q?p5WL5EyRIL6YkQsn+MCV++VJmV/c9gbYgqq85UcL32rXU5CxMVrTWkPujliZ?=
 =?us-ascii?Q?uXICmI29LnlibN/qBirzcata1AE2AUJSxPgmBhHMHlIJU+JKzIchGsySoa6Y?=
 =?us-ascii?Q?sXIMtlqxVAzIA7YUsCC8VzAv/N7kuB2bfCjIch44Bm7zV+VYivHGsXj9ImSn?=
 =?us-ascii?Q?o8IQpt3eVkUoKaJkgJvStKDb4bGp/W7b31jxY8Ho4iL9VCnt9zCKpyyPS70F?=
 =?us-ascii?Q?keScXaQVoBBt/xQ9YIdl8krJYjXRB1Qew0xLNGsy/Ju8NTQR//fAG9B+IbQz?=
 =?us-ascii?Q?wcXJeooLroJaA4PVREWQJurAf91gbXU9QD1mx4SzmfMUeCTGbh/QIw8/uobs?=
 =?us-ascii?Q?hMHrykQFm4Gnm1lkX6Wr/2JQVw8NlAUK4g3p1nJlAruoxmd/yEVX8kj6BmGE?=
 =?us-ascii?Q?gxi2/aUan19+lBOsj1VtQm8tyld7y7fMjjIWbM06SguJsRFEQZ7DMNuoTW9/?=
 =?us-ascii?Q?ePe+cymtMQ3nwBsdzvGRiQd6evCaee65o9t2X7fJQtnNm+tSDGVSAUh/QD73?=
 =?us-ascii?Q?XsLycXuYq82rum0GqTpUDOv79hoYTTgKv0FVFj+nu6nkUcglKe3jQ4yvEHAo?=
 =?us-ascii?Q?/4D0YMCHsLZDfhBwZfikofMtJ3c6KH6s0+CoC1i6+rCsUEPptHWuXROsMT8H?=
 =?us-ascii?Q?8OIDuauM8KwYtbRHN7OdwvdCdjNoevRp427XH+tNidrMPeoiILagdUsao4b1?=
 =?us-ascii?Q?25RIRJSkLpE3GxCf6oMaxVOcWYAmlYl/RRkaJpZ6VVkbYCIn/iKeI57x+mMR?=
 =?us-ascii?Q?AGXhTZg4GqKLhXRyBsdjfL4P/K/uJ9V0CnzaeAL+2JqqN3qdLhbOe5XNsnE3?=
 =?us-ascii?Q?qXgU3TXgrKFAvj0dYeIODluWtizgS6Dl95nP+D4WaqbdWBJ03enBK66fDtMZ?=
 =?us-ascii?Q?3JEQ9IWjqrlj2igxJYbYOt6X5jdWw3TF1MEfcVhKVj57meErPFQ1l6jNVeRT?=
 =?us-ascii?Q?nQ069S2RK4thw5b8xg7xmKj7VpQ6zD33eEHlRAZr076vz14cQnbHBJPaAdvw?=
 =?us-ascii?Q?YAxuoJIXLPpKjnfkqK8XgGZEAuUm/M0=3D?=
X-Exchange-RoutingPolicyChecked: PRffExnkPM+IADNrstvJtPHqxqltJkf42/LGbxEV1EP4IBqZAT0SxSWDK1GR/w7+UvmVT6dm3wjJRt/x1MHefOx0p3M8wr6CTU8MpmaNA1uHVqN+llFsxizAOAdeJNtFdKEfz5/JSKvBz1CG+Z2i2nFRCxjAF9lDO6OQCAUEuTzOE234B+N469lutlxv3aLDptJFxtvgZTwhMDqBNCOqjDGUJgFmz9wKyuQ/rEz/V8eC3Q4OfTvqker6qjJTByn0waftFeqSUJulpS7/ViKgoCzjQOSXGjWoBCAEUpcfjnyFyPzNhZQSGW1lLVDA5n6G93+9vzYN5qbSUTsPt9Ioiw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 84499d06-4364-4c41-015c-08dee0c54850
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 09:58:26.1258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k9uGQLNSxpEgP6jaCkuCisCz0PedMERd8W8jVTs42MtAHXiJkqHESG5hKOxnffwdDwA8FsbJ2TKzZhRoyu1N3U6pHTa7IBaCMlSCvvQ0Pzs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB9456
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B8AAE749887

It is possible, when a very large mapping uses only one
scatterlist, that padding overflows scatterlist's length field.
This results in:
 1) silently wrapping the value
 2) smaller than desired mappings produced by iommu_map_sg
 3) leaving mapped bytes in memory (no iommu_unmap)

Address this issue by adding overflow detection for scatterlist
length field.

Fixes: 809eac54cdd6 ("iommu/dma: Implement scatterlist segment merging")
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v3:
 * Used check_add_overflow suggested by Jason.

I decided not to include previous r-bs due to the change in the
core of this patch: overflows_type -> check_add_overflow and I
obvserved some folks have heavy preference for one or the other.

 drivers/iommu/dma-iommu.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 381b60d9e7ce..1a36fd9bf10b 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -1493,7 +1493,18 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 		 *   time through here (i.e. before it has a meaningful value).
 		 */
 		if (pad_len && pad_len < s_length - 1) {
-			prev->length += pad_len;
+			unsigned int new_pad_len;
+			/*
+			 * For large mappings spanning multiple GBs we
+			 * may not be able to fit all needed padding into
+			 * sg->length.
+			 */
+			if (check_add_overflow(prev->length, pad_len, &new_pad_len)) {
+				ret = -EOVERFLOW;
+				goto out_restore_sg;
+			}
+
+			prev->length = new_pad_len;
 			iova_len += pad_len;
 		}
 
-- 
2.34.1

