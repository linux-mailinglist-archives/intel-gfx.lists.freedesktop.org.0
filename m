Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Hr9LvvoCmpt9QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 12:24:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 179A556AA21
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 12:24:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96FB910E770;
	Mon, 18 May 2026 10:24:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hjpbxh/X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A6A10E028
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2026 10:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779099896; x=1810635896;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=RcbhU4pi6KBj1e64VoF/MQuzn6PhZGvdK0wKhxedAcI=;
 b=hjpbxh/XLLn4uiKpCqHWxgSbgOX8uOaSZaLA6A/gjTkWm1H+rzhCpfiE
 bGlHzmzKoLQ9flkeqYuyYh71ORtapCddLzNbKlJatjDovB3FqOJUHWXjE
 XfE5AI19bX/Xi1pwYYaBfCwpOkqYoixjGCT1yjydkJZ4Ew8JXdz+iqEFY
 YoyPi7+cL5QGpK7FHT561lPD29XG1MTIHweRVP/EUyZJaDsYA9U1N3KD1
 /8iIFI3P5XDPgr3Qgjd83ieFAAYID1nXLWbide8eu2h/vII72cO3staWt
 /2z2z7zY1U+h62+GU8V6Rt2V8HaerCvQa+I6VFKfzV/q9qO0HA7Fef8Wb Q==;
X-CSE-ConnectionGUID: Am4ugu34Qjqs+0G62ET+4Q==
X-CSE-MsgGUID: r4f5ZVi0RPSgJp+eEsSDXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="97379264"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="97379264"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 03:24:55 -0700
X-CSE-ConnectionGUID: LqDXEU7pQ4aO/QgCx8Lr4w==
X-CSE-MsgGUID: 1hE9cR1JTaq3dFRikExcgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="243384288"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 03:24:56 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 03:24:54 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 03:24:54 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.1) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 03:24:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k8DHO7+wV+MvcdLJLchmDnx4EKs8tPp0O2zwcsoeT6cowC5J+tk5/m0+otwZW1uXmOaiuWHkRwbrqcU07bTXvQimUFA15W9JLUmbQlgAjdwgX/6gYZPuor70FbXsiIhasdLqc0yr+BUt5pfKIz4tmvb06s9Wi0rwikceML6XvARI1bUpJuqexar41X22ra0XD61Bpabcs0HbCJz9yjojOP2wB/AVqWaSxgq8gYacxaR5Gw7HyQ5LAZVQwDzjp/HyjYXN5cIIgog0Hy2N6oZIy2zs2x95SwCirkTDsNHVN6zSiDSuNj+LkPeGa+TGEq9dds3ZheKmyyFH3CsjiDg0lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WWR3z1U08I3a3XjojSsdrHYXmDXvNi3hiZ/klwg09jI=;
 b=nqzPA6cbatKux6xl5lcg96VNQ3j74ea6MG62vG5giXfjVwvfMOPO8cK/IrUz92KZfcWbx//KN9Ld5+iu+aGScCXj+MtBbiujFRjU5qgatWffxytK0imdSEdphipw/jmtDoIyWEBEY+qPKI8pQysl/iQP5Zd4VdenGboNPMXHvLxgrzl1Yz6gAOUWr5ZuxTTdNQgmcXbnAFSJVm96CuuaNSY+WRzc7ZPgMGt40EpdD4+2XTqf1snnHn77CGBFBRNpK3r6ecT4sfEQCv5x4UxNwb8y3WgdcOqJPQtXydXNGMJtSFb7YOt8+OVNAaM+np8qqdNzCWBEL4M1oGbkGekJHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CH3PR11MB7819.namprd11.prod.outlook.com (2603:10b6:610:125::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Mon, 18 May
 2026 10:24:51 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9846.025; Mon, 18 May 2026
 10:24:51 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>
Subject: [PATCH] drm/i915/gt: Fix wakeref underflow on device hotplug rebind
Date: Mon, 18 May 2026 12:24:44 +0200
Message-ID: <20260518102444.5406-1-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.53.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DB3PR08CA0005.eurprd08.prod.outlook.com (2603:10a6:8::18)
 To MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CH3PR11MB7819:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c467a4a-eb10-421f-46d9-08deb4c7b1dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|11063799003; 
