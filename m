Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aLgxOo5e12kCNAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:08:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED163C77DD
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B719210E763;
	Thu,  9 Apr 2026 08:08:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IaTA6JeZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D361210E75F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 08:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775722123; x=1807258123;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=UzDxowBa/GQ67opznkGOKhAmEJC512HwWxy2cG4Yygs=;
 b=IaTA6JeZrL9WV6bjj7xSNh4UosdCAxh1qhzg1TVX9ZSr56VtrtSjVNCF
 gz9wc8u6nLhbwKdZ8KhLhlMxzP1N3CDH1nBDUq+DYmLQZwD6RGbIj02Bi
 tuBa6VvODrEDHqceMks6yLttqL2aJcDSxguYgYAmVQv4cGwjH5ozsZ1RK
 stYsi+vYbUn76CHee49wi+vJdqXXRWXgbQ03bMt4dDCzV145k8jzXiLT0
 f5NPP1+OJ9WQQ1abIpIoLCBSamiYyjEk4h6V4R3yX1WCh08ljRfpSCzvj
 pqkINWyr0Eb2QdscUPa0xTSmNeVVv/Th0rElkosOhvl85mxcp1ZKJxWtc g==;
X-CSE-ConnectionGUID: OsnQu9lwTrm2Zv0e2Pb4mw==
X-CSE-MsgGUID: Fz8nH30GQcKCDVWRAIVYiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75892634"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="75892634"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:08:43 -0700
X-CSE-ConnectionGUID: 68I3P5G5RgW+jYkXF+rVZA==
X-CSE-MsgGUID: HWd7FyYKTLOHiGYbi2otGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="230369465"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:08:41 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:08:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 01:08:42 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:08:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CDTfyU7eNWXbpEIMzPVUdT8wR5xbWGoZXs4QzhUCRTk/oa6keCVmC9RMyXBao1WZTPPXmSNeJ1A0NhGpUqBRCMMby/CyHU9uWs+8Ja92ugR9SPUwey3Nn2ooP4MhcEQOcmUQQXaa+TOZPRpQn7uJB1r8fbg1Rq0bu3B1Hjyz147viyAWSd6XcCKStMiS5lWRz+pSzMvT0tqkqlC2qLCal+VCxw3ws0RKu/TmpF1QgBzCAh6hRYz47Mym0spt8g4CWUJ8iKgmBFPzqlEZiGqN8XAshl66RhKFdwYMvMiwNB8n54QcXo19OGNzcPIWTLw+t5MXXsTrNEtPxhMsoQUGCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZYXLvIf4x9Reme33eVBvo8+mh/wYyLJiV3VLZKGP6Tw=;
 b=Sq6BrMnpYjL5W8YZWE7CPTxhRh4joNY+SpPiGscCNjCnYW1SZNYvnAwDz2AXdNlueo7yPo7J2hnc+dmjkpGwphHSgE9KhBviOslzM1ZnyRcnM3ikCrxtrxKGIdNr+k9B1LpwBMOkWvGKgi8CBU5wgmh23pyCzbveetWt6jhCLgD1c9838s5eGliV1rBT+XIzoz+YxwnQxnl/UC+EPXL7pWNiX+vYISQR2sq83MnuboNq+LFBQ1GdroPb7zumMhp5ZltZG59wV2sqUm9qdX3YQ5mZxfFUmYObnmRC5O+Z6OEkeTYvTKMCE66JcnNGiscfum1nXvuXZAncV6abvw3Kpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA0PR11MB7186.namprd11.prod.outlook.com (2603:10b6:208:442::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Thu, 9 Apr
 2026 08:08:37 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Thu, 9 Apr 2026
 08:08:37 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC v5 0/2] drm/i915/selftests: Use safe userspace memory for
 mappings
