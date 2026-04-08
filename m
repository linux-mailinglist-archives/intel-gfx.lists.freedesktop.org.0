Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDxbKT8S1mngAwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:30:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DA83B9122
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 10:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E448210E583;
	Wed,  8 Apr 2026 08:30:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jXXGAwKc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBA0010E583
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2026 08:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775637052; x=1807173052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=4Prino1U/Lu2uwYewWIMbjEc3BV2qCrB10+6UletvP8=;
 b=jXXGAwKcZD/2lPNDAP7/qEZrQ13H+kvjmeHWvVP5tXLbT+umme63Cc3i
 UQzRbr9b7BoTmZ9djIVc8aYSkdZNVGJz4P7mjndRzxE5yRgDE/fpyL50m
 NIItdRJ2jiQiObRaq+V/gDUAhpLNVg3AECcmdXbndBRya4IEuDIsAAa8k
 oPXUd5J23jioZSnUNtEI89iOh/6zn2oHI14rAiYV1dSqPtnx9e15YUjrA
 H66PlbQvcewUcxBXx+DMNDRf4BLsE30tsWsxSTD3M1uhbuDGfAAEJj47o
 Ec2iEUJqvgGB2GVoq14L2H0syy119EtW7f+r05OFlKsS/fC+nU0lVfbQM Q==;
X-CSE-ConnectionGUID: 64/rBaHJRVSF1R9G5Db6fQ==
X-CSE-MsgGUID: xLs/2Zn7S2mKuHpvU46UcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="75651394"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="75651394"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:30:52 -0700
X-CSE-ConnectionGUID: oaS4rAqXQS6775w3uCC1rQ==
X-CSE-MsgGUID: zWYI8IsnQwSWgw7aXlb9ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="221860023"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 01:30:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 01:30:52 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 01:30:52 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.38) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 01:30:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lPhpmhYaiOxeSlXSumbuMxhL5z1ficlcMd+e2iLMWOGe6LL/Ic10WxwLTWA/nSewo4gGrrtY5qML0GCzL9hpbCJ3bx4C4fjL2tqfl8wBScyZvibYoMVJnJXbzI8fyeBsckz2pS0y0pWyLGtxTeBrE0quJKDR0tZnxYQIMjJAqulA+yF0RpwwQnUsxxp/IEvF74obEd83WwOrcmZeFW4NCNCiRQ/1iew862bIr9aP38ylsWkCyt5+uBW0pHQx5hp9fwuqIecFZa5e0hoS+SqBUPFV47HAEUAyei0wOKMjDlrf1nHURFenGSV6L5lQlRItWVOvOL3bwg243vxcfrSpTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=562inAzPUaqeB6cMpa7L64/DZP9otRsuYJfx6NXd1R4=;
 b=TiuSObyDhPhcLW0DTTMBoF5lVB5i1Z7HmprRmG6DI2yneRM4Wg0/CLYAwsnqchvGQiJankZlob+BBsFs7MXvzhaiH3OVgNyCM0xrK7yT+opd0z6cDjVziLTFSNaiTA5nLfM1+gkhmc9bbdJLpE82Mkoxr/5QW8MhbmvEjTTIZ+jkaOD0cNggR8x84OV5v5xfV4f6JTh0u1dwepUZuOcx0IgqJYluF3FWrf8px6JJTS6VYbd12VSJVDITQDYGHCRlZIAXAMmCpZMlGVWhESfejX2vxP7jBmiMsXLX94um4MuspM8F5MdE1+dBhNKfJMgadtoaCb6uW/f6XDS8ozIMrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB6857.namprd11.prod.outlook.com (2603:10b6:510:1ed::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 08:30:49 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 08:30:49 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v4 2/2] drm/i915/selftests: Run vma tests only if current->mm
 is present