X-Microsoft-Antispam-Message-Info: PxsC8LsjeVfSfUn8SCrKmZ35GP+ibTGWWEptdoBjqaage62Fqrm7hBSEyVRQWSzIqpD2W4paK+2N32EWPY3mOuYif6NJ8NtmEHEcWjPDrD1DyOrRiW5W3kZ8qQMdmSizaOvOxIH6NFIGwhYYLT8kxjhqUOIns50yfJ4J3ITngk4lLl1YKQ6BWKAymBQSIHWbbCP7H6/oAzHzpZjJRplawpchntWZgxVf54OHFheh6OXJ5W9b1IXxrCP+/kfg4dt/Epy2idxObH4uXT0O21dXu1nhd4tUMBARv35k6SZUHv5pXIfnT0unIVj1NXwpfv7SIlObOLw0Q6YuF/XrJBl1MOuSf4iSL2EnV+uyXSmsd9YqziJ1uQbs2rJlfCfxAaMcwzH75OBTZXnxLuMYGmGkoeDIkXUbf7LdZuoIAD9f8jNmg+5fhfp0FAIwSdzJLfC1FDQ9CVrB5/XGjj12ZhLdakuoLyygyW7ZuFGx+28M8Ln5Fpqp0cZfhBbTVF/+9tWro8jv33XjVhJpn9AZ1Em0++oVEO7+OIPwFcZMylP1HXxIksfqVhellIOT8e/+ADlvvWHNt0nOZjT/3bLr05WsinMfLmeOJZz4ArQx3n1FL+PKB2cxTqzXzCgJvz97OxNmt9Hhwjap887Ql1IwfeUBpw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R9BR0aH3UvdAy6bar0iDpQETmGTJBDJKO3IzdkkHyvrIRVv7BBrWVIwGU63o?=
 =?us-ascii?Q?Cq/kjAWo7h1Q9g+vGa8Yxp4f95UX83BP3HKlhHGri4yOfz5koc20hyXBFa9X?=
 =?us-ascii?Q?TxGLZCAbZrN2klF1wZ2uqa4kZs5eb6/STPFx1NMjWdsqs3xUUcutXTtJoLv4?=
 =?us-ascii?Q?7wUMAO0q2wNQTQTloGYgnTHffVxS36PtooL3k1hEDUq85LeoQaUn2+gSr2QS?=
 =?us-ascii?Q?ULfBKlBsHxxnlodONthoX420g1Uax3/P7Q0ZhC0QnsMBJeIv+FWDRSq9FVtr?=
 =?us-ascii?Q?Qu9T/HS1CMSaEK42At+E72ZtIT6dIHB8ZM3wwHAoT4vI+hDzS7nxGJ0+LoEU?=
 =?us-ascii?Q?zbre8r6hLFeSU8cmdtPvbPT2avOnOAVF9Bq466og09/WN0rW0UqXO35mN3sA?=
 =?us-ascii?Q?OK1PORalSbVYE5bwXx8zrZK3d40yPqgM+2s6WiliRXVBzHhAi3Cmo7kv56Kp?=
 =?us-ascii?Q?rim22VM19Np2PnCYSVroYQ9SiqVAcxnaX4Pi7w8je6tto2pYd4pB7UcxW0E9?=
 =?us-ascii?Q?Dqqim82Cz1pc9sNYXVPz2192IsFPsVAMDCpZ5Ys7Rh/REHrsWQNlyQPhAD4u?=
 =?us-ascii?Q?0Fpgem6CNbLCcaQOmUYcvvYf7B2Ha0q05ZvvHh2ygbs8bAyT93zPfv4F645i?=
 =?us-ascii?Q?PQjmigTlWA44P11txKXbgGSXQJHiHMq9oEK9RvPUQbNkKDSAy6ghbIwJKpv5?=
 =?us-ascii?Q?5QgQ5EUasqMNmnoKtKo+2mwRHhv9+1gxS4XnD22zLiAuvaZY3rbTyWVvtxGe?=
 =?us-ascii?Q?e+0KsYcjhEGWf+pMSFA41OXhuiZEDFwMq6DCKro8K57/LWJDcmTapvcnuJnq?=
 =?us-ascii?Q?MwKYKRFydocABW94pybdYvVqSMaIEJl1vic5HlahX7givPq5VaBRljoBSxwP?=
 =?us-ascii?Q?xGeiB5YaOJL4WafMpzlbP1xZ9srsNtP7tLKzJta7olNYcE+0I7+N/oSTnreZ?=
 =?us-ascii?Q?cL1Qu5ujSEmTO9XkJ3XkXIEK/X32ql53KALapRDNwJn6qySGSVBe4lOpU1nL?=
 =?us-ascii?Q?9Xcdkhd3XBUB60+q5tqfT4rsb4Yj+pUPo83YWLp4552E8GIbtZp86iAV/LEu?=
 =?us-ascii?Q?yYGmq53D0uRIzP0OurcVMO9LTVfV65nO1QtWub51aNmJu2hjM698AM6s2Uka?=
 =?us-ascii?Q?gvJ87LtA1cE8/XMgaMp6qPSTJDuwo47rhtW16jVbju5fag/iseZx0Nf/ysWt?=
 =?us-ascii?Q?w8Zw/amlOL0KXdq8jTOgQH5SCtjYgz+TGJAKApW6A0A5kfobbtmFfm5LHcy4?=
 =?us-ascii?Q?c1CTGLMDgQDrJTmyJ+wBHzG95G5yaAN0zNWJQidGB1x278Rgcl9EyfPUjDMO?=
 =?us-ascii?Q?dqJi/gzxGXpS3YzQDoBhDT3RCC6Jgdyxb60kcfB22cA5rBjqZHv1r+suuTeb?=
 =?us-ascii?Q?HI/zrF0j5tsPL3lsS++4t7mIEstssXPoxA9d3N8lorAbjx0ggDKmHfYDGPxc?=
 =?us-ascii?Q?p9DDCqPpxzk9abyWGjiI/2fLmotQME9ZetCmLU2DpOmJqsOQZKchmQtZ7BXQ?=
 =?us-ascii?Q?vqWzP8F0uNpHWPGeK6+8xyj8ABL4NwWrPxZSs0aQOSAcoy8F4l+A6BXcFgUg?=
 =?us-ascii?Q?Kdv/YV2l7qY6b0WYLWO6vx1E+fLidI0ZrjtoSjxqoVpsnNvMwQtWEMwfRw3d?=
 =?us-ascii?Q?CqrisYFVu42ocZxzyOz7WiWarDUNcXtWjKYNJ8g0ycomvJBCAfajB2X4hJX+?=
 =?us-ascii?Q?BiV2AxhA6F2y8aCScH6cPl6FWfyKuX7zFthOnGn62OEMQZWMRn2lPq1rDzN8?=
 =?us-ascii?Q?EaGFSiP2l5gJ45JzhcCAQz0YHtPmf4M=3D?=