Date: Thu, 9 Apr 2026 08:08:23 +0000
Message-ID: <20260409080825.2191535-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA0PR11MB7186:EE_
X-MS-Office365-Filtering-Correlation-Id: 90f84231-1e4d-40d4-eb69-08de960f33cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: 1XR/pZLx3DNb5+dUpthjp1UPZffCHwlQ0qN11cWGtj8sJ/HbflmoJuLBL3Yba54sICl5bph36m/ikVNnTJ7UnC91/W5qhUBJMfyUQjxFWiPVT5A4zA9e9IYmcelpuHue+oxadJIPdPgf25aGUX9pQx0A0zK9Ox/8KErhvgqnwYOIbaNQYYRiYbqFtXrIrBKmka3DJTHyUzRu2BM02Zo1hjpU3ZQfuKbK+q81nCnXpwtbG2UqHZpDOFUBla2X2apIdE4c9cg4sEwm5AoxNXIig58gkKXDh3vLMPVchM7JzZ29V677HQFCQfKEUjEagPABaFMkKu1gsC056HjYu1H06wzrr0/G4n9AiIg2OXJDLjhDbvYB9zBEfZase2Ra19N+CfyiExoRoml98yI/i3aPW0QO6gorq3DPUrcUJ63NLypS+fv3+PCKqmSqhlVkwFwkPpuVRdITyz1c3J83ZzA+9OE1c+pDpjMEkZOx5AEa9rXxicY/0QGQ+UmIKoKH7KKoV/Ql1XcMHeO/z/YN2TFGmzoNa3xo260tE6Obq7ySJDcNJ+vkRuY3WfHNZdW7No75xW1w7h9vXFtWNfS0WrDvZ1aB6CCBn/YmP8SwKlaIHlxjWoaYWWj2IR78ef04+HGDWTnRv1TPd6te9uOcC683lo4Ad4wxZCnuHdpdOY/rgTCfIQ8qyifOIRNpLgzw3hr0nOHGEznLU/xlI6o6VvL7C7h3rC3g58/oaK1BzCvWMM0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ufyeHiTWdPQLdsey4IBZYa7zVxfKpsy64yalqN6VKXdQUTe7agCv3pJu24FM?=
 =?us-ascii?Q?V8aPJiAWcVIg2rVq9csAVdEc3un/wig/x99bY1Ms1dDmVseWnVzoWyAZxqDf?=
 =?us-ascii?Q?7Db+i/RTxXWKLp3wcU6Haas7iPwNDbE5+Q0cbaCedlAQPthML1lDgN0YahY5?=
 =?us-ascii?Q?ho3vHN1v1MP2O1F24ovqF8g/Xz9JsnWrjOspzTm3Uxolu4cexlMc+UCvX1QM?=
 =?us-ascii?Q?SXgk0E1f4NySiP0f91EwZ/4ZgXyBT50knG89oxia0RawCW6VJzVgLrGarLS6?=
 =?us-ascii?Q?KUL67Y7W6aOROr05Ns+yta//qszD/V2XOCHSUTw2cG6Y7xq12+XKO6Lj+nwn?=
 =?us-ascii?Q?AH+IJKq3E5ObaKl9be1/cDSgdexYDSLrTjCUnU2rU/+OYtF+xJ0xtwuZhD8r?=
 =?us-ascii?Q?T5Lb4nyM0YIkxdqB0LJW6A6VEA+6nr1JQ6gYKzwbA2ppYcXbebDpCJiXtqGS?=
 =?us-ascii?Q?ycBHLQ3NKMlmSDNrJubDvKWG2G/Z/FH0eiaztjsv3tv3YHihIakqHrnUKXx+?=
 =?us-ascii?Q?gEaLqens+bZHak9wqd3XpU+eIaJ8FitzGOa8+Lp0myMEaJ27lUQSQRAUv/Fp?=
 =?us-ascii?Q?vTsjFf3Aa7uB6cwH6w6W+SakUMW7sq75mswM5DdYNqcTiY7G00AnPWubQL8V?=
 =?us-ascii?Q?SN2vvShFHfQSSuiU2D+i8yc4Cc4rw4WskiK6nf+/V3QNSDRNhbr6N8vNbOpK?=
 =?us-ascii?Q?KMgvdwgtYW3d6c6LT31rxWSM4UueogdlUW9yumm0l8rs1Z0/wcCIp8RjMfAK?=
 =?us-ascii?Q?usz536wwNqL+2j0oMLgtnGHtIlVQ6tsMeTdNgTYkS4cWRn7KswK7WxB1B7m7?=
 =?us-ascii?Q?KESG10nPqAxqTrcnlhSpBc8cPMWFg7ktv4IVi/7CQf9D+TU5rfqapI7A6QMv?=
 =?us-ascii?Q?6Gxws/cM5ZNeN/spUwtBPaSdXIIQ2sI7LRW3Ms4T9jCw6hSytVMCBi/xJgAH?=
 =?us-ascii?Q?vW5gTnLdp45F5ENvq/8LaYCMbWzXmeHQWFyVpfT+XVj5kM9UKCmQWKlQ4SCW?=
 =?us-ascii?Q?9tTZZ2a2eObotmFEwzJYBl5c1qMB9gEA0JJm98HunZG8BgRMUdgNvEqa2RjC?=
 =?us-ascii?Q?30gorSZnnM83ZacGWD4730fBTw2Yk6PwLDNtBRTBhZyWMykxH6Tn6MPlD/N9?=
 =?us-ascii?Q?KHXtuMzaoTvdDe8405D3yyR0cvJ7YW69tJPOGESQ1e194gb/BtmUwevwaZwF?=
 =?us-ascii?Q?32yTc7mmb3Az5eP2iM5M3zvW619or2QLHd8nFCsQhYoBwGhuVFenIAeTpQUl?=
 =?us-ascii?Q?alWR6BfN7+vDg5F+gQxHR6YvJBZU+p3dayNXLHC5y9Lcj3MZuwX+lmX+H3B0?=
 =?us-ascii?Q?2l5SXgoQdhP1ysDsTVwViscg68O5UqpwEVUUiaEPq0b2OqZ6TejrtZ2x70st?=
 =?us-ascii?Q?OYaTxc36+u3Rn6zkskvh52TvZEgKOYpFrB+IzFaXMqFLKtbQ31rtos0Vi93v?=
 =?us-ascii?Q?X/Ufwqny2QaComtm2UISa4zj5PMhfKO0EOIe1R8mKqStadzvGgKEGv6JqytB?=
 =?us-ascii?Q?hY004aJP8Ah/kRkAklU3B76mnfassO2Dtm1UwXuUiOzEVbAX4LXUAdmwkSx6?=
 =?us-ascii?Q?JOUjfISPp0YJgn1AM3xX+e9J20sfGai2e4gR7Ufo1Gj9MoE3Eh41MabGyD1N?=
 =?us-ascii?Q?YP9LaGmh684WAv4CagwEb3ikGxEEEA8H6wSj2dLDRQY77LpmivE0kC1nLmGA?=
 =?us-ascii?Q?TU0jtA58rC7vRpi0AgKX3DLCUCQG5rypUgo2WS/JdxbmMcP2qBz7ZANDaJ/g?=
 =?us-ascii?Q?SeMbN7pL/gldESUCBZfbgwgNPKTnQ2I=3D?=
