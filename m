Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nqwQMKrvRGpd3goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:44:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0752E6EC526
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 12:44:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MriwgFpU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7415610E33D;
	Wed,  1 Jul 2026 10:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A9C10E363;
 Wed,  1 Jul 2026 10:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782902695; x=1814438695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=pHSIEnBcBugeFbMueccTnqfkMFq2XDOoDoiwHowAJy0=;
 b=MriwgFpUAf3pVINw94cbr+1l3ZA68ii8EA+ZkReWLVq4t1wHNRqRzxsF
 NMi14Aq6lLYB6CKR1h8I9JKDc9rUZz2/qHMk3QiG+ifFKfLDTFmQs142U
 tTxr6u3XfIFwjP7X4jiIBH8Ni+0zETcrmROtwc0WWzlvwk0B0vcR8GdjM
 yJPeM1C/o5X3WGY9qCFlR59bEcA5er9QXlekNk2W96gWilVKkpAMeJjmk
 OpwgkIOPXjOwzwDIgsihpU815PzLBHwdRYsc0vbuU3DXR3kgTqvIcwv4n
 xt3MZsw8SpSVvHXk5UsL+LFMSs+UjbpJIyBkC1gsVc6YNgkJxVRKfDZO+ w==;
X-CSE-ConnectionGUID: aYtEl2StSty7ux+u51yRfw==
X-CSE-MsgGUID: 2PODlEdgRDaynLX2sIhL6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="109179370"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="109179370"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:44:54 -0700
X-CSE-ConnectionGUID: 87yuEvY9TBOVyU7m3oL/rQ==
X-CSE-MsgGUID: eGpC+ppnSQ6WpZ59wePY2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="249169607"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 03:44:54 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 03:44:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 03:44:53 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.59) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 03:44:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=frKVzD8+7GiPfbxu3XE8Srd3rto6UkMdZzHwreLU9y7cabrdBu67u6QCtEwtrB9BQoz9oOlu0RMWgjNvAB0zRjb7L8RdXvf4mY7B3KzdgwDcDZ8z5diEC6f2KVS4IQB4A1NuKuLWDEd0UV4kltPWOZoiECn+Wt1AG9V37IIZniFdhEIz9Hyyqr6laub1//35h7vSr/iaE+MIVZg9WXVYb882IHDUZnglk7SFnrW7BUeykJEE4pI2qs7pRe5bhv9uL6/lVMauTrAzoSd+Wbj4rxkmykfemmTMKMPbc0UuVlDyGonBcdFLIvWL9ztlsepx/9bN3HyD3CGmZTApKnB/XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SeGHoGBCjp+xxMzwFZDLaEln+qAS0moW7g3LANtOl2Y=;
 b=CK3VgNDTt2DCKPGswQvDsoLdSc9Eoxvjm+tEim78eG+vrP2n+pgfo0aFPqxv/TpipFISPsuLhDU4B6LufqG9JO8gqiwBHtIY/SYFxb37n0Vpb8/0oGhEMcqRQ4ZZhR0CnfQuvygUSfiIeGzMKNvXJKChLdU5oM1pPWCZKAyJWESvbN40doN2nNO7EXxkYZb1/csZEn2avHyzx2QhnakNhMt/c4YJ/mzVx0AnqtNFeurWIjg9QgB095XQzEIzGOK2xE2VwvpFf3RDzGF11eUQqgc9c1EbuebH62Kr5mYK2oGa+38Kapr6RsbHSR/DY1uUW0QZsViaZKjPnKzBh+hsCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by PH7PR11MB5796.namprd11.prod.outlook.com (2603:10b6:510:13b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 10:44:50 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 10:44:49 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v2 1/3] drm/i915/gem: split shared memory allocation table
 logic
Date: Wed, 1 Jul 2026 10:44:35 +0000
Message-ID: <20260701104437.236979-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260701104437.236979-1-krzysztof.karas@intel.com>
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0087.eurprd04.prod.outlook.com
 (2603:10a6:10:232::32) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|PH7PR11MB5796:EE_