Date: Wed, 8 Apr 2026 08:30:34 +0000
Message-ID: <20260408083034.2060372-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260408083034.2060372-1-krzysztof.karas@intel.com>
References: <20260408083034.2060372-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::12) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB6857:EE_
X-MS-Office365-Filtering-Correlation-Id: d8df5a5d-e9b3-498c-63c4-08de95492395
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: rM9U14vtq6/U/HnZ/y/pZGiABylLpNyQbDIC3GCOLC0K0ozuXxw7CaTc3IuXHb2JsFC0wP66rNdYbB4KMMKGAR25DekQ5oDf39JSWtfi0O/V6kiSNIz2hPGftJZcRfMfMaif4seFt1SH7XaYRQqaJh8q0uA9lOqxho7s7f2c2hPWst8mZreE7anKPxbP8zdhmNIJ12coLDZHJY8NQi9FpCjKTawFbRXqEL0sgjXqoXC8TfQDO7lkHTpwidzx25bpVhTCoGJ6a184mmGFlf+RwdO9KsAG2HMQ/SPuNNtrGGc7ona6Uq4lfAeCgiGqORTUbgihvWRFhzDcS37DPMZ5d2/XgAvSOO5Jc5w1BYTdAeUMFSPeK6Nb1FciEtLQE6bxDFCh+Gdvw52TDYpkszdMbcjR1FWW9VG83OlObKWkjleMr4Y5DNKc3n1t1hE5ac1RiYqIGAkDPs++PiH89ypGPZ1cMXhqaIc8IK50/XsD5FQZAPQy7fonI4/Fa3oWtVMu4G9IljTKuQTtgaMOY5hK5EuoCcioOqkq5trcx3qen4iyjkBT+Qh5Z3KrN8bfAeXErSw4bxDEm7Ph+U5XEnYjznNEjfpTZraTX9PQM26VRsk6hTB8JNoLN1luLm2sytUBhLyf9FJsUgpEYqGQmFad5JDkYsLWBDOISgERJYACYKRF8i2AkQArAhy9lt0bjx94ru+yV3bZO+aptItDLi8ZWfdJim+gQFl5wIk6AW6jUXw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V3JOt7q1zbRCmvElzEgdj1wTgiaD6vyGPSZn+fcL29xIKHmF0OQenS958QS6?=
 =?us-ascii?Q?jMjjzFmNHdVuwz0IPY/aTqVXUGjkZDm25aB4C+jn/KvE5QwGUPKUgr27a584?=
 =?us-ascii?Q?Hs7zo3pKWTeSiufVyekalH2gUu9FhXSj7mz8QB5Cod/zTV1Ph4o0wuqoHF5v?=
 =?us-ascii?Q?x/HDMOV2rDaoF5RLxNPmQe1eZRp5oq2qxx27TkAPlMepXS9anMzdMqL6cViS?=
 =?us-ascii?Q?dp03S3bmHb/lYphOByH6f/G4GgqxBptLc+vtHv2svxpf1i+yLiXi5RD/iNp/?=
 =?us-ascii?Q?FJOeWU3AMZNlOkAMaL60kcBOyiIRZnNkMeCub4FpGfPLSJNMtI2suTLXtRqi?=
 =?us-ascii?Q?SYytHChOnkiOJNCtw07dSg3as7ApAVzTkJzqRt9/Ut0sVtVaptBnwMKBRK9a?=
 =?us-ascii?Q?/HXtYI6mT38H5f/glYPB5I9TgFddfXmRj9j8zniku3mNG14YucyqUZQDGRco?=
 =?us-ascii?Q?hEzJXCjuUSa3XVmkvXAmGBgAuTvk0JhDqczVrR6e43D+cW971CE4Rhq6qlOl?=
 =?us-ascii?Q?RA1wFP5jn5foXz/LsPrjvAoVApD8FHiZZdEC7VtY7Dko+xC9ESeq0Joue3In?=
 =?us-ascii?Q?mU2HxFv4JwS+AccNYFsMRG3zwBG50l6tPWtA9jZelt/cMK87NcDk1/PcYwmY?=
 =?us-ascii?Q?5XLWNlUl0Zxf58BnhIYZxg+nY5wp8sWzZICGUlYing34ICdjFwCmEmyUdqeW?=
 =?us-ascii?Q?BWu1IR9jqfegigJXMM4Q/8yIiVH6vakmf1kveglQtLbi40olH34j+yHNaE2B?=
 =?us-ascii?Q?2ISPqRvrBjjw1Pp8VGVeVJbj6Gle8LLJX7QWKE1w3UX1vcIpMhQXjSRS4U5f?=
 =?us-ascii?Q?txdd0ooWdUQ6+lXktWro1h/rrhozMAyaW/6TmNpyMVv06CDwsx7pIDVGnwBL?=
 =?us-ascii?Q?+b+urkYAMp0o0FVzoBaxdfM/rcS8LyI3mwqE8rWYa1Y2YYhIeZScBFNebQ7d?=
 =?us-ascii?Q?QouFACC+2kTrTQ66hO6g6BcYJw01gMtQ9ZsX4Gxg1zoMpTvkQx3QAOHj1z4D?=
 =?us-ascii?Q?nKF7N3ntF+Bo8W/MwdDD9MBCMpZLeSZ/C9VmOVaiKfLungPEdOclVt4Gj4oE?=
 =?us-ascii?Q?zMYGspvLYdAuiDs6iV96O5dZl0cB+X6F5xtqO/D1RUL2o0QP6VYpLZ64ho6W?=
 =?us-ascii?Q?Fj9h+ykR03nQMNw0eyIlZypgCBgCm0rz2ahoTXRDgoyXPG6OXoS+7YL1O9im?=
 =?us-ascii?Q?kyKCisEfKH+Ebap9DjRBoZ38JL3fVB/0G9Cjjwv48JbR6rh09lM4qw6hFEi4?=
 =?us-ascii?Q?7gQxsVZCHG/FD2rhHaf1EzQzk2oG0c3Dim9/zq8AxU9+g2HypFMM/UrNozCh?=
 =?us-ascii?Q?IzsBZ6VdkNJyKFVYQWLL1a80cD3y50rLaWgdziyr6MG3Bqt6u7x3HyGHblJ0?=
 =?us-ascii?Q?aJWfqOWMNzpT0nslNjGRTna2voSPVabIQbIEQdG9Qi1WoMaPqESjUc2QReWL?=
 =?us-ascii?Q?elVDu9Okof3diWYRyKZYCCMrMhTMfJeCLU1snqvfMBPWLwwzMc9IDPHzye1I?=
 =?us-ascii?Q?RdQwZ4ILF2qOT3yhgCNSe5cnul2jM+lc73LK3YAF0VFaMtyt2qcdI6YB/sLx?=
 =?us-ascii?Q?zFHNxFQQycZ+V2Deo7Xlym3dyX0tCH420mZjSaEP9z3WOya4deTxWyOBFK6U?=
 =?us-ascii?Q?f6PiBvmRN3URuXnFhwsuGRXMBC5mj7Lk3u5c+LFhfhFLXRHPwbxo5cRFQ8WK?=
 =?us-ascii?Q?v2rwZGLGQFQavIgulZ8Iv+jJcXcrUTan2wneJ4tVAuJ98dvu/Xo+5qJPPA8C?=
 =?us-ascii?Q?srDFYJ2hs6iR/83sc71BxnjL50gIBfE=3D?=
