Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNn1AJxY32n1RwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 11:21:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FCE4027E1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 11:21:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9FC810E157;
	Wed, 15 Apr 2026 09:21:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ObSiGWS/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0154310E157
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 09:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776244890; x=1807780890;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=ZqfIz1lsI/ZgpEKoGqEy1s73NZam7fGKtACZOFvdHOw=;
 b=ObSiGWS/ZDeKsvv4WG+d3H/yed+3ufcvaQfQdXiMJjCZsShZytW4ZpOq
 WsavZ2dDxtsvfKOdmY3RcJDipeSp6PuR3WjOW4lIo3LBY3tAfv60nA5tP
 PJGVhtKfCDM1+1rkJWh8lBMHRcTg31s1qbxINcL1bFGgjJ4WFotu3byUD
 DdhujWWkz+VJe835TWsZDgi8GLlYaU4AE4bFdcQ6nxHKBMf3lz5UR4F62
 Yx2BG71bTvSplOD8DpQFnsg1EB4mBGofy6O/Hk0vb02Hm66/7ZsgneS8i
 FGGWfWp+qEVDoGOCJQtpS4ci4+2OrWwTzaBrl/T8XMNpVUCGQIsmTmOCU Q==;
X-CSE-ConnectionGUID: 57rD9lw1Qz+rzUp6WyNEpw==
X-CSE-MsgGUID: HZjhq2LhTNO0ftSa77S19g==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="77190576"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77190576"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 02:21:29 -0700
X-CSE-ConnectionGUID: V+V9lBpGTHqpTpF9q4quYg==
X-CSE-MsgGUID: 7z+hcPoURvmqp6XexILKxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227724080"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 02:21:28 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 02:21:28 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 02:21:28 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 02:21:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SwxeFTqEslmPImGRb7psQvaFVc98sEpy5F7qETyB+OJa2yEm95pWAhcpHoUHVgxoWf3AWQBO1QjyfJju93Xf5yIIpKFdvw9V50pj5Za9nMcMmUva9Wi0+1MXgo/nQpi01XExe7ufHAAe0rLPjyARDZD5kqy94tbaeOWPWBf2xCUQY943yXsKjUCw7JNx/thKNvGF0r+ahXDs26uPa7wLYJSSXPKQHuvxgORBrCxmYxyjF4JpF3UhgBCjLWZxg7O1j9hxQMM5zYB+p2x20wHCYYUeRO/vJpYw6w3pDcCww8JX6jma4PLOdUWHoZKNmHFp8YNZdLiyC/NIeuvFkhv1Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hfSscKhJ3EKzEON4qQYui8BHS37VJKMIaw+HcRNRMKQ=;
 b=cVz3PHSo/KfOwizaw7cx9bqkh6bHyQt+1jvIxDQlaB6YwdoIohp70UQrbbCRxq5+b7pKGDaQ0PWeJTIaVlU8IaTd2HoTsPZkEmwCiEaURHtFIwxIqYDaV5zvFvA9//JfPRqJnz92sIwKUBC+l0GmYGa649rhKXwCR6bf4r9INbn2bwl9+9XVJxbT1R7hi9bhIPj07SJPxAnAZQYgWGGcoaBa780q1cWN4SepEjgfRoCAXlHMN10Tz+KaRHrdFkKOKTbp1wxpJ7ZF/vNiOHhqhFnABYPvMQn/Ys1VA7TnGDDMUsZPvdwK4NJ+qUqYgUD8gPmZgRttycu/Vxy6CwUK/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB8036.namprd11.prod.outlook.com (2603:10b6:510:248::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Wed, 15 Apr
 2026 09:21:20 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 09:21:20 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v6 0/2] drm/i915/selftests: Use safe userspace memory for
 mappings
