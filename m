Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 058D4BD502C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 18:26:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6899310E48A;
	Mon, 13 Oct 2025 16:26:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T3JAtl0e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97FCA10E464;
 Mon, 13 Oct 2025 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760372814; x=1791908814;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nf9Eo3R+BS/7melcVCJSWI4XdYBpXfTWpnjuOAAWEq0=;
 b=T3JAtl0e3/z2h/AhqXj3khYbKmYxkTCPfhROjkfzMEf+B9XGnuvWALU1
 kk1stL7hpwAeAfxqo0Ma4UUL8rYEqT1SBsX0jVOtkIvyCwCyRF0PUzDA7
 4NFY6Nt6uO5zSzf4taiunIj/K9VIW9RjbH8rV2QJv2so9vPWUtrH/xXnO
 KzRge2rWMu08tCGDBX2wTWjhQmodDTU6qH89o0ipf2HmoYDdkUO/JCQPk
 aEB34fgRqGmw+Nmty4xse99TWdqVlnFSYQks+vjCWnbnPgBQsSrsAnENt
 HRDRboGDy67DUZl0ojcv7a1tcurMn0UdR7SLjcdXay22hnUGHXwnhCC5s w==;
X-CSE-ConnectionGUID: 9uT4Hc4oQ6+MBvuaHDWBow==
X-CSE-MsgGUID: nnLLpHmbSnq5O3IMCY0vgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="62669963"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="62669963"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 09:26:51 -0700
X-CSE-ConnectionGUID: s2AugztdSoKCQFj7xlyddQ==
X-CSE-MsgGUID: Cm9mfvRBQ3Wl4GCuzOIodg==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 09:26:50 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 09:26:50 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 09:26:50 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 09:26:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WXG7xw6hjGWWdkCUwkCvUuHlNUjZSh0X1gL53zg3gZ2ZpIXyt2fAhnKxxSyxMJ40QZh1jVA0dUn6TKsDxJSDCoyxvdJv/YRCVinf9C937ii5AnrBBslbpFtKu+JEn/a/xRA/AQ3hFPshe6wndTUbk9Z13o4VkRZ9Ud0h1IslL3RnxRxDNOlH+1NcCOk6+YprzYNOsqNoXCkfaS1dmoBRssQWhE3vQTfOAqLGtBx4y90PZpw8fZkjJ3t9mezlYOTUqreP9oIre9nXNwh5Czi+f4u9tkfV11vGaD/WsDpKQ77+2qH8HNi1k98KbOArOj6KGeiPIRRtDGDo9Kb/A+MbrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nf9Eo3R+BS/7melcVCJSWI4XdYBpXfTWpnjuOAAWEq0=;
 b=ZXo8Nmyl88EA2AnOZZkRcgY5Adz21CYVxep0FfkXk/z7fgIYTO3W1nmcoMv7O8phhTMVad5WhZTYaDcH258EhFVtD1tczZho7p3jQTqtpDGWaRnRE/lDwp6C4sNLRhCKZj+AkWU5btTINR0qW7nkKLZS2lAIhDnIjNu+WNjaMvZc2D1LEmUQQNCx7pB9abGgxby4d6NZadyCqlKdAQkuORyUqQaRb0tqbiwasw3SYmym09H9IA+KZsIN/J0iHRmyu+cVLdu0m28K5i9c2ChGUEWjXaHt9SaGNwXfBAgo413nj9He4xY+/JQq6fg0hBklOF+NV2h3zi9zUE9TpVHF6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB7472.namprd11.prod.outlook.com (2603:10b6:510:28c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.13; Mon, 13 Oct
 2025 16:26:48 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 16:26:48 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC][PATCH 04/11] drm/i915/dsc: Add prefill helper for DSC
