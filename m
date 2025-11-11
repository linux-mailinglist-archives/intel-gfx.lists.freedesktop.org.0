Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D259C4DA46
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 13:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D716310E027;
	Tue, 11 Nov 2025 12:22:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KqjIjew5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9616310E023;
 Tue, 11 Nov 2025 12:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762863738; x=1794399738;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=baqtsmLQnMIOedDQKFyvBjlIla8w16SHHPqGnUycLTY=;
 b=KqjIjew5LYCRF9TW5NzgaWaZUh3CjqiytHs0L27L0IRcILT/zw1MeBnj
 kCSghd+9OdFOPpa1kgDig8UwZ2rfIlJMzh+8nmNt4Z0/JcHdw61FPZLB0
 qZExBXIrGxewbEr8vxL6fDL/q2Z57tGmvO+lnipWhRUDgwbuzJsZK0TdM
 B3ZCIw8wFGUuuyhHmXioeNeQ2y7Z+JbIRpL9z/Iu0+TWMHUb7DlQjDYCT
 ngGNXrTF6M4YRlUVIwc82apV3y9Au8dG9JBn6Qum1L6dmBhVgNBLnwcfS
 m+zhEdaYt6aNAvj9I03n2bBOZON5l9hWNn9o5pwF47JsBYNM3dtNoK7k3 A==;
