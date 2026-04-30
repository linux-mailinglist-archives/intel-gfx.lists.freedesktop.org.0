Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EL54Dqw182kUygEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 12:57:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A779F4A11FF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 12:57:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2BE10E12E;
	Thu, 30 Apr 2026 10:57:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Osxsd0mY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9428C10E12E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2026 10:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777546665; x=1809082665;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=y+bA5hsiubpGWmFz+QGoWTe40dgqQ4Ddk6PM+Df5nm8=;
 b=Osxsd0mY8CdJNQdwO2gxk17msivVjwSlaeIowkoSj2VcKOKmWsdPNam+
 +no7u2eBzohBwikgbt2kUAxGqaxprRhu/eseAzrFzlE8IHx6iTAiPCxsp
 SXP8xzEgMvRrMlMPvPmMbfm33+PFWdKulCjU4TZVEjfJdNRlwFPdR7z2f
 kcgNi0WJwZsqJe0fg0A5xWhuQeZBHiFFwNkSJ6zA01jkjdy+eyruxnMNy
 gBMr3Xo793DT8SWJa+Asuq+s1nyuB7SeciODi7UzzaXNOTJn3aBXfOLQo
 65dn4OojO6gzWaEQSsOg0zmkcDmrDBd2DEUFfeu6iu0aSpkLXjxf2pXxh A==;
X-CSE-ConnectionGUID: 8ZI7xePSRhyVzI7vWR9JaA==
X-CSE-MsgGUID: bi9Nh7CDTLmczLD4NpnWRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="66025144"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="66025144"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 03:57:44 -0700
X-CSE-ConnectionGUID: Ri8Lhe3LQ2STA2/k8RLFnA==
X-CSE-MsgGUID: YCgCG9m0SgycB8ALV8bHRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="238868978"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 03:57:44 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 03:57:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 03:57:43 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.12) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 03:57:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PCfOCUszeoByB5EkIQSyReeV9Inl2KcObQfhRekyomnYizx+9su1TCdJJR6sBoN8KO8ZCJhIhfWMWh23HwdDgwrvbCXCc4PA/bt+0DFJShIExJ3DsXv9720d059yn5rdgsN0QaKeVv2H2VQaONZXM5O648poqdm0w91WBJwoQoX6ayORUAMzJ9gfKbrccV55/tbhS7K+mv6qqAd8T2prDeYmaKMXTqF1mUoZYGUwA4RTWHyeIreHobnymolejL0/aomHo6LYBNEiEbc1QfR0+PYceQkq6KGQIQaLLcTwEi2xqBr7NNSkP0aJd575+m1vLzUPJ4zeRJydPS3ApcP77A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tkkWYOBqYdgaPAlD8163e17K/oQlcK1HesgFkZMz4Nw=;
 b=XUG1HWze3pTqtjcJXD+9egTrKmq7UvYeR/ixJnRu+/lsoMoF2p7uWH2gxqOhHVSMqkwQ+BLG/ot5Umh5uRB5QZrM4KoeVVeBwJ/VoC2gIp75ExVGGrYRDGMHcqvD9/RLhD6cKlykuzFt9kPmyn7bbe3CgaVi06DwNTIouX/l3FvnvJ3CUPVo7D5Z7XHQoU192esfFlVZwC8/LS15PSF3u19O1SwvhxW7h4pK6wotlywb7anTtOs9bjxdtD+Aw9UZIzV1LI5u7MJvDPgCbkR6rtCvd6DrI+G4sWSQtBJ3StXyJExuTElb6rmnzotQVnht9b+AtPUZbbHf+qD8QOGTnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA0PR11MB7696.namprd11.prod.outlook.com (2603:10b6:208:403::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.21; Thu, 30 Apr
 2026 10:57:41 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9870.013; Thu, 30 Apr 2026
 10:57:41 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v8 2/2] drm/i915/selftests: Run vma tests only if current->mm
 is present
