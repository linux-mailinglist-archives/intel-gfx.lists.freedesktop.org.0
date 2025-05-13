Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03275AB4B92
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 08:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420FC10E32B;
	Tue, 13 May 2025 06:02:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cFzU+wxc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D1DF10E2E4;
 Tue, 13 May 2025 06:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747116123; x=1778652123;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=waWWxV6scVjdRClWgaRaLkZm5JRdzTtftkJs2BSUISs=;
 b=cFzU+wxcs9RtqhOEK2XPROktxuIiVpw6rIOLReb+Z3VgGiPyl+0JMCil
 cBquE02xSnkChiyQ6QeGIGyGCvg9TLxh8ucVfbdkMJjfz7gkQweVApCkv
 8P/3biaLp3KIVfvw2hPDJamCm3S84eJj7Bf6RQBNj0eIaew3LUoXhhrjT
 BopH3svhJ/z6WfAQzs2p00OxzyFKSg803qIUbicDnRzH7PTwd5d5IHkTx
 0DhWuS64aD5cw/dy09KCdVDpCO50iO6auMYGSzuJQgQwx1+8aFXJ3n3k5
 xDyk6Tbf0A86KgqTNXXf2edxcYj1Fn4ZM1e2sAy+AAGugK1bTAPhF/z/m w==;
X-CSE-ConnectionGUID: vfUk8PBSR3CmkC0Psq/Hww==
X-CSE-MsgGUID: SVWmlQy7T8KaktejOErIGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48196663"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="48196663"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 23:02:02 -0700
X-CSE-ConnectionGUID: VVYlwGDDTZCL2a81PfTPKw==
X-CSE-MsgGUID: pVimr95ZTxepu/ctCHjaug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="138125039"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 23:02:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 23:01:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 23:01:59 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 23:01:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=atxGZM6FniAGInP1uOn4ndlAp6jMZTXbVscn8cC1SDlxIjHssm0RSCzsMgdy4Hak+mohXV2A5CX4Vy6Ul3ax0g24jT2p1FkczbdhIpynrMc1+SPGBPKDP2RttOi7unEdQ4PkNCjxj9IXlpk3szHXeDiIjHWw4BbT/riFgEZgcymBzc2WslT9NCqs/WPzHcnA2jdu56nZOXlQ3eutAKoB4ASOW2tsCBYKMCX9EJyJTz+2XQK/LOBaTUUemG8GPpW/F4P5EeTBmCYUgJrSEPAOn6VzR++3c4LfoT21lWFThHVtiXPyJM4AlEkZKLy3B3krkwAyUly6igO6lPP1G7w12A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=waWWxV6scVjdRClWgaRaLkZm5JRdzTtftkJs2BSUISs=;
 b=o5q2pnPwbdwdFoeTk3B1LlsfzCrkRSKmtpG6DE6Y7CuVJI5kcU2Sl8PApMssJLM4ukxvlqI9ke+5DJdv9YBi97mFfCxjprtJZBmGL4Z9DdXAtno+OXon7/LQDtYEbjuwzbyYky5XU9D6tQmQh4ZTChr7QGJIUfkU+6YswGpIIe93zALGgfNGdtoqWZZu/AkYHL206XasoO32tz5tcQftiJhTIMhA0tJprynPrQNRLlrtAYfW4i0abrj3NPGn1tqkQoWfKtb4pA1bveRspOK7Zz5jxJ+rmytnamNgajZCgYFUJHTJ8OMhOGjKxkHVjbt09ehtnghBQ9cMX0N+FsTOCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB7862.namprd11.prod.outlook.com (2603:10b6:208:3dc::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Tue, 13 May
 2025 06:01:43 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 06:01:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH v4 2/2] drm/i915/alpm: Stop writing ALPM registers when
 PSR is enabled
Thread-Topic: [PATCH v4 2/2] drm/i915/alpm: Stop writing ALPM registers when
 PSR is enabled
Thread-Index: AQHbw8qykxsYoGPa8EOvzXEUjiBU/bPQESzA
Date: Tue, 13 May 2025 06:01:42 +0000
Message-ID: <SN7PR11MB6750F7541D2CCCDED7BDC0B1E396A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250513054814.3702977-1-jouni.hogander@intel.com>
 <20250513054814.3702977-3-jouni.hogander@intel.com>
