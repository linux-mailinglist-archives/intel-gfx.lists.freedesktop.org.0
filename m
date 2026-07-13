Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jMReO8u2VGqnpwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:58:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A03474988C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2026 11:58:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="U/4dpEdb";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2419E10E8AD;
	Mon, 13 Jul 2026 09:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0712910E8A4;
 Mon, 13 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783936713; x=1815472713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=cPCq0cdqRtjTWEDWhvdSlkItzUpnmfa9fW//CvKEwn8=;
 b=U/4dpEdbphwlQXuCgNpuPB0IIeSt6N56K8gtdagAWrW2HZliY+Rvv+cD
 Msjbhuh6OSc21aR2UCTA6uwlFWA/W5kbB0KBtNbQkJUrr9LoAOel37R0y
 2PMBkaLXcQmbF37E09KeM8opXJMjo2t/SDLvXW5kl6Zjbs+veJVFxr/Va
 9S/VoevoDXs866PLX1oTUcrsW7VP6P/FSd6nGnzRHozkN+JbkP7G7qlHg
 jdrjH/crhnL+1qU9AgDFtOHV5jLJGEVMdw7VAAcIMynP34mfGLOwIt0WQ
 BjrfIMtZuWfRAHHh1IcFZ8xlZ+2T0q5PowKl066JEVwDfSNiuFs8Ga3tW Q==;
X-CSE-ConnectionGUID: VIYBKzp0TAmdmzbEmJcS8Q==
X-CSE-MsgGUID: O9AvSkJBTyGgDc8G2Dd7Ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="87085856"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="87085856"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:32 -0700
X-CSE-ConnectionGUID: t/Hfe4qASxK2AWRKiM2tyg==
X-CSE-MsgGUID: 6nbtHKi6STeTdnro7tR01g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="278767756"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:58:33 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:32 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 02:58:32 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.40) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:58:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LWpyG6XzioRkvf5I28N2yrB1WWYjh+UnCySkh+9HepJJpTSYuy+MsjeeHb/BsBUfR6CvTdOIPiwAHL8IFhiNp2kgBElkENuYPZ0KRTZoOD9ydabuK8JE2qa3AbC9Z4hXHV0t8a2Gl8YQafpO47GshdozQiG+xxKd8YmKRv00Ant9+iOUe4Xz/Bf4zmP/RoCxkPIPu5ZrZGIpdtCUlIsHV40WhHBPt0ECttYhAbMJTB5QgY2Pz/HRrDWhhx7MEbsHnSETN+1h0ub27rnk/1P/lgJZaF7fEMEVP5t2cdgAKnvTEwplDXNJsrIVUh0ILU7c17ng6hsGt10O4myOCr9H4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=49FxkXwYO+sTWdkXBV4C5SMKnMxBjtbyzEVKooe9ZW8=;
 b=APxXyXXLTrX/NSOzGalmepzhtkCBquZYAZm6aD9HkoejphFxBRyE3YjE3LL0y7A0l4zvalT3giSoox0ZjwGbgaAIN5dCWAScAVZ7F3BWShuc3AtLBVl9OO3rQDGC7R+fp/GWmv9FWGv5N20IPOfSA0PVGPEDvvBbWOF/QfANYUBV0WYhxFo+fCZKsBbqZ6z4uKCdLs/B2z0Y2JAOGx60fS2XgF+edEG1pnU6d9vx9Q5JwQOX75VcWmeNKR0TKXVzX9vFVga3Vh1yWn7gdIccRYxFrfgaL04vRpgAX34gq+EZrDonE8WfI8NercL7KY252+TyQ6vESRSVvVWbHI8qYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by DS0PR11MB9456.namprd11.prod.outlook.com (2603:10b6:8:290::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.14; Mon, 13 Jul
 2026 09:58:28 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0202.018; Mon, 13 Jul 2026
 09:58:28 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 3/5] drm/i915/gem: Pull out size validation into a separate
 function
