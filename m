Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3B99C8C79
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 15:08:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB66D10E2B1;
	Thu, 14 Nov 2024 14:08:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W6/9pW9C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39AC710E2B1;
 Thu, 14 Nov 2024 14:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731593325; x=1763129325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9gJuIdR7f6THM0kZ1eEdZtNRrtqluCUf9UOAGJoCz64=;
 b=W6/9pW9CYL7Pgn/RJ3dgxgNwNjGHzWmVzp2N2XHESo+9NN3VDc3BB+1x
 42Nqe9MBTwcOayp/I8/L4bv6xsq/8wSrLIu8GM+nFntKJ/TYU6vZ6cNY7
 TYWIwpcpKWpthg5e1AVBcmljHgOxi1gotKcQLAES6zueT6p0XyjFLKukn
 S4kA6uiCaY8HL8FawzTHnYrwrh1uKVFTUW+xpTcE2MX0Djtu+zXcAs2sx
 zoWaPE2Kr5ODyJX6flSDK4t5QyvC6h7StRa/VhCwuzLAGCUmAV4fXfn0n
 k9tA/09/1mSLHwvASJNU1ZC7fOu6OQIPiL5FFpq8dKh6sRjuMGmsao8xu w==;
X-CSE-ConnectionGUID: I+Vf2kOVTM+0wGJI0XRggg==
X-CSE-MsgGUID: nPgZhCFuTZebsG90O8U2qA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31511843"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31511843"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 06:08:44 -0800
X-CSE-ConnectionGUID: 3DllqtvXQkKEworsJTLcHw==
X-CSE-MsgGUID: w7ZlvaRgSxO3bF7od/NGCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="119037421"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 06:08:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 06:08:43 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 06:08:43 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 06:08:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KzjU/WQNGCM3+EmFzEBdVWLgZfWJ4aTMxd0XY6QAhHR0Xo1uS6iqqKKAXr3uPmuycYOoqk6MwBVt9smw0ZF9zvl5S47VfxNc4/90Unra/GXcitpBuVjJefhl6jhoGfCcOM63uGGnTNq1wEDo8wKvYlFnTe6WnRxf0ZGFRee2B8kfH1hEJhJr8qJ6vNnIqgjOv1U6suV/UGpFnchwFbsZCAh+HtA/sIKzimiQa6oGDFSkFc347b6FuPSJWgfCfiKDz/+K7ZtROQSMZd+IeUblP29OalFoXtnIx2rGiNcJkyMq13596klicWBSw5ajikBRhGpdveVt9EqA+r4dOP6yTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9gJuIdR7f6THM0kZ1eEdZtNRrtqluCUf9UOAGJoCz64=;
 b=QLP1GFHCxcx4C5f9I/NoQkgBrrZHJOHZRP0NMdPCt0JhywXM658CtqBLfzVm2X0ie37m4Mk/xX/riE2xxJh/w8NqLjF8ldonY2aO8Bg7mdjO+74pmeBKtqKeB3lOzVoHidbYE83pQ+uUq56kXbISMBUwvXh5akmyhiOb+U9dbXx0w+zOatsjbvEmafxIB9MYiTryl1358cRn2K3WRa9qbpYfe3/DZ9dFv6HI97h8aIid075xQpXRkXpXYSPu9hRRvZYrkTrfZTK07tQnoAJq+kXqFDJF9geuI25HlqiHao4ojxZzBruYlxiI8PGJoj3pNpEbKlPTEvAMPcXJHBwihQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB6992.namprd11.prod.outlook.com (2603:10b6:806:2b6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.16; Thu, 14 Nov
 2024 14:08:40 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8158.017; Thu, 14 Nov 2024
 14:08:40 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH 2/2] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbNk4KBjuHHAC56UCKFt09SWY3r7K20MoA
Date: Thu, 14 Nov 2024 14:08:40 +0000
Message-ID: <0f50f6f9ff11e17567a0041ec0f97bdf8c340268.camel@intel.com>
References: <20241114043040.1396947-1-suraj.kandpal@intel.com>
 <20241114043040.1396947-2-suraj.kandpal@intel.com>
