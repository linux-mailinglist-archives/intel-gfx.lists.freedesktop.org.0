Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8BD8C80FB
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 08:34:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA39410E0DA;
	Fri, 17 May 2024 06:34:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aXSl84Bh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1995B10E0DA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 06:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715927673; x=1747463673;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6TFPPwZC6TVbVro4/5TfUkpgUpRhtxLCIyywdRtOP/8=;
 b=aXSl84BhCM3be9A1s8uHQjxy4HOFJonQOL0JTaZFBo4MwgJ88QLH/tG8
 j7WkPf8/0cCdEMlPjE9Ha66F/Qf0HAfCV0+5IuwUT0IfrFzK0zRdv0ZxF
 nDItfTjYQyUdorSFYc5UL3+xrR9k8j4D0VEpHBH1/Wlexk6RmsfRGhk+j
 8b2nLidnrQCc4h2tO9teLXZ500JY1l6wPNDYm4L6CSNHWaMpnnQ2inJBp
 /sgtGTv8bsZJjyw/Ey3pG/FAFvVhYCoNuUVBKalgeimRzrYYJlImiDCJ0
 sKz/e4ZluZQo+4MF/9cPohSureHAauT3m7iN3ugfhWoMmk/IFq0FJi3TK Q==;
X-CSE-ConnectionGUID: BfPz6ChdSJOwmFUK0UsGig==
X-CSE-MsgGUID: QlAqg9OSQAaHT48kkpUcJA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="12299004"
X-IronPort-AV: E=Sophos;i="6.08,166,1712646000"; d="scan'208";a="12299004"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 23:34:33 -0700
X-CSE-ConnectionGUID: ef2H/nDsQVyNRdfZAUuAvA==
X-CSE-MsgGUID: Pm9K3w1RTQSl0YHDPS3EDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,166,1712646000"; d="scan'208";a="36200570"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 May 2024 23:34:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 16 May 2024 23:34:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 16 May 2024 23:34:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 16 May 2024 23:34:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gr6KZFjkQ39O0DsFS5vBf8Wsb9vcSGhgI7bvzZcQJy93Uvrj96QhSQk/mFp0FWM0BQ0XauoHcNxY/dNdV0idvtYGlEtNuCJDG9eAumzeNVNsSQXFd7+VvWnDtQxaTQBR1LmKmOk406gbDBJfqADYUskR9dicHECZ4rVJ4bG2qG3qiw8FURRtgpBgRli5a02BQr8oKumeRtaoF1laOA4mhPAvkbhekmnq0kNTfEaBz7Y1MhbMPKMM3uaDJDScW2ee+oEHWf77/4t1NWqIQkmKcBYlXd4csu/eX1M6NJNqoA8Qj7yFv2w1Oe7q3ZBcLx22DkZ8gd4p0KIiXHP71v5P7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6TFPPwZC6TVbVro4/5TfUkpgUpRhtxLCIyywdRtOP/8=;
 b=dY+vY9dRKzCfPlOcgn8NEnQ1j7Gl9hC+MrC1vVhG4N0hAhomFRBzPj4Z1oKI3zuIewZ7fEMtp0swlMRhEGA3K9rDGm4/bScFTJXqbeU1rhWgzkMjuQkMwEWl7LAdGgHz+IAwOTZcDiIsL4alB2RxNR/C4DJTCBMH7BP+fn2grP+enciliaRCEOMsoty+CFIjTh8RNv+hbjc9YDz5hgBV8aKrNtWwHakfBRuNvU9Lewr+ZxhbBEBOjmLYHWA5OXJMWx/W+EkNE2dCvwcJ4UC4imJcvw+C9rn7EoefFnQB68HDtVRvRwF33RkiSKZ8rHH/tq35aAVXj67fvv698TehMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6143.namprd11.prod.outlook.com (2603:10b6:8:b1::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.28; Fri, 17 May 2024 06:34:25 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510%2]) with mapi id 15.20.7587.026; Fri, 17 May 2024
 06:34:25 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/psr: PSR2_CTL[Block Count Number] no needed
 for LunarLake
Thread-Topic: [PATCH 3/3] drm/i915/psr: PSR2_CTL[Block Count Number] no needed
 for LunarLake
Thread-Index: AQHanSAYgzSKLGf2akybJShSp9VaL7GbDeDg
Date: Fri, 17 May 2024 06:34:25 +0000
Message-ID: <DM4PR11MB6360867BFB8832B2BC9CA36CF4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240503060621.987820-1-jouni.hogander@intel.com>
 <20240503060621.987820-4-jouni.hogander@intel.com>
