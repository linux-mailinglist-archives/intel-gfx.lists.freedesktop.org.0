Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 885A2A9ED56
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 11:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB71610E1F7;
	Mon, 28 Apr 2025 09:55:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LRqs9tib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0782010E3E8;
 Mon, 28 Apr 2025 09:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745834137; x=1777370137;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=3UKkqER26g9ss7wXmEkMyz2o4NdrGShbvNnAiDAWHvY=;
 b=LRqs9tibW7oLt02oB3TAB+ZJXL7aLimJhxw2nap1RmlQfhcxDxOecpOJ
 tK9RJQHntSAYQVEind66/lueetWvmrzC3PpOZM79w7nxl5CC/1cDvKt8o
 umkdzWxjmrC89hk/IDbfb40xh205FLyE+t1lYSDeF/lOLv5Gd2sFuESi6
 YjLB5l1evVjkw7m5zPkquvN9T5koHdYClWXGZvljXtSZGtY5ZCeZq77S1
 RB7QAVkImF4S1EGrJYUCay3nC13A7QPUjae3nae4RcqkVjFQfzRhQP7ks
 rZm/Uz+iMB0aljxcGGEj+mSN4aZvn9b8RU2zcr0qncTAzGTgu0rKb0Fe1 w==;
X-CSE-ConnectionGUID: uMGS+MsqQPObWVKKXiCbuA==
X-CSE-MsgGUID: 5Aybv5FfRHu9YM9aFgOH6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="57614682"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="57614682"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 02:55:19 -0700
X-CSE-ConnectionGUID: ZsojHkf6Qea5MnFwsrzfFQ==
X-CSE-MsgGUID: 7rwfZsLMSn+0pnuOgoYhiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="138275529"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 02:55:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 02:55:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 02:55:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 02:55:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tG0wu+a13O1MABEq++E5hKPJVxpMTZgO2pwOKK/7JF4h8v2CnO9uy94HQeqrQP1wzLYht3R/tGbmQGqf2nm0dRBB5fCgEE0FhzvxGGNq5kQnDxzDeBjMOofIzYIg+Xr5aiyGf6h67atCV4F4M6GckR11ebng64jXQja2L+9ncId1Nzy4ajGECWKAYADCtCgIZTK/PPeuyHh7AyPLYWz5MOjeu2xKe6OkqM8BD5x2648+LjhbYgnDjP4M3wUJDLxHRAzcnZYj84i9NVoUrlNYS2fPaYlLIy92X8CoVGWqAF4rTXmc7HOlO/tufS/bvaxDdonJTOzGFEQDICJNOVox4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3UKkqER26g9ss7wXmEkMyz2o4NdrGShbvNnAiDAWHvY=;
 b=Tkncr7HOZzzWKb5h0PKVosHQScF3X9C0B0c+GbBbNWz3dSQc85hqiTw4MCPCl9BDAm4IRFnYaDTxBbXJLwgl+zp2H+KbrHL+EIBalbqY/3J2V46kF7BqcBDoMKGh65t8MrV2eQLqMQU4JNnQotR3xMuGZCc5RcuYTkdsLpRVwSrPWU+gLHI/obIs+bBeXof4+zwGwLXbIiuARP03vgbKM7N+vyH+zHl7j7FlcI3YWU4EYN7KUEJ1HahfTb3qvy0qd88NZXCEGqIfINr0vhUVSbHrywsBMEfQ/Trrfjg3M85axkyiGxBarJ5RrKN05u3me4ZGjY0I3QSgUM8pNGN0OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB6807.namprd11.prod.outlook.com (2603:10b6:806:24e::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8678.33; Mon, 28 Apr 2025 09:55:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 09:55:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 2/2] drm/i915/psr: Move PSR workaround to intel_psr.c
