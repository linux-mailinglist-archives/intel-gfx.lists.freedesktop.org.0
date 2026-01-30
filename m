Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI6JCg/8fGnLPgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 19:44:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A15BDECD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 19:44:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF2910EA4C;
	Fri, 30 Jan 2026 18:44:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FbiLIz8k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0408E10EA4A;
 Fri, 30 Jan 2026 18:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769798667; x=1801334667;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YuwB4ITNXex2ginWIUFAYSum4+EPI1LB3cS9kA4RuWU=;
 b=FbiLIz8klCW12olEOIZdRJXWIGRAgzYULKP8SUOUVdtHRN3rUyOC4m1T
 8G2lIIO026O5SSyU9ccCz+V5wKVOqkrv+8tNITO0xbqnva+DXsfpVuEvI
 vmwdd5OGlAylhvtWKtAFK/b6Hy0qwMwhttjPzr3h0RsvSHuMSe+YhLtCn
 k8cO9cttzVFu0f3v0PvXx3nbf8qfYLcY7DCvImGJ8+NrFOcbCjNGCnlsy
 SBHm0tSJWtLVJkP6yXjf6On3gunnzXFQJnsRYaucUn1R2TxbDCBq/25Kr
 Ke+vtWQob+N76aygCsfX65DUIL/KzjAhSTmdYKQS1I1Ec0wXgyYcq8Wi9 Q==;
X-CSE-ConnectionGUID: w+c9Y7ewQfGftCa/CWrd3A==
X-CSE-MsgGUID: vO6F+ZTUSUO4tvV0IvMTaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11687"; a="74906922"
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="74906922"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 10:44:27 -0800
X-CSE-ConnectionGUID: Mvlh4F/KSW6nH4NiUSSPfA==
X-CSE-MsgGUID: 82hKm02uTWmSZZJ1XEzVMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="208177058"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 10:44:26 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 10:44:25 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 30 Jan 2026 10:44:25 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.68) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 10:44:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L+VLr5+knXo0ice7nCXP/yRz5QeZE6UWrpG+5dRu7ua2KGZQkqodiucdWJXsruL6rg+pPn1EfSIv0eJLxWKRIiZWeOnAV8QjchpBcHd6z8k8WDx9bZbl3kyCVs+zIt1dhfk5GagWQLhOIPIcPEofUZTo4qHbwo9DGYuyDXMZiIxws0ulid8N+eu0EE6TBnqB0obM9mMw4AAW0Tbmx250wCWMZMgKq46BY+TW1VxjAkNVQGflnfFtDjXlvE/C9hoIWfU7nPyT49iJWpHQVDUAa7GI0lG4RDlJiAeOGDQ/iAlBWDOjQG+HmFoF3ntmQUv6t/ytQ5IYKpH2gOfhihBpog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eWppzUcf9Iu5Yja516eFjaEfmcaPXX00ckKugnqBHZU=;
 b=RLor7xtJB6Lrk19juACQdARpdBbiy19GzzeIqC6e6OSESsExjHPw7ixnI+Y3Zr9j9XUwrVLcG4CPHc7OamiCVAJtgcX5PZgNUx4Oj+cpcQWsGdzIRrd/LxAZloW4jN9DRrmyP4OFR97a9ntdhkRA1AzugGlylLpAh/40fgo02RXdJSSyynFBWL6Z3qh7bNVRNP4ErJrOr3mSijMQ2cigZmWl5iR6fMOtAG4os0vuX9A+p9Ln8986AU/auy0WrKTNM9VFZPEctH1bvZvuWVbTMC20CeZTq1oembV3sLoy9rearSyxnTsPro+6+1gTki+tUci9u8Kt49BWSnLpxwcAWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA3PR11MB9422.namprd11.prod.outlook.com (2603:10b6:208:57e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.8; Fri, 30 Jan
 2026 18:44:23 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%7]) with mapi id 15.20.9564.007; Fri, 30 Jan 2026
 18:44:23 +0000
Date: Fri, 30 Jan 2026 10:44:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/power_well: Enable workaround for DSS clock
 gating issue