In-Reply-To: <20240503060621.987820-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB6143:EE_
x-ms-office365-filtering-correlation-id: 77059051-7df3-46d1-4cef-08dc763b654c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?VzFKRDBFRHpBbmU4bjJVSTU0NjByTjNQdkdEOGs0T05hNnBPYmQ5bnRuVWls?=
 =?utf-8?B?bTAzeVVGd0RtLzNjb1JqZWlsbjZFblNWOHZkOVk1TGRzb1BjZmYrN1NSUHFz?=
 =?utf-8?B?SWl1TzRxUUZDUXZGZlB3c2Z2UjNja0RPRFdFUGNlcS9VTW0zejNiOEVpMmxl?=
 =?utf-8?B?eVc1OWJyeURzZUxReENId2VLenYwWEFzVnEyQUkzSThOSUhLbDFudDB0Uk94?=
 =?utf-8?B?eE5GQjNXT2p4YnlIZVRCT1p6bktaSGdyUGQrZjZIbjJvU1RVTERDYy9LTURW?=
 =?utf-8?B?MWhmRmtJdm10K25oTXJSLzI1OUJVbmVqL245aDVRQ2hPYXdmZURFcnpLNzN5?=
 =?utf-8?B?S0VabUpaVDZ6UFRSdFdpVWd4ZUV3RmJ1ZWtVa1RzS3hzTk9WcWRXNG5sU0Rz?=
 =?utf-8?B?Z1lzR242TzN5UStEZy9CdmxvNXZUczRXWFJMZndJNmxicEE4c0NwcjJxZ0pR?=
 =?utf-8?B?VVhZQzlyd3pxK0Z1L0V1WXBmV2lnNGlqSFMrbjVJdVJsbURsOFJoSzRPaEpN?=
 =?utf-8?B?SjYxOElITk9jbUxFeFhvb1Y4dzdGSWlRTnhRc0dRN2FjQzlrZUVBdGJ6VHox?=
 =?utf-8?B?K21iNUxodDJCT2RRWVJUSWZyYk5ZTTBsOTZaMzg5cDlnczgwbjFKVE1nQ3pZ?=
 =?utf-8?B?R3FNUjhIWisxWE9vU011bXkxb3FYaTkyU1JqM1JDbEgxbFd1YUdZOFhhM0I3?=
 =?utf-8?B?OTRubndBelNWRWFIT2NaYlh5K3BmWXhuVFphMFpnQWo4MGJyS1BBRWtweE5O?=
 =?utf-8?B?d0tvdjJSeW85ekp1d2E5RlRqd3NsVndqY2VtREFCUEJLY2FaY2h5OE0rT0sw?=
 =?utf-8?B?TTlwbEUvaVdhVGhDNFJiL0twQjB3dmh1bzR4S2s4OVdqWkQ0MnlhK3drYTY5?=
 =?utf-8?B?d0VUaUo2UWkrQ3g1T25VWU84S09GZU5adkVwQ3JpWXZsRzBIc3ZPT0dqdTU0?=
 =?utf-8?B?U2llODBxUDNBK3NJRXA3Ri95MDdBUHZZN2doL0tJR3JLdFlZNEVKWCs3T21F?=
 =?utf-8?B?N0JYMGZEdUJUREVzKy9jMjN2MW9VRWRYa0pFVHdETGJLN3ZZNDA5WlBKZ2Q2?=
 =?utf-8?B?NXdUMWkxYjNvS1VwZDJJNUd4ZlNIdzJGMkpiV0dlZncxMTFKSmE2MjZ0OHNH?=
 =?utf-8?B?UW1WckVtbnRkLzdkY1N2bzN0YmJPVE9ScTV1NlhscEFzTmcwQVNNVFhkSzFK?=
 =?utf-8?B?ZFdLUnNLRFNjNVI0bW1kdDV5Y0ZwMVZEbkw0cGVMTElDeWVWd0szV3FLSTFZ?=
 =?utf-8?B?aEhhUnBWbS85TGE5ZCtYSUkyWGgrbDdGcFpISnF2SDVpVFVWMUVxNVRWV1cv?=
 =?utf-8?B?VXBoKzQvUkp3dGZHZlBxZk52SHE5OTUvcERBcDkrNmVqOGNOclJxampWUHJq?=
 =?utf-8?B?aUsrL1hhWEsvUjc5WDk3SW1GM0dWcGVoRkdNN0FHdWtxNFhnc0ZoVGxacXk3?=
 =?utf-8?B?M0FXVlMrOSthQjNOWWpVWEZXc1A5SGNBVGx5ZCttdDI1d0xnZkZxRFlvejND?=
 =?utf-8?B?ak9wN29hTTRZUVdNdS9SN09VU1lYYXlIWUJlanpFcTVEOGV4bVNVajY3cXNw?=
 =?utf-8?B?TzhiVlV5L1Z0TysvdENHSEFQcUs1dnBPUEZKcnpDZ1hqSU03cGtRRWd6V05V?=
 =?utf-8?B?UDlzZ0FQZzBVdWhnSlkyeWwxWTNROU9kczcyWHhhTURRSWZKZEs2KzdFdjhm?=
 =?utf-8?B?TmtCdGpIODZGZmtpOGtCYzBqVGN0aGhFNWJDNUhqZVhCeGVMS0ZzbEdjeCth?=
 =?utf-8?Q?O7oykkLBIETrRTw3fzLn+u6tRo6sdJV7VjcFC5g?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dGc3S1U5TjlkeHRFM1FwU0gzK3hsZXNab28yUDZ4MTFtWnNLakZrc1ZiVnpF?=
 =?utf-8?B?eVlUMGkwMEN5eXQvVkRwQ1lQUGVkR1k4d1J2Y1pKRXliRUQwekZ4WnFyaTg3?=
 =?utf-8?B?bW95ODZNQ1V3T2R0dXUzanhMYXlnOUVLOHY0d1VVVE82YTIrK05ybFJWUEcx?=
 =?utf-8?B?UXdxMFppR205cnU1bnNubU1qaUwxY1FpV2F2M0lMM3U5Q0JBRjVWdXhpQWtw?=
 =?utf-8?B?dUxKSW8yaEk0WG1EYWhTdmtGcFZEMklkTTBpMFNxYS96aEZMNTJ1TGN5a3NQ?=
 =?utf-8?B?cVBTVWNQQVhKb2pJYklQUlc3dGdudGpxdkk0RDBOc3JteHNIaXZhc3JuSU5K?=
 =?utf-8?B?UGYwbXlWdzR5RUpMd09xdERuNjhuZXJteVJRbXZxbFhtK25vTFpBU0JrUmpQ?=
 =?utf-8?B?N2doZThCbnZBMFZ0SGM2MURjUmY0WkVlek5kL3o4eWNETnd3bzV3Ylg2c1lR?=
 =?utf-8?B?MjhNamhnN2Z1T2ZFeVVidXJzV1FZZG1BWHJLbW1lTGQybmhKMFpjd1ZrL0lj?=
 =?utf-8?B?cDVxblJZeWJtbUdqa21kSDZuZnExODc0NzVraXhUZC91OUZEZWVBOExjeXZR?=
 =?utf-8?B?U0pXdlY3R1IxQjJFZEVBWDJ2WllsWXFEOW1TaEVrWTk3RDhLM0NIYlAzQ3dr?=
 =?utf-8?B?UjN5V3UzWVc0R1JzdkhhampVY0JKM0p5Y3JudFROYVQ0RDY5SThxTnlLRHd5?=
 =?utf-8?B?UmNkOEp6eDJlTnZzZXgrOHowNnVISERvZW9zTU5iaGd1YUdVWU1kS3ZxQ2R6?=
 =?utf-8?B?TXdhbVZGUTR6SkxJc0pyNm1iTjJFMXB6WUgxd3o4cEJMbThZM1Z3c25PNXN0?=
 =?utf-8?B?bkpmdUhzdmpQTXpXMHRsUGZyWEU0eDJpRk1pOU5telpNcUphOWlnZlVVeEp0?=
 =?utf-8?B?SjVBa2o5R2NmMStxMDJUbHEvV1FLZk5ydWNLQjVnTlczUncvSm5VZVNLeFpJ?=
 =?utf-8?B?WVpjZ2s0WTlDbDJRT0NrL3NuYW5RcjRQUEl5SHFQSmExbGc4UXhVT1NSTFhR?=
 =?utf-8?B?VklCMnZOM2FlT2VqbGY1Ylp2Y3AxaW85NVBFMXhPMUx0aUN0T3R4TFBkaDBm?=
 =?utf-8?B?aG0xck5Tbk5KK3F2RVhQZHNtVGJORHRvci91aEcyU3pORFRmT1QvWGpQdk1s?=
 =?utf-8?B?L0Z3SjBrM1dUanJCRXJpeDdQeXNCcVlmc1V3cmptc0cvNzE5TUlMb2VlcXBs?=
 =?utf-8?B?NGpZMUpmNHR0blJURmZVcDBIZmFOTVNTZWhOazA0YytTZThRYnFqWWFKcXRs?=
 =?utf-8?B?Wk1jMkZlVit6UTkrU2lVZDRNVjRlOTJiKzV5bys4dlI4Z2ZoVTFNODQ3WWha?=
 =?utf-8?B?K1dsV2d1akNvZmFZdDlmRmJxQWhTSWljUzlwR2taZ04zeEdUbmt6YWdMWFlz?=
 =?utf-8?B?cFlVL3lvVVJBRVJ5Nm05TGhNR3pCaDQ0SlV3eTB3dVRmbkNHbWF6VTBwUUhR?=
 =?utf-8?B?YXdzLzhTc0xPT0dnZi9YNWtBaGRaYmJwMEVlZm5XTW4vR2xUN1pxblpUb0Jn?=
 =?utf-8?B?M3BQOHBGK2pTNGtXY1EyLzYraThUVHlCMW1meWpqTFBJZ043VThGTDZaQ2ox?=
 =?utf-8?B?b3ZDUVdKZStJc0g4WHRVaVZYeWJEczI0REVwVkdkRURvQ0tYUzVjZjFpZENj?=
 =?utf-8?B?UkZ0alFQZGtoY3NRaUJ4ZkJjOENWdUtmd0F1em1RQlRsMjJyanJqY2J3TTJ3?=
 =?utf-8?B?Z1h5aUo0MDY2SmpwTmFwRHpCYlYrREdkdWxoYnlaRlJOejM4ZTZPczVBRVIr?=
 =?utf-8?B?ZkNQRjNPMWFvVkdrM2gzVzE5ZnlveTRySk00a3lLOGFpaTNFekRnZWJDR1VQ?=
 =?utf-8?B?OGJBUkNnSWE4R1VFMkI5WkRsRVBXczNrdDk0aExBcm1zc090aEN6bzBBUGZk?=
 =?utf-8?B?bjNVTlFuUWtYNEY2Ump2MGhSTk5qSWNJdlVNNzJsTkphK3NYWUViRi9zWFJo?=
 =?utf-8?B?czJUcUNNeCtZclZSOHEzVUpXUlc2NkQ1VkZ2ZkZwOEc3ZTA1QXVlZEpNNWhW?=
 =?utf-8?B?SDdnb3dzV0hSbE9uWTdxNjJ6STN2bEhwZW5KWDU3SzNxQmtzT1BWQTdobnJQ?=
 =?utf-8?B?c1pVMmRFMGZnT1I5OXdQaFcrN1BuM2lyenNaSHo2MXhCQ25PZlY2R2l0MGlK?=
 =?utf-8?Q?2hatdXglG87m18PYWGkvR7P2J?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77059051-7df3-46d1-4cef-08dc763b654c
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 06:34:25.3896 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ulyF/2wjSw94LA1pY6taBZDSao+VbS9Nmib7GvkV672JrA8xggDUAe40MorZFujj67lT8lUZgA9o1htCNXmhqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6143
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogRnJpZGF5LCBNYXkgMywgMjAyNCAxMTozNiBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAzLzNdIGRybS9pOTE1
L3BzcjogUFNSMl9DVExbQmxvY2sgQ291bnQgTnVtYmVyXSBubyBuZWVkZWQNCj4gZm9yIEx1bmFy
TGFrZQ0KDQpOaXQ6IHMvbm8vbm90DQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTog
VW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiANCj4gUFNSMl9DVExbQmxv
Y2sgQ291bnQgTnVtYmVyXSBpcyBub3QgdXNlZCBieSBMdW5hckxha2UgZG8gbm90IGNvbmZpZ3Vy
ZSBpdC4NCj4gDQo+IEJzcGVjOiA2OTg4NQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDRkNjdhMzg0ZTE0OS4uNWViZmU0MjQ0ZDUx
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAg
LTg2OSw3ICs4NjksNyBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQ0KPiANCj4gIAl2YWwgfD0gaW50ZWxfcHNyMl9nZXRfdHBfdGltZShp
bnRlbF9kcCk7DQo+IA0KPiAtCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpIHsNCj4g
KwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyICYmIERJU1BMQVlfVkVSKGRldl9wcml2
KSA8IDIwKSB7DQo+ICAJCWlmIChwc3IyX2Jsb2NrX2NvdW50KGludGVsX2RwKSA+IDIpDQo+ICAJ
CQl2YWwgfD0gVEdMX0VEUF9QU1IyX0JMT0NLX0NPVU5UX05VTV8zOw0KPiAgCQllbHNlDQo+IC0t
DQo+IDIuMzQuMQ0KDQo=
