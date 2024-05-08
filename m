Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8E98BFFCD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 16:17:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE39E112CC1;
	Wed,  8 May 2024 14:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AO/C+4vt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EEC1112CA1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 14:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715177842; x=1746713842;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4bvu9t+oKPb8y+wK11mLtunOfRQwEQG3fqsdenx1C80=;
 b=AO/C+4vtjuSjO+rTFW56HG65s683rhrWRpwb5Gaw73oFZvfun5uciTzL
 PDmi5KGrlgMhfaxO/KMzyQugUkD2ePwGSm6RwFIJBwpn3tpznG8JGUF4D
 t1eXAdDrnxZHHvzAnOJnbkKrL2N7Ly2tq9m8rKyXBNAvXMkRhnFBWyOHS
 EqtG7L8AtEuQGCy58Tov1AibsfL1anHLWTWrux208OmO3SpuOymmHIIo9
 Q1c71f+gaElc3T1Ru2zpVCSV09+dMdLEwqbXcHl2ethVLuVDS9CIyv+WG
 UNaYIV7E49yu4206YACM0l75HUwDFMyPu3IR/iUvfRCH6/XntYQt8vP1D Q==;
X-CSE-ConnectionGUID: iZMwKW+bRMCOnGJDm+OrFw==
X-CSE-MsgGUID: cuuG7on5Qy2erCzh/MSavw==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="14848850"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="14848850"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 07:17:21 -0700
X-CSE-ConnectionGUID: K68dGVtLT32jEXPnBzZQCQ==
X-CSE-MsgGUID: 5YYEnqXDTcO/d8i+JglyAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="29416472"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 May 2024 07:17:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 07:17:21 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 8 May 2024 07:17:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 8 May 2024 07:17:20 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 8 May 2024 07:17:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LsNJ6APrOB4qPzl+fkUUrPpY/5NmePALm1dsM9tkTe87RF3R38upSISTxTvEB7EaTrCUgj+UXc+l3bbi2qvVuylEmSYZI3mE6WKDyHBZrEvI7lkavnUGduKVCsBD8L4FEQziuy/RT5n32IJ/RqEmRX8XC3TevohSCD1wFEPLL9RrYrt8e5eifWWgiGQd9JKb6g20WiieWG9eRlh/hZsa+tLETYVdgVZkVjSJkSEU1vNVavy0XOoy4PvbU2WrZjciII8JOrFIJqeGMMGXJoxpLpe8shGQg+B16VS+IAarAP02uKMfGAXt41+AkvnEg3hYi32dVWYIz86T+0OLTSwvwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4bvu9t+oKPb8y+wK11mLtunOfRQwEQG3fqsdenx1C80=;
 b=aLrJbK6EV/auSCUA2fIUXgFpJXdV1svL05Pss5rAx4Wq839RFkU4n1hjiJABKGDUwGIN3Px+O4x0rlW6jt+Ho8SERsParzM0gB1h3NoFBkHi/4DqvvQf6PtRsU10DMJ+HPzQZxaAjaXyzf7W+kYz0IRTmB9erpxyLNNP2cwvG3SpBDO4sJpDXhAsZZl51DVB1w5lo8N5964PBWbT2KBQROw2zZEafwZWc7lwjdAGeosI4xzHPIWYFQxXGcMNex9BhkR4opX9VFwMzNtnXasC8QEcKD4ljFREPtnaGOmMaTGlBOUIc2sSQFnsoOi8E+X4kYei29zz7YZl+FGVRmdMzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by SA2PR11MB5068.namprd11.prod.outlook.com (2603:10b6:806:116::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Wed, 8 May
 2024 14:17:18 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::1604:d970:ed05:4729]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::1604:d970:ed05:4729%7]) with mapi id 15.20.7544.041; Wed, 8 May 2024
 14:17:18 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: "Chen, Angus" <angus.chen@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/mtl: Update workaround 14018778641
