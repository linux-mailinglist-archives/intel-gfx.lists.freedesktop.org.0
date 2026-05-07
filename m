Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLxKBaCg/GksSAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 16:24:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C23F4EA1BE
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 16:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF50B10E2A5;
	Thu,  7 May 2026 14:24:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c8z+V3wb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C53FD10E2A5
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 14:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778163869; x=1809699869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=y+bA5hsiubpGWmFz+QGoWTe40dgqQ4Ddk6PM+Df5nm8=;
 b=c8z+V3wb3pprGPva2GDVEpOrVJii/nrtIu4IEgC9Fx9rgxx5OfaC45GY
 tF6PGHlfxyZ0pIWsi8zGhLbvXnbBxY3dFUSvw3muXOf5w0XwbqPEfVmeQ
 1ZcAQMKt7fbYQzRTVarTmyph5ol6a6AZHbH2tFofb+d1lIHYrSI+nANEC
 QM8nNYTOqv3IZTIgRmH+O9U4ZMMPbGfY+Vzo3lMOG0BNuqV9tRPyiZaDO
 XGInZgg6T7EQUcrCaJHONpddvnAqI2OhZthphHXtq99X/I3RNTOyQFtKE
 H51yZg1Xx+Sddc5Cng5Q+4ptZo4K3bfwma1shKvZa8ul6gsjyP5+vypcH Q==;
X-CSE-ConnectionGUID: 1fp6Fp4YTdiPvZWbjYxlwg==
X-CSE-MsgGUID: mW1IvwyxQ9+9Erjt6c1SVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="96683282"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="96683282"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 07:24:28 -0700
X-CSE-ConnectionGUID: PR+JEFtbTIytK2gCa+6Ohw==
X-CSE-MsgGUID: fZDKZRuWRreMPYfEyiOUEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="241478863"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 07:24:28 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 07:24:27 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 07:24:27 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 07:24:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AsmzJu4CH2pVchfFF8TJw1vABZ0GWW5zItMajaVnU51WeJUUisl5V9pisrpbwXHCKdR9nTi2g7uTZ2y8zUDnlnXOhlaPCRAh1L4gULIfKF6HF0sApuDaMcDRuYCC4//UXHzX5yiNoSfgvLh17J2HOZ9iDkNfejSBfxoZQQ+Zoiw1J43+pT4UYFSYP66OL60R/NvdFZ2BJg1FAL0qccYoTA9mVAUY6d+hkblT0d9XpInqmMYBHeT8ycN+Q8QjTuugmkN8+B8QpxFLz1kzDpZ9NwhWf0/hosHy1zFQ/v4pY8F1UF+ivQcPSQAbMcYRJyzLiT3MC56Hkpo3Kf4AG29ugA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tkkWYOBqYdgaPAlD8163e17K/oQlcK1HesgFkZMz4Nw=;
 b=b66GiSOvhXe+FhlseAWY3L8gGE+cKg9pWh3rlt3ctzL4p04aHn92yHvhS6eZqiQAbskKsgasYMH8lWjhc6NDE0eln/8f6ZJ6U0+J3FZ61fJBQL7n4cSmDcc1zM2ov5Cu/Dkq8dvy+X/nqCMaekr8mJL0ef6dsZWJOA0zAYNKCo18xHTTdf5V6ZgSr7xG255BZM1XXNGGzLDw4Yl5TsPjpMxcqlhor9zrZ9oZRNjai4wY40nDv7KA4Zku4K4O8Tz1CJkOt7+1xJxzq6LwTkygDTx+cm/KSnU5DJNaX1OAwHTln9hcEXF6zq0gfR8HtURBJ1Z4C8S7leP1MUV3BCE1Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by LV2PR11MB6022.namprd11.prod.outlook.com (2603:10b6:408:17c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Thu, 7 May
 2026 14:24:22 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9891.016; Thu, 7 May 2026
 14:24:22 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v9 2/2] drm/i915/selftests: Run vma tests only if current->mm
 is present
