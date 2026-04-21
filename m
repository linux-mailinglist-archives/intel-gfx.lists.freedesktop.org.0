Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCKKFIQW52lQ3wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 08:17:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2649436D08
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 08:17:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32CC010E7E5;
	Tue, 21 Apr 2026 06:17:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UtK+zFxI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28DBD10E7D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 06:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776752257; x=1808288257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=U6Z77Mdua+6A7sDKP2EUvQszXY+mSxeip5jK/G96kYU=;
 b=UtK+zFxIzvPZ9mKmp1cu47M1E5LqMZuxxhm13pNmEBAAhKyvmXsDXyQ6
 prnyioVxHHEQt938u2KLoM9HA7JZp+hqmK2+yvpxt+Lr9foAXmuOnUANA
 gSyQwuqddGkhkzwnPvX2CSshsM4CkYORDMin59nn34ZmdLoKE533rgLC9
 MFHrBPmWAS7KLUGM4QgdigE461WuqOva/kEhO+QFadoHVIcQeBB+xvXWO
 e26OXn4kWLjwuuWsVkiPQCTcgMFnydKOpsgEJtJ1Pj4g/BI9Qj1+LLrF5
 n829t2WRd8T2IHYLd35ZhRovn4JhCmeM99GKtXUlS2WhKDmv4rXWuihTt A==;
X-CSE-ConnectionGUID: 4qxFSCMOQbGhV1DwSrfzbg==
X-CSE-MsgGUID: vNza1VBJQoaXqUDVfJwr7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="89148326"
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="89148326"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 23:17:37 -0700
X-CSE-ConnectionGUID: 39ckg3bMQ4KE+1nfybcMWw==
X-CSE-MsgGUID: CzsgEk7oQyWIeFC0ztXgPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="236929377"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 23:17:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 23:17:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 23:17:36 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 23:17:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f10dM9rL1XZA4UIMh9boblDbYzAeVAcKY6+ujc0i+/3hVtLu2cEtX8NzunHEnItQDNFUBzih1kfVFoivcJOWFL4ube5sUYSJjlgKy01585EcvVKd0bf8DQ4lU6b0pfPDRhlHQj6J8uz3JAm/G8Ed36prUUKkPkjzbzu+O1dgEW046LZK/ruVkN1F1Onggajne4sD4sSPIDjtBopC3SkC9TXQHX9VsMpXOCoOH23nNGihALIFN/6Q2pMXE80w2BPJ7lAp7uKdE0ol5CkZ3GQEkF6RSASpbZfCNAu2N4cqYYwG8M8UTpo8Gr5V9GhsCjmlPHoSiCtL9TSQxtpLwx7n8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CG+ogrvxtSdaEcKpLQiyNvXU7iBlolTFw8nfsmpHguI=;
 b=TaEYdW3DV5P8kfGjLq+Dm4eltUIjvp+cj1OF0br52lgBQryw2v2fd8c4xCHgEjADLg02cafHmjFTkoVUAj5XdTgYQb5z/MBOgCvgow+7Cr4lRc/Mr6VO1Zwz6azmcWlobrybI92dcK1lLNCn20iRvzjwR3t7hojXBhh7AF/w7BGlKYipqem6nUFMFyvbwp0O3F5gnVM40R//XqnkxLnJjWx7i0XW8KFALms62CJnwDyc+fjYqlxeRYj2WTxxz93DB2AYdHlL9gq1CsJTDDExF97Ms7KvY6aP78szBCxq5Fwlx+yxGZqSJKqHOS75l+dTi1JdX1ednI0KJvZLxXzcog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA2PR11MB4810.namprd11.prod.outlook.com (2603:10b6:806:116::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Tue, 21 Apr
 2026 06:17:30 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9846.014; Tue, 21 Apr 2026
 06:17:30 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v7 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Date: Tue, 21 Apr 2026 06:17:15 +0000
