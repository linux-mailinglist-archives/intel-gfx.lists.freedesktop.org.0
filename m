Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ce2RNeLtS2qLdAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 20:03:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE3F7143DD
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 20:03:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Gjp8W0wB;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C53610EA0D;
	Mon,  6 Jul 2026 18:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B99D10E3C1;
 Mon,  6 Jul 2026 18:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783360990; x=1814896990;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=koEab5fvDAsFTrRNfqrzjktCHza6rNcgYMhXdO0g4O8=;
 b=Gjp8W0wBZAHt1vJDwsAuyJ51SlTdHEzmpkqrcqNtUiOdxIovTRQ23pzL
 rmzTNX+y55hV4e34/vTlM4eDa50s3CAk72Be5whAyUVhU7H38wHMGYF5p
 4T19QPmqijnU1aJQrvk8ffnxR/XxjZirAcUpaWEHFYcJK6e5aOP/DbIv0
 XvLUz60Ud/L+hBnKwnkNNnoJQnPBUhNt/sMCfZZNYSCvDEtPHH6Rf+pht
 GIlhr6PRBA/u1uRRlLf+2wfZX6tWz0DKbAXiSEuWvZX8xLEuPOPsK0+XQ
 ob+8kJSCtO0UiEkUr5jjXuGZDwNFmf9Y/cF1/79tmO98wKkGXBG/YFFf0 g==;
X-CSE-ConnectionGUID: wd4YeKSFSZ+qNV1OwTDYzQ==
X-CSE-MsgGUID: VqOW1f/pR7CWAyOrlamdRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="83109810"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="83109810"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 11:03:09 -0700
X-CSE-ConnectionGUID: q95Pz7lZQKear0zJPVzyIQ==
X-CSE-MsgGUID: /dLL5ty0Td6AseaaymRnpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="253311858"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 11:03:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 11:03:08 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 11:03:08 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 11:03:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gb5cxnCpsgx4Xe39RoF5awytCQlQWnF+HIVhNiToV+Qe3SjN/vdNS0KkFQyPcmnwTeTZF/u4FLnCWL2LHRFDqRhCj5cgag4a8SErIa/9r1ladqAGRcLUyeI0oxydFYdbC3jmUE1tA+DKOtfxweaW5J9Oz7HV45Z5DY7gSPYf6bZlHBU0aO82Z3kG8AbyUDlnK18TQM/sAckE+26ZK5PXYrf4R7VKJbt59l2J2WqQAVV42kUgdpMH++QuBxP6Wsjv2ZM75jKiyEtcX2P9c8eW3ECMfA7S3MnH3OINzibfL/NTlTKwd/hDgF0ptvp2FsBimAGJHo2DC4rXTUDPlPQ8MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bdHdm8eIx/gS6Ybn0t9wBUFxBjo8oxD5K0FfphtDYf0=;
 b=gn88XW4+rb/UNpuZZ0acUY/MPXXfgxMgZ5poTe26gv45vAVrOVPidrU2fHFlCNC5r6dvX6sMtbeMUemklhu5Zo1+ZILQ2mnJx6ahhDjMgKD8A0pODJLST97eqnRtokn+gfvsfYpyDkWjvu2pIg6/P9BpSXU0FpbUM2hLc4C+1H+75T+tyjw1lCSc1EmMH55t//i5I3gAwiyujIv1fgt2H7RRKXARQaAT6kVUW/TIhuNB2tYN0Aw3krMAVLYr+OSd0w/6nz2z2yi7wvSBNY0/TZpbfV/9mHTNcdOODiQqqYjbm6I4Xi5AzyJqpfarS1z80NKje//2G7/bmEJgokyYsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by SN7PR11MB8262.namprd11.prod.outlook.com (2603:10b6:806:26e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Mon, 6 Jul 2026
 18:03:04 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::e0c5:6cd8:6e67:dc0c%4]) with mapi id 15.21.0181.008; Mon, 6 Jul 2026
 18:03:04 +0000
Date: Mon, 6 Jul 2026 11:03:00 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
CC: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, "Natalie
 Vock" <natalie.vock@gmx.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui
 <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>, Alex Deucher
 <alexander.deucher@amd.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <amd-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 02/10] drm/ttm: replace TTMs refcount with the DRM
 refcount v4
Message-ID: <akvt1GtqVKVVtmEU@gsse-cloud1.jf.intel.com>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-2-43685ac1286b@gmx.de>
 <b2932c85fee8e4bf89fdd80ada8883c199d823c0.camel@linux.intel.com>
 <88614266-6ee3-4488-9e2f-030ae0266e0e@amd.com>
 <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
 <akvrBLBhgbQodMNi@gsse-cloud1.jf.intel.com>
 <230890fdfb6c3e855636ad7731f60210a078e2c6.camel@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <230890fdfb6c3e855636ad7731f60210a078e2c6.camel@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0212.namprd04.prod.outlook.com
 (2603:10b6:303:87::7) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|SN7PR11MB8262:EE_
