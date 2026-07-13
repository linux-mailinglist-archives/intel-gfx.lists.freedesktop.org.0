Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EDtGBc62VGqqpwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:58:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B007C749894
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:58:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=RuNIUCNQ;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258E210E8B0;
	Mon, 13 Jul 2026 09:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033B310E8B2;
 Mon, 13 Jul 2026 09:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783936715; x=1815472715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=iFT/M5rWf+JU/be6w29EMqwN2ugWBSZL9FtwYd2BVPI=;
 b=RuNIUCNQ8codtI2hvUSCMu259kTbufL3XiMrY2Vf4cnV90Z6Zg25JrQm
 YRYi3xK7euQBczNx6nvph+pA/MVP+UhjLkR7g4uBoBlvl3zC5rDRDJvMc
 PvuirZWG3IbAp9zavlnLZLHKinxdof6IU/K460h1JjhVub+nHTuKV5ISU
 YvD9fTN2r8/cvI/jpwdlgh6Cqe9UAjH8jpwcpCfPAk3T/cFtJNpTU18tS
 fdMywQFVciaFaZcOIfkSCHXpx3RG73BdTR81LBFdp9Ez1f6eUdra2A5rU
 iuf/YdOZBnDvAjNY1meISKFokGrQfTtWfwKuVqJ+r+nNfn591DDlPCeQz Q==;
X-CSE-ConnectionGUID: piHbfDdtTCG3E6iyDZzUXA==
X-CSE-MsgGUID: iwjiHP+VSdKJ1odgHYqgJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="87085867"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="87085867"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:34 -0700
X-CSE-ConnectionGUID: 4/CMtOOGRwWsVKxL+qS7dA==
X-CSE-MsgGUID: c/V5UCIzTda0/qAtvU4gOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="278767770"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:34 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:34 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 02:58:34 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p+69D6sXixGs1KavfZ8GzGhyqy8+NXbecXyOwaWwIJvFHobMImFjgRDVeXLuI9bsZC0FnQtvli4I4rYGkIpRBuRRSKli15S+bJVvel+Imw5Do+uwCkKkjiBNLmyBPZHdtPYyRHjkTli7O9cpdu1a9mOzPdGNaGXV96016fLZAJ7WLmjm6igVZCYa/Ojwr0EOKZRRH/sEL6+fMZ5ATPJNN44YXCMlhlacbbmHSG5eB5LGQ9nV78WKv6hDBMmKRmozELOmLLN/keNOSvYVwQ8o3VPuP34xaPlYa8QHFSkrLorjJ/onovf9obW9ch7A2E8qdetnMJgD5HPmgb1WkJPN+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2MZ4JANYzpQn2Jc1EqTzbibNFs1ZAbj2nlnhEta7SZ8=;
 b=Hvh1CDmYgDqEfImTqOMcDEepjcAUrlH1ECLiSGHQRAKJzd2UkxUSap5z5IqHdlnb+Nu7hHraMxW7MEdaC9OiRnRPr0oT1iR9NBOTEYqRgCIiE/Hd89Imo+tV95uFsLw4Y92ATubGF+9PkQNb1CVSsscbZ2TSVQ6MbyCWxHon089Jtv12TipNz2PqbRrzHUa1GfBmr14tGSFRlBvNSMwAnip4XEP2ZpdL5dQRXjmf5TGlaHORg0oh/gm7cpSkmP2wYLpa0qgBVbwDGubb5aPnFL9YxxNVsk8V4PfeyeFny8OKYphMUqVZg1iKFWapqAYl7iUSWcbvLPJyVShuUcW19Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by DS0PR11MB9456.namprd11.prod.outlook.com (2603:10b6:8:290::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.14; Mon, 13 Jul
 2026 09:58:31 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0202.018; Mon, 13 Jul 2026
 09:58:31 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 4/5] drm/i915/gem: Read and shrink memory in a separate
 function