Thread-Topic: [RFC][PATCH 04/11] drm/i915/dsc: Add prefill helper for DSC
Thread-Index: AQHcOIEYnYwTOhcEjUWigIV5p8R2iLTASyRA
Date: Mon, 13 Oct 2025 16:26:47 +0000
Message-ID: <DM4PR11MB63608383DF0CFB29E380AF57F4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20251008182559.20615-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB7472:EE_
x-ms-office365-filtering-correlation-id: e494f3aa-009c-4966-0595-08de0a754eae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?Sm1OVGFwd1ZtZ3N3ZnNqcTBJZ3UvNVBjdEpBZWQ2M3N6b0Q1YjBNSmFMZWNK?=
 =?utf-8?B?UU5jaGVrR0VnQ1R2ekp5UTdpcVZnRCtDbG03YmdpR0I2bjdscy9LYkVGaW5Y?=
 =?utf-8?B?UFh4OUl1Z0w4Yi8zZExQQ01sYUNJM2Q0YkNaRHBHVG9iS2hLQmo0azh2aUgv?=
 =?utf-8?B?SlRaT3k5VVhxZU91QWthc0pGWWRyeWpZQ1YzQ0hZZVJacTBEZnZabzJwa1c4?=
 =?utf-8?B?ZGZjK3puL2g3bFpiZ0RhMjdUNnJZTjhmK2NsMWtkN2xFWlhpTC92Uy9qcjZ6?=
 =?utf-8?B?SEMvVzVLNW01bVgvVFNyVDVFSGlUOGJjRjU0S2l6VDUxQjdiaURVdmdBL2Jm?=
 =?utf-8?B?VFhCN2tPT1Iwd2N5OStlaG9mRm9rTkVRejRKd0Ezc2dWVW5mcjFlSFAwaXh6?=
 =?utf-8?B?RnYvcVZjOTdwL1JnWUh3U2llb2JSNmlyNzhHV1cxWG5NZnhzL2VDZTB0SnNB?=
 =?utf-8?B?V0NndFNhbkVjbDlWRlhIMjFubjRmdzExYXIveG4vVmcrWks4L00vYzFBRjNv?=
 =?utf-8?B?cE05QmpEZmpPSjcxbVM0dVc4NjR6a3ltU29pejlJWVlIbVZXY2dJc2R0Rkc5?=
 =?utf-8?B?NEVtNXdkK3ZUVVdVNmZwMTZNNmNyYkNTdUs0UytkRXYvd0pseEdmMStOendm?=
 =?utf-8?B?MklTRGU5cnJmZUlXK1RhTGdoVTBQVjBFd2FqOVdCZkJPc2crTklJVnZLcU0w?=
 =?utf-8?B?VHZPRVBwbm13b3NmMnNQN09mL1lMUWtjQUFVM3JaSmZKWDNzTHRCNjc5VHlI?=
 =?utf-8?B?M0d3TllMWjNwMWo4ZmhhV3hZU0JxNExOK1I3YmovSHV1cDd0NFZJbzgvYjdw?=
 =?utf-8?B?ekxjTFovUmZoR0g2dnhrN01LeDFhcEc5OGc1dDVPT1B5TktPaWhHbVlQcFNV?=
 =?utf-8?B?cGZYcElUeVFsTGR3dVVOM1J2cFcrbXh3YkRlUnlGQ2dtU3FPQzJuaGxwKys2?=
 =?utf-8?B?bjRBQ3ZXRmZGLysyS01Nd2l4Zm9BOFF2Z21LeGV0UEFpck9qUy9YaE5abnBX?=
 =?utf-8?B?OGtzajZ1VGk5ak5FYUxtZGdDaWZvRUlQS1dlZ2d3NG5QRUh3LzR2Mm81T3pI?=
 =?utf-8?B?NGtNMDBOU2hrS2FVYzFyYUllczFQMnl1N1Niek1BRUI3eGNvaW4rWGFsNXJ2?=
 =?utf-8?B?ZHlqUFVuaGRnU1JUSVdzbnFGcWtRWTgvMVg0MndWbUNzWHBJMjNCaHhMOWVq?=
 =?utf-8?B?SjF0MW44SGloWEVCWHpkSnQwVkVxUkVSNmN1MjdVU3JkVktrTE5zRUk0WUFX?=
 =?utf-8?B?UXVkZVV1WWVKR21kMk9pYWpsQWNYZ2w1alkwUVR0eGQ3R3FvczR4QXQ4azd0?=
 =?utf-8?B?V25YbUoyd2pydk9JV0taQzM0YUFQbzJCS0xITFhtYkNyVUJ1WDArT1A4cGV4?=
 =?utf-8?B?UDYzcFhYcWNBRi9LR1lCR2NuZnU2UU5SemZKOFR5K3pxUEdjT0pNUVppSURD?=
 =?utf-8?B?UDdYZHBnVnlWRUJEZXdWMnZ4V1gvSk5Wd3FuM1kvKzJOaUs4aE4xWXRUS2RF?=
 =?utf-8?B?dHUydFBwaVQ2c1lPamdFejhaNC9LR0d1ZHJYSmpSZzlHZGdjN0p6QzFoVkM2?=
 =?utf-8?B?QXRwSVNEaEZLT3c0N1NWaXlodkR5ZG10Sjl5WHRTT2xWWEdyL2Nua1puc1JW?=
 =?utf-8?B?Z0RDTW5ERlhJUGlIY1VSb3AvQUUzZ25NQll1THNyZjdpTG91Y0tQSjZHb2E4?=
 =?utf-8?B?VU5qTTE5YXJaVzNNY1hSN3JudStHL2hnTXk5a2wxTkZxNU1BMWs4MDdmWE41?=
 =?utf-8?B?Y09zdGlZUGlkZW12amw2TkZBeTRldEdVTXdOTy9XVzBFaloxYno3M2VjcE5H?=
 =?utf-8?B?dTJKSFJnU1p2ZTFib1djelpxK0NNS1prNFpxWXdLTHdDUmFkQytxNy9Ba2p2?=
 =?utf-8?B?T2t2Unh6UmZGUlVVRC94L2xiK29hZUU0eTBOSlcrTlNhT0dUaTBORUhFOEdr?=
 =?utf-8?B?Ylc5b0h0UUNrQmpqU3hpb3QxN0lTMWRMZ3RHbVhKaWQ0ekE1K3U3RVhUUHRN?=
 =?utf-8?B?bDlWekQycFU3L1JuR2JzNlRFVUZRKytoZTJ6cmdRa251V3l3MFgzUmtrY05r?=
 =?utf-8?Q?hp34qu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z01HM3pvcitCVzNTMDhTREhUQVpxcE5oVjFvalNEOTRsOHgyS09tVTh4amZQ?=
 =?utf-8?B?a0FwY0xlV3AwM01lTnlod3FBemtLVDRrbHpTSEtkNVFIdWJvd0lpRkFjMjlL?=
 =?utf-8?B?blVIcnpTeUh4dFMyamh6RE92UWVDMFNEeVBTVVkyK01IQzN1S1F0K1pRVHo5?=
 =?utf-8?B?aTJlc1hPR29xWGxRNkhEU2FNOVZ2aURqQjFiTDR2WWJsS0kxTU4rSjdnQVE1?=
 =?utf-8?B?OXZ0VkhhNGtuRFIwVXZtdEdtdDZHeEYxc1pDYm9PUXF2ZUlBVnhpaTJnT3dP?=
 =?utf-8?B?L1A3azNvTjdkeFlSRWtqSnFXaWVNNkN5T2p4UGlmakN0Q0VsSXZnY2pBZ3VB?=
 =?utf-8?B?K0t0WTBydWtVVkNnbCt1VjJUTW5EMWNKeDdIU2lqTytJSDVEMENMSHZnTUx4?=
 =?utf-8?B?dHVVSUVaU3dTLzJVVHQwWjJQT2p3KzZSOGlDamFGdWRISGdES0FScVQ5WS9C?=
 =?utf-8?B?Rk1Lbm5FUGNhTG8wMzd5YTBLWGhqbXlxeDFMd1pXaG5KUUxHK0pBTHM0LzZY?=
 =?utf-8?B?RU1jVFZBSHdUVWwrc3BFcm5tZjZDdmJIajZsVWwyODRqQ1NJOTd4VnA0SmdW?=
 =?utf-8?B?NGJXU04xa3pLdWdqaVIxRytQTHRkZGxoeE9jZ1N5SlNTR3VqeHg2RFczYWx6?=
 =?utf-8?B?ZTRiVWlubjZPSUZRR2lEbHhzbDY5Y0NOTnorVmF2OURlNWg2VG5DY1I2R281?=
 =?utf-8?B?VEd3eEhnMWRPR1E0UGZBRVhBcVcwa0NMLzNTbU0wYWxNaVVkSjY0QTdGU2pG?=
 =?utf-8?B?bFh5VitTRS9KM0ZsWTgxbzRueDVhOVllZmhYQUtpdXhsSmdGQUNUOHZadlhV?=
 =?utf-8?B?VVNrK3BYTEhkdWR3UHBvY0dqYTJhWEd5amZCcldFUysxcjhJMFVTb3orbWZl?=
 =?utf-8?B?U0NmY0hjR2tMdkNxTWJlNXhuRlRRM3FxbVVieHh6QWplc2srMlcxS3JmMmdx?=
 =?utf-8?B?Skw2aHFUWXdiMmRDR0JYYWZnN3g1SmRtVS96SDFGOWRRMlBOQm8rLzZXYnZM?=
 =?utf-8?B?SWxSM2Y5UnlZZTFUanZXR0hRbGZpUnZiYkR0T295VmZzMGRnZ01kUVRhWXdi?=
 =?utf-8?B?WWlLOWpIUE9TK2luLzc5U1VSeWg0d3Z6eG5rRlZLemVGcGdHenBmNG5Pd2hY?=
 =?utf-8?B?TjFWSndLTkt0eGVKS1dOek54elRvQnAxUFNKRHlRRlNsS1B6NWFBVDZMS21O?=
 =?utf-8?B?V2NXVHFtM3RQYWxTTXlPZmNHdnpXYWlocFdRVXhlbWVXL3h4STRXQWZxQ2lT?=
 =?utf-8?B?Q3RlemFyTjRBYVJ4YVNyN1p1ejdSTXZCMitEcG04ZGlwMmhEeGlwU282d3pq?=
 =?utf-8?B?WW4vVnNlK2FyeEJXaDgrM3AyaWlla3BSZTUra3NSYXBIaGVTQWtjRzdJRW1x?=
 =?utf-8?B?c0gxNEcrYitjcUVIcnhiTytEMXlUZnhHa1VPTHVaa0lXaENVeXI5bWhJMFdt?=
 =?utf-8?B?UEtFTHVUWXcwUzVTYlBENEg4SndabDNTN01xUGcyeG9yaHhsZERhM3hZNmV4?=
 =?utf-8?B?UDBVak5yZ1Nia0ZWck84Zi8wcDl5N2RiMWdaK2RHWC9YNDNSbmVTWkJ6S3Q0?=
 =?utf-8?B?TXpzMzI4eHo5SFVONG15NGdiNmV2bEZVa09ITmNNYnVIWGJabnJCbjFuVmFG?=
 =?utf-8?B?L2taM0R3OUpYVDFWNVNURjhmeXV4ZHhIaGlRdzVGalFuRGFWTEZNU1lTR0FG?=
 =?utf-8?B?dzQ4R1d4S3ZHZ080bktXVnpDTTdEWjVXUGVHcTVJNjZDRHk3OGlacjlUZ2w5?=
 =?utf-8?B?V2JIY09pMWhJaEE4azJTODdUK3ExQVQ4Y2IzY3RJcnB4amRaUU0zNVBzQ0JE?=
 =?utf-8?B?dERiS2ltQ2J1T3ZMT1V4enlyK0o1RWtqb3VsYWsyUVlqSVgvUXZETDR6ckdj?=
 =?utf-8?B?Y3dLMjFyNkp3NEpFdGVibzMzV0dYREdTZlNCK0RzNTFGRmVaaHgrVllpRHNJ?=
 =?utf-8?B?NGxIeWtQRktnQUpoZFIrbE1LV1dEZHByQ3Z4b1FJdWtpQS8yWllJYzF2bjJC?=
 =?utf-8?B?alB1QUNLNXpyU05NRUMyWTdIeGVWM3NFTVpDL3hWejNmbUdvTkxTZGdxdGRx?=
 =?utf-8?B?ckpoRGxHQXhjRkREQ20ydGhuY3VxTlozUkpHZlI3RmE1aUxMSEVaYWdxd05p?=
 =?utf-8?Q?mqb2pKtGepXKVptH0c8BRPNFx?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e494f3aa-009c-4966-0595-08de0a754eae
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 16:26:48.0178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nb5spLKwW+1UwTJOINt8gfQDOXJf0giR9DHFXXfoVmM++zIGpdLVMBIvTlN7/NlTfSLbTyL+/qYls4cE7fJ2Ag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7472
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgT2N0b2JlciA4LCAyMDI1IDExOjU2IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1JGQ11bUEFUQ0ggMDQvMTFdIGRybS9pOTE1
L2RzYzogQWRkIHByZWZpbGwgaGVscGVyIGZvciBEU0MNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBBZGQgaW50ZWxfdmRz
Y19wcmVmaWxsX2xpbmVzKCkgd2hpY2ggdGVsbHMgdXMgaG93IG1hbnkgZXh0cmEgbGluZXMgb2Yg
bGF0ZW5jeSB0aGUNCj4gRFNDIGFkZHMgdG8gdGhlIHBpcGUgcHJlZmlsbC4NCj4gDQo+IFdlIHNo
b3VsZG4ndCBuZWVkIGEgIndvcnN0IGNhc2UiIHZzLCAiY3VycmVudCBjYXNlIiBzcGxpdCBoZXJl
IGFzIHRoZSBEU0Mgc3RhdGUNCj4gc2hvdWxkIG9ubHkgY2hhbmdlIGR1cmluZyBmdWxsIG1vZGVz
ZXRzLg0KPiANCj4gVGhlIHJldHVybmVkIG51bWJlcnMgYXJlIGluIC4xNiBiaW5hcnkgZml4ZWQg
cG9pbnQuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVt
YS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIHwgOCArKysrKysrKw0KPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuaCB8IDEgKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA5
IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmRzYy5jDQo+IGluZGV4IDhlNzk5ZTIyNWFmMS4uYmNhNzQ3ZTI0YTdmIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiBAQCAtMTA3NywzICsx
MDc3LDExIEBAIGludCBpbnRlbF92ZHNjX21pbl9jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gDQo+ICAJcmV0dXJuIG1pbl9jZGNsazsNCj4gIH0N
Cj4gKw0KPiArdW5zaWduZWQgaW50IGludGVsX3Zkc2NfcHJlZmlsbF9saW5lcyhjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiArKmNydGNfc3RhdGUpIHsNCj4gKwlpZiAoIWNydGNfc3Rh
dGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUpDQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICsJcmV0
dXJuIDB4MTgwMDA7IC8qIDEuNSAqLw0KPiArfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuaA0KPiBpbmRleCA5ZTI4MTJmOTlkZDcuLjIxMzkzOTFmZjg4MSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmgN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmgNCj4gQEAg
LTMyLDUgKzMyLDYgQEAgdm9pZCBpbnRlbF9kc2NfZHBfcHBzX3dyaXRlKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiB2b2lkIGludGVsX3Zkc2Nfc3RhdGVfZHVtcChzdHJ1Y3QgZHJt
X3ByaW50ZXIgKnAsIGludCBpbmRlbnQsDQo+ICAJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7ICBpbnQNCj4gaW50ZWxfdmRzY19taW5fY2RjbGsoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiArdW5zaWduZWQgaW50IGlu
dGVsX3Zkc2NfcHJlZmlsbF9saW5lcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAr
KmNydGNfc3RhdGUpOw0KPiANCj4gICNlbmRpZiAvKiBfX0lOVEVMX1ZEU0NfSF9fICovDQo+IC0t
DQo+IDIuNDkuMQ0KDQo=