X-CSE-ConnectionGUID: W+AAejWqRjmWTTG2qD4tzw==
X-CSE-MsgGUID: DpjH39yZTYSEtHUYVPwmcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="65015462"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="65015462"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:22:18 -0800
X-CSE-ConnectionGUID: MZLeF7LzQWiKx4JAz2Hk/w==
X-CSE-MsgGUID: 8yvWYjw0Tn+A3RdYI7Srgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="193062762"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 04:22:18 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 04:22:17 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 04:22:17 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.22) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 04:22:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WiQMePPhGnslgd+iE2yvZwjO6anDUXY+X5l2UV0kDUfc9m67t42Odfyc4POHOeF3nCLIvvz2J9Pv4Z7aqJPQb9a5kvJI4kOmnnvl9tdWC4QPN95Pv5kM/Jl292VA8Xl9rr5JiJsSBSDRu9N5kWSqWZBLSp1Z+FxmjSfLf8ESzFBxnhff5FM0CkM/gMGzxdxJ1ERZqPGGbHdFT7KKMeAS/nhYlz7RnZuR1qw220M8+fDnVLc+pCvNcGFfa64qj+ti50to9WBju8BmYU2wtqeLrJyxT1NUweTzpxbLO7eNNhti0WlcF3hOzTdVlp2W4BMCt8YlEzm59IDi/RJIGgHeWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x/Ko6E1dKHc4ZLNK/NShq6H1l080tc9ma/ncHo94tbE=;
 b=POJTzdh+Yq0x5IzrE4r1A1M3TI5qHWd4PNMxKi00XtNJN/0wueonLXOhmmEleoEludx5Phn7IEpwcr9wZLyttzcm8YIGtR2Ltv1IqDeVlk7+96X3nVK5UI+f3azzZWk/qcgWC3FTL2QU6KeqKeUE2oYBZam9E20c0c+xY0J9qNzrM1hN+YNWCsazYyfmgq6nD4XviIk3/zIhbQDEBJSBED51ev9FzlRC5LKFHnLvzX7sLzB+7D+kpZnBLaPFSxaNzW+Mupahv0xKwLUEKmYnuVRoMZrqTgS+Gj7DRLajVH2ROoMy+qOTxXPj8bgEVvIrGX2iBc4dM1UZtJbUA5PN5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BL1PR11MB5954.namprd11.prod.outlook.com (2603:10b6:208:385::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Tue, 11 Nov
 2025 12:22:13 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 12:22:13 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <10ea7f19994529ae4299e4d810c78e37afea6030@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-6-ab3367f65f15@intel.com>
 <cd8a88c0e6f02aa1209abd3f1188e1bacf1ec1c1@intel.com>
 <176282063211.2999.130715176728761102@intel.com>
 <10ea7f19994529ae4299e4d810c78e37afea6030@intel.com>
Subject: Re: [PATCH v4 06/11] drm/i915/xe3p_lpd: Handle underrun debug bits
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 11 Nov 2025 09:22:09 -0300
Message-ID: <176286372927.3783.7565442307466121494@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0198.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::23) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BL1PR11MB5954:EE_
X-MS-Office365-Filtering-Correlation-Id: 07e3a55b-94c4-4084-88aa-08de211cf1bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bzF2aEU4NHVSKzhQQkZ5SlNJN1kzTXZ3cHEwSTVqVy9qVHg4bVpJL3NualpJ?=
 =?utf-8?B?VlVseU8zWGhHcTlZUHcwd3VBSlY3QytuK2xlMCtpbjEzTDNmSGZjajd5UE14?=
 =?utf-8?B?ODZtVVNYa1MxRG81T0w4dktFdElrQ0FJb28vZ0p0Y2V0VEVsU2VLQjBXT3Ra?=
 =?utf-8?B?bHMra1pCa0lSQ3dhSTJRM3JwT2djOStBcXkvSnhtcVJ3RUUzVTRMR2tXY1Ar?=
 =?utf-8?B?MnZGYVJVKzVxZCtpdzZBWnN5UkFiMDVlV0ZRVS9oRndCTVNZamtBbjBzSTI0?=
 =?utf-8?B?SXJKL3QweG1tU0E3U2NXNVZ3Rm9LeGxWUWM1OVgxOGNlZ0tHaXNFaUFyUUxh?=
 =?utf-8?B?UjF4WUVvRTBHdDVhRXRYUjFwcVk3L2piY2RhbUlCREE0M2xVam5kRUE3NWJs?=
 =?utf-8?B?ZXhqYW5pUUFYQThBZjF2d3A5LzNrZFNnTmdyQ2o4eTd3V3V1UXNrVC9ZaGc4?=
 =?utf-8?B?OUN0dTVxN3JlZ0NDQzhXZ3V6WmpLRFVPZTFyQzBhWU8yMWx2dVJSSVFkNXhB?=
 =?utf-8?B?Z0xIQjdZQzlsZ0pLY3RWOFJKNmY5ZngyMkxQSkpSSGpVaTljRUdUZngxY0c1?=
 =?utf-8?B?Vm5GY0YvcGRMeDExamwvZ09JVlM3MFROV3Fsa0pKMjBXRDRHYUN4Mml2QU9O?=
 =?utf-8?B?dWY0bmRza2ptTHFGMzB1ZlFldThzSjVPb1laMk5tVVpBWTNJVmk4UkQxd2ZD?=
 =?utf-8?B?Vnpta3pFcHdLYktqa1FCVjdxUS9vQUpocE16bHhWaE10S2V6eVVhdm9sTWFP?=
 =?utf-8?B?NlpTeVY0cjNBK3JobGxGQXhjenlab0JFOHZtaDhnQStTWmVxNkhIRWxaOENr?=
 =?utf-8?B?WWtkVXBzL21XRm9lMCtLajREYUNIY3NYQXR0NXQxNlREK0R3ZFZVa3ozZkls?=
 =?utf-8?B?MmROQnR1YjFDb0w1c1dFL2dKL0VGZVVmWnBVMkpYSGJYVzkydUxCZzJwK2No?=
 =?utf-8?B?M3F5Q21BNHRDeUp0UWpqbnpORTNodmgzeWVFbEw3Ly84Q0huTW1LcjBuamh2?=
 =?utf-8?B?OURlTWtPNnUrQVk0RUZNUEw2b1RUYnhtWmxqR05QWGE4ak1aK0QrWlR4R2N3?=
 =?utf-8?B?UFU0YWloQ204dEdkLzRxbGo3TVhaT3djMnovUTBaU2dTT2prMWtxWHgxWVJp?=
 =?utf-8?B?TE1sUkwra0FZN1FOK08wVWdxMER3Ym9uNDU2aVFMQUFLVTA3b2FtNDJVWFox?=
 =?utf-8?B?ZHE2dTRGUnExZExxWXhkVjZKbzJkNHN6NDZJRHhjN2F4Um1XMzkrWlhydUtH?=
 =?utf-8?B?YjlrbTNkYm5Xcm5EQ1BRVVU5L0lvM2pNYy9YTkllSXZTUUlVUDVFU0FzWDdC?=
 =?utf-8?B?d0VlYXVLRFkzcXpld3FGTllFekw5TVNLRXozQUo0M0l5b3RjcXRCeGIxdHhz?=
 =?utf-8?B?QXZuWHJDNkt2aVZsZ1hIelN0VHhYTVorUVMydFN2NUZxYWJYYW9KTDBCK2Z2?=
 =?utf-8?B?b2YrT2hyb2FOZC9KSmhDOHMrUTRwSnJ3QlVya0wySHlibkxYU1B0azdTSmZt?=
 =?utf-8?B?UW5lcHZkQndpNWxUZDZLUkRIenZSZjVRc2NPM3ZyeDZ1OUt6b09LZ002UUhp?=
 =?utf-8?B?U09RMUxhR3krRTA3emlST2Vvd1daSlpsblFrdW10S3hiZktNNmNDdm1RVUhC?=
 =?utf-8?B?VFhpc2pPYnIvVnVoQ3pkNmtMdDQ3M1lQK0c0QlNmaDZQRy96SldPMGFXcG5n?=
 =?utf-8?B?QjZOZTBMODR0bmJJbGYvejBRa3dTU2JENWhCK0Q1NFMrcUdidXJYQ3NLa1hk?=
 =?utf-8?B?aVVhUDhXWWVXUElNMTd0eitnR0tIQW9McjNUcWhZeEpjbS95N3FLd2xwejND?=
 =?utf-8?B?amRKOFc5N3FPdGRZZkpNcloxbEw0emgyUng0bmhhdHZ4YlZJbG1hdDlDbHFP?=
 =?utf-8?B?UWJlbHpPcllmTEZDcHpzZDZ3eStramRNSzQ5VlpZYjEyY0JoOFZCVjlkbWVm?=
 =?utf-8?B?b3NiTjdpYmVtQ1ZBcG1tZFV0YXpBWWxWZ2NRYVFCUTJzOTZ1TnZ3UXNDM3k1?=
 =?utf-8?B?Vm9wcFBnTU9RPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?anNoWlI5ZFNvbllkR3ovOWc0d1g1NVh2ZVM1LzVub053Zk82M05JTnZGYURO?=
 =?utf-8?B?bkozVy9ETE03VzgzSjl5cm5abHpSTGRFcDkyUnpkNGVXcVhWL2V6ejBzdUtR?=
 =?utf-8?B?TTBkYWN3a1lIemlDUldpTWpSZTBqRzVZcHMzMlpGSmtadk9IVXN2dU1VdnVo?=
 =?utf-8?B?Rm0vK0NwWmhYa1lhMkJMeWlPTUtNTXJjM1FWQ0l2STk5OUJsM1BLdTVXRzVG?=
 =?utf-8?B?VmEyVUlhekdwejZPNVFuQTRxSittRlllQ2NkT3ozUEwzYU9CbzZMYUFvTWZG?=
 =?utf-8?B?S0psc1FNU0UzRkxGRkZIV0hFNlAyMzFFTmFWck51NzdzclY0SFpkUzlNbE1C?=
 =?utf-8?B?TjZpR0FjR2dYVG0vY295VnVudkVBVUhUN1FkQTJKYkFuY3A5YUVrQ2hsbklR?=
 =?utf-8?B?WGVVb1lySWJCNi9VSVF5TXpVUDNzdTFjZEczUWttaFRjTU5VblkzcE8xZTJP?=
 =?utf-8?B?RjRaQ3VPUVFURHkvbnpTTTFnNG5yNU9pYmZCQ0QwY2NndURZYTR3akpoV0hp?=
 =?utf-8?B?TytydHY1bml4OElUeFRySTcrVzhPUzljeElWYkpJVjJJYWhlZDB6d01EOEJo?=
 =?utf-8?B?dERJWHo4WFlKbVdXZHRsWnI3cExYd2hhL2J6dDhoblU3c3M1ZmJlenZxMlda?=
 =?utf-8?B?VDBSV29zLy81NkcvSy9YZENkdVJTSEl5YXRQUEFrU1IzYXhRL0VZN0svbGN2?=
 =?utf-8?B?MkVuWUF2QmRKaG5CSGpnOFBTSmM1aGVDWlRsVmcyTjY4MTlqUlplUk1leHBH?=
 =?utf-8?B?UjAxSm1UbXpKU2VYUkhuRFlGRmNLLzdBKzB6ZXZWdGZuQlIwaFRGSlhEc3RL?=
 =?utf-8?B?L3V0dTFQQjBseVdlTG5BZXpUbVN3b1NKa0pKd01FVURVSVhzc1QzQjlpZnhB?=
 =?utf-8?B?NTFRM2d5Nnc0bGgrdTdwSVFLSVp6N1pGZFVQVHQyK2pEYTIvQlFNZzNlVmN0?=
 =?utf-8?B?czJHZm8rdkpQcDk5UWtJSnN2dFQwOC9Xd013cVdBcVJqUnloUUpLTi9WbGRY?=
 =?utf-8?B?TzZVVHdmb091NkdKNzYzSEpjcHpHWEZ5V2ZlbUZWdlZ2TUtJQ2tMRSswdVNY?=
 =?utf-8?B?UmdoV2JUNlBEZDRwb0tRUzhUZU11YWY4bWZuTmpubHIydnhRV0gwMCs2dWNY?=
 =?utf-8?B?dGpZYlVyTUQ5U3lvMjZMVWJncXJpU2RqR1J5WWRvTE81YjNhS2VmSzU5MjNo?=
 =?utf-8?B?ZUlDa2xWd0RnTTBIYjBOUDJpY2RKMXZRS1lKU0lTL0xBTEhHWUxkRkh5RmZa?=
 =?utf-8?B?N0FrcVFIVm93MVdMYWdhL3paNytka1pIallEYUxXT1JXSGJqbXhtRFZEQjN0?=
 =?utf-8?B?NDY1eCtFVFo3bytlNXBUOEVxeUdIaTRHVkxBS1pQS0JoNWhicXJqb29xSWtC?=
 =?utf-8?B?am9Sa0l5WExscG1ZVUgzdWEzVFhQaHBEbFhlNjJiWUhaWXc5Q0FCNldRT0xt?=
 =?utf-8?B?S001VjZoTG4zV3JWU1NyK0kwZ0EzM0dGKzFpd2l4TldQVDVDWFdtT29Odmpv?=
 =?utf-8?B?TGRZWDMxYjdrVGI1K1VmTmtVRk9LS0hpMitSUjUxL0VNWU5CMTM2K0xSRjdP?=
 =?utf-8?B?R3JVSFRueU5aKy83UHIzOGVJaTNEbEQyREUyWXRxeVpscTI3ZmJEUTZ1eFVB?=
 =?utf-8?B?aU5mc2Z5L3VaK1dxQ1dNKzdwNmJWeEp4YmxFOWVQODh5c0VaaUVXcUc4enNj?=
 =?utf-8?B?aW91aDRQOGF4UWlLRmJtUVRJUWtCRXAraHJvb044bmV6clJvZFNuazdQQlov?=
 =?utf-8?B?K3NWS3I4WFVETnVFRWFEMVhvYU1QN0U1dm1sbXIwYUIwZ09qMVhUUFM0N1FD?=
 =?utf-8?B?QzloYjFscjRoNnJUOU9SYUxUczYyZnNLeHJGZmYvOW5mRWFzN01JYmdhTFZF?=
 =?utf-8?B?OEw5b1p1L2ZEUjk5dXZuQ2tTb05kRU5WMzdFcTc2QzB3Z25Rc3VsOG04a1VC?=
 =?utf-8?B?Rmw5ejlvZnNkNDR4Q2tPc21JVmRUN2xoOHJRTlpoTVhpWk9PZXFWY1duUVpR?=
 =?utf-8?B?c1p5UDA5YlJtM0I1WVNhM2I2ZE5BNUtsdDFueGRJY3JLUkVVVmtWeHBzLy90?=
 =?utf-8?B?SEREWm9ncXo3MWdDZUxDb0g2VW5LMVJFcmdra3RZOUZTTHV1NW5nd3Q4N1o4?=
 =?utf-8?B?VlBZZiszUW9USDhSMnhueU51SVA1MmlXb21rUDhkWVM5RUo1VXdkR0kzQXBh?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07e3a55b-94c4-4084-88aa-08de211cf1bc
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2025 12:22:13.4443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: burAcxyBQ/BVw1t7M4A7xYlQiq8RLCyKzHFrkiaiyhpoNTRlnCsVbD4Cwg+nnslNWJTv68Kph6bDDTGslQx7/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5954
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

