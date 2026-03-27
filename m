Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFspKJ+IxmlELgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 14:39:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2391B3456A4
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 14:39:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E0B010EE8A;
	Fri, 27 Mar 2026 13:39:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T6LwToPC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827F410EE8A;
 Fri, 27 Mar 2026 13:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774618781; x=1806154781;
 h=message-id:date:from:subject:to:cc:
 content-transfer-encoding:mime-version;
 bh=/2jYOLzjPDzJHIth0q7JXcV/wq6XULPUhjKa8Ywviug=;
 b=T6LwToPCJ5YDMxbssTVreUCSI/j5y8+5X+YXgxaPHF35rItvN02L1lOs
 oEGZ09HdEACR71fDu7vgcPkCqqR7hQuQEfWxHKhXrFHdBeAVSl5Q22nFY
 Y7G8mv2/fSb2uNNQOCHRfW24w+7Wdo3n8PXVHGG2Pt0SS1sX9QXJKAqtQ
 ESvb2M+X0q5/qMZ02K/trWqLpvJOQhMgK2d+HYFGz5oTusaWcntIuFsAB
 adfOyC5le1lq8tWhhD83FWdFSooreYtaeS1r3Vpsm1AG2wiJMcflI8fKU
 IgjZGU1/Rc7egj4iQ3ATQZuw2WpII0IFEyXABRe/n2WNHlCM0PnD+o6zK g==;