Thread-Topic: [PATCH v3 2/2] drm/i915/psr: Move PSR workaround to intel_psr.c
Thread-Index: AQHbtDpPCx7CDX1gCkSGTfmq/A7tv7O0CCQAgATWnQA=
Date: Mon, 28 Apr 2025 09:55:01 +0000
Message-ID: <cb7544e1587e1a7a458f5cca9d54f816dd180cd8.camel@intel.com>
References: <20250423102704.1368310-1-jouni.hogander@intel.com>
 <20250423102704.1368310-2-jouni.hogander@intel.com>
 <IA0PR11MB7307B43E44BF38C622AF01C2BA842@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB7307B43E44BF38C622AF01C2BA842@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB6807:EE_
x-ms-office365-filtering-correlation-id: 070804c5-7362-4148-acdb-08dd863abe57
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|10070799003|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?dHNxSnduRkZoMnplbkNQaXlaeDlkUVdCNFR3SVIyMFY1QklXYmtWdXh0TjhF?=
 =?utf-8?B?dTV0NTJMTGQwMXJ3WGQxSG1vNHdsbHVBUi9tSnB5cjlsYUpXSGhrVWszOURp?=
 =?utf-8?B?c3dwOHlBc1FPZXFTam8wbmQ3czdvL0NqOVF3TVU4U2VQMTRNb2hScXFNbmlz?=
 =?utf-8?B?aExXcHZwTndXUXdxbzFQVGNmRnVnQ2lEdDE2eXlPaTFTdlZ2SU42bVR2VVow?=
 =?utf-8?B?SkZpZnRHbUNRUk5hTC82aFMvMGFoTTNUR1JoV21RL1FZVTN6VVRNL1ZMb04w?=
 =?utf-8?B?NEx0dzRmaDRtU1M5UFRXTmlvbEdYaTk5eUdYcHNCTVYyQVZ6WWRseDhkbnZQ?=
 =?utf-8?B?OXYyOW81YkFuZmVQSHVMK3JEckRxVGIrQW41b2pXTXpzZUFOWjQxT29ENFdV?=
 =?utf-8?B?UHc2dkZ6bUVpQ2ZiS1c0eGJDcGZ4MFBreEJPaGN3M2Y0QVRXaXNyUGxhay9W?=
 =?utf-8?B?dzhId3VHRlZiMnFyMmJDYURrMSs4MUVPdVR1RjlRenBHZ1NybGlvbWU2K3kz?=
 =?utf-8?B?dDJESDRRcVVicisxekROVEoxL2tVRjZzM1BMcEY2d2I0K0p3OFdKazVzRmto?=
 =?utf-8?B?YlQxa1N3U2xsa1B4SnpKKzZTT3dyQnpwMmVkSmNDMnNncWJUSWJndlY2Kysz?=
 =?utf-8?B?UWIzVyt2SW4wZHVzcmRSREhMZU9YVzBtVkhyT29Ec2E3TEVqOThPMERQOWpp?=
 =?utf-8?B?ajE4aW5yWCtTbFdrTWN2akxwSmp3N0krWE16QnRRTFFNMmpVUjFWK2VkSTNM?=
 =?utf-8?B?U2k1Zm5hS0VUNmN0ZVo4ZHArRWQ1S2tFSnAyVlNxbUt1NEhKd2VveHY5WHRP?=
 =?utf-8?B?UzFjeCtDWXRQYlY2OUFtWGV2NFN4V015a3hkSUkrMTUvMGg4TnVWR1FXTEF2?=
 =?utf-8?B?WWlpb3J1ZitZQmd5VG0rbEY2THF4dlR2TkFYM0ovaE93RDBRNklVZnFnaEZJ?=
 =?utf-8?B?ZEJXcXgwSWdTM3RoWFNRK3FSZGNtUExmS0lremptZk0vUGg0ei9sVUZXaStu?=
 =?utf-8?B?dW45NzNBNjhEcXBWSHQrbG5lS3JVdUdDNDk5UTlWZjE5QllWQVRFcVZ1NlhP?=
 =?utf-8?B?cmQ2MnlLbDZCeGsrN0ZzN2JEbDRxdXhmWHVnSDZoNzdCK21weWFuTGZPbTJh?=
 =?utf-8?B?aTNZWEV0QkRhN1RzRnpmT3N6WTU1QzR4RDhpZUtuN0E0N3U5TFNYTTYyL3BR?=
 =?utf-8?B?MFpxZjh0cUpkZ1JmUVd2Ky9VcCtSTmdiL212SGowNGgxTWtSb1o5MEpaY0xw?=
 =?utf-8?B?TWFqSGxYSUlWbFV6elViMWUwaE16dEw0TXhDOWdiSDFVemowbGwwd1A4ZDA4?=
 =?utf-8?B?REx1UVJZMlJ1NTB1a2RNc3ovUXhVYTFFOHdobmY3bnNsbEo3UHhMeGNSNmMr?=
 =?utf-8?B?NWhVWUJLMnpnRG55Rkhrc0pzSmd5VTdLd1FxZ3JPRWlvVDByWlg0dEUrTVVU?=
 =?utf-8?B?eG1zdWRpSnp4YnhrWk41ZWl3aGU1N0lTZUdnU2NVNU9aNGthWnNvM1NHNmZQ?=
 =?utf-8?B?ZGMvSEdUWGk3Kyt4MEtkVEdQQkh2WnFjUE9XZHAvOHdzT0JyaEN0UEhYMXpM?=
 =?utf-8?B?bEIvZVRhaGRxN0E1dzV6SnVqYURreCtSR09BMjhNY3JIbUdpYjdPMTcxZHZ5?=
 =?utf-8?B?M01oQXVBa2lLcm81SlVHYjFBemUwdzZYMmw4aHlWRGoxUEJLeXdwQi8xOXFm?=
 =?utf-8?B?dVJHYjIyV1Ntb05yN01vcE1NVVRXSGo2UkFRR1hiVjFKbDNjSXNzblFzbmJP?=
 =?utf-8?B?S2R1MFl1S3lFQTVJR3RaUWNDVHdyU3JJMFBWa0pEd0RnRTZyVDB0aytuS0VC?=
 =?utf-8?B?Z21jaXZmeHQvQTFCaU1ySkg3K002bFppb0hkejBRcWM1NjZYRTlUTW9mNHBQ?=
 =?utf-8?B?cEFkNldtZFUrM3g5aXhCNlMremRGRlBldTR6b3BpRWNKS2pvYTJRNWxqaDZZ?=
 =?utf-8?B?SWFKTDZxVWg3STJEUlU0WTRnVjBkWlFkdm4rbWx2RFcrL2ExdzhVdEhQK2ls?=
 =?utf-8?B?M0JUMDEzTDZnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(10070799003)(1800799024)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?My9GWFMvTTNtTUVCZHFKY3pIbnVLUHhyOTNOQ0VRVkVCZklZa2pHb1lrbjN1?=
 =?utf-8?B?SEh0d1U3dGdML1RXOWMzQW85WFJiU2xUc0g4QXlPSlIrNGdsdTZqYjg1WUha?=
 =?utf-8?B?OFcvZ3hyNWJ2aTZrdmNkWTN4eGN0QXIrc3AvL1A3NmdJQnpGRHY5b29UTXdv?=
 =?utf-8?B?WEFhcjhLcEtlS1d1d3BJd05sQkF0RE80VS80OGdadVQrUTdmdUdUMmMyb0dD?=
 =?utf-8?B?UFFkNmRxZDluaEkyRWIvdVVXZi9oZjNZNDNkU3pUeGZrdjNoUlFmbnBtS3Z5?=
 =?utf-8?B?eUlTajVEZ1VBaEVEc09HcTdFcXJuNlBKU094V2pFRGk2YU5aeDVXQldZUUxS?=
 =?utf-8?B?eGV4VGtQT1pjYzc5SnZaMFdpYWhwakorSFlrOFZHYXhrK1VqTnhPT0RKd2xT?=
 =?utf-8?B?MlZ3QlRGSFBxakdvdENmT09vUThlay93RXlVdEQvREZSbnIyM1RKTXN6YkM2?=
 =?utf-8?B?MlJmcHVJeGF0aEJYTnQ5dy9CeHhjaXNqTUt5VjV1QkkreElPMnZ5eUhIRkg2?=
 =?utf-8?B?SzA4UlVCL1pTUmNOVUZweU5va3YwbXcvQUdCR3F5WHV3UEdjaGJJN0xzRTRl?=
 =?utf-8?B?WCtnNG9Rc2UxcUNka0pRcHRUeUtlS1hnelBIZXBLUnBOVy9VVTl6anN6R1Yv?=
 =?utf-8?B?SzFiK0pKb2lhWStlekh3THhTa0ZlUDlOdkZ2ZFBoTGdjYld1clNDNWozZldE?=
 =?utf-8?B?S0xtenhwSjVHTy94T0pTeTBORnVyTzg2czZ2RElGWWVYeFJYYk9zRkVLc3V6?=
 =?utf-8?B?Wi83bUE2dGdXeUFkSVNmcDN6MmkvWDRUQ3ZOVE1yUXpLQ1pyZUFnM0FhU09p?=
 =?utf-8?B?V3NNMjhDWmdFcE5GN0ppa1BzRVl0UHVoendFcUZQNmRtcEFIVXlsZFRsNzkv?=
 =?utf-8?B?RDIwd2NRMGpFc3Y1Rk5sUmxtb3ZaZHlnYm9XVWU5TXZSb1FvNDhIeUN0R1Jh?=
 =?utf-8?B?Tkl5aTRaN2huL2IyWVFnREs5ajgzVTkwaHZKaW01eU45dFlPdkRhcXRoNDB1?=
 =?utf-8?B?RERrVGdzdW94TmJFSGtROVNXdkNicDF3c1RyZEJTTDlCdzRmWXNSTTJuMldr?=
 =?utf-8?B?TWh4L3Q3NTFCMmh0K0k0ZzhTZVRGUWlIY2U4M2JwK21qMDExY3RlbWErVGVy?=
 =?utf-8?B?d1VQNGZZbGMvblBiUFlibzdhSzRXREJDdkowNEZGVWptN2ZkWUozdjM0WEVo?=
 =?utf-8?B?VGVxUWFvODJwZFJZa0tqSWllVU5aUGlwSEU2ZEhvTEJtT3htWDVPMlJmT1VN?=
 =?utf-8?B?RmZUMHhwMkJDa0NkODMrQ3ZtLzlRdkdHVHFZSlMzclZ1aVlvZTBCODRtRGtR?=
 =?utf-8?B?MUNJbVlidFpRRHJOeFdvQWRJWjYyMmxtNUhYWXlCemZqV1k4WFNUTnN1bElw?=
 =?utf-8?B?TlFzRHh1RUhtdnVoaUNadVE0ZTZEK3hOTVI5L2oyRWFLK2NOeFYxWldJdndW?=
 =?utf-8?B?aVo3QlJ2Uk16dDFocDYrV3N5aklVSmxZZkpHallaaHBFL01GKzJoYzZRRzdV?=
 =?utf-8?B?QlJQTlV6SlBmQXZTNGNuSytsUnZrVE9CQVBOakVYNVdiN3A1K1cvVHl0c1Nv?=
 =?utf-8?B?cEtXdFYrc3JyNjRhUlJrUGZLa3JqOW5oajliVGo1S0tieHhoWWJUb1A3eUhV?=
 =?utf-8?B?T3pvZ1dBNldiZG1HdnBxbFh6SXkrRkZobTE1Z011dGYyNCtncjNDeVVMUGJ5?=
 =?utf-8?B?TFJ3U1JUc0NZUTM5SlpMRkZlVVRZc3A4cFoyYVVQa3NFamxiaTZKL0hjamxM?=
 =?utf-8?B?R2xJdHlCalJsUXI2VWNyWjZRaS84QkoveG9JUWVlK0h5Y1RRQk93KzNFT1NR?=
 =?utf-8?B?OTFwdnl5bWxVWWQ2VWpJOGcyaWRoTk9aazV3Z2Y2eFR1L205SHNob242OXo4?=
 =?utf-8?B?YjhJV3BEQUg5eUZaWDNoeGhuTG9qcmF2VVA4RU56QlJRTHF2NTJwTWpJZkJV?=
 =?utf-8?B?V3dkNGNZVUNRaWtwU0NlZFYvYk1yeldyNEtjV21ObWxMTnhFR0JoN1Fic1NG?=
 =?utf-8?B?c2drVEZiNGt3cHlQdmlubUMyRzFnaFVuRWNoUVZlbWRWR01BSXVqd2pZejJk?=
 =?utf-8?B?WFFyVjcvYUZMWmdyQlROTWxhUkdETlY3TkptdmRycWUxL2NieEVMZkdwQmFT?=
 =?utf-8?B?aGxZUkQzVjBDaUpwd0g5ejloMUJCUVZ4RkhQSG9yU1RQcndDdC9mWHliT0xM?=
 =?utf-8?B?TkJDSDlOK2xabW16T21RcVNYT2JzbTV3dm1GaXdCUFlNeWVBMDZVcEcvMXEz?=
 =?utf-8?B?V0dHRkFWS2U3SjAydFFnN3U5aVp3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <902B9B246204D1448D2982BA01C9E9BF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 070804c5-7362-4148-acdb-08dd863abe57
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2025 09:55:01.5637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sscQzvUHSbi3U/Iex00XE+vG5oeM52tJmk72Q1Naf/caOlihIjm3Y8nx//VW8peUjDN66rZpg4KMB4MpPT9xgWscIe//9bqePcegFk1kQys=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6807
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

