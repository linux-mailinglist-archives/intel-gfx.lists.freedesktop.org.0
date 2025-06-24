Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAABAE707E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 22:20:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5D510E11A;
	Tue, 24 Jun 2025 20:20:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c4iz3miZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4752F10E103;
 Tue, 24 Jun 2025 20:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750796411; x=1782332411;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0AySuh+taE59BtGdZ6GnA1SGJs+o6RfoH6ftKEyCIPo=;
 b=c4iz3miZwfWZdbiU8SkZrKIdLCBK3VWOiB4AzZi8Jh3DiTmX+Y36rRB7
 MrpvVoTpkPbOpzIjZtZsnawau7ZqgKhIlw9EEWEZ2hnf/CSGovwOQLg/w
 oyAUhEYBRQkNZobe7BFQnyEJCe1kWI2zRrb6KjZVV8IchvQMFmSUAocZ7
 sOXDDCIEul07EpEuFdM1+Xw0tBvAYv0Eqq2eJ2ytcUFUA+BvqGreDxUhB
 AD/x06wbmgH8uzdPH1lukc3i/qpKehIijVoVgghPu+wI3cn3G4zhWkGau
 9Pk24eFSeJlazN2mBbHbJdHe1AWOnOXM09F563CwTddXykq+jMU7IbGDR Q==;
X-CSE-ConnectionGUID: BHSX1+TLRh+xSWU7HyOkmg==
X-CSE-MsgGUID: vSzYaKJZTqGJ9fzihbeMVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="75589455"
X-IronPort-AV: E=Sophos;i="6.16,263,1744095600"; d="scan'208";a="75589455"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 13:20:11 -0700
X-CSE-ConnectionGUID: 9hPPbJioR0qevizU/z/gcw==
X-CSE-MsgGUID: MyjtLqftRHu4MYban1Q0SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,263,1744095600"; d="scan'208";a="152138704"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 13:20:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 13:20:10 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 24 Jun 2025 13:20:10 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.64)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 13:20:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RUAyB5p8cqqsjUB8KVKyX0Sbz0zeFj5tHv/xFgcckvsRGWhP8v95xqH3qS5u7lyiNnUB9ltJT7WZlTM51rGEx755//109leRS8qZlVMcFGiM/V+zO80kUUp9xxEUb4Iz7F4YXSri2w0479UDLY1byfOmV/51vDuqV+QILbMyvIYNN++M9EoWRueJ8gvDZhPDqkSz7Kxp/I/e29h6VpP+ZylSVFAxv9wWM0VRoGisZIlG9NinBx6jm5UUs3CMfhJWxk0Kkz7efLiZ0Rvy96Lb8VniF6wIlodcF851mqhiBwit8S18n8HJEiIsAexW+n/q7opTdVpD8Miyy4748k7AiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0AySuh+taE59BtGdZ6GnA1SGJs+o6RfoH6ftKEyCIPo=;
 b=Al3rrPE1cXniymirrPnuUNqC2zyd/l4OftsFEo+uRpPpNarQU5/kmaBj+XpYt3BTY5RjAZDVrinQI8iaGdL/0HUtphtvBJjXtR6D2suiX2kbVvSymFD1H4T/8/ZmX5hYitwHSISeyEGgm6LPNzxFPJ5l+AzhGCn16XRLBfgHLSGMQVZ5RJ6FNAEKrySPv1hsWyHj/1RSZfevYSAL+8bNZIo+PhOyKhm1AlW0Uj6HJ9W8uouo8S6qZU6sOMonFoDRPTpr/3dn2E7IHKA14HhrrX/bv2p3JIXnWO5hPK+kiKxO3ugHrtbBn0O2ya58KGQGcsR2w5GF+Kh/uZV7woUrMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN0PR11MB6254.namprd11.prod.outlook.com (2603:10b6:208:3c5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.17; Tue, 24 Jun
 2025 20:20:07 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.8857.026; Tue, 24 Jun 2025
 20:20:07 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v5 2/9] drm/i915: Try to program PKG_C_LATENCY more
 correctly
Thread-Topic: [PATCH v5 2/9] drm/i915: Try to program PKG_C_LATENCY more
 correctly
Thread-Index: AQHb5SmlHqNQG1Ama0aRq0ZaA3xiN7QSvY2Q
Date: Tue, 24 Jun 2025 20:20:06 +0000
Message-ID: <DM4PR11MB6360641AFFD3D23725898150F478A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
 <20250624170049.27284-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20250624170049.27284-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MN0PR11MB6254:EE_