Thread-Topic: [PATCH] drm/i915/mtl: Update workaround 14018778641
Thread-Index: AQHal6yD86iewfOex0i8aIVBmcjbvbF/BsWAgAGqq4CADMPGQA==
Date: Wed, 8 May 2024 14:17:18 +0000
Message-ID: <SJ1PR11MB6204A1D3BB33FFFBB6BF32E581E52@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20240426073638.45775-1-angus.chen@intel.com>
 <Zi9uDRgtkT3IkTyG@ashyti-mobl2.lan>
 <c4e0d0c2-e22d-4cef-b6ba-d11970451ed9@intel.com>
In-Reply-To: <c4e0d0c2-e22d-4cef-b6ba-d11970451ed9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|SA2PR11MB5068:EE_
x-ms-office365-filtering-correlation-id: 982aa848-a751-4955-bc54-08dc6f6991b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?enIzMzFrTDNYNW1wSGk0cHUxUjVMRHpUSmJLYmNuRXdZMktQdzI5dEZFSktX?=
 =?utf-8?B?MHM4bWdobWprbXY0RGtZcEtXZmZ4OGMrNFd0aWF4RG8zQTVIN0tzNG1pdFor?=
 =?utf-8?B?cUQwVUV5eXRGbkFkcG5qY3YrVlVPNjhhN256VlRsK0xBUHBFTVN2emZOUlNC?=
 =?utf-8?B?SGNMTHhrejdmK0RzUXU1dUxURzFBVmsrTkowWG1nODdpd2xHbnRYa1pLTlJH?=
 =?utf-8?B?VTRhc0VTekFDczhqS0hweVNqUEkxUTJYQ1V4aS81SGQwNUFOUldWSTZpMlI5?=
 =?utf-8?B?ZUZnZmpOSUV1TVNvZnJ3RHJOS1hPS2J1TmlvdzN4UVJla1ZwTVdRUG42WmxI?=
 =?utf-8?B?N0l0c0dsZ1NDQjNJd1Z0QlhpdENKa1ZxR1Yvc1dNODRzYUg3TU84VjExY1hC?=
 =?utf-8?B?a25CZjMvTW1uU0JQN1Y0MUNFVEZOZWNPUDdnelkyM2FEVTMvWVVDSnFtTHFH?=
 =?utf-8?B?OFpjNk9yQ1NOME1aZG5DNi92amg5cWR4Z05Mb2dXaFVSSmZVaG4ydUI1TzMx?=
 =?utf-8?B?dnNVYTh4dGx1d0E5dWYzT2xlWDg0Ukk2eFhoNkxiRnVwWUdtWnlEUktQQTg2?=
 =?utf-8?B?cTBpY1JJTERYTktScjl6bk9PM0UrRnZhdmE4OGtOVU1tazAvckQrTVp0MUUx?=
 =?utf-8?B?UzJROHBsc0E4bkZsMHNBeGZHQlRPSU13NUZlOERjMkZyTHZEV0hoUWNFOHBw?=
 =?utf-8?B?MTBNY3YwQnozQW1YYkx5bG9tTjZrSVpJREN4M1h5QzZPQ082Q0hNKzhHc2FE?=
 =?utf-8?B?aHUvbDZTd3djcnorNjVROE5LclBOU2dob2t6OEcxMjhiNTFCT1ludlY3OE1Z?=
 =?utf-8?B?OENqOUYreStLcW9RdnNRMzBpNWVZZG9qTFFjUURhMWxkOUI3WElWakFybzBm?=
 =?utf-8?B?cDhUMlFING5qdDJzMG9mK0J2RGlGT1VlRmxHZEVQVTlscnZEYklrUTFodmlj?=
 =?utf-8?B?T0lzdGkzc01aK0FWQjd4QUo0UlJKcm0yUWRoS0ZIL3FaYlBybS9OTDdrbStp?=
 =?utf-8?B?TnBXaFR3SjM3azZENUxMMGtGUFNXYXJFUCsra0Zjc2t5bmhZR3NXMnFSZW04?=
 =?utf-8?B?eW5OL3lZRkYyS3RBenNwVzlnRGR3UGRJTmVJUWJkMTlicVFNZzZ6aTNRSFov?=
 =?utf-8?B?OUJjUDlUWlZtdytPMGRzZVV2MXRZTS9tekZMYk9ZSUR1TERSREpIckltQ1Fr?=
 =?utf-8?B?dUV3T1VVYUxFbktOSmtqdUNNR1Y5cnpUNSs5UEpaTEZ1TU1qVjh6OE04ajRI?=
 =?utf-8?B?emhNT1dxQkUzWkR1cVpYOXZ0RmRnaTd4Y3BxSWVabHZqaUZnMGpqbGF4Rm1v?=
 =?utf-8?B?Ri9TOXEzNS94SC9tQ1BZTWYyRHBZRURpTDYzbHNBdytzVEtXSEFGSVF4YitU?=
 =?utf-8?B?NDhzcUNYYUJkWEJ5QjBqYUU1cU1HRUlYYTE0NXVyS3lQblYvSXoyNnNEem9W?=
 =?utf-8?B?QmQ5Wms1ZVdVaFMvRVhmRnM0N0ZmSEhhZXllRkR6SytNM2tIeGVMTUNXa3BM?=
 =?utf-8?B?R2ZOWWRVZ2QyU3lJdjBQRkhjcVVMUTk5bTMvSkliTG1UR1BlaEJqQXo4Y1dm?=
 =?utf-8?B?Z1JBUmsrVFVzNXRVZlFaL2RIRFRLbityMnFpMmlDcE15Z1BraEhJK3IrYUsz?=
 =?utf-8?B?VmNqWjJwdDhLTmVVd1FOaStDNXBqM085Sm5VY0RHaUtJWEQwcXRzZFE3aUlL?=
 =?utf-8?B?R3A2ZXNPOGJlSW9nMWtqNFBML3U2NU1Ca2lpdjVUUjV0UytMK2VHRkRBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QStVUU80VExzNlNqdVA1eTNqd2hoYm8wYUN1VmdwNkcvZ0pNZTUrU1dBUzds?=
 =?utf-8?B?WFgxcy9tZWJteHFmREdiaVZ2MnFWa0c3WFVqbTR2ejVVeFlNdjNFRGloaytq?=
 =?utf-8?B?TXhiUXZsZVpiV3VudEF3OS9BVzB4a1dBOGNxOVg4U3dPSlFIMG15SHhDN2FI?=
 =?utf-8?B?WHVMK3JpZ3IxU3R4ZHhsK1Q4clF5OWdsZTlxZStqZUxwVlZFOGJLdXMxOW1S?=
 =?utf-8?B?ZnJlKzNaVGFuMHA5c1IyNDZZTVlST085Q0xXeFlsYmdFUjVOdmJoQVl2Q1N4?=
 =?utf-8?B?Q3RueHhXVkxJNjU4T3IxcHNVdkFZWHBMRkpmcDVCM0dyKzdtbmRIbTFQQUVp?=
 =?utf-8?B?WTI4VjN3cTBZRUEzZ0ZxbDljZ2pVUVNRbWtXZ1EvcGVDQkk0blU2MW03azJR?=
 =?utf-8?B?bHhVRHdJVDlxcGdoQXAreU1LTm5DSkJiZWdSeGtzY012L3dZWUtoOXlmZmpi?=
 =?utf-8?B?SHVVWlIvaWVVekhnSnNtVmQzWGxHZFlPYWV3UW5JUitMa1BqSGJhWlQ0NURI?=
 =?utf-8?B?NCt4V0RlUnMyZmJUWDhSMGpkTGZwcm9UVHdZTjU1M0JYK1dnNG0vdEtPaFNJ?=
 =?utf-8?B?MXNjUGlzaHQxOVd3S2syZjVtQVF4Tmdqdi8xWXo0NXVhWHR6RDd1bEpoNEdB?=
 =?utf-8?B?R3pkZ2RaYlVMYXg1ZFlaRDMvNjBCY29FSHFreFBwTzcrZHVTRFdCZDc4VkRL?=
 =?utf-8?B?QVk3UHFpblJFSWdMN2dKMjNhcHlucmNxK0pIRkIzcHd1US96eUJOckR5dnlZ?=
 =?utf-8?B?NGZhUHkwZTVkTkFJYmpZbU9mR1ZXWS9OUmJiU1F0NTE4TDFIWDN3Z1FobjVx?=
 =?utf-8?B?clplM1p3cTFXRHpzMDNFaDFYU1lsM0ZPQyt4ZURPYTRMdFhQbUx2YW9VVlM2?=
 =?utf-8?B?aXBWdDE5MW54WXZOWEo3WGhBU2dwd0RlNldxdFRNWEdkVFRkY011TWtjUUFI?=
 =?utf-8?B?WTcrTTZYbDAvR04xdHlZMnIxQy9tNCs1eHN3eWc4OVhFK0RISHVEZHhVdlJj?=
 =?utf-8?B?dW92bW1oeTZZU2I5NDdUNGJvNzFHYXdRc3E0N05WMTJHckZCQ1Zaajg3cDlW?=
 =?utf-8?B?SllROGhQSlh3UTZrbHU1TkdlZnI4VjFoZG12bXB4OGJXVnZtQWkySCt5RlU3?=
 =?utf-8?B?d3BTYXErK1JqcE90QnhJWDIxazMxN0k3ZEpPVDYxN0p1M0ZHVHVORXZ2SFVW?=
 =?utf-8?B?elg5NDR4eUNGZUZPc2d2Z01vSXhyL3FQM1Q5NDN0K25tUVJwQzVDTkdOSTdo?=
 =?utf-8?B?Wkc5L1EzYTNhWFhCZVNlb0w5Qkt0TXp3ZUVYQmxNZldHRjhlZ1hoR0VoTHRx?=
 =?utf-8?B?R05SNVpMN2FQYkU5M0tOVVFqaFk0RllQcHRLQ2kvT3FZVlVwMktLc0UxN2x4?=
 =?utf-8?B?VXZ1NFMwK3d4ZVJBV3VEOWVQTTlnVUwxdms3S1JIWURtZUpUVHJJcTVSOVhN?=
 =?utf-8?B?SWdvMk1iT29nby9TenFrdUpDc1hyTFNyTDMzTmdiUEh1dE53MlRRL3VlTWJF?=
 =?utf-8?B?YytTYXJJSmk1VnVkV25BMmgrZ3g5Q0NmNHJWSWZUMHR1a3BoMXBJV1hmcThQ?=
 =?utf-8?B?WGhkaU9sNW4yaGFOQUZ3YzZOZ1dVTjVFVG96NjkvRVBEaXVtMlJORG1QNGtK?=
 =?utf-8?B?eVVPQjdOeUF6SDVJUi9xNTI4RDBzVXVpd2drMit6UlVjQjBOand1QjYyUlNU?=
 =?utf-8?B?YWlUK0h5THhQaElOQVdrdmtKRG93VzNrUDVqL2tYbTJMWk5NWUNjK0JZTTM3?=
 =?utf-8?B?WTlzRGpKbkhUOEVma3I3RTY3Vk1DUGI0L1hjM2pnbUx5cmVpaWpNdm12V05i?=
 =?utf-8?B?YkJlQWNvaTI2bWd6ZDVXd3J6a1VRaTJFSHpIZVI5RjFFNHhIMy9pWHZ6ODZN?=
 =?utf-8?B?emdaeHhTWjJYUy9Ga2VrSitPVXFWcjZkaUIvUEVQQXd3TlB2N1I2ZkhCK253?=
 =?utf-8?B?azNuYk40c1JnK0xRM2VENGJpbERwRnA3RmxCUVVsZ2FKNWNqUUtVQndyb1Iw?=
 =?utf-8?B?aWVLS2xWeVZZdWxwajlwdHpwb2tITENDQkhmbWV0NzlibC9HaC8zc3ZjZVlX?=
 =?utf-8?B?SHo5SUF1eis2a1p3OWtQZWhIR1Q4L2NhTXJMRmt4RzhOVHp6WnJ1Z1AzSEI1?=
 =?utf-8?B?QWFEN2Zua3Zod3pUM3NvWEtGVm1BS2JJeDBkdWhNWHBqSXRvZ0M0OWVyRnJS?=
 =?utf-8?Q?Uh63N9C8mB+aYc89T5mMJlM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 982aa848-a751-4955-bc54-08dc6f6991b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2024 14:17:18.6058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m7YzXWI1H5B1OyiAvbFkjpWZT5eCavvqK0BDNz2crf4GfrbDvhHapmbhvvTNva/j6S7wKr2rws38IaehG0rpQvH+KMPOfTf/HXyMF68gCoM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5068
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBDaGVuLA0K
PiBBbmd1cw0KPiBTZW50OiBUdWVzZGF5LCBBcHJpbCAzMCwgMjAyNCA0OjUwIFBNDQo+IFRvOiBB
bmRpIFNoeXRpIDxhbmRpLnNoeXRpQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvbXRs
OiBVcGRhdGUgd29ya2Fyb3VuZCAxNDAxODc3ODY0MQ0KPiANCj4gVGhlIG9yaWdpbmFsIHdvcmth
cm91bmQgd2FzIGZyb20NCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNo
LzUzMzU3NC8NCj4gVGhlbiwgd2UgZG9uJ3QgYXBwbHkgV0EgdG8gVkRCT1gsIFZFQk9YIGFuZCBS
RU5ERVIgZW5naW5lIHdpdGggdGhlDQo+IGZvbGxvd2luZyBwYXRjaA0KPiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvNTQzMTE3Lz9zZXJpZXM9MTE5NTE3JnJldj0xDQo+
IEJ1dCBub3cgd2UgbmVlZCB0aGlzIFdBIHRvIGNvdmVyIFZEQk9YLg0KPiANCj4gT24gNC8yOS8y
MDI0IDU6NTMgUE0sIEFuZGkgU2h5dGkgd3JvdGU6DQo+ID4gSGkgQW5ndXMsDQo+ID4NCj4gPiAu
Li4NCj4gPg0KPiA+PiBAQCAtMTU4Niw2ICsxNTg2LDggQEAgeGVscG1wX2d0X3dvcmthcm91bmRz
X2luaXQoc3RydWN0IGludGVsX2d0ICpndCwNCj4gc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQ0K
PiA+PiAgIAkgKi8NCj4gPj4gICAJd2Ffd3JpdGVfb3Iod2FsLCBYRUxQTVBfR1NDX01PRF9DVFJM
LCBGT1JDRV9NSVNTX0ZUTEIpOw0KPiA+Pg0KPiA+PiArCXdhX3dyaXRlX29yKHdhbCwgWEVMUE1Q
X1ZEQlhfTU9EX0NUUkwsIEZPUkNFX01JU1NfRlRMQik7DQo+ID4gQ2FuIHlvdSBwbGVhc2UgYWRk
IHRoZSByZWZlcmVuY2Ugb2YgdGhlIHdvcmthcm91bmQgaW4gYSBjb21tZW50IGhlcmU/DQoNCkFz
IGZhciBhcyBJIGtub3cgbWVkaWEgdGVhbSBjb25maXJtZWQgdGhhdCB0aGVyZSBpcyBubyBwZXJm
IGltcGFjdCBhbmQgdGhpcyBXQSBjYW4gYmUgcmVtb3ZlZC4gQXMgQW5kaSBzYWlkLCByZWZlcmVu
Y2Ugd291bGQgYmUgaGVscCBoZXJlLg0KDQpUaGFua3MsDQpUZWphcw0KPiA+DQo+ID4gVGhhbmtz
LA0KPiA+IEFuZGkNCj4gPg0KPiA+PiArDQo=
