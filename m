Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cKn+HhHQDmq7CQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 11:27:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD8F5A250E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 11:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B71310E498;
	Thu, 21 May 2026 09:27:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jqJydtda";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6918C10F221
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 09:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779355661; x=1810891661;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=AbZ+PItbWwGLBapKjPcsvXaSMlCvnyPqFevlnWAT2NM=;
 b=jqJydtdakbBz/WzgON0Ypn3M5uj9+RVjtaUmQ0VP/e6Z8Xk4nlgdmxJr
 BGkUyPWyCyJYUgIVH86bx8xhdA04ZKHI6tXYNlyCYriKmN6iJ6O6XORan
 kR03Axcv78MNlNBwoBDVCVXDow6x0N+4wyOCGztChI6uYN1BvnBqTFmKl
 9QD3nTR7qI0qHIiMH2KyEB71mMzXGck+0w48x704cChc3EgOFz71PAiQX
 ry/BGdWuHeeIzV7izRCAUjvJr6No6mTY13aOJ7TjrgiyLR8+wH1QAeZwb
 4ACRF71F8i1Pi8KcQNXZQV0znxN5QJmpyRM7TrdEh1pAuZ9mKe3hJDiLO A==;
X-CSE-ConnectionGUID: nN6eCsx6R/CzjRkg8tq/pw==
X-CSE-MsgGUID: Ct9xYTMdQIe9GA5+B0sDNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="91377640"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="91377640"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 02:27:40 -0700
X-CSE-ConnectionGUID: CP9pr0aHTZuY5rdqpx0DWw==
X-CSE-MsgGUID: lcGrj1GdRme+c4ylCYck5A==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 02:27:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 02:27:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 02:27:39 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 02:27:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=blsAShpnFxM1kPK4m8gbR/cCTIwTPOrR7hMbOtNsfDbYAVR9aeAVAfRzHfEDiEdqVmNzeBEZzKXhCcBDfx7Gwy2G0Y9FO/JBv1gSAaDDSac8MNYgnAGkXm8aRZI1li1wq2nD0JUobHGCKixPNL/PZ/0rTcFArIrchuMretK31EvuBHQ5H05I2/YzpFovSCJskNG7ZP7FYAufL2Qrj8jnGw48tGWn3svXwJm89pLtyKkzdMTAyeqORS7S7mV7myWw+xsD0X+H9hJrMiaj9kGk/PnX6WQ2ObV+qm0a4qiwbQQeiiBv5eq/xNByebJXpbEjtRx6z/l4qRQxOIDSAzp5ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Ii+Z7IAhc1CZtDCi0/EG3j1FezHC+S3jxfVtu+9woo=;
 b=gYIPD/30SiKOHMamvMVhtx7BVjMwieJ4I3zBtZLpdoOJsi60+cPYfyNbUZm9c1Vvvx3yM8H0wAzEdkbb5JQmdKJQw8817Ma0XutcEMU7lAC/tw8K03rJV9asTODisr+56Yadmjzk6E1DwwLoHox/miNkQlEXnVC7ifqiICbdccE9Fk9oEn9JRqSJ4wKah1rUE3qC3UaJzKjXnPLSusDAAuoq/mbZOxjMd2NU8eriF1HcLO0vfb1SeyKNUeUYY1ZXrqJE+oltHx0x/T1JtobC4GFlcaRiJgjMLMCvw1V+Gn7zH+fU3RDxMvwlng+BBGZpkenqIge7zaMKjoE8JCqp0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH3PPF179F31853.namprd11.prod.outlook.com (2603:10b6:518:1::d0b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 21 May
 2026 09:27:33 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9846.025; Thu, 21 May 2026
 09:27:33 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>
Subject: [PATCH v2] drm/i915/gt: Fix wakeref underflow on device hotplug rebind
Date: Thu, 21 May 2026 11:26:56 +0200
Message-ID: <20260521092656.2761-1-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.53.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DB9PR01CA0025.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::30) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH3PPF179F31853:EE_
X-MS-Office365-Filtering-Correlation-Id: 28ee6e95-d8ac-421e-c4c4-08deb71b3044
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: KaBVnpttW7ADG9Ra9NTV+tQEoiRJYS4SOijweYacsLbcliCxU5kJb1uiOBOakxKeaZqzMdNzq2xZTqV7F/cuWksYiiBv3WuSaeRtY6i8vN3QBVHyUIXcse58umKyqteXbibzvK91ZroeGY1/sa/H1qTiOsnaMsYLUPvGiNXWt3XK8b6N7U6AHEHItOUgQ6n5EOoonhWV1oBAaxVv5Sh11gtSp1AlOTCG5EH+Iyso7FHr6DqW6y1B3HiGS+YepyaipfWc2N/yHRrKM5l04OI+aLJXjJaS1I/yjitYRyZCBHMtXEKkB3GI7yioD4GkeJdLlc35m8D3F9tzKJDN6BOjTsiilUkRsCbY140BT0CvFh/diiMGErQTcI0nq4DNUHVh3ZZZCOY/PRxARku3yee7c68aHdV3coqy6AcmXxLWuKBasqLJ4XDNrzcg4719Y/28+Hmua+SoQJFq3lXPfdEgzOS5vTcPGuiV/9GD8hS9Cc8DOVjuimKVTaw3NkE/AhTn2PfDHjdj5Wbyv0TwC6oJrLIJ1OpgDPMmgLMmh6U8TNglvAC3AeendGjddNNKxG6Bwh+c1rgdUa/MFlozjjfz02qXcPVzg4nM/+MC8e3R4XTGhFEShYUuwluGwgMYKXAxvEWWp72//DxykW205GPA/Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hDrmTR/QnFjmJV/uzswxEboncJoEV4NoIuL8bfwTc1l9HaOwZaxC4ht8Ipj6?=
 =?us-ascii?Q?alaCvY3YJR1JrYh19GV8XhCDf3/y7l9E/6FObUVCdxAi3jXVy4wx4IPw/dFw?=
 =?us-ascii?Q?tZpOfaBUgPi4qxzJDS1TJfkhhpQB4sj0sXXcdaz44HYOG81zgFm12JSk8waI?=
 =?us-ascii?Q?jTmjybA+MMoLFg9ffMzQO1lK3b3ah85TrNFCHgJ3UlTPeEf+mwidLHnWKRKT?=
 =?us-ascii?Q?dR9jkB1xI5YXASFffmHyZGTYuweC3Q/lb7oJNVNTbsDaoHd2srh9VIXExbdv?=
 =?us-ascii?Q?qm04v0mN+2jwcghfwnlJ6YN9BYuC6s7IXMKwjW7+NNaBY1mP0EEjhVA/jZ8I?=
 =?us-ascii?Q?YClxSPv5iwfJ0qlwP/rJ8CDVlf98cErMrAiuz5PRPCCcKQhqQssa8jZRQ5ju?=
 =?us-ascii?Q?4+hWUx8+LMNo5LO5CrwtxhmgS2kPIqsXoGvNBxiixZ7IHrm8UrlFHRS52Zl0?=
 =?us-ascii?Q?ezXgH+C5gzEkmbIW6aI/OkFWvnbmfoiSAbKM0ruv4kLFrfQpzgE29yDRDvNC?=
 =?us-ascii?Q?z/ldbCMmOuElg2AzxJePIT6VUvQ57TonQe+drbM7butGF7FLED3XUU9AlXzI?=
 =?us-ascii?Q?+hYS2QQv9xMTjBVqfennWbeCyCzhj14S63CGkOwNQiIQygQk2vchGi4ROAJJ?=
 =?us-ascii?Q?Fa5317stJKeRr0wfuJmrjlhyw2dPzAYegq7K0g5aHZDGqo4oAOb6zKCQGVV6?=
 =?us-ascii?Q?ULhYo4ksUEt2pUp72mZfEwqPJUf+x7Kfh/JcRm0ZPLJFJu9b630OIPs0I45f?=
 =?us-ascii?Q?zeihlOUpvIhD9xqFhBVQk8Ahkxa/m/P7IuP/gv0b/EvOX0i+XvJk9A1sJHO5?=
 =?us-ascii?Q?ghcTS2EM/kZN54q8b74TJAeDIvI4KxXbJf1UhCFn7usba5IQdvYwlwPolPAa?=
 =?us-ascii?Q?kL2Fl5yVBWUv6ITMmPxgcPwPfNUtJtCnBgKmo260MVRxqLAm6V1QcKLRRI6V?=
 =?us-ascii?Q?fVluz6qaiFozI8aoV285AtEQREw3jUmJchW7gfkD9EtqnUXsISNjojHRsfPa?=
 =?us-ascii?Q?eLCQkVDIl2KfFLS72qaudQVb9QE4mNvFWTOk+qSqC6BAfAcdYkXmUXzJlqzQ?=
 =?us-ascii?Q?E8d8kzHSKr16iHEvrHAbqvhqA2tGtcagK1U/QFnpRBpuz/BZ8Cvy5/bkb2OA?=
 =?us-ascii?Q?ZSRa0rAs4j1nB8qXWFcDX00r0fBNSHfdqh3NOvFH5Io9S74WDlaEtRWCv2NG?=
 =?us-ascii?Q?bvLJesMYWOgh8jEH0e57Q8hBwRV+idmKAobxsJpeLD7B/FvxdrHsDCRML0Gd?=
 =?us-ascii?Q?AIHygmS6EP9gP43E7F4eyGlfFNptPcGsj3VO0jHrNKbsmdfGK1kIC7Xk7Y/p?=
 =?us-ascii?Q?jU6ijO8GjiJ8ibI7XXHOf/Vu4TZvx3SUlBTJ2MDpkNJilAUdfqvpI1H3raIz?=
 =?us-ascii?Q?97MD0gIcERxMEv+nq5cN0T+/4jLCx0BrG9Y5QYsjXxXJolA7jX0Sf2Cs4HzF?=
 =?us-ascii?Q?V7+9fW0jEzWCHcG8wNUuGG94SPtG/8GgYK+DQHbg1F4rvMA7Fgb3nfiBaHVi?=
 =?us-ascii?Q?OHsvEwoH/XJWg3VpMYeainoGqe+4Zwn7igA3UalW8K6tk5wx2MwWBYgZeTl2?=
 =?us-ascii?Q?4HVt/OMHmeUKxigwsTgMQ0+5bhKJlmIgldfZVjRFPm4Ot5bXbBIDKfBwdyXn?=
 =?us-ascii?Q?xk0bModQkMyyUc8G3eBqtCs6eQmKhMv/pFQaD3qYHkJbCvQs1zZYMpOchfHu?=
 =?us-ascii?Q?nOzLuM8ld3ZYDXUZO0SA7TAhHsjAvlYqEHrN73X+3nGUOsRomjWMLrEWbH+d?=
 =?us-ascii?Q?JjyKGKZnJ2sMOtih1SEEz9+Qwn0ef/E=3D?=
