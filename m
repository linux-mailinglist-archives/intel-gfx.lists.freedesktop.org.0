Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFRAAKWY/WkJgQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 10:02:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4B14F372A
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 10:02:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D732110F3CE;
	Fri,  8 May 2026 08:02:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCCBX6JX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B67B10F3CE
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2026 08:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778227360; x=1809763360;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=fs0cqhnVl0jiONYqX0igmcks1T5IxgUNRIKDENgxMOM=;
 b=eCCBX6JX04rLsnjSEJpVd6XPBDnR8qMXJFL2PlcNyc8BfZUjjgg1jwBZ
 /duh2bkWg9W5ixWeLTDRZ0Ac0Km3ViSQ4LZlnHqsd4VRaz+CqmbYxcIDY
 galak21KwBRk9LkI1+ktwMYFnqPAETImmZRBK7wHBtE/137+vbalEs4wr
 n4VQ24UwxpR/W/AWFDXs6rUOg8dEt4j8CRfvUQYz/+uiPvS0XPyOH9x2l
 Kk+ZgT8+4pi8F5ELp0ZmQszB5DU7rATVL7dPdRJuJmxiucQ7SbznM9nkz
 PKPS0TXBuq3F0mZ+NTh8P3Gc32SIo7nD8RXq4qemBj0+qwtISMAVHGc8d g==;
X-CSE-ConnectionGUID: scFM5IT9T3mXo6eoEa148Q==
X-CSE-MsgGUID: 8H55Sao5RgaveQUtMJQQuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="81756057"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="81756057"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 01:02:35 -0700
X-CSE-ConnectionGUID: mUV1L+jrQSag9L6bHNsAoA==
X-CSE-MsgGUID: ak+NVMOCQEGnDKUpY+UKyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241674975"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 01:02:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 01:02:34 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 01:02:34 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 01:02:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AYH4QTKMNfjSNKeZqNOHyyT8dECl7iLPQhkkl+pd3aVzM85kIQq3gsYK4KCwnSLX3VLk/QJDIjRZVufRCMI2uGnhL126ezuOumdv3IEnHXoenF1gW+DD5hgYaLBOnMfkvhbn+sREahRGXdNMaLf9nzo64OEr0MJRk3TokCeSypvn6p25VGjBTD4x7iLM2HiQtwMdlc7hbdXd65xlTAnFsSgUtZwU04JQ6VmOdq3B5Si06SObiQIfoyFML1RKc+ssbCB5KqXQIVNjsLEZeydnt/uvti46a/gn103QmYlTAIKNn52ikOm/cj/zIi/op3lxJEVQ5+ihiYDEZjQFdX1t8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wgPn+6Ol8Z7nEsMPRsCue2sYVjRLp3CaIGfsnNv6S0A=;
 b=CykN6wZuofX98DD1aYuVXoAL0TnFmnn/rB5U5oZNB7+8q4fx/5HF/iKN6BhuLdgCqI0qUNwywtsRHqahoWGwwqk+4qDmoQqAK0kx4njI0GJb/MiN/CVzaRpVZBOQ82VVyVLJgop8LtlmalgJ+Z2vFfi1X/ounJaf/YPeJpbS+mp4n4NnnrUNvd8PPTDiKLBppxy7kXSNqhNp2zAYF/EhllNPZXjZsESETjLtOAUQ7kjEFeh+xCbLNoYXTQBAAK/SPKNvOGGUs3W2kaF+GXQbkmKemHpqybF328Tatxz1G3iyD+C5/FJJwviLS7zcyZqKwJ/SA+v794pcKV3F/wnPqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA1PR11MB8149.namprd11.prod.outlook.com (2603:10b6:208:447::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Fri, 8 May
 2026 08:02:32 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9891.019; Fri, 8 May 2026
 08:02:31 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v10 2/2] drm/i915/selftests: Run vma tests only if current->mm
 is present
