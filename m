Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 63X5Jce2VGqkpwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:58:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D41C74987F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:58:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nfokiL6P;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C66E10E5A1;
	Mon, 13 Jul 2026 09:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2841A10E89A;
 Mon, 13 Jul 2026 09:58:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783936708; x=1815472708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=8Uv3qdY7KIJOGpwFeHNjXEAT5xnrHQV2fvT7q93mukU=;
 b=nfokiL6PhRcslep4hS1+pwIrtES+pL9zNwQzKPlzmyTHiyjC3orUL89i
 vFH1nhkKz1QJAtXciAROtjScH/qaxxqW+MPXr/V0MLKWJr+gq4Hnvs6pP
 be17SjV2O6oYEBNX2qvIyIMYj8cUtiJCneZ6zGucL2hFMhqpCQca59MLS
 1stSihurePv3O8POvxnSsvIbYG/bVJ7WqFuSTRBaZ+2ooFXr7nJlgxESg
 Nrw+Gz2rxiWzWLNtGvIyvxOSvunmWZrOuG0PuwqhBFoqno/b91icsLhrJ
 GrRfQosu9jSrxcHPTPL1FvHekijfR29EX7kC3mo5l5Ci/C+zKTps2ew/n Q==;
X-CSE-ConnectionGUID: bu/qROjJS6+4SXv185kNng==
X-CSE-MsgGUID: k7zE4AfISqyAk4bmhxpvug==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="87085844"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="87085844"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:27 -0700
X-CSE-ConnectionGUID: ybr3jluKTRayZhUIu9zusw==
X-CSE-MsgGUID: sbuctjo/S46KNtWtWiK7DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="278767737"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:28 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:27 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 02:58:27 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.52)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F23sJeWDIlcF03enlA1vAlfEDEBHCKMS2yJHO6T5kOGvobcNsokbxjPcgwkynMqiPhHdjhvl3d0X+xKfFaY4CzGFeD5j2eCeQVRvGpST4Ixi1+fVYQnmuWupiQzC/Gwi9nwrxr16Gji9avDomcfCp+zKm35WMzHkIEhpD6YFMGays6WN+DOmUUVczMcWeayCvyGi5yFk6yRMX8zzZIgylGEbXDtI09rFVDC+A1HDvqUVwUQORDeLrYZ/DnBKt2hxM388PT0HUqWAQ1sHzYpezAPN0bHQ/qemmjQ2t0xWGX1j5C1LiXap7qSTpKIKRIZee/JWyUx8rLnZtYt9tQpJbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=unOqYlrFqPkwRShc8f68JbAOP2Wj2nPYA+xzjgcTFRM=;
 b=cTskTw7YmZcGCLmamUtK+/OMIgfLPF9gF2PhtyKWjpzPzboqsAgSdFa2aH2XueRqpeeuvUVMWdwzVXfv0PBsIwgNU6Ulcm9ltWgvWoFly3OKgIPPPYjT0xT1O2WyqaRyFAx8UzNTDgzCE5ENWwU+aiNvRVK17BedBEorAKTPX+LupAKAc0viTuy8VkZbNuwQdwi3gfwphKiwkuKmQBGQc2FB17DJ9SQk0EUDfM4Xt3+/g9FdrTLMSNFqjqrk4sTdUVGYIazYT70rovF/wgqOY08tbazANvaE0Usgon8g7kyKffMl7p2cx3K21fJWOmK1ZsPpgeqQmaAMQXQ5VPdEUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by PH8PR11MB6682.namprd11.prod.outlook.com (2603:10b6:510:1c5::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.9; Mon, 13 Jul
 2026 09:58:23 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0202.018; Mon, 13 Jul 2026
 09:58:23 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 1/5] drm/i915/gem: Count mapped pages in a folio