X-Exchange-RoutingPolicyChecked: Ym86dnVKMiHAJIhnjTsmNSrvsxfLGoWlwq8NkwfUwPLBeKi/KNDZcpIQUWI9deyVevcZ73SnQck/j/h96Sg5OO3WlIRzg/gPNE5QvYkcSm0WTN6XnROHyqhIWg5STJFsm9pa9TCUH4XE1ZZis1Czzz3iJGGeLz7pNKN8nDuQJVWJogYMCm8Iz6V5Y+ejHw/BJLvY92PbnQ6ozcyy0js+GUJdV+Wl1E+iXm7phWevT+1RLTxjK8QkYqx2UrQs2P8Enfs2ypqjoAyDuB87xVahUjfMfCAG75Jf95tBMUOI8rwCgHLmPIdb7oB7AkhWB2XWNU51ZYR2Z7JQEzP33UaWSQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 90f84231-1e4d-40d4-eb69-08de960f33cc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 08:08:37.4079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 60ztnkjiZsqmgA1544UlPiGxjAQWH1Oe33dcpOeBdxIBqWz+/dM+cVIoEMFGBZGNW0e7+VUxI9pMeHSwk5CnAblNE6WKbOf68zRqHa9ttCY=
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
X-Rspamd-Queue-Id: 4ED163C77DD
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

v4:
 * Rearrange the code in patches. (Janusz)

v5:
 * Move missing requirement warning to the test. (Janusz)

Krzysztof Karas (2):
  drm/i915/selftests: Prevent userspace mapping invalidation
  drm/i915/selftests: Run vma tests only if current->mm is present

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 16 +++----
 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 43 +++++++++++++++++++
 3 files changed, 52 insertions(+), 8 deletions(-)

-- 
2.34.1