Date: Thu, 7 May 2026 14:24:09 +0000
Message-ID: <20260507142409.1913513-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260507142409.1913513-1-krzysztof.karas@intel.com>
References: <20260507142409.1913513-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI5PEPF00000934.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:808:1::82e) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|LV2PR11MB6022:EE_
X-MS-Office365-Filtering-Correlation-Id: d14b169a-6ce2-4008-14b9-08deac445557
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 8ls7X35pkpnhvqDdoQjXGD3EVI5rSNz7iRo/3Yl+d9CUhrfKVcnqcHwQLPqDIWvI6/2f3TB8VLxSlkN9wbta0SmW09i2aakX2FRu7PR3Og0A2IiCMHt9HWJJ9tZlJE3jv+vOU85xUEm4/TJGG0ZWvx3yo3tGRw43uqqQT9paJjaeTF7WhUpU4cI6HEPyLFl/jOY0iTwo0vb8ZHSjqUTdDGFiupdSMRB81TxwNMNoF9uWSCLqIxKm3itbjcg/0CpqFaWHFX1t0dLCckQ7dZhqO3xH9/8b0SUG9Cv4mo0hA48fh5qkwqWRPk5SHNDTI9Y6rWq+/0cjotwMNB5z9X4TsYzuIzgy5c7YrNfO0OmPdfVPcuq6z9WEzbHjGp0rrSHkkJziNUa/J/cI6LuZGuMYjH9/s4WEF3sQKSKWiP4S3Y/pvvqbOkbkxcpnvSwml84vg95XcHVZ1baUPDWN3T6yC8uSVM338y0/BOMGXVmIQDI634IeUeyyHglyx9dUiGUwiASwLHLMLy5QzfVGIF9Zb9ochid7vNEWOrPMMznGfmdZfkvezzsJ0Y/JqpE/pocgsivJQsNjM/k4cmgwYqd8kdCj5fMqSQBFPOjUY9Ag5ocm5ZK/wZs1lXVUfT2Sg5xTihh0+lVXXGYC4J1l1NS+moYJQEPnlFuzZQD3r6X4Hokyf//NlwdI2Rlw02UD9E5t
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pgvwz0FrCHaAD1w2/V1CDZBplFG2JZpRn7RENvqyQ+zYD4NHp+FJnaYv2q8Q?=
 =?us-ascii?Q?6ydoN/vW8rxhU2ACy4bheeuWY/ZQ6rrDGqdxU67Fr/yLPzOJhqrMDBqETA4U?=
 =?us-ascii?Q?v6SR0JjtT7M1NqY1gK3tUHiK+DCNu9s2Iv3VTYvFUHeg51zvuXv3KGfZ1hzc?=
 =?us-ascii?Q?EhEqh9/2FJ4oJ/6hTvEwyaJs6OhgQ7SSETP6In6bk+wBLEWX01xiUmJTpEcA?=
 =?us-ascii?Q?ssLToqOZPk9K9cmlFFUKRu576w115YUlYAz8qyuaJT9mHcKWyOXWV5A8PvhD?=
 =?us-ascii?Q?GsRmK1GUB0p+/Crhc35LRT/wJ6tvZV9E5teR8576cQO5Zh4DUu1mro/0z4hP?=
 =?us-ascii?Q?FqVMBs0Ky8PPB6wYv+2RyhbJr68TfXbZTRGRbDuaRqDnUPeWQIKVoVn050Fk?=
 =?us-ascii?Q?nzFr+n6S8asVV0YPPQaORWNK9MkOoBnX5vAArRY1ANT6RjL9sVVjiovqOPd8?=
 =?us-ascii?Q?hlFSytN2eMcrlAYLRpq3/8elsMdVlrFHilrX3mr7eS5qBmba8d5NVfpv5DEf?=
 =?us-ascii?Q?GY8jgKLwMgkWe0AXoJZ6XgrgUc2Kty3m/XVSeuZCb1IvyiL6bPDUhePiRrk7?=
 =?us-ascii?Q?jnLLeJWRgAV4t2++oQ56Ey2eyULyi24QUTmivHv3wqiOvwEkUD1CmUifxE7Z?=
 =?us-ascii?Q?O8kV/aTJqSkGj6gfWm9wukPnFiUEJ7w/njtj1TWA2YyMxcsOOl60v8uv43NU?=
 =?us-ascii?Q?AN4QSnwqqBy/Yk+ATT50RLzDH6GNSLqfh5yMJ/589hGQq4N2wwuMwo0kRTXi?=
 =?us-ascii?Q?z/j2r1CVVT5yBxfu118RKdDgpnjwYkT+vEEzJin/NsIB+mYLUv3H3Rr9VcGW?=
 =?us-ascii?Q?Ifh602NrZ4R+NKpMrCiC3VzB5k/Qa14HpAPQjSTZMzkGyxHa1BURe0IGznXa?=
 =?us-ascii?Q?pIKm5fT5wxUCuhl2sI1D9sr2qhdeEMM89d8gDFiSxMHZ2ZIg8++spvrX8kaz?=
 =?us-ascii?Q?4IQFMEQRhcC99FMC0K74Q/CRrj8mQIR6K7Dn3dAkGTNTlVKwhjPVXLTRiQJ3?=
 =?us-ascii?Q?2anrNpfI8X5WHvE4W4l+10rh9VQfeJJ6RReyhqSJWc2VdbFEvkRA40wGFlfu?=
 =?us-ascii?Q?bWcMXCB/CNuwCINA1c7Fzqwc4WfBWyOtG+2RjROnuGmJQjjbxzIK63p87WtI?=
 =?us-ascii?Q?ZjnifA/XfRKC1Z6PmloetW575OwSG2ixXMqnzFbSmu21NYZoXSq2y0DDGztW?=
 =?us-ascii?Q?QfH+us2o0cMAeqIFPs9WKp95kakg7cnSARzXEll87mdWjZ/ox4bMy1SMXXyF?=
 =?us-ascii?Q?9IwpBuOgJGbjwZVF6hHPHx0pvK0w+en4Q4QDQZZrrA4vdUJmoCkuEkFFl52M?=
 =?us-ascii?Q?m5LRAYfAlKwOgN5OmZphCEr2GjB4qyv06BL3r2FNrucp+wMhCU/UVPQhYoOa?=
 =?us-ascii?Q?h7qIwLx6Io2IitDwCs9oqsLosODGRdmvAR4TEm7KgnGHpoamLPU+tD7TrQRo?=
 =?us-ascii?Q?/TayDSlUkue+Ql0iD6bZgSbse8PQpntgMHhe86lGLAYCkB6QWxV5PKMntzcd?=
 =?us-ascii?Q?EDJOUp8pGkFDhq8lflTOoFXP0urXThW3FP8oBsRdNxONqi++jAGANOPMgi38?=
 =?us-ascii?Q?zHfwfReiq3aUw6XDpvCxG7YFPdqqcPXqG9bURp7pKizj4U0ttQsu1bvewlI7?=
 =?us-ascii?Q?XnWktonbvF1yg0bNMSMKRocLwAZ0n+YjpQr5OkkEkrSuC3dOopjHFWOKt9rD?=
 =?us-ascii?Q?WCP915EtpuuLIve8ZPd8VHdiqCAIWElTqXc7l9JlFhpzzIUs2qm70njpEqWG?=
 =?us-ascii?Q?H3p+qp3JPG+uS2ZgXtcQ1qmWsHzjNIA=3D?=