Date: Mon, 13 Jul 2026 09:58:08 +0000
Message-ID: <20260713095812.1014365-2-krzysztof.karas@intel.com>
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
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|PH8PR11MB6682:EE_
X-MS-Office365-Filtering-Correlation-Id: 479429b2-7814-4ce0-5c34-08dee0c546cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|6133799003|56012099006|11063799006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: owWBJN28C9aFWu/qjMjdO407EHP66OibPkdjcwifk2xYaZMlXPWngx2esjNvSgFGHwE5mEWFZdxZcSNrdo7UeyoFAeTmtdgfWlEcL6e6GczNlZHxqyh+V5G1umRj4gEChCzCzz3oAyzrC32lUfNgMNQoaqDjVTO5u5AH6Bs317eAJ1mfksWQ5RHD++A38iiPztc+s3EuBBHcsb+VtDYcFCN+yhTT1gqP9NlBXDPRQ0unCVocCL0D8zfbHt5xUpGh/StwkFxvC+P9NHd4ObTnjETplnCV4bnJxQc/U8G4yJZruVxHMP0cTKd/d/t829CU0SxdSmtNmVVH+5hU6qD9XtwTEP7X+VxoodbGNdFdmxL1wNdHJLtu6LpagPRQKXTzLWtKmxEMCPFjk3Jj77nsiPlQBNImDpOASy0JqnU27IiC4JOry1Njp7zoHeRedL0ZEIFycBGJEY+8l62qfTsDU1EPmVq/JFD1ni3p2dYui/neKtXuO8lf4I/YHxrVd73fpv2SLtAqQ/iKuBWOqjnC9UcLD7YGzAf0PZNAJqGStcFfcjHYpFZ3gzLj9H+q4oHqg6+kH5SKXnd079n+v3I63mL+jwxb25EQt3rUsnTNO+IO9czSKZGKsQPck5/AcVvC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(6133799003)(56012099006)(11063799006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9QFFW6vqJaNfMYEvz8loYL/NC5gESPU2Q+H2MlD/JUx1CMobhbSlgu07f9x2?=
 =?us-ascii?Q?HwN+Pmk/S5ZVbcuz6rlA+YmLosY+Ht6oar63F8TTrFLwVo9MTElaZivpKSIb?=
 =?us-ascii?Q?85LlqCk5bzSDsHMdYeL9nOaqJNfEJLQo5F+vKx61fbm5Hb6GSSv7RSDJBQa7?=
 =?us-ascii?Q?VmelYPc7PoduQmduH83Kgc6x7GEXEBHbLzssfXh8z37CXf/yJT6Qt/fMJ7cM?=
 =?us-ascii?Q?YYrwHo4LUj9/KIIXI71OFo9HmGt3Fqm6UMfDdVD6QV4PZussjxNWrx/5mM0C?=
 =?us-ascii?Q?gijYvdTTm18h4SRB9hDmrNBq7fXMKm63XW5JkTGOk8RNkCJQW1gGQx06WP9R?=
 =?us-ascii?Q?bPeQIRxSIAlHF5fVNWlsiANJ7HJ6+dfLzXYmpH5LVbbi1sy0uSvmmJWQOkW5?=
 =?us-ascii?Q?vaIbZMLhwR4C/i9vjEDcuqgq908ePPMO8mC5CDwxvvoLakeI5oOQS7d21lOI?=
 =?us-ascii?Q?7znWg4UfLuwfSlW09GEK6fAFTPP7tMFug8zsJNybB9p6bQ6O1PnY2Zb18y/Q?=
 =?us-ascii?Q?xxbqQaBPSzsG+okgCiPhwuG1pHy+MxQfbwlkjTjTQ2MEnojcvud1SOtVDvrD?=
 =?us-ascii?Q?jHyo/jh9N5FzM+JbgfLqmRrHu2yc3lK5rSBA7AOGvWpboPCmJ1vqanRrT+AD?=
 =?us-ascii?Q?ELJQD+WtOH8oSVx6qdQgNmd8I0Cl11qle8CLRiUZW5Dh5zwCDAw9RBICNePP?=
 =?us-ascii?Q?JPzWiklOAu9UsA/0+Mo9YZdkaCl/huk3QPi4BGYLaTsADesVJ3HzIV7h/uwo?=
 =?us-ascii?Q?NrA6oLl+i9rZwQHfJX2Tz8NN+FXW6fL+idgn53wJ2Vxwc6ujr0/ZxrgnTlu5?=
 =?us-ascii?Q?i2X+NdkdiwUWvStlg+DciVs2/B2qSCtmObIwnALeIMf2XH1jolkvys5BY5f+?=
 =?us-ascii?Q?bYTlIYnKUMwEk6W58fOysXrbKBbUDtFyQZ/5nVcMHMVM3kypp3sOE5gMhjUB?=
 =?us-ascii?Q?eIWml5BHr2Jz2PmGnScagsTMTIQEDI5Aw8cjPrqiD01tE15O87raacbh7OXo?=
 =?us-ascii?Q?fheptN499Wn6BGC8vhd/aGzgpt5b/ctYYSnICRr1j5JyfmmFEVwwcGLh3rCb?=
 =?us-ascii?Q?zJjoFLl5l7buVsccUSH7taOFMI65t/JQl8+IifiFX03RYKoZ91Xy8ufpsHaA?=
 =?us-ascii?Q?wJP/aFbnkKDIWulAA629HFEpdiV7QU9F6TlL2bq6pOuZHHG5bw537MTq/fAI?=
 =?us-ascii?Q?N6dwCL4FAlViKrkemDA5pQ4IR6fbA/UUAM4jv6VtwJwqrgiavwoPdfzUsEoP?=
 =?us-ascii?Q?1RM6+r8tu+XJ1dBS0u36/MAJNXR5iRG6jQNbjZ3rCbdUzTOOg6Ye5BtAH6N+?=
 =?us-ascii?Q?nzoGABojGedIctkAjYcsYo+rCu5CbhzmHDd7XG+oe7FIEazI2REyEi0IPCbH?=
 =?us-ascii?Q?H9IDDAqT3yollnQbsBStlh8cpPrQKaGsy6SAoYN+9Pd4NK0X+ouD/PHbITtU?=
 =?us-ascii?Q?g9Tgg3P8iSJdONZMiM6tOITsCFFdg2Hb4AlkO/0I1NDqY8XaGxgu06pxcqx3?=
 =?us-ascii?Q?Vzs+DuhEPtBhZ3tjmqpyA48bt/OnlcB3WbmEL5fT1oAYbjWAniBckEnGZiaN?=
 =?us-ascii?Q?hMlgz3mU+PApgnQH/QJlxjSy+WOP0BWvk0/7OHLwB5T/r1Wi/QU0EDpFmmq1?=
 =?us-ascii?Q?f7S9RQf3MIXIbnRJKwOmYC8Tm6/bU0dACuQ9O9z4bWXfWVZaPftk7Snf0z3E?=
 =?us-ascii?Q?+hOaMFRrMYnvGv5PhZLja12gQU2/f7hG2WRpbnSWVQOR6EcSy6c7XpXV5nze?=
 =?us-ascii?Q?mExdwoCXDNGsKOZuEUKUapv/3rWar10=3D?=
X-Exchange-RoutingPolicyChecked: AsvnuNB9iBu504CRCZ3sAPoeBP5RDvNNQkKqgmx2WZ0aKf+f2ATFJhAeTTiBGfOSu8DkHbM0wREEMvD2zknPR85eOReiSxrDsHxYJvDdHXOnJT+j/7vQPJ81uWOUeOuxhxzin/lR8b8dsT8SMHQzxiBFmmWsYBuI7Vpo5oz5VCZ6LypZxQZbBlvvbO5A0F4YU5/k85ghuOnig4GaoBipFdV9mCvaWwOfOD8GIjrfN2iitXDQ+Yy8J2CWkBxrURSCRSzznWCZfYMsSRuPe/zbuBul0EgvK1U43N0q8odmuPERJNSthn4bNKHF5DYoApd77yw+NzWZc0Sjggj5yWoMkQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 479429b2-7814-4ce0-5c34-08dee0c546cc
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 09:58:23.5519 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zcpLFbHSvOBoaj2kzxMCluAEtuf9sU0nic7B0sYA8sTNaBcCWjWYouzyeGtouKPBswUPRjosBk/6WD8BMqXuifHAEWxNev3dPi11AgOsHY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6682
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
X-Rspamd-Queue-Id: 1D41C74987F

With addition of commit 029ae067431a
("drm/i915: Fix potential overflow of shmem scatterlist length")
max_segment size was included in calculating a number of pages
for the scatterlist. This meant that segment sizes considerably
smaller than number of pages in a folio (see shmem_get_pages(),
rebuild_st label for context), were not enough to jump to the
next folio, which has never been a problem before folios have
been intoduced. In result, sg_set_folio() was called multiple
times with nr_pages smaller than folio size, using multitude of
scatterlists, all pointing to the beginning pages of the folio
and never fully covering its range of pages.

Track how many pages have already been counted in a folio to
ensure it is fully covered before reading next folio.

Fixes: 029ae067431a ("drm/i915: Fix potential overflow of shmem scatterlist length")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15816
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v3:
 * Fixed a bug that caused first folio to never be considered.

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 120 +++++++++++++---------
 1 file changed, 70 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 06543ae60706..0011d76f5b8c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -68,10 +68,13 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 			 unsigned int max_segment)
 {
 	unsigned int page_count; /* restricted by sg_alloc_table */
-	unsigned long i;
+	unsigned long next_pfn = 0; /* suppress gcc warning */
+	unsigned long folio_start = 0;
+	unsigned long folio_end = 0;
+	struct folio *folio = NULL;
 	struct scatterlist *sg;
-	unsigned long next_pfn = 0;	/* suppress gcc warning */
 	gfp_t noreclaim;
+	unsigned long i;
 	int ret;
 
 	if (overflows_type(size / PAGE_SIZE, page_count))
@@ -101,7 +104,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	sg = st->sgl;
 	st->nents = 0;
 	for (i = 0; i < page_count; i++) {
-		struct folio *folio;
+		unsigned long folio_page_index = 0;
 		unsigned long nr_pages;
 		const unsigned int shrink[] = {
 			I915_SHRINK_BOUND | I915_SHRINK_UNBOUND,
@@ -109,71 +112,87 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 		}, *s = shrink;
 		gfp_t gfp = noreclaim;
 
-		do {
-			cond_resched();
-			folio = shmem_read_folio_gfp(mapping, i, gfp);
-			if (!IS_ERR(folio))
-				break;
-
-			if (!*s) {
-				ret = PTR_ERR(folio);
-				goto err_sg;
-			}
-
-			i915_gem_shrink(NULL, i915, 2 * page_count, NULL, *s++);
-
-			/*
-			 * We've tried hard to allocate the memory by reaping
-			 * our own buffer, now let the real VM do its job and
-			 * go down in flames if truly OOM.
-			 *
-			 * However, since graphics tend to be disposable,
-			 * defer the oom here by reporting the ENOMEM back
-			 * to userspace.
-			 */
-			if (!*s) {
-				/* reclaim and warn, but no oom */
-				gfp = mapping_gfp_mask(mapping);
+		/* Grab the next folio if we exhausted the current one. */
+		if (!i || i > folio_end) {
+			do {
+				cond_resched();
+				folio = shmem_read_folio_gfp(mapping, i, gfp);
+				if (!IS_ERR(folio))
+					break;
+
+				if (!*s) {
+					ret = PTR_ERR(folio);
+					goto err_sg;
+				}
+
+				i915_gem_shrink(NULL, i915, 2 * page_count, NULL, *s++);
 
 				/*
-				 * Our bo are always dirty and so we require
-				 * kswapd to reclaim our pages (direct reclaim
-				 * does not effectively begin pageout of our
-				 * buffers on its own). However, direct reclaim
-				 * only waits for kswapd when under allocation
-				 * congestion. So as a result __GFP_RECLAIM is
-				 * unreliable and fails to actually reclaim our
-				 * dirty pages -- unless you try over and over
-				 * again with !__GFP_NORETRY. However, we still
-				 * want to fail this allocation rather than
-				 * trigger the out-of-memory killer and for
-				 * this we want __GFP_RETRY_MAYFAIL.
-				 */
-				gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
-			}
-		} while (1);
+				* We've tried hard to allocate the memory by reaping
+				* our own buffer, now let the real VM do its job and
+				* go down in flames if truly OOM.
+				*
+				* However, since graphics tend to be disposable,
+				* defer the oom here by reporting the ENOMEM back
+				* to userspace.
+				*/
+				if (!*s) {
+					/* reclaim and warn, but no oom */
+					gfp = mapping_gfp_mask(mapping);
+
+					/*
+					 * Our bo are always dirty and so we require
+					 * kswapd to reclaim our pages (direct reclaim
+					 * does not effectively begin pageout of our
+					 * buffers on its own). However, direct reclaim
+					 * only waits for kswapd when under allocation
+					 * congestion. So as a result __GFP_RECLAIM is
+					 * unreliable and fails to actually reclaim our
+					 * dirty pages -- unless you try over and over
+					 * again with !__GFP_NORETRY. However, we still
+					 * want to fail this allocation rather than
+					 * trigger the out-of-memory killer and for
+					 * this we want __GFP_RETRY_MAYFAIL.
+					 */
+					gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
+				}
+			} while (1);
+
+			folio_start = folio_pgoff(folio);
+			folio_end = folio_start + folio_nr_pages(folio) - 1;
+		}
+
+		folio_page_index = i - folio_start;
+		if (WARN_ON_ONCE(folio_page_index >= folio_nr_pages(folio))) {
+			ret = -EINVAL;
+			folio_put(folio);
+			goto err_sg;
+		}
 
 		nr_pages = min_array(((unsigned long[]) {
-					folio_nr_pages(folio),
+					folio_nr_pages(folio) - folio_page_index,
 					page_count - i,
-					max_segment / PAGE_SIZE,
+					max_t(unsigned int, 1, max_segment / PAGE_SIZE),
 				      }), 3);
 
 		if (!i ||
 		    sg->length >= max_segment ||
-		    folio_pfn(folio) != next_pfn) {
+		    folio_pfn(folio) + folio_page_index != next_pfn) {
 			if (i)
 				sg = sg_next(sg);
 
 			st->nents++;
-			sg_set_folio(sg, folio, nr_pages * PAGE_SIZE, 0);
+			sg_set_page(sg, folio_page(folio, folio_page_index),
+				    nr_pages * PAGE_SIZE, 0);
 		} else {
 			nr_pages = min_t(unsigned long, nr_pages,
-					 (max_segment - sg->length) / PAGE_SIZE);
+					 max_t(unsigned long, 1,
+					       (max_segment - sg->length) / PAGE_SIZE));
 
 			sg->length += nr_pages * PAGE_SIZE;
 		}
-		next_pfn = folio_pfn(folio) + nr_pages;
+
+		next_pfn = folio_pfn(folio) + folio_page_index + nr_pages;
 		i += nr_pages - 1;
 
 		/* Check that the i965g/gm workaround works. */
@@ -186,6 +205,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	i915_sg_trim(st);
 
 	return 0;
+
 err_sg:
 	sg_mark_end(sg);
 	if (sg != st->sgl) {
-- 
2.34.1

