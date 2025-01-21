Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9056FA17B06
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 11:08:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0217610E530;
	Tue, 21 Jan 2025 10:08:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OYq3haZN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8838F10E52B;
 Tue, 21 Jan 2025 10:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737454095; x=1768990095;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=FFRmEBga8uue7i9eCEDukrUvAjHd9T7jXNQIs9+/zks=;
 b=OYq3haZNJp0Ygi9C8A+x6bYKSh6rIM59D8uyrmB+ruY7LYmfCiaZZUI6
 /9s8rWYfFKowfexshCD2rTAYo2o4xeL9g10cZyst38h4M0z3EEjDdDDo5
 A1gayp/fdvKDrD40UcsLkvE8ghq7wmZJ3PFihJALY2nq6Rd0rO5G7zjBN
 16ctBbrq14NtnJCN/OEHrQfdzauCer/9dU/TWM7tx3Rs3szb2QAnVTrlo
 5j8pXWEw7/0IUWN3BSHUK/T+81mSEaW6K25ChPWvcYuYboZp7x63ggGSE
 b7zPB2sZ2f8aGA5cSVU/j6WS4BUMKgwWNzdUZmZd8bcJXwkmjxJ8usbx2 g==;
X-CSE-ConnectionGUID: PxsudXolQQuJqCgf1DDGkA==
X-CSE-MsgGUID: zq+3+irEQseKGPG0D3WUwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37773256"
X-IronPort-AV: E=Sophos;i="6.13,221,1732608000"; d="scan'208";a="37773256"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 02:08:11 -0800
X-CSE-ConnectionGUID: 8KfTTJJMSqar18+XetWSzw==
X-CSE-MsgGUID: rb+vGFUXQVSUaKvgAbyGNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="144023089"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 02:08:10 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 02:08:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 02:08:10 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 02:08:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p54qiDrjc62Wr78TOJjW5NWER+pAg+JwKxeJbxR99b85Z/KyDF3gVbAU7iZzsWdnDVwpgZVffbpgYdtLDQoMMPzQakJNyGo/QLuJ+w5Q+ElueBpahmEAllWnJZgrBefuIOAujY7ofV0Dx9Dh6SRmlfpAf25oOWSdlwEda0BwwChdVjVHB/qeK/khQK/9qiuMRr50LViFNUxqjRV0qAScEPAl6mZaHvYl3OCUtMI7T4S/Dz/d51CpC5sma8fF9fWP03UTUrbGQxf8QnQ+4axPYQ2n4RA/0KxUBaF8XNr5vbECr7fYhU0iyDfVp2ia+WCiEPr8O9txN0HZXS3OXDVqXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FFRmEBga8uue7i9eCEDukrUvAjHd9T7jXNQIs9+/zks=;
 b=Bi+6vd4hCvgjgIAe31QcAlVnZ/1jI+10VEntfx1fk2EcFmdD0YK4xzh0pgWQypzmdDfmCKZ/C0lYVJMIP7Vu44evMFSd4jbJBH4HLVbUMe7aN0vg8Rab1wISWt8HxCBnN3s3g+Cot2tN7yKfkuvoLY8XPlGqZh7wVC7T3bb9qrDhN54hAY0+bW4KnQlbsMVfEDeCZQu+dSjXIxib7OXox04ZoUrOPrjA8g4sEQ7fhrH7Pg93s7FCTnN31iAvbuebSHY6r9GcQC1B6I/XSMQRvS4/iU25WYs9vvMIN4RXchV4j4t5PeN+p2Pjkgq8w5M/wadC+7K6gJColTiSoaTctA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB6349.namprd11.prod.outlook.com (2603:10b6:8:ce::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8356.20; Tue, 21 Jan 2025 10:08:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 10:08:07 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/4] drm/i915/psr: Allow changing Panel Replay mode
 without full modeset
Thread-Topic: [PATCH 4/4] drm/i915/psr: Allow changing Panel Replay mode
 without full modeset
