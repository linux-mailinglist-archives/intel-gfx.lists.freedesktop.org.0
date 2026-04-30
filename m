Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCgzHao182kUygEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 12:57:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C332D4A11F1
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 12:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 022DF10E12D;
	Thu, 30 Apr 2026 10:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YZlVcNEF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F140610E12D
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2026 10:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777546662; x=1809082662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Qy8LJwphFfWPJPtcWjMoxlDCtJQY5nI3pm182oNvtzk=;
 b=YZlVcNEFSjqsQWf4omMZJwIVXYVvlc9Oolwr5b2e1Oh6oYo2X4gu2XOO
 RX6SfZR0st/WhTkdHX7VWmKsXm9xhZ/TovFcdU33XGOoDgH74b0SEP7Ak
 4LsNtpkYxx3UY6hI+fJUkoE81HIaTmpdeYSUQOP6W4UeHYBjVUDAJPSut
 NlXCoeHllJwMPTzXKLtzw3YP/GmABszKmSTjsQND650VGUpMXdI1Gdl4C
 xLLokR3YVMQuimve9jgci+6ghY1C7oTvb++gDnvHVA8LPXDD71GhUP7E7
 d8eJ0sfKhglIqhhryKQTJ2IaQlq2/vkRx6ZZK/mYTWhk+SjTBCiV7m8Xf A==;