X-MS-Office365-Filtering-Correlation-Id: 90a13549-5649-41eb-db5e-08ded75dc677
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|18002099003|22082099003|11063799006|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: N+cGc0YMIw98+v0aPIJkXRM64/lTBmbtz13+fiD0xWjsvmDR2GKejIgFQmrhqYbSTTZKm1vfBfEdc4Qo978RPZ25C90lQNFhBNwdir0j8uaFkQztfbRFnROgGfr/deVOhI/1WzSg0xodW+d4DjoTe0umGKETAQaEPE5clxMyNh+5CCE7GredNaI8ZCu1B6XVIohOsHlCk7wlkF5tXAzADC6EjVTDXAvffUje29sFPBQYuQsXjk7ROp70r7exycHJLqweQ6pAoGeFZLeuVxaFI4h+jjbUU3O1NKGh9L6eRVeeLKF+rjzbr1feNGoQTRewxzXBagKEvu14BmK+xUH9psDpYnUZMBn9ey7h5MfK8FBV1D2OZnJkjB7iMuu46k4lNjg83FdLu8tfRa3/znrxuX1qX9MzQIa7oxKKMtlRGWAvdjb779AMn7FSrX+3YexE5iB++1gxQfsbyRWK/KdZscM3DWWlC9ffbZUDtnx+QybtsgEAbdu3muNRViyhGRxqtTD8whnqJH/A7eiNe8fiTih2I/nlIxxZY15/J+pl8pZorcEhMCbvFNpclkVqcL041IfExHDDFCeglexpI+y84Obp8yC4X2Njl0gS2xjeFXFdu2tM4MGcV7AP1tqMLFZ1PTRcc+tdc/R+owCg0Mgn6zYyafdg/se1+0tViXl6ej0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(18002099003)(22082099003)(11063799006)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cSZ1NiNXiWi6RJboI+zrPOowNKG4oG/Bc+9fLZh3QXBKmEdm8nDzidyxdFWS?=
 =?us-ascii?Q?649dUIU/cu8OCulR9q5qSWmE79yBA7cIWaltE4b9ypcOjun5S6eKU5vQkJVd?=
 =?us-ascii?Q?phsD5+ux/HyTPGYCemj/DBL3vTkOiBuasapol2zSE7bEZQ/eyaOdFOyrqPvV?=
 =?us-ascii?Q?zBeS5n0e+TaH2X60RSGvIZ1iBEwfHp7nOM02P3ll3Yb00uob0m4BjB/09xkK?=
 =?us-ascii?Q?0+U0Zh58XwIz1xgI1kiojnBEqOlQ2hF/FPf5pq6TZtn2f42g+OYCGH7BBL0P?=
 =?us-ascii?Q?xckJA6yIKO6ee65+2pep2Nj1r8UcxSJ4NqgGMyMDhN6ePhfEDXdaP0SCCYzb?=
 =?us-ascii?Q?xwN/hgVnrTVERiM1NyZVnNWpL55HQUWkkpugE1jz2CQaRjlhQrtUVP0E6Ylm?=
 =?us-ascii?Q?/nNYsjzKkVAo/qhLsLh90r0b0msCmdk1ZzMko/e7dMB/z5SmXBpzzWCfll+d?=
 =?us-ascii?Q?20OPg0R3Lep/x/83TgEMA/81VROVhbYVcoGXidnqVmHTjuLhFnRqJin1d/SI?=
 =?us-ascii?Q?DC07MfmUZvuQ5PgSHJAGaaKKL74VHW/Hrn4qre9Bi9/rNgYr1xIVyuLYMHcm?=
 =?us-ascii?Q?MTQ1R/dRWwPBaW7DuClhHuhL3frpifaD9QBJ/99QlnHo8SGWCp3MDMogKg1s?=
 =?us-ascii?Q?UGhiYIX9ruFoszt9nSkf/vTBlrxUpasE+W0oTj3sfjgV4e1gRW0EKGN8yPwx?=
 =?us-ascii?Q?z+ttKSIbebltLpz5MxnieSHCD4Bji3azZYj1rcrlRIyf2CkJkJFMF+wU3wxD?=
 =?us-ascii?Q?yu05UkgDcR7qdHOrR4rhOsV6NJY3STP+cNAW2/oSLTLtG5/uYFXGlkM9YyQ1?=
 =?us-ascii?Q?L5hErN5VpraMd6wTsGITY/3MVufzukSzw4RqfLYtYkdaQFUZltYb40h9FO/H?=
 =?us-ascii?Q?Whj0gdaF/K6ag52uexnS8/nAbtCxqvCiF7W7lrJWl9itfzwy0ngKflHZ/T4j?=
 =?us-ascii?Q?Pcdv2P+p/ZXcf4CwYhzx8wmU1Bhhf2ERrb8xIuM6j+TFMDmsCaz1KJAO+GOJ?=
 =?us-ascii?Q?e7ezsHyGF+z2upr7bKL0jjBSQRaFHNEQzQT4nYuUnzDbt65TzaTw0729Jk7X?=
 =?us-ascii?Q?LDKr2tKuOuvAs4GT9bpiQtU7Fzewu70Y5+ihCibo25UCbEKaroPiWE9VxoIy?=
 =?us-ascii?Q?a89a6R+oAuOiUK60fi/ORg8V9rI4kPNv2kYCp3YeEqF5qkj/v2TkAIkShZhX?=
 =?us-ascii?Q?dBNSLFSHsGfDr+fOKksEOBUO/l+MslBjzQxPOITFDwZ2/FtcGwYXljHzxIv6?=
 =?us-ascii?Q?za1d8U3VS2zd9ZlgAzXKver6xbZQ8dEFneVc4cqlsC/ZGvab88z+xWwpJm2C?=
 =?us-ascii?Q?zZxZjvePfnYlQ/GAj57b5+mf2NetMOtPsN74ivr3soGPvbX6m99nGLrDu5TI?=
 =?us-ascii?Q?PGKEJW21i40/kUoWyxyQeJOLK952ecHlbOb0lVeJ9GVLmB49A4DGxzYw5NfR?=
 =?us-ascii?Q?ljmJdykHhhX5McoqoxY2IA1wH1iXBdGHohD3vbzpLVBgq0BtqwxoQHJ7OHIr?=
 =?us-ascii?Q?lOqs+0mKoE+PfugCgH3chp88BLJqMJQoxYYiJiGJnnA9oeluCw3GZElsbhaL?=
 =?us-ascii?Q?B/jmMmXibmUnTANH0y3munGBCYOeRc89qQ2ExxlBuGVxiHDRcU8dAZhGmz6k?=
 =?us-ascii?Q?T0M1LjcFNvqOceMBDDo1S/6w5292fNqrt3tSXV5u/5BR8rtSj9IuZO/syfWQ?=
 =?us-ascii?Q?HGPzxFEr0i4oO/JV6VbKFLOqL58WlKDKMRT2fcaBZJAE9TbVAyvaLiXiSORU?=
 =?us-ascii?Q?+trmLqUVJLut9lX3vsFF3+QfzAr+e5Y=3D?=
