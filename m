Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0148DAD3539
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 13:43:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69CD910E50D;
	Tue, 10 Jun 2025 11:43:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z/Y6rvTR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E0110E50D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jun 2025 11:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749555809; x=1781091809;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=y0C9gsWwFwiJSaATJ+YT5uMHyESYQMuICbOuAkPgRN0=;
 b=Z/Y6rvTRzHwbMUWiEweejwOfS5hh1TSZrdPKXoEGnpqLocdM3WiooyKv
 i/MCQvR65Nkkp2OMO2Y+fd6gMU0AsC50AMp7DULHrF2uTblEowCvpRSDo
 Fp/CAMIx1yg6sqcRmPdGXd1StbudvWlZAJ+H3fKpuFIOynvfDTC/UVQ8r
 TcXp2YgGAQfd3Xu1V83LGrrJIoDAIl2uAE0HTaagM0kCaQVsnUR5/7+l5
 8ofgz0x1k3Kk7y+scvVX2Hq1WeBeGclqqXzTagW3QWl5Zbtt20qqiezEZ
 UqFkErZ9V+8ZlIYU9/ucQjnJCho3GhC9Gs1SFPtEijGy1IQKArbTW0Anq A==;
X-CSE-ConnectionGUID: pBg+pD6FQDWGF8TSEYmdOg==
X-CSE-MsgGUID: gM8x8S1gQF6ZvmRdsE1t7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="51649102"
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="51649102"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 04:43:28 -0700
X-CSE-ConnectionGUID: SEgtzaACRtmtI470fpThiw==
X-CSE-MsgGUID: 9b7rRkFmQqWGyEPBbNaWew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="147775980"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 04:43:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 04:43:28 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 04:43:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.75) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 04:43:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LWWNKq8dr8VMJdfTfgTWThccgTSrAE6rwlxBi3o0vxmuxvINddcR5/Itn18KQmsv6dFMGCu3ZXQFpe6xtt7Mq5Md9DBQ6S20ogEjz4z7ZKyCnwkv2HGqK5QYFqQcHiigS7GdSOgBWp3e+y6MqcToMoLnV+s2xDyJHr5XE2R9EGp5VPSHYBIdmkkQHvKhyHT9hvSerrsdLZzZ2UfCSTlAT3jPgWYYDmxMOLRSe5qtrjAMcZN+gl/lsWomC/eKhpZ6jPxeaVNwdaVAkNKpSOSaI5Cc/r5FNex7iWbkM7RL/1hcdmcUqCCYfgE7fR1zD7bHMN/DV84lj+y1e/vi9I3/7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7vqONGjbk2z+xMcVIwkgDgosw3uZR7nhmpt3yGZWwfE=;
 b=qMZZWchKmG0vd4jig/bC5u1H7W8mprEJtSWXlRJiG5cAvl9EWAhYP3Qr+1fPjj53plvKeO13Meus27FovYHBxFrL67iYmVSmoq/bDbDXlXF+Q1xR0Hyl4CqSm0vzHlwa/n/29y2LK+OpMo9n4lkldGwCoPPh1RFanUR5ZT5b4SgJ55K4udqzOwLb3WRxo5/3Np9HA/GZPf4HW9llXOIEHybKM4h+UTJ9JAYHLveU2PO12AEPD8339Im1oHQv3TzU6WUzhRc7aRaQSpGLAkv7NIYf0cv59RpL9pbKV4IMzfMYNbpAde01+FZrI2WuOEQ2XuriwdvajDRiHhSXEn93CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by DM4PR11MB6429.namprd11.prod.outlook.com (2603:10b6:8:b5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.27; Tue, 10 Jun
 2025 11:43:07 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%6]) with mapi id 15.20.8813.024; Tue, 10 Jun 2025
 11:43:07 +0000
Date: Tue, 10 Jun 2025 13:42:57 +0200
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>, 
 Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <zxfcptlxxtii6smmberh4jz7dx5bml4c5wrnrn7t6irgenni6d@7u2r4ylsvupk>