Date: Thu, 30 Apr 2026 10:57:24 +0000
Message-ID: <20260430105724.1590552-3-krzysztof.karas@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 4aa508b2-1098-4081-7e2b-08dea6a74ca4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: vU1bySh5kgvhCjdQ6woGuaZ+UOyR4IJzqvJoFCcZKMOCJyWu/OHkMPoyRw6x2sxQISus+/UrcdjHMmAaQ4PxGvq9ptrEYjkPPkONY0RJpFiaP8CYWhxBR145q/HuP4XPzGvxvP95NZxC+jlmzCOA9nHYZonqHt5k1AT+udQGP6pPjvPt7dGH5cO/n0/8o+SYq4ExSrUkHlspiFppUqMPTVrHbIiyOdeyBMEgHoeoahPYJWWyndGB9wDpmOu7/wgjzGv2KZfoinI7tY6q9TjC8j2LJW4B2Kq49SokDaOKCDUZs3HKto/kG+KigqCzUiQaePHvoA8pRI8CtlC0dc76/ZBU2mfUqrt0HOINFRxt12+9qBNShvVLzNb8EMIysBi38aZRY8YOu5rdPmam/KkO/l9YGGVRB2bw4CkhYleuqaGASJHCf/X9Y05cdpOpoRCOwRCaMnIklpGFbD8/mzMJmY7g5Sp6cA3nmgqgLPU024HxXlQk22NC+8rtTdeJozXk+laMOYZS2k6X3QCWYX0rsAqz6TIAogCA5R2ohDTwK88g18iPoelJu33dPD1JQapgb6S0xHPtWWU6Bn6/mjqOwO4EA+DsZ4HH+tacsTDlIX/fTaditN2nUd7hiwz3A7tbN3u0N1XHSjJzjei8sajBj7y3tJKJ6YNtbXsaVJ2602YybOdQidR4S/LURlIwEJmvzQmCcZpZrDWVYJaRGPH4n9JDtSJpk6LrEFKJvGQfTdY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gjv7B1OkoacqQcc/BXz9+gq7uDDalcKDzrzRuojqoE+Df92tlV9tILiABVZl?=
 =?us-ascii?Q?dv8oCNve4EVvQq2U7k8A5KbiqIp1OJCh96ia3zylZUEd65u9oM9luljuDeNW?=
 =?us-ascii?Q?h3OpInip41ej96ML5WR7bAGSrW6dNu16Os7YefyELA+K6jVKzMU8KAzza1Vg?=
 =?us-ascii?Q?jaX4UP+TnuVZyiN/2KZkUXaZ+S97zulwGn0JHVzaWIVZl1JGwE2gUZtKdpap?=
 =?us-ascii?Q?O/ouJA6gouM5IMw4R2LF9U8lf6p50k22/YnnumJqOgtUC0yLqRX20prT7RBA?=
 =?us-ascii?Q?Tnhi6mX+ykUW/TDZmiXyvHuwue5pSw/T2xJhbS7ECeDKqc2314gqHQwfyJ64?=
 =?us-ascii?Q?JnLQbCOZucHFOGcIecHo7RoqKK6A4C4ys5kyKsf/R2cFTj04GTVewF51fypO?=
 =?us-ascii?Q?ZHM4Dqz1GJR32QR5uR6hKTXKugxZyWC0tSkV3vIFcA+NYRwHyhCbH+plYvhL?=
 =?us-ascii?Q?gmBxypv5LtyjCXMs22kA8gm+PfLoZ4y5a3jTVrtFw7A28nYgQ0rJsckt9qAW?=
 =?us-ascii?Q?IcyoMpnKvPCkgvNF/30Yc1IU7kigsC6F2LP176eXIVs82VWFkigY8z1k8A7g?=
 =?us-ascii?Q?UUTHoCZDFiE48DVLzuj78w4+5Vek3xyA4uTDFwUHYxDIFVPfL1JY8ONeq0q4?=
 =?us-ascii?Q?fhbT67Q69NDyB1y+87NI8bH5ADfOUVD9IXRP2DG4eg57BCJoJt8R1D57lbrD?=
 =?us-ascii?Q?teg0DS4w5Cxxs/Nwl8tRrqHJVqW2SnxGVa1dCFEYkGA3P4Oitq9Mc3uLLBYx?=
 =?us-ascii?Q?Gf697OhoHy1ogil8LW78FmgcuB+ddPrPg7SHldm+XcUACFhmKIpwkxKdBRVO?=
 =?us-ascii?Q?J3JsasHb5llNzdT5zc1YUxlTP1tvW7EgByWNa/WyrFOwUg4U6OvFWjTbsjEx?=
 =?us-ascii?Q?xnATWzpxVekHyIBiIAEszhSIon51xMfRt1GWXqg74fuRmrr0jZ0KoDFKa5SN?=
 =?us-ascii?Q?dXCREmrKPuomt/kBWwlzEKxr4H2p/SSOXPmdBwNGXwNJExvqw8KvnKhAd+Ox?=
 =?us-ascii?Q?jxxY6461gmC5kBbVW7e1jhnPRSNURuZgFdG60XmDDobJSHtxQnfGR/lXggs7?=
 =?us-ascii?Q?AebbL9cAA+MwfsYR5ryim2TGTICzvPAPBlPdx6gfP3GiXQchJ4LKm8QQRxzp?=
 =?us-ascii?Q?652poycH18lmVl80SNs1ROpVtLnSyY6cLC+wnX/1Wz2XbyD8RH3qa3pJDkqS?=
 =?us-ascii?Q?4k+UgNS4cSW71ZlM2eUMmw4Er0rPrGglpW6lTbb1UQsoPvyxzwYnkPUg7jF3?=
 =?us-ascii?Q?rV5Cc8SUx4ooE+hcu61Zb4fo95c8T9zDEKKQXLqNu1jyOKAazyLnQHlnssgL?=
 =?us-ascii?Q?3wKMdJDvYNGHmtHUDioW/t2PeVcL5gC61R6mJNU6O6r7D26ZGPyWbHIgmcD9?=
 =?us-ascii?Q?jZSxT1LdB3oKJOO62DDWB5s5IXHTPYbDzPy4R1fUOL20Yp+LhADdIEw2Fj0m?=
 =?us-ascii?Q?38oGYcXErCFV6jk2FHHmCnhFp9JZeaKHqWoJLqAx+dUbyG4eeNBc/lvrzRog?=
 =?us-ascii?Q?dFIyvfxRZWWiKDvuQRwgy7II2ntUe40enxtv6BqyE86HwVtxfQVTjvcOEG5z?=
 =?us-ascii?Q?AAem9qWHScCcxiSHzNoXFjHK/LxvgQgQy/2grZZ11WRjj2mOCTWZ0Cj6pcJ0?=
 =?us-ascii?Q?o3nr9mFTSW57qldfgUStRaF4P1e4POCIXIIDJwSLzAtzhHE7Y+6I22Qy6d6G?=
 =?us-ascii?Q?RpDJzovhkxlah65KsdLKHM4n9HxTKSjc+cmSFV0h1v3Kqgt3DNyWRjOm+ufa?=
 =?us-ascii?Q?neB+QgHGZ1x+QoPFOJR2LohjZHf1bw0=3D?=
