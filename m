Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DB0BD3F60
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 17:15:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FC6210E127;
	Mon, 13 Oct 2025 15:15:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hCi37IId";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE9710E127;
 Mon, 13 Oct 2025 15:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760368505; x=1791904505;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wgkDqPgcFspsAyefZfLGQZmmbF6vJBJihRzF4DxlOc4=;
 b=hCi37IIdu288TBEmLOmNXAggaWQtWO5uBFosjnVFClfd3BhR7vC5MgwJ
 bg5Bv8EST6q6IC6ISUKMi5RhRazncQgsKW+MUrr5FaT9SPfLKDs+X6s5i
 gQx4LHHkBSlMIrVgGiJmWf2TMui9UZ9zyGD3PnTA+9r12YRoJQWNYWbUX
 1hC3eGC0qsHWBAHaovS8wk00ETzr3jE/jLYBP8R5yeMaUXvgXu4eg0+xS
 x18EHJiXdCWwXvHJ2bzORnfeF03VCX4uap5bsKwHIaR8tQnyzS8xVV1km
 gVbANptJBT62joD+fnpB6hrstDWadCDouSf4BBZxYwlDfPtmK1kFi1Rm/ Q==;
X-CSE-ConnectionGUID: bGbLSG+3Sfqvs6up9pUI4w==
X-CSE-MsgGUID: PSo+JgNXSpWS3ikwjIVoPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="62546934"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="62546934"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 08:15:05 -0700
X-CSE-ConnectionGUID: ayCpMQ4mQFuwneLSo8sO7g==
X-CSE-MsgGUID: so6O9zIBQJWuyH4agrhIag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="186917045"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 08:15:04 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 08:15:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 13 Oct 2025 08:15:04 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.32) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 13 Oct 2025 08:15:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=omgk7LfX7wgfZ/vmLhXD2gXdurRIgei1eicGr7Sp4H7cFnkM54i3VFzKu5v2CtGkUeclXPPAZyKLiqt2CZfegBwpkte03EWdqDqhNhCS2K/cOe0BYXa5h64NmSLORem9KZrHfBn3Vb0SIZxG92jebUD1VrhbUgUQrsKP/K/PC08Fgk+rOlRINMvQkPnw1px354NluKwme9BoFfwOH8Zmhsvsevaz8aFRCE4ch52IkS6rg5Vz5Ae10AW5WSS+dOPeFN3WpWXLCA9IMK/1TeKNjJzlbXZK0IrXAYoIs97BldYyxMuzQ0YQGqeTbJW+Ye44/q7CiAFLY8bV11CklbnO5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wgkDqPgcFspsAyefZfLGQZmmbF6vJBJihRzF4DxlOc4=;
 b=gmUlnJ+2rlYo5Iq4BW+tcKlc9MQvEMyON8p8kuz3tfcgU6A1o54mxcxNHqEJo54kA1TQlERYPYPcF43dBseVa9bX+eqkkzK2usYroSX1lUe8+40YNFxq8PimsAqMXTEZd5aLRhdTVctegwSUGSjCv1U8J+nzraN/UZA4ieZGjaZL1e0NiYplzbtn1nfCbO36BZOEz90jAxO4A/ElC3luJ1wpPwYv3D0lmc/UmKc8bA0KJ9qwkj7USjThOuahgwe2sci9eI4BdxBE0FHTe17dtAuJLWb04hK0VWNb62SHHRZpeT4SsGU6gUo70GrT2E/BrJnpWbhHmjybSSFU/dkP7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CO1PR11MB4866.namprd11.prod.outlook.com (2603:10b6:303:91::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9203.12; Mon, 13 Oct 2025 15:15:01 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 15:15:01 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [RFC][PATCH 01/11] drm/i915: Reject modes with linetime > 64 usec
Thread-Topic: [RFC][PATCH 01/11] drm/i915: Reject modes with linetime > 64 usec
Thread-Index: AQHcOIEPbMZgwWgcJ0qO+00mcSqGdLTANpKA
Date: Mon, 13 Oct 2025 15:15:01 +0000
Message-ID: <DM4PR11MB63600A3882EF9159037BF83EF4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20251008182559.20615-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CO1PR11MB4866:EE_
x-ms-office365-filtering-correlation-id: 6bf68887-877b-4676-128d-08de0a6b47c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?ZVJWRCszSnRUbDhxY1AvOTE4bm83NWJ2REErYmJwakNTSVgzMnJza0RpVE1r?=
 =?utf-8?B?Z2NRVFFCWW9pUmx6OEhUdk5mK3ZzSHZjekYybnBBTUdRanNsVnNEQlJaWWJw?=
 =?utf-8?B?bC9LeHRaSGFLVWo3c2VPOEp6Z2MrZDBkUyt3RXF5TFkrT1JmbkNEUWhONTJY?=
 =?utf-8?B?RTVBN0VhQ2NVUmVZWmFuR2kyS0NMQ1ZBdkZ0MEkrUXNOZllteDU2V2syVkR2?=
 =?utf-8?B?bVFCdmY0SlRSWDZCSzJjZzZTaE9KckhXWXM5TmkzSk5Bd2w3dUJFZkRab0x3?=
 =?utf-8?B?bmRZQVNXcmYvK08yVFZBUExWdDRoRjVIc0ZZMVJ1Z1ZVRUFXdVVwUVRMUWtx?=
 =?utf-8?B?TVQxL0NPVnBRTjgwOWExMTNqQ2xScE93eE52c0ROeWFtOFNTOHZraDhXb0dB?=
 =?utf-8?B?T2Y2OUp0QkI4U2tNZXpuOEc0eHdhMjFZTEFxRnJFUVhVWEZiZXJQRWhoNWJu?=
 =?utf-8?B?Z2piRVg4TEhRZTl0a1hKbnFvOW95RXB0Q29CcUhucjIwcDdWNXFzUzB1dVcx?=
 =?utf-8?B?MzVYYWZzc0RiQWR0aEpybEJsRkVYdGFaNWwvaG1xS1dJeUdDWHRrODYzQWxN?=
 =?utf-8?B?TVV4bU5uNm5nWDVDbE5RMUdUeWlCVFRVWGNEUDlyNGMrSnppQkp6by9ZbUsw?=
 =?utf-8?B?bUt5ams0TXFRRkJyNG02WUM1ejdjSGJNdENPeGkreHdOZTdZdU1XYytmZGdy?=
 =?utf-8?B?YzF3d0F3anVqM2lBNE51aWRLTkV0ZUFjRmxGeER2N2dWU0ozMGhXcGdQTW9s?=
 =?utf-8?B?YXdVT01hSUNGVmxoWFVkeHFoK1NmK0JyamNPUHNKYVVQZ0ZSeUU1RXZ5clA2?=
 =?utf-8?B?M09DRjI1aE00Qnk3YnAzZXZFc25BRTdnbDJtNVBYUUdqTWhjcEFtS3FTdHk2?=
 =?utf-8?B?MldqTHhRR0xjb0FsWHozT3pCRjlBYzVlSGtJeTJ2MDB2QU8rNDNNYVlyY0c0?=
 =?utf-8?B?WWFKa0lLU0kwa29wTTEyVWdpdVNsa2lRUS8vcVIyNDFqdXRLM053bEVTWVl6?=
 =?utf-8?B?c29oRjhCVEV6ZCtVWTB2S0NIa05VN0Z0OFdCbjlJd3BtRnUxVEQzbGZadnFJ?=
 =?utf-8?B?UXRNREl1VU9aRjNka0dIZzJjWEJyVFRqdG51QUZBSU05Sm9lbmVsUG9aNzJa?=
 =?utf-8?B?MjFmSDA5NGNrRzhKOUxjaXJnempPRHNJOUw4bmN0ZU15NVBscTlvRWVXMkV6?=
 =?utf-8?B?clJ6RUQzbVJ4VnlURkQrWTVIeVRrNiswSHh5b0pOYVlQMzNnb2hkV0N0RFNN?=
 =?utf-8?B?RzVaM1Y4TktRUVRJMUpuUm9OcUsyemxWYklaaDNIMkZLekx3b0xBMjlLZ3Rs?=
 =?utf-8?B?UERJMEN5UFZyZjhSZHZXeDRITDQyRThDem9pdGw3a2p6UzRmZmpmTDRSd0Z0?=
 =?utf-8?B?V2VUVDBHQ3NHY1B5Nk92Ym1ZTVl2ZXdzT0JLd2xWUXBacG1uZE1qMGlaTkdH?=
 =?utf-8?B?aFpPWjJZVE5ZZU9sMlo1Y2Rlc2VKU0dwYkhRVVhWWEQxbXZGc1JEdkZSTTht?=
 =?utf-8?B?UXc0Q2c5S3pkREtkRzcrV3Uwc3NWbEZ5d3ViQUtqaDhRSzRhQUFoUVNmSTZJ?=
 =?utf-8?B?Z0M2eFBrZE1RQXZFdkhvcWZ0ZmV1Tno4TFdaSmtlZXdqSnY1aWVKZklEMFF4?=
 =?utf-8?B?OUkzSmtOMUxxTitGVFRodVgvUHNZb01JeWpISkJnd1phbU5uNklXZjM2Tkgr?=
 =?utf-8?B?dHNkUmdRaktObFYweUdON1phNzFsT3JLeGFiWlFGNlFXK1FBMEZEMWR2dFVa?=
 =?utf-8?B?cjZMdjBkaFFPTUZ2NTF5N1BzS0JzZFdoL1VCTGRwL1M5dUFuRk9EOHhrRmdR?=
 =?utf-8?B?OGpsanlxc25BbFVicForWVdNc04vZm0rSEM5eGV6VmNlYjdoVUYzK0EzOFZF?=
 =?utf-8?B?aSt5Z1hUc3Z0TGFiNlBTeERPT1Rzcy83bFA5TWQ0TksxUjB3OUEvZTgwNUxE?=
 =?utf-8?B?Vlo1dU5qMVg0WThMNnl6R3R4akhlZktKK0RXREcxd0xYdnZZSGtQVDE3Nmsy?=
 =?utf-8?B?UEczeVI0MDA0WThiZzhBbW5ydUFrQWFBdk85aEpjRTdEQmEyaE5ySUZ0azRw?=
 =?utf-8?Q?1ZKaPt?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZW5uTjBCUmduRzVzc0k4Z3BFRFM0Wi9seEk2ZjlFWFpqVWZPbmgyY29QSTZE?=
 =?utf-8?B?RERVMERyMW0yR0NLdVF5QytCNVBqTzhFNVQ2YTByYXJqQnFnUDZoZGJ5cC9i?=
 =?utf-8?B?dE1iSUZaWDgyQmZJWEJ1WXArcjRWeVkzT05ybitBZnJnOU8wN0EwNk1tSDMw?=
 =?utf-8?B?SzBzOHNPd1BrVmgyNUM2K1hlMlM5cjBIUTNFdkhYZVcrQjJRdEhlaEpTcDRF?=
 =?utf-8?B?ZXErdUJSZGVZSWJNVVg3QmdYcGVlbEpoYUx4bi96QkVJNGxRQkpOSDdOYjJQ?=
 =?utf-8?B?K0ZScVRlOFFqcHhCNE5PVGt4ZG9udU53MkxPU2Z5NmJpN1JQaXpBTjlIZ216?=
 =?utf-8?B?RE9LTXJaRUFDYzlqSmlHV0VWWWxpeGoyRzM5Ym90TUQ4TnJxa05LYnI2a3lm?=
 =?utf-8?B?L0cySDdRSzlZcE11NVhoWXlEVFpsdS9SaXJHaW02R3BOMmZEMmFiZmNoMENU?=
 =?utf-8?B?QnFxdFhNeG1oYU9YNE4rd2dTNE45azVVQjlpMjZYUUszNjI1c09Jbm5TL0pn?=
 =?utf-8?B?Z0N5c1Vtc1h1c1ByM0dzN2NVN1IyWGlPZ2NIYUpEaWlIOFNaVjNranJWTGlK?=
 =?utf-8?B?SzFUUUc5V3I4NkNPQzVobE8xUERXb1VPK2x0S1p2MmlIZHNySWtueGdoeE5s?=
 =?utf-8?B?dWRNQm9sSHNUYjhmaS9tejRmM2ZQZmNjMlhFU3ppbUlwVnFhUUpGak50emVt?=
 =?utf-8?B?b2tYSUhhQVFPRWkrRWMzWXllNTIyTHRaaENNZWx4bGszWmtVNHFldDdtTXVP?=
 =?utf-8?B?bkQ3aEtTSWlFSy9JNFVqbkxNL0FEWWFMVmhaZDVsYnA0VWlEdFNtRVhDOHlF?=
 =?utf-8?B?c2J5cjJCU1h2VTNGSnN1aGozd1ljWVYzOVc5QjkzWXltd1NuSC9UWkc3ci9u?=
 =?utf-8?B?MS9kUWV5QThYRitjV1RTZ21RaC90STJ3QmZBSmw5UkNWVkJoZFRVdkJuUHZ4?=
 =?utf-8?B?RUFPVGQ1NS9aYmxXOTRMcG81ejNiSEdrQ0Vqdmx1OGQyVFBXcUp1Z1VWOENI?=
 =?utf-8?B?NVhtQUNsYXkwZlM1UDI5VkNJQzhDdHRMRnhCbGJxOG84RVVjMDc3dE14Tktz?=
 =?utf-8?B?QnZoVWE5L09TWktQTDRNaCtHaW1IdERkUDhmN3cxTjBTNk9FRnozTVdMd0lT?=
 =?utf-8?B?VEw3bkRsTkhwakdPWDRBWG1RRGNwNG9lbStJOHo4NEJFcmFsZkhZekFUdTJC?=
 =?utf-8?B?ejNkWkJnUy9RWHl0aGlIUFhYVkFIU2diVjRMLzdveFRsdjk0VlVQb29SODho?=
 =?utf-8?B?WVRnOXF5T2dGNzlwSjY4Q1lxbGZicVBLdXZTbVUxcW5YYmJNcFREdTZ0dmxQ?=
 =?utf-8?B?WlBERnhkMktpalE1ZGZhaEtqRE5La1N1a0pBc2l6ZjBYazR2clNOWGJQZHdu?=
 =?utf-8?B?K0hPT1c0ck9JMDN0UlB4T3AvU1U2RW5tdG5mOWlZanZBZHhnVDc2WmFycnZQ?=
 =?utf-8?B?amtJaXcwbGhpaWhnZEFYMVMwalNYcUVlRzVpcGNvS0QrUjZHVENycUNlUi9R?=
 =?utf-8?B?OXVDdDlMYldtaEJpUHVjZEdHZStkenFUMkQvZzhrTW1ndEpWSm1kUy9sMnZM?=
 =?utf-8?B?TmN2MThWZzJWbEhJUTJTL3I2TzJxbEROU0diVkxNalowSUs1c1FodDFTd2RH?=
 =?utf-8?B?NnVpT3lHTHhIZXdSUnVVb0t1dmpiUitnbDhKS0ZCbDZNTEFZYnZsWFh1all5?=
 =?utf-8?B?Nm5sazF5d0UyVU9WdkhZMmt2S2xWMVMvZkp1dUpqeVZsMEJKMExITkNqVlcy?=
 =?utf-8?B?RTVNWGx0Sm8wNnN2SDBQRFUweUJia1JDQnRLUjV4QXJPWExZSFU2dmNjb1JL?=
 =?utf-8?B?QUZXbnFUWlFtWkxBbk8rTTRSTjVxbVR3bjdEOHJGUW9MUlhUNm4wSXYxRlVE?=
 =?utf-8?B?bmpkTmIrVDVqeC93cFI4c2MycXZUNkUrdzVBU093cHUxM0lCeHBiLzhHMFpW?=
 =?utf-8?B?ZUVPZk15T1RvZUh4OHRGUzkrSmFBNnl4YnR0YUtFZUdYalZaWkQ3VCs2cWhj?=
 =?utf-8?B?Y0RRMHExdHFpMEQ0djg3SXhTZFZVZ1FFaU42Njd3WDhzcnI2Q1hGd3JOb01w?=
 =?utf-8?B?azB1dUlmTkt3bk5OZjA2ZnM5WEhpRm5ITmtpRGZTNVRQMERjcmhRcmg2TkRm?=
 =?utf-8?Q?pDJ2Hs4AlnM6KRZlPmd9ymhDy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bf68887-877b-4676-128d-08de0a6b47c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 15:15:01.4827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qCdjv/cYa8OhWkEXqOyhRMsFe28F6x+PzEwl7dyjOaiG5F9gZIO1RFuVID4d1Msb2PD5AEFV6705OYorBovHYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4866
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
cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1JGQ11bUEFUQ0ggMDEvMTFdIGRybS9pOTE1
OiBSZWplY3QgbW9kZXMgd2l0aCBsaW5ldGltZSA+IDY0IHVzZWMNCj4gDQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBSZWplY3Qg
bW9kZXMgd2hvc2UgbGluZXRpbWUgZXhjZWVkcyA2NCB1c2VjLg0KPiANCj4gRmlyc3QgcmVhc29u
IGJlaW5nIHRoYXQgV01fTElORVRJTUUgaXMgbGltaXRlZCB0byAobmVhcmx5KSA2NCB1c2VjLg0K
PiANCj4gQWRkaXRpb25hbGx5IGtub3dpbmcgdGhlIGxpbmV0aW1lIGlzIGJvdW5kZWQgd2lsbCBo
ZWxwIHdpdGggZGV0ZXJtaW5pbmcgd2hldGhlcg0KPiBvdmVyZmxvd3MgbWF5IGJlIGEgY29uY2Vy
biBkdXJpbmcgdmFyaW91cyBjYWxjdWxhdGlvbnMuDQo+IA0KPiBJIGRlY2lkZWQgdG8gcm91bmQg
dXAsIGFuZCBhY2NlcHQgdGhlIGxpbmV0aW1lPT02NCBjYXNlLiBXZSB1c2UgdmFyaW91cyByb3Vu
ZGluZw0KPiBkaXJlY3Rpb25zIGZvciB0aGlzIGluIG90aGVyIHBhcnRzIG9mIHRoZSBjb2RlLCBz
byBJIGZlZWwgdGhpcyBwcm92aWRlcyB0aGUgbW9zdA0KPiBjb25zaXN0ZW50IHJlc3VsdCBhbGwg
YXJvdW5kLg0KDQpZZWFoLCB0aGlzIHNlZW1zIGZhaXIgZ2l2ZW4gbWF4IGNhbiBnbyB1cHRvIG9u
bHkgNjMuODc1LiBHb29kIHRvIHJlamVjdCBtb2RlLg0KDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOCArKysrKysrKw0KPiAgMSBm
aWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggYjU3ZWZkODcwNzc0Li5hZmE3
ODc3NGVhZWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+IEBAIC03OTY3LDYgKzc5NjcsMTQgQEAgZW51bSBkcm1fbW9kZV9zdGF0dXMg
aW50ZWxfbW9kZV92YWxpZChzdHJ1Y3QNCj4gZHJtX2RldmljZSAqZGV2LA0KPiAgCSAgICBtb2Rl
LT52dG90YWwgPiB2dG90YWxfbWF4KQ0KPiAgCQlyZXR1cm4gTU9ERV9WX0lMTEVHQUw7DQo+IA0K
PiArCS8qDQo+ICsJICogV01fTElORVRJTUUgb25seSBnb2VzIHVwIHRvIChhbG1vc3QpIDY0IHVz
ZWMsIGFuZCBhbHNvDQo+ICsJICoga25vd2luZyB0aGF0IHRoZSBsaW5ldGltZSBpcyBhbHdheXMg
Ym91bmRlZCB3aWxsIGVhc2UgdGhlDQo+ICsJICogbWluZCBkdXJpbmcgdmFyaW91cyBjYWxjdWxh
dGlvbnMuDQo+ICsJICovDQo+ICsJaWYgKERJVl9ST1VORF9VUChtb2RlLT5odG90YWwgKiAxMDAw
LCBtb2RlLT5jbG9jaykgPiA2NCkNCj4gKwkJcmV0dXJuIE1PREVfSF9JTExFR0FMOw0KPiArDQo+
ICAJcmV0dXJuIE1PREVfT0s7DQo+ICB9DQo+IA0KPiAtLQ0KPiAyLjQ5LjENCg0K
