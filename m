Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFEE6A95D7C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 07:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC0410E170;
	Tue, 22 Apr 2025 05:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oIoAwol4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EADDF10E0D6;
 Tue, 22 Apr 2025 05:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745300603; x=1776836603;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=otMbLqFXwgpwgwhY2BvhPv9F0pmMq4cEBO2NXrWoXBQ=;
 b=oIoAwol4AxuURzyYdj4o6WhEUvdWyj6pOZXJVLQ/KHDjtwWiLuIZZB9S
 AbXjcTq7Gpq+9zsLYrDqe0HN2Lo2JXS2r1Ybx3Qe7SrKCIs9OaeHfTtIO
 /DjDTUV61n343/L+BlkRD5XGScs0kRZbgn907qrcufZ4mexpLjmWiNitn
 mDl+JK6cNy/Ctva2M/1J9l1OZ+Mfa0jpnGMp+rBl5YuJIGVdf77pqCl1l
 f4fLHxZR+fsiyrqgQ3r6SJmQLfqVR/akWfQlfwyHqG2FBbZxdU15DtOih
 wtKcA9bc71qbU8lKaEJZt2AWEqO7CtEkIUHkdai5JV+fl8xVWoMsadCmF w==;
X-CSE-ConnectionGUID: fKHWwxzNQDSM47fzS7Z5mg==
X-CSE-MsgGUID: qQN77E9IQ4aV150mzLxNmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="34459189"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="34459189"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 22:43:22 -0700
X-CSE-ConnectionGUID: UwHCTSunRVabqOJ9wp3xoQ==
X-CSE-MsgGUID: Y4/6Dl6rTtqPQblW7orO7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="136706354"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 22:43:22 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 21 Apr 2025 22:43:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 21 Apr 2025 22:43:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 21 Apr 2025 22:43:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GfnLwT7DasbefN9s/7bAH4xmnv3KlIWVnK6EwssalBqz8V8HGF6fJFmQ1DGZ9lFPvE7qE/UsVom8fCeq7gZaMAlyV85nruOSGdtqkN46c287EFKnFw/8Voo8o06bGSEpOmGuW3Fdd7Apl4OrRnOIj4HMFfYySG/mrmGvvUycxG1TrB97hBOug1bfyMaWQC6oeEqpKERC4eCtBg+ek16yg9T2Q8d2RGNj6S8oG2CuUPYsz9o2q1EwKURu7YxlVlwSkxWiWmAz6cNbx/iqi7xr9f3GoSC9dpQy3hB6XGouAIrcdNaSEDFoRjXmIkZyLsfBIQbPni/aJr1rl1rhAD0Gww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=otMbLqFXwgpwgwhY2BvhPv9F0pmMq4cEBO2NXrWoXBQ=;
 b=K08isH7IORC8MtLT5ot/l7HhXMfUer7Rnb1PfwOZj/URpobeBIIzraJXU9ii22699VhUXCNCviBfUwBv+U94WmQYrhTliGzKB0Ocroj5Df72kVdPmjYaKN0Sj7yQ3ciTlNr2H9Wi5k+wpAEpAn+nUCud27RvhgWio9mnabI0SkTIt07wZbjQV1B2eQBa+tdPF2IQ7dQVxsfnowjZmGyCVVLKDjwsmbt5rLBguQsUA4xhTRGDqBIO8S21D1uEocjXIrfHpeSLAkSkT0YKHdztUVB9S8ELYA1FklgjKlup9mYbRgN2eaHHLh6IKSemAkjCgZ0dsj9xH2r8ETnQOcgCJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS0PR11MB7287.namprd11.prod.outlook.com (2603:10b6:8:13f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.22; Tue, 22 Apr
 2025 05:43:18 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 05:43:17 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Thread-Topic: [PATCH] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Thread-Index: AQHbr8X8SY5Z1DUMf0Cb+1KoOgHrhLOr2ykQgANIJACAAAJa4IAADFQAgAABPtA=
Date: Tue, 22 Apr 2025 05:43:17 +0000
Message-ID: <IA0PR11MB73070F225E3C60F48E192AB9BABB2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250417182356.169593-1-jouni.hogander@intel.com>
 <IA0PR11MB7307ECC591508B0B1B8AB50BBAB92@IA0PR11MB7307.namprd11.prod.outlook.com>
 <c33fae44e17f35638cc5129d19d8e8124d1ec1dd.camel@intel.com>
 <IA0PR11MB730782CA0A0EC63ADBECD1ADBABB2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <7bf5d07aa39770d9136da6e6f603622bfbc2ece1.camel@intel.com>
In-Reply-To: <7bf5d07aa39770d9136da6e6f603622bfbc2ece1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS0PR11MB7287:EE_
x-ms-office365-filtering-correlation-id: 4407e85f-98d9-480e-def2-08dd8160954a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?dkNDakh5V0lrSVNSMU40aWtMUHNNV3puY20vOGp4WCswYmUwdngzYWRpcENp?=
 =?utf-8?B?OEFBVjFBRUJ3TDdsQkhDTVFUcjVkQnNHcHpOU3dRT0t0K1RZV3FyejdJbVNC?=
 =?utf-8?B?M00wRmNpbS95bVRxZGxuUHJxK0hxOW5UWENLQmoxbjhPaXdVZXZFRi9GWE1n?=
 =?utf-8?B?Y1hzTUdVRndBVUpIYXNkTzVDbUtjaWlJSms2NlZvd1lyWklDaDJubFZwTllq?=
 =?utf-8?B?aE1LNmxMWWNuYk5MRDEzc211azRoVk5XbTE5dERGSW9nVmM2Nm1XWUE0WGNE?=
 =?utf-8?B?MDdjaEczTXlOT2p5NEJlR1dnL1NodGNEdGFza1c0aVNQUkxXMjE3eGJHSXVJ?=
 =?utf-8?B?eDVpVDJvMFA2MTd6ajVTQWgvbk55S0FwM1FmRWJRS0ovaHVyRE9JRmcxdjJE?=
 =?utf-8?B?U3NCSXFTN1FNSXg3ZzZtZVdxM2lBNTNidEx2QjlKUEZUMmg5V0NuVHNydkZE?=
 =?utf-8?B?UmVvTVJ1WStjNEpyNnQzMlVkbURyZDFZMFJvR1kxQVVhVzcwbUYwbkdFblNN?=
 =?utf-8?B?VFo2blRLNjc5bkFMZjJvUzRPcGl0Z2lGdjVEZU1aenlRaTZweEJmbDdteWhO?=
 =?utf-8?B?UzdzLzUvQkFBUXh3b05xbHpUZTlZV3ZXeVIrZ2h1QjBFY25DT3RnU09iYm45?=
 =?utf-8?B?REhjMjluU1RNemVEVTU0TzlVT3VQVFVXNFNKM053SWpVekJsaXRvTFBIdTJ4?=
 =?utf-8?B?cDIySUYxVkp1dWpCWExwT1FsbGtpdkpmUGUzN3E3R3pOUkZXT0tMZm5sN2VQ?=
 =?utf-8?B?WCs5K05qS3FaRWNEODA3SGhhSXN1MHdpeCtVVzRIOVlVTGxtOG9pTWlsRktt?=
 =?utf-8?B?Yys3a2MrTTgzaDYrL0hyaVpMVUluR0pTWmFuNjB2anpOWVFLenBHZ2hjb0NQ?=
 =?utf-8?B?QWloY3lNSkRmSVN2UjlCQ2o1LzJzcUFBQjVSSVhKWm5zUnZRNEdJaFhidlhL?=
 =?utf-8?B?M3NHYjd3T0wwem4vckxpSjdkc0RiMUtIR25xNStJeVZSbzhBTVlzQUNFaW8v?=
 =?utf-8?B?bU1MVUEzVFh2Y29LTEE5NkZCaDJLRFBYMkR6QmowV1A1b3QveHFiVFpzVjZm?=
 =?utf-8?B?bWlEK2Npb0ExRkIyN1RMb0dPS0QyUC93OVEzaTlxaEU4S0srWUFIbHcyUm90?=
 =?utf-8?B?ZEk0Uk5pRlNpNEZSMjh3WEdLK3pYWUtyUlcrTWcza3I5UmR3dkYxVzgyWnNw?=
 =?utf-8?B?dnROZFkwdTU0ZWV6anpFSFRXSE9SNWdDTSt6alRod1VvSEcydFJKeUlRVFNw?=
 =?utf-8?B?bEZZT3hZN0JEeWJoWDNqTXFOMzJxVk0vYkZ1Ym1zc2NzRjlMcUVsbm9Cbm9k?=
 =?utf-8?B?TVZuWk45bktmOEZ4SzBDUWp5c25FQzYyT3g5cGp4OEVaWE4yUFNCbzJCUDNy?=
 =?utf-8?B?UjlvSmUwOFRTQXkzTWtrWmNUSjhHTU8vSm4reVVQR2xLYi9CRUt4ZU53T2ZZ?=
 =?utf-8?B?RTVoUDMvVW9YK003N0FTZWFkSldTQ3o1a2JCdzZLTkZ0MzVTUlczZ0x6L1l5?=
 =?utf-8?B?cGZIWGcwUTA1NVpmMWNGOG9uZXhuelE0cDhpbVdieTFyaElqNmNiWTBIeVZO?=
 =?utf-8?B?aTF5UjlTUmJjUVBCbFVIcVhpNDlBRmVuVDBUQTI1aWlOSmVXOEFJQzdxOXFh?=
 =?utf-8?B?MWxDc3JCVHNXUkF0Z011TmJLbmZCWTAwVHd3NUlKd1diT0VUekR0VlNscytU?=
 =?utf-8?B?cCtzUjFBRFhVSkJrZVdiM29DaWRyYUZRaE1KT1FRSkNPWjNvRVRFOWhTbFBJ?=
 =?utf-8?B?V1g4ekVqdTVwOU5FQmpMWGdTM1hkbUFRdmhBRHZHWmtDYUh6ejJLczdvSGtU?=
 =?utf-8?B?T0w4Q2NJQTZnOXZaM0syZ0VYMjhMUzdPdTRiYmUzd3J3VjNQNWptL0h0a2w3?=
 =?utf-8?B?OXZkWkdYTWk1aTFQRU9GS3VXUllKVzZGcUVjMUx5QjNNdnBGdXc1d2kwV0Jo?=
 =?utf-8?B?YkEwTTYvTWtwM1lZZlFPNTM1YUFUaW9KUjRRbEpCZWVRb3JYQnl3a0dzYWRN?=
 =?utf-8?Q?k2zr33a4T+YrMqLUBK3i2/xWTaAA+g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDZzMmlDbXZvRU5nWDFFY2tpdEtTaktBdFVZaldWa3oxYlNReENhNXFDWWpK?=
 =?utf-8?B?NnJ1R3F6eVBsbG5qRUNLTWxwemhVWkgvM0lGRWpDU3pYYlorcWVqQVlLOTg3?=
 =?utf-8?B?c1p4K21LOXptb3paelhIV3c4VHBNS3I3SnRmVUxFUitZdDVwOHl4SytzbTJL?=
 =?utf-8?B?dTc0V0wxUGluNU5vMXc0QitwNVU3TWkxS1I0c2dyNGtSQVQ2SFhVVmxkOHBJ?=
 =?utf-8?B?Y0RxU0NuMENzZWxveVpCa3NRb3gyZjJmSXN3ZFkxZVNxaGJ4eVJSTjFZRktV?=
 =?utf-8?B?RU5Xd2ZxNGppODlhQXZtTXByaFcxUHBNSEtwc3NFbDNJNDBFNFpzdWFGdkpJ?=
 =?utf-8?B?MW5JUTdKNGt0a1ZzQ3NpLzhXWDRjWEJ4UHl1d3pvUi9uUGxITmZna3FSOGhS?=
 =?utf-8?B?WUFZQnlhOGp0aEQrcWxKMXJiUUZKUTRzcHcwOVJ0dXc2dldodXNrc2RtNmpY?=
 =?utf-8?B?OWw1NEZRM1JZRzJFNHNoanNhQ3huMElpc3I4bDIwc1J1VHZ1dEl2SFZQTEls?=
 =?utf-8?B?bTQzRHZ2bGNlWXJPUXFSYy9IVjVDTEs2T2lzMW52TkI4RmY2SVJZektFMGpk?=
 =?utf-8?B?NzhLZ09oTUJjd0hJdTJsZzg5LzZ1RUdmbURaY2ZTRVpscFRINWM5STY3RTJJ?=
 =?utf-8?B?ZEQ5VnFTQlI5bVlMTDZpcm91M2xWVmZpNXJndmFIMnBsY1pMWlhQKy9KL3Vp?=
 =?utf-8?B?RytrMUNEVXNDMURvZEZkbU9vVlpPVVBBb29KVlNQNWhlaUNPd0dqeEtOM0Za?=
 =?utf-8?B?MjdZSTRvM1dkaEEwRFFyZkpma0h3MktNNGdzeXNDZlNxT1hVNHQwRlV5ZHEy?=
 =?utf-8?B?enNydXRJZ0ZGeW02R2cxcEJxNXBPRHFleXU1WGJLZkYxc0NNNHBVZnVjYk5U?=
 =?utf-8?B?Y2I2K3R4ejNZYWdZWm1yU1E2M09YKzZ3eWVNQ2lGeWltMGN4WURVYmZyOEha?=
 =?utf-8?B?Y3JnbGJONWdxTGhxVm1CRzlFMnROQ3Z0dEVmNFBBVnZtUXNld0JLZmdRbXk1?=
 =?utf-8?B?QTFmeDdNUjViS0V1ZjZzYTNrYTQ0M05lbU4wN1d1YnE4Y3JUTTVBYnBwTXQ5?=
 =?utf-8?B?VWJvMVRldkRIWngwYzhCOUd5SFJtRGw0bEFwZGJvNzVmMnl1dkdnU3ltMjZa?=
 =?utf-8?B?UTJPb3lXcDBQamdITjVEczJCaUd6MHlLZ0k0cUpiYm9HTGo5NVRiRWpORTBs?=
 =?utf-8?B?V0d5cXArdktudHcwcW9Rd2VMYnZadFNkNWg3SFl3SUJCRVhWbVV4dk9tb1Nj?=
 =?utf-8?B?WTRCS0lOM1VPU05UdmlrQVB0dTlEY2hPL0tQbzRibUdjR0psOElaK0JaRURE?=
 =?utf-8?B?cTcxMXBkSHVGRnlLUzZMbE1tc21YSXNlbzFUM3V6RjVITjV1ZWVqU2x3YXUr?=
 =?utf-8?B?WVRlQXJWS0g5cTA0N21MdnNObWd4Y2MwblA1WmwwdFB3ajZVdFJGVWM1b2VO?=
 =?utf-8?B?b1V2S1QwSXFhUnN3RlVNMHYzb2VGMzE2SXBwMXhVOXZXZGsyMko2aE9ob3Bp?=
 =?utf-8?B?VjIzZHg4ejlCN1dmQWsyQzc0VWpXV0lPTXZVT3kwUmRGZlBVN2ZaeGRDZVho?=
 =?utf-8?B?RWxuL3hEVUF5QVNLUFIwT2NZZVBPajRjL0VSRnd5bHUxclpZVTZOcXJBQUhP?=
 =?utf-8?B?YWV1SnhLQS92Z0p5MjcvaHJZTG5HYmlUWUVCaDhndTU2ZVRZSGt4TUlCR29R?=
 =?utf-8?B?NmErVFhOdi9vWGJOQUljRzU3OWEvNHdhc3prb0pyc3RCdk1yTGk1QkZTdHF2?=
 =?utf-8?B?Qlg3OHZHSGR4OERPRGJmVjZheUFYWXc0Uk1uOVVhbWE4Q3JXRHY4Zm9WNVpi?=
 =?utf-8?B?eXd1SVJVWkhQNEh3YkhaVjBoVjFmckhnSEtvVitYT0d1M1ZZY0pNUlNRZDBu?=
 =?utf-8?B?a1NBWkRKbEMxenU4QU5heVpCYXF0cVowa0xtMWE3NUNiaDBqbE54bFY0bjFl?=
 =?utf-8?B?Njd5R3A5eUJ0WGwySmhlMnBBSXJ0UVhRQVRQZUVlUHZrYXpuRm56OXptTkxi?=
 =?utf-8?B?Q3J0SUREclVQQXhQZ0pHQWFyNzQ4NkY3bUxhQVdaYkZScnBReVhJb3F0VWR0?=
 =?utf-8?B?SW1IM1h4UUpnVGdWVFNFZlluOWNaQXEzOFF2M2ZGUTFKckFIbFJ1TTd2enM0?=
 =?utf-8?Q?tKMbia4N7J8GpQyDrE6ay/5FD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4407e85f-98d9-480e-def2-08dd8160954a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 05:43:17.7863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: POdv7SW27RHpwK3j8JQBD7445j+kzm80s2oM00IBul/z9GEQBnaFIgnzytPIbTJkKsz6Aidhhvs9dPoZcZHzXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7287
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgQXByaWwgMjIsIDIwMjUg
MTE6MDggQU0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBFbnN1
cmUgZW5vdWdoIGxpbmVzIGJldHdlZW4gZGVsYXllZA0KPiBWQmxhbmsgYW5kIFZCbGFuaw0KPiAN
Cj4gT24gVHVlLCAyMDI1LTA0LTIyIGF0IDA0OjU5ICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90
ZToNCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBIb2dhbmRl
ciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IFNlbnQ6IFR1ZXNkYXks
IEFwcmlsIDIyLCAyMDI1IDEwOjE2IEFNDQo+ID4gPiBUbzogTXVydGh5LCBBcnVuIFIgPGFydW4u
ci5tdXJ0aHlAaW50ZWwuY29tPjsNCj4gPiA+IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gU3ViamVjdDogUmU6IFtQ
QVRDSF0gZHJtL2k5MTUvZGlzcGxheTogRW5zdXJlIGVub3VnaCBsaW5lcyBiZXR3ZWVuDQo+ID4g
PiBkZWxheWVkIFZCbGFuayBhbmQgVkJsYW5rDQo+ID4gPg0KPiA+ID4gT24gU3VuLCAyMDI1LTA0
LTIwIGF0IDE1OjUwICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToNCj4gPiA+ID4gPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gPiA+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbg0KPiA+ID4gPiA+IEJlaGFsZiBP
ZiBKb3VuaSBIw7ZnYW5kZXINCj4gPiA+ID4gPiBTZW50OiBUaHVyc2RheSwgQXByaWwgMTcsIDIw
MjUgMTE6NTQgUE0NCj4gPiA+ID4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZzsNCj4gPiA+ID4gPiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gPiBD
YzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4g
U3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBFbnN1cmUgZW5vdWdoIGxpbmVzIGJl
dHdlZW4NCj4gPiA+ID4gPiBkZWxheWVkIFZCbGFuayBhbmQgVkJsYW5rDQo+ID4gPiA+ID4NCj4g
PiA+ID4gPiBUbyBkZXRlcm1pbmlzdGljYWxseSBjYXB0dXJlIHRoZSB0cmFuc2l0aW9uIG9mIHRo
ZSBzdGF0ZSBtYWNoaW5lDQo+ID4gPiA+ID4gZ29pbmcgZnJvbSBTUkRPRkZBQ0sgdG8gSURMRSwg
dGhlIGRlbGF5ZWQgVi4gQmxhbmsgc2hvdWxkIGJlIGF0DQo+ID4gPiA+ID4gbGVhc3Qgb25lIGxp
bmUgYWZ0ZXIgdGhlIG5vbi1kZWxheWVkIFYuIEJsYW5rLg0KPiA+ID4gPiA+DQo+ID4gPiA+ID4g
RW5zdXJlIHRoaXMgYnkgZm9sbG93aW5nIGluc3RydWN0aW9ucyBmcm9tIEJzcGVjLg0KPiA+ID4g
PiA+DQo+ID4gPiA+ID4gQnNwZWM6IDY5ODk3DQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+ID4gLS0tDQo+
ID4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDExICsrKysrKysrKystDQo+ID4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zyci5jwqDCoMKgwqAgfCAxOA0KPiA+ID4gPiA+ICsrKysrKysrKysrKysrKystLQ0K
PiA+ID4gPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQ0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gPiA+IGluZGV4IGRiNTI0ZDAxZTU3
NGQuLjk0MTU2ZWZhNWFhOTMgMTAwNjQ0DQo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gPiA+IEBAIC0yNzQ3LDkg
KzI3NDcsMTggQEAgc3RhdGljIHZvaWQNCj4gPiA+ID4gPiBpbnRlbF9zZXRfdHJhbnNjb2Rlcl90
aW1pbmdzX2xycihjb25zdA0KPiA+ID4gPiA+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
DQo+ID4gPiA+ID4gwqAJfQ0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gwqAJaWYgKERJU1BMQVlfVkVS
KGRpc3BsYXkpID49IDEzKSB7DQo+ID4gPiA+IENoYW5nZXMgbG9va3MgZ29vZC4gQnV0IHBlciBC
c3BlYyA2OTk4NSBsb29rcyBsaWtlIHRoaXMgY2hhbmdlIGlzDQo+ID4gPiA+IG5vdCBhcHBsaWNh
YmxlIGZvciBYZTMrDQo+ID4gPg0KPiA+ID4gSG93IGFib3V0IGlmIEkgY2hhbmdlIGl0IGxpa2Ug
dGhpczoNCj4gPiA+DQo+ID4gPiBpbnQgbWluX2xhdCA9wqAgaW50ZWxfdnJyX2Fsd2F5c191c2Vf
dnJyX3RnKGRpc3BsYXkpIHx8IGNydGNfc3RhdGUtDQo+ID4gPiA+IHZyci5lbmFibGUgPyAxIDog
MDsNCj4gPiA+DQo+ID4gVGhlIGZ1bmMgaW50ZWxfdnJyX2Fsd2F5c191c2VfdnJyX3RnIHJldHVy
biB0cnVlIGlmIGRpc3BsYXkgPj0zMCwgc28NCj4gPiBzaG91bGQgaXQgYmUgIWludGVsX3Zycl9h
bHdheXNfdXNlX3Zycl90ZygpDQo+IA0KPiBZZXMsIHRoYXQgaXMgd3JvbmcgaW4gbXkgcHJvcG9z
YWwuIERvIHlvdSBhZ3JlZSBnZW5lcmFsbHkgdGhlIGNoYW5nZT8NCj4gDQpZZXMgbG9va3MgZ29v
ZCENCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0t
LS0tLS0NCj4gQlIsDQo+IA0KPiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4NCj4gPiBUaGFua3Mg
YW5kIFJlZ2FyZHMsDQo+ID4gQXJ1biBSIE11cnRoeQ0KPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0t
DQo+ID4gPiBhbHNvIGd1YXJkYmFuZCBjb3VsZCBiZToNCj4gPiA+DQo+ID4gPiBpZiAoaW50ZWxf
dnJyX2Fsd2F5c191c2VfdnJyX3RnKGRpc3BsYXkpIHx8IGNydGNfc3RhdGUtPnZyci5lbmFibGUp
DQo+ID4gPiDCoMKgwqAgZ3VhcmRiYW5kID0gbWF4KGNydGNfc3RhdGUtPnZyci52bWluIC0gYWRq
dXN0ZWRfbW9kZS0NCj4gPiA+ID4gY3J0Y192Ymxhbmtfc3RhcnQsIGNydGNfc3RhdGUtPnZyci52
bWF4IC0gYWRqdXN0ZWRfbW9kZS0NCj4gPiA+ID4gPmNydGNfdmRpc3BsYXkNCj4gPiA+IC0gMSk7
DQo+ID4gPiBlbHNlDQo+ID4gPiDCoMKgwqAgZ3VhcmRiYW5kID0gY3J0Y19zdGF0ZS0+dnJyLnZt
aW4gLSBhZGp1c3RlZF9tb2RlLQ0KPiA+ID4gPiBjcnRjX3ZibGFua19zdGFydDsNCj4gPiA+DQo+
ID4gPiBXaGF0IGRvIHlvdSB0aGluaz8NCj4gPiA+DQo+ID4gPiBCUiwNCj4gPiA+DQo+ID4gPiBK
b3VuaSBIw7ZnYW5kZXINCj4gPiA+DQo+ID4gPiA+DQo+ID4gPiA+IFRoYW5rcyBhbmQgUmVnYXJk
cywNCj4gPiA+ID4gQXJ1biBSIE11cnRoeQ0KPiA+ID4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+
ID4gPiA+ID4gKwkJLyoNCj4gPiA+ID4gPiArCQkgKiBDb21tZW50IG9uIFNSRF9TVEFUVVMgcmVn
aXN0ZXIgaW4gQnNwZWM6DQo+ID4gPiA+ID4gKwkJICoNCj4gPiA+ID4gPiArCQkgKiBUbyBkZXRl
cm1pbmlzdGljYWxseSBjYXB0dXJlIHRoZSB0cmFuc2l0aW9uDQo+ID4gPiA+ID4gb2YNCj4gPiA+
ID4gPiB0aGUgc3RhdGUNCj4gPiA+ID4gPiArCQkgKiBtYWNoaW5lIGdvaW5nIGZyb20gU1JET0ZG
QUNLIHRvIElETEUsIHRoZQ0KPiA+ID4gPiA+IGRlbGF5ZWQgVi4gQmxhbmsNCj4gPiA+ID4gPiAr
CQkgKiBzaG91bGQgYmUgYXQgbGVhc3Qgb25lIGxpbmUgYWZ0ZXIgdGhlIG5vbi0NCj4gPiA+ID4g
PiBkZWxheWVkIFYuIEJsYW5rLg0KPiA+ID4gPiA+ICsJCSAqDQo+ID4gPiA+ID4gKwkJICogTGVn
YWN5IFRHOiBUUkFOU19TRVRfQ09OVEVYVF9MQVRFTkNZID4gMA0KPiA+ID4gPiA+ICsJCSAqLw0K
PiA+ID4gPiA+IMKgCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LA0KPiA+ID4gPiA+DQo+ID4gPiA+
ID4gVFJBTlNfU0VUX0NPTlRFWFRfTEFURU5DWShkaXNwbGF5LA0KPiA+ID4gPiA+IGNwdV90cmFu
c2NvZGVyKSwNCj4gPiA+ID4gPiAtCQkJwqDCoMKgwqDCoMKgIGNydGNfdmJsYW5rX3N0YXJ0IC0N
Cj4gPiA+ID4gPiBjcnRjX3ZkaXNwbGF5KTsNCj4gPiA+ID4gPiArCQkJwqDCoMKgwqDCoMKgIG1h
eChjcnRjX3ZibGFua19zdGFydCAtDQo+ID4gPiA+ID4gY3J0Y192ZGlzcGxheSwgMSkpOw0KPiA+
ID4gPiA+DQo+ID4gPiA+ID4gwqAJCS8qDQo+ID4gPiA+ID4gwqAJCSAqIFZCTEFOS19TVEFSVCBu
b3QgdXNlZCBieSBodywganVzdCBjbGVhciBpdCBkaWZmIC0tZ2l0DQo+ID4gPiA+ID4gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4gPiA+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4gPiA+ID4gaW5kZXggYzY1NjVi
YWY4MTVhMS4uM2EyN2RlZDQ1ZWUwNCAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+ID4gPiA+IEBAIC00MjIsOCArNDIy
LDIyIEBAIHZvaWQgaW50ZWxfdnJyX2NvbXB1dGVfY29uZmlnX2xhdGUoc3RydWN0DQo+ID4gPiA+
ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiA+ID4gPiDCoAkJcmV0dXJuOw0K
PiA+ID4gPiA+DQo+ID4gPiA+ID4gwqAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEzKSB7
DQo+ID4gPiA+ID4gLQkJY3J0Y19zdGF0ZS0+dnJyLmd1YXJkYmFuZCA9DQo+ID4gPiA+ID4gLQkJ
CWNydGNfc3RhdGUtPnZyci52bWluIC0gYWRqdXN0ZWRfbW9kZS0NCj4gPiA+ID4gPiA+IGNydGNf
dmJsYW5rX3N0YXJ0Ow0KPiA+ID4gPiA+ICsJCS8qDQo+ID4gPiA+ID4gKwkJICogQ29tbWVudCBv
biBTUkRfU1RBVFVTIHJlZ2lzdGVyIGluIEJzcGVjOg0KPiA+ID4gPiA+ICsJCSAqDQo+ID4gPiA+
ID4gKwkJICogVG8gZGV0ZXJtaW5pc3RpY2FsbHkgY2FwdHVyZSB0aGUgdHJhbnNpdGlvbg0KPiA+
ID4gPiA+IG9mDQo+ID4gPiA+ID4gdGhlIHN0YXRlDQo+ID4gPiA+ID4gKwkJICogbWFjaGluZSBn
b2luZyBmcm9tIFNSRE9GRkFDSyB0byBJRExFLCB0aGUNCj4gPiA+ID4gPiBkZWxheWVkIFYuIEJs
YW5rDQo+ID4gPiA+ID4gKwkJICogc2hvdWxkIGJlIGF0IGxlYXN0IG9uZSBsaW5lIGFmdGVyIHRo
ZSBub24tDQo+ID4gPiA+ID4gZGVsYXllZCBWLiBCbGFuay4NCj4gPiA+ID4gPiArCQkgKiBUaGlz
IGNhbiBiZSBkb25lIGJ5IGVuc3VyaW5nIHRoZSBWUlINCj4gPiA+ID4gPiBHdWFyZGJhbmQNCj4g
PiA+ID4gPiBwcm9ncmFtbWluZyBpcw0KPiA+ID4gPiA+ICsJCSAqIGxlc3MgdGhhbiB0aGUgbm9u
LWRlbGF5ZWQgVi4gQmxhbmsuDQo+ID4gPiA+ID4gKwkJICoNCj4gPiA+ID4gPiArCQkgKiBUUkFO
U19WUlJfQ1RMWyBWUlIgR3VhcmRiYW5kIF0gPA0KPiA+ID4gPiA+IChUUkFOU19WUlJfVk1BWFsN
Cj4gPiA+ID4gPiBWUlIgVm1heCBdDQo+ID4gPiA+ID4gKwkJICogLSBUUkFOU19WVE9UQUxbIFZl
cnRpY2FsIEFjdGl2ZSBdKQ0KPiA+ID4gPiA+ICsJCSAqLw0KPiA+ID4gPiA+ICsJCWNydGNfc3Rh
dGUtPnZyci5ndWFyZGJhbmQgPSBtaW4oY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPiA+IHZyci52bWlu
IC0NCj4gPiA+ID4gPiArCQkJCQkJYWRqdXN0ZWRfbW9kZS0NCj4gPiA+ID4gPiA+IGNydGNfdmJs
YW5rX3N0YXJ0LA0KPiA+ID4gPiA+ICsJCQkJCQljcnRjX3N0YXRlLQ0KPiA+ID4gPiA+ID4gdnJy
LnZtYXggLQ0KPiA+ID4gPiA+ICsJCQkJCQlhZGp1c3RlZF9tb2RlLQ0KPiA+ID4gPiA+ID4gY3J0
Y192ZGlzcGxheQ0KPiA+ID4gPiA+IC0gMSk7DQo+ID4gPiA+ID4gwqAJfSBlbHNlIHsNCj4gPiA+
ID4gPiDCoAkJLyogaGFyZHdhcmUgaW1wb3NlcyBvbmUgZXh0cmEgc2NhbmxpbmUgc29tZXdoZXJl
ICovDQo+ID4gPiA+ID4gwqAJCWNydGNfc3RhdGUtPnZyci5waXBlbGluZV9mdWxsID0NCj4gPiA+
ID4gPiAtLQ0KPiA+ID4gPiA+IDIuNDMuMA0KPiA+ID4gPg0KPiA+DQoNCg==
