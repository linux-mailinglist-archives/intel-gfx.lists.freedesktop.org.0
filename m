Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kACsNpBe12kCNAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:08:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F78F3C77EB
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:08:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F12EE10E764;
	Thu,  9 Apr 2026 08:08:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nHl5KNZb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B15C810E761
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 08:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775722125; x=1807258125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=vwufpQXAHtFIdLr37ouABVZQfz/x7MO+VkvSappPJFg=;
 b=nHl5KNZba7KrcEPGWBMffS2OmsykYe1F0D+EPg5QeQFlh/GpDMgqnf6m
 KKe908JY2SM4IbFiTHZ8PEaKlukJqh2JlmsanhYWU660o4vEQ45x5M+cI
 fKglxOKZg6M/NRanFl81rNmjsVaCq8yFVTRPlBW9w369Q4AqSc1iZqJ3h
 H86qpbj8SaCH99nQtYbhcwYgRRJ4BUZOMSwA42isQEuDhWtc2IFJRupxB
 D+9il2XesUXzAH19Qz7MPxb0/m1+8KajUvnVZk+6uXuJHlo+6UBZpOZk3
 QAygzUiOlQGHkPYZ+BkmhVFBbs0PLfWDbsHe3FcqrDI2wybmNs+bkc0ai g==;
X-CSE-ConnectionGUID: N5M/vZR6SVa4qx3FAE0H3w==
X-CSE-MsgGUID: TXGPqzSQQiCXmka8L28KFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="80314051"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="80314051"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:08:45 -0700
X-CSE-ConnectionGUID: UTdDwUvaR8+gnGQuGxjo0Q==
X-CSE-MsgGUID: y5DlTtRvSD2AqxxkHTu2CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="252030026"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:08:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:08:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 01:08:44 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:08:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gdtdg6qxXmeeTSIUCTIIgQX1To17VgCf3Z7doDDA4A1/Kf7/ejLvCkIXQ2kABx3puIPsXhl0KRtAY7XGakMN1QvMeJy1wm3kR/loV6Y4gXE+nKCvf+Xpe/7cGuS/U8zKgOvFq0kT3LsGTHPq3w3JNEKmqJMKlfG9pxgkMKcNrzp7AfX9xt8ozGXppftcXirPdBLlh3jCI5Hz91Lzb2Yrgfb3C2GEkyzJXKn2u7mUJJ6Ga5ia4EnhB1ovKJVHx7UsmUxuTUy9193IZaeyPhw4Jrs2TiMRsgKAdurcWjt0aWxYgDetX5aZ8z+gR+S+xiiP5HYwnG/LNGTJYxksAzAmVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6LA5xd/VcOnVHxtI0orjfwBKJ0iIgAihlG8lhQA9gSk=;
 b=MvqLtqelDKjwHt0QY1m6mUYBVGSmRS0wWWT22AMiiZ15KnwT7H8VeX10cj1h3H9Fd9aXyZN6UzlFP2ypaodURLkGueNNgSlT3602z6rLbvEASwpWlsEJTLnyrcnAMN+hqrCnn9tr+eCDGI/ddyBSCizQn2XTBLjPO91a0M3kXmWbCEMV3DF32w/1ZQd0dNfjcuu8LMNfBHiJRR0wa1mHie2IQlkA0wmJSRh9DJRod9526A59YYVdmJ25ImjU3JF3fLrxAnMzljZiQ9gMG5vyWbD4i8EBYxsZYm49Pxolb1Sgi8bNhx9b1/wo1elZY+uFg3V2xNHaNgWU4N+z07aDkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA0PR11MB7186.namprd11.prod.outlook.com (2603:10b6:208:442::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Thu, 9 Apr
 2026 08:08:42 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Thu, 9 Apr 2026
 08:08:42 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC v5 2/2] drm/i915/selftests: Run vma tests only if current->mm is
 present