Date: Fri, 8 May 2026 08:02:14 +0000
Message-ID: <20260508080214.1979686-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260508080214.1979686-1-krzysztof.karas@intel.com>
References: <20260508080214.1979686-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZPR01CA0001.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::10) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA1PR11MB8149:EE_
X-MS-Office365-Filtering-Correlation-Id: 90b2cfb9-68d8-4360-e0e9-08deacd827ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: wEUFjV2R28QUWjBSCuQ2KfduqcNrWLnm0GMGHOhQrzYcYdSpH7iPM32uvI1lRqugF0GbIqLiGMp0zGxZ68lc4F2acMo8u2ylbhbQLYi1GE75xkCsxDbLFbEA07HMmwb+MNDYj9St3OFNhJb/2bWmUGGm54LS/02Yob8F92MpwZf+tCg40NF4iV4fxIdsgUyFHjXUqbJVoPzX958+itAVNQMrVAGatWydRW0JufKM2y4WGG9Tmxgy0ynjpybeHBig757CApu6wRHKUuyMqMpclgRo4kWBUCQEIeJ/qCyrhgbS4xKB2AWKp5+8zX2KnuhpDaqFyCT9uqDpAWZ3jOff1mKlWjWx/Kg0ergs+ixvYTbSosCMGDjhg4UlM5ABd7rsSEWpqwBj5LeuIoKvXl+sGC5xwn8sax3gqREi+nJejZIrcYzMZu8rnfvnm0/x5umM2x7Qxri5JoAe772nefAAy4tfdm5HHsapzMe4pBXoTaYeimbKHhAoMwdHlBTWdCm6D97CkZk0OEZa7wk1iWqOq5epDvQkuM5GIa9ITVdkJ9iCI+AD/D4sDDAScOxtDoT/jDFA2m+MkxcnBEUKmf7gkTSs9CHfa74X5oOcvrx8EDmZ9Y3uF5XJPZnUwyUJPWTxBO8CaqShnE/EOhHq+BQRKJ4oGLWvoqlErcrM/VOnamr0SJV1pvKnYvV1zdFFinMK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MSJTCUPxsWrsr04z2xFhgqhd845GYJkQlhubWB9B0Y+tLvS4fjaxozPb4yjE?=
 =?us-ascii?Q?FbQWkSFyuMzZ9KmEu1udpnbtA8hdZwxAfqYnPlZQtwgqpUI8+YlfM3DzWLzW?=
 =?us-ascii?Q?QtWy6Jah9jVhHdcPZFB1VEFKcGzvELJMQDYQ0M9MAf136xRNFJ4KJCcdTRaG?=
 =?us-ascii?Q?pWLVqfXfTxnJEOdn2RhXyoTUXURJbnIZpxdMBlU2A9CE2FACIb5LwIsR3n8W?=
 =?us-ascii?Q?qMA6oJKdik4ySjOZh4NYm0fkL30XtV8mfvFoz29zFKt5vpujBxEgwWUUDp4V?=
 =?us-ascii?Q?tEMkU22lLKw7YK4IAhKtlzoi95gVhvc13qZUKZN5z8nS0rJx+vU0GIngFfkI?=
 =?us-ascii?Q?zarhZVn1BEce//w3cnA2yGHcSW+rZvpxy2aQ0bpMD9sFCXiq2XYU81BJDDie?=
 =?us-ascii?Q?moFqU14WUeCOUXGs/BfCmvr4Gd0VYvWXiA64xbLARPH9j67FVU8aUkmqxLmF?=
 =?us-ascii?Q?ScHb79EaZiG18/fozjxIibO7TUz/YSBxBBlazLWIPCDlQxuJGNrSpAxHiR22?=
 =?us-ascii?Q?JcZZfGyn1TjUjLcaj6EdFYrO7h/BReROfZht9NRuIkU91MI7ji0YuaiI8r0D?=
 =?us-ascii?Q?+oS07pbGDIGsyhZwXNb1ErifmFrXFS0dNcIcn2ziyjrjRbq5ykUU22JrUNRc?=
 =?us-ascii?Q?yg21VULxgtW+72GstZ51/+s6TWezd/jhzbOq0lXOhW1iX0j+cFzG9ZWhQw0/?=
 =?us-ascii?Q?suhzXms9ozZb6JKWaLPeecoS5wYVTU8F63q7DfLC/Z39bd239tXIVnxvWpTJ?=
 =?us-ascii?Q?m2EQGBhxjn3bWXMNzDHyw64jQTG/xqP82Tt2dV59+1GvZ2+ouqdh3dGP1u4j?=
 =?us-ascii?Q?NIu9jiL7Lf+N2D4vjo44DqfYMDBp5P3Lven8W4fzWNRyOf9LsMpQAO7uq3zo?=
 =?us-ascii?Q?Rz6piLr/2d6VYwNCfx+9rqog+5UGo2DIpfFZEWfaNdaJM22qNtlbkWP+Dozj?=
 =?us-ascii?Q?eUcHfQhKpoKwNpSI56+IHRLkd+pvnJKd3MQZT3dzGGrB9UcL66fWbQbbjUYm?=
 =?us-ascii?Q?8WFYxqFysXe41yY1UMNpwX5fBThb+G6Cdmv4FGCes+AahYIaU4Jh8dvtdpeg?=
 =?us-ascii?Q?dy9ZuSXyqjT7n00KawewewFTI4yDh1/0VWf6Ob8J3eUQ9PDFRyZYmWcHNIkr?=
 =?us-ascii?Q?yIqeNVwSj4Ps+Ag91sBNz0ZO300lha+A5yTvLQGEi6CFKEFufUmlKYNoxIwP?=
 =?us-ascii?Q?WkJZ64RdSMYyqEJCFJU+PckaqoaYyo3OtnvU18U/5uza+qg2AkO3VkRCb/Yu?=
 =?us-ascii?Q?XSHzeWe6fZrC8NDXLFwt9BD475+dFXg+hucffuILhS5jbYhsN15HLF0l0VZ9?=
 =?us-ascii?Q?SsBtRolLo9veLh5IpFVBporV90Z5fKEkxYPF6Xo9wzhDBMumPaFob5KiexwH?=
 =?us-ascii?Q?YrWo/KEekpqG2n6NG9miGmabDzFpb/eYISIvmpYgPNKoDNA15t4dPcxm7QAG?=
 =?us-ascii?Q?7jdofgVr2FZuL7cNYROUEAKTbYZAY+Z3RDOIxtTL6nxGRzJyYQBvF4XHWNbP?=
 =?us-ascii?Q?mz9+wYfo0FvfqRgqu7G1pEuG7dud87AdBaSCGbQe48CfRQS9wh1uedwkjfzZ?=
 =?us-ascii?Q?fySvwseGiFE2BhyOAE8YdbjbiNX0JzTBGpgsZSW2h2xWHl66evDn/g7JPRxp?=
 =?us-ascii?Q?sYDkppbTs48krWH7Hxzfl/5pyRhKHH/Z0qozp00h00dAtLuTWU20cWG887X7?=
 =?us-ascii?Q?BZIy70eAllig343Ui/rUI4qVs+lWr3gox1zXGhT/PLY9YhvDE8qGQJyMEKdS?=
 =?us-ascii?Q?LlUe80aJ3q7eh0n7l41QPmFUmS/7h8Q=3D?=