X-CSE-ConnectionGUID: aM7BVfwEQnWKIGIDi1Jhkg==
X-CSE-MsgGUID: ADiXscsISce12SiV9VmL/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="93273315"
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="93273315"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 06:39:40 -0700
X-CSE-ConnectionGUID: qVGxcTuaS62pkrXuLpR71g==
X-CSE-MsgGUID: F6fJWvxkQ4+IeQJ/IDZYmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,144,1770624000"; d="scan'208";a="224355390"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 06:39:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 06:39:38 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Mar 2026 06:39:38 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.33) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 06:39:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cAoNNWxt7ZSCkFAWh9ceesFmOKX25Ue78l/iMwp9o+bhi3wol/5tacjjj2hgZRqF+m0DZm2A3GbKNL4MRk4wEFYhSOtoP4to/3vuMO5HAqMQAtb5KU/b8SJjjSGG1ipA6ri8//wFhoLL7iQU3C7LVsmCMb8arGuAkQFeVKrD11lx1oBKhtBlmlB5sp+Ahsu9ERBy6pw+S6Vlpz+14gCC479AjoHFJl6OPGJFtZZyJMFG8RavDSNKvZIWLwfzHXuYqkeQBa84iq5QEHAzW32SBVSkhR8WrcZiOzhrD0Z9lqR2a/kQkGfw+jRQNWuOpfvtM2xgWBTuwnBEteAJ6VUfSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VNAcfsK6/e/r7PSOdglRCMWyNJhUt/wHUBr8ZfCNl28=;
 b=oYkv90ggbncyxIwNt1JCW49MWpLeADHQptPUDozc9usIKQHxFIqRuJviF8Hffb5TpKIq/decUFFoiowh8lxWGUt4t0gj5aUT5fCZ4w50qHZVTgvyYp6K/m3EFI1XwVKdvps5bcnYjnbSQLi9ual8lyDUai0ke7fDmTvKrcrp2S7sn3q7rsRuLEVFHRiQ3jzAw+mxPZp6eqQGaWJLeNpcoUg27Bzf79rqxzxXoM+nOA6yqPZAV1AWdsVCC4kyTE+DcKnA6Mas0olZBndfOhmvRk/ZqoSmEOkZaGYc/XkNK5qM7NsubZ9sG+V4kkd/Siw5pjXyrFqTecIJQl4+IGqkYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA0PR11MB4765.namprd11.prod.outlook.com (2603:10b6:806:9b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.11; Fri, 27 Mar
 2026 13:39:34 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9769.006; Fri, 27 Mar 2026
 13:39:34 +0000
Message-ID: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
Date: Fri, 27 Mar 2026 19:09:26 +0530
User-Agent: Mozilla Thunderbird
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: Regression on linux-next (next-20260324 )
Content-Language: en-GB
To: <willy@infradead.org>
CC: <linux-kernel@vger.kernel.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, <peterz@infradead.org>, "Kurmi, Suresh
 Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, <ravitejax.veesam@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0155.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::25) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SA0PR11MB4765:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c74a7a1-6ce2-4ed1-e068-08de8c0647bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: jyTdBPc4keb70LlEKWUMVVdDXccK8v0s1tUkF3GD1aYGiMi+c1Rdt//MiqL2eyCOQ42FNE8wOA8QayrZg1MRuVOYNTqCsTkPJe7vPwxP2VQuJYYQV2Xy4d8PdVMB8hLxT3i60McFI61ubTTLaRf/SAzsu1TAdsZa+7G9IVvFGV7bWeMnqbda9n5KnccNCr9ENx4EIwwZ96DopMm9v9fiNFOSLqjof+XVJMIQM63dSqkTizn3quRTnxzEiJaJNmY5VVoELdAadn7yxjvEMU/80VbclA3SfpS/KP7mfi+kr/gB/cIZY13KxptL2SyCp2+DAHYantvHbyibrDQKYnEhtNS4e1dDWh2n8yn7F6DliNfGWyyHbG2gCnwxdcYwElc6oEWRSCwRSbbogqzb3JWD8Du0bFzJ6pAyU5rbxX+rqoHgBduH9GGFRgKFeO32wH6zJNpw2ueH3UTlQ/TNpVw6u32uOx1dd41rW4nOyR5llsrb2fsnV0H3ghfL8dPmFJ/0rMrf4xi1J4sT5sc3SRkEZebtJ+PswpdfsLSEKNVdLA/Z40dh+NBnPKcZ3Qntv0jD9mbjFtuxzxgG6sg1gRYTvNt7ajVD83Yo3hc/GNAczclakeupy5QGQI0FFVQsus/uhhABOEWBkE1JsP2sd/8OtYP3ozglTdh2tBUPDHwsjLu41qL3U4rzxo0rTuMzd5ia
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVM4NHIyT2tJS3VLTW44aEdPZjZicmxlY3B2SkhPL29JNU94aWxmRWZaMHBz?=
 =?utf-8?B?NXpFTHZWUWh6alVjRDk4VER3dWlFdElmZG9lVlZEMll4M2krclFMTVV6VThv?=
 =?utf-8?B?SEptYWUyNU5kYVVNY3lTdXVHblNEaFRjQVRHWnJNdlVFYmhXd0xFbzNBRDVB?=
 =?utf-8?B?Zmtia2QyKzA2ZVBEM0JvL08rRmQ3V0RyaGNpYUw2WTEranZwZ2tKRU5kM1k0?=
 =?utf-8?B?OVRoVWxPNlJyV00yV1c1NlR5Q3F1WkloZVBYYW8wVGF4NW9Fc2NWejNVYiti?=
 =?utf-8?B?NWlrbzZwQXcxT1JMQUNIQW1kNkg2bVpVRmwyNzV6R3NSL1BYa1pKeVhZVy81?=
 =?utf-8?B?S2dKTmdTcGZCMHBnUk03QWVEU0xSVkFuVXhnNVRQcHlYUW1mT0lsc1NRUTN6?=
 =?utf-8?B?eStRRzFwRUd4d0pLR2xOSVdEaldtOWJ4ZUkwczZxN0pQcXNodXZqcWhOaGhs?=
 =?utf-8?B?Z3FEcEljeW1XcmpPVFdNeHQ1WlZYV3JSOU1lWEJGSkR1T3JWU3RXdFJpM3hS?=
 =?utf-8?B?NEU3SVhhRmJkUWJ6V0NCcjVHQTdxWjBwU1Q5eUtvR1NDc3RsUDY2SlM3MTdw?=
 =?utf-8?B?NThOZ2tEN1NtTEFseXByTEhYV1QvVUQyc2t4b0hTRHNqY2JOd2ZubCtEOG5S?=
 =?utf-8?B?bTg3NE1rejhtand2YjRQWkVsY0NCZXBNMHhjNy9RbW9vTDlrQnhaUWltTHNB?=
 =?utf-8?B?RndsRmFBbVNVMmRiZHRxbGxFY2E4Sk9MMExzVG1Wa21Fdmp2aEk1VFNUOENP?=
 =?utf-8?B?QkV4d1JCYk5CbWRWYTI1cWNWR05ONTlNNDVrREF5eHcybDJiaEZZK0ZiZ2RG?=
 =?utf-8?B?Sm9RZTlITU9kTEs3RW5PaDFIcnpwVEJUU2Q5UTBmUHMxVHFTbHAxMWxnNG9k?=
 =?utf-8?B?Qml3Z01wMk9CQnpwd1ZFc1VaeUcxc3JOL0lEVjFVdlNnaGVHVUlKalZ3NkI2?=
 =?utf-8?B?TDNHQ0RheGR3QjMwTVBjUk83K2phcnFtS1REYmRzd2ZmNlJ3VmNHandmeVVG?=
 =?utf-8?B?UGtwaE5HbEo5TDdoZ0twZ0h4QVRmZmtob1FsejlDd3htKzlOS3NUTlUrSkhQ?=
 =?utf-8?B?cnFZYTJWTFM3VXNQblk2SEo3NVRIci9naWg5eDYyNE5vcE8vVGFyajAyL0pu?=
 =?utf-8?B?dkJQanhKc1JrY3R1UFdZMHA2clpKbGFBZXh5M1gzZ0ZIYm8vVmswVk1GQ3pv?=
 =?utf-8?B?SEZJRWFpbFBXc0IxV2pHUU1xRVE4bktwSy9yWDdiQkZlNTdVc1pzY3VyUzM5?=
 =?utf-8?B?NUVib0Jyb0pzK2IxMkt1dEJIdlpSa2RsaGtQNU53YkhCQ25CQk1PVlArVmVG?=
 =?utf-8?B?RHFhVnZJYmpNZFdnOUQvcWRNZkREZ3V3Njd6QTMxYTVJS3NXMHlOUjhxSUg4?=
 =?utf-8?B?TGRiWU1vdkZrb3J3V0R3clc1SUZUWWRmR2Rrc0FNcVlBVlJZZlExYlpOcm5R?=
 =?utf-8?B?N0YyR1ZJbUgrRE9IcWhCM0R4ZnhoZ091MEp4NUNQWGVmdFZyNkxYd2xoUmZR?=
 =?utf-8?B?TWxFM25aZmNXYWVrZ3ZkcjVQbHdZM0JiRWZxZlIyNE96b3BvcDRmblRUMVFE?=
 =?utf-8?B?TjJGVG02Q0RpWENmMDVlNkppTWRCaHpkcVlnUklMM0p3MDhQR2lwdkgzclJH?=
 =?utf-8?B?dzFjaDJsK01pRU9iUXUzd2lWNjJ6RE5FVlhUN3JCdUl3YmZjcnpxbnNGK3li?=
 =?utf-8?B?Sm9LajNaYkduL0NqMlIrS3lTUlFEVWt4L1h5UEt2TnRXR1RpdnJ6V2t6SWF1?=
 =?utf-8?B?RmJUMjdlQ2R1dFcvcjRXbm9TZUZaQ0VXaHFDZUMxTndCQjdtN3hoSUExVjdS?=
 =?utf-8?B?MStBYnJ6dlN5R3B0ejN5VWRkSExqMmlTelp2ankrdStsTEszMW1WUE1QVTQr?=
 =?utf-8?B?YkJxNW9NYUhDODNvc0k3eGJuMk02YjlHVitQOC9xenBGY2xRQ3owUWE5YWw3?=
 =?utf-8?B?YzhrcFZlWVlOMnJjcVNzRWNuVmJzVU9rVmIzZW9NMWpYd05teWhXQmg5b2xm?=
 =?utf-8?B?dUxQdXMvM1pVQ0pJSnhuZ3Z4VkJUSU43L0F4dWlOanNPZkxVNTBoU0F4Y0hr?=
 =?utf-8?B?Zm1pMW5lOVdiSjBsdTVBcmdOeDF0amE4OFZhc24wQ2lxcytRK2FmSzBOZUJu?=
 =?utf-8?B?K3lzTFN1VUl1S2dJanRkWng1NDJyb0U2ZkdTcHExZFVLS1phSTkwQnhjaG45?=
 =?utf-8?B?cmlIdGpVQjlIWDNGQ0svbjl2dzQ0enEvWW9CVFllMitBa3UxZUpwSEFJMCtu?=
 =?utf-8?B?WTFjdDNpb3I0bnM0aERjaFV1NVNDcE5aZDkwRHN3K0xsdkpsOEEwSGRUWnFP?=
 =?utf-8?B?QjhPQXAwcDJBWXk0U0trOEdFL21zUlZaeWVic2F1a2ljKzQyZGdYOHgzNHdB?=
 =?utf-8?Q?6SCsHBgdI+TfBYL0=3D?=
