Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJ2AE9zfjmluFgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:25:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B49E9133FB8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 09:24:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA7410E7B2;
	Fri, 13 Feb 2026 08:24:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UGHD9W2W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88BCA10E7BD;
 Fri, 13 Feb 2026 08:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770971095; x=1802507095;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JxQFKviuyyRZm4rKaB+B5ZfVWwLlpXWfY5lZVAwg9gY=;
 b=UGHD9W2WCBQpoA4VKU5BdYip2geeaw5NNXnOEm8Bcbe/Sp57aHoxHDx0
 Ay7yLQlZkbNUrr8fwM3AYfij1PRDwUOrUJoX8v1EGFpxu3CkCekjJfwZL
 deEWls+OI1W46pJbHwiEbnCGjKMEwM/HmFyCFyaniYtLf1m1Sx0aOmYT3
 3+xv+l3oGHUMo09p8t8OS4QMSJIWSCQdDYQN8T02NN0rNxE2L/Z2BsMu4
 5Usa31wbZ++HvHrNhCmDXPL43k4c1qUrGN6XXA2/nfsw7CbNhR8aTSaq4
 qeULGVe/wC+ZdlqiBkFCYmxvBuSpM5qlbyb6jJtXR6JSy1q+heDfgmIgw Q==;
X-CSE-ConnectionGUID: 8mh4rNSSS3SJXpcRmfArfQ==
X-CSE-MsgGUID: dace1uZHQO+mQ46Yaw/yHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="72227073"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="72227073"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:24:55 -0800
X-CSE-ConnectionGUID: hMw2+kBYTTCd7yqtqSkRow==
X-CSE-MsgGUID: 4k+GlRUgTs2eyYlC1CH66Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212894099"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 00:24:55 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:24:54 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 13 Feb 2026 00:24:54 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.25) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 13 Feb 2026 00:24:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W5yL0kMCo46sV+FjevF04MBggN9n109HOOBNbOCNiDbLzcdfxzk6XmhODCzBAioMfg0/v5Fq0pF6wksvOmkDCAjbIrJaWGNr+hiZTz4i6hYQYgtR0Tn62laA4h1rUnRJEM4KsYdfGpG77IkdURZBu66qrBjy5WGXqz0n8kNG/EPq5xRdVYlyTTRPTe9YzWfIQ6w5kxGmvoyz60s4AsL1fAf+HvLBLF41HsrG9l0qHaqWvvkGXH8EW3Hj7qiqli4Us5ZkCi2+ffbkpdJ/qiXPLtg0o1ZBTEKb/wOXJKU6Xx8ebhjdqpE8htfBpO2HHpHbw4z/06xZxfHUueRZbLmFiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JxQFKviuyyRZm4rKaB+B5ZfVWwLlpXWfY5lZVAwg9gY=;
 b=I5979dSupcx77JWXhk5hs0yXQKyDYmVW0SrCMTUr8GUxxudj2mk0ZEMCtFehEumBw9Clrw+7fDySfZB94lfLozPfYZBIaYjzC0UywQaty6txqvFWdJLe05/4G1UmhZGP11p3IEEBLfTbqtGug7azKPcnnxjMcx1S8bXyGhbyJA6//bXWFa2Ikf2c6n3E0P76oNJdqskxMqqbWyUpq5M29zlcbYo8k/a68/2b4hW7WVt/8wvoH3mFHTfJ73bnMRydwK1A06g7qe7OghAvDRskJ8c/JQFlRu/M1/qnvtLR0rLpunBSYR1PlKnf2IBVaUrxD5p3z4NrgXCAEqz+dJBWHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW3PR11MB4666.namprd11.prod.outlook.com
 (2603:10b6:303:56::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.13; Fri, 13 Feb
 2026 08:24:47 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 13 Feb 2026
 08:24:47 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Luca Coelho <luca@coelho.fi>, =?utf-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, "Coelho, Luciano" <luciano.coelho@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 11/15] drm/i915/display: convert W/As in
 intel_modeset_setup.c to new framework
Thread-Topic: [PATCH v2 11/15] drm/i915/display: convert W/As in
 intel_modeset_setup.c to new framework
