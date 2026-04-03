Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CBpK/OBz2mwwwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 11:01:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 236D33927DA
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 11:01:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C0F510F453;
	Fri,  3 Apr 2026 09:01:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LeosGj0g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7957610F453
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2026 09:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775206896; x=1806742896;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=VRg0bvW0fKLUxz8bx5U+o0qA7Qg/LVjcNJtZkl2O7PU=;
 b=LeosGj0g5y2fH4nyhwLvvlIlmY44Pvh0nPeuQlCAsQ+9g20G1GifMTp6
 QXxhTh3tF9rAaZehItbNQIMeBiWwkp5xfRkm4mF+YmE9PeSTbk0X9HdE0
 J7Ajy4XYuf3NIOc350FKMKgYmL66iSWmOIgo/KOx+UURczUhb++sXLQ1x
 PZ6XgKd637ISY2xPV9z/4xxqw+uSh5RVUNhTpS+BJDhb2K8VbDNKjLFzy
 mG0lDJvFUlqgO6o0aTSC06hVdbByHbi+axDSo0wduNyoNPL4MfP6fHHgV
 /7l2n8nKi99ZhcHjTZSMty8mQbSNRbBq6DLvqlfkLbmiO8TtlpM3RwF14 w==;
X-CSE-ConnectionGUID: a55lTpooTSWpAkLns/fkzQ==
X-CSE-MsgGUID: cc5FzsqRRfWfLw9UEk0N4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75313257"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75313257"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 02:01:36 -0700
X-CSE-ConnectionGUID: MCtD8gvCStCjJaBibLTzsA==
X-CSE-MsgGUID: Rs2sv1xvSpKCl7M8HmEVWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="250291622"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 02:01:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 02:00:34 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 3 Apr 2026 02:00:34 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 02:00:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yo8akDQCPHHV3Q/LbpNeikWhbePsGWtME5rIQ59iweDdFH5ddEzY7lGmZPcXlKrtNoyi1Zy6ZjWatgNYxtABXuJOa4rp79NQM7Dz4BuiS3qvDGdsN7ry8AqEm9OHnXmfhYvoj0DnrpbS5uSrNwh5JJjArVGnlHmH/T2dCzG2+eSqum+RrBP8+WdtZoaaCHNHa83Z1PLbaV0SswFIvj1L3PL+Ym6QAYR2X+ltyc1BuCQAhDz1Y2ikqL/vvJUC2nOa+TDf4U+51N7bL8CaMZDycy5UTL+Zqgd2jp1CZ0uaTUR65GqOZBJL7g9sk3MRpkL1+AQxGMxJpmiImvR1zt4DBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Krc/l5Iec6SI+5wq3NZa1jAiipISsSKy7w4eT4xsvQ=;
 b=OLqFZvK6VicEk37b4wo/az26uO5/P1BC06GDIwHxqP7QtCKvjsDY9Zwl3k64RiL7R2TZqcBPBY8C2OotVsUgVu6xUgz5UJalw5GunsPOswnnLl9vOfwa2pYtjXZVCMpv9NdEjzbtj5Te854b8+1a/AAnKmcAsMYQJxZpfD/F1kGBf64q+eJKg9nIni0VVxK0o6ds9PHiiH7LXdDQSFfTfe+HUeNYFzdJU9N4x5py1TRX4dYQAt9WERtq/CSOEKYqjAqRevMhWvlgSX2JcBNNm70CU+cyfvv1GZcezbaOcu5vFJju75ApNW7J4JNMxTcUJAyL5uoFQLWpBGWYPMUgnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA1PR11MB8802.namprd11.prod.outlook.com (2603:10b6:208:598::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Fri, 3 Apr
 2026 09:00:31 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Fri, 3 Apr 2026
 09:00:30 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC v3 0/2] drm/i915/selftests: Use safe userspace memory for
 mappings