X-Exchange-RoutingPolicyChecked: IyIYZHchrhXdzSMNaHczd5QeAHqowa2DJkH5TxM+47uDaYKHYfhW1u2lm0Ds8TGJxfYNTW02lfiyIVL1yjkeVXRFK/bsLieL/KqMrVf0RsriJP+NY5BVmmm8SLFyT6DQPMbvRacFNWRC/kP2mwd+kgEy7KpifByzoixatFMTZ+9As5Usjag7sA6fmn+pTYrr7CNHn86BjFOL6LntJqVoR1OmkxrcyI3f3PoEO9sA9limNch5kYnZEC4IwTYCx3J6wQGwh4y4Hy4IooF3IAfYPYfWGA+CycOO+Lp4xT7zkBhIJtAtyRi1WYcKSEpu9Ql6UWNrBepP8U3F3Db9mFtPcQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c74a7a1-6ce2-4ed1-e068-08de8c0647bf
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2026 13:39:33.8573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KhMeFbdeduG06JVIm9eZSnlvCGQUfbWdjqUJuykeaOVlcEzLhbkAwdULo5dTO641WQDMdvXFIyHttsEj2CtL26FPdeOwEJ10i6WXYQ3lYrc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4765
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,infradead.org:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2391B3456A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Matthew,