Message-ID: <20260130184420.GD458797@mdroper-desk1.amr.corp.intel.com>
References: <20260130134534.63118-1-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260130134534.63118-1-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR03CA0384.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA3PR11MB9422:EE_
X-MS-Office365-Filtering-Correlation-Id: a9c1f6ad-5651-44c3-782a-08de602f961a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8BRQnDaInHMHwz8fl3lnNdU4X94jr+7huORjqgWjBflqRYbI4Z8NhyVhta59?=
 =?us-ascii?Q?3LwZ5XF8XcCbR5P8M13qsggz0XwCxIaDiHt9ZJVDcf7Jd+tIMCUKjpLwlzOl?=
 =?us-ascii?Q?rXtCgW6C9MXQ1xshKulqkC3gg/2lWT2PjHEOr47u8YcD9ZrsvFibiwEBsSk4?=
 =?us-ascii?Q?3XgO1XKFyt+RK64DWLXHZVHOGQOL8uFrxdQMxoh9gMcMDIExvZqVV4/k0MCx?=
 =?us-ascii?Q?/F/JxxXRr5t1QHYS2Ft13Qeu0r5cBwwiayp+e+gRrh4mw0zFLBLU1V3MWO+4?=
 =?us-ascii?Q?uaDl4wSsdI3hRdoY0QW2mFxK2ZhkaLIyTQayARogHPaSlPTG3KecPPASCFFP?=
 =?us-ascii?Q?sG6QSiXG04LQQxkhyEwiLEN0fFaVN1e6DUBeUhLt5J7iFnvcyTC4suOJ8xNV?=
 =?us-ascii?Q?wIYBCnpt7Q42wJSpKyakfvDzMYyIRLE0HjFYgjScQiVjyH+NMYULHB4mRQ3J?=
 =?us-ascii?Q?mGeNrO0NgJ2z3WBHfllckdB67mHXY3c+TsWoQlrq8vJU9j1tH/VGFUaoHdso?=
 =?us-ascii?Q?Wwhma3Mq+bHBHaoQ6b9RFWRDQ6mlAxwfrm5SfZgdhHAMmhceAJpGBnyNILEO?=
 =?us-ascii?Q?IL8gb36WBfPvdQzHIrpqHxsCcqfDu876mRvXe4E7Vusn/DXKPtH/AZfLjD3/?=
 =?us-ascii?Q?ZYLxvBwne6pXHpcNmITbG+TrYFC2Qt8inmBYSVjs5n9NmRmYvqOXnGWbAnWk?=
 =?us-ascii?Q?DL/zaEBlWuqNaqZeZbmFk1CiGGDV4c2CCjzRA7NjhtlHNtFQu3n47LcA2Uc+?=
 =?us-ascii?Q?CMTaTWYhlOdoBDCgyrpGoyMJv+CMDlrksDa07+r4XVUezn4X0pCkGWNroovT?=
 =?us-ascii?Q?Z4JNyqIJHvFdXkZ/DElziLMjtwXbREaxCKG4yQE5qh9EAg95py3N/w1CwSP4?=
 =?us-ascii?Q?Jq59TNY7X8ieBsn21oG3mIvVIZd2y/owxQarIWolwhLlzSF84Qj8rPgIyuVu?=
 =?us-ascii?Q?nVE+MJg2h/aolCYVyNctlwPO0eXCB/jIpt0pD/1s52dugHZPcXaDRdkv51Ty?=
 =?us-ascii?Q?cM5eeyom9KOlVpDVMfRTuWDpE/RCTkVWWKzADoLgJB5o2977jF43Vx2iOLvz?=
 =?us-ascii?Q?WW5xVkVhC4rRTPyLt5KWxQxgg4l10wXav6wNbN/Seqv6bLVu5zY1WfnzHrYW?=
 =?us-ascii?Q?RKkIoMHR4ngtlO7ZAZktq9nuoy9fP9s1NwH8dMB4dqu8hY9JyEHpOew5Q1a2?=
 =?us-ascii?Q?iIqATL+Ir1aHf92RMgtYb2CfAWqelIxCB6Qw9PJKW51rmNIswRvxklJ3F34P?=
 =?us-ascii?Q?A7yHJM/WLlzSr8Wb/BBMFKtz3gh6dwOapBUYfQoxPygiTvw7QgJylmrxO9KE?=
 =?us-ascii?Q?ftgzX4Kw7rHLb5HsnEBtxo77kWWQgRwOsfCXvsoQELRgsxm9oCpHepgWfPEr?=
 =?us-ascii?Q?NilmZSjfhcoYcGTc+w1faP+iUTU96+dXu/+jtBJZmkVet4OT/KNGAJ0XNL2P?=
 =?us-ascii?Q?DWEFctL74Vi109ct3v22U+trDp9JN9qmxCKmN+RumCnc9cvGX/wcjhZx/+9Y?=
 =?us-ascii?Q?eMgkEwf6wOVV2Qg3V2YaRKA7ytZOM1zo615RL9euIppLf8+k4LdaXCW2k1jM?=
 =?us-ascii?Q?SfR4zJGpnq90oiyXKME=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?i1YR1LoH2WjxO50Kkx96EtXewiLQ0KKsfBa+Bc1GtvUBJMbJhCtYpXc1F31F?=
 =?us-ascii?Q?pdtneXDY4RPY0iOQJEmfaGSm+VSKIznN75zd68BEPcHfEsPShyJViWnmmffs?=
 =?us-ascii?Q?8s1VkSwHZpOeK4DptoiF2qmvlSTAdeOK0AOID77FLaMrU2hOStkKFnC3IgR1?=
 =?us-ascii?Q?yPMsRd6TwiI7vzswLS7XXaW41r9Yicc3nh4iRrt62VK5xUG8dWdkPsPSlSVl?=
 =?us-ascii?Q?yD1IHc+ogDIpeIhOQzBnwUB7mYPciENR+Eded1zCWLXmgs9DG4qsmscigWAH?=
 =?us-ascii?Q?3ZYzY6G3vSHJAd3iNJRPGACk6xvMkFxobPNuRXcq4OW8OOfRVNpZqzj9qCm9?=
 =?us-ascii?Q?3yBRMGBYqTpKw11NNYwKY0GudszllxR+jDe5nqkEqn28pyXOztVz9f1ZwVGc?=
 =?us-ascii?Q?vXwRXlfPxcumqadt3IxNCmSbDR6YDVArSlHOpX+j+efdedVyxfHk+wXTO7ZI?=
 =?us-ascii?Q?fr3cFAVp1/W0J+7qZfsDH4xFquIV1WzEd2W2lQbl+YAjv+0X2pRJxApZUzmY?=
 =?us-ascii?Q?TO/R2eOklyq/EFMEwrsrHkqI3wqqNT5MquKTmD/N/1Pl3W7c9b66I9pm4DLN?=
 =?us-ascii?Q?W4KWGunoSKgS7SQrV10U3dnEhznka2H5ITDUv1IJxoR2/mCQ+PCCO9RJWICy?=
 =?us-ascii?Q?acjqgrtKJ09kOzE0KcrNmVrP+M7FmFcQQgCfHNa7O6vaGEsr1isPa/39g5uc?=
 =?us-ascii?Q?CCzl4Ekq86tOTPJr51kPBlxYZX2fDTNBbrtSY7yqoWGt68NbFM2UB/myBylE?=
 =?us-ascii?Q?XdwKLlG23kWDgKO8PM9XWnRaNLpy1LxdlLYF/Hzg92MyVMdvyllV0egzQQ0a?=
 =?us-ascii?Q?OS92vE1P+xgeAOtVjihJFSokkLQ/D+Taieg8p+aiEFDsqvW52CGcbRP7KWBM?=
 =?us-ascii?Q?VCKyFn/xnXC6MpdELsPkc4b734LVhctFipjaxl/idW1V9uspAj8KAyFx5k0I?=
 =?us-ascii?Q?tTm0cxH58a6kcW0EYof+HTc0iudJygvgDdU5OApRHpL2xXkkfxJerbCNqV4o?=
 =?us-ascii?Q?R6THHwa+hFrEpi2D+zJj2bzvf2MHATq0mbsF6HD94rXZKvhyDFjsqGvaticp?=
 =?us-ascii?Q?gKS+XDOSl4ArRz7II/gK24mqmgBSZqUc/4ihLRWZJnYG9oJ5vWbUvyYMtPNj?=
 =?us-ascii?Q?GakA2BVbnFaCnBZ6A4vrUqncBC+eyXTdmpurzp992T9sviSBbUOfcuolhuY+?=
 =?us-ascii?Q?vBxwSQYK6Ls4IuKKc6awzIIbj/zs6sd4G/6yycWJAcNUmFmUnXcqpMf5jzcW?=
 =?us-ascii?Q?zi5EANoHDqE/Umzg9Lcv68hmdQf52Fs5UVpWzV/NswS8fu1zn/Uc7Vnauo2+?=
 =?us-ascii?Q?tJ7unapqTAfDN3xTLB2jgwM2RYa5qQ2dOylz2q30IPYJ8Zdn+1M4u6xhvjG7?=
 =?us-ascii?Q?Rf/kzxkcjRGlZ6NgtPPJiQxT6gCYuc9i4k7faMamMLdexLZp/6cVnhxVLsZq?=
 =?us-ascii?Q?rG5QkKbsLYNBk8PqeZDZv8TUHmQ4b2XTCGbpejrpp7sQ8zUCdu6MC+QC41pT?=
 =?us-ascii?Q?NTN09ohIcxzEKFswCoJeJrgR7ABeNwrLiHwen+Yn7G4FV/PxDpfRCc+vq2hc?=
 =?us-ascii?Q?afhE56onSBzhLjpBgaxefFBDtzo84REyG75rIAFmv/zp/j6YzaPdLJHfUny0?=
 =?us-ascii?Q?WV5fMZlzebaA4ikJH7BhqvItwYVqynuqV2faEPS4hyikyjlXpJYwCJcXXoPY?=
 =?us-ascii?Q?/cJ1vOZslIrvpqAs3bHg+3Yk0T0kEdwvv/E1QFnWFpPcVa46ZXFBEZvbcZVL?=
 =?us-ascii?Q?FYTtBj08jz33ifH/h6GLXVdxIvgEm6w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9c1f6ad-5651-44c3-782a-08de602f961a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2026 18:44:23.2957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /oRXfFZ7DQg9hDWiRcxeUb4ZwaqNphDdavvXj5UdCav2F7tErSktLU+qkxiCGxF1YXGn1c53WDxyp5nUciSuM5NnllKHrgf8t2kdrijTFpI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9422
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 83A15BDECD
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 01:45:34PM +0000, Mika Kahola wrote:
> Prevent display corruption observed after restart, hotplug, or unplug
> operations on Meteor Lake and newer platforms. The issue is caused by
> DSS clock gating affecting DSC logic when pipe power wells are disabled.
> 
> Apply this WA by disabling DSS clock gating for the affected pipes
> before turning off their power wells. This avoids DSC corruption on
> external displays.
> 
> v2: Use single intel_de_rmw() (Jani)
>     Switch to use drm_dbg_kms() instead of drm_printf() (Jani)
>     Remove WA number from commit message (Suraj)
>     rename dss_clock_gating_enable_disable() to
>     dss_pipe_gating_enable_disable();
> 
> WA: 22021048059
> BSpec: 690991, 666241
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   | 55 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_display_regs.h |  7 +++
>  .../gpu/drm/i915/display/intel_display_wa.c   |  2 +
>  .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
>  4 files changed, 63 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 6f9bc6f9615e..78f707b00550 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -18,6 +18,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_rpm.h"
>  #include "intel_display_types.h"
> +#include "intel_display_wa.h"
>  #include "intel_dkl_phy.h"
>  #include "intel_dkl_phy_regs.h"
>  #include "intel_dmc.h"
> @@ -194,6 +195,48 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
>  	return power_well->count;
>  }
>  
> +static u32 dss_pipe_gating_bits(u8 irq_pipe_mask)
> +{
> +	u32 bits = 0;
> +
> +	if (irq_pipe_mask & BIT(PIPE_A))
> +		bits |= DSS_PIPE_A_GATING_DISABLED;
> +	if (irq_pipe_mask & BIT(PIPE_B))
> +		bits |= DSS_PIPE_B_GATING_DISABLED;
> +	if (irq_pipe_mask & BIT(PIPE_C))
> +		bits |= DSS_PIPE_C_GATING_DISABLED;
> +	if (irq_pipe_mask & BIT(PIPE_D))
> +		bits |= DSS_PIPE_D_GATING_DISABLED;
> +
> +	return bits;
> +}
> +
> +static void dss_pipe_gating_enable_disable(struct intel_display *display,
> +					   u8 irq_pipe_mask,
> +					   bool disable)
> +{
> +	u32 bits = dss_pipe_gating_bits(irq_pipe_mask);
> +	u32 clear, set;
> +
> +	if (!bits)
> +		return;
> +
> +	/*
> +	 * Single intel_de_rmw() for both enable/disable:
> +	 *  - disable == true, set bits (disable clock gating)
> +	 *  - disable == false, clear bits (re-enable clock gating)
> +	 */
> +	set = disable ? bits : 0;
> +	clear = disable ? 0 : bits;
> +
> +	intel_de_rmw(display, CLKGATE_DIS_DSSDSC, clear, set);
> +
> +	drm_dbg_kms(display->drm,
> +		    "DSS clock gating %sd for pipe_mask=0x%x (CLKGATE_DIS_DSSDSC=0x%08x)\n",
> +		    str_enable_disable(!disable), irq_pipe_mask,
> +		    intel_de_read(display, CLKGATE_DIS_DSSDSC));
> +}
> +
>  /*
>   * Starting with Haswell, we have a "Power Down Well" that can be turned off
>   * when not needed anymore. We have 4 registers that can request the power well
> @@ -203,15 +246,23 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
>  static void hsw_power_well_post_enable(struct intel_display *display,
>  				       u8 irq_pipe_mask)
>  {
> -	if (irq_pipe_mask)
> +	if (irq_pipe_mask) {
>  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
> +
> +		if (intel_display_wa(display, 22021048059))
> +			dss_pipe_gating_enable_disable(display, irq_pipe_mask, false);
> +	}
>  }
>  
>  static void hsw_power_well_pre_disable(struct intel_display *display,
>  				       u8 irq_pipe_mask)
>  {
> -	if (irq_pipe_mask)
> +	if (irq_pipe_mask) {
> +		if (intel_display_wa(display, 22021048059))
> +			dss_pipe_gating_enable_disable(display, irq_pipe_mask, true);
> +
>  		gen8_irq_power_well_pre_disable(display, irq_pipe_mask);
> +	}
>  }
>  
>  #define ICL_AUX_PW_TO_PHY(pw_idx)	\
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9e0d853f4b61..9740f32ced24 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2211,6 +2211,13 @@
>  #define   HSW_PWR_WELL_FORCE_ON			(1 << 19)
>  #define HSW_PWR_WELL_CTL6			_MMIO(0x45414)
>  
> +/* clock gating DSS DSC disable register */
> +#define CLKGATE_DIS_DSSDSC			_MMIO(0x46548)
> +#define   DSS_PIPE_D_GATING_DISABLED		REG_BIT(31)
> +#define   DSS_PIPE_C_GATING_DISABLED		REG_BIT(29)
> +#define   DSS_PIPE_B_GATING_DISABLED		REG_BIT(27)
> +#define   DSS_PIPE_A_GATING_DISABLED		REG_BIT(25)
> +
>  /* SKL Fuse Status */
>  enum skl_power_gate {
>  	SKL_PG0,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index 86a6cc45b6ab..f8e14aa34dae 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -84,6 +84,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
>  		return intel_display_needs_wa_16025573575(display);
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
> +	case INTEL_DISPLAY_WA_22021048059:
> +		return DISPLAY_VER(display) >= 14;

We generally don't want to use open-ended ranges like this; it might
apply to everything above version 14 that exists today, but it should
only continue on to future platforms if the hardware teams explicitly
add additional tickets indicating that it's still needed on platforms
n+1, n+2, etc.  Once a hardware issue is identified, the hardware teams
will work on a true fix that will intercept on some future platform,
eliminating the need for a software workaround; if we use an unbounded
range like this in the code, we'll never notice and keep applying the
workaround even when it isn't needed anymore.


Matt

>  	default:
>  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 40f989f19df1..767420d5f406 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -34,6 +34,7 @@ enum intel_display_wa {
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
>  	INTEL_DISPLAY_WA_22014263786,
> +	INTEL_DISPLAY_WA_22021048059,
>  };
>  
>  bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