Quoting Jani Nikula (2025-11-11 07:22:43-03:00)
>On Mon, 10 Nov 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2025-11-10 08:45:48-03:00)
>>>On Fri, 07 Nov 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>>> Xe3p_LPD added several bits containing information that can be relevan=
t
>>>> to debugging FIFO underruns.  Add the logic necessary to handle them
>>>> when reporting underruns.
>>>>
>>>> This was adapted from the initial patch[1] from Sai Teja Pottumuttu.
>>>>
>>>> [1] https://lore.kernel.org/all/20251015-xe3p_lpd-basic-enabling-v1-12=
-d2d1e26520aa@intel.com/
>>>>
>>>> Bspec: 69111, 69561, 74411, 74412
>>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>> ---
>>>> I tested this by adding a change on top of this series that updates
>>>> Xe3p_LPD's CDCLK table to use bad values and I got the following
>>>> messages:
>>>>
>>>>     [  +0.000237] xe 0000:00:02.0: [drm:intel_modeset_verify_crtc [xe]=
] [CRTC:88:pipe A]
>>>>     [  +0.000674] xe 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO under=
run
>>>>     [  +0.000015] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun =
info: DBUF block not valid on planes: [1]
>>>>     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun =
info: DDB empty on planes: [1]
>>>>     [  +0.000001] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun =
info: DBUF below WM0 on planes: [1]
>>>>     [  +0.000004] xe 0000:00:02.0: [drm] *ERROR* Pipe A FIFO underrun =
info: frame count: 1890, line count: 44
>>>> ---
>>>>  .../gpu/drm/i915/display/intel_display_device.h    |   1 +
>>>>  drivers/gpu/drm/i915/display/intel_display_regs.h  |  16 +++
>>>>  drivers/gpu/drm/i915/display/intel_fbc_regs.h      |   2 +
>>>>  drivers/gpu/drm/i915/display/intel_fifo_underrun.c | 128 ++++++++++++=
+++++++++
>>>>  4 files changed, 147 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/dri=
vers/gpu/drm/i915/display/intel_display_device.h
>>>> index b559ef43d547..91d8cfac5eff 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>>> @@ -197,6 +197,7 @@ struct intel_display_platforms {
>>>>  #define HAS_TRANSCODER(__display, trans)        ((DISPLAY_RUNTIME_INF=
O(__display)->cpu_transcoder_mask & \
>>>>                                                    BIT(trans)) !=3D 0)
>>>>  #define HAS_UNCOMPRESSED_JOINER(__display)        (DISPLAY_VER(__disp=
lay) >=3D 13)
>>>> +#define HAS_UNDERRUN_DBG_INFO(__display)        (DISPLAY_VER(__displa=
y) >=3D 35)
>>>>  #define HAS_ULTRAJOINER(__display)        (((__display)->platform.dgf=
x && \
>>>>                                            DISPLAY_VER(__display) =3D=
=3D 14) && HAS_DSC(__display))
>>>>  #define HAS_VRR(__display)                (DISPLAY_VER(__display) >=
=3D 11)
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drive=
rs/gpu/drm/i915/display/intel_display_regs.h
>>>> index 9d71e26a4fa2..89ea0156ee06 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>>>> @@ -882,6 +882,21 @@
>>>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK                REG_GENM=
ASK(2, 0) /* tgl+ */
>>>>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)        REG_FIELD_P=
REP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>>>> =20
>>>> +#define _UNDERRUN_DBG1_A                        0x70064
>>>> +#define _UNDERRUN_DBG1_B                        0x71064
>>>> +#define UNDERRUN_DBG1(pipe)                        _MMIO_PIPE(pipe, _=
UNDERRUN_DBG1_A, _UNDERRUN_DBG1_B)
>>>> +#define   UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK        REG_GENMASK(29, 2=
4)
>>>> +#define   UNDERRUN_DDB_EMPTY_MASK                REG_GENMASK(21, 16)
>>>> +#define   UNDERRUN_DBUF_NOT_FILLED_MASK                REG_GENMASK(13=
, 8)
>>>> +#define   UNDERRUN_BELOW_WM0_MASK                REG_GENMASK(5, 0)
>>>> +
>>>> +#define _UNDERRUN_DBG2_A                        0x70068
>>>> +#define _UNDERRUN_DBG2_B                        0x71068
>>>> +#define UNDERRUN_DBG2(pipe)                        _MMIO_PIPE(pipe, _=
UNDERRUN_DBG2_A, _UNDERRUN_DBG2_B)
>>>> +#define   UNDERRUN_FRAME_LINE_COUNTERS_FROZEN        REG_BIT(31)
>>>> +#define   UNDERRUN_PIPE_FRAME_COUNT_MASK        REG_GENMASK(30, 20)
>>>> +#define   UNDERRUN_LINE_COUNT_MASK                REG_GENMASK(19, 0)
>>>> +
>>>>  #define DPINVGTT                                _MMIO(VLV_DISPLAY_BAS=
E + 0x7002c) /* VLV/CHV only */
>>>>  #define   DPINVGTT_EN_MASK_CHV                                REG_GEN=
MASK(27, 16)
>>>>  #define   DPINVGTT_EN_MASK_VLV                                REG_GEN=
MASK(23, 16)
>>>> @@ -1416,6 +1431,7 @@
>>>> =20
>>>>  #define GEN12_DCPR_STATUS_1                                _MMIO(0x46=
440)
>>>>  #define  XELPDP_PMDEMAND_INFLIGHT_STATUS                REG_BIT(26)
>>>> +#define  XE3P_UNDERRUN_PKGC                                REG_BIT(21=
)
>>>> =20
>>>>  #define FUSE_STRAP                _MMIO(0x42014)
>>>>  #define   ILK_INTERNAL_GRAPHICS_DISABLE        REG_BIT(31)
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/g=
pu/drm/i915/display/intel_fbc_regs.h
>>>> index b1d0161a3196..77d8321c4fb3 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>>>> @@ -88,6 +88,8 @@
>>>>  #define DPFC_FENCE_YOFF                        _MMIO(0x3218)
>>>>  #define ILK_DPFC_FENCE_YOFF(fbc_id)        _MMIO_PIPE((fbc_id), 0x432=
18, 0x43258)
>>>>  #define DPFC_CHICKEN                        _MMIO(0x3224)
>>>> +#define FBC_DEBUG_STATUS(fbc_id)        _MMIO_PIPE((fbc_id), 0x43220,=
 0x43260)