References: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
X-ClientProxiedBy: DBBPR09CA0020.eurprd09.prod.outlook.com
 (2603:10a6:10:c0::32) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|DM4PR11MB6429:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ed4d154-459f-4a73-6310-08dda813f7b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHRaMnNlRWxnaXNjamRiTUJ2VHI3cWNGQzN5RnVud3NCRGVuejlNTkVUYnk3?=
 =?utf-8?B?d2pHNzNiRERoc1pwN0VGUmZJVGgzTlFscHFOb29ZYkNRWWlESkU5eEY4bHF5?=
 =?utf-8?B?WTNYcXBLU0dub1VlWWZ4a2hYdGliTVVSY3N3RmRRQ2F5WG8rQjJHcldnd2Jw?=
 =?utf-8?B?aDJNY1BxMUJpWkxNM2VTMXFmMThaZVNjdW9xNzloUjZPQ29qZy9OaXZxSXpv?=
 =?utf-8?B?R3FQeFJ2eS9lYm1KTnFoTkVSSFRVL25LdXpwb2ovTUJxZGRiS21yR05YK0dl?=
 =?utf-8?B?VzM3U3cycUxyYlN1clJmNnpFRmhESlZXc29rU0srNEtKbVN1UUc0WTVJWWc5?=
 =?utf-8?B?cXF0bGVlUkhhMy8yMUxGRUwwL2wvNWNwMXAxYk1vUEdQMjEzOFVNUjdPYXlK?=
 =?utf-8?B?eitTaEdpcW5mY3BZL25YRXRscEl6OHFPYytLakVOL3o0R3ZNUmF0U1c5Nll3?=
 =?utf-8?B?NTBETXF0cDBIRGxoTjRDL1YzOTJTMTQwcWZ0dkgrZmtCTDNQRmVxZXUzdlZn?=
 =?utf-8?B?MURidXNYOUtUZ3puTXFZL3FEQUxiMnNJUkJaVjBEbG1wSVF2R0p1aHNVSFhk?=
 =?utf-8?B?MjNWblhTRXFaVDYzdldsVjVhYTZ0eXlrTUoyVTc4d1hTUkZiT0RqeHN6elM0?=
 =?utf-8?B?MzhPSUJCQjZBZmdpaHE4L2xMOE5EY21UZlZGY20wTEE1blhEK25HME9WRThO?=
 =?utf-8?B?UUgvTEdZZ09kelFhQytWNnBvU3psM2d3ekQ0K01LeDd2aG5aQWQxcCtDcy9S?=
 =?utf-8?B?bytvODZpQk4wVEUyMWZuZGNzMDlSK2U1WmhwYTFROTJDalM3dzlSSXVWZXV0?=
 =?utf-8?B?Szk4cTZ0NFBjZzR3WEdtaDVScFpGZHRaV2RyUHVDSmxHRVZLc0UvdXFwdmdl?=
 =?utf-8?B?ODdNdHhaVm9Gd1owWGQxWkFZZjlxYlpYNUhwN3ZTV0JBY0pIUG9BVTFjUjV4?=
 =?utf-8?B?Qm9oVnQwa1A2TTdibGlPYTFJanFtU1dSRmlsUTVtaE4yMVRHVDlMRG42VlMv?=
 =?utf-8?B?bE5naFpqUld5TlJyN1FUZFRHYUk5VHdWSitrd1V6RitEYXRoVG8wZnAzd0I5?=
 =?utf-8?B?MmlCNEVmVU5xbE82Vjc2c2tsbDA2ZHJJcGpaMTZKQXpjM1MyVXZOMkYvbXli?=
 =?utf-8?B?NzZ3VHlyckNxczNNSW5lUGVhVVFKUTkySkZTV2syS3gvR0E1SXFNbkY0U2Vn?=
 =?utf-8?B?UWtZU25HSEtBSGxmNkhSNUgzTUsrZHdYUS9JcXpwY0RkS3lndDgvUGNMdHVy?=
 =?utf-8?B?ZVVKaE1iNlNyNmtyQ0VFaE5CTUNtK1NRd0tUL3NMRHZWdi9XYTBlZlJlaTUy?=
 =?utf-8?B?a0dQYVc2cXlBUXM0ajcxS2Q4QWZuUTBYYk55bTBuSDYySVJHS1JzYUJ1OFh3?=
 =?utf-8?B?Q2F2cDY0TkRSTUJQQ3o5UzVha1Yxb1NVY3lpZFFLNWhOajVxbmZ1UFhNeklr?=
 =?utf-8?B?QmJiVVV1cDhhTVRscktvSnhJRFJWbk9iSVdkWlZUOEk4b1JKNHZIa2IzT1JN?=
 =?utf-8?B?QkhLbklHcFNqMFZRUlp4MS83a3dmbGVFTi9TN1FnNlRPRW9NbUZ0RWlJbnA1?=
 =?utf-8?B?ZjBCN1Jud1BFK29pR0NsSU0wYm1jUzd0U282UWRVU2k4d25tM1pBOFp0aDlY?=
 =?utf-8?B?WEJ1eThDaThlTGxlSFQrVytCdXd6YkwvQ0ZNdGhzMk9Ec2FwQnhVcTV5SEJU?=
 =?utf-8?B?U2xkY0hvWUhEWlZOTXJIUXFHUldrMmZpMjVud3ZTMlArVENHNHRlb0JobmIw?=
 =?utf-8?B?T0dvSXpqZ0hOUHdHYUNaM3ZBSHJSM2ZBKzdNdDJpcHBQaHczSG1XUzAwQ1A2?=
 =?utf-8?Q?5+rw/3HTKedtJzaDMie9ozpMZokMI0Ua3d8gU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFBXaVg4RWtPc1kwVVNrcHBwajZKMmd4MGowL1A4YVhYUGxtbS9pQ2RZc1E2?=
 =?utf-8?B?SG9qWjB2b1JLandjMktTNlVnZ3I2blhqOHAvNTY0cHFTZUNXQjEvQklxVkhs?=
 =?utf-8?B?UHpYZmRKTDVCRHpXRk1KYm9mNVdQZS9rU0VuNklaaXdVeDZyYXNYQTVIVmhk?=
 =?utf-8?B?Vno5SjFKNWVRakVBc242RmpyTklWenVkZllnV0FqNzB5WTZ3eEhpWWdtWU9U?=
 =?utf-8?B?NFdINEVYNnE5VEpQUlZiN20rVFE1MG5UblBoWVFjS05kcndDWUtDeWZIdTg5?=
 =?utf-8?B?SXR1cGZmajNqcDMyNUJ6ZEVKOEswT0trNjcwOXY1a2F4b1RocmpOTXpDUDYz?=
 =?utf-8?B?aTNEczBoTDFhRC9QdWlwV1lxVjRJeXRmVWRHUkZrZC9KaEdSajVaZWRnRDJC?=
 =?utf-8?B?VUJ6UnE3WlR0QjFDWDlIelo3Vi9selNWWGh1Mng4RTRXWUxhZVJDemU5M2ZM?=
 =?utf-8?B?emptbzIrcDM5c3NZOXRRQzBGY2hoQTBDaUFBRCtnNHh2SUJyVnRSbVpuUFhh?=
 =?utf-8?B?bm43OEtpTGVvNGFsa1BsL3I5VmZoUzRTTzhJSnNQOE5Na3NURCt4OGtvWC9x?=
 =?utf-8?B?NFI2QmRZWUJiSGZPMXZ3NWw0OWtlRkVtbnM5bmxlbjk3RktSZzBRbWp5T2pl?=
 =?utf-8?B?VWlmTHJIUE1PK1k1cjEzRkMydDN3Q2puR2lVL2piY1BoMjk4VnFDdGc4QkZj?=
 =?utf-8?B?RXhzSFhMRTRRRnd4bkJBdXY2VHBja3M3ZVpZZ0V3WUwrMFgzUW5CdXpHL1pm?=
 =?utf-8?B?dVhCUGRXSkZydnZKRW5LTG1WOXAxWXRvdjZKUURLRmJ4MGtjTjREUC96QTJE?=
 =?utf-8?B?OVlkb1BDV2x6cm9aQklaVHhnOXRWc0VuZGZXVlU2YTA5eU9WVVpWYUZrYzJV?=
 =?utf-8?B?WWE4bTkydjNUclllay83Uk1TK2tnRkxFRG1DMWZDU2RaYUk2Y2VsS21nR1Ax?=
 =?utf-8?B?L3Ezb2I4cysxaWtSYjhoSjlFa1BzVFVqcmJUS21lTVJDWC9sUkpSOXEzS09n?=
 =?utf-8?B?SFE1V29zT2RhVDA5TDJjQlVhTlJYUWc3Vlo0SUZEOXJZM2tYYkRTSE85MXBF?=
 =?utf-8?B?N3Q1bGpNdFd1dEk3bzRONWJMZnQ0ckVDMmxTU2NlRFRySW44NXEvOU1aMDVv?=
 =?utf-8?B?UFMwRFhSNUdKdm1DZlhranF5VXNYWWY2NTcvRlVpb3phcUh5NlhnVVpJZ1Rw?=
 =?utf-8?B?eHl3V1VXa2hzYXhaZkZsNzlacFZ3S2duaEhtL0F0WjRzS20zRWFoT21nSnND?=
 =?utf-8?B?RzZDdndCWGlsSCtNMVhoNkZCNHl1YXdabnhsYkpWeEZ0VjBYRmJ5OXd2NllU?=
 =?utf-8?B?ZGEwQ1lrS1RkdkQzNUZ4RGhPdjRwem5FNTQ2ay9uT1FuUGFsOVhpK2FQVmxK?=
 =?utf-8?B?VG9zeC9kS2FZOTNJUHVqTWE5Ynp4R1ZIekN3c2EvYnVZc3ppYklsZjMvNjN2?=
 =?utf-8?B?WVZ0eWlDTHlVRWVLUFd3OUxuZkU2U3Q4cDh1YkEwaWQ1VWIwVWFxVHRXRXBI?=
 =?utf-8?B?MWk3QkhaWVhhM25PZndxbUVkSmdJZmp0Nkx1bUhza2RrNHJSOEVzNDFoU0l0?=
 =?utf-8?B?aTdaVDNydzk1dHRGUlpxTEdmcUhsT2NCN1N1dGt3UStDY29PRUJoVDBBRnpx?=
 =?utf-8?B?Y0E4VjN3SG9CT1IydkppVXoyNU9lL3lvSXNKQm1Ma1diODJpRGlDQ2JpbzZB?=
 =?utf-8?B?eHFtbzlITENQYThGU0c2d3pDc1ZPeFVERDN1WkRlYlhveElmSUtnNzdSYTU1?=
 =?utf-8?B?ZFNxamovQ0FxTWtyRmNqOVMvenZwVEI1dWxDK3J2MGJYc0JQODVaaHRnSWZD?=
 =?utf-8?B?cm8yM0E3Y0huMEJaQitRL0puam1GVUswL2lkQlRUWnVjeVlLU1BHU3dKTjJV?=
 =?utf-8?B?UjRTRUZ6R29jY1FhUXRlMFJ2VXVDMWJDRnJlMTFwdmZFZkhmMWhPa2JWSHll?=
 =?utf-8?B?RHRDOUJUTUxqa0ppQ3VyUXUzdS9pY3FVWHp1cUo4cjRiZHhZN3lobTEyb21F?=
 =?utf-8?B?V0twdkVHOE0xUmZGWERhQmk3N2twaWYwZVEvQTBZcEpkTytuakZvZUdsdmdT?=
 =?utf-8?B?NGplZms3MXdmSEc3VFI0b3I5cktaMXpvT3YzZ2F5YzMyWDFuaHd2RzlwOUtV?=
 =?utf-8?B?bDRBRitPNXVTWnN6N0U5N0Z2cjk2d044NEhTTmEwMEVZS0grd2JrTnp4L1Q5?=
 =?utf-8?B?bEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ed4d154-459f-4a73-6310-08dda813f7b8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 11:43:07.2147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9JBP9OUdxJwiwdtUz57HaAUZImEcU9jAiZ0deLOMVrsxD2rXKo7MXhFKmUlwR+jYH1XkJ+I2EI1KkAMfIzM3KQXQKiNDOf2HmYjCzvmDWHg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6429
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