X-CSE-ConnectionGUID: irXXgSNFRfiEZ+4JSFlKhw==
X-CSE-MsgGUID: nfdvfPTLTRisoECECpb+Dw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="89952848"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="89952848"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 03:57:42 -0700
X-CSE-ConnectionGUID: eukDgKy9R3WsFiokCBYI6A==
X-CSE-MsgGUID: CHWaHdutSa+zVMFeUtS57w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="264921833"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 03:57:42 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 03:57:41 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 03:57:41 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.43)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 03:57:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O/8lSEZp1LOLUjfVd5cw5W89wpRf55SVyNGLmRvtnme/MRzKq+jyTKGBBTGM5Xf3PomUbITvFzCcVYQ9TYK3UlwfwOu3q2RVN9/jW3PL9YKj1Uvw0MbRPn1S/JygQpjULmm/j03xgYtNZ3S9zl2QR4Es6+Np8KcpPtcjqpiROG8wBTL6URKe9IWVI1rCNaZ/q3uh905WUgUJ6XGVcvSc9F7u0m4Nt5LEFDOD6S/18GaP1Appr6XrifrOCRM1mb2tUfbpQ9pUZ+Zu6odH9jLoVPRyA6BboU7CUplXWAFfgsHDU6glO7oroNrxvXt5M7i8Awt79kyRe8o6o5RE/4ITCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5zLhKMg3WyE5aOb+DZ+W2ngXack8jmeJ/rJP7/aENIs=;
 b=jKVe4CN7m7lAG5w7Q5DfH2Rp6KVlukBHHpo40QDpcTWyQsNoL6ugH30GWPuByloBIlK40CuxhgThuFQbACfJnPL6fcaPRp7qkORDPkmTa2CRcLpGLegLw2t+64/2fQSOBKz9tCC0/WkWnD+9dPA55AnWFObpgZv3UHXTfsME4Io3B7kYi9AufB6AzKDFp1y9JIDa6rwpAvXenO0iymBy93psQnTQXuqpsKCZtKNU+f7d+lNyrxZnTsx7J/a8U/92hJygVk0NAiUCy9d3K2530AIs0hdVdtOXhwAlXyRYQUSpU2aDQx2VUBpoxyrQDauDEIvcgaMCJfGBB0eFwaXBVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA0PR11MB7696.namprd11.prod.outlook.com (2603:10b6:208:403::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.21; Thu, 30 Apr
 2026 10:57:38 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9870.013; Thu, 30 Apr 2026
 10:57:38 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v8 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Date: Thu, 30 Apr 2026 10:57:23 +0000
Message-ID: <20260430105724.1590552-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260430105724.1590552-1-krzysztof.karas@intel.com>
References: <20260430105724.1590552-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL2P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA0PR11MB7696:EE_
X-MS-Office365-Filtering-Correlation-Id: da45e1e4-790f-47cf-6e1b-08dea6a74b21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: oz1jO/+057ZspqCRuQlTiZLcv6EIyHk7uqg3mkZq8Rq7x6XuimP88lPq7M6OJarGYnbzJEmtScDp/IxUrYYdL8T8fZjWP05udhsdLQTkjs1wmkDKJipvWU6871ikInlJJL+1Qb1l4AlU1jcWf2f4vVmb/rlpKRYRZiY0o/1DlIV+f2FoiybjAo65uIJMOF+e2p2zTM+KSn853/3CKH7zFyHGLobJHMaewMY0ky5G34YcugcLaH462alV9hIqzp7QIniSei8nqkF34msEVo6SnoKhAcYgB2fHEEQ3yleDsPcAoQ1Wc8K4EianTaeEUoVfZ4grk4Lx+Tm+vs+w8G9dKDPQVyh/krBEdXfhfK5Td1PxYhWpuvWYLm/zMq2uo5yDeDin2VC18PEHJJgld1nZS04nO07R9mrOV5WKFLVmqW/S0Mx/jI7NoD8/9LkWGZf9nTAzaGyw9vGF3lqMMCLtBG+7388f0f9yo+Dje0z4pIXk0u5YLx8srE39vmfQwfTyAS2UD8VXVhd0WryAeYjiRr37iPaXuS1epS9C+g+RmnojZvxOOcQjjgCvz87rUnTKQM4SmAV60Z+qz0pRLQ7D40qPynArzIAY9q7H9jXrZzoMSn4xBffx9LBPLyB9X16DIO0EX1m7GVKbTed3ZIagLBAQeORd22pYdzwMFhd4wt+52Ma03VDJnSL+SxODnTMY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?T8QUe/+K/yoFr8QFXDjyEoBGA8tW2TfHhEW0z3V8M2nPLrpRw3IChnF8mogl?=
 =?us-ascii?Q?z8NKAGd0I7orujJPmjz7WwPykhPHfUBwp1lUWuukXDDIhvmyhWLkwZz6314Y?=
 =?us-ascii?Q?QuymAe1knD/+Ha8bF+LoAcVP3Q1KvhL1DYWZREuOoaIdTn4bjP7qvz2D68+x?=
 =?us-ascii?Q?rjmh3uD8rYwSM1ms++5BQXs2+oNPvAwbTGuNqI4lShaCnZ+vSP1d8CP+SwFj?=
 =?us-ascii?Q?Sap7qCxcvh6zQKyQQ0oYAJelhEQL23IxJ0mf+Go9S+gKnc3y4xdkcJ5V1iC/?=
 =?us-ascii?Q?XLzoY/ebj3XLt/AvtD41x3d99zBpLQhXKtlYtOtENnN1YQFqR1qzAbsCnb2V?=
 =?us-ascii?Q?GvcL6KETXMqfo2CQ9s6EP/dD+4/Kjp4sHRC4NO37DpPP91Lo94BKgT3Fl5th?=
 =?us-ascii?Q?l0UXHZLr94wZcE/onA/rd7ru3s5CFQgsxxPRHsXfptU3KmWCaXfdgNSUrBBl?=
 =?us-ascii?Q?weQzn8ByEHHzvnmRQSQUbHsbqaGi7rNba6sf8ZKi3v143g/PsAjT+jo35P7w?=
 =?us-ascii?Q?xyWrQmHpI4uB3dVCJ8ApAQVsI7N55ROX65r+9q9LCO2Fu+Sh+9vHpdcCXoXv?=
 =?us-ascii?Q?yb+n6Ci2dnlvZ47DLxBC1ktZMcVi17s+JJVzpdG8E9Yssdzd7BAyx1vuCUmr?=
 =?us-ascii?Q?R41vUJaGek0sCt8wJfegAIFuyWoOG7gkmXH8bWz0IGBSu2fNyu555TihnwV+?=
 =?us-ascii?Q?7ENZlbz0UQdSuPbDmZS2HCrjAlmdBt/UmvfvCUeEBDl8txiWC/5Q8ChHjh8s?=
 =?us-ascii?Q?C+KqqVlpXjYQklCB9kYKW0I6bYRQ3My9uMg196HdlD1vVXFES2YVmPrIK+yd?=
 =?us-ascii?Q?kGffRfZ/X6/iBnyyuDXatFbvqgi1mrC+kUTtflneFhZBlybP2GufpGXoG9df?=
 =?us-ascii?Q?tx2tNGVLZNBtWPvu69EdfvwUpek3FBxxSqJG9NplgSHSIuMsWkPGaUle8P12?=
 =?us-ascii?Q?nq/aKlDDeyjyoI5zrfA7u0SMCAQf7WYv2aSTGcqRKzCWTSPSHZOjMCzREdh2?=
 =?us-ascii?Q?wIwBIYVanZJ4ocMaPHWJZ+xfjajVTaW30IdGLQeNy8IgzBKwzgsn12hInZUR?=
 =?us-ascii?Q?uHTiZ7QR6TVVblmkyAgb4V0xFXaq2uYXLfOi0GuRFBRntN8l0ZUo0atbG3ho?=
 =?us-ascii?Q?NrJJzvpLhW9fyNeXKTrv8SJz3CqjjJywTiiPm70SuXLn+e1H04IiKoz63Gfc?=
 =?us-ascii?Q?t62xhbhv5NY6TasBJlO17ul2u3mYwaaf4FH/zUlR4Vh5U4RDjCnmcvui9nXi?=
 =?us-ascii?Q?kn2uZPK64dw4p4JZruMNjkCNTEqPLo8JwQ4ppHhTQhYTS01w5ap9p4qXlO5f?=
 =?us-ascii?Q?9ywD0GcZB7KqhbELcQ+MQdKks8EyqTVE+1zHTBs18hrkwS9JnIsevXNpaf3k?=
 =?us-ascii?Q?T+cOeSh2uY9PwXELiafxOBaPbXbl03g/oL5wRxUMfTUh7qQ1IapNURrHvBFv?=
 =?us-ascii?Q?wrHNx4zWQjY94bLcZFcdZkMFShDl/HoViTVxGkIneRKXa5CgdZ4pgJasCQtJ?=
 =?us-ascii?Q?nqkmuH6qkkbsmS4iKsmAm3fTUjdpcggBWScYvH3LB68SicjtfQb/d8j0TrS8?=
 =?us-ascii?Q?tbfTw5/006TGChGr+4qsTxbzXc5Hmb6Jez8ESscmYR8DUPOGJc3Fj198Krcy?=
 =?us-ascii?Q?tkF/XcF+6yvhBuvl8TtQzXWD4bk+H8WrNQ+3s/A+d8GrTUKYROZO8ZDlDeWa?=
 =?us-ascii?Q?8hng2/gBmEtlnPbZT8+vxGfofNrzGUNibDlg3bR4JYIA4B00Cim9ykzUYgol?=
 =?us-ascii?Q?KIFJAkZr/NOZZg7e5SvL9jOU6N22E0g=3D?=
X-Exchange-RoutingPolicyChecked: NYLpP1KwH1QygYLHh0hf94Mz9NKO4+1HklMQ5XUttJ9qeu71CS3CHnxzXufILKISC9+zhDc7vJk/GTtfIP4LlWXkF3351AUOzfmvuhrKO1v4UkOqUoI8cjUl6OYoyupudfXPnMpIlvKEw+zXZAzggAY6YkR48odseMgSbp2Gl4nTvoktzGVFqqcUW0ELjwehw6nlRfN+eS/rjXuzM++4KEz84YRhKQO9YW4k7fF9Yp8Cshh7G6A+RUt2eI19ThtKjSyiDy9HK8hLbXNfrTuBWEuXcg6TDDBEdhb4lrSsash0mFPMRXFhCBGBvGJkE4IA8zCcy1IsDRAyDAhbUmVFKQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: da45e1e4-790f-47cf-6e1b-08dea6a74b21
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 10:57:38.5183 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ujJU3IvnuLM5vJuPvLjvACDBfF3Z9NoROxqO73Uj3yjhXsRBQEJRVCKcee7beJYcMH5bCv94MPmah1YxsIi5OGe/FATu+hf6sNeQl5HuUhM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7696
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
X-Rspamd-Queue-Id: C332D4A11F1
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Migration testing in i915 assumes current task's address space
to allocate new userspace mapping and uses it without
registering real user for that address space in mm_struct.
On single NUMA node setups PCI probe executes in the same
context as userspace process calling the test (i915_selftest
from IGT), but when multiple nodes are available, the PCI code
puts probe into a kernel workqueue. This switches execution to
a kworker, which does not have its own address space in
userspace and must borrow such memory from another process, so
"current->active_mm" is unknown at the start of the test.

It was observed that mm->mm_users would occasionally be 0
or drop to 0 during the test due to short delay between
scheduling and executing work in forked process, which reaped
userspace mappings, further leading to failures upon reading
from userland memory.

Prevent this by adding a PID parameter to a trusted task, so its
mm struct may be used if needed.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
Fixes: 34b1c1c71d37 ("i915/selftest/igt_mmap: let mmap tests run in kthread")
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v6:
 * Move mm handling to a separate function. (Andi)
 * Validate user provided PID. (Janusz)

v7 (Andi):
 * Add missing mm reference release on error path.

v8:
 * Keep reference to mm open for the duration of test for
 readability. (Sebastian)
 * Be paranoic and explicit about keeping the mm reference,
 so we are **really** sure about userspace mappings not
 diappearing.

 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 53 ++++++++++++++++++-
 2 files changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index 72922028f4ba..e29ca298e7eb 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -35,6 +35,7 @@ struct i915_selftest {
 	unsigned long timeout_jiffies;
 	unsigned int timeout_ms;
 	unsigned int random_seed;
+	unsigned int userspace_pid;
 	char *filter;
 	int mock;
 	int live;
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index 8460f0a70d04..b3cd8152667a 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -186,6 +186,8 @@ static int __run_selftests(const char *name,
 			   unsigned int count,
 			   void *data)
 {
+	int u_pid_nr = i915_selftest.userspace_pid;
+	struct mm_struct *mm = NULL;
 	int err = 0;
 
 	while (!i915_selftest.random_seed)
@@ -201,14 +203,56 @@ static int __run_selftests(const char *name,
 	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
 		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
 
+	/*
+	 * If we are running in a kthread on a multi NUMA system and the user passed
+	 * a valid PID of a userspace task, then we may borrow its address space
+	 * to prepare a safe environment for the mmap selftests.
+	 */
+	if (!current->mm) {
+		struct pid *u_pid = find_get_pid(u_pid_nr);
+		struct task_struct *task;
+
+		if (!u_pid) {
+			pr_warn("Could not find PID: %d\n", u_pid_nr);
+			goto run_tests;
+		}
+
+		task = get_pid_task(u_pid, PIDTYPE_PID);
+		put_pid(u_pid);
+		if (!task) {
+			pr_warn("Could not find userspace task for PID: %d\n", u_pid_nr);
+			goto run_tests;
+		}
+
+		mm = get_task_mm(task);
+		put_task_struct(task);
+		if (!mm) {
+			pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
+			goto run_tests;
+		}
+
+		kthread_use_mm(mm);
+		if (unlikely(!current->mm)) {
+			mmput(mm);
+			mm = NULL;
+			pr_warn("Could not set mm as current->mm\n");
+		}
+	}
+
+run_tests:
 	/* Tests are listed in order in i915_*_selftests.h */
 	for (; count--; st++) {
 		if (!st->enabled)
 			continue;
 
 		cond_resched();
-		if (signal_pending(current))
+		if (signal_pending(current)) {
+			if (mm) {
+				mmput_async(mm);
+				kthread_unuse_mm(mm);
+			}
 			return -EINTR;
+		}
 
 		pr_info(DRIVER_NAME ": Running %s\n", st->name);
 		if (data)
@@ -226,6 +270,11 @@ static int __run_selftests(const char *name,
 		 st->name, err))
 		err = -1;
 
+	if (mm) {
+		mmput_async(mm);
+		kthread_unuse_mm(mm);
+	}
+
 	return err;
 }
 
@@ -507,6 +556,8 @@ void igt_hexdump(const void *buf, size_t len)
 module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400);
 module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
 module_param_named(st_filter, i915_selftest.filter, charp, 0400);
+module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, 0400);
+MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspace memory and require address space with controllable lifetime.");
 
 module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400);
 MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mock hardware (0:disabled [default], 1:run tests then load driver, -1:run tests then leave dummy module)");
-- 
2.34.1