>>>> +#define   FBC_UNDERRUN_DECMPR                        REG_BIT(27)
>>>>  #define ILK_DPFC_CHICKEN(fbc_id)        _MMIO_PIPE((fbc_id), 0x43224,=
 0x43264)
>>>>  #define   DPFC_HT_MODIFY                        REG_BIT(31) /* pre-iv=
b */
>>>>  #define   DPFC_NUKE_ON_ANY_MODIFICATION                REG_BIT(23) /*=
 bdw+ */
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/driv=
ers/gpu/drm/i915/display/intel_fifo_underrun.c
>>>> index c2ce8461ac9e..8a05b5c5fccd 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>>>> @@ -25,6 +25,8 @@
>>>>   *
>>>>   */
>>>> =20
>>>> +#include <linux/seq_buf.h>
>>>> +
>>>>  #include <drm/drm_print.h>
>>>> =20
>>>>  #include "i915_reg.h"
>>>> @@ -34,6 +36,7 @@
>>>>  #include "intel_display_trace.h"
>>>>  #include "intel_display_types.h"
>>>>  #include "intel_fbc.h"
>>>> +#include "intel_fbc_regs.h"
>>>>  #include "intel_fifo_underrun.h"
>>>>  #include "intel_pch_display.h"
>>>> =20
>>>> @@ -57,6 +60,118 @@
>>>>   * The code also supports underrun detection on the PCH transcoder.
>>>>   */
>>>> =20
>>>> +#define UNDERRUN_DBG1_NUM_PLANES 6
>>>> +
>>>> +static void read_underrun_dbg1(struct intel_display *display, enum pi=
pe pipe, bool log)
>>>> +{
>>>> +        u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>>>
>>>Nitpick, I really don't like the style of using "functional" (for want
>>>of a better word) initializers. Complicated is fine, like below for
>>>masks[], but doing something with the hardware or something that can
>>>fail, feels iffy.
>>
>> Alright.  I'll update this to do as you suggested below.  One little
>> annoyance is that we will need to open code REG_FIELD_GET() (as done in
>> [1]), because the mask parameter needs to be a constant expression.
>>
>> [1] https://lore.kernel.org/all/20251021-xe3p_lpd-basic-enabling-v2-11-1=
0eae6d655b8@intel.com/
>>
>>>
>>>> +        struct {
>>>> +                u32 plane_mask;
>>>> +                const char *info;
>>>> +        } masks[] =3D {
>>>> +                { REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VALID_MASK, v=
al), "DBUF block not valid" },
>>>> +                { REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, val), "DDB e=
mpty" },
>>>> +                { REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_MASK, val), =
"DBUF not completely filled" },
>>>> +                { REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, val), "DBUF =
below WM0" },
>>>> +        };
>>>> +        DECLARE_SEQ_BUF(planes_desc, 32);
>>>> +
>
>Mmh, right, I didn't even spot that val was being used in the masks[]
>initialization.
>
>Here's a completely different approach that avoids some of the
>problems. I'm not sure if it's better or worse, just different. Two
>lines shorter than the original.
>
>static void log_underrun_dbg(struct intel_display *display, unsigned long =
plane_mask,
>                             enum pipe pipe, const char *info)
>{
>        DECLARE_SEQ_BUF(planes_desc, 32);
>        unsigned int i;
>
>        if (!plane_mask)
>                return;
>
>        for_each_set_bit(i, &plane_mask, UNDERRUN_DBG1_NUM_PLANES) {
>                if (i =3D=3D 0)
>                        seq_buf_puts(&planes_desc, "[C]");
>                else
>                        seq_buf_printf(&planes_desc, "[%d]", i);
>        }
>       =20
>        drm_err(display->drm, "Pipe %c FIFO underrun info: %s on planes: %=
s\n",
>                pipe_name(pipe), info, seq_buf_str(&planes_desc));
>       =20
>        drm_WARN_ON(display->drm, seq_buf_has_overflowed(&planes_desc));
>}
>
>static void read_underrun_dbg1(struct intel_display *display, enum pipe pi=
pe, bool log)
>{
>        u32 val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>
>        if (!val)
>                return;
>
>        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>
>        if (!log)
>                return;
>
>        log_underrun_dbg(display, REG_FIELD_GET(UNDERRUN_DBUF_BLOCK_NOT_VA=
LID_MASK, val),
>                         pipe, "DBUF block not valid");
>        log_underrun_dbg(display, REG_FIELD_GET(UNDERRUN_DDB_EMPTY_MASK, v=
al),
>                         pipe, "DDB empty");
>        log_underrun_dbg(display, REG_FIELD_GET(UNDERRUN_DBUF_NOT_FILLED_M=
ASK, val),
>                         pipe, "DBUF not completely filled");
>        log_underrun_dbg(display, REG_FIELD_GET(UNDERRUN_BELOW_WM0_MASK, v=
al),
>                         pipe, "DBUF below WM0");
>}