X-Exchange-RoutingPolicyChecked: lqbWnMkM5BNpEWulAfSFWfHTmsXLn0H1XY/T2s5bPYRX2awxwSx2jLA+wi0J0aU/HdFDUH2Epfbfm5fmHNa/2LT06SNv2Jm/iSURli3YznWJVz2pNO9pREuUnqQlGXU8twap1qj++fZB3lNWqhErUWIu0xzBANhFhFNPc79aZ7Ycj5WmFMnYLnrx4WMYMN0odW8oyK2LRvrmJZvZn8P7wRQph44ds0bYQx4T3ean5tnboj+Ppf2xAkYsXNQfSeuZqbATbsUiC+zwuLvXhlydYVdoUREFac1IBnJv/yRAgqp/p8WprV4B+JmgnCejiyLKFC/b5lr2R8redRRhHhsEJA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 28ee6e95-d8ac-421e-c4c4-08deb71b3044
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 09:27:33.7491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wa2TvLx/JkApiTzyaob2fg1fPZbF7ZAduqgU5cRsLMske0Za/WbhBLPbBImvPHsj3mjbl35+Vwza9zuIpzfuMtL5Ys8au0fIIwnJaEm3icQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF179F31853
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DFD8F5A250E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

During device hotplug unbind-rebind cycles, the i915 driver crashes with
a BUG_ON in intel_wakeref.h when retiring stale requests that outlive the
device unbind. The crash occurs because pending requests in timelines are
not forced to retire before device teardown. Upon rebind, fresh engine
structures are created with new PM wakeref counters initialized to zero.
If a stale request from the previous device instance is still queued,
it will execute in the retire worker and attempt to drop a PM wakeref
that was never acquired, causing underflow.
```
<2> [368.095702] kernel BUG at ./drivers/gpu/drm/i915/intel_wakeref.h:157!
...
<4> [368.099735] Workqueue: i915-unordered engine_retire [i915]
...
<4> [368.100280] Call Trace:
<4> [368.100280]  <TASK>
<4> [368.100280]  intel_context_exit+0xf1/0x1b0 [i915]
<4> [368.100280]  ? i915_request_retire.part.0+0xb0/0x520 [i915]
<4> [368.106309]  i915_request_retire.part.0+0x1b9/0x520 [i915]
<4> [368.107123]  i915_request_retire+0x1c/0x40 [i915]
<4> [368.107123]  engine_retire+0x122/0x180 [i915]
<4> [368.109586]  process_one_work+0x239/0x740
<4> [368.109586]  worker_thread+0x200/0x3f0
<4> [368.109586]  ? __pfx_worker_thread+0x10/0x10
<4> [368.109586]  kthread+0x10d/0x150
<4> [368.109586]  ? __pfx_kthread+0x10/0x10
<4> [368.109586]  ret_from_fork+0x3bd/0x470
<4> [368.109586]  ? __pfx_kthread+0x10/0x10
<4> [368.109586]  ret_from_fork_asm+0x1a/0x30
<4> [368.109586]  </TASK>
```