X-Exchange-RoutingPolicyChecked: jd9/wHEoCKrsDH+dibaat4qg9gqKE0aE3cvtCLU3s49XsYjMAWeGLGvA4N4oyercI0CCvbQcdW5OoMhZHEK9VKvOQbp0wHs9nR7tIHuxDC0wH4g4HycV7Tao20Z/i/Ru+IzgpotB4OPTbu9XSJ/nVZSHN+sdjIKehSLsO+ca8f0CgE7O1vjNiANP8HvG795Of+DCYkXEIDykDT1/0ovZzIlXEiyuksRhRLvVRZZGExlWmSzZFVqtdLbFdVPFBKziR0u18FDy2oQZHe+j/geBDdzv3sAwzgcvTtS4taG2Dwq1QlpK4C/xGujlKqJZtH7vyBgMApXjKEmLa54P8jOtLw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4aa508b2-1098-4081-7e2b-08dea6a74ca4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 10:57:41.0165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7YrkIFP439rn/+VvdFvouuHfSbSg30rSGWzO/xeGTUQLhgzrbEzZdu+6C14BzKiNMPiu6F4HtGYvB2JwHcVbAwr+iQl23+X6MCE8EB+nss8=
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
X-Rspamd-Queue-Id: A779F4A11FF
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

This set of tests require userspace memory to map objects, so
run them only if this that memory is available.

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 .../gpu/drm/i915/gem/selftests/i915_gem_mman.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9d454d0b46f2..d01acfb7d93d 100644
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
+		pr_warn("No current->mm to safely borrow userspace memory from. Skipping VMA tests.\n");
 
 	return ret;
 }
-- 
2.34.1