I like this approach! I'll use it. Thanks! :-)

>
>>>IMO there's also a lot more clarity in having the assignment and the
>>>check back to back here:
>>>
>>>        val =3D intel_de_read(display, UNDERRUN_DBG1(pipe));
>>>        if (!val)
>>>                return;
>>>
>>>Ditto below.
>>
>> I'll update those as well.
>>
>> That said, for curiosity:
>>
>> Do you prefer to always use the pattern of declaring a variable for
>> register values and assigning the result of the reading as separate
>> statements?  Or is this a preference for specific cases, like this one?
>>
>> I did
>>
>>     git grep -W 'u32\s\+\w\+\s*=3D\s*intel_de_read' -- drivers/gpu/drm/i=
915/display/
>>
>> and found cases where the pattern "u32 val =3D intel_de_read(...)" appea=
rs
>> to make the code a bit more concise IMO.
>>
>> While here in read_underrun_dbg1() the other variables and initializers
>> do get in the way of readability/clarity, I see cases like:
>>
>>     u32 val =3D intel_de_read(...);
>>
>>     do_something_with(val);
>>
>> to be still clear, and each saves up 1 line of editor real estate.
>
>Yeah, I guess it's a bit hard to have hard rules, and in small functions
>or blocks it's fine to combine. Let's maybe file this under a knee-jerk
>reaction to read_underrun_dbg1() where there's a bunch of declarations,
>and the actual code starts with if (!val) and you're like where did that
>come from. The other functions appear small enough. Fair?