Date: Wed, 15 Apr 2026 09:21:09 +0000
Message-ID: <20260415092111.2767839-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0007.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::11) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB8036:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a037bd8-ea36-42d1-b06c-08de9ad05afb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 7L7fA+euQUvi9iXdXtU4qFB01L5KbiIYBCmrjm7o1XlmgADM6JaSqE6S8e0hxqMUIJNlVYVQvPJfbGSydbaTmX0aOcvGUyyTBHAzRjg1OL6/b74hp+fqppYyB81mooFUEVWgKIAqBiVMjpe6b7goQQWMP787TkIloRAh+RfW1itJxjeUq+n6wbqLjhZcPK7B+YaK6rCpsoamgzGeia7TUvgd6pEY+AM5IiJP9aRIAYwgpmDYXTt8jHJ00e6Xf80NN5CJP8se/4FY5cfqslmR3xYQbepKjxPXK5GfOzwOVcZEQ1Nm5pOviqyhzoddz/UeIsvE6fLq7cNgea/46csFoukbMUvkdYFHgA7n5TGZu3F4Uf21Drw1vGsRUNkwhSABXVziJbQczjYZiMolOQkz0k7NAY+757oBnHPZJmWr1f7sIYkOiEwVrz1ONcBR3exEg0cQJ84AiwZ8dbuYhTY5Bbwgh1JZul8lZb8B9Jfi/ElyClDJCoayo9PH55KfAdRW8V/oNSakApTwq+2KGIS+hsx3LaiqpAMe06tReUhRlsLP5smSXw1qWvOI3soJYQlzRzN6CkZFuL6L2mZpV++ulLNa5nTv7yS9twM/UGaNbdH9kWrjw+V5vyh4ar93HnVKgQeVY86rcomB71vzUbukKL4BgsvTLAWuRU02M/e16FajdAlioyB2Rt/eCxiuYfy61QBcXwFHkXO2VKpLizUr0ML4fGK7YPUvNvH2FLRFvT8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(56012099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?McXvwFZvMQuczr+Jm5uMBVH0ckY4vQbjTYR75+5CpRVFwMMPqT+aH4fRhrA3?=
 =?us-ascii?Q?0SUItanzWbq9f3B/6QvlBOydZHOI4eTGrcVX4HHwHCC+LdS4XBVQ+u3ng/DW?=
 =?us-ascii?Q?Z5fz0xthyD3Ta45pnF40CSiMuEj1LtMab9qu/1YJOk6AO6qc+Pbt9yOj0D3g?=
 =?us-ascii?Q?uyjPs2BOimQbEuLqGwg8XhyFd84fJZPHFhFcAzMlD3iELrizEBiDjbNFj6k9?=
 =?us-ascii?Q?vDZ9lMkghjnyoZmWH4SE4WEXJcjCRas2Sy2m0VNAK0udVRZCK8Y5RVqTfl27?=
 =?us-ascii?Q?iGTw3HCNjsDQN9Q5D2mCahGFpSbItSHeBPc9/opvnd7l2kqDafDAXSzZZmhi?=
 =?us-ascii?Q?F2Ircc4hq7o4MBKrq6kfRDFt8DKum3MpAuUzThN29ddIQOFlIF7MARex7QP/?=
 =?us-ascii?Q?8GjKXRGPy5arCIilBOaNq0FdPtgzHcG3FPij+nJwMpgeRXicEkSgkdVzFAN+?=
 =?us-ascii?Q?bDRUVUXxGIbcP6fJhmMtbZ6OpIpphll0M+Xy5TV3uOss8/O++rduiYNlfrXX?=
 =?us-ascii?Q?svun58nOJRkYNt7kNYSGwTbayHmT6FaBh0YuF4TGeyQyrtNDH+1e2f1C7rJx?=
 =?us-ascii?Q?WP7wLGaLLetUcI5VmgO7PrW+ySNULSNJJPrPQI52EHYT21C3J0MuPTMQQSVQ?=
 =?us-ascii?Q?azqWGHOgl9mBIAepAh59SNXEaYQrEcWQ5RB/ZESnHHo41/msrWO48luPJFms?=
 =?us-ascii?Q?nqmJ7ZpX5h6D4bgy5yv3SJR/qexFHSi5+j9VcDC5s/Z4/A3rm48OWjssW81O?=
 =?us-ascii?Q?cjEGGdObgmfARFTQw3z/KWc42ei0bM2nv0QDTMkTpmDdS2FK+dGX1z2hfDQ8?=
 =?us-ascii?Q?05kiIziqnLNT5gemcz1tO+AMWgx65TIbhLlh6DzDu7Akx7a7AdYQhg0An0gF?=
 =?us-ascii?Q?h479lNRmocfHfaM31WlyJabMkIv2BmmrWoA2bh3Xn5wz+cTesKA4sgICIVDG?=
 =?us-ascii?Q?aEggLW0u3BBTTj98BqGul2JDPalxaSXeJXrNqWU8qGZyr6sbRnpH4RZcnNQq?=
 =?us-ascii?Q?16vHPtarDZdNQ2KF8fPV8WDdknu4crb5Qm0AWXqlkp0JQglqyuXjeoUzq0uo?=
 =?us-ascii?Q?eltlijveXgw4KGVW1LPhQNAI2cM7Exlh/9HipdO9h13q19zg/uSrkThhce5N?=
 =?us-ascii?Q?RTAafNJNu00YIkngPZcIJFeMf5DqDZqWixFK058GVq4cTE8vWvhEJhDWFboU?=
 =?us-ascii?Q?EFmvS/mIQuv+ENBkBh1YiP4KsEXbC2B1sH/WnFwXiJKCkPXQ//KshIiVRc+B?=
 =?us-ascii?Q?Z4tCGgrBwcw2li0ekVgAX+5rgz6voRZ8GYgANmfjAGlyfTKKUTWJfIfE8oXo?=
 =?us-ascii?Q?hettZfIxmeJfGU2tvE9JZ1pmCbNe7UR63aWWNBGlahiaD7ARzy80cF3IiiBB?=
 =?us-ascii?Q?aw9dVWAhbBCdoCUJZ9LwCTzCtaAle2c7xL4mGyUHRMAjxfOAe1CpMQzzKoqG?=
 =?us-ascii?Q?PCPPrLcvrcAhvUVlhRHrbnZ7KLzX3pzXBT4CZ6bG3JTjyBwEKk63fSOUgDGz?=
 =?us-ascii?Q?5QFuraWTEjwC1YQaUCZoFRuIAdg/OlmjXqhaFf+9GyZ6ih0CLOGb2XNLU3Sv?=
 =?us-ascii?Q?dhMs5Fc7cK9isdMB4sDNJkmnzPHwGd5ceaYsmiVTT3Bfxue5foktrcjx2uCQ?=
 =?us-ascii?Q?NQz7Pxu2sDjiEixHCf0J6QLIcu/bVy0skjVdTT4eOgCUUeXSV//4EsiTzch4?=
 =?us-ascii?Q?vMUK3lql0A8nuHppQfjE6q+Un/aJV7T6bL0C2Njhs8y+IUq8sdMNmuWPTO3G?=
 =?us-ascii?Q?cnjYRAIMDKVOUBJ58enL1akIaeC9SOs=3D?=
X-Exchange-RoutingPolicyChecked: qxI/B7PoC8l36URLSEyKPMYg0/xqBtawQLR1jJdCAbhkNg1kSMlfD7vFhBMLs5G+CNwZas8Uwzh6yFZvMU2Ar6EqPC7fTBIcqmnuRzdCzr3T3Duz/I8gYSJQmzGXjb6owfmETLUV3GTqW58W9xRGfAtpHmEbWJt/zPBca1S4OG3jp8Surn13SVHn3Tt+zsS7gNGBt1c+fIVoSgvJUOJLtuUHtWFP41+DzbS3CkVwyumNalu/zyr0Q62LAc6sHkeomKN8yUGD+S6OSZKdXl+B3oyv6Zneqbdh6HdGjx+a2yNkEJQLkkyuuA7pr/0CTysjaAGkh0GfqV69Ef4bZCKh/A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a037bd8-ea36-42d1-b06c-08de9ad05afb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 09:21:20.7783 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B57nqOyVzoEA7eEg7B6faCdPzGBgD3+BUVG1XXJOdgTieDYE46E0Pmw2pGUBuT3rkrl+xEL78VdhUDfWg0eoRDbe53Ehe0jWcSspEp2A4wk=
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 60FCE4027E1
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

v6:
 * Move mm handling to new function (Andi).
 * Add checks for validity of user PID 

Krzysztof Karas (2):
  drm/i915/selftests: Prevent userspace mapping invalidation
  drm/i915/selftests: Run vma tests only if current->mm is present

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 16 +++---
 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 57 +++++++++++++++++++
 3 files changed, 66 insertions(+), 8 deletions(-)

-- 
2.43.0