Date: Mon, 13 Jul 2026 09:58:10 +0000
Message-ID: <20260713095812.1014365-4-krzysztof.karas@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 7fedbe13-ad32-4e3d-a2a9-08dee0c549d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|23010399003|376014|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: pgHdsX3b05grIntkGKukDm+07ud29lWP7S35wYcj8XDZf8JRkwilQ+5W8IeLOKUzfaV11Z6JZXOq3diUFA2eAugu//nLkb7b2/J/gQj5fLJuYH06gq65ZhlOvuQMICKYy4PbvyeemL8yckqUYZXCBy94rj1ZIU8poiZT1N+wewrljq/S7Cc/Mx1mAt7FmWBX1AkCczZtr2ynsuTNi05SAhTiLsyDPwl8Vr2eVaoqcA4mAA/3b+YBIH+aisx6QMuKeBllJfyTue4AGHZlONT/95UpwbG3QjySqphmhDYDfYhTHJ1D2V75DXWjz4eRoClBbfO0aJnVtC9OlYv3O0OnjOAE/OB087YHG2f3nIYyHPiuKx9A45hCIHVar4RvNsKe8A+UgDGRoMFml/0jYoHX+WXtegRGp5H4Yvli8B3jfgYqLMsP2hT8HCrQY8vxrBVCvSBUKkwKusrif6iXu4OuyVCZnh0PuFGFcNrRt4teCpC+LQRii5ff2rvJrZV4y/pD78Es7YBgdgVpfhRDY2PiCsRBNGetGL8AK//9YuEX7zPuLycxcHVisX5zChG6soviQAXCVP86hF1eyHCh8yv1ju4GDpfv5NKVB2ciaUMxxXdvdn6jByEzeaoMD+B7h4eZiiLtzDiHwEDHBW5onF9Enemm7pI4HlXhW3yjMhvt9B4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lSKLtEK6bXMdPN3cdwAoutVVKbDgykNey4ZfA/8jsUs0qm180tWKvk01yB/n?=
 =?us-ascii?Q?z0JJmhi6a6GZqBUNAGUJOdpo+GIAug57WeeJmjkoP5QdcnhZaUqbTnWHag+7?=
 =?us-ascii?Q?P7bAINJNaIsD2ywUfXpHV3PE5HaM3+0UD4X4lY86+sbnmnkw/VKZJ4wjNbji?=
 =?us-ascii?Q?Qo83MNj17FSvzhCEXCFl37lTLE4VFb8zrRPF6sMTPEtyvnO2SY2PcQansaza?=
 =?us-ascii?Q?mXdwy0zmawi+ifpXkFhnwmvpwrmiuKQMLRAuuKTLBjIPzkw8od25jSWv7Kgp?=
 =?us-ascii?Q?AfBlhTi+iRJ/j07rp0YfWcQkYsPEXZhivDH9eWJeO24Vrm4gNebm3vMNYp9Y?=
 =?us-ascii?Q?bjnqLUPc23xe/4LG1Ls3c1f1+w/ungtkgmrVvCl+tkJKnN5WuiHVzM2QW4/3?=
 =?us-ascii?Q?5mG7s1eqcxjSmQFhr8owwFJ93NqUB/oofaauzi1umz1n8LRSVMcMMPxV0Hbr?=
 =?us-ascii?Q?N8opAYknLdbvll3vm4BXPpZX2D1/WEIymJe9XEH7eiE9cVPHItlGmBx0DO62?=
 =?us-ascii?Q?Q3dvRDoHspS0MbxDYabt1y1UHCkHFQv4tdXh8vQ6DPjmdSrxVoc9lXb9Clo1?=
 =?us-ascii?Q?UO+bVqOgQZPitc6HqR9MG0QH+kMZRe1HY0nB4QbsFqefb2ni/edus1SQ157k?=
 =?us-ascii?Q?u7DcC8x0M6O1Nd8tCm+/Dz8SJgrdVblLVT5vo4yJ4INGdN/Zp5BeOS4xNJIH?=
 =?us-ascii?Q?wH6KlYSgqj/1wMSMieEDxE73ejXupod/mgrWKqwN81Dd/nb+7TnguVNOV/kl?=
 =?us-ascii?Q?SM368d6RRD15eD35KuL3MQTxX7cSHtaloyVvdvShvXUWDqxSJaAf4rE/9u5V?=
 =?us-ascii?Q?YAIfaatP0Yqbm5mq2RwywT71z1xttWCoOCVb7w1t83fJTgQDeBXzTmXDlZPv?=
 =?us-ascii?Q?wCxJBrwp0aeIRwNMPsgDpnbNe718XcQ+xSde/agLdzgkCwl86euKnzn6grWT?=
 =?us-ascii?Q?0O1pZM7KERiozR8/ypMNvlwdnGmWSGPftahix6bz/yxcfVf4Xxmrb0d4x1wQ?=
 =?us-ascii?Q?ggsnBjZsFmXVb3FcYSL92mFWMBQqv/fVsooAvmEh4W35iGFiMFnMb774vEE6?=
 =?us-ascii?Q?bJeNm4vbsr6X+GV1szZ0JPR4z2r9F2wVQt0jN560Dqn+GQlZVn9wk2O5qXI1?=
 =?us-ascii?Q?1X6vzfSmDXp6Vo3HweIprFydO1LhCS9NT2wlHNFxQ4etXVCfbOvOWW0WrmBd?=
 =?us-ascii?Q?Qi9lhNVF436ibMrBRQt6PR29fs+b2WmE+YIvDfxMuAENQIbPBZREAAYpUtCu?=
 =?us-ascii?Q?vJzSegziOeqN2rsSmnRzfYOgyhEEGVEFSAV+1ouf34uOBk1e0dx+P7rLHB1R?=
 =?us-ascii?Q?f+rSbCk/+w1eLIzq7vvp7d4ExbKXJKV0m42+zBhcFmc3mkBZagNorkrf10Zo?=
 =?us-ascii?Q?K8pQphVIHCSA6PtFxhe7hfY7uB5uhikV9TUiHN0vHTJ9fQ95+mbcoDkUHla/?=
 =?us-ascii?Q?FVomAuZcjQL18F78NN7TY3DRlwpdjFru6KMhPGWYdBJlTb9WonwF6Ej/oXs8?=
 =?us-ascii?Q?4nZ0oAAya5Hns2xDZkbMAFqG/VY/uVmjVqOmCFmmHKYA0v8vlXp1AqAhAn/W?=
 =?us-ascii?Q?XgotNA1hQGJFtWYIoJJWMrs+dBtOTKoy4sxsSc9Pqhxehk6f6gHp0oo4ArYx?=
 =?us-ascii?Q?9rq7xJ/fnY8rN/mC29L4LjcheKDhV474aioHTtUJXCYChvYSLjT3T3PIQSD9?=
 =?us-ascii?Q?1jNN5abuhFv/ATS6pkUBvMgOf4LedHduIbTQwrK7KT2DTFOmBDlw0coFFWOT?=
 =?us-ascii?Q?ul0z++e9RcO+ekH5CSEsYeOMKbHUl20=3D?=