Thread-Index: AQHbYoJPJtjibRuruEqKVGuff0sSB7MUle4AgAx9yAA=
Date: Tue, 21 Jan 2025 10:08:07 +0000
Message-ID: <6db924674c5f0858a3c06ee2fbd49b16e68e52fd.camel@intel.com>
References: <20250109103532.2093356-1-jouni.hogander@intel.com>
 <20250109103532.2093356-5-jouni.hogander@intel.com>
 <MW4PR11MB7054D047097AFDEDCFCF9CFCEF1F2@MW4PR11MB7054.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB7054D047097AFDEDCFCF9CFCEF1F2@MW4PR11MB7054.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB6349:EE_
x-ms-office365-filtering-correlation-id: d9844844-3e33-415c-a0b5-08dd3a0380cd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?U0dIZFp3bGF3RXQ2RjlrWWwyNjNNY1pyOTVmL2R5ZStkQ2NnZXNHSDRHbVcv?=
 =?utf-8?B?TVFmQitWb0d4R2dvd3B1Wisxb09nZklyODRlQms2UkNtV3YzWndKOWVBOXM5?=
 =?utf-8?B?Vy8yZHN1L2xjNXVBV1YzV2xaNEt5K1FlSmFQYi94WmFlcEFFbGdISHJPSThW?=
 =?utf-8?B?SStzUEdWY3pPc0liZGdmWDFOTnVKQ3ZZZUsyeVM0K3U2RmpoekluQUIrRUs4?=
 =?utf-8?B?RFdpMHBRRFEzdkhKV1B0bEhUWVc1cDBjbjNRSXVwbDRYRGx4RVhuNTdaSEdQ?=
 =?utf-8?B?bjlwSzRBenE3aFFyWUZKK1d1WVVXa3BzNFkveFdZM1hWVFRZU2hNZU5RQ0cz?=
 =?utf-8?B?WVppVEtxSTJmL1MyaW4yeHluNnhCZ2d2Q0NRVUkxZlpJUlkvSEVNbU41WWox?=
 =?utf-8?B?L004UXJqN01LWVQxbHR3K2kvUm9ETkFQNmZVQ2lEaHE2TjFSeGdTSHo3Q0hC?=
 =?utf-8?B?WmUxV244T1FibXM0bUJWbXNQOXAzUE1rUko3ell6UzBobXMvUjNSNlQ3dGNK?=
 =?utf-8?B?Qm01NHVjejNVVGoxTFVrdDZxTi9RakFmR2dtQ2FhbDdDSjhpcmxZT0RLT0Va?=
 =?utf-8?B?Vm90eTdSeWp3ZElmSFRhTmp0UGpZWXllNXdOVCtmcDNuS0JteGYvZUJKWmJV?=
 =?utf-8?B?NVBNUEwxZDRoc2JTN0dGeE1hek1QTlg0VHBSNFE2a2J6M1VsZWEzdEk1R21F?=
 =?utf-8?B?N1B3djhkS0lBeHhUd09NTmI0NDBPT2dBTkVLRHM3ajk1WHBQeVJPbno1bnlz?=
 =?utf-8?B?VzMrYXpFNmNMc2dGMkJSUElGS1JtaEVWbWdUSWRwMklEQ3FDRk9aWGEyZVFD?=
 =?utf-8?B?VlVhZ29JZGU3T09tNzE1eEthK0oyNjJNRkRXcHdoWllua2VLNGpRai9iVHJP?=
 =?utf-8?B?Zy9Db09jWEFFaS9DUTJCSmNhOGVWcGJRTDhmd1lHc1lkVHhvUXg4YUtyYXNy?=
 =?utf-8?B?a3M5eG9mZThnR1c0VnIvV2IwbWFXNWJjbU1kNnhIMDBPajVCUlpCRGNhdHJJ?=
 =?utf-8?B?bGtNTTN4Zm91UGM4SmF4UTh0RlV4ZTlkditSRUp1RFk5SjY1bXNhVUNhT25I?=
 =?utf-8?B?YnRHZE83L0tubGE1OFlUS1J3Zm5oeFpDbGpqTExFandrcEw4MWV5WmtyWEN1?=
 =?utf-8?B?VnB5L0tDeEZPM3hsZXZNd0t0L0tKZGJtVXFXTkZ6V3JIcEJWN2ZsN2hHbURH?=
 =?utf-8?B?MEkrS1ozcVdGZXVDbnU4MU84c1drRk9vV0NMaFArM01sdFhlcjl0anA1ZTI2?=
 =?utf-8?B?SFhnTjhYY1Q2eUp5Y3NTcWlQanpNWjdyVFRlNTJOMDd1VFNOVmVGMFhGM1Yy?=
 =?utf-8?B?bVJoc0ZlOEpiL2V0YzBNN3BGN24zMFo3Q212ZzM1bS9QcFF0cFVNeXk2UXhD?=
 =?utf-8?B?anl5anRuV3lLU3FWR2hCWk5vMklFaTJlM1htMFdFNjErQk9Kd3A5K00rcEp2?=
 =?utf-8?B?QXp4cU4yTjB1Vkt3SjVBekk0TFU5TjJOTjZ3UHVIVXhidWRrVjZkaUVzR290?=
 =?utf-8?B?S3Z1VWRIMVVFY3ltL2Y1ZVZnVExwN0gxZWFjWDJleThIdHYvS29FRmI2WFd4?=
 =?utf-8?B?SXJoRzZMMHpRVXkvTjFtUTltOXlCOWl1dDUwTGlQVkJuTlNFOTNyMTZrdFNu?=
 =?utf-8?B?VEFZODhtQ0kzOG83QTg4N2t5a0ZXV3RXUDV4QTFoRHlRdVpGRGQ5M29ObGlk?=
 =?utf-8?B?SWo2cFZsOHFieStqZkp6T0pkODFCdzVBZU9VSnduaHZZM1dCcEwrLzcxVkRS?=
 =?utf-8?B?NnpDQkRCZW9qaDhiTjBERHdTdHFFdE9rYndBSE9mMHRjNEtzUVlGY25iTGFj?=
 =?utf-8?B?Nm9hd091ZGFtZVJybGUxNmxwb3NoRUZic1pMT0lwRlJ0d1VtU0hRYmpqbncr?=
 =?utf-8?B?S0lLVWJCZmhldVFJT1YzT09yeDZXRk5IL1dNaTdYcVNMM3lSRDVVOGEwaGx0?=
 =?utf-8?Q?Ef+omspyluOBypFb29fDIczunYj700he?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eTF6VkphU01rMGtFcUdta0JoUlhnSnMweTdMOUxyNzJFYUpLeEVXOTJiVVVJ?=
 =?utf-8?B?SGlGajMzTEt0L3JDeEplLzFSblRxQUM4RmZXOVA4TmxQMDRCa0haM3N6ZEh0?=
 =?utf-8?B?TjVFV2o3eGQyUFpjOFZqSy8rWVdKRnJ2cGJOZFM0d2RXQW9yeElCK1NzdjZr?=
 =?utf-8?B?dFBGYVIvK3lzcFVOT2RDTU1ySDQrNllTS2FHbzVRcDhBdjVDalZsRzFkOXBh?=
 =?utf-8?B?TW8zd3ZFSXkyTGwvR3ArSHR4SUI2WTVKSEE3T2hCWHBVZk80UnVQYzJuR1BW?=
 =?utf-8?B?VTV1Z0dBWU40UUNRQlVpRG9ZR3NCdk0zYm9va1NRbXIwelZWdUF4WjVNaHlJ?=
 =?utf-8?B?WGlsZ2hKQXFBTWIycGdVM1Y4WElxdkg3Y1h0WmhoMWo1UmdqNStmcUpBa3Vw?=
 =?utf-8?B?NlJWQ1JKSDN4UUJBYjYwRmNRV2xqbDdFbGUzbGpBU29ZNlFMZzhiVGNvZVhE?=
 =?utf-8?B?YWtMUHFrWXlHaDdvSFZOVlhhZ1pqbHFNY1lFajdCcU01Uy9PVCs2OWZTVVJJ?=
 =?utf-8?B?YmZ6WldZNHVTeUFqMlA3c3oyMk9wdFRteFlrenBjM1B6cmwrUFRzMDVNcE9r?=
 =?utf-8?B?elZGV2grM1d1OVYzUi9pekNSYUhjS3Jqbi9tYUxJbG44NkNCeWtmOXRLdEp3?=
 =?utf-8?B?M2VWRGRIbk5XdGlQMjkwU3BvM0tQVUlXall1b1F3TDM2UlQxemFhdUdaaGxn?=
 =?utf-8?B?eG1LNzJWaW52MVVycDh1eXA0WmtPUmxJa0VUdktYbUVtYzZXOVAxa0pZRlov?=
 =?utf-8?B?WHVUWjkzL3hWMm9QWGV5dUtjbGl4d1l6Tlc5d3phNWpodXBwUmtzNlNFSEdV?=
 =?utf-8?B?M3NLVTlaNVFXZVozYnc1ZllGUFB3c29DWVF0YUZ0dGtiYU9YclpYeUh0d0Zi?=
 =?utf-8?B?VlMwSHJMMGNpQ3B2V2pZWGNRWVpzV015T05Mb3JXSlVQa1ZsVHhzZ3YzSUNK?=
 =?utf-8?B?enRmQTY5UjVsZDBnVDRtZXBpRlRSYUcybVdXR0Q0NHQ5ODVjS094QlhZSzFY?=
 =?utf-8?B?S3pOUkxjc2V6dWE2MUt3QUMzTi9YZkxNbDB0dktvTXRic1ZFd3R4TWxMWWxz?=
 =?utf-8?B?TmsveWRHZWpTYzlpNStrNGFxSzFNQkpnMjA0L0xBd3orZDdqM0xjS3lLSk9p?=
 =?utf-8?B?OUZnNkNYK1hTbE9KbnNSYXlCb0d5RjlSdC90WXJZRXI4dDdrNkF5SDIrVDl4?=
 =?utf-8?B?L003bzdBZDA0NVRWYWovRUIrS0hWb0R3aUtqWTRrcFovNy81QlFHbWVNajJW?=
 =?utf-8?B?NlBCeVlNcHZEYndWdDlUODlvbnhobm1KUm85WlVKbU5BcHA0emtSd3BiY3BM?=
 =?utf-8?B?cEZ6ZkJZamxHNFYrRFFKOXpaT3BrRVVTNmJKZlhmODRsL1hvRkdPUFFXUVhD?=
 =?utf-8?B?bUpkdWwxajhVYWU5UW5DZ0xMQmlOR2dEUy9oSjlweUhRcVFOZHg4NGNLdXVv?=
 =?utf-8?B?VFdrdG5aZUR1dVFDajY2TmRpYkEvMlYrYXo0Nkw2ZVE0aWxLL3RmaC9sYm5V?=
 =?utf-8?B?ZG1BbmVvSWI1eFFjNVhRcU9Gb25VYTRnSVNqUzRKaGo0Um9rYk01ZnN6OXRI?=
 =?utf-8?B?K3l0cFA1VFhzdUNXcVJyc1ZGK3JOSWtuRzBwSEpvb0Iva1V1OW1PUUVDK2Mx?=
 =?utf-8?B?dk1uSkFwNmhMV3BnTkFSTzlDbzl0UTRHMmo2eTBwRFlEaEVVNDB4andWeGZk?=
 =?utf-8?B?UTEzU0NuUlN6ckMyUTJNVmlTdmc4ZGd4SVJUcHoxVW0rZkE2REJkdWovQ3dW?=
 =?utf-8?B?b0ZWbGt2SDhtWmd1U3g0Vm1ueHZXRDFFU09CQ2RXRWUvb2VWYSsrejVMUThC?=
 =?utf-8?B?OWVQWTJiVmZPcDZzSXdrY1EreEJlVGViM3Fkc2lJdVRiVXZuUUhHYUlqT0lQ?=
 =?utf-8?B?UU42cWYrZ1JoUnc5Yi9JaUt2RmhSVHc0SFdFZzNyV29oMTJmaXRGN2orSTc5?=
 =?utf-8?B?RTJwbHFjc0FGU0RIMW1aVXpTaDhYcWlXK0RKRjdTK3BhRzRzK2RRRUt0VmIv?=
 =?utf-8?B?K3RwbERZTGRXUEY5bDBmb1dxT2xRNjJKd1hPRjVWM1h6bGJqdVZkTXE5YmVV?=
 =?utf-8?B?M2xjb1J3RzFhMXhJZVRuTVJCT00rc2s4bi9GUU1yQVUxT0pDOFFLdzVaUDkv?=
 =?utf-8?B?d3lJQ0Jwb3VjenZoVmtNWUZoVDlIY2xUZXBqbUx3aEY3V0ZWUUtLWlJpWVd2?=
 =?utf-8?B?QVVIQkFnUnZkYVBCYW1hVWp0cHZ4V0dubHpxN2NFWFRzcVdFZG1BWEJXcm1j?=
 =?utf-8?B?eUtFSFNWY1NQQkhYdFZHNXczZ0h3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <029B190977A5AA40946A37FF796945C5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9844844-3e33-415c-a0b5-08dd3a0380cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2025 10:08:07.6509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I1OA4KuYs+uEn6dr+AQiS5J61EYUc3y5lOcpENvQ/vD1k9P2dv7eMvU1ncXGZKEoicimeQ50qAnDuMgPIXjszhtQ1P8ktH+rNHartcDHvF4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6349
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

