Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E00ABB192
	for <lists+intel-gfx@lfdr.de>; Sun, 18 May 2025 22:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A676D10E175;
	Sun, 18 May 2025 20:33:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NIOuKoPl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66F1010E175;
 Sun, 18 May 2025 20:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747600405; x=1779136405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uc6PFvgG9GhZBusASCmOEba7y45i0QBDgzmvZa0ycNc=;
 b=NIOuKoPlOzFRyCHKdBEkFscPHGX49sjCrOF708uU7HY185an6mrBqYia
 gl9Yvw59SQgc99xfzJAzo9uu4yA4vyCeiFJIXbA17Tl1CIU2Ykb048mWN
 wMRHAtuMh7LJe7wrfu5QiQfGsXEzBZzpscEVKUQW5RCYhpLmToX/i6HHf
 TiL80L2YmJD12Z70AqGnrd4qSWa4WRecl5debxtCj+tFYYu+DMPIbxxlH
 ed2OnNgSPdrvdKiw1+OSrHBIHwNS5CYn0EHXu+j1NcS2t24WCbVR+xP+j
 b3lzTdA39UIzUrgQA1dMC2bUeVfpFBbMgXrwZ4XB1peI7mHlEzqlqK8o6 g==;
X-CSE-ConnectionGUID: 57Br+/B5TzOEi1elu1tIMA==
X-CSE-MsgGUID: tweahPTTQT2uF6Mr1Y5zSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="48748395"
X-IronPort-AV: E=Sophos;i="6.15,299,1739865600"; d="scan'208";a="48748395"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2025 13:33:25 -0700
X-CSE-ConnectionGUID: TUpGksO3RCC8DVDbG5RKSw==
X-CSE-MsgGUID: P5xY78mBSsiJEDYLfaXiAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,299,1739865600"; d="scan'208";a="144161254"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2025 13:33:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 18 May 2025 13:33:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 18 May 2025 13:33:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 18 May 2025 13:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q0DLBVOMWkfcIW5twb12UIG2dbe4N9Kw+meYy/FJbrtvnyMajOEN6KkbnGJ+XUKktJtJoXthg3dNgtyNZMyGxkJ6aRYqIMxOusBrdli7djL+HyWVfv8G9NLxAFDqW+SKSckaDLtWOeHupESdeN4hjz7xY4kPfcwzzvpSp9eJiEbaOABtnfNkUcM/8Ff6fQyxRINOmpprKp47ZwpCeMOLpN3GWdpGMetuGWiGenWYtc8m9+vNdcU/OO77hpe3ZZRsT9Y4Rm2zovQUjOeGxx/nTGrp+hd0WGr6IsB6xkrSgMsnLLG5Y3qryripu2FKpwAXeIlsU5U0OrstvYG9Nl4VDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uc6PFvgG9GhZBusASCmOEba7y45i0QBDgzmvZa0ycNc=;
 b=Y2R3131iA5LPKdAdeHA8NKZL8LsqFUBOgAbAkKnqK+J1gzvNUSRWiItz26rv6nEJziV3cVWVh8OOzQaWSxQMVH3NJZpt4H+fLdGZfY0LbBZPDuo1SGzwcWmC5a7fRfjB9+2OTdjKXOi2npfHjzCzusVu9nqyWTDrB2/wSxO3/6NyP5GGAkrnI+sWnRY8RMVIu5wadN5GF67n4lXDLtIJbsX7jj4uYrz/JSc9FW0jkbovrSOVPOlKcnU4Ijbvo9v3wLF+ddnNCePcF3//ZrlItX60TnLegbLryqLuR+WkGTJUJXmg9uQ2r58yQF56iODI1jKRP84/WSLFKAXzmvksHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7925.namprd11.prod.outlook.com (2603:10b6:8:f8::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8699.22; Sun, 18 May 2025 20:32:54 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.031; Sun, 18 May 2025
 20:32:54 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 09/12] drm/i915/flipq: Implement Wa_18034343758