Date: Mon, 13 Jul 2026 09:58:11 +0000
Message-ID: <20260713095812.1014365-5-krzysztof.karas@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 921333d5-2eb6-4e48-50b4-08dee0c54b67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|18002099003|22082099003|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: DOyYqIL462tItvSuEDtdvke7I19u+AClJUgGgo/6aWjPKKBfwq3967jaui87cnnuGhEJGn+n9vlCtK61cMgscGsNUR29cfJQOJgvCQ3Odzk+ILcEr7WkMH57Ut035nQMabe2NnHSG3bRlmUBCjXx+28cb306+u5NrwHZ96vfmNDG7aTkHxM9yrLINkVeP2jIlQq6BKXgskyxn/Udi9w1Z77FseoQlimF+jl2J7x5/lykX7bA+FKNj1DKli4wmbXnSynLJs2wYXaRBAjqejyA5JJ5CNWcsFxxi2leW+X1fQ/Z0QAowcjxzX5OYkUefz56iX+/WrJ2sm5e3H4/mCaXv95wW+WD653elbc42Tb9A28q4aylLzwHfLaduxDumjga1yD4OBXv5zY90xBFgli4SLUZUrNDIGNHJsup1dP7rWRvFPy5B5AGteCa+jMrRQ7cenlX26QDHW8C9Buxe3bqBFogixUzU13AbN+L+5uHHIbQGSBM55lB9LiuZUfS7z/9pUHwJ8XKu1YxcYltjtMB+mIgX/BEA9LOPWaABzFjpY19Hx+VmgdPmNH1X0JLkNtiEMhiKnbwwk83vXffPWy7O5WYPjRfeT5Kro0+NTgzfX8D+Rrox5urOF/5Kgz64EjXOwIhKwhOmNQFICUmXnn2i+J0xR6zvB3AOIUPtGnjtTs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XK6Mp6ca62zBII8vkw6AGfZJrJGVBM7IAoAmT4xTLWyZcvMxqT6Pp2BssYLW?=
 =?us-ascii?Q?OwPADF8Ww7tV8t24nKX8lqPe+pVLNNQ8ofCXJT+R6lbkvo7tMs0JtiyLroOZ?=
 =?us-ascii?Q?wLUJ7I/I48Q7FpPmI+anbxkbrjYteqyY29h/WV++4Wa4bPTsRZedYemwQDCO?=
 =?us-ascii?Q?k7/5+YKYl6Crsi6YTmjIKuLutpefLewV+GE6BEPxoKj3mQVOb9t2aIxD62s4?=
 =?us-ascii?Q?3mBp6oFUP6UNBUwW+7OwX8VcXVejDqh5+Kne0mJZjXJJccPerQTh0ysm5vmW?=
 =?us-ascii?Q?L8N1FeSbujuEhQYe0cJpxJDJ9NkWdtL9EdaVJu8ItIJfCGEDRjoLXsBsdPMI?=
 =?us-ascii?Q?H+ka1b/u2GyXg1C3icxo0Mxgnp6A+9eLD2vDcwhInwBlF/6nRyqDsqxghIYL?=
 =?us-ascii?Q?JsKOSgzcSfWHmNdBFJZEkFdn99gL/+cSNHxofIiRyqLpKEbWsy2MYq4+1bYU?=
 =?us-ascii?Q?BvHK8npxZ+jJrT+vfB8o93JjLa0t420Um5tiGZV4zwXXCruK4JDJCiITxncs?=
 =?us-ascii?Q?h6+b3Dx+WWYs3TEy56R77HuXDsEYN+HSViFWhxcBdzumXbEIk2NV7nmkJajm?=
 =?us-ascii?Q?ELwncwQ7CB3Kv7UaBHT2mOHVAdW/BeVZQgz6WKfnah+g2obdrsXAF7l+B30u?=
 =?us-ascii?Q?Tlr41JuWD5XAhwiSnv3mLVey1Cy08570Aro8EELAMI/01N+KMkW/u6XAXLz5?=
 =?us-ascii?Q?JocrVOrDIZkE1lxWvBy209RgJLT3016X2Q8KRLUxhBGcFJjIBPWez28Vlb11?=
 =?us-ascii?Q?dah5mh32z0pXbJ/7SDZjH5B8kSm7r0SqFfjW1tVMoE4T14RH9mi/hu3Nhygs?=
 =?us-ascii?Q?BZuLvoloHv9LTDv7aGXk8fJ/9QdIj7h0qrtZXaPGIlJn/ZJgZh4KlKp2a3t3?=
 =?us-ascii?Q?hZN0fM1bKnTq1m9teGBN46ZHLxA4BdhYJUdlTpXz89M8OI+kHoxX4VUckN7Q?=
 =?us-ascii?Q?x77CbixD3a44hegoOJyaolmFxi5B01Zbsdm0rqS+dEPpmf9n+iLm1jhsUMFn?=
 =?us-ascii?Q?2Y8M48hrhehAyYSl9MBq9AYb4RtBW2SCv0gjVMoN+x3ZTIxuvadOK1+qjAcF?=
 =?us-ascii?Q?tjm+i5+LH4i6C+skjLbk1LVMjlxO7d2BCkuX066qe/GQ1y82LVqBWjGS+tqb?=
 =?us-ascii?Q?y2E41cm3EmohyKZqKQ58nJ6+DQ2jl2RofyVYpD08goIU1Djj+7qjwkCvqU7u?=
 =?us-ascii?Q?kdOwetcl+XLmOujr2nJwXuBNaXjy+FJMK9xWm2dfTeNnytSSFG0NlN9dfMLs?=
 =?us-ascii?Q?f7PFAEMgUw2QBzM6tdtMxHYVN0N4It0pwsSiCwTDTSOAaMit7VyE68I1FDBN?=
 =?us-ascii?Q?9/18EVVJ3dh0yYqmBJFXP1qlG0mU0JlXkY2YeUyfXFQScGeeXeRUi3hQGWDu?=
 =?us-ascii?Q?Lp/gNo+9TvNQvQKi/t7bW9PghqDNnbP+gVAPVy9miF3fp3SIWIUPDaDVUCL4?=
 =?us-ascii?Q?/miL/wRAGDhLQZ/JgvmoMWRUYSAJw1yLWj7an1Jcr9NKi8wJrf/vNAJMihAN?=
 =?us-ascii?Q?59wirsFeVpUA9Pkttyv2cEffktlqIohvg/3atFQSY1bsdKlrIgsdFW4iYoCT?=
 =?us-ascii?Q?/pa9qElwF5PEad7TJ7g+6foihU5cTXOpHgHQpp3qzP7JzXxT76Oh6EPJMipO?=
 =?us-ascii?Q?CAFMRmFWBQVwHCunWC/lJCR6/CBqInMFedUi0WAzfWe87eoLDCktUWpyoxoq?=
 =?us-ascii?Q?K/xrbp6Ok0ZD+5LNpP8pOCNDd4FAn2OhjjNBcssi8ILeDSGNumFS3/INAh3P?=
 =?us-ascii?Q?pZKGXdbVJE5f/P274Dc1FeaAklaxIJg=3D?=