T24gTW9uLCAyMDI1LTAxLTEzIGF0IDExOjIyICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwt
eGUtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0KPiA+IE9mIEpvdW5p
DQo+ID4gSMO2Z2FuZGVyDQo+ID4gU2VudDogVGh1cnNkYXksIDkgSmFudWFyeSAyMDI1IDEyLjM2
DQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0ggNC80XSBkcm0vaTkxNS9wc3I6IEFsbG93
IGNoYW5naW5nIFBhbmVsIFJlcGxheSBtb2RlDQo+ID4gd2l0aG91dA0KPiA+IGZ1bGwgbW9kZXNl
dA0KPiA+IA0KPiA+IEN1cnJlbnRseSB3ZSBhcmUgZm9yY2luZyBmdWxsIG1vZGVzZXQgaWYgUGFu
ZWwgUmVwbGF5IG1vZGUgaXMNCj4gPiBjaGFuZ2VkLiBUaGlzIGlzIG5vdA0KPiA+IG5lY2Vzc2Fy
eSBhcyBsb25nIGFzIHdlIGFyZSBub3QgY2hhbmdpbmcgc2luayBQQU5FTCBSRVBMQVkgRU5BQkxF
DQo+ID4gYml0IGluDQo+ID4gUEFORUwgUkVQTEFZIEVOQUJMRSBBTkQgQ09ORklHVVJBVElPTiAx
IHJlZ2lzdGVyLiBUaGlzIGNhbiBiZQ0KPiA+IGFjaGlldmVkIGJ5DQo+ID4gZW50ZXJpbmcgUGFu
ZWwgUmVwbGF5IGluYWN0aXZlIG1vZGUgKExpdmUgRnJhbWUgbW9kZSkgd2hlbiBQYW5lbA0KPiA+
IFJlcGxheSBpcw0KPiA+IGRpc2FibGVkIGFuZCBrZWVwIFBBTkVMIFJFUExBWSBFTkFCTEUgYml0
IGluIFBBTkVMIFJFUExBWSBFTkFCTEUNCj4gPiBBTkQNCj4gPiBDT05GSUdVUkFUSU9OIDEgZW5h
YmxlZCBhbHdheXMgaWYgcGFuZWwgaXMganVzdCBzdXBwb3J0aW5nIFBhbmVsDQo+ID4gUmVwbGF5
Lg0KPiA+IA0KPiANCj4gUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQoNClRoYW5rIHlvdSBNaWthIGZvciBjaGVja2luZyBteSBwYXRjaGVzLiBUaGVzZSBh
cmUgbm93IHB1c2hlZCB0byBkcm0tDQppbnRlbC1uZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2Fu
ZGVyDQoNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE0IC0tLS0tLS0tLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqAgfCAyNSArKysrKysrKysrKysrLS0t
DQo+ID4gLS0tLQ0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCAyMiBk
ZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggMjEzMTlmNzUzYTM0Li4zNTQ5OWViMjk2YjMg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiA+IEBAIC01NjM4LDIwICs1NjM4LDYgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFy
ZShjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywNCj4g
PiDCoAkJUElQRV9DT05GX0NIRUNLX0NTQyhvdXRwdXRfY3NjKTsNCj4gPiDCoAl9DQo+ID4gDQo+
ID4gLQkvKg0KPiA+IC0JICogUGFuZWwgcmVwbGF5IGhhcyB0byBiZSBlbmFibGVkIGJlZm9yZSBs
aW5rIHRyYWluaW5nLg0KPiA+IFBTUiBkb2Vzbid0IGhhdmUNCj4gPiAtCSAqIHRoaXMgcmVxdWly
ZW1lbnQgLT4gY2hlY2sgdGhlc2Ugb25seSBpZiB1c2luZyBwYW5lbA0KPiA+IHJlcGxheQ0KPiA+
IC0JICovDQo+ID4gLQlpZiAoY3VycmVudF9jb25maWctPmFjdGl2ZV9wbGFuZXMgJiYNCj4gPiAt
CcKgwqDCoCAoY3VycmVudF9jb25maWctPmhhc19wYW5lbF9yZXBsYXkgfHwNCj4gPiAtCcKgwqDC
oMKgIHBpcGVfY29uZmlnLT5oYXNfcGFuZWxfcmVwbGF5KSkgew0KPiA+IC0JCVBJUEVfQ09ORl9D
SEVDS19CT09MKGhhc19wc3IpOw0KPiA+IC0JCVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19zZWxf
dXBkYXRlKTsNCj4gPiAtCQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChlbmFibGVfcHNyMl9zZWxfZmV0
Y2gpOw0KPiA+IC0JCVBJUEVfQ09ORl9DSEVDS19CT09MKGVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9l
dCk7DQo+ID4gLQkJUElQRV9DT05GX0NIRUNLX0JPT0woaGFzX3BhbmVsX3JlcGxheSk7DQo+ID4g
LQl9DQo+ID4gLQ0KPiA+IMKgCVBJUEVfQ09ORl9DSEVDS19CT09MKGRvdWJsZV93aWRlKTsNCj4g
PiANCj4gPiDCoAlpZiAoZGV2X3ByaXYtPmRpc3BsYXkuZHBsbC5tZ3IpDQo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCBmOTY5YWJjNTYy
NTYuLjM0OTQ2MjBkMWM0NCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0xOTk4LDE4ICsxOTk4LDI1IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdA0KPiA+IGludGVsX2RwDQo+ID4gKmludGVsX2Rw
LA0KPiA+IMKgCWlmICghcHNyX2ludGVycnVwdF9lcnJvcl9jaGVjayhpbnRlbF9kcCkpDQo+ID4g
wqAJCXJldHVybjsNCj4gPiANCj4gPiAtCWlmIChpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9l
bmFibGVkKSB7DQo+ID4gKwlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxlZCkN
Cj4gPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiRW5hYmxpbmcgUGFuZWwNCj4gPiBS
ZXBsYXlcbiIpOw0KPiA+IC0JfSBlbHNlIHsNCj4gPiArCWVsc2UNCj4gPiDCoAkJZHJtX2RiZ19r
bXMoZGlzcGxheS0+ZHJtLCAiRW5hYmxpbmcgUFNSJXNcbiIsDQo+ID4gwqAJCQnCoMKgwqAgaW50
ZWxfZHAtPnBzci5zZWxfdXBkYXRlX2VuYWJsZWQgPyAiMiINCj4gPiA6ICIxIik7DQo+ID4gDQo+
ID4gLQkJLyoNCj4gPiAtCQkgKiBQYW5lbCByZXBsYXkgaGFzIHRvIGJlIGVuYWJsZWQgYmVmb3Jl
IGxpbmsNCj4gPiB0cmFpbmluZzogZG9pbmcgaXQNCj4gPiAtCQkgKiBvbmx5IGZvciBQU1IgaGVy
ZS4NCj4gPiAtCQkgKi8NCj4gPiAtCQlpbnRlbF9wc3JfZW5hYmxlX3NpbmsoaW50ZWxfZHAsIGNy
dGNfc3RhdGUpOw0KPiA+IC0JfQ0KPiA+ICsJLyoNCj4gPiArCSAqIEVuYWJsaW5nIGhlcmUgb25s
eSBmb3IgUFNSLiBQYW5lbCBSZXBsYXkgZW5hYmxlIGJpdCBpcw0KPiA+IGFscmVhZHkNCj4gPiAr
CSAqIHdyaXR0ZW4gYXQgdGhpcyBwb2ludC4gU2VlDQo+ID4gKwkgKiBpbnRlbF9wc3JfcGFuZWxf
cmVwbGF5X2VuYWJsZV9zaW5rLiBNb2RpZmllcnMvb3B0aW9uczoNCj4gPiArCSAqwqAgLSBTZWxl
Y3RpdmUgVXBkYXRlDQo+ID4gKwkgKsKgIC0gUmVnaW9uIEVhcmx5IFRyYW5zcG9ydA0KPiA+ICsJ
ICrCoCAtIFNlbGVjdGl2ZSBVcGRhdGUgUmVnaW9uIFNjYW5saW5lIENhcHR1cmUNCj4gPiArCSAq
wqAgLSBWU0NfU0RQX0NSQw0KPiA+ICsJICrCoCAtIEhQRCBvbiBkaWZmZXJlbnQgRXJyb3JzDQo+
ID4gKwkgKsKgIC0gQ1JDIHZlcmlmaWNhdGlvbg0KPiA+ICsJICogYXJlIHdyaXR0ZW4gZm9yIFBT
UiBhbmQgUGFuZWwgUmVwbGF5IGhlcmUuDQo+ID4gKwkgKi8NCj4gPiArCWludGVsX3Bzcl9lbmFi
bGVfc2luayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ID4gDQo+ID4gwqAJaWYgKGludGVsX2Rw
X2lzX2VkcChpbnRlbF9kcCkpDQo+ID4gwqAJCWludGVsX3NucHNfcGh5X3VwZGF0ZV9wc3JfcG93
ZXJfc3RhdGUoJmRpZ19wb3J0LQ0KPiA+ID5iYXNlLA0KPiA+IHRydWUpOyBAQCAtMjgxNSw2ICsy
ODIyLDggQEAgdm9pZCBpbnRlbF9wc3JfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgCQluZWVkc190b19kaXNhYmxlIHw9IG5ld19j
cnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZQ0KPiA+ICE9IHBzci0NCj4gPiA+IHNlbF91cGRhdGVf
ZW5hYmxlZDsNCj4gPiDCoAkJbmVlZHNfdG9fZGlzYWJsZSB8PSBuZXdfY3J0Y19zdGF0ZS0NCj4g
PiA+IGVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCAhPQ0KPiA+IMKgCQkJcHNyLT5zdV9yZWdpb25f
ZXRfZW5hYmxlZDsNCj4gPiArCQluZWVkc190b19kaXNhYmxlIHw9IG5ld19jcnRjX3N0YXRlLQ0K
PiA+ID5oYXNfcGFuZWxfcmVwbGF5ICE9DQo+ID4gKwkJCXBzci0+cGFuZWxfcmVwbGF5X2VuYWJs
ZWQ7DQo+ID4gwqAJCW5lZWRzX3RvX2Rpc2FibGUgfD0gRElTUExBWV9WRVIoaTkxNSkgPCAxMSAm
Jg0KPiA+IMKgCQkJbmV3X2NydGNfc3RhdGUtPndtX2xldmVsX2Rpc2FibGVkOw0KPiA+IA0KPiA+
IC0tDQo+ID4gMi4zNC4xDQo+IA0KDQo=