Hope you are doing well. I am Chaitanya from the linux graphics team in 
Intel.

This mail is regarding a regression we are seeing in our CI runs[1] on
linux-next repository.

Since the version next-20260324 [2], we are seeing the following regression

`````````````````````````````````````````````````````````````````````````````````
<5>[  157.361977] [IGT] Inactivity timeout exceeded. Killing the current 
test with SIGQUIT.
<6>[  157.362097] sysrq: HELP : loglevel(0-9) reboot(b) crash(c) 
show-all-locks(d) terminate-all-tasks(e) memory-full-oom-kill(f) 
kill-all-tasks(i) thaw-filesystems(j) sak(k) 
show-backtrace-all-active-cpus(l) show-memory-usage(m) 
nice-all-RT-tasks(n) poweroff(o) show-registers(p) show-all-timers(q) 
unraw(r) sync(s) show-task-states(t) unmount(u) force-fb(v) 
show-blocked-tasks(w) dump-ftrace-buffer(z) replay-kernel-logs(R)
<6>[  157.399543] sysrq: Show State
<6>[  157.403061] task:systemd         state:S stack:0     pid:1 
tgid:1     ppid:0      task_flags:0x400100 flags:0x00080000
<6>[  157.403067] Call Trace:
<6>[  157.403069]  <TASK>
<6>[  157.403072]  __schedule+0x5d7/0x1ef0
<6>[  157.403078]  ? lock_acquire+0xc4/0x300
<6>[  157.403084]  ? schedule+0x10e/0x180
<6>[  157.403087]  ? lock_release+0xcd/0x2b0
<6>[  157.403092]  schedule+0x3a/0x180
<6>[  157.403094]  schedule_hrtimeout_range_clock+0x112/0x120
<6>[  157.403097]  ? do_epoll_wait+0x3e4/0x5b0
<6>[  157.403102]  ? lock_release+0xcd/0x2b0
<6>[  157.403104]  ? _raw_spin_unlock_irq+0x27/0x70
<6>[  157.403106]  ? do_epoll_wait+0x3e4/0x5b0
<6>[  157.403110]  schedule_hrtimeout_range+0x13/0x30
`````````````````````````````````````````````````````````````````````````````````
Details log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first 
"bad" commit

`````````````````````````````````````````````````````````````````````````````````````````````````````````
commit 25500ba7e77ce9d3d9b5a1929d41a2ee2e23f6fe
Author: Matthew Wilcox (Oracle) willy@infradead.org
Date:   Thu Mar 5 19:55:43 2026 +0000

     locking/mutex: Remove the list_head from struct mutex
`````````````````````````````````````````````````````````````````````````````````````````````````````````

We could not revert the patch because of merge conflict but resetting to 
the parent of the commit seems to fix the issue.

Could you please check why the patch causes this regression and provide 
a fix if necessary?

Thank you.

Regards

Chaitanya

[1]
https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260324
[3]
https://intel-gfx-ci.01.org/tree/linux-next/next-20260326/bat-arlh-2/dmesg0.txt
[4] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20231130&id=f4acfcd4deb158b96595250cc332901b282d15b0