Sounds good to me!

Thanks.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>
>> --
>> Gustavo Sousa
>>
>>>
>>>BR,
>>>Jani.
>>>
>>>
>>>> +        if (!val)
>>>> +                return;
>>>> +
>>>> +        intel_de_write(display, UNDERRUN_DBG1(pipe), val);
>>>> +
>>>> +        if (!log)
>>>> +                return;
>>>> +
>>>> +        for (int i =3D 0; i < ARRAY_SIZE(masks); i++) {
>>>> +                if (!masks[i].plane_mask)
>>>> +                        continue;
>>>> +
>>>> +                seq_buf_clear(&planes_desc);
>>>> +
>>>> +                for (int j =3D 0; j < UNDERRUN_DBG1_NUM_PLANES; j++) =
{
>>>> +                        if (!(masks[i].plane_mask & REG_BIT(j)))
>>>> +                                continue;
>>>> +
>>>> +                        if (j =3D=3D 0)
>>>> +                                seq_buf_puts(&planes_desc, "[C]");
>>>> +                        else
>>>> +                                seq_buf_printf(&planes_desc, "[%d]", =
j);
>>>> +                }
>>>> +
>>>> +                drm_err(display->drm,
>>>> +                        "Pipe %c FIFO underrun info: %s on planes: %s=
\n",
>>>> +                        pipe_name(pipe), masks[i].info, seq_buf_str(&=
planes_desc));
>>>> +
>>>> +                drm_WARN_ON(display->drm, seq_buf_has_overflowed(&pla=
nes_desc));
>>>> +        }
>>>> +}
>>>> +
>>>> +static void read_underrun_dbg2(struct intel_display *display, enum pi=
pe pipe, bool log)
>>>> +{
>>>> +        u32 val =3D intel_de_read(display, UNDERRUN_DBG2(pipe));
>>>> +
>>>> +        if (!(val & UNDERRUN_FRAME_LINE_COUNTERS_FROZEN))
>>>> +                return;
>>>> +
>>>> +        intel_de_write(display, UNDERRUN_DBG2(pipe), UNDERRUN_FRAME_L=
INE_COUNTERS_FROZEN);
>>>> +
>>>> +        if (log)
>>>> +                drm_err(display->drm,
>>>> +                        "Pipe %c FIFO underrun info: frame count: %u,=
 line count: %u\n",
>>>> +                        pipe_name(pipe),
>>>> +                        REG_FIELD_GET(UNDERRUN_PIPE_FRAME_COUNT_MASK,=
 val),
>>>> +                        REG_FIELD_GET(UNDERRUN_LINE_COUNT_MASK, val))=
;
>>>> +}
>>>> +
>>>> +static void read_underrun_dbg_fbc(struct intel_display *display, enum=
 pipe pipe, bool log)