Hi Krzysztof,

On 2025-06-10 at 10:21:24 GMT, Krzysztof Karas wrote:
> igt_mmap_migrate() tests migration with various parameters.
> In one of the cases, where FILL and UNFAULTABLE flags are set,
> during first stages of this test a mock file is opened in
> igt_mmap_offset(), which results in allocating some data in the
> GPU memory. Then, also in igt_mmap_offset(), the file is closed
> (fput) and the cleanup of that data is scheduled. Right after
> that, the test calls igt_fill_mappable() to fill all available
> GPU memory. At this point, three scenarios are possible
> (N = max size of GPU memory for this test in MiB):
>  1) the data cleanup does not fire until the whole test is over,
> so the memory is fully occupied by 1 MiB with that data and
> N - 1 MiB added by igt_fill_mappable(),
>  2) the data cleanup fires before igt_fill_mappable() completes,
> so the whole memory is populated with N MiB by
> igt_fill_mappable(),
>  3) the data cleanup is performed right after fill is done,
> so only N - 1 MiB are in the GPU memory, preventing the test
> from properly faulting - we'd expect no space left, but an
> object was able to fit in the remaining 1 MiB.
> 
> Amend the problem by keeping the mock file open throughout the
> duration of this test and calling fput() from the test itself.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> 
> On DG2 platforms the memory for data allocated as a result of
> opening a mock file remains occupied until the test is done
> (scenario 1), but on ATSM cards the data is freed earlier
> (scenarios 2 and 3), which leads to sporadic failures.
> 
> During testing I observed that the max memory was equal
> to either 4096 or 2048 and igt_fill_mappable() tries to allocate
> as many 1k objects as possible before halving allocation size.
> 
>  .../drm/i915/gem/selftests/i915_gem_mman.c    |  6 ++-
>  drivers/gpu/drm/i915/selftests/igt_mmap.c     | 54 +++++++++++++------
>  drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 +++
>  3 files changed, 51 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 9c3f17e51885..1fe4a45d3efb 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1176,6 +1176,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  	struct drm_i915_private *i915 = placements[0]->i915;
>  	struct drm_i915_gem_object *obj;
>  	struct i915_request *rq = NULL;
> +	struct file *mock_file;
>  	unsigned long addr;
>  	LIST_HEAD(objects);
>  	u64 offset;
> @@ -1200,8 +1201,8 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  	 * level paging structures(and perhaps scratch), so make sure we
>  	 * allocate early, to avoid tears.
>  	 */
> -	addr = igt_mmap_offset(i915, offset, obj->base.size,
> -			       PROT_WRITE, MAP_SHARED);
> +	addr = igt_mmap_offset_get_file(i915, offset, obj->base.size,
> +					PROT_WRITE, MAP_SHARED, &mock_file);
>  	if (IS_ERR_VALUE(addr)) {
>  		err = addr;
>  		goto out_put;
> @@ -1299,6 +1300,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>  	}
>  
>  out_put:
> +	fput(mock_file);
>  	i915_gem_object_put(obj);
>  	igt_close_objects(i915, &objects);
>  	return err;
> diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
> index e920a461bd36..237ad91cd009 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
> @@ -9,14 +9,14 @@
>  #include "i915_drv.h"
>  #include "igt_mmap.h"
>  
> -unsigned long igt_mmap_offset(struct drm_i915_private *i915,
> -			      u64 offset,
> -			      unsigned long size,
> -			      unsigned long prot,
> -			      unsigned long flags)
> +static unsigned long __igt_mmap_offset(struct drm_i915_private *i915,
> +				       u64 offset,
> +				       unsigned long size,
> +				       unsigned long prot,
> +				       unsigned long flags,
> +				       struct file **file)