X-Exchange-RoutingPolicyChecked: MaPSz7ESfwd0M1eAQiPEVuEIBNcAf49YHBM8he8qybjlaXuPzJEljHdPSOeyw/uHizdtAGe4mqgAomNrLbpxYY2XOiNNwhsP5zd93H7WDgw3np7RZeMhS7aibP5EBTgoCsVzAAMwewxF+86Pycj2FTmWu5bm8verKizhka4tHPi969xZ0eKerhgPRCN5OJSdiis7nWxzYm6EWSrFaeAILD/xfsChukudRdEI6AtghsBIwD4f3fy93ll6QUlQAwpc9Y60XHTolBiuQRZVIDVVyf3Dg0t6yYlYamjsmvvGV55e7YsNWHIIs7G1+YGSDJuM8hwqOxvmQjmlAxpDRYp9ug==
X-MS-Exchange-CrossTenant-Network-Message-Id: 90b2cfb9-68d8-4360-e0e9-08deacd827ae
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2026 08:02:31.8863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3wFxaeUzQOi7ZafLloS5POYIoCqSvGUhlivqDW4hUzz+BzZzPOtnOuTr2bT3vse3cWKJ3c5Oxzdoy8gkBgu64PFlWMtXPxcovHx7Do7hHqw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8149
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
X-Rspamd-Queue-Id: 5B4B14F372A
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

This set of tests require userspace memory to map objects, so
run them only if this that memory is available.

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
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