In-Reply-To: <20241114043040.1396947-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB6992:EE_
x-ms-office365-filtering-correlation-id: e797a8e7-c8d0-492d-14ec-08dd04b5d790
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OFNmZ0UxS0tjVUNxK2VXNStNQnpON2ZNZ3RDa0dGZ1FlOW9VbUlIK3RzRGVF?=
 =?utf-8?B?c2dGT0gwT1FhRTVyZVpqMHcxd2hCWHVyMldXTTFrMlBXZEtyeXpoTGZaRkgx?=
 =?utf-8?B?N2VyM0dFcjVXN1pVSjdaNmp4V0hhbkhUMll0bHRRblA5aUZ1cG1ROVJoK0lL?=
 =?utf-8?B?Ujcza0JGMGxMTSt4SExmZStMa1RGNlBWVTZkMktuZ1ZCMDdsVlNoYkMvaWc1?=
 =?utf-8?B?SU5NeUJSZkM3bGpEbk04K0xqRXVzc1FDb3YrU092NTJpK0NUQ2ZGbkF1bkZq?=
 =?utf-8?B?aFBDU1dYeStac0IwY3E1UDdSYm5Jb3p3ekZFT0tQeDE1cmhmRzZBem9jQ1Er?=
 =?utf-8?B?K2dPa0s1dk9aOERCaVhiZnVXQ056THlTR0FmSzc2dk1GWjB0dTV6Rmt1MExJ?=
 =?utf-8?B?M2pLaVppZ2k4RzZET1FKb2ZRVUE4aUFRZ3RqYWVpSjVTbEYzNW10bTFnVktD?=
 =?utf-8?B?dERtdEdmVGRDRG02ZWpnY3d4eTg1M2QyZGNhOXo3RTlRaExONktNa3VQanh4?=
 =?utf-8?B?UGxRZ3ZBRGxlLytkcWMxT0hxRHgwVHpZZmRsRWRmRVZMOUJkTis3K3JnMi9O?=
 =?utf-8?B?WktHcDZWSm14UGwzMkJIWWZNeUxtYnQwbmhQMU9JWXdieWRoYXhUVlhQOWFO?=
 =?utf-8?B?UDQ1MkQ5QlgweHdlQ2dtSHpKSGEza2RtUzJsMVcrZ2h3N1FOSit5RGN5TGx1?=
 =?utf-8?B?dEgxeFFra0svdE1OcXBmYWRPOW9rSzRka2NuYU1mU0ZiWFI5ZVNBb0xLUTJI?=
 =?utf-8?B?d3FTTGFzV2hPOHR5S25DOWgvQk9HVGNSQkRTU3dQQ0RnSGpUWUpONW92N1RC?=
 =?utf-8?B?WXZ5VlBqSWZlWCthTG1yQTVlTnU3VW1ZYWhKU0NaQ2pFM3JVNnN4MVpMK0ox?=
 =?utf-8?B?QzF5MWthSTVjOEM4Q3RGcDVETFpHTG9SWHlHN0NqUTZHdkpnekNBeC9zRlRy?=
 =?utf-8?B?c20zTDFpM3d2L2lZWlVFUDh2UlhzbUhpODhIY2EvZDR1Z1RRWFRTMjZ5NzNp?=
 =?utf-8?B?TUpCQmxTYkw4b1BOc0w5K0g0d3RDek5KR1NqL2pBU2twaUJydWFVNVZjZ0hl?=
 =?utf-8?B?VVlpTTl6Z29tQjlHWW4yT2lrd0FuK3BKMEhWSmRpOTdMZXo4VllRWUluTmZH?=
 =?utf-8?B?aDhVeHMxRDJnQ2l3bFJtOWpQekwyKzkwSTg4b3IwTnBUOFNEWU5nN0VDL1Vx?=
 =?utf-8?B?eSt0WlQ1Vld5QnFiSjlnSTdWL29XdHpXcjUvRWp3Mzh1V3FtZWVvVWczeW03?=
 =?utf-8?B?RHhYRGI1c0FUMm9yZ0hEUFBOTlF3bDl1TW1hOFhXZ2k2b0pFc3ZwTmFDYWpL?=
 =?utf-8?B?VDhpSWRrbUk2M0QrVlM0eFNBNTUxT0RnZ20vTkEwVk10b0p2aVowZzNlb00r?=
 =?utf-8?B?K3JJaGJ2VW9MYk5jM0ZZeCtFV0tYMUxsUTFYMVNLM01qa3ZtVyt5VWlXeGhK?=
 =?utf-8?B?NzI5TlpDM2xWRm1PWnVUYnBDNGpUdGRZK3FZdFJnNERRY3Bpc054emlqYkM3?=
 =?utf-8?B?UmN3a25mSEI5RmQ2RXVZTDFSQ0lQSTRrcDdhTG1wMVdDVUgvL2J2QW5BNTFL?=
 =?utf-8?B?OGVKcnAvQmZsWnZPSnZyTjNXckF2MkdQQ0tOeTFoNFYrOHdYV2tGeEw4UjRv?=
 =?utf-8?B?bTBuWFRsS0VPWUJjb1FiazQ2OWovYTd1NmhWWFFFWGNYRm5xK3BTQ08vbmNY?=
 =?utf-8?B?MmtFSTVrN1hxczNxejJBUTZtL1FWcGVsQkNkOHJVdzB2SzNJZG9Qc21JWnpI?=
 =?utf-8?B?UnZOS2orQlNaZTA1VEF0ZVRjQlpveHcxcTFNOUxpY3FSMHA0dzN5NDNlS0ZQ?=
 =?utf-8?Q?ZqeGq7eIqhxfYhKaTKnJRLjIQZJLZo3oJqhnM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QS9FbTloQmtRQ3gxTjBIV1duM3pRckhhYXkvbk5pTjhFNWhETitHTTh1NnhB?=
 =?utf-8?B?TTY5M1kySDRjbjBLQmhtazNPQjMwelYzYTE1TVRGZjNwbEtwZEtSNkp1OHlT?=
 =?utf-8?B?SjQ4ZlAwdHNKYVN1aDBFc1BxcXMxZ1d0dS9zamcyTEhRT1F0K3dNSzRpb2cv?=
 =?utf-8?B?dEIxaGt4UGNOczZjZFhZb0M2dWVWbGk0T2syT0NIVE9XWU0wSUw3a01xNnNM?=
 =?utf-8?B?c2x1aklhYy9qMDVCQWZBdXR6NitSYnBwWlZ0YlpyT2FoaWh5WWZMc253NFl1?=
 =?utf-8?B?MmVwMjRDOHJIa0hnSDlheDZhN2NDT0Vmd1dNYzRXbXpkWWJJSDhkT3VGdlVO?=
 =?utf-8?B?eDRoTVdPVm9SQ3g0NStCcVdCR1R5SUYxQnFUdzU0Kzdzd2tiRXQ1YzdKWC9C?=
 =?utf-8?B?U3VnM2NuZzZUT1VUMnZhUWJEOUhZNFRyaXVCS2phNFk3SThhVS9YS1BGRXEy?=
 =?utf-8?B?d2RFQnhZY3A4UE5Sc3VmMGhETDJ0REpnK2tFdVk4TmIwZ0tOSWVIL1VSaExo?=
 =?utf-8?B?bUozSXdrdHBLV3l2NE0yZUx2WlR6YWtBbHhuYVNVMnp0dVF0K1RtVXgxMXFM?=
 =?utf-8?B?UGdScE5XYUpQVEt3aUl6OWk0T0J2QXJud0xYLzlOcVVBRXVXaEt1QmdXWXQ2?=
 =?utf-8?B?Yjc5NCtZR1ZVWEtBYmxwZ0JHS2NMc2pocERzOFFnazR4RW9WU0FEYzJmeEEv?=
 =?utf-8?B?V0Q2RUo1ZFk4QjNqSEROWWt2VGF3dCtONUVzZTdjM1I1MWNaWUpXZ3RBRHl0?=
 =?utf-8?B?ZzhRSkE2S0pDVTdWNlBncXhKSTg4RVE1ZWdhNDhvbmZyb3lmWW45UnZhRmxo?=
 =?utf-8?B?aVdKRC9OYzlzbEN6ZEhvb1oxSDlQK2kwRWMvajhuK2k2d2NjNUUzNm94V0Vr?=
 =?utf-8?B?RjAzaVRJa2lseHdWSzlsMVFVZ2JyaEZFZUNhaEcrWWRUVGpHc1lNazVyZDVm?=
 =?utf-8?B?N2lNYzhCbGdZWGlyOTlGS1ArekF6a3NneFBrdFNBTXNURzIzQS9iQUJNYkl4?=
 =?utf-8?B?QXBUa0drbWhjMk1CU3lKTmN3QmpTVFRlOGtIeDRNbWJRbGdkOCs1cVhoeVlp?=
 =?utf-8?B?Y1V6UWN0NnBiSnpmS3JCb0NWcU9lVmNZL0o3SStLM2EzTnZXcFdSK25GQVI2?=
 =?utf-8?B?Z2xXdXNrdjdNY1RScytjYUUvaXZ1ZFhia3pmbVR2QnVsc0tsSUR0aUxWZ2d1?=
 =?utf-8?B?dUR0MUxxeTZzSThGeEcwY2thbitrTU5EYnNndFd4TnQyQnIrUy9yMGxCL0xj?=
 =?utf-8?B?SjFSWU5EblBpNm0xcWt6bHJzakFQS2ZxU2l4T0llTmhKTHlKQ252dko0TTVk?=
 =?utf-8?B?MjVkZGp5eXJlQktJanJWazM0dkI0aTBwRlMyZWVRRDZKRGV0ZHd6TDgzOWNv?=
 =?utf-8?B?c05USXNNTm9CSlN5VVYvdUxzd2R0eEZGRmsrNE5wMTZYYzlWRGV3M1ZFY0xK?=
 =?utf-8?B?ODRRN0RQOFkxNWkxTjJycGwxMDBYZC9wcTZmNUdBUEdGQXc5NkdjT3VEc0VM?=
 =?utf-8?B?UFU4cHB1bjNrSUZaMllUVkRFaE5uMlZUZW1ySld1Nzh1TzQvaS9VbUl1eEsz?=
 =?utf-8?B?ZXdMZjVKZklKNjFVais3YnFLd2pIY0RQcUMrenFKTnhEZXVweWswc0tIWENz?=
 =?utf-8?B?RDhzRUN3ZFBURXJCdDFTZm54ZkV4c1lBT3FVb3dENDVWVFJwSWZ0TzN5TWY5?=
 =?utf-8?B?STBraVFXaWlsc0QxbUQzS2t4SHhwdXZIRlNUMEp1ZE5ZTzVYQy8yTWxmMXls?=
 =?utf-8?B?dUJpVkFYZmVvOFJOV2V1ODlTK1NIQmRJRUNCbkFidFd3dmsybTIrRW1weGFE?=
 =?utf-8?B?bHQ5YjM3ZXNOeDc4d3hRSjE5aWdtKzk4b0pmU1VRTVovMkgyUWNlMGNEVFdL?=
 =?utf-8?B?Y3RyQm5ERjFjVUxGOStrRlFxNnlwaWJHS1hpcGRTWGFhSWYwZFg2SlgwbEgy?=
 =?utf-8?B?YW1CemxPR2V3bFpBRUpuWjVCcGN1VUdpeFhyZnBxeHJqZXNOeGRISlRQVm9S?=
 =?utf-8?B?dE81SFY0d3htc1hSb29GK2dqaFZJSDhGUmtKKy9oeWU4em9TWUhwd0YwZURP?=
 =?utf-8?B?Q2hFbFdkYXA5Wm96NE1nQWZWc1JNRmlPaUVLMmswNjJhNjQrTnQ2RXNYbDUv?=
 =?utf-8?B?UVdsY2R0aVkrWkExUnpqM2RoakF3WjUrdkhXbHJGcUZvZXhZVnQ5WU42Mm8r?=
 =?utf-8?Q?iq5MRBAAI4D9pOj8HghSp1I=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A5CE2F364053FF42B882FCBEF3E75628@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e797a8e7-c8d0-492d-14ec-08dd04b5d790
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2024 14:08:40.8587 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5SxMpF201B8ELqxJnxEqwaNpzNW9nb/JZppJ7Fks+N9yri+Zb+c4rusoMbOx7v8MFtkUfNotLn0Dkkbvofrvpsq9BDTUXprT3Xt/iQdc8aY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6992
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