The fix forces retirement of all pending requests in
intel_gt_fini_requests() before cancelling the delayed work. This ensures
requests are fully retired before engines are torn down, preventing them
from reexecuting on a freshly initialized device.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16037
Fixes: dea397e818b1 ("drm/i915/gt: Flush retire.work timer object on unload")
Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
v1 -> v2:
Remove flush_delayed_work() from intel_gt_fini_requests()
to fix deadlock.  retire_work_handler requeues itself, so
flush_delayed_work() followed by cancel_delayed_work_sync() races
and can deadlock. cancel_delayed_work_sync() alone is sufficient, it
prevents requeueing and waits for running work.

Drop the wakeref guard from intel_context_exit_engine(). Skipping
intel_engine_pm_put() when the wakeref count is already zero masks the
symptom rather than fixing the root cause, and silently hide any future
stale request scenarios through the same path, making them harder to
diagnose.
---
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 93298820bee2..99a58951c40a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -230,6 +230,8 @@ void intel_gt_unpark_requests(struct intel_gt *gt)
 
 void intel_gt_fini_requests(struct intel_gt *gt)
 {
+	intel_gt_retire_requests(gt);
+
 	/* Wait until the work is marked as finished before unloading! */
 	cancel_delayed_work_sync(&gt->requests.retire_work);
 
-- 
2.53.0