In-Reply-To: <20250513054814.3702977-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB7862:EE_
x-ms-office365-filtering-correlation-id: 10a682c9-3f50-4b6a-8053-08dd91e3a293
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZlJmeUJUN2JSTDZNS0RFTkdWMUNncGJteXFEQWVYZjB3c0VMdG1rVG9zYnd6?=
 =?utf-8?B?RkpJSHFsV1BlS1ZFKzJiMHpGbU5ETHZXYmgvYitVSDgvelhIUHNQVGttUkYx?=
 =?utf-8?B?czFqTzZTcnZiS0owTUpJM3c1VURlQ1ZvMTRlcHh0NE5pVFpPamN6RTJHR1Zt?=
 =?utf-8?B?TDBIdG9NQU9xK2xaMG92Sm10Lzg1Qy9pYkhzNkIraEZ3a0hkVmptQkhXbkls?=
 =?utf-8?B?YU9MS1YzcEFrL2ZPRkI2TGJpTEpHOTFtSjA1MzZBVng2MUZLQnBpanFOWCsz?=
 =?utf-8?B?emk4blRrbDNrVHl3SlUvSU52OEtqVVRwcFZJN0VJeGwzMzRuQi9HOVZrbmNk?=
 =?utf-8?B?UHNpN3N6OTlwVGZDMXhVekZ4ZVd2cDF0RXNOdis4eDJlZHpoSktVbzZOa2lL?=
 =?utf-8?B?L1hKOEp1Y0xrWU5MUUlCVzJkN1MrellieDdkRDFmZy9HQ2I1OUlDRmJ2bzhs?=
 =?utf-8?B?ZS9CY2E5NVRHNnp1UEd0c05BQ29WQnRETkVDZzdnZEIrRTcrUjRmWnBDSzB6?=
 =?utf-8?B?VUhPaVFsN1dRZTA1SkFRdTZrOTRaelNESVlna1FHUmVlVzN1elFlakk0Ykgx?=
 =?utf-8?B?cDRVeUNWY0JVWVBVRmI0clFIakY0OFNjYXdBZ1pwWXVka2Fob01lMUVSdFJF?=
 =?utf-8?B?MURHaHRlN2Znb0pCR1hiVXdhczZyZVMydlpXSGgrcFB0dEU5NmZlZElDR2dM?=
 =?utf-8?B?UjFGSlV4TUJ4VTR5ZTdGNnNnWlUzSHppQy9NaWkxYVAyUnc4NHc3am1JV0ty?=
 =?utf-8?B?SEFFRlBydlY1RVlNS1Erb2FaN2FCSFhQTEhxVDJKMjFUTW9sWUpZbVJrMzFa?=
 =?utf-8?B?eE5iUndWZ3VnWGVTSjViZHg5TlRCQXB3bWt5SXVCblB4RHZSbGR0c3MvdjNr?=
 =?utf-8?B?YWc2dU4rYlFMdEhxNGs5SUVDWUkrQkNCbU4ydVZpbm9iaTZkdDRHSnRNdStI?=
 =?utf-8?B?UmVpMFcrWitFbVBpWVFidmFqWE8zZ1hEaDBCdEdoM1JYYld1TGN3WHIzRHZX?=
 =?utf-8?B?NTlNenhhanNrWUpsd3lkc0Q2M1AxeU54WFNqZkUrU0cvRHp4MCtYZ0lGczZa?=
 =?utf-8?B?SkxZSE1HeUpkdGx0UTdhZGdxcTFtcStHeXU0TTg4VWx3bFNDL3FqcklnTFha?=
 =?utf-8?B?eE5SOGtVbjRYU1dnNTBSODBXTytKR3NLcWkzYUh4Mm95R2JLOHJZWFNGRWlU?=
 =?utf-8?B?bVBhdW1lbXpxcHh0UmNtTGZsVG4xRk8vSVdSQ3kvbTJVZzk3d3plclFQTWRR?=
 =?utf-8?B?VFg3UGdMSktPdTVYWnFZNlZ6Zm0zWE42OURNdFdDclU2OWJoejg0Um9MWVZ3?=
 =?utf-8?B?L3dQT21HV2NVamYyMHlpVXk0Q2RDcDJyRytVZ2JMZ0ZpVXVNZEIweFpBYjBN?=
 =?utf-8?B?d2M2T3UzZytNTFU5OGppM1NuK09zcWhMaHNGU25tS2hyNnVmeXVwM3F3ZjJx?=
 =?utf-8?B?c3JCQjcrV0h4UCtNNjV4RkhkRkI3Y3JMaEFOeEljTVF5c2U5b0lsQTRzd3NH?=
 =?utf-8?B?VzR4OTNkeVVXRkJIMmtkckF1aGpqZ3hQR1pXS3hLczdnS0daRDU5cHdzSWZm?=
 =?utf-8?B?b3p4S2hMTENYUmUvSHU2bmkwWWZlMFJPSzNrSHdXZEJvblNlRGVucnNNeGJq?=
 =?utf-8?B?UWticUtOZDlpbzYrbFVxMlFmUDJkSVZBYldLR0kwTTA3UlBwWjF4MURMRE8w?=
 =?utf-8?B?emlOVGhqV1lScjcxVkpUMWo2OVZuaU1EcXhlMSszRThRRkExSGRLejBCUUdG?=
 =?utf-8?B?SjNaQ1VHTy84UUx4N1VUcUpNM3hzanNkbXJsbDJzSHFLaWUwbnQ3enpxZ3U2?=
 =?utf-8?B?RVZ2dmE3cTRtbUY3ckg3am5DeWVzVDZIaEtDTnVLb3RVT0hSUmM1eTRCbGZT?=
 =?utf-8?B?cWJHVm5zRjMyVEQzb0Y3TXBvSkQwOWE5MUNPZUFLUk9TMC92ZUZSN2d0S2ZH?=
 =?utf-8?B?V1ZrdzlreXk1eU5jNjBCSGtIa3YrbjlTTFFWMDY5c0NBZGgvNTMvS2t1RlA2?=
 =?utf-8?Q?GPEdf5tsf+NJb8PWxhA2vWUOnJzWfA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZldRSHhlRG1NSVNzdHV6R2t3WHE5WTlXbS84ZHYvOUJoR0tRMExjcE1uZW5k?=
 =?utf-8?B?aE5uSUhIOTF0V1BMUE01dFVGbzZicE1kQ1dGTHYwYThTRitEeHN3b2N0QkEv?=
 =?utf-8?B?NWVxVm5sWXQwUWpIVmFGZS9mQkpFTUJUUk50RFc5ZCtWVVFLajRvVk1CMXFP?=
 =?utf-8?B?K09MVzlBeFMxZnlLMHcxL3lmejdicWNVM2VBb0IwUkJDUHl4bFZmOG5yYk1U?=
 =?utf-8?B?cG1JT1BHTWk2Q2dYNEt0d0F1L0d2eVlwNHRzTDVXWFhkUE1Ta0dDNWxMTUV0?=
 =?utf-8?B?UFhJQzAyM25pWWhJN2cvTk9FRE9odjkzTlNzNWJxZFZKZXBwNTFjM3RCeGJE?=
 =?utf-8?B?T1NSM1VYZUk0djBOdWxnTUVvRnN4ZVhHNXBIVzZJN1RIcldhNkcxV0h1Wk1k?=
 =?utf-8?B?SE1pSlN1cjV3WGh4ZmJDZmZPRCtWai9rRWlCMFBzMkh6bmxtd1BQMzRJWURk?=
 =?utf-8?B?QVd6dmRoYW55dkQyeis3L2lyS3hlbTQvSWtRMFRyOFBXSVpsMHVNY1BKSGZM?=
 =?utf-8?B?VVlwKytML2pzcnhKTzB2bXJ2a2tXbDMzWk5ReENSYk1FcUJOM0JvWFQ1VmRs?=
 =?utf-8?B?dzArYndQM2JUbDVPL3pFckxTUktrbkJMUmhXcytMb1k4b1AwdXVRWGQ0aXov?=
 =?utf-8?B?TTJ3cWJxemF4UEt1K2pLVUcwUncrYlRBUWF4cSs1YUV0aS9jOWVycmVpazJu?=
 =?utf-8?B?MldXYzZ0dmlac21XWU5LT2N2dWJHYWQzZ3pBL1k1aFpieDFEZWJsUTFIUVZw?=
 =?utf-8?B?eEhUY1hpaTc2MnlEeE1FVUJTLzhHSCtxKy9kQUYzd29PVHk4ZUJybFlibXM4?=
 =?utf-8?B?NGRhalpMcW9KT1VJRC8vTUZPN3ZYZWJ2dDRQU0plVVNlRXkzT0FEMUs5amd6?=
 =?utf-8?B?blpZSmxsaTBpNWdzcE53RnVnQ1Ftd0hEazV6TVFhWStNZEszNUZKcWpmdXNQ?=
 =?utf-8?B?WlRJSmNhUXREUW5aMmllODNuZEllNXB2M1k4Z0Y3TTdTdjdJMjVKbzhQaHlm?=
 =?utf-8?B?MENVc1pCNEREeDU5MU5wNzhuWm13ZXBMQUMzdzlQUXlxeVkvSXk1RllXZlpw?=
 =?utf-8?B?VGVsT2JYSUd0Rk94UTBvOXk0cWhMaGFLenk4ZDBkYnVLV0hiRUNLU0EyK0lt?=
 =?utf-8?B?ZGhXRDFMTVNUS0ZVc2VYeG1Dcy8wVG53T3NxOTVuOTFVQjVnTGxXVVkzZm5i?=
 =?utf-8?B?Uk5Ka2FXejVjNUhxVnlVdXQzUlVwL2RjZ3doMm91V0tFQzlOcllBQm9aUE1Z?=
 =?utf-8?B?VzVqL2l1WSs5QmJsbVIzRG1ib0V3WUVHK05nWENZcDB1cERhc0ZYbSszakM4?=
 =?utf-8?B?ZmRkL3Q1YUgrWnloMWdYem5TL3JRK0VkRXJsSUlzcXlRZHJSK1FBQVVrWUNY?=
 =?utf-8?B?b3NvWk9VSFA5Y2VIYzQxRUR3NGNFa1FyakRqWlJwcllvemR4cDFOdFhQSWVQ?=
 =?utf-8?B?QVBwSnZKTVJWNTU3R0ZUelJyeFYzNm1pSm9nMmNXTGhYUkpVT3JhRVJFVkJS?=
 =?utf-8?B?SkFmSjNPelp1U0EvNjFTeCsxLzJOQllibDNmYll1UFFTY3pIeE5HSVV1eEhj?=
 =?utf-8?B?cEhEaDY0WVhqekY4UXRpdVdiUWVjQ0phYzZkYXJqZUVPZGFHakpVUzdxamo1?=
 =?utf-8?B?QUF1QXhHc3cxREoycGdZdjY2VW44cjYxcnlPUXFsNC9rcUhNc1lmcVpzbE8y?=
 =?utf-8?B?TzFlVzVmOXRyL05OdVNlczVPRkk1cVQ4Vi9OcHR0aTdoa1RkUkE3ZXllbjBR?=
 =?utf-8?B?OGhReEFIS2lpQzZzNHVwaUFWSFhaYlRmdlVTT0lmeDlHZmNiUnkxWTZLbERR?=
 =?utf-8?B?aThWT3V3c3d1YTVwbGNIVEpIZWtrb25HUkRvUU0zZzR3UEpoUkxPd2dSeHlH?=
 =?utf-8?B?TzBmdGo0SWt2TFdWajE5b2tyenBVTWdmZldqclc2MkF4TnZ1d3JONU56cXF5?=
 =?utf-8?B?Z09XS0xGZUdMRktCZEY5UnJmYTR0WHVkR0NvaStGVXdKeGI5aEF5bUYwa2ZI?=
 =?utf-8?B?SUFZYXpZTTM2VE91aFNPOS81akVuZzlvMkZJWGM1TjRFVUpmY3BSWHFrL3R3?=
 =?utf-8?B?WVlUS3FNZmVEV29ZM3hzVXNlWUJSUXBvUmJMUjZQbzR0elU4M0k3dUpQcVo5?=
 =?utf-8?Q?FipAKPibIw64He5I5nXeJYNUU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10a682c9-3f50-4b6a-8053-08dd91e3a293
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2025 06:01:42.7377 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5qXgvyMkOK9v9nCbRnbiHSUi7r9nb3ClVAMYFW7fseA9fRNXurNubhdaa0nzgONEIu6IFlyw3URfp8L4fMPwsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7862
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE1heSAxMywgMjAy
NSAxMToxOCBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+OyBLYW5kcGFsLCBTdXJhag0KPiA8c3VyYWoua2FuZHBhbEBpbnRlbC5j
b20+OyBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIHY0IDIvMl0gZHJtL2k5MTUvYWxwbTogU3RvcCB3cml0aW5nIEFMUE0gcmVnaXN0
ZXJzIHdoZW4gUFNSDQo+IGlzIGVuYWJsZWQNCj4gDQo+IEN1cnJlbnRseSB3ZSBhcmUgc2VlaW5n
IHRoZXNlIG9uIFBUTDoNCj4gDQo+IHhlIDAwMDA6MDA6MDIuMDogW2RybV0gKkVSUk9SKiBUaW1l
b3V0IHdhaXRpbmcgZm9yIERESSBCVUYgQSB0byBnZXQgYWN0aXZlDQo+IA0KPiBUaGVzZSBzZWVt
IHRvIGJlIGNhdXNlZCBieSB3cml0aW5nIEFMUE0gcmVnaXN0ZXJzIHdoaWxlIFBhbmVsIFJlcGxh
eSBpcw0KPiBlbmFibGVkLg0KPiANCj4gRml4IHRoaXMgYnkgd3JpdGluZyBBTFBNIHJlZ2lzdGVy
cyBvbmx5IHdoZW4gUGFuZWwgUmVwbGF5IGlzIGFib3V0IHRvIGJlDQo+IGVuYWJsZWQuDQo+IA0K
PiB2NDogaW1wcm92ZSBjb21tZW50IG9uIGludGVsX3Bzcl9wYW5lbF9yZXBsYXlfZW5hYmxlX3Np
bmsgY2FsbA0KPiB2MzogZW5hYmxlL2Rpc2FibGUgQUxQTSBmcm9tIFBTUiBjb2RlDQo+IA0KPiBG
aXhlczogMTcyNzU3YWNkNmY2ICgiZHJtL2k5MTUvbG9iZjogQWRkIGxvYmYgZW5hYmxlbWVudCBp
biBwb3N0IHBsYW5lDQo+IHVwZGF0ZSIpDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRl
ciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFq
IEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCAgNCArKy0tDQo+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgIHwgMTMgKysrKysrKysrKy0tLQ0KPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gaW5kZXggZGE3MGE5
OGExMjkyLi5jMTc2YmRiYzE5YTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+IEBAIC00NTMsOCArNDUzLDggQEAgdm9pZCBpbnRlbF9hbHBtX3Bv
c3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAg
CQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gIAlzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gDQo+IC0JaWYgKCghY3J0Y19zdGF0ZS0+aGFz
X2xvYmYgfHwNCj4gLQkgICAgIGNydGNfc3RhdGUtPmhhc19sb2JmID09IG9sZF9jcnRjX3N0YXRl
LT5oYXNfbG9iZikgJiYgIWNydGNfc3RhdGUtDQo+ID5oYXNfcHNyKQ0KPiArCWlmIChjcnRjX3N0
YXRlLT5oYXNfcHNyIHx8ICFjcnRjX3N0YXRlLT5oYXNfbG9iZiB8fA0KPiArCSAgICBjcnRjX3N0
YXRlLT5oYXNfbG9iZiA9PSBvbGRfY3J0Y19zdGF0ZS0+aGFzX2xvYmYpDQo+ICAJCXJldHVybjsN
Cj4gDQo+ICAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrKGRpc3BsYXktPmRybSwgZW5jb2Rl
ciwgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4
IGNjZDY2YmJjNzJmNy4uNDMwYWQ0ZWY3MTQ2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTgwMCw2ICs4MDAsOCBAQCBzdGF0aWMgdm9pZCBf
cHNyX2VuYWJsZV9zaW5rKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IHN0YXRpYyB2b2lk
IGludGVsX3Bzcl9lbmFibGVfc2luayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJ
CSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpICB7DQo+ICsJaW50
ZWxfYWxwbV9lbmFibGVfc2luayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ICsNCj4gIAljcnRj
X3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID8NCj4gIAkJX3BhbmVsX3JlcGxheV9lbmFibGVfc2lu
ayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSkgOg0KPiAgCQlfcHNyX2VuYWJsZV9zaW5rKGludGVsX2Rw
LCBjcnRjX3N0YXRlKTsgQEAgLTE5NjIsNiArMTk2NCw4DQo+IEBAIHN0YXRpYyB2b2lkIGludGVs
X3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJICAgICBJ
U19ESVNQTEFZX1ZFUngxMDBfU1RFUChkaXNwbGF5LCAzMDAwLCBTVEVQX0EwLCBTVEVQX0IwKSkg
JiYNCj4gIAkgICAgIWludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpDQo+ICAJCWlu
dGVsX2RtY19ibG9ja19wa2djKGRpc3BsYXksIGludGVsX2RwLT5wc3IucGlwZSwgdHJ1ZSk7DQo+
ICsNCj4gKwlpbnRlbF9hbHBtX2NvbmZpZ3VyZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ICB9
DQo+IA0KPiAgc3RhdGljIGJvb2wgcHNyX2ludGVycnVwdF9lcnJvcl9jaGVjayhzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKSBAQCAtMjAyOSw4DQo+ICsyMDMzLDkgQEAgc3RhdGljIHZvaWQgaW50
ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCSAg
ICBpbnRlbF9kcC0+cHNyLnNlbF91cGRhdGVfZW5hYmxlZCA/ICIyIiA6ICIxIik7DQo+IA0KPiAg
CS8qDQo+IC0JICogRW5hYmxpbmcgaGVyZSBvbmx5IGZvciBQU1IuIFBhbmVsIFJlcGxheSBlbmFi
bGUgYml0IGlzIGFscmVhZHkNCj4gLQkgKiB3cml0dGVuIGF0IHRoaXMgcG9pbnQuIFNlZQ0KPiAr
CSAqIEVuYWJsaW5nIHNpbmsgUFNSL1BhbmVsIFJlcGxheSBoZXJlIG9ubHkgZm9yIFBTUi4gUGFu
ZWwgUmVwbGF5DQo+IGVuYWJsZQ0KPiArCSAqIGJpdCBpcyBhbHJlYWR5IHdyaXR0ZW4gYXQgdGhp
cyBwb2ludC4gU2luayBBTFBNIGlzIGVuYWJsZWQgaGVyZSBmb3INCj4gKwkgKiBQU1IgYW5kIFBh
bmVsIFJlcGxheS4gU2VlDQo+ICAJICogaW50ZWxfcHNyX3BhbmVsX3JlcGxheV9lbmFibGVfc2lu
ay4gTW9kaWZpZXJzL29wdGlvbnM6DQo+ICAJICogIC0gU2VsZWN0aXZlIFVwZGF0ZQ0KPiAgCSAq
ICAtIFJlZ2lvbiBFYXJseSBUcmFuc3BvcnQNCj4gQEAgLTIxNzIsNiArMjE3Nyw5IEBAIHN0YXRp
YyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVs
X2RwKQ0KPiAgCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiANCj4gCWludGVsX3Nu
cHNfcGh5X3VwZGF0ZV9wc3JfcG93ZXJfc3RhdGUoJmRwX3RvX2RpZ19wb3J0KGludGVsX2RwKS0N
Cj4gPmJhc2UsIGZhbHNlKTsNCj4gDQo+ICsJaWYgKGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5
X2VuYWJsZWQgJiYgaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gKwkJaW50ZWxfYWxwbV9k
aXNhYmxlKGludGVsX2RwKTsNCj4gKw0KPiAgCS8qIERpc2FibGUgUFNSIG9uIFNpbmsgKi8NCj4g
IAlpZiAoIWludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpIHsNCj4gIAkJZHJtX2Rw
X2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRU5fQ0ZHLCAwKTsNCj4gQEAgLTM0
OTgsNyArMzUwNiw2IEBAIHN0YXRpYyB2b2lkIHBzcl9hbHBtX2NoZWNrKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ICAJaWYgKGludGVsX2FscG1fZ2V0X2Vycm9yKGludGVsX2RwKSkgew0K
PiAgCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHApOw0KPiAgCQlwc3ItPnNpbmtf
bm90X3JlbGlhYmxlID0gdHJ1ZTsNCj4gLQkJaW50ZWxfYWxwbV9kaXNhYmxlKGludGVsX2RwKTsN
Cj4gIAl9DQo+ICB9DQo+IA0KPiAtLQ0KPiAyLjQzLjANCg0K