X-Exchange-RoutingPolicyChecked: P4xV+byg/jZIgxAbPRHvEz+DQfj2ccWsgaOeL0pCnTQ7468uasLuAGBhWd2g/loMeLhAscY2oWGIxSj8FXybEfrzjMGL64HyZnVoA/D8mQHaCQxFT3hw2QqLUq2zD9fu8MWQW2cijEJgv+GxS8759KfoJ9DjCn+fbmnwXlOef7rmDPRrNwjQ26zJZnX4yUjDesyJ8Isjn5VeeH0FRITFhqlvoV+PtSvmSpBMMykIBWUL9FZ6MclQQ0Fx0Gw2S6SDB/x0vBakty47rHN4qfZBNGlQOMG4VXKZjYhU/+IDxfeRVhDAXuM56Dt6vCvAdY6Ae6Zim6se7m9iqv8zXAZ09g==
X-MS-Exchange-CrossTenant-Network-Message-Id: d8df5a5d-e9b3-498c-63c4-08de95492395
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 08:30:49.6874 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZqeUHFR/1DQNKZAJJ5MOZryf4e+iaswZyMNaREQf9OIivmVEN7I3/uMoZ2U3j2YU7lCEAw0DQgrE2wK6n84NofYfCA3wOSasYV53yCHZGQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6857
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
X-Rspamd-Queue-Id: 57DA83B9122
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This set of tests require userspace memory to map objects, so
run them only if this that memory is available.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9d454d0b46f2..0752e758b01b 100644
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
@@ -1859,15 +1860,12 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
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
 
 	return ret;
 }
-- 
2.34.1