x-ms-office365-filtering-correlation-id: 5249f954-0b9e-4ce0-19d6-08ddb35c82e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?c1FIRzNBWE15VEw0YVZIUTBwa085VzZIZTF3VStwL1BoYWdueHpleDcvb0pT?=
 =?utf-8?B?Ymkzai8weWpxcnpRRmVOblloVENsZGdXZmJrVTZhMDh0blpGNnJzdkI3MmNi?=
 =?utf-8?B?b29BRitocHBTRU8wVnFlMGZQZHdobmxlNEd6TzZtVG9vdzVLTTZrR3pxVm1C?=
 =?utf-8?B?QnBZZG4zTVNxQUFzMjJFMkIwNmZyRGpBdXJpWENhZWlDMjRkZUEvUXR3VnFK?=
 =?utf-8?B?cm5VYWtlKzR5VWFQL2VyOEkvcVp5em1GMlhmR29SNGNSNFlPQlFpVjRTOFBX?=
 =?utf-8?B?UzNhOFlBbk1GRU00L0NGVkpGZjZxWFpZbGMvWXc5aDZ5VjZaV014UklBVzNo?=
 =?utf-8?B?MVlreWxFMmZDOXgva0V0SHZzVDhyTzgwOWFuVXVtMDV3WE5VNkd1QWhqak94?=
 =?utf-8?B?bDRYWWFhQ2JZYy8vSGd0bjBhempKZkVnbXZQM1c0SjBaRWpPZTI3YllYOUp4?=
 =?utf-8?B?QXd2VjltN0FydEVOWnBUcjBKOUZJdUFEcEplaFVvSktIUllScE93azR0SnNv?=
 =?utf-8?B?SGIrR1BRUk1pMUhxeEZaNmdON2h0RktvVWhrMjJUclQ3MG1yMjc3TUJjRnR5?=
 =?utf-8?B?SlJ2UkllUnNpZmdPZTRjc2s2Mjl1YmlxQjJkM2NWUFVjSWd4dmVyRjVCeDd4?=
 =?utf-8?B?ZURpejNEL3p5NXRXWDJKNVlNYlI3a3VsM0RpYUh0SVMrTlRSWkhGTmplMDBM?=
 =?utf-8?B?S21Pc0NwOGROakR4YitrL2V0dmFoQWJHN05pemthQTIyWXZOckhSZThNUnZH?=
 =?utf-8?B?emtlNXBOb0I2eTFlUnFvWEkva3cyZWs5ZlNIdmhHbkhTSnFtQzNpbEkzVS9R?=
 =?utf-8?B?emF5N1NQVG5mN2ZxWStxbE9NNUNXQUxMVU4vOWd5S2trOWp3ZVpZOVc3YXd6?=
 =?utf-8?B?aFhDajRVNldQS3l5ZW95cmh2bkcxZ1FINFB3VExIajhidFYrT2ltdUVhcnp1?=
 =?utf-8?B?LzZEeGFEczN1YkFRWU9wOTRid0lJbnZXS3Ztcys2ekpITi9kVlpvTjVHRFp4?=
 =?utf-8?B?ZFRxWU04bXQxVXA1THZaZXl4SEorYUxxTTFNU0xWYzNray9HMXpkMmVQWHZH?=
 =?utf-8?B?a3pwaTY1WUs2dnNOMDlJUno4V0RwRGF2TXk1bkxiL3JRVE02eUM0MVlSODgw?=
 =?utf-8?B?dVRzMFNDdCtBYUxjV2lwVkhJQjNEaVRUV0kwWDR4K0loTWJod3EwSjNoM2F5?=
 =?utf-8?B?aDVZM0Uvc2pHL3JwanN6eU0xT2s5Z3pxOTlKeC9Ebi9zSFVzdkQ5Zi9xTXRU?=
 =?utf-8?B?V205RStVS20zL3ZFUFVQQ1dHZnNZUVJpN2dzdVg1U3EwQnlhTEh4N2JYYUdt?=
 =?utf-8?B?WUc5RHhzcXdwd3l5NFRPbnRNYUNnbk5wcktxZHZnSHA3d1ZxYjI0amdoKy85?=
 =?utf-8?B?M3IxNHVHTFhzQ0tnRWdGbUlIa2ovdTBlaVFzdDV5MkNpR1ZpWVZJTjdSdkll?=
 =?utf-8?B?cGtDQnJqZ0wyT2xadXMxRThYMFRDdmg5TEhkN1pyVS96OEY2YTQ3b0dVbkZU?=
 =?utf-8?B?a2xEN3BleHJGYnVoWnVGTnJxYVhhWGFWVVNyek5tODIzOUxpZE5VVUYwR1lk?=
 =?utf-8?B?MGpoTnpIeWU0aG5keklxQUFoTTFVZ1NFZnNUS1dKVS9FbmFyNkhtanpSZ1h2?=
 =?utf-8?B?MUY5eEQxVWdmeFUwZDVDdVdSZ0RaWlNWSnpHR3VuZWVPNzllVkVjZGhhY2pn?=
 =?utf-8?B?aERzdzB6S0k0Ui83b1RzTXAwV0s2SHZMZDRMVDdFVWQrTlJGS1IycDMxWFcr?=
 =?utf-8?B?bzRBcnplWWdJZHUwZFRqWFdSTjVrTk5iZ2ZBVGpxK1JuUlMvUkZ6VjYvYkFv?=
 =?utf-8?B?QlQ1REtvQkRwcHJWakthME9xZXlodjVHU3BMNjA3NXdwQ293c2tYeXlPVXg4?=
 =?utf-8?B?Tm0zOHMvZG1ZQzg5dS9qeTBpNkVUeTlHOGhkWVVwazMrS1lRSWswc1d1L1JP?=
 =?utf-8?B?eC84dGZmTWRDbjFZZXJzV1U2alZYQURmUVluZFIrRnIzREp5ZGFLZUw4R0pk?=
 =?utf-8?Q?D2PH7+oBZvC6gdzobimDFfzW6o274E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUNacHFNamRVMjhUNS9tSVFuVTZqSE5BOVhKOGlTUjBWWTJpKzVSVEVQYS9j?=
 =?utf-8?B?NURjb3huRjhXVCs4UkNsYmFSZkREMmZuOU9DdTFQRDA1cmJFQWVwQ0wrRW0w?=
 =?utf-8?B?aTlhSEJQNlRlWjB4dlh4TmpOTE5LM2ZSOUNiMjFjZ1VoTVFSYUZ5MCtvR0x0?=
 =?utf-8?B?RlhmV2ZyTFVEUHhNU2tSeUFPbGFNMDE1MzNBSFZuTFZTRHFsd21abVdEWnJL?=
 =?utf-8?B?U1cwVWxZanRSZTduSlVpa1JvWUhHRFUwZklNTkc5TkljbXFVYnBNbzQwcW5E?=
 =?utf-8?B?cUFBWGZhK1diSlhiZnFQSXU1NkxIK1lzemhIMURCWS9YV3VCRXh0NytKSzZK?=
 =?utf-8?B?aXRrMmFwZ01IUzM0eElmWDVxa0g1c1Z5RnVpQit3TVJJS0FIYU1EK1ZyYW4v?=
 =?utf-8?B?TXdoMUVTRUtyS2JnU0RzTHpaalV4S2lkOWFMc05HNXhhMWVVSXBHcVBBRGtm?=
 =?utf-8?B?QWlMS0NYaDB5WTE1ckNhSWhra0JBZXZoaTlIbU1RSDFhdmR3eVhHb1RBSXdV?=
 =?utf-8?B?aERCT21UZTZ3bElxZGpvaGdTZnlGUHZUanE5bnhFZlhpbEpqdnNxcnloZDY3?=
 =?utf-8?B?SFBkNEROZ3Z3UHFiNEZkT0h2SDBYek80dU90djYxN25tMVM0ZjVrNTZEZVRD?=
 =?utf-8?B?U1NlUTg3clRrckNKOWd4ZWdvdlRkekxCZjYzVHVuWGhKRHFGbTNlenRNU0hi?=
 =?utf-8?B?UzF4TVU5d3VCam5Tb2xUMXNSY2h0WEJvaU1KNGRyRXdmVDN1eStkMUxvbnhE?=
 =?utf-8?B?V05NV2xidnI3bXpVa05GLzgwaWovSC85d0U0aEd5cTFvNEZmV1JWWVdncjJD?=
 =?utf-8?B?ZC9yK1E4MDhHbjh3UFZqNmFMTUY5L3JxQnZ6ZjUyWlErMGtZZmFNS2RkUzlR?=
 =?utf-8?B?ZlA5SVBnNW9tcC9IdHZ2blBQbHl5NjZCNWtKblFHUThXVitWUHlNWVVTZG85?=
 =?utf-8?B?SEZiWFJnajU1ZEdyY2RyUkt2L0dpWkdNaXkwUjBmOHR2WHpnNnNEbFEvL3lO?=
 =?utf-8?B?WTJtRnh4MU83S3YwcnJrNVpxcTlITWdEaDVtRkVGRlc4TTRWQ3VXV3o0SkxF?=
 =?utf-8?B?ZVZXbWx3M3V5MGRlMm9EaDgxMGZQMEpGMUI1b08vVXlaZWd6UlptNlZrMk9L?=
 =?utf-8?B?SWk0eVh5UTRWZ28rMU5VemV4eEVTUTJ1c1U2ODg1WXp0N2VaZEdZT3VXK1Va?=
 =?utf-8?B?NXpxU0Ezc3AzODBzSjZYNmFZeEFZQW5jQXo0cmRIblV2L3hwRUUxanpTU0pu?=
 =?utf-8?B?NlVvVFRuQTlUdmNXaXcwT0Eza3FCMkJZNHQvRzdNZHhObVZEZDlGN1g3T2Yx?=
 =?utf-8?B?Y2pPdXM5cys4ck4vM2wwREpVRmZQSVJ1MEdwVjNRSDgrZDZERE9weWdVZ0xm?=
 =?utf-8?B?NUlxQlppT3dWd2d3STlja0hpbTZMT2NCaFVDdjNnUVpzblJZRnZ3azU1V0I1?=
 =?utf-8?B?Q1Z5Znc3VFg2ZG4rZEFiSDgwdFFzTkNBYlgyRkZlMVJ5YjZoT3VvQWlXTUFG?=
 =?utf-8?B?Q2Fla3lDcjFHV0lOTWFtTEpWMGc1SCtmSC9lVFhvZEhRS3hBMDc1TTZOdlNI?=
 =?utf-8?B?d1ZxVGQxQ1IwS2pOLzhJV1pHWHd4eUpLUlRnMHBGbjc0NWRPNGIrS0FGa1Z2?=
 =?utf-8?B?c2lFRWVvZzN4elFXenFWdFdrOVRhbmlqMVlmUVQvWEltU3FMZDEwRkRCSDla?=
 =?utf-8?B?SUYvWkpkQ0dNOXdWTy9MamJDd3RsU2xqbk5JcUdjSE1LZTE2ckpWMVVzMjh4?=
 =?utf-8?B?THh6OHV0aFZpVHpOM3BFUjN0R1RnYWt4OStQU2NtWCtVSjgrRmdoRXVBVjBn?=
 =?utf-8?B?WHdZd3dMd09ybjQxNU1IN2hJWnZwK1M5YjAxV2w5dW8xbUpjd0VZSHcyejUz?=
 =?utf-8?B?WUFhd3MyTmZWNjIrUFRnTVRrUS9xWFJUaVpqVFdyOWV5eXhqWlBINGRqMXAz?=
 =?utf-8?B?cG51Uk1ieHJic1VXclR5ekc3bzl1clRPWHU4YlNPdXV0TmVEUUFzemZwaEtt?=
 =?utf-8?B?Y2tzRXhnaFdsODhWSFgzNkZlNEcyQm9heVpmdEpUazRYM3pDVU1sZ0Zta0JM?=
 =?utf-8?B?aFpWRE9CaWhBd083c2s5Tzh2LzNKbGdid2hVZHdnTWxIcG5WTjhEejZFcndh?=
 =?utf-8?Q?uOYi+UnToD0h+U1o4eKSU1PcD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5249f954-0b9e-4ce0-19d6-08ddb35c82e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2025 20:20:07.0200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KFL7x7/k5oOsvpsrpZjlmxc93h9I5mEHRfkdVgIRYkjc3OXUS/QvtHTktdBuZ6XgSlZaJ/JQn86iCy3/ZULNFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6254
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjQsIDIwMjUgMTA6MzEgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjUgMi85XSBkcm0vaTkxNTogVHJ5IHRv
IHByb2dyYW0gUEtHX0NfTEFURU5DWSBtb3JlDQo+IGNvcnJlY3RseQ0KPiANCj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFRoZSBj
dXJyZW50IFBLR19DX0xBVEVOQ1kgc3R1ZmYgbG9va3MgYnVzdGVkIGluIHNldmVyYWwgd2F5czoN
Cj4gLSBkb2Vzbid0IGFjY291bnQgZm9yIG11bHRpcGxlIHBpcGVzIGZyb20gZGlmZmVyZW50IGNv
bW1pdHMNCj4gICBjb3JyZWN0bHkNCj4gLSBXTV9MSU5FVElNRSBpcyBpbiB1bml0cyBvZiAwLjEy
NXVzZWMsIFBLR19DX0xBVEVOQ1kgd2FudHMNCj4gICB1bml0cyBvbiAxIHVzZWMNCj4gLSB3ZWly
ZCBWUlIgc3RhdGUgc3R1ZmYgYmVpbmcgY2hlY2tlZA0KPiAtIHVzZSBvZiBwb2ludGxlc3MgUk1X
DQo+IA0KPiBGaXggaXQgYWxsIHVwLiBOb3RlIHRoYXQgaXQncyBzdGlsbCBhIGJpdCB1bmNsZWFy
IGhvdyBhbGwgdGhpcyB3b3JrcywgZXNwZWNpYWxseSBob3cgdGhlDQo+IGFkZGVkX3dha2VfdGlt
ZSB0aWVzIGludG8gdGhlIGZsaXBxIHRyaWdnZXJzIGluIERNQywgYW5kIGhvdyB3ZSBuZWVkIHRv
DQoNCkFGQUlVLCB0aGlzIGNhbiBoZWxwIHdha2UgdXAgZWFybHkgdG8gcHJvZ3JhbSBEb3VibGUg
YnVmZmVyIHJlZ2lzdGVycy4gTWF5YmUgd2UgY2FuDQpqdXN0IHByb2dyYW0gaXQgdG8gb3VyIHdv
cnN0IGNhc2UgRFNCIGV4ZWN1dGlvbiB0aW1lICh+MTAwdXMpLg0KDQo+IHNlcXVlbmNlIHVwZGF0
ZXMgdG8gUEtHX0NfTEFURU5DWSB3aGVuIGVuYWJsaW5nL2Rpc2FibGluZyBwaXBlcy9ldGMuIFdl
DQoNCkkgZ3Vlc3Mgc2FmZSB3b3VsZCBiZSB0byBqdXN0IGRpc2FibGUgUEtHX0Mgd2hlbiBkb2lu
ZyB0aGUgc2FtZS4NCg0KPiBtYXkgYWxzbyBuZWVkIHRvIHRoaW5rIHdoYXQgdG8gYWJvdXQgdGhl
IFdNMSsgZGlzYWJsaW5nIGFuZCB0aGUgcmVsYXRlZCBQU1INCj4gY2hpY2tlbiBiaXRzIHdoZW4g
d2UgY2FuIHVzZSBQS0dfQ19MQVRFTkNZIGZvciBlYXJseSB3YWtlLi4uDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8
ICAxICsNCj4gLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oIHwg
IDYgKysNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMgIHwg
OTcgKysrKysrKysrKystLS0tLS0tLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA2MSBpbnNlcnRpb25z
KCspLCA0MyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IGRlOGJmMjkyODk3Yy4uNzI0MDdjZmZmYjYw
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBAQCAtNzM5Myw2ICs3MzkzLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1p
dF90YWlsKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCS8qIE5vdyBl
bmFibGUgdGhlIGNsb2NrcywgcGxhbmUsIHBpcGUsIGFuZCBjb25uZWN0b3JzIHRoYXQgd2Ugc2V0
IHVwLiAqLw0KPiAgCWRpc3BsYXktPmZ1bmNzLmRpc3BsYXktPmNvbW1pdF9tb2Rlc2V0X2VuYWJs
ZXMoc3RhdGUpOw0KPiANCj4gKwkvKiBGSVhNRSBwcm9iYWJseSBuZWVkIHRvIHNlcXVlbmNlIHRo
aXMgcHJvcGVybHkgKi8NCj4gIAlpbnRlbF9wcm9ncmFtX2Rwa2djX2xhdGVuY3koc3RhdGUpOw0K
PiANCj4gIAlpbnRlbF93YWl0X2Zvcl92Ymxhbmtfd29ya2VycyhzdGF0ZSk7DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiBp
bmRleCAzMmNiMGU1OWM4MWUuLmFkNGQyOWUyYWYxYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oDQo+IEBAIC00NzksNiAr
NDc5LDEyIEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5IHsNCj4gIAkJdTMyIHBpcGVzdGF0X2lycV9t
YXNrW0k5MTVfTUFYX1BJUEVTXTsNCj4gIAl9IGlycTsNCj4gDQo+ICsJc3RydWN0IHsNCj4gKwkJ
LyogcHJvdGVjdGVkIGJ5IHdtLndtX211dGV4ICovDQo+ICsJCXUxNiBsaW5ldGltZVtJOTE1X01B
WF9QSVBFU107DQo+ICsJCWJvb2wgZGlzYWJsZVtJOTE1X01BWF9QSVBFU107DQo+ICsJfSBwa2dj
Ow0KPiArDQo+ICAJc3RydWN0IHsNCj4gIAkJd2FpdF9xdWV1ZV9oZWFkX3Qgd2FpdHF1ZXVlOw0K
PiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVy
bWFyay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMN
Cj4gaW5kZXggYTcxNjA1ZTNhNTM1Li44MTg0ZWMyNjExZTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IEBAIC0yOTAzLDY0ICsyOTAz
LDc1IEBAIHN0YXRpYyBpbnQgc2tsX3dtX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RydWN0DQo+IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiAtLyoN
Cj4gLSAqIElmIEZpeGVkIFJlZnJlc2ggUmF0ZSBvciBGb3IgVlJSIGNhc2UgVm1pbiA9IFZtYXgg
PSBGbGlwbGluZToNCj4gLSAqIFByb2dyYW0gREVFUCBQS0dfQ19MQVRFTkNZIFBrZyBDIHdpdGgg
aGlnaGVzdCB2YWxpZCBsYXRlbmN5IGZyb20NCj4gLSAqIHdhdGVybWFyayBsZXZlbDEgYW5kIHVw
IGFuZCBhYm92ZS4gSWYgd2F0ZXJtYXJrIGxldmVsIDEgaXMNCj4gLSAqIGludmFsaWQgcHJvZ3Jh
bSBpdCB3aXRoIGFsbCAxJ3MuDQo+IC0gKiBQcm9ncmFtIFBLR19DX0xBVEVOQ1kgQWRkZWQgV2Fr
ZSBUaW1lID0gRFNCIGV4ZWN1dGlvbiB0aW1lDQo+IC0gKiBJZiBWYXJpYWJsZSBSZWZyZXNoIFJh
dGUgd2hlcmUgVm1pbiAhPSBWbWF4ICE9IEZsaXBsaW5lOg0KPiAtICogUHJvZ3JhbSBERUVQIFBL
R19DX0xBVEVOQ1kgUGtnIEMgd2l0aCBhbGwgMSdzLg0KPiAtICogUHJvZ3JhbSBQS0dfQ19MQVRF
TkNZIEFkZGVkIFdha2UgVGltZSA9IDANCj4gLSAqLw0KPiArc3RhdGljIGludCBwa2djX21heF9s
aW5ldGltZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkgew0KPiArCXN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+ICsJY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7DQo+ICsJc3RydWN0IGludGVs
X2NydGMgKmNydGM7DQo+ICsJaW50IGksIG1heF9saW5ldGltZTsNCj4gKw0KPiArCS8qDQo+ICsJ
ICogQXBwYXJlbnR5IHRoZSBoYXJkd2FyZSB1c2VzIFdNX0xJTkVUSU1FIGludGVybmFsbHkgZm9y
DQo+ICsJICogdGhpcyBzdHVmZiwgY29tcHV0ZSBldmVyeXRoaW5nIGJhc2VkIG9uIHRoYXQuDQo+
ICsJICovDQo+ICsJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMs
IGNydGNfc3RhdGUsIGkpIHsNCj4gKwkJZGlzcGxheS0+cGtnYy5kaXNhYmxlW2NydGMtPnBpcGVd
ID0gY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZTsNCj4gKwkJZGlzcGxheS0+cGtnYy5saW5ldGltZVtj
cnRjLT5waXBlXSA9IERJVl9ST1VORF9VUChjcnRjX3N0YXRlLQ0KPiA+bGluZXRpbWUsIDgpOw0K
PiArCX0NCj4gKw0KPiArCW1heF9saW5ldGltZSA9IDA7DQo+ICsJZm9yX2VhY2hfaW50ZWxfY3J0
YyhkaXNwbGF5LT5kcm0sIGNydGMpIHsNCj4gKwkJaWYgKGRpc3BsYXktPnBrZ2MuZGlzYWJsZVtj
cnRjLT5waXBlXSkNCj4gKwkJCXJldHVybiAwOw0KPiArDQo+ICsJCW1heF9saW5ldGltZSA9IG1h
eChkaXNwbGF5LT5wa2djLmxpbmV0aW1lW2NydGMtPnBpcGVdLA0KPiBtYXhfbGluZXRpbWUpOw0K
PiArCX0NCj4gKw0KPiArCXJldHVybiBtYXhfbGluZXRpbWU7DQo+ICt9DQo+ICsNCj4gIHZvaWQN
Cj4gIGludGVsX3Byb2dyYW1fZHBrZ2NfbGF0ZW5jeShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVs
X2Rpc3BsYXkoc3RhdGUpOw0KPiAtCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOw0KPiAtCXN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsNCj4gLQl1MzIgbGF0ZW5jeSA9IExO
TF9QS0dfQ19MQVRFTkNZX01BU0s7DQo+IC0JdTMyIGFkZGVkX3dha2VfdGltZSA9IDA7DQo+IC0J
dTMyIG1heF9saW5ldGltZSA9IDA7DQo+IC0JdTMyIGNsZWFyLCB2YWw7DQo+IC0JYm9vbCBmaXhl
ZF9yZWZyZXNoX3JhdGUgPSBmYWxzZTsNCj4gLQlpbnQgaTsNCj4gKwlpbnQgbWF4X2xpbmV0aW1l
LCBsYXRlbmN5LCBhZGRlZF93YWtlX3RpbWUgPSAwOw0KPiANCj4gIAlpZiAoRElTUExBWV9WRVIo
ZGlzcGxheSkgPCAyMCkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQlmb3JfZWFjaF9uZXdfaW50ZWxf
Y3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gLQkJaWYg
KCFuZXdfY3J0Y19zdGF0ZS0+dnJyLmVuYWJsZSB8fA0KPiAtCQkgICAgKG5ld19jcnRjX3N0YXRl
LT52cnIudm1pbiA9PSBuZXdfY3J0Y19zdGF0ZS0+dnJyLnZtYXggJiYNCj4gLQkJICAgICBuZXdf
Y3J0Y19zdGF0ZS0+dnJyLnZtaW4gPT0gbmV3X2NydGNfc3RhdGUtPnZyci5mbGlwbGluZSkpDQo+
IC0JCQlmaXhlZF9yZWZyZXNoX3JhdGUgPSB0cnVlOw0KPiArCW11dGV4X2xvY2soJmRpc3BsYXkt
PndtLndtX211dGV4KTsNCj4gDQo+IC0JCW1heF9saW5ldGltZSA9IG1heChuZXdfY3J0Y19zdGF0
ZS0+bGluZXRpbWUsIG1heF9saW5ldGltZSk7DQo+IC0JfQ0KPiArCWxhdGVuY3kgPSBza2xfd2F0
ZXJtYXJrX21heF9sYXRlbmN5KGRpc3BsYXksIDEpOw0KPiANCj4gLQlpZiAoZml4ZWRfcmVmcmVz
aF9yYXRlKSB7DQo+IC0JCWxhdGVuY3kgPSBza2xfd2F0ZXJtYXJrX21heF9sYXRlbmN5KGRpc3Bs
YXksIDEpOw0KPiArCS8qDQo+ICsJICogV2FfMjIwMjA0MzI2MDQNCj4gKwkgKiAiUEtHX0NfTEFU
RU5DWSBBZGRlZCBXYWtlIFRpbWUgZmllbGQgaXMgbm90IHdvcmtpbmciDQo+ICsJICovDQo+ICsJ
aWYgKGxhdGVuY3kgJiYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDIwIHx8IERJU1BMQVlfVkVS
KGRpc3BsYXkpDQo+ID09IDMwKSkgew0KPiArCQlsYXRlbmN5ICs9IGFkZGVkX3dha2VfdGltZTsN
Cj4gKwkJYWRkZWRfd2FrZV90aW1lID0gMDsNCg0KV2UgaGF2ZW4ndCBhc3NpZ25lZCBhbnkgdmFs
dWUgdG8gYWRkZWRfd2FrZV90aW1lLCBkbyB3ZSByZWFsbHkgbmVlZCB0aGlzIHJlc2V0ID8NCg0K
T3ZlcmFsbCBjaGFuZ2VzIGxvb2sgZ29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmth
ciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+ICsJfQ0KPiANCj4gLQkJLyogV2FfMjIwMjA0
MzI2MDQgKi8NCj4gLQkJaWYgKChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAyMCB8fCBESVNQTEFZ
X1ZFUihkaXNwbGF5KSA9PQ0KPiAzMCkgJiYgIWxhdGVuY3kpIHsNCj4gLQkJCWxhdGVuY3kgKz0g
YWRkZWRfd2FrZV90aW1lOw0KPiAtCQkJYWRkZWRfd2FrZV90aW1lID0gMDsNCj4gLQkJfQ0KPiAr
CW1heF9saW5ldGltZSA9IHBrZ2NfbWF4X2xpbmV0aW1lKHN0YXRlKTsNCj4gDQo+IC0JCS8qIFdh
XzIyMDIwMjk5NjAxICovDQo+IC0JCWlmICgobGF0ZW5jeSAmJiBtYXhfbGluZXRpbWUpICYmDQo+
IC0JCSAgICAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjAgfHwgRElTUExBWV9WRVIoZGlzcGxh
eSkgPT0NCj4gMzApKSB7DQo+IC0JCQlsYXRlbmN5ID0gbWF4X2xpbmV0aW1lICogRElWX1JPVU5E
X1VQKGxhdGVuY3ksDQo+IG1heF9saW5ldGltZSk7DQo+IC0JCX0gZWxzZSBpZiAoIWxhdGVuY3kp
IHsNCj4gLQkJCWxhdGVuY3kgPSBMTkxfUEtHX0NfTEFURU5DWV9NQVNLOw0KPiAtCQl9DQo+ICsJ
aWYgKG1heF9saW5ldGltZSA9PSAwIHx8IGxhdGVuY3kgPT0gMCkgew0KPiArCQlsYXRlbmN5ID0g
UkVHX0ZJRUxEX0dFVChMTkxfUEtHX0NfTEFURU5DWV9NQVNLLA0KPiArCQkJCQlMTkxfUEtHX0Nf
TEFURU5DWV9NQVNLKTsNCj4gKwkJYWRkZWRfd2FrZV90aW1lID0gMDsNCj4gKwl9IGVsc2Ugew0K
PiArCQkvKg0KPiArCQkgKiBXYV8yMjAyMDI5OTYwMQ0KPiArCQkgKiAiSW5jcmVhc2UgdGhlIGxh
dGVuY3kgcHJvZ3JhbW1lZCBpbiBQS0dfQ19MQVRFTkNZIFBrZyBDDQo+IExhdGVuY3kgdG8gYmUg
YQ0KPiArCQkgKiAgbXVsdGlwbGUgb2YgdGhlIHBpcGVsaW5lIHRpbWUgZnJvbSBXTV9MSU5FVElN
RSINCj4gKwkJICovDQo+ICsJCWxhdGVuY3kgPSByb3VuZHVwKGxhdGVuY3ksIG1heF9saW5ldGlt
ZSk7DQo+ICAJfQ0KPiANCj4gLQljbGVhciA9IExOTF9BRERFRF9XQUtFX1RJTUVfTUFTSyB8DQo+
IExOTF9QS0dfQ19MQVRFTkNZX01BU0s7DQo+IC0JdmFsID0gUkVHX0ZJRUxEX1BSRVAoTE5MX1BL
R19DX0xBVEVOQ1lfTUFTSywgbGF0ZW5jeSkgfA0KPiAtCQlSRUdfRklFTERfUFJFUChMTkxfQURE
RURfV0FLRV9USU1FX01BU0ssDQo+IGFkZGVkX3dha2VfdGltZSk7DQo+ICsJaW50ZWxfZGVfd3Jp
dGUoZGlzcGxheSwgTE5MX1BLR19DX0xBVEVOQ1ksDQo+ICsJCSAgICAgICBSRUdfRklFTERfUFJF
UChMTkxfQURERURfV0FLRV9USU1FX01BU0ssDQo+IGFkZGVkX3dha2VfdGltZSkgfA0KPiArCQkg
ICAgICAgUkVHX0ZJRUxEX1BSRVAoTE5MX1BLR19DX0xBVEVOQ1lfTUFTSywNCj4gbGF0ZW5jeSkp
Ow0KPiANCj4gLQlpbnRlbF9kZV9ybXcoZGlzcGxheSwgTE5MX1BLR19DX0xBVEVOQ1ksIGNsZWFy
LCB2YWwpOw0KPiArCW11dGV4X3VubG9jaygmZGlzcGxheS0+d20ud21fbXV0ZXgpOw0KPiAgfQ0K
PiANCj4gIHN0YXRpYyBpbnQNCj4gLS0NCj4gMi40OS4wDQoNCg==
