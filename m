Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 571B8B355A4
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 09:28:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 764C110E5DC;
	Tue, 26 Aug 2025 07:28:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vm/cEN43";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F6E888BE3;
 Tue, 26 Aug 2025 07:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756193317; x=1787729317;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=3zFwVeE1SoLNeMQ2EeEoykO+zi+8O5/3mDAK1vga89g=;
 b=Vm/cEN43zyvs2FakjmOeoeZjmbFhxvCIm3jEiLNcJfVqIihj25SmFEhc
 De2vAhPg4XonVrLiji2USH9nWw194Um//p+hrb9Bx4yuSAyg3JbuyqrBs
 Va+r/tobrg/uVK4CRaVh3O7bXTsI6U6V1nLXQWDMyVoX5VyYxpf1UdK5B
 b/he1PweI3yKF4cra+2H5/QxSf1fpTX7M8VDui2aerXKs1V0mcOPHHjPs
 yKQaydHFXRMI5DZQ6ieu4PtzDISrtSkXjlnbsXuVbRceGVadqLPzhxDMp
 SUtRyDIQqIq30Cnsn+rnrEb2ifU3/+ufqVyq6uGAfGgcvj3XLL5HZAj2a A==;
X-CSE-ConnectionGUID: EUoqiTYeSvedmU1YQ5eVDw==
X-CSE-MsgGUID: eANPsyusQcOUcAFIi+P7qA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58475420"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58475420"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 00:28:37 -0700
X-CSE-ConnectionGUID: 0FUNJvo9SXmUIPf8DCTAIA==
X-CSE-MsgGUID: uH9TkCf7QxWCeA9s0Gawlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169110940"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 00:28:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 00:28:36 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 00:28:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.48)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 00:28:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gJ9lw1Uk5CCNeVlcgAnr5uz0AnKPqP9kh1x2Yu6SX/rdHwtsw26qk6/HsfIwc0UDfQKcLPtm3m7/qADbO5koEBCuwE4YGnjHSqVT/UoF9d8Y1ZPhgVBenfGNVH4pNI6Mh2GYMRR2oFpCgotEB0twuBrdSb6McaF3tuvSLuM84q+KNRdb3yZLaR6Ut6G2Bo08LrEo9jNT+cnJVqHeAF08veb4SzhEoM2AhnrHGUc+KjGDiClUUngYYtROzidTS7JeEhVtYXNbUHpy1WPxb6arvKYCOZxnF+N1Inx3fXNmH1C9RheYp7Bn6HVP4kRfNaXBXm2GJitcuGLd/REmNxLKnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3zFwVeE1SoLNeMQ2EeEoykO+zi+8O5/3mDAK1vga89g=;
 b=QRpJqhkhoSN0jv/jOAOwH1F79yku+1E5uIP3k7XFK20hHa9MyWGshQUWuMNBJNBIanJM+jMWaoWBHX4AjxIR+HFKUmH/Z98pNSe6jLTQrW78cmLutS8nwUWHcMPiZSBm4fXtq+GsoQyq/Cx1FFflqUdtKep6nufeWYNE2toSlYdQ/YcKIsEE7gDbT/nA0BH9br9eos2hl1vLN8EXgOdKomSvqpAfZiFskx6LX+G5OfFZNtHpcLiloUDXruAjMHvYU6APXGHk12Of6aDlsfFc4M4TpooUwjmfMCNMEUL2aG2uaZW0A8UXQltLh01OeCbY7sD23EpznmlHkruY9FUezw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6828.namprd11.prod.outlook.com (2603:10b6:806:2a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.29; Tue, 26 Aug
 2025 07:28:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 07:28:34 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: Do not unnecessarily remove underrun on
 idle PSR WA
Thread-Topic: [PATCH] drm/i915/psr: Do not unnecessarily remove underrun on
 idle PSR WA
Thread-Index: AQHcE1PLtm/OnJ4uw027doFTwDdtJLRy7M6AgAGimIA=
Date: Tue, 26 Aug 2025 07:28:34 +0000
Message-ID: <5af7520b968fcabcb677b3bb56b1ecf301553cdd.camel@intel.com>
References: <20250822105846.1023631-1-jouni.hogander@intel.com>
 <DM4PR11MB63606B19B182535C43C1FF5DF43EA@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB63606B19B182535C43C1FF5DF43EA@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6828:EE_
x-ms-office365-filtering-correlation-id: 95670f79-7ac4-40a6-9142-08dde4722a2c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?dGs1MDREWDFGZyt2c2xPQ0FSZmhPdDlmU0pVUGFKa21ldTJlRjAzNmJiVkpF?=
 =?utf-8?B?UkQvTmJNRHNEZENCZ3dxa2xZeW9mT1gxa2dzNERvcGlDYkdVZGlsc3VrbUZY?=
 =?utf-8?B?VkdKQlQxYURKL1BLRWtGRktEUnNqL3VXbjNFTDV1TVhjTk5kcEMweWlqUFcr?=
 =?utf-8?B?T3ovR0E0L2NrUDczNG5BRDVhUmdmT1czbUJ1NmhOYWNXUDF2cks1VklwTTdP?=
 =?utf-8?B?Yk9BMHR6ZENWNno0elNxNzltaFhkV2hPdmNSaHFOSjE1dmhYaitCVk1Gd25F?=
 =?utf-8?B?MXZIQXIyR2lLWlJqeGxRcEprR1F3clRUWnhPZUg4dWtocjhENmJQb1FCbEFU?=
 =?utf-8?B?UUUvcFZKMzNlU1hBN1lHeTlMbkVPQ1cvc3lBNlRGQ0M5OERpL2d1NHNSQ2k1?=
 =?utf-8?B?UUNka1lsME9RWFRHRGloUGdvek9pRWRocU4vY1BYenBMbU9GZUtFSFZIM0Rn?=
 =?utf-8?B?TXVNTXNROHR0a2NueDd6WTlMQ2gyaGhXTnFBNzV6K2NuZTFYbkxoc3ZPMWh1?=
 =?utf-8?B?dkhDYnAwaDVZRWlUL2RMQzFESktDeG5zdVBoSFJUSEJZS0pGRTNOQW55M0wz?=
 =?utf-8?B?UVgyQ2R1U3U1b0Y4Ym4xeUdjMENIa3RiNGpZNTYrbXA4dFhXZFR6c2UvWGNG?=
 =?utf-8?B?UU83WnVOSDVXL0wyQzk1cjdMUENUWjZtL1dwNjBNN3VQakpqK1IxUWFocUxl?=
 =?utf-8?B?N2FpbjFGZk1PdFJDdnFXSnphWGpNTFBBVFIzWWkwdUY5T3E5dnFTYVJzZ3Z1?=
 =?utf-8?B?RE5TaFpGc0pDMkRwMFVnb3hMdk03NWY3S0s3dnRlZU5wbUhiaXkzV1h3bnFu?=
 =?utf-8?B?NG9qKzhxWUVrV0lmSWJYNkRJWE5VOU9HdmFBdXlISTRMN0pRUndERDlTdU11?=
 =?utf-8?B?WWtDY3VjY29UOHdJbDQwcFVmc2JndXYzMkNRY0x2RlRFQkpZQmM2VHg0M3JI?=
 =?utf-8?B?SGM0QlBXUkRrbXU4Z1FFbmF4MnhXMWdpdG1BNnczY1Z4TkdSSUhJNXlETi9N?=
 =?utf-8?B?NVVwcGFVNmJVelhGUUFmL3YyU3cvTVkwQStjOU95Mko2M1BXa29ZT2lkNmNI?=
 =?utf-8?B?YlFGZzFuanA4RjVYRkxZWTUxTXlaZmhvdUdpS2hGaVNRY2JFRlNlSC80T21x?=
 =?utf-8?B?cGd0TGpOZlhUd2tlZDBaR0tQVVpWWCtYZzdZbmw0dnZPZDViUk5kaDh0YzJS?=
 =?utf-8?B?cHQzaWFiU1ZnMXFSVm5tbHdRd1dRTkN3WWp2UnZ3TVZXUmdxT1BEcTZyT0V4?=
 =?utf-8?B?L2ZXZmhIQ0FST3Y5akhhQjhtbVVmSmJQODFVUTR2cGZqTDFYc292cHE1YXZz?=
 =?utf-8?B?UFR3c21XUFRXRTRhM0daQkh1azZwa1RvWUVWeCs5QmRoRjFkWWlRR3NKRzNL?=
 =?utf-8?B?cUJaWnB4SmdGUm5RcE1GSkRzOG9NL1lOd0Y3bXUxMHlaRFoxa3dwWEhMRk43?=
 =?utf-8?B?OFErWXE0QXB3SjVmVFNtNlRlcEtWUVB3cHZGTHJmYWJSeFk3QTVESnVocEI2?=
 =?utf-8?B?SThXYXBLMGF5QTlaekNsMmtueDlNMEpSWmN4QmE4Yjg4TVJTQVYyQnBkWm50?=
 =?utf-8?B?Z1ovLzNWQWFxeG9ObWJuN1I5MVdQT2RidWlBbm9SSnF5TUt6V2tReDI4U2ZJ?=
 =?utf-8?B?MG5pU3F6clhMTDlRZUJUUXFnSlFxU01sOGt5UmROSnZTbVRycTU1YmdaN3BK?=
 =?utf-8?B?cGhzRWlOYTVhUW1qbjNsYzBlQ002NUY5VVpQWGw3Mms4UXVtc1dCUXZXUWZ5?=
 =?utf-8?B?ck5KU2Q1WDZyeUszaUJScDFaQy82Y2R0MmluUmdFc3JmWWhFQ0lxQ2hOTnox?=
 =?utf-8?B?eFZjdDZmdlg5dVFEZEJ0Q1pNUVRUdkhuVS96cWM1d2ZRdzVSeWpSK3c4cG9G?=
 =?utf-8?B?Wko5YUQ0V0taUkZ1Ny9ZeWFrbnlDY0tYQnRQQ3F3QW1xeFpRNUwzcnJpSlJW?=
 =?utf-8?B?cS91MXR0WWh4bytWWTY5VWYxN1BPSWptVjE1WFpMRm0zK3llSktLUmdISzVK?=
 =?utf-8?B?MjlIcFY4YkdnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2x5Q2VNdzZoanE0SEp3eW9SNGZaT01seXE2V1drblU4U1V4R0xWTEYxZ2VB?=
 =?utf-8?B?Q3EvdFpJaWlycTZFNkZvWlM5VHFyZnN3d1dqY2tFTjlyNkNZL1Q5TVNSK2M0?=
 =?utf-8?B?M2Zkd1RFQUwvbGJ3bVRndXBoeEhkdFhObU1HRUVqck40VlhxMnJIbFBQTFlE?=
 =?utf-8?B?M1Npd3E1RitJQ3RxWWR0ZDFrZW9TZW9YbEdDejBSVGZXNHQzZUJJMG8xQjVq?=
 =?utf-8?B?NzB3MkhjY2hLaG0zSEJtelRBTUZ3T0pUbE9WWGpYS3B0enpmTGFKdzdpQm5E?=
 =?utf-8?B?NTd3WjY0NmVQUjBON1k3RVJvSEx4ZS9ncTIrbXJaVXpIU2x5RGlUVStNZDBS?=
 =?utf-8?B?REQ2bWgzNnBJdFYrT0hZVEF0dVprVjViNDVRUFlSVnBCNnlGTTQ5TUd4ZUU5?=
 =?utf-8?B?eWpjWklnazJ3bERaNzQ4ZW8xcVV2cmkzM2UrM1kwbUxGT0tWSHp0T0V3REFO?=
 =?utf-8?B?R0lrSjRYZ1E0MFMyeC9GK2VVOGYrTXFuUksyRmVhNHBvNC9qQTdSbk0wS2hh?=
 =?utf-8?B?R3RzREpiWExubzljekZwNkU5SStNcWRWdTRDSlYrbkhHYjhlR0cwY0cvQ1Vh?=
 =?utf-8?B?T0xiUVZOcTVOTXpCQWtXbGhBdkhOVm5aUVc5Q2xrREVFSmZKR0ZnSWxYb3pa?=
 =?utf-8?B?T2QxSXAybTBXay9IVDNaUzEwNlcwU0UxSXUvNmpUYTBxVmVzeGdzWlF1VVNy?=
 =?utf-8?B?cXNEWWZlamttU1ROODU0bUJDZkpkSDVtZGx0anhYVGh4RkVMaXVpakp0LzJ2?=
 =?utf-8?B?TndBRUZQeEpNTjM3d0svdGpPMzIyNkErcHgzM0pGTmRDa1paVDJnWFJ5MGNz?=
 =?utf-8?B?OHpXckV5UFlsc0FwMUo5cFUxRXBZRWJ4L0dzUlFNcHZwL0R6WjUwOTdycWtU?=
 =?utf-8?B?Nk0wNjhnU3I5dFllcDIwcmMwNFZOVXlqazBKSFB3ajZzU3gwUURFRi9SUm5v?=
 =?utf-8?B?NnVKSjBWSHNuTG5HRUk1VitqMGdBelN5NXdOc2h0R1lwazdrYUZMc3puUTZo?=
 =?utf-8?B?N1VXWTM5SFJSU1B2a2tpR1NBNjg1cmFrV0VwcHo2Ui9Jb3YydWpmd2pxa1Nh?=
 =?utf-8?B?aDRPaUs3ckxxbFdoS1FyZDV3a0M4OVpXV3JTdDVuai9YdVB5amZ3MUoyMTQw?=
 =?utf-8?B?WFRIaS92YzB1ZHlheWVad3VaOFhsVG45L1FybFRQckMwSkZuaFkzMWhWcjRF?=
 =?utf-8?B?bUdRSjAzSVYySFFsQ0F1bi9XaWJ0eXFhWm9qWW9yZEQ1eEhYM1RXaWRTVXcw?=
 =?utf-8?B?ZHkrK3VVVWxERDZNMGQ0WVRnQzhYL0pzUDdJd3hMOFVCcFRpK0tmQkJ2NWIx?=
 =?utf-8?B?R0xoOCtoRmFYMVVneTUyL2hkQ1dUZlFJeC82TjNOekVPOVpXamNZVWM3NVFr?=
 =?utf-8?B?ZUVXL1NGMlRTbG1sVTA5bmVGaXI4blZ5U3dhZ1MwOHU1cGFJbUlJWEdsM3Z1?=
 =?utf-8?B?ZG9wNkxFK1NMY25RRUNPMlA2aGZaSm1NWk01aG11c252NjZGK3NlOUxFYm1u?=
 =?utf-8?B?T1MzdDRUVnpvaEZlQ1RjWUNXa1hidmNvOWJkQVdlZDM4S0I2dEExaSt4bERR?=
 =?utf-8?B?U2lJc1c4SGZnOWtLSmpnWkp1TEVQSTcvN1FQNDFnRkpnSCtyYnoxeUtJcUdQ?=
 =?utf-8?B?OXJQTC91UUtjam42SkxFWlFyR0g1MGpiWnU0V3EvR3VnWWVXN0hYaWJlMjM2?=
 =?utf-8?B?cVZCc3RHemZsbk40eGp2SW56Y2FrVmhxYUhaNEhYQmI2L3lFeGxJZ2s1VGJa?=
 =?utf-8?B?TExjZ04zd295cWJJbHRvcFBac0VCbXZKenBGNDloSDUySktYSkdidmlLQXhw?=
 =?utf-8?B?UUgyNU5VeTZUNkFTTEgwOER6L1ZSMFNGUnJEYW1CSUVEbnhla3NUcHVpa2Rk?=
 =?utf-8?B?QXpSK2h1T0c0QzFYb3UzQlptclRBUXFpYncwaklCSGF1YXd4ZnBrdFI4SGpK?=
 =?utf-8?B?QWxkb3JLWGJzaWZuZDZYSHpldllBbjh4Q3UxL3dRbmlUWDljZHZDaFp3cjVu?=
 =?utf-8?B?dUhoNTZNUjdkTUFIdmlIL0dDdUJlZ1diWW15L3V1bWY2SU0ySmdBL3RnVFlu?=
 =?utf-8?B?anVUTktLc2I5TnNBQlRIKzlybk9WbnlhSFVPS0tBZ1dKREZPU0M2M0hseWJh?=
 =?utf-8?B?UmR2ejlTTkcyMzltYndQTWVlUE1XdzNkS3Nyclo0NnV1VldSbGlmVGFLblZy?=
 =?utf-8?B?bmVDdzJQMFJvb1VtMXg2bW5ncTZpTkJCbExhMDFVR0NLd1NKNWpFa3IwWEFK?=
 =?utf-8?B?SWQ0WDNqQ1dsd0pGTXR4Yng1SERBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4B16BD29E9B2A24B93694C7BF6759E12@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95670f79-7ac4-40a6-9142-08dde4722a2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2025 07:28:34.0888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kx/+aCd8a2TeFTMwegzGnZyD47wmR5P3WQD9x4VRu6Vz/6cMCSZ3rKu12XH9xFB6hANZ1mmNaEs3hmwhSqyA0706CFI74arud4APPHVMTDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6828
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

T24gTW9uLCAyMDI1LTA4LTI1IGF0IDA2OjMwICswMDAwLCBTaGFua2FyLCBVbWEgd3JvdGU6DQo+
IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEhvZ2FuZGVy
LCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IEZyaWRheSwgQXVn
dXN0IDIyLCAyMDI1IDQ6MjkgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IFNoYW5rYXIsIFVt
YSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pDQo+ID4gPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogRG8g
bm90IHVubmVjZXNzYXJpbHkgcmVtb3ZlIHVuZGVycnVuDQo+ID4gb24gaWRsZQ0KPiA+IFBTUiBX
QQ0KPiA+IA0KPiA+IFdlIGFyZSBjdXJyZW50bHkgcmVtb3ZpbmcgdW5kZXJydW4gb24gaWRsZSBQ
U1IgV0EgZXZlbiBpZiBpdCdzIG5vdA0KPiA+IGFwcGxpZWQuIEZpeA0KPiA+IHRoaXMgYnkgY2hl
Y2tpbmcgcGtnX2NfbGF0ZW5jeV91c2VkIG9uIFBTUiBleGl0IGFzIHdlbGwuDQo+ID4gDQo+ID4g
Rml4ZXM6IDliMTc5NWU5YjBhZSAoImRybS9pOTE1L3BzcjogVW5kZXJydW4gb24gaWRsZSBQU1Ig
d2Egb25seQ0KPiA+IHdoZW4gcGtnYw0KPiA+IGxhdGVuY3kgPiBkZWxheWVkIHZibGFuayIpDQo+
ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIHwgNSArKystLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IGluZGV4IGI0MDkxZDI4ZTgxNC4uODhlY2ViOGYwMGZkIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTIw
OTAsOCArMjA5MCw5IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9leGl0KHN0cnVjdCBpbnRlbF9k
cA0KPiA+ICppbnRlbF9kcCkNCj4gPiANCj4gPiDCoAkJZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJt
LCAhKHZhbCAmDQo+ID4gRURQX1BTUjJfRU5BQkxFKSk7DQo+ID4gwqAJfSBlbHNlIHsNCj4gPiAt
CQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjAgfHwNCj4gPiAtCQnCoMKgwqAgSVNfRElT
UExBWV9WRVJ4MTAwX1NURVAoZGlzcGxheSwgMzAwMCwNCj4gPiBTVEVQX0EwLA0KPiA+IFNURVBf
QjApKQ0KPiA+ICsJCWlmICgoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjAgfHwNCj4gPiArCQnC
oMKgwqDCoCBJU19ESVNQTEFZX1ZFUngxMDBfU1RFUChkaXNwbGF5LCAzMDAwLA0KPiA+IFNURVBf
QTAsDQo+ID4gU1RFUF9CMCkpICYmDQo+ID4gKwkJCWludGVsX2RwLT5wc3IucGtnX2NfbGF0ZW5j
eV91c2VkKQ0KPiA+IA0KPiANCj4gTG9va3MgR29vZCB0byBtZS4NCj4gUmV2aWV3ZWQtYnk6IFVt
YSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNClRoYW5rIHlvdSBVbWEuIFRoaXMg
aXMgbm93IHB1c2hlZCB0byBkcm0taW50ZWwtbmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRl
cg0KDQo+IA0KPiA+IAlpbnRlbF9kbWNfc3RhcnRfcGtnY19leGl0X2F0X3N0YXJ0X29mX3VuZGVs
YXllZF92YmxhbmsoZGlzDQo+ID4gcGxheSwNCj4gPiDCoAkJCQkJCQkJwqDCoA0KPiA+IMKgwqDC
oMKgIGludGVsX2RwLQ0KPiA+ID4gcHNyLnBpcGUsDQo+ID4gwqAJCQkJCQkJCcKgwqANCj4gPiDC
oMKgwqDCoCBmYWxzZSk7DQo+ID4gLS0NCj4gPiAyLjQzLjANCj4gDQoNCg==