X-MS-Office365-Filtering-Correlation-Id: cc136bba-1c1b-4c1d-b8a3-08dedb88d32f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|7416014|376014|1800799024|366016|18002099003|56012099006|3023799007|4143699003|11063799006|6133799003|22082099003;
X-Microsoft-Antispam-Message-Info: r5y7NIlvI0ARHTKwgslTOHkhFB+oDif3S1o3B76U+fq3tZBPWRsrR85QVDs6oD+SbBM7hxw0T2Hz+SAKXSXQFKNviDS5k1uBJht/zVEtwjily6mR11qeXRO64yVFvkbjRgNBkrFxBtGf3qJolFRlRMe5ahIgrXOqNd+Y97VxfN+hwn3yjSgU8lIqUPIkSVWGKV6Y+0BITtSE8WqwfqszFDfAZOFSb6b6s5KFyP3EsFfSXTPIg/ZSRb+5BIqLvSDuh3mDXFsZPxCftV2+Vefglrqw87GattFbOw7uUWYhRaCss8JT9iu1/BrOnGj2jGOcnfUzIRFaiLJcVaiXE8l1US3fOK27hDDRBSvnm/0YODkoFkZmIb1BkUy3JLX6RLYPJMXfsNps9m49SDc6FmuD+g+l6BUCN1O1/WZnZzQEFyjEiK2+Ti22Q/s67aPCBelpzN6TxJd8mtVECbQdXhKDW0ej2OaHZ/PIge4LKGJFlBIXcrxNvmEroCuX/U6HK1fgOUDQl8od7ukz2/YMR/ALvc29Vk6F/VJviOv3r7hbVxM/lA0mu/bwq0+qz8l/cEZIaZzxAJkpU5ghZG/1/y0N5I0WZoPCWhjv+ljfGTTd5x6P0mUqiIeq8BORqF1OgKSnwCmiAEGnkY/flbIhNO0b9hlCTmfRKsx6CJ6oXvdsfZo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(7416014)(376014)(1800799024)(366016)(18002099003)(56012099006)(3023799007)(4143699003)(11063799006)(6133799003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?3Sr2hK9/C+p9m/uBxfhNne6qLJqpY5jMrDt0LC5LjNauCX8nPTwFNSzVpY?=
 =?iso-8859-1?Q?L57Ku9B03Tjsrj8qSmCFygE+p1Ma3MTNnZzLmqiGwzy5use4AeEgunmXac?=
 =?iso-8859-1?Q?NqaYiGmaNtANgbGgSYtLg1FE17CGJsJycDJj2IJnoeO4oeE2ydHwgLSzKI?=
 =?iso-8859-1?Q?eTdHxe0/c0muSktCheO523VtJO1UBWvxtJf1MLqH8TH9QBcggDK7RCudOc?=
 =?iso-8859-1?Q?SS3vBy04+VJ+IHBkU0I9ZDwoL/NWegcza0gmX4ZTNA7hE7njzfUtrwKwwf?=
 =?iso-8859-1?Q?7/BmNjBO6hl9B+Dib66svsiFyzt3LHAKPviaR3qM7TmNIWxV+MAzOYM7YR?=
 =?iso-8859-1?Q?I0YCqz7FpbGJLLu5XFyp3FYi0biWDGSz5hzqS9VnyL9EBmPNr9jUKNae6W?=
 =?iso-8859-1?Q?b6mw6yeXhGKIhP3tVEob66UbFBss2iedrfBHu8yhmj/I0KU3mPYrAxsjEz?=
 =?iso-8859-1?Q?awC0rtafPIvQ40WGupKmuDMhVcXU9r+JlvoGFwLdkETWRZy+vSUGA0Ofcb?=
 =?iso-8859-1?Q?XUy0TzOZUGduaFT2zgi0+0GgFKWdHvcL9RULWHj1mYlV0FmxCyTujhziU3?=
 =?iso-8859-1?Q?NW5SQEtzYfSRcCkmC1ttCfHDrAUWu8R952a1syRwDGstVzCmjib3LsMTiC?=
 =?iso-8859-1?Q?YhxsX35gRpW3jjAYAHRjjuHm4cltlu19Ws56i+bWXBUrOHxbyL+43BEnyD?=
 =?iso-8859-1?Q?T3yTEeOq4PHkdVQX+1jXW7DkzkXgZR0fSnQ3rvwIC/WAhOyHnlcr9xHcbe?=
 =?iso-8859-1?Q?X4P/I68rYk97Tedafpfbg83PqwBQgRyX2bKl5Fx7pCVQQyvIo2fMYqNvVM?=
 =?iso-8859-1?Q?0VbFWlmQ6WZvyr1YodTcWZadWDdrEOv36+2fGLuE+0j0IfhOagNRR1bc1n?=
 =?iso-8859-1?Q?GaMEDA/g64e1wp4mae2oXShtn/o2BvfZHvZnjvE4gOhsDY7H0Tq0tzDZ3e?=
 =?iso-8859-1?Q?YHAyuWIzp4sVZXOrpmet8mPfOVHBollccQwI91XlmQWTU7kTbnazltZUx1?=
 =?iso-8859-1?Q?0bd3dNXhfLDyYKG4u8wakBx6vCoR4EmzNcxxB5EHeP6iJ3gIqMx4meIqaC?=
 =?iso-8859-1?Q?6mSfbM3np8/xyAh1RgmxPHYbX/ZSC3wpjTXbmb/BHkhx2mDoS9xo7Iz39e?=
 =?iso-8859-1?Q?Ym/tBwgVkQjgfD1eW+BpINVAqu5UK5DegUEgsKuQ6cHLeyPhxuipbhkbTh?=
 =?iso-8859-1?Q?USBaNa8imRmYZhV1p5W4oaSAO2GYWXbgYSgt9tY24CJZeOO/lkTlO0A7Px?=
 =?iso-8859-1?Q?/GC9gNe6wGx5zSpleLChGQXf/MB4WWfYJA/Otmg8Y5kPVgVaZxzIbq2wHv?=
 =?iso-8859-1?Q?IY97QLPKJJ3k4Bz+KuXQvBywLuSD5zXi0kgjJQpCaqQB+oIwl6dCsepRwX?=
 =?iso-8859-1?Q?aQcq81fkYKWKI6XdWBZL47fXmor2aDyiHTKkZeBgkZSn/CLAjNmtv3GHUt?=
 =?iso-8859-1?Q?Sd04sIwzllh36Nxo2p6jSts6fr7ZEJYtltvHN0j2swgbnBOFsnBAO/Vjdb?=
 =?iso-8859-1?Q?+D16O9UQPynoAnLpjYRw5JDiya2/9R4sF1XHj09dS7dO+jcoaQ8KCnMLdI?=
 =?iso-8859-1?Q?B+bEqIOrcLSnbYeRzw76k7UHHGXwT8vla5LiLyGQDrEOLYor45M2VJtNKZ?=
 =?iso-8859-1?Q?cEbZ0OOJ9pRibfShQ6VcRWlYt4UBPjFaDcujS6rxd0Ya4oAGh15CRqSlKj?=
 =?iso-8859-1?Q?S47fRUKeK2xtAKrMw2kgcJBvgdKSTUuw8FBhhyZLUUj/cXLTXyuc380rlH?=
 =?iso-8859-1?Q?7LpOAZ8I/6ZM1bYY4UAvRF3vL8YQHGmSvOHPdDqHt78fLipRpNoMpI6kHh?=
 =?iso-8859-1?Q?kkk5yTXClQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: Iuc8LNg2OM4TvdSap0+ONQpI3j6FCFGhDGRg3LNT9BJIv3fVPq4EUYejgkwnbTvw/Kp9OhsssSg7mC3uFJ/fFJUoEvm41+U+06+wrzdZcKvA33/cznpWd4EEfB8DbhSTrecTHmM4UBvojxkQTmRXQ5L1RuUYxPnAqGA/foglxm6nqwTYap8t42z1Xc0GjWVz1X4Z6Bt33lOxoPuQ+G8G27i1l69BCSP4l1bHaUuJLugAIdjY6ht7DWbdKCWF7M7BV5woqsL6fn1YeQp3Gw+KkBdGkvJ5Peksu2DGyzfUcWoi1XqXwBEp1soy9jBupH8WRYFH6YkHc0X59DtQnmedkg==
X-MS-Exchange-CrossTenant-Network-Message-Id: cc136bba-1c1b-4c1d-b8a3-08dedb88d32f
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 18:03:03.9700 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZtDeSat3KnHVUFNT8FnjL/N87GKZFgXc7LnW21318CfkEfjVfeTC1uqN5miHkKCpJ8XFxgYK1bJikN6Qb8SVYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8262
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[amd.com,gmx.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,lists.freedesktop.org,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:email,amd.com:email,lists.freedesktop.org:from_smtp,gsse-cloud1.jf.intel.com:mid,intel.com:from_mime,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matthew.brost@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7AE3F7143DD

On Mon, Jul 06, 2026 at 07:53:12PM +0200, Thomas Hellström wrote:
> On Mon, 2026-07-06 at 10:51 -0700, Matthew Brost wrote:
> > On Mon, Jul 06, 2026 at 07:01:27PM +0200, Thomas Hellström wrote:
> > > On Mon, 2026-07-06 at 16:49 +0200, Christian König wrote:
> > > > On 7/6/26 15:14, Thomas Hellström wrote:
> > > > > On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
> > > > > > From: Christian König <christian.koenig@amd.com>
> > > > > > 
> > > > > > Instead of keeping a separate reference count for the TTM
> > > > > > object
> > > > > > also
> > > > > > use
> > > > > > the reference count for DRM GEM objects inside TTM.
> > > > > > 
> > > > > > Apart from avoiding two reference counts for one object this
> > > > > > approach
> > > > > > has
> > > > > > the clear advantage of being able to use drm_exec inside TTM.
> > > > > > 
> > > > > > v2: adjust XE assert as well and re-enable disabled test
> > > > > > v3: handle another case in i915
> > > > > > v4: set GEM driver funcs of transfer BOs to point to the TTM
> > > > > > free
> > > > > > callback (Natalie)
> > > > > 
> > > > > I think the main review issue from the last time this was on
> > > > > the
> > > > > table
> > > > > was that we shouldn't resurrect the gem refcount. Apart from
> > > > > the
> > > > > risc
> > > > > of getting barriers wrong, both xe and IIRC i915 partly rely on
> > > > > the
> > > > > gem
> > > > > refcount never being resurrected and that callbacks for bos
> > > > > with
> > > > > zero
> > > > > gem refcount means that the gem part of the object is unusable.
> > > > 
> > > > I've spend quite some time thinking about that and came to the
> > > > conclusion that this is actually harmless.
> > > > 
> > > > The drivers shouldn't be able to see the resurected BO, except if
> > > > they go over the LRU list manually (which they shouldn't).
> > > 
> > > The shrinker uses the TTM helpers for this. Basically the check
> > > needs
> > > to be ported to use the zombie interface but the present change
> > > also
> > > widens the window where we can't evict / shrink at all due to zero
> > > refcounts.
> > > 
> > > While it might be made harmless, resurrecting a refcount like this
> > > is
> > > IMO not something that should leak into the gem refcount. Nobody
> > > else
> > > does this in the kernel tree. The bo in reality becomes a zombie
> > > once
> > > the gem refcount reaches zero.
> > 
> > When you say resurrecting a refcount - what exactly do you mean by
> > this?
> > 
> > ref -> 0 -> init ref count 1 -> 0 again?
> 
> Yes, the destructor re-initializes it to 1 again. Prevously this was
> confined to the TTM refcount only and had limited visibility.
> 

Put a PT BO on a deferred list -> reinit -> sometime later, do an async
put. This is all done using the TTM refcount. Of course, we don't have
to do it this way, though.

In general, I agree that tricks like this are not the most desirable
approach. If I recall correctly, I implemented this in the Xe code
because it followed an existing paradigm. If we want to merge the TTM
and GEM refcounts, I agree that we should likely move away from this
paradigm, since the GEM refcount significantly expands its scope.

Matt

> /Thomas
> 
> > 
> > Matt
> > 
> > > 
> > > > 
> > > > > 
> > > > > For example xe_bo.c:
> > > > > 
> > > > > 	if (!xe_bo_is_xe_bo(bo) ||
> > > > > !xe_bo_get_unless_zero(xe_bo))
> > > > > 		return xe_bo_shrink_purge(ctx, bo, scanned);
> > > > > 
> > > > > So IIRC the conclusion was when removing the ttm refcount we
> > > > > shouldn't
> > > > > attempt to resurrect the gem one. If the get_unless_zero()
> > > > > fails
> > > > > during
> > > > > evict walk, we simply find something to wait for. See previous
> > > > > discussion there.
> > > > 
> > > > Yeah, I considered that as well but the problem is we often
> > > > doesn't
> > > > have anything to wait on.
> > > 
> > > That's not the conclusion of the previous discussion?
> > > 
> > > https://lore.kernel.org/dri-devel/20250716160555.20217-2-christian.koenig@amd.com/#r
> > > 
> > > > 
> > > > > 
> > > > > I fully support removing the ttm refcount, but not if it means
> > > > > resurrecting the gem refcount.
> > > > > 
> > > > > If we want to sidestep that problem, in favour of getting the
> > > > > proposed
> > > > > locking functionality in and future proof it, I suggest using
> > > > > 
> > > > > https://lore.kernel.org/all/20260605112700.181040-1-thomas.hellstrom@linux.intel.com/
> > > > > 
> > > > > And rebase this series on that. This means we can use the ttm
> > > > > refcount
> > > > > for the transaction refcounting, and also that if we add a dma-
> > > > > buf
> > > > > map
> > > > > interface with a dma_resv_txn_obj, we could use that to also
> > > > > have
> > > > > exhaustive eviction that originates from a dma_buf map.
> > > > 
> > > > I don't think that this is a good idea. It just adds another
> > > > layer of
> > > > abstraction and doesn't solve the problem in any way possible.
> > > 
> > > This comment confuses me. Exactly what problem isn't solved by
> > > this,
> > > and which of the stated benefits/use-cases in the cover-letter do
> > > you
> > > think aren't worthwhile?
> > > 
> > > Also for reference: (Section at the end and follow-up messages)
> > > https://lore.kernel.org/all/3716d43462188590743060755b37e3d060f7600f.camel@linux.intel.com/
> > > 
> > > Thanks,
> > > Thomas
> > > 
> > > 
> > > > Regards,
> > > > Christian.
> > > > 
> > > > > 
> > > > > /Thomas
> > > > > 
> > > > > > 
> > > > > > Signed-off-by: tChristian König <christian.koenig@amd.com>
> > > > > > Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/gem/i915_gem_ttm.c          |  35 +++--
> > > > > > -
> > > > > >  drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |   8 +-
> > > > > >  drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c    |   2 -
> > > > > >  drivers/gpu/drm/ttm/ttm_bo.c                     | 135
> > > > > > +++++++++++--
> > > > > > ----------
> > > > > >  drivers/gpu/drm/ttm/ttm_bo_internal.h            |  17 ++-
> > > > > >  drivers/gpu/drm/ttm/ttm_bo_util.c                |  15 ++-
> > > > > >  drivers/gpu/drm/xe/xe_bo.c                       |   2 +-
> > > > > >  include/drm/ttm/ttm_bo.h                         |   9 --
> > > > > >  8 files changed, 111 insertions(+), 112 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > index df3fcc2b1248e..642296602de69 100644
> > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > @@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct
> > > > > > drm_i915_gem_object *obj)
> > > > > >  	 * Don't manipulate the TTM LRUs while in TTM bo
> > > > > > destruction.
> > > > > >  	 * We're called through
> > > > > > i915_ttm_delete_mem_notify().
> > > > > >  	 */
> > > > > > -	if (!kref_read(&bo->kref))
> > > > > > +	if (!kref_read(&bo->base.refcount))
> > > > > >  		return;
> > > > > >  
> > > > > >  	/*
> > > > > > @@ -957,30 +957,21 @@ void i915_ttm_adjust_lru(struct
> > > > > > drm_i915_gem_object *obj)
> > > > > >  	 *
> > > > > >  	 * TODO: consider maybe also bumping the shrinker
> > > > > > list
> > > > > > here
> > > > > > when we have
> > > > > >  	 * already unpinned it, which should give us
> > > > > > something
> > > > > > more
> > > > > > like an LRU.
> > > > > > -	 *
> > > > > > -	 * TODO: There is a small window of opportunity for
> > > > > > this
> > > > > > function to
> > > > > > -	 * get called from eviction after we've dropped the
> > > > > > last
> > > > > > GEM
> > > > > > refcount,
> > > > > > -	 * but before the TTM deleted flag is set on the
> > > > > > object.
> > > > > > Avoid
> > > > > > -	 * adjusting the shrinker list in such cases, since
> > > > > > the
> > > > > > object is
> > > > > > -	 * not available to the shrinker anyway due to its
> > > > > > zero
> > > > > > refcount.
> > > > > > -	 * To fix this properly we should move to a TTM
> > > > > > shrinker
> > > > > > LRU
> > > > > > list for
> > > > > > -	 * these objects.
> > > > > >  	 */
> > > > > > -	if (kref_get_unless_zero(&obj->base.refcount)) {
> > > > > > -		if (shrinkable != obj->mm.ttm_shrinkable) {
> > > > > > -			if (shrinkable) {
> > > > > > -				if (obj->mm.madv ==
> > > > > > I915_MADV_WILLNEED)
> > > > > > -
> > > > > > 					__i915_gem_object_ma
> > > > > > ke_s
> > > > > > hrinkable(obj);
> > > > > > -				else
> > > > > > -
> > > > > > 					__i915_gem_object_ma
> > > > > > ke_p
> > > > > > urgeable(obj);
> > > > > > -			} else {
> > > > > > -
> > > > > > 				i915_gem_object_make_unshrin
> > > > > > kabl
> > > > > > e(obj);
> > > > > > -			}
> > > > > > -
> > > > > > -			obj->mm.ttm_shrinkable = shrinkable;
> > > > > > +	i915_gem_object_get(obj);
> > > > > > +	if (shrinkable != obj->mm.ttm_shrinkable) {
> > > > > > +		if (shrinkable) {
> > > > > > +			if (obj->mm.madv ==
> > > > > > I915_MADV_WILLNEED)
> > > > > > +				__i915_gem_object_make_shrin
> > > > > > kabl
> > > > > > e(ob
> > > > > > j);
> > > > > > +			else
> > > > > > +				__i915_gem_object_make_purge
> > > > > > able
> > > > > > (obj
> > > > > > );
> > > > > > +		} else {
> > > > > > +			i915_gem_object_make_unshrinkable(ob
> > > > > > j);
> > > > > >  		}
> > > > > > -		i915_gem_object_put(obj);
> > > > > > +
> > > > > > +		obj->mm.ttm_shrinkable = shrinkable;
> > > > > >  	}
> > > > > > +	i915_gem_object_put(obj);
> > > > > >  
> > > > > >  	/*
> > > > > >  	 * Put on the correct LRU list depending on the MADV
> > > > > > status
> > > > > > diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > index 56ad8ef325840..904cb4da6c9b3 100644
> > > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > @@ -127,7 +127,7 @@ static void
> > > > > > ttm_bo_init_reserved_sys_man(struct
> > > > > > kunit *test)
> > > > > >  	dma_resv_unlock(bo->base.resv);
> > > > > >  
> > > > > >  	KUNIT_EXPECT_EQ(test, err, 0);
> > > > > > -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
> > > > > > +	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount),
> > > > > > 1);
> > > > > >  	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
> > > > > >  	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
> > > > > >  	KUNIT_EXPECT_EQ(test, bo->page_alignment,
> > > > > > PAGE_SIZE);
> > > > > > @@ -176,7 +176,7 @@ static void
> > > > > > ttm_bo_init_reserved_mock_man(struct
> > > > > > kunit *test)
> > > > > >  	dma_resv_unlock(bo->base.resv);
> > > > > >  
> > > > > >  	KUNIT_EXPECT_EQ(test, err, 0);
> > > > > > -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
> > > > > > +	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount),
> > > > > > 1);
> > > > > >  	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
> > > > > >  	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
> > > > > >  	KUNIT_EXPECT_EQ(test, ctx.bytes_moved, size);
> > > > > > @@ -969,6 +969,8 @@ static void
> > > > > > ttm_bo_validate_allowed_only_evict(struct kunit *test)
> > > > > >  	ttm_mock_manager_fini(priv->ttm_dev, mem_multihop);
> > > > > >  }
> > > > > >  
> > > > > > +extern const struct drm_gem_object_funcs
> > > > > > ttm_deleted_object_funcs;
> > > > > > +
> > > > > >  static void ttm_bo_validate_deleted_evict(struct kunit
> > > > > > *test)
> > > > > >  {
> > > > > >  	struct ttm_operation_ctx ctx_init = { }, ctx_val  =
> > > > > > { };
> > > > > > @@ -999,7 +1001,7 @@ static void
> > > > > > ttm_bo_validate_deleted_evict(struct
> > > > > > kunit *test)
> > > > > >  	KUNIT_EXPECT_EQ(test,
> > > > > > ttm_resource_manager_usage(man),
> > > > > > big);
> > > > > >  
> > > > > >  	dma_resv_unlock(bo_big->base.resv);
> > > > > > -	bo_big->deleted = true;
> > > > > > +	bo_big->base.funcs = &ttm_deleted_object_funcs;
> > > > > >  
> > > > > >  	bo_small = ttm_bo_kunit_init(test, test->priv,
> > > > > > small,
> > > > > > NULL);
> > > > > >  	bo_small->type = bo_type;
> > > > > > diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > index 5cfe8f3f80d75..b7ab19e0e4b2b 100644
> > > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > @@ -189,8 +189,6 @@ struct ttm_buffer_object
> > > > > > *ttm_bo_kunit_init(struct kunit *test,
> > > > > >  	bo->bdev = devs->ttm_dev;
> > > > > >  	bo->destroy = dummy_ttm_bo_destroy;
> > > > > >  
> > > > > > -	kref_init(&bo->kref);
> > > > > > -
> > > > > >  	return bo;
> > > > > >  }
> > > > > >  EXPORT_SYMBOL_GPL(ttm_bo_kunit_init);
> > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > b/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > index 3980f376e3ba4..2b470c1746f60 100644
> > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > @@ -246,88 +246,84 @@ static void
> > > > > > ttm_bo_delayed_delete(struct
> > > > > > work_struct *work)
> > > > > >  	ttm_bo_put(bo);
> > > > > >  }
> > > > > >  
> > > > > > -static void ttm_bo_release(struct kref *kref)
> > > > > > +/*
> > > > > > + * All other callbacks should never ever be called on a
> > > > > > deleted
> > > > > > TTM
> > > > > > object.
> > > > > > + */
> > > > > > +const struct drm_gem_object_funcs ttm_deleted_object_funcs =
> > > > > > {
> > > > > > +	.free = ttm_bo_free
> > > > > > +};
> > > > > > +EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_deleted_object_funcs);
> > > > > > +
> > > > > > +/* Returns true if the BO is about to get deleted */
> > > > > > +static bool ttm_bo_is_zombie(struct ttm_buffer_object *bo)
> > > > > > +{
> > > > > > +	return bo->base.funcs == &ttm_deleted_object_funcs;
> > > > > > +}
> > > > > > +
> > > > > > +void ttm_bo_fini(struct ttm_buffer_object *bo)
> > > > > >  {
> > > > > > -	struct ttm_buffer_object *bo =
> > > > > > -	    container_of(kref, struct ttm_buffer_object,
> > > > > > kref);
> > > > > >  	struct ttm_device *bdev = bo->bdev;
> > > > > >  	int ret;
> > > > > >  
> > > > > >  	WARN_ON_ONCE(bo->pin_count);
> > > > > >  	WARN_ON_ONCE(bo->bulk_move);
> > > > > >  
> > > > > > -	if (!bo->deleted) {
> > > > > > -		ret = ttm_bo_individualize_resv(bo);
> > > > > > -		if (ret) {
> > > > > > -			/* Last resort, if we fail to
> > > > > > allocate
> > > > > > memory for the
> > > > > > -			 * fences block for the BO to become
> > > > > > idle
> > > > > > -			 */
> > > > > > -			dma_resv_wait_timeout(bo->base.resv,
> > > > > > -					     
> > > > > > DMA_RESV_USAGE_BOOKKEEP, false,
> > > > > > -					      30 * HZ);
> > > > > > -		}
> > > > > > +	ret = ttm_bo_individualize_resv(bo);
> > > > > > +	if (ret) {
> > > > > > +		/* Last resort, if we fail to allocate
> > > > > > memory
> > > > > > for
> > > > > > the
> > > > > > +		 * fences block for the BO to become idle
> > > > > > +		 */
> > > > > > +		dma_resv_wait_timeout(bo->base.resv,
> > > > > > DMA_RESV_USAGE_BOOKKEEP,
> > > > > > +				      false, 30 * HZ);
> > > > > > +	}
> > > > > >  
> > > > > > -		if (bdev->funcs->release_notify)
> > > > > > -			bdev->funcs->release_notify(bo);
> > > > > > +	if (bo->bdev->funcs->release_notify)
> > > > > > +		bo->bdev->funcs->release_notify(bo);
> > > > > >  
> > > > > > -		drm_vma_offset_remove(bdev->vma_manager,
> > > > > > &bo-
> > > > > > > base.vma_node);
> > > > > > -		ttm_mem_io_free(bdev, bo->resource);
> > > > > > +	drm_vma_offset_remove(bdev->vma_manager, &bo-
> > > > > > > base.vma_node);
> > > > > > +	ttm_mem_io_free(bdev, bo->resource);
> > > > > >  
> > > > > > -		if (!dma_resv_test_signaled(&bo->base._resv,
> > > > > > -					   
> > > > > > DMA_RESV_USAGE_BOOKKEEP)
> > > > > > > > 
> > > > > > -		    (want_init_on_free() && (bo->ttm !=
> > > > > > NULL))
> > > > > > > > 
> > > > > > -		    bo->type == ttm_bo_type_sg ||
> > > > > > -		    !dma_resv_trylock(bo->base.resv)) {
> > > > > > -			/* The BO is not idle, resurrect it
> > > > > > for
> > > > > > delayed destroy */
> > > > > > -			ttm_bo_flush_all_fences(bo);
> > > > > > -			bo->deleted = true;
> > > > > > +	if (!dma_resv_test_signaled(&bo->base._resv,
> > > > > > DMA_RESV_USAGE_BOOKKEEP) ||
> > > > > > +	    (want_init_on_free() && (bo->ttm != NULL)) ||
> > > > > > +	    bo->type == ttm_bo_type_sg ||
> > > > > > +	    !dma_resv_trylock(bo->base.resv)) {
> > > > > > +		/* The BO is not idle, resurrect it for
> > > > > > delayed
> > > > > > destroy */
> > > > > > +		ttm_bo_flush_all_fences(bo);
> > > > > >  
> > > > > > -			spin_lock(&bdev->lru_lock);
> > > > > > -
> > > > > > -			/*
> > > > > > -			 * Make pinned bos immediately
> > > > > > available
> > > > > > to
> > > > > > -			 * shrinkers, now that they are
> > > > > > queued
> > > > > > for
> > > > > > -			 * destruction.
> > > > > > -			 *
> > > > > > -			 * FIXME: QXL is triggering this.
> > > > > > Can be
> > > > > > removed when the
> > > > > > -			 * driver is fixed.
> > > > > > -			 */
> > > > > > -			if (bo->pin_count) {
> > > > > > -				bo->pin_count = 0;
> > > > > > -
> > > > > > 				ttm_resource_move_to_lru_tai
> > > > > > l(bo-
> > > > > > > resource);
> > > > > > -			}
> > > > > > +		spin_lock(&bo->bdev->lru_lock);
> > > > > >  
> > > > > > -			kref_init(&bo->kref);
> > > > > > -			spin_unlock(&bdev->lru_lock);
> > > > > > +		/*
> > > > > > +		 * Make pinned bos immediately available to
> > > > > > +		 * shrinkers, now that they are queued for
> > > > > > +		 * destruction.
> > > > > > +		 *
> > > > > > +		 * FIXME: QXL is triggering this. Can be
> > > > > > removed
> > > > > > when the
> > > > > > +		 * driver is fixed.
> > > > > > +		 */
> > > > > > +		if (bo->pin_count) {
> > > > > > +			bo->pin_count = 0;
> > > > > > +			ttm_resource_move_to_lru_tail(bo-
> > > > > > > resource);
> > > > > > +		}
> > > > > >  
> > > > > > -			INIT_WORK(&bo->delayed_delete,
> > > > > > ttm_bo_delayed_delete);
> > > > > > +		kref_init(&bo->base.refcount);
> > > > > > +		bo->base.funcs = &ttm_deleted_object_funcs;
> > > > > > +		spin_unlock(&bo->bdev->lru_lock);
> > > > > >  
> > > > > > -			/* Schedule the worker on the
> > > > > > closest
> > > > > > NUMA
> > > > > > node. This
> > > > > > -			 * improves performance since system
> > > > > > memory
> > > > > > might be
> > > > > > -			 * cleared on free and that is best
> > > > > > done
> > > > > > on
> > > > > > a CPU core
> > > > > > -			 * close to it.
> > > > > > -			 */
> > > > > > -			queue_work_node(bdev->pool.nid,
> > > > > > bdev-
> > > > > > > wq,
> > > > > > &bo->delayed_delete);
> > > > > > -			return;
> > > > > > -		}
> > > > > > +		INIT_WORK(&bo->delayed_delete,
> > > > > > ttm_bo_delayed_delete);
> > > > > >  
> > > > > > +		/* Schedule the worker on the closest NUMA
> > > > > > node.
> > > > > > This
> > > > > > +		 * improves performance since system memory
> > > > > > might be
> > > > > > +		 * cleared on free and that is best done on
> > > > > > a
> > > > > > CPU
> > > > > > core
> > > > > > +		 * close to it.
> > > > > > +		 */
> > > > > > +		queue_work_node(bdev->pool.nid, bdev->wq,
> > > > > > &bo-
> > > > > > > delayed_delete);
> > > > > > +	} else {
> > > > > >  		ttm_bo_cleanup_memtype_use(bo);
> > > > > >  		dma_resv_unlock(bo->base.resv);
> > > > > > -	}
> > > > > >  
> > > > > > -	atomic_dec(&ttm_glob.bo_count);
> > > > > > -	bo->destroy(bo);
> > > > > > -}
> > > > > > -
> > > > > > -/* TODO: remove! */
> > > > > > -void ttm_bo_put(struct ttm_buffer_object *bo)
> > > > > > -{
> > > > > > -	kref_put(&bo->kref, ttm_bo_release);
> > > > > > -}
> > > > > > -
> > > > > > -void ttm_bo_fini(struct ttm_buffer_object *bo)
> > > > > > -{
> > > > > > -	ttm_bo_put(bo);
> > > > > > +		atomic_dec(&ttm_glob.bo_count);
> > > > > > +		bo->destroy(bo);
> > > > > > +	}
> > > > > >  }
> > > > > >  EXPORT_SYMBOL(ttm_bo_fini);
> > > > > >  
> > > > > > @@ -470,7 +466,7 @@ int ttm_bo_evict_first(struct ttm_device
> > > > > > *bdev,
> > > > > > struct ttm_resource_manager *man
> > > > > >  	if (!bo->resource || bo->resource->mem_type !=
> > > > > > mem_type)
> > > > > >  		goto out_bo_moved;
> > > > > >  
> > > > > > -	if (bo->deleted) {
> > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > >  		ret = ttm_bo_wait_ctx(bo, ctx);
> > > > > >  		if (!ret)
> > > > > >  			ttm_bo_cleanup_memtype_use(bo);
> > > > > > @@ -524,7 +520,7 @@ static s64 ttm_bo_evict_cb(struct
> > > > > > ttm_lru_walk
> > > > > > *walk, struct ttm_buffer_object *
> > > > > >  	if (bo->pin_count || !bo->bdev->funcs-
> > > > > > > eviction_valuable(bo,
> > > > > > evict_walk->place))
> > > > > >  		return 0;
> > > > > >  
> > > > > > -	if (bo->deleted) {
> > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > >  		lret = ttm_bo_wait_ctx(bo, walk->arg.ctx);
> > > > > >  		if (!lret)
> > > > > >  			ttm_bo_cleanup_memtype_use(bo);
> > > > > > @@ -624,7 +620,6 @@ static int ttm_bo_evict_alloc(struct
> > > > > > ttm_device
> > > > > > *bdev,
> > > > > >  void ttm_bo_pin(struct ttm_buffer_object *bo)
> > > > > >  {
> > > > > >  	dma_resv_assert_held(bo->base.resv);
> > > > > > -	WARN_ON_ONCE(!kref_read(&bo->kref));
> > > > > >  	spin_lock(&bo->bdev->lru_lock);
> > > > > >  	if (bo->resource)
> > > > > >  		ttm_resource_del_bulk_move(bo->resource,
> > > > > > bo);
> > > > > > @@ -643,7 +638,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
> > > > > >  void ttm_bo_unpin(struct ttm_buffer_object *bo)
> > > > > >  {
> > > > > >  	dma_resv_assert_held(bo->base.resv);
> > > > > > -	WARN_ON_ONCE(!kref_read(&bo->kref));
> > > > > >  	if (WARN_ON_ONCE(!bo->pin_count))
> > > > > >  		return;
> > > > > >  
> > > > > > @@ -934,7 +928,6 @@ int ttm_bo_init_reserved(struct
> > > > > > ttm_device
> > > > > > *bdev,
> > > > > > struct ttm_buffer_object *bo,
> > > > > >  {
> > > > > >  	int ret;
> > > > > >  
> > > > > > -	kref_init(&bo->kref);
> > > > > >  	bo->bdev = bdev;
> > > > > >  	bo->type = type;
> > > > > >  	bo->page_alignment = alignment;
> > > > > > @@ -1131,8 +1124,8 @@ ttm_bo_swapout_cb(struct ttm_lru_walk
> > > > > > *walk,
> > > > > > struct ttm_buffer_object *bo)
> > > > > >  		goto out;
> > > > > >  	}
> > > > > >  
> > > > > > -	if (bo->deleted) {
> > > > > > -		pgoff_t num_pages = tt->num_pages;
> > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > > +		pgoff_t num_pages = bo->ttm->num_pages;
> > > > > >  
> > > > > >  		ret = ttm_bo_wait_ctx(bo, ctx);
> > > > > >  		if (ret)
> > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > b/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > index e0d48eac74b03..ded2a47be0bcb 100644
> > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > @@ -27,6 +27,14 @@
> > > > > >  
> > > > > >  #include <drm/ttm/ttm_bo.h>
> > > > > >  
> > > > > > +static inline void ttm_bo_free(struct drm_gem_object *gobj)
> > > > > > +{
> > > > > > +	struct ttm_buffer_object *bo = container_of(gobj,
> > > > > > typeof(*bo), base);
> > > > > > +
> > > > > > +	atomic_dec(&ttm_glob.bo_count);
> > > > > > +	bo->destroy(bo);
> > > > > > +}
> > > > > > +
> > > > > >  /**
> > > > > >   * ttm_bo_get - reference a struct ttm_buffer_object
> > > > > >   *
> > > > > > @@ -34,7 +42,7 @@
> > > > > >   */
> > > > > >  static inline void ttm_bo_get(struct ttm_buffer_object *bo)
> > > > > >  {
> > > > > > -	kref_get(&bo->kref);
> > > > > > +	drm_gem_object_get(&bo->base);
> > > > > >  }
> > > > > >  
> > > > > >  /**
> > > > > > @@ -50,11 +58,14 @@ static inline void ttm_bo_get(struct
> > > > > > ttm_buffer_object *bo)
> > > > > >  static inline __must_check struct ttm_buffer_object *
> > > > > >  ttm_bo_get_unless_zero(struct ttm_buffer_object *bo)
> > > > > >  {
> > > > > > -	if (!kref_get_unless_zero(&bo->kref))
> > > > > > +	if (!kref_get_unless_zero(&bo->base.refcount))
> > > > > >  		return NULL;
> > > > > >  	return bo;
> > > > > >  }
> > > > > >  
> > > > > > -void ttm_bo_put(struct ttm_buffer_object *bo);
> > > > > > +static inline void ttm_bo_put(struct ttm_buffer_object *bo)
> > > > > > +{
> > > > > > +	drm_gem_object_put(&bo->base);
> > > > > > +}
> > > > > >  
> > > > > >  #endif
> > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > index 3e3c201a02226..7ed085adf1c9b 100644
> > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > @@ -41,6 +41,18 @@
> > > > > >  
> > > > > >  #include "ttm_bo_internal.h"
> > > > > >  
> > > > > > +static void ttm_transfer_object_free(struct drm_gem_object
> > > > > > *obj)
> > > > > > +{
> > > > > > +	struct ttm_buffer_object *bo =
> > > > > > +		container_of(obj, struct ttm_buffer_object,
> > > > > > base);
> > > > > > +
> > > > > > +	ttm_bo_fini(bo);
> > > > > > +}
> > > > > > +
> > > > > > +const struct drm_gem_object_funcs ttm_transfer_object_funcs
> > > > > > = {
> > > > > > +	.free = ttm_transfer_object_free,
> > > > > > +};
> > > > > > +
> > > > > >  struct ttm_transfer_obj {
> > > > > >  	struct ttm_buffer_object base;
> > > > > >  	struct ttm_buffer_object *bo;
> > > > > > @@ -247,7 +259,8 @@ static int
> > > > > > ttm_buffer_object_transfer(struct
> > > > > > ttm_buffer_object *bo,
> > > > > >  	atomic_inc(&ttm_glob.bo_count);
> > > > > >  	drm_vma_node_reset(&fbo->base.base.vma_node);
> > > > > >  
> > > > > > -	kref_init(&fbo->base.kref);
> > > > > > +	kref_init(&fbo->base.base.refcount);
> > > > > > +	fbo->base.base.funcs = &ttm_transfer_object_funcs;
> > > > > >  	fbo->base.destroy = &ttm_transfered_destroy;
> > > > > >  	fbo->base.pin_count = 0;
> > > > > >  	if (bo->type != ttm_bo_type_sg)
> > > > > > diff --git a/drivers/gpu/drm/xe/xe_bo.c
> > > > > > b/drivers/gpu/drm/xe/xe_bo.c
> > > > > > index 85e6d9a0f575b..5843f850339c7 100644
> > > > > > --- a/drivers/gpu/drm/xe/xe_bo.c
> > > > > > +++ b/drivers/gpu/drm/xe/xe_bo.c
> > > > > > @@ -1651,7 +1651,7 @@ static bool
> > > > > > xe_ttm_bo_lock_in_destructor(struct
> > > > > > ttm_buffer_object *ttm_bo)
> > > > > >  	struct xe_device *xe = ttm_to_xe_device(ttm_bo-
> > > > > > >bdev);
> > > > > >  	bool locked;
> > > > > >  
> > > > > > -	xe_assert(xe, !kref_read(&ttm_bo->kref));
> > > > > > +	xe_assert(xe, !kref_read(&ttm_bo->base.refcount));
> > > > > >  
> > > > > >  	/*
> > > > > >  	 * We can typically only race with TTM trylocking
> > > > > > under
> > > > > > the
> > > > > > diff --git a/include/drm/ttm/ttm_bo.h
> > > > > > b/include/drm/ttm/ttm_bo.h
> > > > > > index 8310bc3d55f90..1eae9eea5ff32 100644
> > > > > > --- a/include/drm/ttm/ttm_bo.h
> > > > > > +++ b/include/drm/ttm/ttm_bo.h
> > > > > > @@ -78,11 +78,8 @@ enum ttm_bo_type {
> > > > > >   * @type: The bo type.
> > > > > >   * @page_alignment: Page alignment.
> > > > > >   * @destroy: Destruction function. If NULL, kfree is used.
> > > > > > - * @kref: Reference count of this buffer object. When this
> > > > > > refcount
> > > > > > reaches
> > > > > > - * zero, the object is destroyed or put on the delayed
> > > > > > delete
> > > > > > list.
> > > > > >   * @resource: structure describing current placement.
> > > > > >   * @ttm: TTM structure holding system pages.
> > > > > > - * @deleted: True if the object is only a zombie and already
> > > > > > deleted.
> > > > > >   * @bulk_move: The bulk move object.
> > > > > >   * @priority: Priority for LRU, BOs with lower priority are
> > > > > > evicted
> > > > > > first.
> > > > > >   * @pin_count: Pin count.
> > > > > > @@ -109,17 +106,11 @@ struct ttm_buffer_object {
> > > > > >  	uint32_t page_alignment;
> > > > > >  	void (*destroy) (struct ttm_buffer_object *);
> > > > > >  
> > > > > > -	/*
> > > > > > -	* Members not needing protection.
> > > > > > -	*/
> > > > > > -	struct kref kref;
> > > > > > -
> > > > > >  	/*
> > > > > >  	 * Members protected by the bo::resv::reserved lock.
> > > > > >  	 */
> > > > > >  	struct ttm_resource *resource;
> > > > > >  	struct ttm_tt *ttm;
> > > > > > -	bool deleted;
> > > > > >  	struct ttm_lru_bulk_move *bulk_move;
> > > > > >  	unsigned priority;
> > > > > >  	unsigned pin_count;