Date: Thu, 9 Apr 2026 08:08:25 +0000
Message-ID: <20260409080825.2191535-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260409080825.2191535-1-krzysztof.karas@intel.com>
References: <20260409080825.2191535-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA0PR11MB7186:EE_
X-MS-Office365-Filtering-Correlation-Id: 13afb176-e528-4d6f-cb67-08de960f36e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: m0KjF6/TH/aFazOjFlXK974Cpq6cbd2gg0MXbrqIzMHdGNvRRXmmqJsnhw5Z/vo3O1G2KXwAizJi8lJkIGtIevPUclz8Q/1DcYO2wJxGjthIhjjtmZx9uGVLFCkIwfnC+GUlgOIEkkPPY63kCty9Mnthw4WoUB0xOu1ym69X9MClhjrXxZfAmVAWPbi7dmAir8+gzo9ySBepqRRxh870VEfq5xTEEJCrWTrPTHSY0kihvqHiZLCA7H0pdRrJP8PPknT+G6oWpFj+BHFj3517XNcvJlx4mVDtbZSQ/D987uwK/fZkJwES7qq8Sq5FtC9TSqfSq+hqPqoViv6HgxRyVeI1brK8/49QTNINoOSRfMxSexenmqqO0J7WeKhM7rW8BBnLyF1GPxvxVVi+rp6BpFe/8DvAvWwoy+pH6di2rE6mFbK1zoMNPSjxTMZCQsK2urrABFb+rLcllR/U/0jgoiPvLNLLHQD372G/5om0E6tQe/Cx4CXkwN/5xuJgnpqkPy3hCTWEoOHA9CJw5lOUEP34k6kavpwyL8R9OplPYhT5/JsvR2STBkvm2kDYR5QNrlkb0uz+LZFXg0y8sgIM+1jbjfdugnHAQZRMFpiYvyDGNIrxH15oYkRBORhREdIB4i8YddaOyIOG9VsPeDQJNb2TIJ27NDZRBvk7rNAjQnD7xj8DTISNm9yTguIuQF8JcJt6uoCNMtW+uia1jyJxEmpqhStW5oGZVd2pjlW33m8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VsJkvkJnp0jyBroPWSTiPtIb1TsZ4pFM0pQsO08yGQa8Z+DLe49YXX/YKxHk?=
 =?us-ascii?Q?e7icffIPwQzU5XyhXNy357rDI+NuLHHlpJnitnG0g7SHaHv7LzP2RzHumB9r?=
 =?us-ascii?Q?8eVSwACAWiNyTeuO2cLhVe2F95RRw8lkZgu8otwgcZYfOmFDu/8r3xDeKwwu?=
 =?us-ascii?Q?cPEuwvvEZ3kvtRQa3cAollPvl3m5xWLTaja7/JKb/K7wZCq37DUQloUfGoDW?=
 =?us-ascii?Q?Bx0yRunjq4SljxHKZDcP0oI3ar9+y8rnGyluu7MMCSE5ucsZQR4W0NYLJjj9?=
 =?us-ascii?Q?buv/53GR/TT/htDYZBlpFWhd7H1WsKLLNQRSlOZ2C59muQOP3uPTNWLPKgJL?=
 =?us-ascii?Q?QvcJ6P5e23IShgI2ZH2B/7ZO5IFY56TGlSmGA5GklO112rcGU1WCBvX5WczU?=
 =?us-ascii?Q?/dixN0MsIhlZe5i4cIWmcDqO4gKApfRIJlctSq6FSZiHQkqaEuszRqtynUKu?=
 =?us-ascii?Q?kvFnFb43KgkqbpsGFLC4l8DYEK9IntoAkeAvYqe1ekvurb/6SwUxgmE/Adc0?=
 =?us-ascii?Q?yQJSouht9SqBmz2vlG7Ew+rNmVGnqQlpXHhgIs4kxfawcxo7Ra3QmAe2+EZW?=
 =?us-ascii?Q?7K6Tc7yYy5Zbwf2h4CitlV6yuxEkhM1yG5OpVD8n9rf4IIsFmHxU4OA28Khx?=
 =?us-ascii?Q?SbkQOfdZkom2bctdhEVVSCWMRWgk3UAzLyehtacU8AA1A6M9NRDezZOgUS0K?=
 =?us-ascii?Q?qs8mjugN0jkbBWdtUnys3i+TMlUvwtE4/fEqJdZ4XN1lvd7+Y7jq9UrLYRIs?=
 =?us-ascii?Q?gtFZvicc9GYOGdXk2t0k8l+JWfUBWQ3e8fIFOOUiNBaqe/92uK+KroNd9lFZ?=
 =?us-ascii?Q?M4P9ltcHb2LPmXgzO4lAsPszH+B2TZqX1UTb08MyqoTV0eM51qNNFYJiVQIg?=
 =?us-ascii?Q?ycxMZkXPBJuraFGmkSMQ6jPwfpexrFyIP+tmcKnWPTaN6XYNOVXg8seg+c1r?=
 =?us-ascii?Q?0qpYvzb83o702QhRBOaCgiKtcNlM5bD6pAvhxcutkc+2k4NwDTxQgXSFsqgc?=
 =?us-ascii?Q?VTp0wUWBnoWOLME1alcAwGXYdDfAAdm3ZYCMUxmE/9jkcGyI/yq6QCcFQZ4n?=
 =?us-ascii?Q?mMCmidNlHL+hROJzucVTzaxdbPrGeOpuWXvp1kAx9R1SU0gIfXpZ+g9T7nvl?=
 =?us-ascii?Q?fFqh93phFTcTNifl511bPVhX5TksSYTxgsfBWrzE6uSVJIAGqIpAUHAyNk5r?=
 =?us-ascii?Q?al4uhe+4A/oQM0WNWOntsTGO1iMKcZt3FqpNMqQGu92gGJjdlRUBS8fxd/Z4?=
 =?us-ascii?Q?BlOlhb5364zg4zEgJXGLo6SnNQFzmz8JMM45qOxj1ozBwAv8FfogXrwBH/P1?=
 =?us-ascii?Q?OH4ORNttQkohJYeaFDNsZRmJFHPBmGJhf4TvKT5aeZcKUTO1ACZHuAEKUZ97?=
 =?us-ascii?Q?6aIPhTTdcUDc2h1tGTmgJctVs9WbhGnOn6cXngI0fGMNaT9I8qaw3xi9oAP2?=
 =?us-ascii?Q?6DtCKfYb0XteYMSvY+LdYM70p30+iDu3pTjTJSrWjIl4WDQsyz5wkq7THLtc?=
 =?us-ascii?Q?JisN/1VldOVMPvgKya1u4jYdb/f0kzn6ubqRBFwk34EYkTlPkvk7djEgzbhJ?=
 =?us-ascii?Q?Nmp7dOuZkmmFGhtM637AjOtnLzrzkWtPknmezO/SGZwy79rnqd54A0Jwto+2?=
 =?us-ascii?Q?Dj3sAWryxknA5U4x1Fufc6KhgwPl7vO4ETaZDJtN9E02KScFHdteSG74EIaO?=
 =?us-ascii?Q?sEjGtmxhqD3Qbwse2DrjLwQSdb/ru0JPvg8HLyKdRDMdKRj3wYGhk61++/ot?=
 =?us-ascii?Q?OIMu4l8CmOe6Z+5ouacKeqtdBkmI+oc=3D?=
