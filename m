Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id FI9HJdzI4GkdmAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 13:32:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA58040D706
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 13:32:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D328010E889;
	Thu, 16 Apr 2026 11:32:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XcjxN2Ns";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E67210E889
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2026 11:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776339160; x=1807875160;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=kBiTwc33LbaqRhBquu5jGhyplNI7Ugq7piGgEh4Zsjo=;
 b=XcjxN2Ns5fzwBiMJLQtbm9/Exr6O8ciMhx6xLfk5AhAhAYj+a+YdgpZ1
 r3wUQC0O0WF7t7YNzV1xRDhhvkTXk2F4AdudQc21jiG7n1PXhqauY0A0y
 Rj0KtuJgYRHtiGZ8714LbrNyUh2N2/EBeR63AzOjGG+9nHuIyyyDRXQJ4
 ukvvM7WFdG+3KpbcRBFl2Q6IohhcMST4yfjvwAkRW8ocXRWsx8TQIOSGo
 LHf7w0AsDydIr5IB1Y4JCdkHbBsgDo76hhM4Hr5X+R/R8xplachtyvdmn
 EiSMjj1zyGoE3WVWsEvmKXVxw4sj9fAv0asaEz8YMmhV3YuTi/E+N+zld Q==;
X-CSE-ConnectionGUID: uue6KkfRQo2XrskQJnTG+A==
X-CSE-MsgGUID: URD35twQT0SGg6nOm18DXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="81215671"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="81215671"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 04:32:40 -0700
X-CSE-ConnectionGUID: N8vkg+WkRrqDiaSNMShjIg==
X-CSE-MsgGUID: UGe+BbTZRBSTkkqbLQlEuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="232448017"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 04:32:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 04:32:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 04:32:39 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 04:32:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZyCc5uv5I85GHv+9jjg+hLSHUZ8Cv6Q6K2UCHppv+DpoYXZ4TB9YegQ4o956djLXtnFM+vyU+6ufv48GU1wXxEL1S3D5rWRIPG+mDwCQSwYKPuMi1bPCMmzinT02S/rf/FIwIReitcAhU6C2ks8mTEihazNdOTQMKvZHxkarwrU5/lqKXCVy9krXmmgxpduEt1dK90s0SzXdEIafMQKqPxdBCFTIkIN7ca/kuVvc/NDliLpE16eSbXNTG81l5N0eKlr7lhc4lzdFg6RIfWUqWnQ1YNFPI3f2dw4bAeciMT/lNrtvbkFuDEF2npHtKs1TlYsS40sgu4HlTNhCY4+Ryg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4/DkKjUzjj/dLkTqDxh8bp/WqOBhyTVNXdfA99ACs5E=;
 b=BgZiadYwQFnMqlF/owL+yZ+/6QraDnff5wVJrb8AxC7UcmMOmrcIA7tFfHjqgiJt9lJnGkOVLh60zPSeGDXElnWfQkt8I0X1+EHhsJfl8rwEJb9YNOjiIjQNaBACpGBPOsAIupH9pXS2IDj/HSTIzyZVUgal+HsHNRnfvxGzoZy62I9WpywZ53cSDG5MHEPaq2Ke6DQrBjQ5dxNZAiLpC8Mh/8Hj7zssByFNnI/S0ZAl999X/ZUeR37PQJM0ew55kw092bmxtktbCOIx/VE8cnUtQi1W8LKa3TQLgX74xIMKuqUguP9lVWuDlYoVS5wPZcNZ5rruypbXDYxman9HpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MW4PR11MB6690.namprd11.prod.outlook.com (2603:10b6:303:1e8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Thu, 16 Apr
 2026 11:32:33 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9769.046; Thu, 16 Apr 2026
 11:32:33 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>,
 <stable@vger.kernel.org>
Subject: [PATCH] drm/i915: skip __i915_request_skip() for already signaled
 requests
Date: Thu, 16 Apr 2026 13:31:18 +0200
Message-ID: <fe76921d35b6ae85aa651822726d0d9815aa5362.1776339012.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.53.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR07CA0147.eurprd07.prod.outlook.com
 (2603:10a6:802:16::34) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MW4PR11MB6690:EE_
X-MS-Office365-Filtering-Correlation-Id: c785c192-dba7-41b0-56a2-08de9babd9fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 13ZxkBitU4+kNvBjo4wpDBLlCWp9LqLSU4NeEjgRkEfjsJwSkIuHJwuhvOlkaZ0GMFabykrefk2nINQhOGms7jzUqC1uguo7P3uRhzt58zjJ7KkUPIZFJP5BwJqKxIX3Xd5/AstT3/ceARTG9ji8JVn8Wvyh7+YA2VmitNxZHvLiTj65QxkBV2YRAW3MS4glKT1n4LvKnDe9s+C//9zEwQGqXP0XzG6lc3yjxTBRinh4G4/KrtxC7rG+pWa3WSDYMSyO/9NLBy5TwuvqtYmkeccSRqJDaVNFK9INLckJtDlhhrvJQEcpKjDtrQnLMLhKOCc45WsnxXosh6/esrVAg0otnAKOTl82qEL0ujJr3DsrKOE+ITY3wJqwtgtJG7alBw8IWMf8kxbasvKN+SHYm0nE0tpdKyHBNQoamQNDg3eDUhpyugfCCHL61JPuUd5uTFmOeg9C69tykHN4TTIqkcPuYxfmz/h49T/vpfDj7fZ8NaWseVT3uHr7OWjVERY5hAM8MqDRDgq7CtRRqlTiTLTqYvlSf4XR++vcs+ec2krgZogrUpb3hL1LNj/JuCAoyT82bXZSAFDHdDGv+IBv5yqkqjuoRmIcoHoj0ymeaH5DhvQPrtYGM1sJWFfgKLXakHoZy1slRGkEJAPigRjWwXuaIhWpMR49hwdxZmWCAr4h4GhBQwHC6ajLJVATptVm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?v45F4op9ng//3BNTQgNU/uGgWA04n96LvD/m3GduZz0187uScDKvWbpUgN4i?=
 =?us-ascii?Q?XWjV85JF1sVubbCcJ2kOt9/z++zUnPDeLOyrSKH5NjO0YMWTOi+BfQGXZTL6?=
 =?us-ascii?Q?wO6H5zuNZPyEEq6GThAho7cok5y/MD5ceaR6cktporciBVejPXrLp4zYftcH?=
 =?us-ascii?Q?VUXgayusm4fcDUzcImcIUxhYEHDn+aZUt/jFLS6PFYjb27RcrUibVrhHAQ50?=
 =?us-ascii?Q?ROw5EtmNL6PM3H8jGqjXZpghmGj/bUd40BSM9eObD5luaCz66lrWzcVgzbKO?=
 =?us-ascii?Q?3afV2/cb2Dka0EQ8UcsFz3C4AVBI07WVkJATGV7sT0xINIKUj6eeEcGl80X2?=
 =?us-ascii?Q?xv3OR7Cj0pORDmCwTNURFlQ8sj5J26YFbxhTPI/A0JrJBdEHv6G1TV/6jVea?=
 =?us-ascii?Q?Zq0HnL0jIc4QJRhvtGHB+S85hXL+H7xIarKK7BQdSfJC+MLNX7pRGzEOfPQ6?=
 =?us-ascii?Q?isNr6WHcuRSF9RTvdrV3h+oD2n5btlMDXO9+/9QodzNcioUKlweTZ8PA6WTe?=
 =?us-ascii?Q?f3Nl3rxubzILB1EzhPQH8cL+MyG0RsNc92HdTLLZY/qwEd9mZzOPitRzJqtz?=
 =?us-ascii?Q?6reonvqHaRCRl/wKOwZofQqMkwZ8LowurdI19LDFwrFbaPG0yTlLBVdPsGRE?=
 =?us-ascii?Q?mIciBGnl2a13Ux+LX9mcFzTS0iZPpLtnwc8/FGa25V2qIGPjyiLByVYwR+Fi?=
 =?us-ascii?Q?afQIa9h7wjsdareL59eJA0NlUf/S3ZcpC5Py8qu6Psw478unfYJUWhtj5/D7?=
 =?us-ascii?Q?2LkqRiW34wukPeHfFpqF+t2uOxuM90EapXpu0O3lxRo1fKS7291TrJwQg/V/?=
 =?us-ascii?Q?2vvBfUFS4/6kcHTU7+2DeTSE58DYeOOwN4y7qAnYjI6aJrcZLkRuEYA+AnrN?=
 =?us-ascii?Q?swPDMjynKe+B7kh0GYEUZGy4JMEDQv/nPuxLjcdyRxovGRPrz+O/4SkkI1RH?=
 =?us-ascii?Q?aO/vZbw6FKpNVYjbjL/WRtX6ShV1gCgTZLPE84IqS59vTqf2o0jkKAIcWAPa?=
 =?us-ascii?Q?Qjp+EjZMUG8I4LVDDqjROZaqanvEvdoE65YD/knbx2BvJQc0ctGJgsnWNujc?=
 =?us-ascii?Q?H1qNiUeOab9cKYOpMKyAYfWXFQXWW23/vjWF5dXtGssBXmdgywcPMQy2Mo2X?=
 =?us-ascii?Q?g1veEZLzZaFyic3QXY92XMaKoBgJR8w7vbQCIQ+aYu9f/SgsWGB+RF3m5XDb?=
 =?us-ascii?Q?jr3e51Nzvw2gxos/Axc3YfsKbn8bDZeS4vKYrUmhJTsh2CO6rm6aM4ElOPgX?=
 =?us-ascii?Q?u/NBYeixEFYI3f0Lvri7Uonu0e0rElzF9NwiWsL6LNLXDcdi4h8chPl2APul?=
 =?us-ascii?Q?Rch9uLYXAkyxukC6XeQRR9xakB1ILBRhxoy6Tckyn40B+SsHLwdQmyFV3yZx?=
 =?us-ascii?Q?EF0Gr+vmNyey1Az3/j9hxHKFbHiT8EwU6sAj1PAp5d+sEy6/FpGC0wbIwF/Z?=
 =?us-ascii?Q?C8tY6tZ2OyPxkyp3N6TJeASCifFzS1pEWOomPcP69QLSQGAWOxoRPyiXmxEi?=
 =?us-ascii?Q?PfPIxHbO3JUeX2CQSfG0AcqrniepJwf6/v0qADCV71+bLveSxUWR7RkAz5xT?=
 =?us-ascii?Q?m/MjpZHHyRyp8RmMx/hYr61r1NyXaOwYOSMKuc9B0hdflDCONPHpTisWuDFw?=
 =?us-ascii?Q?WTs3NcgvehF4vXR38I5TyhVIbjdGDqbG7gR7mgSQ0PyR3U58mp1NTZ2CYFw7?=
 =?us-ascii?Q?8C2dnkj9L5iZ/YUvaPp69n9qtYwVZes85bziG+gb6unLarCLxuIQHsgG/tSq?=
 =?us-ascii?Q?L9VX7not2uhvJZh4ZHY6Jx3AnWmd09M=3D?=
X-Exchange-RoutingPolicyChecked: k1zha4fmhX1HYAJAHhzeky5B5mNlQ0FCXcIaZAmZixGt62AoBdDJMgzp0YiYuTFfYjWjHuN8vjxJA/rkSVn1I3GgRS23sntZA4Sm7BNa6/BF7TNPHVV0+lgQaGu8+dQvlV134O54ELUdbnqSgMS+OlFDvEeXw83Cdd233glPEt+aRUFwYqz+GMXXKwy7790G/xjcXKVvXX9HDHzrCY/BeI7NVKbeKnd7yKT+62ZMYpuLQ5LtbDf364487/kVTGoqIk7Coo+Jd4NTinxV2aqcjdTteApBACdn+zBbUXrIK3IRjNlpczMMCu1mbyojk88tuCUfoCtYIsOIjf9W+1DviA==
X-MS-Exchange-CrossTenant-Network-Message-Id: c785c192-dba7-41b0-56a2-08de9babd9fc
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 11:32:33.4574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ivj+VUyYFnpbjKhCEan08Zlm5K+zM4IiOp8nVBw6GQ9l0pOPUpYRV2LaF2nvVK45U/bZh+TB4FzrR8v/0UkVl+whqBkCTLDhTuHrnkgx6jc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6690
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
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BA58040D706
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

After a GPU reset the HWSP is zeroed, so previously completed
requests appear incomplete. If such a request is picked up during
reset_rewind() and marked guilty, i915_request_set_error_once()
returns early (fence already signaled), leaving fence.error without
a fatal error code. The subsequent __i915_request_skip() then hits:
```
GEM_BUG_ON(!fatal_error(rq->fence.error))
```

Fixes a kernel BUG observed on Sandy Bridge (Gen6) during
heartbeat-triggered engine resets.
```
kernel BUG at drivers/gpu/drm/i915/i915_request.c:556!
RIP: __i915_request_skip+0x15e/0x1d0 [i915]
...
__i915_request_reset+0x212/0xa70 [i915]
reset_rewind+0xe4/0x280 [i915]
intel_gt_reset+0x30d/0x5b0 [i915]
heartbeat+0x516/0x530 [i915]
```

Guard __i915_request_skip() with i915_request_signaled(), if the
fence is already signaled, the ring content is committed and there
is nothing left to skip.

Cc: stable@vger.kernel.org
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/13729
Fixes: 36e191f0644b ("drm/i915: Apply i915_request_skip() on submission")
Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 37272871b0f2..b728a5171e93 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -133,7 +133,8 @@ void __i915_request_reset(struct i915_request *rq, bool guilty)
 	rcu_read_lock(); /* protect the GEM context */
 	if (guilty) {
 		i915_request_set_error_once(rq, -EIO);
-		__i915_request_skip(rq);
+		if (!i915_request_signaled(rq))
+			__i915_request_skip(rq);
 		banned = mark_guilty(rq);
 	} else {
 		i915_request_set_error_once(rq, -EAGAIN);
-- 
2.53.0

