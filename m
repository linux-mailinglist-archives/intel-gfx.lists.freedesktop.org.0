Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMPpAJ5Y32n1RwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 11:21:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A94B04027EF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 11:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10C5210E6B0;
	Wed, 15 Apr 2026 09:21:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q6c5nmaJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A496F10E157
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 09:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776244890; x=1807780890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=rtXfgUw2O18PRX/VhTp+uxXaRDRtP4tn65RlGhau0nU=;
 b=Q6c5nmaJbYFuXhD8k6/kX7x9+WNl2u66AJUTVRYsAcbs+3qNHEvgQMH7
 jfW/IdtTjwZTC2wEEtCmvFr4Bsf8VsojzrgwD8D8O5A0JQwkkvsNbSAXC
 +VSFDxwZI1N235c7uWvFWy8UI0fD10SsaFWP3uN7p/YZ+oEetUH4zP5y1
 mE7I1FPXZFsXMadFtXudtaBoEAXz5NBgKQmXg0ZxcNglKqbsKmz1sD69Y
 NHiF8dzwZO3ZJUYPXfh6kp6pHDJzT/lTfFEcApBNC1xJwe/CgQOR0Dajf
 bK7JfAFmypdzRr7MsBCTYg3qRAg8h9DQIGlfA6a80/Qw32k4sL+2LFkZW Q==;
X-CSE-ConnectionGUID: dve/Qq1gSBGteid8HR3NFw==
X-CSE-MsgGUID: gzO8VJKsRgGoMi1Usilw2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77190580"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77190580"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 02:21:30 -0700
X-CSE-ConnectionGUID: nL4zqbSzQ368ZMcpbS0gmw==
X-CSE-MsgGUID: 7iMYmypHR+iU0kaId8fBmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227724082"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 02:21:29 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 02:21:29 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 02:21:29 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 02:21:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hyntwf9xGrdQ759HFim5C6yJfqqXznXuVVdlZTAVrPu87Z5/GXfznIBQJvj+uW/fzAlf4b7lTo9ZXWIg9Y7VuEQvn23j+yaAU/8ZdfjvdKoTBZZATXY0q3nzpHwUo/2yYrMHdALYNVZ7yEnB9VuuyRs/Li9HLjCuHM3NmeXYCu2E4BAlpCWAxE33hoNHvEExLtYrLgNTys5ZxGsKdp/JVCJi0PCXucW2lRvOZWRrlCWMgLw63SzyobMLkgVz1adNAy/Qod0QCUpeGmVsNewMXIKxZbAM7imVs3UR3FGBPwPWvIL2pnJcJcuEwA+lxdCG6x6VdYBpWvX2EKcZS7XgcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EaqqQ+JuX16vwK3owWLUudn8re1pVEy4UT4SvWz1IVs=;
 b=efcJlm075hHoI3cCFdHIy+rjmCyrfC4EagheVCqIEO++RUaaRoEOYL4QjcB7Hj7+oEE8dcpUklSgV8Pc6FHQq3tad1pi4pJ+cuj1qbDB2rLL6kD4dzaStxfIUcO6PhWzy/JCDzWIhMAixk7n6e8tunpD0rGkFDozmciB1b6hncKHgoJ8DQE5Kdv9zqBCCtYeCinKG6oftsLVi+gOSfG9WO47t89YhF+GK1WL1L9jh0boRx7gcsoQG3m2IB4z45frvUUVKA4Hlsre/snX0AFsJVufUmwmfAUPCaRCmxH+8Cenws+40bZBJsvtwCpOPg7pPM/djWcEWTp0g8pneGoVvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB8036.namprd11.prod.outlook.com (2603:10b6:510:248::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Wed, 15 Apr
 2026 09:21:25 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 09:21:25 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v6 2/2] drm/i915/selftests: Run vma tests only if current->mm
 is present