X-Exchange-RoutingPolicyChecked: CX4/u7qRaALFuzzq5nGgF0cL0yH13Ov+QgXHPL8uohthris0RiHLdy6wJQeCyT+13j9EvdSyg23gtERa1JYmuXak0QSQHl4NiSJc+aK0PCnII/h12DU8SOn9+2m/WnDmtX33TveRfXvno02tAH7m9DElhRxHDEWImGxAOjKM0FPhnF2Nxyc9QA1D9Uw8vz+SO+Y2IJJ5uSkqgjfN1PZmUNR7ES2I5zEd2XNtoQ7bxV59bgOh0Z6W71R1DFIKLiHQVTAJMH/aFzhsy0S47qoXyu27dY1H9w9h74Jq/BNjSGCBsKt4TlbMQujVzm/cOh3a5mahgzXqtgL4CtJZVBUIIA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 90a13549-5649-41eb-db5e-08ded75dc677
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 10:44:49.6899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gDMYQ9Gu0I7vLObVMICYLVB3TtG2pJ3jxr0qIroWt6jObIU8tHRLlK7GINF3XJpyKla1zRFIc+tCb9DrgpwqML3angp9jRjKulnGr4XfCEs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5796
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	RCPT_COUNT_SEVEN(0.00)[11];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0752E6EC526

shmem_sg_alloc_table is a complex and hard to read function.
Split its logic into smaller pieces to improve readability and
reduce indentation. Change the main "for" loop into "while" to
get rid of obscure iterator "i" and be more explicit in
traversing scatterlist.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 176 ++++++++++++----------
 1 file changed, 100 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 06543ae60706..b5ae7e5f80a0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -62,22 +62,12 @@ void shmem_sg_free_table(struct sg_table *st, struct address_space *mapping,
 	sg_free_table(st);
 }
 