Date: Fri, 3 Apr 2026 09:00:17 +0000
Message-ID: <20260403090019.1933036-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA1PR11MB8802:EE_
X-MS-Office365-Filtering-Correlation-Id: 30ebdc9f-475a-409c-6410-08de915f74dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: zRVGBsAh2Ausb0xauNUcTKN4LvsZ3+DVSNE0jjU/5AJh9C/6jnJGrcHjMN9Any44PrpRKh9nsJr/8A1EujEn32CPbK0RAeiplaMnAK4JjsuZaNRbExTqrijTlKioFUKIsRxqH72MXVaGPsqFJnauQvyowv4HoOqcsDKCBKMHrJRr8D6pBXo9ZAZ4KFr+yTDo361pesYavyEs+GQLYCkrZDAGosZ9bA8NiLBHwaCKhQRpyDmgziNeTSGbMX1AD3xgWDmX3Jy7tp1uGjRV2vNuJeDBwO/rOj9nVIeT0vRr7tVcJyiLR9sFPfTsKLKvqZcEo3eCVnTplkFRh92TEXf8i5yZRPos0SUQhJ2I7OUCCj2ovMxXVWRexO6W8aGCe1K2tU/QIxdL2N4uT4jqMzNS0z8IOfbJCL/eQIuysUUqYdRWl5T39gSgrqqGlLJZO98rY6RT/6OF831554NKV9/a1r4B4s3PNoUXantDaJC0PVkdfsjB1yuMOhxUwa8VIfSKcFjLAwp2cypFgYxTaF5nW3KhJG/H5b4aZ7XSVs6Rs70c0feSwq14CLqCIXuC5il6nlz2KK+vNRHSsk1NlneyyiJ/VejJg1ogWFzhUPqtBZzi15R1fJZadMfJw39qp7X0sUV2JjAUszBrDJKlwQoWadu8is2jy7zxY/UsbtK7e6f5kOHJi1WJ0XC4ddGqRpdRh23En95zUHz9WaRJAoP/gdZS54Q6QAk6kG8gTs68A8w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sTash8B7q4fFYtZnBHgP7qlsTpH5hyFjby+DgqDQsf09pkF3S4DRCQiVzglc?=
 =?us-ascii?Q?upFU28G2peu/5J5JHKtemKjq6X+j0MDpNuIFHbcprgMU3HeqljQcZTfG7vhB?=
 =?us-ascii?Q?DAJ2/Ei2+6OVNBlT3JHyWMsaspIdPM8boPWcQoU03TkKqPs+wqeJpTuBSC+l?=
 =?us-ascii?Q?ztBnIH8iftIHovFeFHq6zFmxcShfRWZ3OCi4YlrFLquTp2VpV9UNrDPKKV1p?=
 =?us-ascii?Q?+kM3ptO6geJ4+epnMH5em3u94e7gro7N7shZnJQo1TjzBPPAGV+ubiRZahw1?=
 =?us-ascii?Q?Q/XYaYRDkT4S2uBxZX/vbnjyQjYUl6UZFz+nv3KdrfBe+9YlLQ/BkafjOTgR?=
 =?us-ascii?Q?1LigzXWsjJKKw5+ZIsaO1AUfAEqc0nhqbKzav/r9tf+scTXNLnZ02CU0ybr+?=
 =?us-ascii?Q?0NcoVy+O/r/ukwr7Csum8fuNRlEtktLG+c0olC5xmc1WwYzTUXns8Gc7nwnZ?=
 =?us-ascii?Q?zsHByl6C+XswMyUa2xCGnRQx8K5AJ2rogDD1d1FRnCnbN6w0gua7f8CokH9Y?=
 =?us-ascii?Q?VecAgNxd4hTGDrZz7/g7UFenjtRcLQ+OPLTbY8u2p+L0VWru4qPP9m/aQJ3l?=
 =?us-ascii?Q?vwDrYztXf4Ea4ZTYMgMrL8251kVKpGoD2YcMoXinz+/cspe14Rz9U/KNfh+Z?=
 =?us-ascii?Q?Eryq2gtXQXnx3ntThgT6bc6f3msyZfjdPJ5lT7F1tVLT/24s5YWCKc7M/uil?=
 =?us-ascii?Q?NcgyZd1difCGqNnONQCOB4jzIux376Gs4QhMaq4P0bb9CuNDzru7wtrP+2wY?=
 =?us-ascii?Q?qUzJT4FkE3u4WvPq/0O/fQePi3hmexpX0ODiJfJbhcaSoMHeryvKn2T+9xDg?=
 =?us-ascii?Q?blLGW75H4cqMN7r5zi/u1EaHHM6ZBD764mi9Tw+f/zKGBT3ROhsTcEd3cE/7?=
 =?us-ascii?Q?Xc7lEcxBY1TqxjeRln0dGwu9MqXGavMhr75klqpN0vE6T0ASwpAPU3hluRha?=
 =?us-ascii?Q?VwEATXGhs41z9eB3uov1bsj35HT47y+2FgIlCPPGt3S7LiHbqX6iwDR2G3cb?=
 =?us-ascii?Q?v1kRICyQxyFM4AEDdGmZYd1PHdKhaJNfOdt20r4J5AozJqkx2F6TFakQVhbB?=
 =?us-ascii?Q?z7M4H+wlC8mnCaFSvjOrnXqenLtLqIxaTqNCn5O12Dma3WCkyg1T01sVqNej?=
 =?us-ascii?Q?Q1U0UDrbY4bl6ngOUTNcJQ840cCcabYBG2+dHtQ05COpsxzm2B/fO2zTY584?=
 =?us-ascii?Q?aiQ38l0PzqJCuZoQ7PqTUQlfP7n+k+NmFVXN3QNmJ2sQxqG83Bv+Nsk3ScNq?=
 =?us-ascii?Q?vCtnTdI0eqPJyORrwyNqhwDprq5KtJRBEKwKxjvu0hntKCWwCAhbyEN6f9q2?=
 =?us-ascii?Q?xmzknjDNdX5zk246YAvGE83MRQqmK/xr4K0ohxuRFvVDj6AR7hKOdkxeG4mU?=
 =?us-ascii?Q?bFvKcyS5wOamZr4Kb/4tPSgB5FkQBg7Qdkt5tXgvQIOg6U3UplYs0M/8OdHA?=
 =?us-ascii?Q?/MtQrPo5EJjL/Rl7Ku2SbmO7+vWXTY9XmchySneeFEdb5lepgUB7g/e7WCG1?=
 =?us-ascii?Q?5SYLQwqSXFRCzM5K/5A5wooguzlMd3gY/Q1fPzfSNbR/9VFyaoznF1r6Oj3p?=
 =?us-ascii?Q?w69Xk0hnTP2LLK68BX2Wr7M/9dJEw7mAP0W+9zeXJBhoG8gCbAQRg9VxyJfo?=
 =?us-ascii?Q?XpyvVAHMO8+loWCyCWcUjFS9dNeAnJOMfT5T9jCUGt02xS4kTnihQQK/doOC?=
 =?us-ascii?Q?QmwhYRZY6Gb69BBg0TOv9TO1rnqX7FpOZ5y9HLgxL9PgUc7FI9UgVeWVfF44?=
 =?us-ascii?Q?pzSJVZpeLLwBrSaBqRWia48M4zHStEU=3D?=