X-Exchange-RoutingPolicyChecked: VR8ckJTNx9gReyW9oqz0MyUQoXFYN5lrSRgfpYe998hcgXlv5PCAgmG2JPVCIvtt16yW5kHWcletAGQrjTnIsbFFytMS4FA84B+edDWyP/6IQZucxqwP8l+3X2PVio1FamCs4UjgQ4Pvdj6TDoFnvZhSOP+ngN9FVCyaoCHccO3KfVtSfMH1UGDEfsnUJDueo9LSrXdbaSJKN592PDvEesfoVCKvNAEFZLqYzVky4H8owQneuZVGb8JGIZVIt0KnSiks1dHXh1GfeE5Y9o04xNxXjIuuibrVxeF4xxAtFLZSF52qbe85yjlkGLzj0cdQzyDvqaKfO1Ji1fFTYqCrww==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c467a4a-eb10-421f-46d9-08deb4c7b1dd
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 10:24:51.1421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jq3SWG9cqA2xfOv5jYS3v5K04ZUmVZ+eO37CdEOnRMm88D0ACZPKyBAtplWpzeKL5HIW5XkK2ArmKxMZxK5IUfQ1Q49VMnSxS+b9u/LSjRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7819
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
X-Rspamd-Queue-Id: 179A556AA21
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim,retire.work:url,gitlab.freedesktop.org:url];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

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
from reexecuting on a freshly initialized device. A check
is also added to intel_context_exit_engine() to safely skip the engine
PM put if the wakeref count is already zero, providing a safety net for
any remaining races.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16037
Fixes: dea397e818b1 ("drm/i915/gt: Flush retire.work timer object on unload")
Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c     | 5 +++++
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 3 +++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index b1b8695ba7c9..90fc755f551a 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -475,6 +475,11 @@ void intel_context_enter_engine(struct intel_context *ce)
 
 void intel_context_exit_engine(struct intel_context *ce)
 {
+	if (unlikely(atomic_read(&ce->engine->wakeref.count) <= 0)) {
+		intel_timeline_exit(ce->timeline);
+		return;
+	}
+
 	intel_timeline_exit(ce->timeline);
 	intel_engine_pm_put(ce->engine);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 93298820bee2..8f22438bc5d9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -230,6 +230,9 @@ void intel_gt_unpark_requests(struct intel_gt *gt)
 
 void intel_gt_fini_requests(struct intel_gt *gt)
 {
+	intel_gt_retire_requests(gt);
+	flush_delayed_work(&gt->requests.retire_work);
+
 	/* Wait until the work is marked as finished before unloading! */
 	cancel_delayed_work_sync(&gt->requests.retire_work);
 
-- 
2.53.0