-int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
-			 size_t size, struct intel_memory_region *mr,
-			 struct address_space *mapping,
-			 unsigned int max_segment)
+static int validate_size(size_t size, unsigned int page_count,
+			 struct intel_memory_region *mr)
 {
-	unsigned int page_count; /* restricted by sg_alloc_table */
-	unsigned long i;
-	struct scatterlist *sg;
-	unsigned long next_pfn = 0;	/* suppress gcc warning */
-	gfp_t noreclaim;
-	int ret;
-
 	if (overflows_type(size / PAGE_SIZE, page_count))
 		return -E2BIG;
 
-	page_count = size / PAGE_SIZE;
 	/*
 	 * If there's no chance of allocating enough pages for the whole
 	 * object, bail early.
@@ -85,7 +75,81 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	if (size > resource_size(&mr->region))
 		return -ENOMEM;
 
-	if (sg_alloc_table(st, page_count, GFP_KERNEL | __GFP_NOWARN))
+	return 0;
+}
+
+static struct folio *shmem_shrink_get_folio(struct address_space *mapping,
+					    unsigned long folio_index,
+					    gfp_t gfp, unsigned int pages_left,
+					    struct drm_i915_private *i915)
+{
+#define MAX_READS 2
+	struct folio *folio;
+	unsigned int i;
+
+	for (i = 0; i < MAX_READS; i++) {
+		cond_resched();
+		folio = shmem_read_folio_gfp(mapping, folio_index, gfp);
+		if (!IS_ERR(folio) || i == MAX_READS - 1)
+			return folio;
+
+		i915_gem_shrink(NULL, i915, 2 * pages_left, NULL,
+				I915_SHRINK_BOUND | I915_SHRINK_UNBOUND);
+
+		/*
+		 * We've tried hard to allocate the memory by reaping
+		 * our own buffer, now let the real VM do its job and
+		 * go down in flames if truly OOM.
+		 *
+		 * However, since graphics tend to be disposable,
+		 * defer the oom here by reporting the ENOMEM back
+		 * to userspace.
+		 *
+		 * Reclaim and warn, but no oom.
+		 */
+		gfp = mapping_gfp_mask(mapping);
+
+		/*
+		 * Our bo are always dirty and so we require
+		 * kswapd to reclaim our pages (direct reclaim
+		 * does not effectively begin pageout of our
+		 * buffers on its own). However, direct reclaim
+		 * only waits for kswapd when under allocation
+		 * congestion. So as a result __GFP_RECLAIM is
+		 * unreliable and fails to actually reclaim our
+		 * dirty pages -- unless you try over and over
+		 * again with !__GFP_NORETRY. However, we still
+		 * want to fail this allocation rather than
+		 * trigger the out-of-memory killer and for
+		 * this we want __GFP_RETRY_MAYFAIL.
+		 */
+		gfp |= __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
+	}
+
+	/* Should never happen */
+	WARN_ON_ONCE(1);
+	return ERR_PTR(-EINVAL);
+}
+
+int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
+			 size_t size, struct intel_memory_region *mr,
+			 struct address_space *mapping,
+			 unsigned int max_segment)
+{
+	unsigned int pages_left; /* restricted by sg_alloc_table */
+	unsigned long next_pfn = 0; /* suppress gcc warning */
+	unsigned long pages_done = 0;
+	struct scatterlist *sg;
+	gfp_t noreclaim;
+	int ret;
+
+	pages_left = size / PAGE_SIZE;
+
+	ret = validate_size(size, pages_left, mr);
+	if (ret < 0)
+		return ret;
+
+	if (sg_alloc_table(st, pages_left, GFP_KERNEL | __GFP_NOWARN))
 		return -ENOMEM;
 
 	/*
@@ -98,73 +162,32 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	noreclaim = mapping_gfp_constraint(mapping, ~__GFP_RECLAIM);
 	noreclaim |= __GFP_NORETRY | __GFP_NOWARN;
 
-	sg = st->sgl;
 	st->nents = 0;
-	for (i = 0; i < page_count; i++) {
-		struct folio *folio;
+	sg = st->sgl;
+
+	while (pages_left) {
 		unsigned long nr_pages;
-		const unsigned int shrink[] = {
-			I915_SHRINK_BOUND | I915_SHRINK_UNBOUND,
-			0,
-		}, *s = shrink;
 		gfp_t gfp = noreclaim;
+		struct folio *folio;
 
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
-
-				/*
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
-
-		nr_pages = min_array(((unsigned long[]) {
-					folio_nr_pages(folio),
-					page_count - i,
-					max_segment / PAGE_SIZE,
-				      }), 3);
-
-		if (!i ||
-		    sg->length >= max_segment ||
-		    folio_pfn(folio) != next_pfn) {
-			if (i)
-				sg = sg_next(sg);
+		folio = shmem_shrink_get_folio(mapping, pages_done, gfp,
+					       pages_left, i915);
+		if (IS_ERR(folio)) {
+			ret = PTR_ERR(folio);
+			goto err_sg;
+		}
 
+		nr_pages = min_array(((unsigned long[]){
+					     folio_nr_pages(folio),
+					     pages_left,
+					     max_segment / PAGE_SIZE,
+				     }), 3);
+		if (!st->nents) {
+			st->nents++;
+			sg_set_folio(sg, folio, nr_pages * PAGE_SIZE, 0);
+		} else if (sg->length >= max_segment ||
+			   folio_pfn(folio) != next_pfn) {
+			sg = sg_next(sg);
 			st->nents++;
 			sg_set_folio(sg, folio, nr_pages * PAGE_SIZE, 0);
 		} else {
@@ -174,7 +197,8 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 			sg->length += nr_pages * PAGE_SIZE;
 		}
 		next_pfn = folio_pfn(folio) + nr_pages;
-		i += nr_pages - 1;
+		pages_done += nr_pages;
+		pages_left -= nr_pages;
 
 		/* Check that the i965g/gm workaround works. */
 		GEM_BUG_ON(gfp & __GFP_DMA32 && next_pfn >= 0x00100000UL);
-- 
2.34.1