Message-ID: <20260421061716.3341529-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260421061716.3341529-1-krzysztof.karas@intel.com>
References: <20260421061716.3341529-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR06CA0095.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::24) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA2PR11MB4810:EE_
X-MS-Office365-Filtering-Correlation-Id: 518a9ad4-6cd2-400d-5640-08de9f6daa93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: lhf0hSzWdcGQfv9AvsoGoJU0rYjyc1s48rj2BRV8ZsNMCnHNf/IlV63iJPy9NAvZEysBU+M7vrWJVZI8MZaPoRiGDEcx/sCpgxmPhVxT76HM/3woGNYmEIBnG6WaaPQvL38y+OECCbDoEnUFocDaMMSIsXYnfIO2Gm9U/ycdLbdlBHapj1mNwDxmx9+fk0Zu85dDk7oO2GI3i4356X+bn4IoSG+p0hwZkdt0cQPjMwNDfk1B0UgR01LH8ClaOMrKqoU98pZN8OTM2s7S23z2r8oOdU50iwMqn4qSn7UGkGQbj2oaG/rRfjY4NVe3iXJ+gPZUsbfnFByu687Q7gvmPfTbpJoUnZyRg7qa1gYR8IYoorWzUqCYSEFGC7uAaZhe8Hb8geOK2n/PxM6/h1mPeSYcfYZrJ4nu1riSG+SzAk4Leiafq212o74NEUXuPi1tfkIxqrfTcmv0eUHeM7HX5XZgrnPyZit0tc3yzo7qcX+xYYhbbj4LXd/xNmIixembSGO6n43iEng3r4/6G5uLAW8ayHE7hJOLVkFQlnHB9tPzIopq8Zj8hNUJ3EJKKHhqu+k9c3awBxmU355vi6qyGqxkwbKJozGe6eJhkVPAuW1XEk4KsKW71jXbLoVgNQYJ84d6FsOb+qaDYH8fnZCz32gbd8ZvrvST7Vq453V2oBfUWTSp/zn6ExjYGOyaDUzm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dRk4tFbp/rh+qqVYRdlVQthtiTfKs3S4/fVmE6pFatc0/mXOWunRItu083Bm?=
 =?us-ascii?Q?qZksbnrSepc0AcURZc0ioqxbzWxs4N+LiWOwNaks93Pb4DcMM1EboAKjrd32?=
 =?us-ascii?Q?1mfIzwgQdxjkOFAvJ/M3QVMnNO8Pex4T5D4E+Wzlujj4PK2Ei2pITb9LCHIQ?=
 =?us-ascii?Q?4wwkYPEtwAWy2NJGGHk+ZQ33Toz96xOpWQzkj90PCnqgmVlbLBL2sApOO91E?=
 =?us-ascii?Q?F2HB1gZ420qN26mnH7I9FU7r2whYJ/Sk27vrcLU8dzXImqj2sijlp5GI/4XL?=
 =?us-ascii?Q?IUYMHLiT+wgdOi7znhbFxCxOemoMuCbf2UiDtvIaykb6Uu/u884VlbY/ycVY?=
 =?us-ascii?Q?UgUeHRCP1TmkjaDJXSpfCDMKwW2ujHUdbpWA5MRuSgQjhKY8umITYvQFFm3i?=
 =?us-ascii?Q?czD+/WQHDEJgrnPQtHNTCJMnQJz6kqekbfdP4FAje/+emyfNwu8tmqrYjYd6?=
 =?us-ascii?Q?98fACKxqitlZEI8ZXW1RjjtDYREklynA5eqMVdxpjwfIW3VS+JM3ARc+H8FW?=
 =?us-ascii?Q?r7AJOGDpSwLexnZ1WDXH5GxVeQudUbW8P8nF0hGdYJs4NlD9HTq3yCpTmsCf?=
 =?us-ascii?Q?3S2UBtp/I6msRbb2aPCXmRrUEkuZGT5Dr6XYM352yTe91IEdrawPbKJwwhHu?=
 =?us-ascii?Q?sUHIuEJNTi2ekro78e/flUwBuyx+SQp9Dp45Jl5GOjkzOcVTEi/jr2RjADwX?=
 =?us-ascii?Q?dWR8Pf8vr23ZbHHN5hdDk/SAX0iQqylNwgT7UnDigx3Em0L792O+PEGVf8Nx?=
 =?us-ascii?Q?d8iL1s6sm2TY0HAN2xi364oQ4r1/RyYhsR4CbYeqCet/r1/UVz2jHNaa8gmW?=
 =?us-ascii?Q?g4VXUDza2SRz25WHb7AZuRNkLQYg1dG6DdKVu4nzpdzxMLdGo0x9n/5vFyXI?=
 =?us-ascii?Q?r5vz9nV/e8NoIKII7SK3IA2xoporhBnmM7c3IoeMJOe0xhxWpduHyJ0vveVG?=
 =?us-ascii?Q?DQmnMiBTZmHavx/KK7cpxisnBMqVXfMNCwnwdqHIMYtosa0LQMiMTHDP9XfW?=
 =?us-ascii?Q?U1F8bpbI/VTGQa4dGF8d7SDJBs8QPV5mKN0pfpEr5ypFW4Aso8WoM55Lu2ib?=
 =?us-ascii?Q?XcubbAIVak2wmjPdfM+Wv+RkZvrn8OuZkK5/JncSFPCALTIX2ZGKlNCx0eLm?=
 =?us-ascii?Q?elfQNp95E9HwkfhwJV8wfvFUrva/3jt4xyq2b0eWQ7reCjePzxt+gdXp4/0Y?=
 =?us-ascii?Q?luxb1Z1N8z1fOvH6P7rHViZFVqF1hd3lgucH48U9EuSXPgxiDpGkF+VbVv7D?=
 =?us-ascii?Q?pPCBnIrP2Of2UfWmB+XEF9IrcXVryBlFn2S0HJoVn51dsCO4DSCtmwHLMsZa?=
 =?us-ascii?Q?kUVf52GhfLfEjrs3jzVsU16d0cArkUG8SmzbNrt0usZvLmQRF3nUPu86yLTM?=
 =?us-ascii?Q?imvUAq/Bz8jXIMtUyIvjdaxE2KTnm6ikL1FNL2/MLQDxir1wiFzENZeOH+0/?=
 =?us-ascii?Q?gQcdUG0FCqtgbWaLfxc5BsNc4KoUcC7l+y4YRVsalIW0ltuRVtz8oPanXszj?=
 =?us-ascii?Q?fil3/aiSn96RpukpDYJfIhFadGk60WIafdbiC4y/4wh1SozEYbuTq0UNPYIG?=
 =?us-ascii?Q?o2faz+jmT6eapyOJsQ++q2SuDwALacW0QBrLk3+0xIMj8ckEhqjn6pT0j4pz?=
 =?us-ascii?Q?5f1YQ3WOEExlM55+s13dsw8/qmm1MhMo+X66N6jVK0nnFNHNdTl072sktxol?=
 =?us-ascii?Q?gCv27u0L1Vba+yhHXkBBFmaeBOZjBeRL8adYwqZwsLFPf7nsdroaXIYrgUsc?=
 =?us-ascii?Q?oWUjSMSN8oleN9XGbPL03+ceio9uNkg=3D?=