Thread-Index: AQHcnFF196TXQAA6R0eB/m7iewIXjbWAE+UAgAAyK4CAAAUlwA==
Date: Fri, 13 Feb 2026 08:24:47 +0000
Message-ID: <DM3PPF208195D8DD2E52F76AE768BF86C3AE361A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260212184737.352515-1-luciano.coelho@intel.com>
 <20260212184737.352515-12-luciano.coelho@intel.com>
 <aY6w7FuoIi0TydHB@intel.com>
 <2358502e438f28e734c65a55364a437b0291e956.camel@coelho.fi>
In-Reply-To: <2358502e438f28e734c65a55364a437b0291e956.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW3PR11MB4666:EE_
x-ms-office365-filtering-correlation-id: 77bcfbe1-cc49-4316-3f13-08de6ad9593c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?OUQzbUZCd3l0M2FDZktvWkdsR1BMekhNMjJsa1RFbUNNbjN2R0gwakdjZFVT?=
 =?utf-8?B?TE1FS2s3Q3VBN0crWm1FSWNVdEJMWWdnY0J3T1ZmUSt6eDNKdzdxUjh1WmE3?=
 =?utf-8?B?NFVhRkhkUU1NdkVNVjBwbVRvcXJxKzc0M0ZTb1p1MDRwelpya1ZEbGtnQ3Ey?=
 =?utf-8?B?NTV1eEt1cXBXM0R1UnV4S0VkYzRyNURqT0ROSlVJR2xFa1drVzYzd3ltRGd2?=
 =?utf-8?B?dzYzTEdQc2VmV3ZmZ0htMXJKT25UUVFveE9pQ3FiSGNuN3ZyV2grYnlKQmZp?=
 =?utf-8?B?enlOWFZrN1l6dUpUU2dOcGFta3FMNFM5U1Q5c1gzSnFBdjVTOTQyR0RYQytW?=
 =?utf-8?B?QzhoVmQ0NnFQV2pIcWdyRyt5RnlGUzI5Zi9sSUtwenQrWXZ5ODQ0eU9Wd0Ji?=
 =?utf-8?B?ZXJVL1JTWDdwMURUeE5JS2dnSVJZdktNdzRvNUgxMEVuS3h5Z3plK2wzQXV0?=
 =?utf-8?B?Rk5ablRMdVNBdCtjVHRYM256dzJuVGZsRTM2aDBGMjlMQ2poS2JQQkgxV240?=
 =?utf-8?B?V05jN0V5WHp1Y2xNRkVWeEhGSURrbytmYjFIU2VDNXlHRlUrSzJmNnczbmNa?=
 =?utf-8?B?NnZYK2xhRlBCWFMvTmdtWUIyZmJpZ01OQzIweHFpdWRPRm9xdGhGcGhEYTc5?=
 =?utf-8?B?MjB2NmNnMmdUTjhLeDgyeXF3V2Q5TGFyOTVFOGhJc2FVQVVZTEF3TEd3cmpK?=
 =?utf-8?B?QVdwbElVeTkxWi9oTWw1aVpXb3dETk1LZ0hORisvRW93dDU4VE9kU2I5V09F?=
 =?utf-8?B?L3RHS25wQ2NnaDBTWnRNK09DNnRvQUtGSDhTUFZRbmdpaWpNQTMybHlZTzQx?=
 =?utf-8?B?QXllcWgyVm9TQ2k5a3V1cE05Ym5uWlZFK0ZBRTg5MFRJT2puREM3dkNOUEQ0?=
 =?utf-8?B?Q0c2OWZxUDZzOWlrbUlyQlozMUNLSGM4MXIzZEViVEhhZFg1dmJoWkpIKzNa?=
 =?utf-8?B?VG13aGh0MGhINUNPUVFjRkhZYmxoYjJWUk95OWlpZWIxVlIzM3ZEN3NITDR5?=
 =?utf-8?B?Q2tRTUswQUN4WUlWMmpMUWlxVm1SUU9uTXFxUWd5TVZnZy9QOE9yOEliOCtD?=
 =?utf-8?B?MnNDT0VKNmtGMUI3TlVIeDh3ckNxK3lxZk51UFhrNEVFSHpUNlErZC9pd2ZY?=
 =?utf-8?B?NnIrQTVkNVduQkFINEFpVWs3d1NNRnZCM3VnNUo0VFM2Tllnei93Qk1kTGNC?=
 =?utf-8?B?MmVVRERRcDV1YlB4Z3cyVWw3YjNZZEgxS2g3aXdCRlBYVTRZRXhEcDEyUm8v?=
 =?utf-8?B?WlRyRDNTbXRIUDdseERIcWVvVTM5SU90QUUzVVdscy9qV0VwVUxRZ3JEbGlG?=
 =?utf-8?B?VGlRcytuQS82d3dnNjRHS1RTZ00ra2RsL0wxS1ZnQjdIN01VYTJ5RTk1MXdO?=
 =?utf-8?B?YktTRmdyWm9TUXR1UkZjbVlzSWJVTU1FUlp1b3o3enp6MXQraGR3NXF6WTNy?=
 =?utf-8?B?UmM5dXNBZHFjbHdxeEFiNCtsMkppVnl5Z0xUVzVuaGdFS0p3MzhzR3BiQ2ky?=
 =?utf-8?B?NUlaZDBneXl3cGdPdVpGSjY4TlVINVdsZ1JVb3Q5T1pTaTV3UXFHZDM1VDhL?=
 =?utf-8?B?M09qR0ZkcGlqb1FpdW9VOGtQRm53Y2R5WnNhekd3Y3EvUCtOZjRtdkNlek1E?=
 =?utf-8?B?K3hwVm02VFBhU1B6cnlqUkhhQktleXJmeVRJVE1rdVg2Vm5sMmZGZXBscFVC?=
 =?utf-8?B?cVRVVmJRZVAybnZ4cXRLSzdDaVZFQlhGRFBWZ0V4VWZoSDZxdkZGN2t5Sjkv?=
 =?utf-8?B?cUFrbTlEVlNIam5YQXlJY3BVTTY3QWRXQjJVeG00Y1liMXVaU0JJd29zaTBX?=
 =?utf-8?B?VE0wZER3SWlFdXlFQytEZUt3TkZMbWR5c2RLRG9xSXZzMkJ2MEJXcTlvSDdE?=
 =?utf-8?B?WmN1WlNoR3ErbzZhMXdKd2k1WUJEaUoyaHBqVmw2YmFkRldncWJCemwzYVdn?=
 =?utf-8?B?NkxTV00yR3VJSmxoS2xaRG5XWGtMSTQweDRVZ1BNY3g2bkU3aXJmcWUxQUFG?=
 =?utf-8?B?Y2luKy9STGJXTDlzRk8vME9yMk5tSkJCck1mTVNQN3JMYnFCWDY5SFd0aHR1?=
 =?utf-8?B?ZjNIRnNTSlJBRzZwTmZ5MHg3dlFJK1VuVmlRQ1pneW8yV05manM0OC9MSWQ2?=
 =?utf-8?B?T1BYQ3lWQ2tqNmR2WW5MSmFUd2RiaVVnck1jUDBqTjRnMEVPRERoekYwL0tn?=
 =?utf-8?Q?i6HQv8BAzn9JgPW7LUAACgA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFFoUG1MQlJNMUNzNXQySVpiTXFzVVkzZEx6dzQ2K1pwVml4Y0F5QTZpWnBZ?=
 =?utf-8?B?RzVmcTJwL09wRktpYjNtTjFFTENldDkzZ2ZrS0w5eDMwQk1peGR3eEFPYmJJ?=
 =?utf-8?B?TlFLdGkxY1VBL2NiL1pXUXEzS0JKS0EyRjlmNFdNNFAyVTNoYUVPeUNtRGZx?=
 =?utf-8?B?T0d5Zmlja3ByTUNlb3NaVGhBcWZHOXVzTEFvdEJ3NlNaU21hZ1RSejZLQml1?=
 =?utf-8?B?bkdMWTBjZWNOYTN1RlBwNklHNkcyVU12MFE5ZVIybFZINmVtb0d6ZjE5Z3Rh?=
 =?utf-8?B?TlhVMWhTYk5tL2tRZmVEZkpxS1lCK2lnVUZaWU5xK1UzaktpaE5IRkoxcVJY?=
 =?utf-8?B?VVVpR2F1cVpZTFJXTGlIZHdMRGJhaHVTR25aWTdqcFNpMXkxRCtLbU5UVVpD?=
 =?utf-8?B?NFhxbEZGbmVkV3FiMTh1TTNjb25aVjErSE9qNHZFSE0vUFlyQVNudndGWjll?=
 =?utf-8?B?SUlwZ01VR0l1WjJMZllWV1dvUW5SM1RDNEFmVCtDNDJVU256V2gyYU9KR0xC?=
 =?utf-8?B?cHBWOXJPejdJWG5aTUtlWjA0TVE4ek9jVjdBT0lJTmlYV00xTCtkOEhwYlBz?=
 =?utf-8?B?UnUvQVdQSkJaeGd3U3Z0eVNWaHA4SnI4dW5TMEs5TEZMdWNQa0E5RHdDY2xW?=
 =?utf-8?B?bG1NYzlURWZ2SEJxWExhWE84RjNDR1I5WUNwWnVoc25CQVpBeERBZnRPaTNH?=
 =?utf-8?B?aTY2QzNnVnpOL2g4VnNIZXFQQ3EyV0FkVzcvNUxydXhpN0l4K0NDQ1N4OUFv?=
 =?utf-8?B?RCtHc2QyRy9aUFpMdDcrbXNLYUphakxLVFYxRGhoUk4vdFpDbXJ6RU5ybmxE?=
 =?utf-8?B?UkpNU1J2bG1LVStiN3djL0FPeWpUR3BMYVpFcXdnRmg2NWh6MHJ2aTRpTkdu?=
 =?utf-8?B?Z1dQd0VsOWttTjBEKzFuTEdTdHk5NDcyeDN4V1FQUVFKT1lVWUpyZ2JEWGJt?=
 =?utf-8?B?NDFqaEh5ek5NSlJ6aTZVdW8vZXgrZFlTVmYxMmxMNHdlYjVmUmtlL0RBcW1u?=
 =?utf-8?B?Y0g1MGw0OXdPa2pXVVVRQVRRcUFHK0RzT2lFazRIVmJ1OHM5cVN0eDNHQVd6?=
 =?utf-8?B?U2crTS9CdFV1clZZaDYzMGU2bmpVVGloM0JKN0h0RUpWUGxrVnJDN2VyVG1C?=
 =?utf-8?B?SThoSWV2d0p4bmw1SHhkVXJOSnN4Nkp2WnhuMTIrbUp4eFpjWVNnM2pTSE82?=
 =?utf-8?B?ejBTa0hHemVDaWo4Rm0zTjBuK1NaSCt4UEQvZFM5SG9TNFZrQlpSdzloYVpz?=
 =?utf-8?B?cldOUVVhd3VuVmhIbENZdDh2bXVGaENNbDBUUkNyOEkzUktISXlPbzZTaDBv?=
 =?utf-8?B?bXBWVVVndVlUNTRXUGJXLytDLzFHMjByUUZDRGlPbUtVa3FqWGI1ZmhXWnNX?=
 =?utf-8?B?c1NZT0dRUkFHYU1reFU3d0VwN3dHSy9EZ0tOQVhnTG5jQnVHc2t6LzhjVWEw?=
 =?utf-8?B?VFhjMkllZTNNUE5oOEVqMWtBTmRGc1JOakVENXdJQnV0QjFOMEd6K1l0ZW9o?=
 =?utf-8?B?eFZVTzg1by95VjdrWXArM0hhY25CYU1wbHFMWk51UDlTbTR1UVNIOExEWklq?=
 =?utf-8?B?NExIZUR4U1RZWktHd3VIcnZ3T3lLZ3ZpYlVjbnpiUW01TC9XZ3p2SmZ0NjRa?=
 =?utf-8?B?bi9GdEw0WmRGQTRuY25Gd3AzUjM5ZFRLcHNuanNGOFdpZlNwMVRzd21zQ3p2?=
 =?utf-8?B?ZEVZSmF3VGdCV2hEUEgrMmFVUURLNWhaWlhBcXBVYXVzY3JUMDczRG9zdHNB?=
 =?utf-8?B?SmhmcEVIdTVvQmJCZTFKNkR5elBaUTJWdnlxSk5Lb0FWczdLWm1jU0JvWGtG?=
 =?utf-8?B?M2lUV3J2aW4vck5PaTRxNzZ3UEJNc1ZrUmM5NnRPd0p5Q2owRnRTbk1EMGIx?=
 =?utf-8?B?eHp5V1hhRitkckdmaTV3YVQ3dGpLRkk0ZG1ybER4L1VMeVBFVkttc041eCth?=
 =?utf-8?B?RzgvMFpuMFFTK3pDT041QStUSXJoaXhLNTlNc3hva3VHOEVqa1NkSGRoZHdW?=
 =?utf-8?B?Tng2VVBZRG1NN0sxUFN3eEhiMnNQTHIwa3I2MWdNMzkrYWhRek5pSlNkZXE5?=
 =?utf-8?B?Yk8xMlJmRy85K3puK3JNMmlVMkVUdGFvWGVKWUNFa25EN3krS2VZUDRJZE1N?=
 =?utf-8?B?V3VPRHVoNWZBaGVURW1MRUE2SjNPckkxTTRZL2ZEVjFBWmwrSmwzUVJ2VHRu?=
 =?utf-8?B?VEdGamFlVlJDd3RaTkNYdVpXd24zK1hhV1E2Y3AvRlZzYUFQWlBpSGRYaVBE?=
 =?utf-8?B?WDU1OGpLSHd2NHVFMVpNcnpubHRVTWJmNjhudEFabDQ5c1JiR1BxQkJVZS8v?=
 =?utf-8?B?TUtVT1JDTGlkUldybkNsa3ladGZNczFSeUs0Z2ozYlQrRmtObDZhdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77bcfbe1-cc49-4316-3f13-08de6ad9593c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2026 08:24:47.0466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B8yx+3gZxgeU6Jeq3ukykGZotOUWWxSOZeNj8087VeH7bGQZu8X9423uwvbr6U0OUTbvtS4OBTXPEdFmUGgFWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4666
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B49E9133FB8
X-Rspamd-Action: no action