X-Exchange-RoutingPolicyChecked: IJU8QloEht9nBzTfowYC12lqQia3x4qE2gjnuY8oq+wDeIpHjJcG7d4I/Qj/8LxLwnuj86vsTh/xfpx5y15XcbVdZq8n+9VTseg2sKMdzE1svw53WKcD0nGri6BFUXOpoahUSEnEZb4Vg1ZQmlJ8hHZMeXL2gQscBhJa0lg8Qpjd5J6rXscvqWZHW7LDkmAJWV2WGwUOh/+hnE8fbZ0uCv1Hdj0NXIAL6Q8giq4YQUN8nJXpUc5KsheymsJ9CySbVY2XXFPLyaczTfolGY5jUszC0RM0hm3eDf3K7ChN8CXjq01fOluiUbgcyR4Ie3ncohpr8nTb2fyvNiR2mOKR4w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 921333d5-2eb6-4e48-50b4-08dee0c54b67
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 09:58:31.2933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aJi8xDnLOAnUESkDi8+9vXPuEBd5MLTTUvgbKJ4i8tT3GXPz+1cqkI5t29uryxS7uJUMBiyijuxZGePeGX2wykkWmcEAI3tHNSQKeN/RLaM=
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
X-Rspamd-Queue-Id: B007C749894

Continue unloading shmem_sg_alloc_table by placing reading
folios and shrink call into a new helper.
Make the loop a bit more reader-friendly by removing iteration
over a structure and replacing it with a do-while loop.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v3:
 * Split refactoring and put it after the fix in shmem folio
  counting suggested by Andi.
 * Use do-while loop suggested by Robin. 

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 102 ++++++++++++----------
 1 file changed, 55 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 4a61b012fb6f..7c8de8fe0a22 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -78,6 +78,55 @@ static int validate_size(size_t size, unsigned int page_count,
 	return 0;
 }
 