Keep note of here...

>  {
>  	struct drm_vma_offset_node *node;
> -	struct file *file;
>  	unsigned long addr;
>  	int err;
>  
> @@ -32,21 +32,45 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
>  	}
>  
>  	/* Pretend to open("/dev/dri/card0") */
> -	file = mock_drm_getfile(i915->drm.primary, O_RDWR);
> -	if (IS_ERR(file))
> -		return PTR_ERR(file);
> +	*file = mock_drm_getfile(i915->drm.primary, O_RDWR);
> +	if (IS_ERR(*file))
> +		return PTR_ERR(*file);

and here...

>  
> -	err = drm_vma_node_allow(node, file->private_data);
> +	err = drm_vma_node_allow(node, (*file)->private_data);
>  	if (err) {
> -		addr = err;
> -		goto out_file;
> +		fput(*file);
> +		return err;
>  	}
>  
> -	addr = vm_mmap(file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
> +	addr = vm_mmap(*file, 0, drm_vma_node_size(node) << PAGE_SHIFT,
>  		       prot, flags, drm_vma_node_offset_addr(node));
>  
> -	drm_vma_node_revoke(node, file->private_data);
> -out_file:
> +	drm_vma_node_revoke(node, (*file)->private_data);
> +
> +	return addr;
> +}
> +
> +unsigned long igt_mmap_offset(struct drm_i915_private *i915,
> +			      u64 offset,
> +			      unsigned long size,
> +			      unsigned long prot,
> +			      unsigned long flags)
> +{
> +	struct file *file;
> +	unsigned long addr;
> +
> +	addr = __igt_mmap_offset(i915, offset, size, prot, flags, &file);
>  	fput(file);
> +
>  	return addr;
>  }
> +