Date: Wed, 15 Apr 2026 09:21:11 +0000
Message-ID: <20260415092111.2767839-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415092111.2767839-1-krzysztof.karas@intel.com>
References: <20260415092111.2767839-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0007.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::11) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB8036:EE_
X-MS-Office365-Filtering-Correlation-Id: 95c7844a-063f-4754-0533-08de9ad05e19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: royHxhZrImV6Ayik/EPG42NJC80R4BQVFLQuf7uuJ2pS7onq+v8OIYzkaaBn4CILP6NtCbBd6TS1EeMxn9ScF9w+iw0TZKwxl/Uc1hiaYHc38YTEBc+TNRHWTrs/2v23tEQsX5iFiXxrL3kl6v2d4qMcuuuB5jsZxhZL6rMgPrUmYZqoxKZlgsJJJPr5Xk7Jo1foY9hZAuz7vtvkqzALBjT6WqATSuuSna3Wcj2LDd+pmaTq6zmsFTMvJ11CaY6e5cHIU9jUxVlLQkY3d4KvJC+ugG+5V7g3zwCeYu+VmBUyJbedRxiZ8Sg/xvoTmoMqJpXIhkdTAB9jkayz/tbt6qVH3MTuuJ67imqmvVfrKjyQ9Z/AJ/kblDmBOIpMgxpxN4ayvnr2N7+ezaUqERT3TdIDJL9YkZiPK36XdBkiUdWtaKVDr1NrQqJ7T8fMy3tJ8ok/9yLXpypDqzRIbQ//P1CUl/gKOHwmpFUFXep+obRk7Zcer9M2ZuOVJRRmR+t3Ql6+aq57JamXXIVEUVkFDixngj571YuA7xGtPj9xq25PcFWzZjG6e0myO3g+YQmvYjkLCJItEPUO/KnWJ123u+/LUcTDmP6FzVmfjmv5Fcozf2n6AKWzuqCZXa4A/Dqid8snlwkvo+Ec/sDI2kaNq+sQdDCMaM/agyhINf4Rury5Dn4bm9TGuLxW+7FnHmeNjhRxxTYUoCvCPDiZ8Q3IZ5tasCZmKJjDnffjhyKIPHY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5dCS3WwBX69BeWtBnD0KWWZdONXbH+yvox7pP9KAILqcEXUPPaKBpQCrRQSB?=
 =?us-ascii?Q?ghnsXvojVcvl94RycHBJNn9Uxbft5cvSQ/bLcRo3Kt2OD7lKF9VwBzgcfb7+?=
 =?us-ascii?Q?B6cwe1XnuKxzqIenyEW6Gl+fZLFkeqwnAUhIVl6lW4bCn2FyjX7MTd7Aypg4?=
 =?us-ascii?Q?2xlzRSC/BPRMy1yB6neSJYZtnbWwEAdbZ+EVRwK7jrxpVZgKLCy1StA2Z+LS?=
 =?us-ascii?Q?HaGpQ9RA+g/R71Ah+MHuIFNDIiODrVOYwbUpdyIytOWrJc0ZslAhiV6hqhia?=
 =?us-ascii?Q?tXbMWW7nxj5i7KHap8W8vCG34T2jIgTLHbxXs4cmi0ICdmPWEZLYFnaq5YeZ?=
 =?us-ascii?Q?gBYSovKjz+pvREEWFcn21x6P2WbJtlHfy+bTdJtS2GaVVPVNUBjOwJKIgkTn?=
 =?us-ascii?Q?caOpelEmehOzS5ifVN2bhmxgJPAbXk9p01NH4dnBLG46NFQ6KbrcKqqk+PD1?=
 =?us-ascii?Q?mEyDVorFj2rgWjMLyqW9KkqU/MWOJUZysBpwrKotEPVK3stqsiftjZjkcQjL?=
 =?us-ascii?Q?dAARi99WHkhpaphVbXF5g8yMd+6NZCA6lNFTwtjfIYyggn2u7UefYvWSHNve?=
 =?us-ascii?Q?zolN9O/x1MfuRnfB/XCnHWrkN3AvuGNEOKd65NM13Q2dJZz1DqR3HIagKp6P?=
 =?us-ascii?Q?0s8jMNnVpuH5BvLCtxTO55/aA7Zm9ylkAxBcIiTVoCAPpbf10h4xU7j9y4To?=
 =?us-ascii?Q?CJjU6pT/jLLI0tCqjjwPM2Jkp/4LjbwjBs94MwxhQtzDMfxlujn4tTxvvMn4?=
 =?us-ascii?Q?XpdNcwmyXQ4E5KET/sY7D2NPx2iMsE5a41KJ+rrTQIXoXDCkMY/yByQNir7j?=
 =?us-ascii?Q?UeS6xobRMp05Z9E7LrdergbMAGG4QKpcZuP805z1FVZm3MiISJqn5w5ZqVVF?=
 =?us-ascii?Q?eDV7qZQWAA/vNSQnK5bsb42HOj3LUlVp60Rk0Vi3Mw3njZdWb0ZnluYAD0dP?=
 =?us-ascii?Q?uf6vBphlCbIECM5RVIVYiXCFCZOwx7F603AAjruVUksrNKNFtATcbBKXhNiF?=
 =?us-ascii?Q?u5pr5hmUF0AEAexAbndHftK9ROlMynObCfyfQhxbaj2AQv5pkwpKg0Czf8uk?=
 =?us-ascii?Q?MF6qZpm5u8aNqisx5LeTub8MQIlBuWG3Y068B+NetSeX9LhiRw8IRplvNkDS?=
 =?us-ascii?Q?6hltsRFdBqcKwUXp1FDMT30dQ1W8zyadWbtAehPrquuOFuJPX2TDP6b5jRZZ?=
 =?us-ascii?Q?mbiNh7s5Xe1q1Xp8Gx+v2SHPf+9vbu1TbAqG7qgmJjHY3f7L5COuN8Om2kx+?=
 =?us-ascii?Q?Jt8fXo7XiJR2NX6Zp21v7iEO3uklLLbzraTBoqK5auZdWkFrV7DDfJwYlan6?=
 =?us-ascii?Q?tWzBfUfT/bLZ0G+SWI+sKD+syc1DCAaF/U/J7pTAD5NPTPx0IkL8umDRDo3E?=
 =?us-ascii?Q?deo3NtIQBS1Fbljyu61tgFgJ9YSlLNKUvDlFDt+gmEYZLp9+eV0jCPINUh3W?=
 =?us-ascii?Q?nUiyse6/mZEtHSLShN4R4TC4i2/RZc2+SKFREkQ/G+1lY6LmKO3qSczxnoGc?=
 =?us-ascii?Q?8RbhJ0d8CVxxndONnSrwJDM1Yi9sspdq7gJSsKhx2WTu4WLOzwxql4gu8PCX?=
 =?us-ascii?Q?MCqFYD7dDFXsm/ati7QlGyGot+yFMFHKqepMlKruQgJOxRhEbLHCFZVFDkBx?=
 =?us-ascii?Q?a3gBz54pOlS6WvVaP2CXhjSwhiTE+b2Slltxm71on4Tr8BHjCH/I5zGMtYvU?=
 =?us-ascii?Q?nkPz45wOXMBDkNGESHU4criHxEXD03DG3KPLRjFRmLyzzHaJifQiir2Coqgd?=
 =?us-ascii?Q?yJ3snfAk26O3xcbnCXGFY++x5ndScdc=3D?=