X-Exchange-RoutingPolicyChecked: a4gc2K8/j3+xdpD/R5erKlJiQYJHdO2OHHWJNmw6OBD9rlhW4S6s9hctBS503Tz1bbdCaibwVKR+24NgiSanDuhxjidK85uJhq3xbk749Ps62Y/4D6sq9hrM9QpKI/6eieB0X4J8rtxrgPffiuZZbl+FpbNKXb5KUFBzMAsNJrh5d7gWb3h6/vSVFgpN9VmuCmSeMGfHqTNEn3X0QvrI15fFJX/60UtloaaICDNo4aYtQb6SWlu83OWjCaaV9n0JVwQYkwCU9oPJoVSmxWeiyhplLvo0qsCe1/m3lSb5b8HyZNqUvyzoOHv/bwsRoqon8QOCx6UfcElZPIug/9W19w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fedbe13-ad32-4e3d-a2a9-08dee0c549d6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 09:58:28.7171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WEfWzH5Sv/gaDWe0ZDKKxontZ4surWmKl3YHnsl3BAOEEKiB+VWe/9sIUyANdwcKPGISl+96rZGuecfZZfYR4fs1BkzGcKAUaRelUIoe1WI=
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
X-Rspamd-Queue-Id: 9A03474988C

shmem_sg_alloc_table is a very large and hard to read function,
so reduce the number of operations it is responsible for by
placing "size" validation in a new helper.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v3:
 * Split refactoring and put it after the fix in shmem folio
  counting suggested by Andi.

 drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 29 ++++++++++++++++-------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 0011d76f5b8c..4a61b012fb6f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -62,6 +62,22 @@ void shmem_sg_free_table(struct sg_table *st, struct address_space *mapping,
 	sg_free_table(st);
 }
 
+static int validate_size(size_t size, unsigned int page_count,
+			 struct intel_memory_region *mr)
+{
+	if (overflows_type(size / PAGE_SIZE, page_count))
+		return -E2BIG;
+
+	/*
+	 * If there's no chance of allocating enough pages for the whole
+	 * object, bail early.
+	 */
+	if (size > resource_size(&mr->region))
+		return -ENOMEM;
+
+	return 0;
+}
+
 int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 			 size_t size, struct intel_memory_region *mr,
 			 struct address_space *mapping,
@@ -77,16 +93,11 @@ int shmem_sg_alloc_table(struct drm_i915_private *i915, struct sg_table *st,
 	unsigned long i;
 	int ret;
 
-	if (overflows_type(size / PAGE_SIZE, page_count))
-		return -E2BIG;
-
 	page_count = size / PAGE_SIZE;
-	/*
-	 * If there's no chance of allocating enough pages for the whole
-	 * object, bail early.
-	 */
-	if (size > resource_size(&mr->region))
-		return -ENOMEM;
+
+	ret = validate_size(size, page_count, mr);
+	if (ret < 0)
+		return ret;
 
 	if (sg_alloc_table(st, page_count, GFP_KERNEL | __GFP_NOWARN))
 		return -ENOMEM;
-- 
2.34.1