T24gVGh1LCAyMDI0LTExLTE0IGF0IDEwOjAwICswNTMwLCBTdXJhaiBLYW5kcGFsIHdyb3RlOgo+
IEluY3JlYXNlIHRoZSBsYXRlbmN5IHByb2dyYW1tZWQgaW50byBQS0dfQ19MQVRFTkNZIGxhdGVu
Y3kgdG8gYmUKPiBhIG11bHRpcGxlIG9mIGxpbmUgdGltZSB3aGljaCBpcyB3cml0dGVuIGludG8g
V01fTElORVRJTUUuCj4gCj4gLS12Mgo+IC1GaXggY29tbWl0IHN1YmplY3QgbGluZSBbU2FpIFRl
amFdCj4gLVVzZSBpbmRpdmlkdWFsIERJU1BMQVlfVkVSIGNoZWNrcyBpbnN0ZWFkIG9mIHJhbmdl
IFtTYWkgVGVqYV0KPiAtSW5pdGlhbGl6ZSBtYXhfbGluZXRpbWUgW1NhaSBUZWphXQo+IAo+IC0t
djMKPiAtdGFrZSBpbnRvIGFjY291bnQgdGhlIHNjZW5hcmlvIHdoZW4gYWRqdXN0ZWRfbGF0ZW5j
eSBpcyAwIFtWaW5vZF0KPiAKPiAtLXY0Cj4gLXJlbmFtZSBhZGp1c3RlZF9sYXRlbmN5IHRvIGxh
dGVuY3kgW01pdHVsXQo+IC1maXggdGhlIGNvbmRpdGlvbiBpbiB3aGljaCBkcGtnYyBpcyBkaXNh
YmxlZCBbVmlub2RdCj4gCj4gLS12NQo+IC1BZGQgY2hlY2sgdG8gc2VlIGlmIG1heF9saW5ldGlt
ZSBpcyAwIFtWaW5vZF0KPiAKPiBXQTogMjIwMjAyOTk2MDEKSXMgdGhpcyBhIG5vcm1hbCBwcmFj
dGljZT8gSSBkaWRudCBmaW5kIGFueSBvdGhlciB0aGFuIG9uZSBvZiB5b3VyIHByZXYgcGF0Y2gu
IEkgd29uZGVyIGlmIHRoZSBic3BlYwpudW1iZXIgbW9yZSB1c2VmdWwgaGVyZT8KCk90aGVyd2lz
ZSwgbG9va3Mgb2sgYWZ0ZXIgYWRkcmVzc2luZyB0aGUgY29tbWVudHMgaW4gcHJldiBwYXRjaC4g
CgpCUgpWaW5vZAoKPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFs
QGludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
d20uYyB8IDIyICsrKysrKysrKysrKysrKysrLS0tLS0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxNyBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3dtLmMKPiBpbmRleCA2MjA4NzNkMTI0NGYuLmNlMTFhNjliMzZjYyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmMKPiBAQCAtMTU3LDkgKzE1Nywx
MCBAQCBpbnRlbF9wcm9ncmFtX2Rwa2djX2xhdGVuY3koc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
ID0gdG9faW50ZWxfZGlzcGxheShzdGF0ZSk7Cj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjOwo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
bmV3X2NydGNfc3RhdGU7Cj4gLcKgwqDCoMKgwqDCoMKgdTMyIG1heF9sYXRlbmN5ID0gTE5MX1BL
R19DX0xBVEVOQ1lfTUFTSzsKPiArwqDCoMKgwqDCoMKgwqB1MzIgbGF0ZW5jeSA9IExOTF9QS0df
Q19MQVRFTkNZX01BU0s7Cj4gwqDCoMKgwqDCoMKgwqDCoHUzMiBjbGVhciA9IDAsIHZhbCA9IDA7
Cj4gwqDCoMKgwqDCoMKgwqDCoHUzMiBhZGRlZF93YWtldGltZSA9IDA7Cj4gK8KgwqDCoMKgwqDC
oMKgdTMyIG1heF9saW5ldGltZSA9IDA7Cj4gwqDCoMKgwqDCoMKgwqDCoGludCBpOwo+IMKgwqDC
oMKgwqDCoMKgwqBib29sIGZpeGVkX3JlZnJlc2hfcmF0ZSA9IGZhbHNlOwo+IMKgCj4gQEAgLTE3
MSwxOCArMTcyLDI5IEBAIGludGVsX3Byb2dyYW1fZHBrZ2NfbGF0ZW5jeShzdHJ1Y3QgaW50ZWxf
YXRvbWljX3N0YXRlICpzdGF0ZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIG5ld19jcnRjX3N0YXRlLT52cnIudm1pbiA9PSBuZXdfY3J0Y19zdGF0ZS0+dnJyLmZs
aXBsaW5lKSB8fAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFuZXdf
Y3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBmaXhlZF9yZWZyZXNoX3JhdGUgPSB0cnVlOwo+ICsKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X2xpbmV0aW1lID0gbWF4KG5ld19jcnRjX3N0YXRl
LT5saW5ldGltZSwgbWF4X2xpbmV0aW1lKTsKPiDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgCj4gwqDC
oMKgwqDCoMKgwqDCoGlmIChmaXhlZF9yZWZyZXNoX3JhdGUpIHsKPiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgbWF4X2xhdGVuY3kgPSBza2xfd2F0ZXJtYXJrX21heF9sYXRlbmN5KGk5
MTUsIDEpOwo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAobWF4X2xhdGVuY3kg
PT0gMCkKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1h
eF9sYXRlbmN5ID0gTE5MX1BLR19DX0xBVEVOQ1lfTUFTSzsKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgbGF0ZW5jeSA9IHNrbF93YXRlcm1hcmtfbWF4X2xhdGVuY3koaTkxNSwgMSk7
Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBXYV8yMjAyMDI5OTYwMSAq
Lwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAobGF0ZW5jeSkgewo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKChESVNQTEFZX1ZF
UihkaXNwbGF5KSA9PSAyMCB8fCBESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAzMCkgJiYKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBtYXhfbGlu
ZXRpbWUpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgbGF0ZW5jeSA9IG1heF9saW5ldGltZSAqCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoERJVl9ST1VORF9VUChsYXRlbmN5LCBtYXhfbGluZXRpbWUpOwo+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB9IGVsc2Ugewo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgbGF0ZW5jeSA9IExOTF9QS0dfQ19MQVRFTkNZX01BU0s7Cj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiArCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBhZGRlZF93YWtldGltZSA9IERTQl9FWEVfVElNRSArCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGlzcGxheS0+c2Fndi5ibG9j
a190aW1lX3VzOwo+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgY2xl
YXIgfD0gTE5MX0FEREVEX1dBS0VfVElNRV9NQVNLIHwgTE5MX1BLR19DX0xBVEVOQ1lfTUFTSzsK
PiAtwqDCoMKgwqDCoMKgwqB2YWwgfD0gUkVHX0ZJRUxEX1BSRVAoTE5MX1BLR19DX0xBVEVOQ1lf
TUFTSywgbWF4X2xhdGVuY3kpIHwKPiArwqDCoMKgwqDCoMKgwqB2YWwgfD0gUkVHX0ZJRUxEX1BS
RVAoTE5MX1BLR19DX0xBVEVOQ1lfTUFTSywgbGF0ZW5jeSkgfAo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgUkVHX0ZJRUxEX1BSRVAoTE5MX0FEREVEX1dBS0VfVElNRV9NQVNLLCBh
ZGRlZF93YWtldGltZSk7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfcm13KGRpc3Bs
YXksIExOTF9QS0dfQ19MQVRFTkNZLCBjbGVhciwgdmFsKTsKCg==