X-Exchange-RoutingPolicyChecked: qnZtndy5BkdefLK1jxV+Q1HGkIIkNElw+I45JngxWuEVrl0ryy3oNOx4FpcFcFpWgB+9KvfqsY31/C6k/bRrWDr22DQ2AxnvyrceUQ2BeHi9iZ9XgU+tMiUQEQ6TV+lrPuM+teTl6pjKXk1eR1Ll5AAG8d7b9dakkTg/GFmlYkkKSAEiLGrG9NI039mcCIVeeiCTMHf93xLlFmNeFO98PgVdR6Se50LNJDlq6L4HIcHltz7aPJ/5unDX+qvIIJjmYVT1KGEPcDKISvPYM1Z3Nwv2s/S8POt/vaBBrbhRVBc/UF2x0fFd4MlHkkOwpg9/EBQBGJk9Kpd15DMmEd9P/A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 95c7844a-063f-4754-0533-08de9ad05e19
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 09:21:25.7477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xp1NbYrqJzWWq4Ym3uXnrtyHEgx4YMzQ63VBrDW5ndI0FbUgYzZ6oEDxAzOcdj36rOl9H0B4M50wDUU232fTdGY/K/PfN4KB9lFAufRqquc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8036
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A94B04027EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This set of tests require userspace memory to map objects,
so run them only if that memory is available.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v5 (Janusz):
 * Add warning when current->mm is missing.

v6 (Andi):
 * Shorten the warning upon no current->mm.

 .../gpu/drm/i915/gem/selftests/i915_gem_mman.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9d454d0b46f2..b97e0d99d92c 100644
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
+		pr_warn("No current->mm.\n");
 
 	return ret;
 }
-- 
2.43.0