X-Exchange-RoutingPolicyChecked: eYMfNJwWOW8UiawulNz2SPzNYw7UzRNj/6lmZqxef70tncNnNR2wZQQiUFOBQpHE2sEwHxApiC7l6ereSySzYS56n0e8EAPu+0cjVEwIqlMO/3P5tz4OjQ6ewQs0tnJiaY5LZbKOEZHpurY7g4VqAzUw9bGuUZQ9DhAv8dLfjdp8iH9MJJV8S8gxS1Y+csEWa1lO/dPiMhTYS3jTs8xG6soLdIrgCm+PP5pcATBN2n1k9dTbspDzKXhlKVzsNcdB26oVB85fKbBrx5znT4UpJNWTPgwVRokzcMbRRwhRsF7tzsYQKVKDD3nzWKvzBto9X+prpGI6X9hI1lj7jo8eXA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 30ebdc9f-475a-409c-6410-08de915f74dc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2026 09:00:30.6308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oWOC8IqQqoW2Sw34GBvQFTmIkAp3m+xMdAmhP17/J8x2Dz2s1xxdnoMiY8OBwqL1GAxeqwikbaIvEGC4rtu9d3Mg0P9cDsiVgsu1Gtju5Dk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8802
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 236D33927DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Test-with: 20260330102400.1157658-1-krzysztof.karas@intel.com

Currently, i915 selftests use unknown process's address space to
perform mappings to userspace memory. This is problematic,
because there is no control over lifetime of the memory of such
task, so the test would occasionally borrow memory scheduled for
or in the middle of a cleanup causing SIGBUS errors.

Utilize user-provided PID of running userspace process to
perfofm mapping in a safe environment.

Krzysztof Karas (2):
  drm/i915/selftests: Add userspace PID parameter
  drm/i915/selftests: Prevent userspace mapping invalidation

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 14 +++----
 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 40 +++++++++++++++++++
 3 files changed, 47 insertions(+), 8 deletions(-)

-- 
2.43.0