and here.

To me, this has a bit of code smell. The double pointer needs to be passed
to the helper function if we want to acquire the file inside it. However
we can also just let the caller handle that acquisition, especially since
we have it call fput() anyway. That way it's clear that it's the caller
who actually has to manage the resource during its lifetime. This will
also allow the helper function to take just a copy of the file pointer,
getting rid of all the redundant dereferencing inside.

So IMO the usage should be more like:

<in caller function>

unsigned long addr;
struct file *file;

file = acquire_in_some_manner();
addr = __igt_mmap_offset(i915, offset, size, prot, flags, file);

/* do some operations */

fput(file);

</in caller function>

> +unsigned long igt_mmap_offset_get_file(struct drm_i915_private *i915,
> +				       u64 offset,
> +				       unsigned long size,
> +				       unsigned long prot,
> +				       unsigned long flags,
> +				       struct file **file)
> +{
> +	return __igt_mmap_offset(i915, offset, size, prot, flags, file);
> +}

Also given the above I'd reconsider this function. Since we're now
expecting the caller to acquire the file anyway, we could probably just
put the body of __igt_mmap_offset() into igt_mmap_offset_get_file() and
call _get_file() from igt_mmap_offset().

> diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.h b/drivers/gpu/drm/i915/selftests/igt_mmap.h
> index acbe34d81a6d..756ccdf6fd69 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_mmap.h
> +++ b/drivers/gpu/drm/i915/selftests/igt_mmap.h
> @@ -11,6 +11,7 @@
>  
>  struct drm_i915_private;
>  struct drm_vma_offset_node;
> +struct file;
>  
>  unsigned long igt_mmap_offset(struct drm_i915_private *i915,
>  			      u64 offset,
> @@ -18,4 +19,11 @@ unsigned long igt_mmap_offset(struct drm_i915_private *i915,
>  			      unsigned long prot,
>  			      unsigned long flags);
>  
> +unsigned long igt_mmap_offset_get_file(struct drm_i915_private *i915,
> +				       u64 offset,
> +				       unsigned long size,
> +				       unsigned long prot,
> +				       unsigned long flags,
> +				       struct file **file);
> +
>  #endif /* IGT_MMAP_H */
> -- 

Thanks
Krzysztof

> 2.43.0
> 