+static struct folio *shmem_shrink_get_folio(struct address_space *mapping,
+					    unsigned long folio_index,
+					    gfp_t gfp, unsigned int page_count,
+					    struct drm_i915_private *i915)
+{
+	struct folio *folio = NULL;
+	unsigned int retries = 2;
+
+	do {
+		cond_resched();
+		folio = shmem_read_folio_gfp(mapping, folio_index, gfp);
+		if (IS_ERR(folio)) {
+			i915_gem_shrink(NULL, i915, 2 * page_count, NULL,
+					I915_SHRINK_BOUND | I915_SHRINK_UNBOUND);
+
+			/*
+			 * We've tried hard to allocate the memory by reaping
+			 * our own buffer, now let the real VM do its job and
+			 * go down in flames if truly OOM.
+			 *
+			 * However, since graphics tend to be disposable,
+			 * defer the oom here by reporting the ENOMEM back
+			 * to userspace.
+			 *
+			 * Reclaim and warn, but no oom.
+			 */
+			gfp = mapping_gfp_mask(mapping);
+
+			/*
+			 * Our bo are always dirty and so we require
+			 * kswapd to reclaim our pages (direct reclaim
+			 * does not effectively begin pageout of our
+			 * buffers on its own). However, direct reclaim
+			 * only waits for kswapd when under allocation
+			 * congestion. So as a result __GFP_RECLAIM is
+			 * unreliable and fails to actually reclaim our
+			 * dirty pages -- unless you try over and over
+			 * again with !__GFP_NORETRY. However, we still
+			 * want to fail this allocation rather than
+			 * trigger the out-of-memory killer and for
+			 * this we want __GFP_RETRY_MAYFAIL.
+			 */
+			gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
+		}
+	} while (IS_ERR(folio) && --retries);
+
+	return folio;
+}
+
 int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 			 size_t size, struct intel_memory_region *mr,
 			 struct address_space *mapping,
@@ -117,57 +166,16 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	for (i = 0; i < page_count; i++) {
 		unsigned long folio_page_index = 0;
 		unsigned long nr_pages;
-		const unsigned int shrink[] = {
-			I915_SHRINK_BOUND | I915_SHRINK_UNBOUND,
-			0,
-		}, *s = shrink;
 		gfp_t gfp = noreclaim;
 
 		/* Grab the next folio if we exhausted the current one. */
 		if (!i || i > folio_end) {
-			do {
-				cond_resched();
-				folio = shmem_read_folio_gfp(mapping, i, gfp);
-				if (!IS_ERR(folio))
-					break;
-
-				if (!*s) {
-					ret = PTR_ERR(folio);
-					goto err_sg;
-				}
-
-				i915_gem_shrink(NULL, i915, 2 * page_count, NULL, *s++);
-
-				/*
-				* We've tried hard to allocate the memory by reaping
-				* our own buffer, now let the real VM do its job and
-				* go down in flames if truly OOM.
-				*
-				* However, since graphics tend to be disposable,
-				* defer the oom here by reporting the ENOMEM back
-				* to userspace.
-				*/
-				if (!*s) {
-					/* reclaim and warn, but no oom */
-					gfp = mapping_gfp_mask(mapping);
-
-					/*
-					 * Our bo are always dirty and so we require
-					 * kswapd to reclaim our pages (direct reclaim
-					 * does not effectively begin pageout of our
-					 * buffers on its own). However, direct reclaim
-					 * only waits for kswapd when under allocation
-					 * congestion. So as a result __GFP_RECLAIM is
-					 * unreliable and fails to actually reclaim our
-					 * dirty pages -- unless you try over and over
-					 * again with !__GFP_NORETRY. However, we still
-					 * want to fail this allocation rather than
-					 * trigger the out-of-memory killer and for
-					 * this we want __GFP_RETRY_MAYFAIL.
-					 */
-					gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
-				}
-			} while (1);
+			folio = shmem_shrink_get_folio(mapping, i, gfp,
+						       page_count, i915);
+			if (IS_ERR(folio)) {
+				ret = PTR_ERR(folio);
+				goto err_sg;
+			}
 
 			folio_start = folio_pgoff(folio);
 			folio_end = folio_start + folio_nr_pages(folio) - 1;
-- 
2.34.1