T24gRnJpLCAyMDI1LTA0LTI1IGF0IDA4OjAxICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToN
Cj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IEludGVsLWdmeCA8aW50
ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4gPiBPZiBK
b3VuaQ0KPiA+IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwgMjMsIDIwMjUg
Mzo1NyBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14
ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIIHYzIDIvMl0gZHJtL2k5MTUv
cHNyOiBNb3ZlIFBTUiB3b3JrYXJvdW5kIHRvDQo+ID4gaW50ZWxfcHNyLmMNCj4gPiANCj4gPiBM
b2dpY2FsIHBsYWNlIGZvciBQU1Igd29ya2Fyb3VuZCBuZWVkaW5nIHZibGFuayBkZWxheSBpcyBp
bg0KPiA+IGludGVsX3Bzcl9taW5fdmJsYW5rX2RlbGF5LiBNb3ZlIGl0IHRoZXJlLg0KPiA+IA0K
PiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiBMb29rcyBnb29kIHRvIG1lIQ0KPiANCj4gUmV2aWV3ZWQtYnk6IEFy
dW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KDQpUaGFuayB5b3UgQXJ1biBm
b3IgY2hlY2tpbmcgbXkgcGF0Y2hlcy4gVGhlc2UgYXJlIG5vdyBwdXNoZWQgdG8gZHJtLQ0KaW50
ZWwtbmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBUaGFua3MgYW5kIFJl
Z2FyZHMsDQo+IEFydW4gUiBNdXJ0aHkNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTIgLS0tLS0t
LS0tLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDC
oMKgwqAgfCAxMSArKysrKysrKysrLQ0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRp
b25zKCspLCAxMyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggYTdiMzVmYzEzZDdjOC4u
YzkzMWU3NmMyZmExMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gQEAgLTI0MDIsMTQgKzI0MDIsNiBAQCBzdGF0aWMgaW50
DQo+ID4gaW50ZWxfY3J0Y19jb21wdXRlX3BpcGVfbW9kZShzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+IMKgCXJldHVybiAwOw0KPiA+IMKgfQ0KPiA+IA0KPiA+
IC1zdGF0aWMgYm9vbCBpbnRlbF9jcnRjX25lZWRzX3dhXzE0MDE1NDAxNTk2KGNvbnN0IHN0cnVj
dA0KPiA+IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSkgLXsNCj4gPiAtCXN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3Rh
dGUpOw0KPiA+IC0NCj4gPiAtCXJldHVybiBpbnRlbF92cnJfcG9zc2libGUoY3J0Y19zdGF0ZSkg
JiYgY3J0Y19zdGF0ZS0NCj4gPiA+aGFzX3BzciAmJg0KPiA+IC0JCUlTX0RJU1BMQVlfVkVSKGRp
c3BsYXksIDEzLCAxNCk7DQo+ID4gLX0NCj4gPiAtDQo+ID4gwqBzdGF0aWMgaW50IGludGVsX2Ny
dGNfdmJsYW5rX2RlbGF5KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNf
c3RhdGUpwqAgew0KPiA+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0
b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOyBAQCAtDQo+ID4gMjQxOCwxMCArMjQxMCw2IEBA
IHN0YXRpYyBpbnQgaW50ZWxfY3J0Y192YmxhbmtfZGVsYXkoY29uc3Qgc3RydWN0DQo+ID4gaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiDCoAlpZiAoIUhBU19EU0IoZGlzcGxheSkp
DQo+ID4gwqAJCXJldHVybiAwOw0KPiA+IA0KPiA+IC0JLyogV2FfMTQwMTU0MDE1OTYgKi8NCj4g
PiAtCWlmIChpbnRlbF9jcnRjX25lZWRzX3dhXzE0MDE1NDAxNTk2KGNydGNfc3RhdGUpKQ0KPiA+
IC0JCXZibGFua19kZWxheSA9IG1heCh2YmxhbmtfZGVsYXksIDEpOw0KPiA+IC0NCj4gPiDCoAl2
YmxhbmtfZGVsYXkgPSBtYXgodmJsYW5rX2RlbGF5LA0KPiA+IGludGVsX3Bzcl9taW5fdmJsYW5r
X2RlbGF5KGNydGNfc3RhdGUpKTsNCj4gPiANCj4gPiDCoAlyZXR1cm4gdmJsYW5rX2RlbGF5Ow0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5k
ZXggMTA1ODEzNDQyMmJjZi4uY2E5MWM3MDMzNzE0YyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC00OCw2ICs0OCw3IEBADQo+ID4g
wqAjaW5jbHVkZSAiaW50ZWxfcHNyX3JlZ3MuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9zbnBz
X3BoeS5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX3ZibGFuay5oIg0KPiA+ICsjaW5jbHVkZSAi
aW50ZWxfdnJyLmgiDQo+ID4gwqAjaW5jbHVkZSAic2tsX3VuaXZlcnNhbF9wbGFuZS5oIg0KPiA+
IA0KPiA+IMKgLyoqDQo+ID4gQEAgLTIzOTUsNyArMjM5NiwxNSBAQCBpbnQgaW50ZWxfcHNyX21p
bl92YmxhbmtfZGVsYXkoY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSnCoCB7DQo+ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRv
X2ludGVsX2Rpc3BsYXkoY3J0Y19zdGF0ZSk7DQo+ID4gDQo+ID4gLQlpZiAoIWNydGNfc3RhdGUt
Pmhhc19wc3IgfHwgRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCkNCj4gPiArCWlmICghY3J0Y19z
dGF0ZS0+aGFzX3BzcikNCj4gPiArCQlyZXR1cm4gMDsNCj4gPiArDQo+ID4gKwkvKiBXYV8xNDAx
NTQwMTU5NiAqLw0KPiA+ICsJaWYgKGludGVsX3Zycl9wb3NzaWJsZShjcnRjX3N0YXRlKSAmJg0K
PiA+IElTX0RJU1BMQVlfVkVSKGRpc3BsYXksIDEzLCAxNCkpDQo+ID4gKwkJcmV0dXJuIDE7DQo+
ID4gKw0KPiA+ICsJLyogUmVzdCBpcyBmb3IgU1JEX1NUQVRVUyBuZWVkZWQgb24gTHVuYXJMYWtl
IGFuZCBvbndhcmRzDQo+ID4gKi8NCj4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8IDIw
KQ0KPiA+IMKgCQlyZXR1cm4gMDsNCj4gPiANCj4gPiDCoAkvKg0KPiA+IC0tDQo+ID4gMi40My4w
DQo+IA0KDQo=