X-Exchange-RoutingPolicyChecked: W1RhcKqGFR/BL7WTsbqojQecAD5pVvdg3FnjoH9aXjRsbIsdXwTwBf96wp9LbyNW/o9MwyoBJllosBLX1uMCKZ6vQThj2VdzHVr4FkU4nmv1iXD4ZVd1pxRNKc9FDXCgNQuiVb9J6ZHd7SIp4tlUZEwKQE6EijNbdE3MauwH9rw15OaaEWd9pPpyMNWyKyBvVt1trl9DNXwBDZmLJyqXNTbBSnZE45nhSQ6E3QU0hQRXLL3dGg0DEk11MJ2iYPJ8VOV/j5kKjQlpCBX6Ux4gf5J9PxOuW3gITmWUW4Nq9PoleHxYcwtkxIwPZvZBZjrpbbPowVqwbi2BXyQCzyQHhg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 13afb176-e528-4d6f-cb67-08de960f36e1
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 08:08:42.4166 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3mlGO6MXMov74ickBXWJj5sQpaUsfQCByn9bLmQi0rJhVj8kj3xpgM7p50Fa7bCvFzQht8x4EEpwcFMpbc+nvrfwtnJogNREmQcWn0kB+AQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7186
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8F78F3C77EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This set of tests require userspace memory to map objects,
so run them only if that memory is available.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v5 (Janusz):
 * Add warning when current->mm is missing.

 .../gpu/drm/i915/gem/selftests/i915_gem_mman.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9d454d0b46f2..d01acfb7d93d 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1847,11 +1847,12 @@ static int igt_mmap_revoke(void *arg)
 int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 {
 	int ret;
-	bool unuse_mm = false;
 	static const struct i915_subtest tests[] = {
 		SUBTEST(igt_partial_tiling),
 		SUBTEST(igt_smoke_tiling),
 		SUBTEST(igt_mmap_offset_exhaustion),
+	};
+	static const struct i915_subtest vma_tests[] = {
 		SUBTEST(igt_mmap),
 		SUBTEST(igt_mmap_migrate),
 		SUBTEST(igt_mmap_access),
@@ -1859,15 +1860,14 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_mmap_gpu),
 	};
 
-	if (!current->mm) {
-		kthread_use_mm(current->active_mm);
-		unuse_mm = true;
-	}
-
 	ret = i915_live_subtests(tests, i915);
+	if (ret)
+		return ret;
 
-	if (unuse_mm)
-		kthread_unuse_mm(current->active_mm);
+	if (current->mm)
+		ret = i915_live_subtests(vma_tests, i915);
+	else
+		pr_warn("No current->mm to safely borrow userspace memory from. Skipping VMA tests.\n");
 
 	return ret;
 }
-- 
2.34.1