X-Exchange-RoutingPolicyChecked: ijKwnJ00EkMI18lstLEK+3VZnc5Xju9YElH7bMbSlYZ4uumlrlXQf/IbaQ9wCgxt92WB0rsI5uK7oBBmwn7ekhoRfGp5t+Uk9CdZDLE0hRBJ3WsAuag6NoVe2ibFDozW6nPepO11eycsdAayNmeOvL1cM4zzIxuKFo25vyjHmM7Y0D9/DsuiL7czpVRRq8g3tDyBi4roC0Sv4P5eHzZ65wxPvqlWS1QwALlJi28CPySmRv+puRzgrzhEFEl2pC84djZyN5Of4IOnqi85aIRSV8cIVo/jrstXOuywBXNHCWJc4HuWXxmbz5K9vazdrtQ3tb8QptL+sjD26SRmBkG6rA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 518a9ad4-6cd2-400d-5640-08de9f6daa93
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 06:17:30.0677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UkAhjxeTbDNQC5vlFOv1nuwm5i8WOIzOg8BDpcm8MnSZZMN9+V0yHGiDtQYfA13iAV75TbDE+2JJZqVUnHVDNRktelvhwcLiOf8V8cLmHtc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4810
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.849];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B2649436D08
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
v5 (Janusz):
 * Remove missing PID warning.