Thread-Topic: [PATCH 09/12] drm/i915/flipq: Implement Wa_18034343758
Thread-Index: AQHbxlaLftesxSaOCki3nHkh++BE1rPY2vbg
Date: Sun, 18 May 2025 20:32:54 +0000
Message-ID: <DM4PR11MB6360F57396F588A3F17D4B57F49DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
 <20250516113408.11689-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20250516113408.11689-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7925:EE_
x-ms-office365-filtering-correlation-id: 8b3babc2-a3a2-455d-4f8a-08dd964b2ac9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VFJmNTUxUWdzaFVPVThleGZhSHBDZzlPNWRXQkJIYUN5K21mR1hKSUI4Nm1O?=
 =?utf-8?B?dHpiTEpocWZSMnlTRk1XWDNWeE9OQTVMeFB0NFBiOUhPS1M2QzBhdDNmN1RR?=
 =?utf-8?B?V2UzVlVJNWxrUDVzRmFsd0hhU1FOWXkyRUt0NHlDMVBZUHlDOW5yaFlqODNE?=
 =?utf-8?B?b1pHRWRRQXZoTWp6VXJxTjBrNHUvakZMeFRmZjZ6VHA0WVJrSzJyU1Vab3U0?=
 =?utf-8?B?MVdtWU1xTE9mQUJoS3VpbXpRTmtOZ3hreXQ5eTBrdUNlRC84NVRvQXFBeXFB?=
 =?utf-8?B?S0orUUpIOGtYOFFzTG1LL2MwMk1aUnV1Sll4TXkzcEJaZFFDR1RZd1dOdEpp?=
 =?utf-8?B?UTVVby9QRlpYQTUyQ2x1YUNCcTYvcUJxRXhrQzBOT05pZDZKbVRlbnBFVnVR?=
 =?utf-8?B?bmVlRlhjSHM4Wm9CRU1oS2VrdTFKdHl4WjRHbUZDT2lMNURIQ0RiSkRrdDho?=
 =?utf-8?B?ZTlLQXRFdmlSYW5LTFFIVE1tMlRjc25lUVNoNzlNRWFwaHBycTA3cU5xTmpi?=
 =?utf-8?B?MmZEd01aenAvaWIzV0FSbEk2UnpaQk1yZFg0d3drZ2k4OGNja0RwUkJlaEdR?=
 =?utf-8?B?R2E5bXlDUHlKQ2EycXg1RWVyK2RyOEVSYXNTNkxjUDhFR3VHQUNBZG84NVhE?=
 =?utf-8?B?d25ndVI4UTZuVWt6S0luZXhqY2h4TFBGb0FWNnorN01WaEJnMURrc2JrSEVU?=
 =?utf-8?B?TnhlRzV5aDdySzcxNkorWDk4ZENWWFZJZEVBbTVKamxGRXpISkRTbU5xczBY?=
 =?utf-8?B?bDg5RHNDSVcyK3ZCa2FqSlM0akRQZXNaMkF1TWROcUZQMUN1djFoUmZ3MTZF?=
 =?utf-8?B?THFCbSt1YVpNWFZzNlJFSldOMjR4SHlla2pDSWZyNm1CUWh5ZURYNEQzUGQ5?=
 =?utf-8?B?V2NFL054ODJZdEhjSmJFdmRXdmo3K2VnYnUzMmtGZHNPc3JRM3VTcVF3WFNL?=
 =?utf-8?B?UUxUNHZteFZqMm1EMzRuRE4vL1dueDI4NkEwWUw2VnlwN3NVdmtkdzJjOERx?=
 =?utf-8?B?Zm1GbHFZdUl2NFVWM1Y3K0E3MGlGYU5PK0lqeTB1dXcrNHpXbjlYVGE0M2xz?=
 =?utf-8?B?WmlXdHZFNENCbnIybzNCQmFNMmZ3bDdJM0gzUjR1Z2RuSTZiZ1pHL21uNlkw?=
 =?utf-8?B?NHFIajMwdHgyays0ak9qQ2h4ck5CV2QzU09RM1hoalRMNUZwV0JPOWMrUVVT?=
 =?utf-8?B?dm1PTzlBczRSNjRFNGdLVFpXTTJvNHdlSVRjVkVHZFNCRlNFbzZKRjRXZEZT?=
 =?utf-8?B?eWJyRllYOE95YzljeWVVR1E0ZG85RTlHanI5c2xLYWJzZGNYbFgrYWNKKzBS?=
 =?utf-8?B?Z2gwTGE0QUsvaGVTUU9GblFzZ0NoNHdnMFQxTkh0dGUzbFNCbkFId0lEai8v?=
 =?utf-8?B?YThBQTNMQ1JqcWsvSm56Sk96cnJ1c2tNK2ZPVmtrMGNjaGdwWkxKOUZGeDZz?=
 =?utf-8?B?VThSK0R3RW81Zy8zelFNT0RJQ0NvUVdXTEY2eHF6eFFNUUFWUWdFS2hQRyto?=
 =?utf-8?B?WnNFVXh4VU5IQVE4NGV2V1ZrMFRLT0N0aE1EamZaVWFuOTRBdmZIR2FEOG92?=
 =?utf-8?B?d0NIbDI0Y1F2eHhKMm1PSFpQdjM4K1VoelR2cHhWVy9LZmNBMUcvQ3ZWaTlB?=
 =?utf-8?B?NHNkOW0wOTRqYWtqUnEyd3JibmpObmVvYW9EZ2I1cXF1TWQ1bGZQcC81YWJD?=
 =?utf-8?B?YWdsOEhXWm5jS0M5S2tMK2s5a2JGc2tlaEYyYjdxUlBrT1krNWJuajVtVHcx?=
 =?utf-8?B?QnIyR0huWlgxSUFpbkxjUU1ic29zdXB5KzBwZW1IZFg4YnVUdWJDSG9sU0Ez?=
 =?utf-8?B?ejVhUjY2Z2hGUmRHNHBzSW5pQVorWTBpU0o1TFpldWJQeFRoS2RlTW0rSEdi?=
 =?utf-8?B?VXdxUEEvSnR0SmpxUVhCMjdhYVlUQlZvaHg1WktBbUNuMkRjWmRUZFVTVEtp?=
 =?utf-8?B?UTB4T3ZsQW5uTXJySTVSRmkzbVJJZ0tCQ0VvckVtdGMyaEZkdG9QYlY1OXl2?=
 =?utf-8?B?bTl0enFhZ3RRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bVFzWjUyenpLOFQ3UXI0S0lhOWYzVWRnT2g2V3dxSjZVR3ljTU9pUzU4OTNP?=
 =?utf-8?B?VXQzYzVaak1HTXQzQVc1WUFKREZTVWdreUpncFR2Y2FDMlJrME1hKzlscUhq?=
 =?utf-8?B?dHlFYmsrbFRoeTdKN0d2RmVRNS9nakZQakJhTmhtYVByc0xQVWhZZitWSXcz?=
 =?utf-8?B?bkN1VldUQys4Q2ZyMGVpbFVWVWhyb0NzZGNBSUhRVEFkZVpnK1hjMm0wVlBj?=
 =?utf-8?B?V3JsMUV4WWRKaGxKV3FNRGRwU0ZHVzZWZTRLMTZHd1ZjMVNoQmFKMXZkUGJj?=
 =?utf-8?B?MnhweDNwZDN3WGRHcmIrMGUzWmNWeG1IcE1hYzFSUXkyRzRUTERKd2U3VkpO?=
 =?utf-8?B?d3NmQlh4c3dpL2NDelowc3NXRWphWkhyd3g3aXA3L1VVY2JDWlR3ZEt4Yy9V?=
 =?utf-8?B?bm5qNXlHZHhGbERCWEV0ZVo4RUZCYVdqMWQwU3grai9KRTFoRmk1NktVWUF1?=
 =?utf-8?B?MzEvSWJwRmJhYktKWjgzbTUvVFBsYllqQ2JzcUZrNnJQMWUyV2F3a0xwczVi?=
 =?utf-8?B?dmo1SVVaY0N3eTRDalZoamNBaXE4QlloQy9qUWp0RnNQSEJSZkM4YUhwL0VF?=
 =?utf-8?B?T3gydi9wcUdsQm5WUGtwbGVNTU1CNmlQNmwrYWlOem5UZEMybTBZNUVzQnR2?=
 =?utf-8?B?SDU1NERKRWRJcERXckFHMEdRb3Q3cTZmMFp2ME1BNzQvTWoraS82SGRqalpi?=
 =?utf-8?B?QTJtdUtnamZidTlLMGRyLzFJSFQwbmdMcDVMR21rYVcrWEkzQmVzcDExVkV2?=
 =?utf-8?B?SUpyc2QvM2RDbDBveTJhWUkxM2wybkN1c2N4QU9vSiszdi91S3p0bW8vb0Mx?=
 =?utf-8?B?TE03bjZQcHZyVDNLU0pMQkQwM0RMRjU0Y3VXZXdmd2hzSVBtU1B2SmtBSWRN?=
 =?utf-8?B?QlM1dGsrMHVqaVBmcjJHR3NWOHQrTk9xTVk3OG1sb3hKekpFMXhzaHJrR05w?=
 =?utf-8?B?ZWRCSDR1a29NaUJxMGxOc2hYWDQ4elZTT00yb1hoamh2Z2JZZkpJNWJEZUVH?=
 =?utf-8?B?UTVPaDVzOFk0QmVPVjY3bTZMdlh6b1psbFZOV09CRTlWMEhpMXBUcUVKeUNJ?=
 =?utf-8?B?Vzg5UGx5ZEROcGY3cVlaVEtIeHdaRktDVXlRUVhnQUQrblIyMVE4dWY1K3Az?=
 =?utf-8?B?TGh6bXRtN0N5SC9pN2xuaDNIdW4xNmExUlpSNmppSDNIWS9NbmFoYVpKOTlR?=
 =?utf-8?B?MEtuNklBejVNUUJ6bXptYXVFanNqSWdwTkRyRjRwbjZXUUxrLzU2N0d3cSt3?=
 =?utf-8?B?cmd1VWlEY0tUQ3VxNHlzS2t3b0h5clhFT3pWVVNhdDhBenIvVDVCTmVobXBH?=
 =?utf-8?B?a1c0cVljYkQrb1JTaC9yT0toN1hBNmVCZ2xiODl4WmplR0RQOFhKTU83NWtu?=
 =?utf-8?B?cUhVSXJ1Y2l4YmpNdFhOREM2TDhMSEpkQUdCNlRYSUU3SG8rdzU2b0tpMUFy?=
 =?utf-8?B?anl3d0srY2VvUjlhbVlIV1BtTVY3TFQwTFFTaWpVeXlra2txcEtrYUc0NDJz?=
 =?utf-8?B?MEE4RTZ2bExKbHU3SmVtMUc4WC9STzJHcE1OL0Y5TDZ2c1Q5L1hGRXpDYSs4?=
 =?utf-8?B?RTRzeTF1T3dIRGlvZEZKaVRacTJycE1tWVp0UUpLV1dZTkExZ2V1M2FyNDdt?=
 =?utf-8?B?VGRwR1pwKy9QVHBweG1LVzFLMi9LMExnRUZqS0dPbFdkdzJpWVZHZjM5RTJW?=
 =?utf-8?B?TlJ5N1BqY3lVUDBiQ1NXaWl5WnlGb1dmeE1ZV29uUWZxSXpvL1RvemE4SDkr?=
 =?utf-8?B?TGErMnZLekxKemtEcHo0Y0VneUZkdlVKUDhnWlBtNFRYMTd1MHpmYzNzOERG?=
 =?utf-8?B?WEM1RURwbVdWUVprSldCTEFGK0N1ZG1XVmxVRDBGYWZ0ZlZqa1BjZ0ZiUmZW?=
 =?utf-8?B?a1NwQUdqaTJ0L1B6QUo5VlVjYyt5QkJTNWFxVWNQNldiblJMTXNkZE1LWVR2?=
 =?utf-8?B?a0ljdkpyNklBeWtXYWROU1RRMG1RVml0eW5rYWo0TUtkTmU3ZG5XeUQ2N3hs?=
 =?utf-8?B?M3F5cXp3bGUzZkxQU0tsYUwwbU43WHcxWTdaS3I0WmNjdlcyRHNtTmhnS05L?=
 =?utf-8?B?QzVPN3BXQzBLUWk5a2JtdUYwOHNtbVlpMWdxNTF2aVNwa0RIVTdZZ2tRMmZC?=
 =?utf-8?Q?6Mp552gF2yIdQmbyFIgH4EH+c?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b3babc2-a3a2-455d-4f8a-08dd964b2ac9
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2025 20:32:54.0462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z646KK2S7UMgkl/bm4JHdWGNC34oUE7KBuvEi0G4Cw2LWAD/t5geKP0WxfnAS2bTsJzpyYVbUxJeGKD0OAgfgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7925
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
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDE2LCAyMDI1IDU6MDQgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMDkvMTJdIGRybS9pOTE1L2ZsaXBxOiBJbXBs
ZW1lbnQgV2FfMTgwMzQzNDM3NTgNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBJbXBsZW1lbnQgdGhlIGRyaXZlciBzaWRl
IG9mIFdhXzE4MDM0MzQzNzU4LCB3aGljaCBpcyBzdXBwb3NlZCB0byBwcmV2ZW50IHRoZQ0KPiBE
U0IgYW5kIERNQyBmcm9tIGFjY2Vzc2luZyByZWdpc3RlcnMgaW4gcGFyYWxsZWwsIGFuZCB0aHVz
IHBvdGVudGlhbGx5IGNvcnJ1cHRpbmcNCj4gdGhlIHJlZ2lzdGVycyBkdWUgdG8gYSBoYXJkd2Fy
ZSBpc3N1ZSAod2hpY2ggc2hvdWxkIGJlIGZpeGVkIGluIFBUTC1CMCkuDQo+IA0KPiBUaGUgdy9h
IHNlcXVlbmNlIGdvZXMgYXMgZm9sbG93czoNCj4gRE1DIHN0YXJ0cyB0aGUgRFNCDQo+ICB8ICAg
ICAgICAgICAgICAgICBcDQo+IERNQyBoYWx0cyBpdHNlbGYgICAgfCBEU0Igd2FpdHMgYSB3aGls
ZSBmb3IgRE1DIHRvIGhhdmUgdGltZSB0byBoYWx0DQo+ICAuICAgICAgICAgICAgICAgICAgfCBE
U0IgZXhlY3V0ZXMgbm9ybWFsbHkNCj4gIC4JCSAgICB8IERTQiB1bmhhbHRzIHRoZSBETUMgYXQg
dGhlIHZlcnkgZW5kDQo+ICAuICAgICAgICAgICAgIAkgICAvDQo+IERNQyByZXN1bWVzIGV4ZWN1
dGlvbg0KPiANCj4gVE9ETzogZmlndXJlIG91dCBpZiBQVEwtQjArIGZpcm13YXJlIHN0aWxsIGlt
cGxlbWVudHMgdGhlIHcvYQ0KDQpQbGF0Zm9ybSBjaGVja3MgY2FuIGJlIGFkZGVkIGxhdGVyIGZv
ciB0aGUgYXBwbGljYWJsZSBwbGF0Zm9ybXMuDQoNCkNoYW5nZSBMb29rcyBHb29kIHRvIG1lLg0K
UmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8ICA4ICsrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zs
aXBxLmMgICB8IDEwICsrKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9u
cygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gaW5kZXggM2E0MjUzNjI0N2Q4Li43NmVkMzRhZGMwOGQgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC03MjMyLDYg
KzcyMzIsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2RzYl9maW5pc2goc3RydWN0DQo+
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJfQ0KPiANCj4gIAlpZiAobmV3X2NydGNf
c3RhdGUtPnVzZV9mbGlwcSB8fCBuZXdfY3J0Y19zdGF0ZS0+dXNlX2RzYikgew0KPiArCQkvKiBX
YV8xODAzNDM0Mzc1OCAqLw0KPiArCQlpZiAobmV3X2NydGNfc3RhdGUtPnVzZV9mbGlwcSkNCj4g
KwkJCWludGVsX2ZsaXBxX3dhaXRfZG1jX2hhbHQobmV3X2NydGNfc3RhdGUtDQo+ID5kc2JfY29t
bWl0KTsNCj4gKw0KPiAgCQlpZiAoaW50ZWxfY3J0Y19uZWVkc19jb2xvcl91cGRhdGUobmV3X2Ny
dGNfc3RhdGUpKQ0KPiAgCQkJaW50ZWxfY29sb3JfY29tbWl0X25vYXJtKG5ld19jcnRjX3N0YXRl
LQ0KPiA+ZHNiX2NvbW1pdCwNCj4gIAkJCQkJCSBuZXdfY3J0Y19zdGF0ZSk7DQo+IEBAIC03MjYy
LDYgKzcyNjYsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2RzYl9maW5pc2goc3RydWN0
DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCWlmIChESVNQTEFZX1ZFUihkaXNw
bGF5KSA+PSA5KQ0KPiAgCQkJc2tsX2RldGFjaF9zY2FsZXJzKG5ld19jcnRjX3N0YXRlLT5kc2Jf
Y29tbWl0LA0KPiAgCQkJCQkgICBuZXdfY3J0Y19zdGF0ZSk7DQo+ICsNCj4gKwkJLyogV2FfMTgw
MzQzNDM3NTggKi8NCj4gKwkJaWYgKG5ld19jcnRjX3N0YXRlLT51c2VfZmxpcHEpDQo+ICsJCQlp
bnRlbF9mbGlwcV91bmhhbHRfZG1jKG5ld19jcnRjX3N0YXRlLT5kc2JfY29tbWl0LA0KPiBjcnRj
KTsNCj4gIAl9DQo+IA0KPiAgCWlmIChuZXdfY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuaykN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuYw0KPiBpbmRl
eCA4Njc3OTI5YjdlY2UuLmM0YjRlY2Q0NGViMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mbGlwcS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmxpcHEuYw0KPiBAQCAtMzA0LDMgKzMwNCwxMyBAQCB2b2lkIGlu
dGVsX2ZsaXBxX2FkZChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gDQo+ICAJaW50ZWxfZmxp
cHFfc3dfZG1jX3dha2UoY3J0Yyk7DQo+ICB9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfZmxpcHFfd2Fp
dF9kbWNfaGFsdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpIHsNCj4gKwlpbnRlbF9kc2Jfd2FpdF91
c2VjKGRzYiwgMik7DQo+ICt9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfZmxpcHFfdW5oYWx0X2RtYyhz
dHJ1Y3QgaW50ZWxfZHNiICpkc2IsIHN0cnVjdCBpbnRlbF9jcnRjDQo+ICsqY3J0Yykgew0KPiAr
CWludGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBQSVBFRE1DX0NUTChjcnRjLT5waXBlKSwgMCk7IH0N
Cj4gLS0NCj4gMi40OS4wDQoNCg==
