Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKGzLfzuzGknYAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 12:10:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B70323783F1
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 12:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C47510EC40;
	Wed,  1 Apr 2026 10:10:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PEY3Wyqi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FC9610EC40
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2026 10:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775038201; x=1806574201;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=+BWX9r/dBQcauN7A2UC/PPE1WkwCaM8p3FQiWf5uoJ0=;
 b=PEY3Wyqij91Pb11lxPe6va5DQDjghL5he7scINWtJbzfsn15QFLKjdH4
 8JS7jNebYjHrq49gLfzlD1Y+1omEMtksrO/SB/XBi2pw1XbZf8iHQANke
 mzbqJiI35KlWAFkjGPVJQJD8/HWx/z5a3OXsweD4F5rQXDAf+byEj6Y/c
 IBIViHwk9hAwyfS0trWUj37tlJXNf9MUf1WX9MDE9EAVVKxzQg7yZsKxi
 5L2opuT3rubXc96xOpACGjWE8ENsk9CkOvW7IjmzjSwMvWslyKTNvDVLh
 Cb/vM6z/Jo0BsCWDiZjDPfICToUrrQxPwQT2h1ih1MKvsYojx/RTfApJm Q==;
X-CSE-ConnectionGUID: cCxpTCE7S5SN3SclkNlcvQ==
X-CSE-MsgGUID: 3V0hdgzEQs6Zctqbkkgsbw==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75952968"
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="75952968"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 03:10:01 -0700
X-CSE-ConnectionGUID: RemyYinZQ+KTaromHclGdw==
X-CSE-MsgGUID: rDdGxWgERcWEklurrsKJAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,153,1770624000"; d="scan'208";a="226502193"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 03:10:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 03:10:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 03:10:00 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 03:10:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ORWT3Zod7ggynKxzYYwAo4m9mOIwfj1YFkHHL47DMhrrcEsqZJE9JkL+6daYD+ngbuzySZnitsdkfhOZ3s7zOckVhEcMcxJC7ZQSdDqq7lcRCxu5to2Q1eE0WRN9vFNe4VaeUYghEHBJB7+tSeLnZFMc/yoZoa6VGOQMsnDa0M7afFb3KEV+SMO7EQAz57HVSaOImVCvCmhmesK26eqcCTGXnjQkveRq6B24cGaWEUErxeRTzgdAgkWMtDeT4Xbx881IUeL627mesrp009wn1Wx1wgcn6Mt2cXOScHyp4r/uSBKPacZbkYGV2TUhHP+wGMWzT3r81WsnKd2ouQ6j/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sq2634XrZZR8gxzLGbqt/ZE0IO2wQawEWGN1NG4wKig=;
 b=IaD4xPwm538ek4UA9wi013HH0ppTVAbW6IzurM2gxTKnk+dkWELRtrcNEBMGLI2HEKQ1YRexfnxOEBtfjWMHqRhxuuc2G09tnUjWr2SYvztIPRo3NQCNhiPJ6Dj60jdRPqX8Lwyt/+czeBRyQIK7Wbdj1X3DJXbQlDZqFmXbG3g2DHmp5EO3xBc0gkGFh+/YP5ssyjWdomdONGpwjdT6WsKTA/eVThljoqeaRdGgNa/JV9/I8i4aH1QHis4IEoSz3eq43zEDlDYlz0a8lXQ1sic2M3xBbKGzLNEMcgUig8ucez+Jr+LeSa6yaCcZBmMr39WSg8pO3jbY8bYxiGMAQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CH3PR11MB7252.namprd11.prod.outlook.com (2603:10b6:610:144::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Wed, 1 Apr
 2026 10:09:51 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9769.014; Wed, 1 Apr 2026
 10:09:50 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>
Subject: [PATCH] drm/i915/gt: fix refcount underflow in
 intel_engine_park_heartbeat
Date: Wed, 1 Apr 2026 12:10:07 +0200
Message-ID: <d4c1c14255688dd07cc8044973c4f032a8d1559e.1775038106.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.52.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1P189CA0030.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::43) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CH3PR11MB7252:EE_
X-MS-Office365-Filtering-Correlation-Id: ae166734-d96a-4904-4037-08de8fd6cfd3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: hcjBuOsR3QO1WfY41VHjdq5sTEyNFsML33rd/ZJw/8bwepcRRVYyUi8Fo488pA6hUtS/hAZabhobDsAZRPAMfPn0jpNfH2QnYeZuOphYeiOTaXuLbrywSolyo7D5Ibg6FH1j2+adLEeN6KZzmpsuRUjbiUpI6OaPWdfPGdGkEBlGYqLP6penFQMbRXLyGwRd/QgqFVeOpe5AB64ZyY401+fg7lRp9bQLJ7PL/UUoXt0ujx8ve1SLucErZe7ZeZ48ZbYxqI7E9Q1Ic5YWPZXQzK7j9O9ga96jEt6b78mrZ28rml9OjHbej1ag1a4AJSxLs5VlZfJnnGOIMvBiN1WcoND7WqUzgu28x0vsfUsWVIPkkEPxug49kh5ZtETcCw3QRfJslFRyVvY2diyBpPZmKfq3363M+ssnsSsqddndvIw/WsbVgguJPBdK8R4Bk/Zm+WMJ4u4kXGFxKQbjtifpeOpv9oSOv6J1ojzHtpiP9eOBirQAdkVmbbeVBlqDATCrVd9dJQZE8DSItFxnmlQW94zD5bSXdjhEJ/3uH6LNETvh8G842LJhlD+hUElKUQPQ2CgLPUgCRNPEnRVSGV92pxnLPJFis/tCRWxxSmWpmsBZUCYxIDke05o3IAAuV49X8JKeWfrT3pz9a0T+8Js6Be9Ybx7ks4HY3EMpkjl9cU18/rMJX5BJK5x9+Xcn5/wl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(56012099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?g2WucwChb7lEyE4Zfa+9v1fnnIJ6aDBegAub4uPPddI6ylrMeA0+QVEnllyO?=
 =?us-ascii?Q?C2bFXFE6NKWBsKIGPls0mY2mz64hvgDykwTfeOX5T44oMMvW0mGHtqQTMQeK?=
 =?us-ascii?Q?vC6RkLLJkfKuQSMcCdHjxfSK2+L9WDeMHawl4hlGKEK4uZqCM9VJd5K71QEu?=
 =?us-ascii?Q?HO9zLK9OjYOGGRzR+f0v18SbRoGW3P2Wo+UBmW1PoKcjl02x+6hxhlYAnDU5?=
 =?us-ascii?Q?JiO2eaLyv3rMxEarDhZ2Nf2uLPXjfdtinJkk7B1qY9P2QUrlWfuNxqbmiE/N?=
 =?us-ascii?Q?EZm0O3gY2ka0zDxrPMBXG7nH8gcwWvhHeVM2svWkzOF5bCNr2Z6klNzWfz69?=
 =?us-ascii?Q?xn76WgZVeK/Yly4qNVJ6hg9Vmi8WpHrfYlERNIPIgw3WONqjVbU4AO+XaL32?=
 =?us-ascii?Q?UZ7cIRrD/s8+9lvHQmMd6KuhBLkcaBZGDG6pvNFFMehcS79Uxq/o7MD2DksC?=
 =?us-ascii?Q?pvUSINbiR1YZmV90rpJYgJZUinfp/N30LEsXtNNCLTuuCZH3WEHhP+Fmyhex?=
 =?us-ascii?Q?gRQSB5p7kRMmzvEcRai02lxy+bgKrh+hSYVSQcwO9/bAt6RqoDnLoqGjPXGb?=
 =?us-ascii?Q?klB7ah0qZpA/xJDP/cMblyMOQ4KE8LifyX/0qaJsID6E5tzLhBfHB9j2ZXU2?=
 =?us-ascii?Q?U+RPexpCUZsqlv/V7t6kOpaydwdmePoAo+wxMET64NnSq0iB4UhiFO4wXfce?=
 =?us-ascii?Q?QIot59AtIGonh1Wcz583g5kntMmZaVF0xJ/VMKjhWOSOduI6pPg2Yg/J/IDM?=
 =?us-ascii?Q?tf29ySdA9d7QU9Rl1YKzILDcJTcDm1Jf/AlA3f4/yTGZVcpVsJS9dGIecA1O?=
 =?us-ascii?Q?MPhGq0qn2LOx7/t4MYEOwdJLFFZ57mDUV1UGacD4RtzsArH6MsVBxaS82bUJ?=
 =?us-ascii?Q?N6JxQfB3D0VkkmJmudNoEZ7KCXOACZ4rIVuFjbshdgV8tBrgDUCc21JIg6d/?=
 =?us-ascii?Q?5SyxVI9tN/Rxn5I2s6+S5f6rIL0v/B5jtUD2wUufH/9bZdkCf2IFiouABy9B?=
 =?us-ascii?Q?Dj8JhTPQBj/+RjbpDX22aw0/Z+kfIRcd0dKR144b4yztjxDq46tCEVsFw7hB?=
 =?us-ascii?Q?UBATB6LrGE5vWALLIQxea5ATOO9aEjORM8ZWK6LKEEbq1jXb205nKqDUA8Ew?=
 =?us-ascii?Q?ixz9N+sdku4lVvZS7qWMo+y//yPMdPTyiqECuIbECoOgEbdj4vKF6uXJxtp3?=
 =?us-ascii?Q?vrKI3ibsrzd9gZBIthOsTbzuSKkUMxxSB3X8kWBf1oHyOOpetuCJPIG2d6rM?=
 =?us-ascii?Q?lf/KBMaPz46R7qR6296BHviyBSwzalTFfOzsciKRAop22XuBmeadtF2JIrTZ?=
 =?us-ascii?Q?gZunxSXMsHfYnCflBohvX8yzfthixHEWsz8rUbKVGw/8ATRBwTRe+8xsFjsk?=
 =?us-ascii?Q?1eJicTf9RZ0kbKk9mANxv9Rx+AK84GemQCaWT3xRBqQRK8OBh/CC6Y+7uxBF?=
 =?us-ascii?Q?1FIlXAE3C5ANwGXyVFSDCbbWKNR7qR21tnza5EQ9ev4B4ZX8ef+z7bIgex2J?=
 =?us-ascii?Q?xt8TyXuE2pzszn9dKviyl1bu4WHipAYN+nX5xiIBhzFCl7U/GtFebDkGX21Y?=
 =?us-ascii?Q?OI1+w4lh5WJpY3j+IS5Csk2hsNrL0ZbqbkUGbcMeslNHj6k7jaiMbiKX31cn?=
 =?us-ascii?Q?rJRKAnEP61MjsIwTTRuqPFBo/YVMxHunJXgQuAgnYe9YA40+wy6XJdLYIlYs?=
 =?us-ascii?Q?N1IA9eHnfNZRsF0iTWoLiCklRmKWn2Ahi0kFKI4yg6f+IKJzoyqJMC9IPoQw?=
 =?us-ascii?Q?VIFJoiOc1U7YqFeKxr66mzWoBx70Rns=3D?=
X-Exchange-RoutingPolicyChecked: Ec+MSnFcqKuUCx+zSu01wEE4pV6vbGsfCfgUP/+woA7wn1thxhQHwa3/M/c5ymmr6nNMP0ZwgagFjUbd7PhM+KLJHIjPjoa6Ps3dJw56ZxjlWMHEUBNiGBbq91TG6yTN4ou7rO6u/bRKpJ5PRTaaY2L/925OQnh25f+LptLz9tJz6Pqk4zorQx53H59DanvO2MhDh3MUjd7oeO0bwbnnl3ZCGxmAJzfaIH3+qy7s4JnPCdTptvKa7BVsRpdBgK6bTh5GlSz4cYKeJgHAW9mVGLBPZ75Bs2iD+8xCjngh1Wy7QiU45McdBKgkdXRmkR1MAa4ZHiH13EtWeESmoDj7MA==
X-MS-Exchange-CrossTenant-Network-Message-Id: ae166734-d96a-4904-4037-08de8fd6cfd3
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2026 10:09:50.7340 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ngr8uy6SqkHQqSVzyJJRGvqh7aEaJoC07EaEA1W8U3Pq75k7WcTI9oRN/Dc3yiMxt7fDtBaXH5IyoWnSAXOb19HQWtwCsDdzWZH0mzoRhl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7252
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B70323783F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

A use-after-free / refcount underflow is possible when the heartbeat
worker and intel_engine_park_heartbeat() race to release the same
engine->heartbeat.systole request.

The heartbeat worker reads engine->heartbeat.systole and calls
i915_request_put() on it when the request is complete, but clears
the pointer in a separate, non-atomic step. Concurrently, a request
retirement on another CPU can drop the engine wakeref to zero, triggering
__engine_park() -> intel_engine_park_heartbeat(). If the heartbeat
timer is pending at that point, cancel_delayed_work() returns true and
intel_engine_park_heartbeat() reads the stale non-NULL systole pointer
and calls i915_request_put() on it again, causing a refcount underflow:

```
<4> [487.221889] Workqueue: i915-unordered engine_retire [i915]
<4> [487.222640] RIP: 0010:refcount_warn_saturate+0x68/0xb0
...
<4> [487.222707] Call Trace:
<4> [487.222711]  <TASK>
<4> [487.222716]  intel_engine_park_heartbeat.part.0+0x6f/0x80 [i915]
<4> [487.223115]  intel_engine_park_heartbeat+0x25/0x40 [i915]
<4> [487.223566]  __engine_park+0xb9/0x650 [i915]
<4> [487.223973]  ____intel_wakeref_put_last+0x2e/0xb0 [i915]
<4> [487.224408]  __intel_wakeref_put_last+0x72/0x90 [i915]
<4> [487.224797]  intel_context_exit_engine+0x7c/0x80 [i915]
<4> [487.225238]  intel_context_exit+0xf1/0x1b0 [i915]
<4> [487.225695]  i915_request_retire.part.0+0x1b9/0x530 [i915]
<4> [487.226178]  i915_request_retire+0x1c/0x40 [i915]
<4> [487.226625]  engine_retire+0x122/0x180 [i915]
<4> [487.227037]  process_one_work+0x239/0x760
<4> [487.227060]  worker_thread+0x200/0x3f0
<4> [487.227068]  ? __pfx_worker_thread+0x10/0x10
<4> [487.227075]  kthread+0x10d/0x150
<4> [487.227083]  ? __pfx_kthread+0x10/0x10
<4> [487.227092]  ret_from_fork+0x3d4/0x480
<4> [487.227099]  ? __pfx_kthread+0x10/0x10
<4> [487.227107]  ret_from_fork_asm+0x1a/0x30
<4> [487.227141]  </TASK>
```

Fix this by replacing the non-atomic pointer read + separate clear with
xchg() in both racing paths. xchg() is a single indivisible hardware
instruction that atomically reads the old pointer and writes NULL. This
guarantees only one of the two concurrent callers obtains the non-NULL
pointer and performs the put, the other gets NULL and skips it.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15880
Fixes: 058179e72e09 ("drm/i915/gt: Replace hangcheck by heartbeats")
Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 .../gpu/drm/i915/gt/intel_engine_heartbeat.c  | 26 +++++++++++++------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
index b279878dca29..a3830627ef81 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
@@ -148,10 +148,12 @@ static void heartbeat(struct work_struct *wrk)
 	/* Just in case everything has gone horribly wrong, give it a kick */
 	intel_engine_flush_submission(engine);
 
-	rq = engine->heartbeat.systole;
-	if (rq && i915_request_completed(rq)) {
-		i915_request_put(rq);
-		engine->heartbeat.systole = NULL;
+	rq = xchg(&engine->heartbeat.systole, NULL);
+	if (rq) {
+		if (i915_request_completed(rq))
+			i915_request_put(rq);
+		else
+			engine->heartbeat.systole = rq;
 	}
 
 	if (!intel_engine_pm_get_if_awake(engine))
@@ -232,8 +234,11 @@ static void heartbeat(struct work_struct *wrk)
 unlock:
 	mutex_unlock(&ce->timeline->mutex);
 out:
-	if (!engine->i915->params.enable_hangcheck || !next_heartbeat(engine))
-		i915_request_put(fetch_and_zero(&engine->heartbeat.systole));
+	if (!engine->i915->params.enable_hangcheck || !next_heartbeat(engine)) {
+		rq = xchg(&engine->heartbeat.systole, NULL);
+		if (rq)
+			i915_request_put(rq);
+	}
 	intel_engine_pm_put(engine);
 }
 
@@ -247,8 +252,13 @@ void intel_engine_unpark_heartbeat(struct intel_engine_cs *engine)
 
 void intel_engine_park_heartbeat(struct intel_engine_cs *engine)
 {
-	if (cancel_delayed_work(&engine->heartbeat.work))
-		i915_request_put(fetch_and_zero(&engine->heartbeat.systole));
+	struct i915_request *rq;
+
+	if (cancel_delayed_work(&engine->heartbeat.work)) {
+		rq = xchg(&engine->heartbeat.systole, NULL);
+		if (rq)
+			i915_request_put(rq);
+	}
 }
 
 void intel_gt_unpark_heartbeats(struct intel_gt *gt)
-- 
2.52.0