v6:
 * Move mm handling to a separate function. (Andi)
 * Validate user provided PID. (Janusz)

v7 (Andi):
 * Add missing mm reference release on error path.

 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 62 ++++++++++++++++++-
 2 files changed, 62 insertions(+), 1 deletion(-)

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
index 8460f0a70d04..71f61328e14b 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -181,11 +181,48 @@ __wait_gsc_huc_load_completed(struct drm_i915_private *i915)
 		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
 }
 
+static struct mm_struct *
+get_mm(int u_pid_nr)
+{
+	struct pid *u_pid = find_get_pid(u_pid_nr);
+	struct task_struct *task;
+	struct mm_struct *mm;
+
+	if (!u_pid) {
+		pr_warn("Could not find PID: %d\n", u_pid_nr);
+		return NULL;
+	}
+
+	task = get_pid_task(u_pid, PIDTYPE_PID);
+	put_pid(u_pid);
+	if (!task) {
+		pr_warn("Could not find task for PID: %d\n", u_pid_nr);
+		return NULL;
+	}
+
+	if (task->flags & PF_KTHREAD) {
+		pr_warn("Task not in userspace: %d\n", u_pid_nr);
+		put_task_struct(task);
+		return NULL;
+	}
+
+	mm = get_task_mm(task);
+	put_task_struct(task);
+	if (!mm) {
+		pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
+		return NULL;
+	}
+
+	return mm;
+}
+
 static int __run_selftests(const char *name,
 			   struct selftest *st,
 			   unsigned int count,
 			   void *data)
 {
+	int u_pid_nr = i915_selftest.userspace_pid;
+	struct mm_struct *mm = NULL;
 	int err = 0;
 
 	while (!i915_selftest.random_seed)
@@ -201,14 +238,32 @@ static int __run_selftests(const char *name,
 	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
 		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
 
+	/**
+	 * If we are running in a kthread on a multi NUMA system and the user passed
+	 * a valid PID of a userspace task, then we may borrow its address space
+	 * to prepare a safe environment for the mmap selftests.
+	 */
+	if (!current->mm && u_pid_nr) {
+		mm = get_mm(u_pid_nr);
+		if (mm) {
+			kthread_use_mm(mm);
+			mmput_async(mm);
+			if (unlikely(!current->mm))
+				pr_warn("Could not set mm as current->mm\n");
+		}
+	}
+
 	/* Tests are listed in order in i915_*_selftests.h */
 	for (; count--; st++) {
 		if (!st->enabled)
 			continue;
 
 		cond_resched();
-		if (signal_pending(current))
+		if (signal_pending(current)) {
+			if (mm)
+				kthread_unuse_mm(mm);
 			return -EINTR;
+		}
 
 		pr_info(DRIVER_NAME ": Running %s\n", st->name);
 		if (data)
@@ -226,6 +281,9 @@ static int __run_selftests(const char *name,
 		 st->name, err))
 		err = -1;
 
+	if (mm)
+		kthread_unuse_mm(mm);
+
 	return err;
 }
 
@@ -507,6 +565,8 @@ void igt_hexdump(const void *buf, size_t len)
 module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400);
 module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
 module_param_named(st_filter, i915_selftest.filter, charp, 0400);
+module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, 0400);
+MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspace memory and require address space with controllable lifetime.");
 
 module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400);
 MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mock hardware (0:disabled [default], 1:run tests then load driver, -1:run tests then leave dummy module)");
-- 
2.43.0