>>>> +{
>>>> +        enum intel_fbc_id fbc_id =3D intel_fbc_id_for_pipe(pipe);
>>>> +        u32 val =3D intel_de_read(display, FBC_DEBUG_STATUS(fbc_id));
>>>> +
>>>> +        if (!(val & FBC_UNDERRUN_DECMPR))
>>>> +                return;
>>>> +
>>>> +        intel_de_write(display, FBC_DEBUG_STATUS(fbc_id), FBC_UNDERRU=
N_DECMPR);
>>>> +
>>>> +        if (log)
>>>> +                drm_err(display->drm,
>>>> +                        "Pipe %c FIFO underrun info: FBC decompressin=
g\n",
>>>> +                        pipe_name(pipe));
>>>> +}
>>>> +
>>>> +static void read_underrun_dbg_pkgc(struct intel_display *display, boo=
l log)
>>>> +{
>>>> +        u32 val =3D intel_de_read(display, GEN12_DCPR_STATUS_1);
>>>> +
>>>> +        if (!(val & XE3P_UNDERRUN_PKGC))
>>>> +                return;
>>>> +
>>>> +        /*
>>>> +         * Note: If there are multiple pipes enabled, only one of the=
m will see
>>>> +         * XE3P_UNDERRUN_PKGC set.
>>>> +         */
>>>> +        intel_de_write(display, GEN12_DCPR_STATUS_1, XE3P_UNDERRUN_PK=
GC);
>>>> +
>>>> +        if (log)
>>>> +                drm_err(display->drm,
>>>> +                        "General FIFO underrun info: Package C-state =
blocking memory\n");
>>>> +}
>>>> +
>>>> +static void read_underrun_dbg_info(struct intel_display *display,
>>>> +                                   enum pipe pipe,
>>>> +                                   bool log)
>>>> +{
>>>> +        if (!HAS_UNDERRUN_DBG_INFO(display))
>>>> +                return;
>>>> +
>>>> +        read_underrun_dbg1(display, pipe, log);
>>>> +        read_underrun_dbg2(display, pipe, log);
>>>> +        read_underrun_dbg_fbc(display, pipe, log);
>>>> +        read_underrun_dbg_pkgc(display, log);
>>>> +}
>>>> +
>>>>  static bool ivb_can_enable_err_int(struct intel_display *display)
>>>>  {
>>>>          struct intel_crtc *crtc;
>>>> @@ -262,6 +377,17 @@ static bool __intel_set_cpu_fifo_underrun_reporti=
ng(struct intel_display *displa
>>>>          old =3D !crtc->cpu_fifo_underrun_disabled;
>>>>          crtc->cpu_fifo_underrun_disabled =3D !enable;
>>>> =20
>>>> +        /*
>>>> +         * The debug bits get latched at the time of the FIFO underru=
n ISR bit
>>>> +         * getting set.  That means that any existing debug bit that =
is set when
>>>> +         * handling a FIFO underrun interrupt has the potential to be=
long to
>>>> +         * another underrun event (past or future).  To alleviate thi=
s problem,
>>>> +         * let's clear existing bits before enabling the interrupt, s=
o that at
>>>> +         * least we don't get information that is too out-of-date.
>>>> +         */
>>>> +        if (enable && !old)
>>>> +                read_underrun_dbg_info(display, pipe, false);
>>>> +
>>>>          if (HAS_GMCH(display))
>>>>                  i9xx_set_fifo_underrun_reporting(display, pipe, enabl=
e, old);
>>>>          else if (display->platform.ironlake || display->platform.sand=
ybridge)
>>>> @@ -379,6 +505,8 @@ void intel_cpu_fifo_underrun_irq_handler(struct in=
tel_display *display,
>>>>                  trace_intel_cpu_fifo_underrun(display, pipe);
>>>> =20
>>>>                  drm_err(display->drm, "CPU pipe %c FIFO underrun\n", =
pipe_name(pipe));
>>>> +
>>>> +                read_underrun_dbg_info(display, pipe, true);
>>>>          }
>>>> =20
>>>>          intel_fbc_handle_fifo_underrun_irq(display);
>>>
>>>--=20
>>>Jani Nikula, Intel
>
>--=20
>Jani Nikula, Intel