PiBTdWJqZWN0OiBSZTogW1BBVENIIHYyIDExLzE1XSBkcm0vaTkxNS9kaXNwbGF5OiBjb252ZXJ0
IFcvQXMgaW4NCj4gaW50ZWxfbW9kZXNldF9zZXR1cC5jIHRvIG5ldyBmcmFtZXdvcmsNCj4gDQo+
IE9uIEZyaSwgMjAyNi0wMi0xMyBhdCAwNzowNCArMDIwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3Rl
Og0KPiA+IE9uIFRodSwgRmViIDEyLCAyMDI2IGF0IDA4OjQ2OjA5UE0gKzAyMDAsIEx1Y2EgQ29l
bGhvIHdyb3RlOg0KPiA+ID4gQ29udmVydCB0aGUgbG93LWhhbmdpbmcgZnJ1aXRzIG9mIHdvcmth
cm91bmQgY2hlY2tzIHRvIHRoZQ0KPiA+ID4gd29ya2Fyb3VuZCBmcmFtZXdvcmsuICBJbnN0ZWFk
IG9mIGhhdmluZyBkaXNwbGF5IHN0cnVjdHVyZSBjaGVja3MNCj4gPiA+IGZvciB0aGUgd29ya2Fy
b3VuZHMgYWxsIG92ZXIsIGNvbmNlbnRyYXRlIHRoZSBjaGVja3MgaW4gaW50ZWxfd2EuYy4NCj4g
PiA+DQo+ID4gPiBBY2tlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4N
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5j
b20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfd2EuYyAgICB8IDIgKysNCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfd2EuaCAgICB8IDEgKw0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jIHwgMyArKy0NCj4gPiA+ICAzIGZpbGVz
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+ID4NCj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2Eu
Yw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2Eu
Yw0KPiA+ID4gaW5kZXggM2FhNzllNjA3YmY4Li43MmY2NDU2ODZlZmQgMTAwNjQ0DQo+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMN
Cj4gPiA+IEBAIC03OSw2ICs3OSw4IEBAIGJvb2wgX19pbnRlbF9kaXNwbGF5X3dhKHN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiBlbnVtIGludGVsX2Rpc3BsYXlfd2Egd2EsDQo+ID4g
PiAgCWNhc2UgSU5URUxfRElTUExBWV9XQV8xMzAxMjM5NjYxNDoNCj4gPiA+ICAJCXJldHVybiBE
SVNQTEFZX1ZFUngxMDAoZGlzcGxheSkgPT0gMzAwMCB8fA0KPiA+ID4gIAkJCURJU1BMQVlfVkVS
eDEwMChkaXNwbGF5KSA9PSAzNTAwOw0KPiA+ID4gKwljYXNlIElOVEVMX0RJU1BMQVlfV0FfMTQw
MTA0ODAyNzg6DQo+ID4gPiArCQlyZXR1cm4gKElTX0RJU1BMQVlfVkVSKGRpc3BsYXksIDEwLCAx
MikpOw0KPiA+DQo+ID4gVGhpcyBpcyBub3cgcXVpdGUgY29uZnVzaW5nLiBUaGF0IHcvYSBudW1i
ZXIgb25seSBtZWFucyBzb21ldGhpbmcgZm9yDQo+ID4gdGdsKy4gSSB0aGluayBpZiB3ZSB3YW50
IHRvIHN0YXJ0IGNvbnZlcnRpbmcgdGhpcyBraW5kIG9mIHBsYWNlcw0KPiA+IHRnbCtzb21lb25l
DQo+ID4gbmVlZHMgdG8gY29tZSB1cCB3aXRoIGFuIGFjdHVhbCBwbGFuIGhvdyB0byBkZWFsIHdp
dGggb2xkZXIgcGxhdGZvcm1zLg0KPiANCj4gSWYgdGhlcmUgYXJlIG1vcmUgbnVtYmVycyBmcm9t
IG90aGVyIHBsYXRmb3JtcywgSSB0aGluayB0aGV5IHNob3VsZCBqdXN0IGhhdmUNCj4gdGhlaXIg
b3duIGNhc2VzLCBsaWtlIGluIHNvbWUgbGF0ZXIgcGF0Y2hlcyBpbiB0aGlzIHNlcmllcywNCj4g
ZWcuOg0KPiANCj4gCWNhc2UgSU5URUxfRElTUExBWV9XQV88dGdsK193YV9udW1iZXI+Og0KPiAJ
Y2FzZSBJTlRFTF9ESVNQTEFZX1dBXzxsbmxfd2FfbnVtYmVyPjoNCj4gDQo+IC4uLmJ1dCB0aGlz
IHdhcyBhIHByb2JsZW0gYmVmb3JlIG15IHNlcmllcyBhbHJlYWR5LCBhbmQgaXQncyBub3Qgc29t
ZXRoaW5nIEknbQ0KPiB0cnlpbmcgdG8gYWRkcmVzcyBoZXJlLg0KPiANCj4gDQo+ID4gQWxzbyBJ
J20gcHJldHR5IHN1cmUgdGhhdCBldmVuIGFtb25nIHRoZSBuZXcgcGxhdGZvcm1zIHNvbWUgdy9h
J3MgYXJlDQo+ID4gbGlzdGVkIHdpdGggZGlmZmVyZW50IG51bWJlcnMgZm9yIGRpZmZlcmVudCBw
bGF0Zm9ybXMuIEhhcyBhbnlvbmUNCj4gPiB0aG91Z2h0IHdoYXQgd2Ugc2hvdWxkIGRvIGFib3V0
IHRoYXQ/DQo+IA0KPiBZZWFoLCBhbmQgdGhlcmUncyBhbHNvIHRoZSBjYXNlIHdoZXJlIG1vcmUg
dGhhbiB3b3JrYXJvdW5kIGhhcyB0aGUgc2FtZQ0KPiBjaGVjaywgd2UnbGwgZW5kIHVwIHdpdGgg
bWFueSBmYWxsdGhyb3VnaCBjYXNlcy4NCj4gDQoNCg0KTXkgdHdvIGNlbnRzIGhlcmU6DQpNYXli
ZSB3ZSBmaXJzdCBnZXQgYWxsIHRoZSBXQSdzIGhlcmUgaW50byB0aGlzIGZyYW1ld29yayB0aGVu
IHdvcmsgb24gaG93IHRvIG9wdGltaXplIGl0IGxhdGVyLg0KUGVyaGFwcyBkb2N1bWVudGluZyBo
b3cgYW5kIHdoZXJlIFdBJ3MgY2FuIGJlIHBsYWNlZCwgdGhlaXIgbnVtYmVyaW5nIGFuZCB2ZXJz
aW9uIGNoZWNraW5nLg0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQo+IC0tDQo+IENoZWVy
cywNCj4gTHVjYS4NCj4gDQo+IA0KPiA+ID4gIAljYXNlIElOVEVMX0RJU1BMQVlfV0FfMTQwMTA1
NDc5NTU6DQo+ID4gPiAgCQlyZXR1cm4gZGlzcGxheS0+cGxhdGZvcm0uZGcyOw0KPiA+ID4gIAlj
YXNlIElOVEVMX0RJU1BMQVlfV0FfMTQwMTA2ODUzMzI6DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gPiA+IGluZGV4
IDU3MzQ1ZDBhYmUxYy4uZDgzNTlmODhkZTI5IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmgNCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5oDQo+ID4gPiBAQCAtMzAs
NiArMzAsNyBAQCBlbnVtIGludGVsX2Rpc3BsYXlfd2Egew0KPiA+ID4gIAlJTlRFTF9ESVNQTEFZ
X1dBXzE0MDkxMjAwMTMsDQo+ID4gPiAgCUlOVEVMX0RJU1BMQVlfV0FfMTQwOTc2NzEwOCwNCj4g
PiA+ICAJSU5URUxfRElTUExBWV9XQV8xMzAxMjM5NjYxNCwNCj4gPiA+ICsJSU5URUxfRElTUExB
WV9XQV8xNDAxMDQ4MDI3OCwNCj4gPiA+ICAJSU5URUxfRElTUExBWV9XQV8xNDAxMDU0Nzk1NSwN
Cj4gPiA+ICAJSU5URUxfRElTUExBWV9XQV8xNDAxMDY4NTMzMiwNCj4gPiA+ICAJSU5URUxfRElT
UExBWV9XQV8xNDAxMTI5NDE4OCwNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiA+ID4gaW5kZXggOWIwYmVj
ZWUyMjFjLi43ZWUxNDk0YTY3YWYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gPiA+IEBAIC0yNSw2
ICsyNSw3IEBADQo+ID4gPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfcG93ZXIuaCINCj4gPiA+
ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV9yZWdzLmgiDQo+ID4gPiAgI2luY2x1ZGUgImludGVs
X2Rpc3BsYXlfdHlwZXMuaCINCj4gPiA+ICsjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV93YS5oIg0K
PiA+ID4gICNpbmNsdWRlICJpbnRlbF9kbWMuaCINCj4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfZmlm
b191bmRlcnJ1bi5oIg0KPiA+ID4gICNpbmNsdWRlICJpbnRlbF9tb2Rlc2V0X3NldHVwLmgiDQo+
ID4gPiBAQCAtOTEzLDcgKzkxNCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2Vhcmx5X2Rpc3BsYXlf
d2FzKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiA+ID4gIAkgKiBEaXNwbGF5
IFdBICMxMTg1IFdhRGlzYWJsZURBUkJGQ2xrR2F0aW5nOmdsayxpY2wsZWhsLHRnbA0KPiA+ID4g
IAkgKiBBbHNvIGtub3duIGFzIFdhXzE0MDEwNDgwMjc4Lg0KPiA+ID4gIAkgKi8NCj4gPiA+IC0J
aWYgKElTX0RJU1BMQVlfVkVSKGRpc3BsYXksIDEwLCAxMikpDQo+ID4gPiArCWlmIChpbnRlbF9k
aXNwbGF5X3dhKGRpc3BsYXksIDE0MDEwNDgwMjc4KSkNCj4gPg0KPiA+ID4gIAkJaW50ZWxfZGVf
cm13KGRpc3BsYXksIEdFTjlfQ0xLR0FURV9ESVNfMCwgMCwNCj4gREFSQkZfR0FUSU5HX0RJUyk7
DQo+ID4gPg0KPiA+ID4gIAkvKg0KPiA+ID4gLS0NCj4gPiA+IDIuNTEuMA0K