X-Exchange-RoutingPolicyChecked: wj3x4eZrxAhI7RTSjMLQgOiJOQm13FwtH9f90ogf4FaCcyV8YfgMFowtWEy57qRN0ORH/9DOuP9cLxuA1xMebdqvIYwT0pPlz1ncB87VcbW3Jun8trtw7FJQ3mmLLGp3/ty6Xa64xfxKPBG8cV87sc/uIcxhrNBcIOzlvihbtb5gdf0EPV7VElug/8HZfb8CGAeRN+W/mjfWm8oVpIX9CzMzt6jkGauQWmp6D2GwQ1uXDK3niwElYfFG5KZ1stMv/xSFtQVyQOh6aZoTYCrCLTR3FT1H0ZKyE9DZdYxeFhRjxV+COaKXLqRcxcRq5OD/WMZpHZHwo1VZplRBmzWAcA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d14b169a-6ce2-4008-14b9-08deac445557
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 14:24:22.3827 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KCEODVKlhcuYQy0eZJSqZ8Mtmba+DFqCwEL8VommA8lzDb/M/0yDsSSu9bBAdqpf6kgLw8Tfl2r61aE5H+HUKcPgOZoT59l2VwlqhmZO7EE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6022
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
X-Rspamd-Queue-Id: 9C23F4EA1BE
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

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

