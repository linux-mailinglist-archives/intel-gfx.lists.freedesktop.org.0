Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F0E92CD08
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 10:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E66A510E0EA;
	Wed, 10 Jul 2024 08:30:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BtrKLtNX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C87010E06C;
 Wed, 10 Jul 2024 08:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720600214; x=1752136214;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=H2CAV3YADTnk1uG/7D9nZcUNmHalFMf4rgsY+MROYw4=;
 b=BtrKLtNX1Sa0xVgX3DklAZ+oTdPv7tXuMmUFbiir2VdXi6uXfwNvkCdl
 7RPaYxA3uxCScOwzKJu87KKMuXHLyQjhVDW0SJPauZwGDC5WxzOMAuEaZ
 qOChHiSRcXVMRh140tP5uGvIIM31H5UfTfj/gkT7OWCFedJJkUC2TpLZx
 XUgJy5jAjS8vtJzQhaqOeXR03pvJg61hlt1CkAshkTHjyIrHI30NXyEtY
 9hrrRd/FKHJBxTiD5DKMBen129fA1yLA2LzMYNQuFyvmwL8iQ9up8rnr9
 YVvL1+PmbbwvLbnkmjImJx7/MHZMKd5K1sVLuSYqO/ucnyR61+jE5f94/ Q==;
X-CSE-ConnectionGUID: P8ilXaczQeGoMgi321wrtA==
X-CSE-MsgGUID: e2n0xFNpQBi+5X7J55eO6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17770176"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="17770176"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 01:30:14 -0700
X-CSE-ConnectionGUID: 8k9CUqt2Qy2pIQLRWs1/8A==
X-CSE-MsgGUID: cSH1IJmTQDawud8u7saISQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="52737264"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 01:30:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 01:30:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 01:30:13 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 01:30:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0/bRDw5gEqASAngX3MNF5fw5ZBe1VohafaEUIE4IKrs88tmSI2M0Z573qYAhD87znuwdOemiMFHWFwuggsyETDepZunbKZWzKd6xP+Tddw0oBoifjVRRIJhwGYhIbi4VG9ytOip/3+eIGYn3hFaRID+l1gOL9RqV1/JkEHDb0FvOC5QUmrKUWbL0kQbrzg/EOiOx5YkoT3UfG5dWjCwCMupbbnmoWVlRGYPw9sl5IxvV9mSt3YbVyCJ/eRmgWtFITRbn9+vdXchfyRc6gCEPksT3SdED15MqsWF59V+awHHLs3PoxqsJXcunnFQAnB55Lm2VXcEjGiLEyO8a7TrMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H2CAV3YADTnk1uG/7D9nZcUNmHalFMf4rgsY+MROYw4=;
 b=Zgkp6n1W+8pK8jUR68dT6SHSPa6Uh6MRazARA0YH20qErZ7TAoWYv5KfiDmIbNDLSr//x9lw7LX1n8Jh6fSSkbcEAmORE4jO7wWBNvyP9eaa0ocN5OqIytZHimi/d+uhedCSkOvwjxLWy/nIzudngAvYXUBVzya6epyiHMlupOfXDdby6XqFduEWRBGlQv91mlxR8SFaJQgEjj6C5uWjEJzvp4bXPB5cgDCIvzyuvn/zRQ8qDR6JIj87lyJgC7RfVOqpIlNL7BmTqGuJs+d+ZfshcSR9n6TNLPYGGw4kvQa3PHV7qvaW7IKU2QaFs0+EWr+M4VtEz40UNS4yy6g9Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA2PR11MB5052.namprd11.prod.outlook.com (2603:10b6:806:fa::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.35; Wed, 10 Jul 2024 08:30:06 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 08:30:06 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 13/20] drm/i915/fbc: Extract intel_fbc_cfb_cpp()
Thread-Topic: [PATCH 13/20] drm/i915/fbc: Extract intel_fbc_cfb_cpp()
Thread-Index: AQHazusmZkz+DZaUV06d1m5+/XOyI7HvqNCg
Date: Wed, 10 Jul 2024 08:30:06 +0000
Message-ID: <DM4PR11MB636065294A128399E8D54107F4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA2PR11MB5052:EE_
x-ms-office365-filtering-correlation-id: c46acf19-d092-49f9-7eea-08dca0ba80c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MnY0bmFJYUo1b0pVVlg0SFRDMUQ0dDhVMU1RQzBIVFVrWFZRR2lUeDVPdUdU?=
 =?utf-8?B?ejlQZjNSZjVQU3VoM20wdGZzbU1nbWhqTGg4VjVyREg1OTA5a1plSmN1WUg5?=
 =?utf-8?B?bHEzNXh2SGEzY2hQSE5pNXpQNW9NRE14c0RaNlptZ1RHNXc0T0UrU29MdWlz?=
 =?utf-8?B?V2hVWGI0N2ZqNGdMWFZqL2tadWFCV2t5dmg0RElnUmV1Z1pWZEpLcEEyNEl5?=
 =?utf-8?B?ZSs3S25jeG11VkZNcmp1ZkpPazBtbHFubDB5V0kxSUNKUUQ2R3ltTFB0VTUx?=
 =?utf-8?B?QmM3Rzk4UERFdDhla2NtTEYzN05UTzZPWWlUWkxzemIvdkh2OWRNYmRNUGFX?=
 =?utf-8?B?YWtMNzg1RFdzZWE4dTNZU0piUHF4dEo0SjBVZU80L0VBY0hqUElIREMrdnph?=
 =?utf-8?B?cTRrNm1FOTZPUmVVUWd1NXJsR1h1NGd6QjFVL2VrRjZtU243SGFHNFNRVnBE?=
 =?utf-8?B?WVBrUHZ5ZHkvSkFLZndPMDhQRGp0ZEVLVDBrbzAvWXE5aktpeXNtOXUzamVp?=
 =?utf-8?B?ZVpjU0JNbVpXSlQ2Q2JOMU1PWkxGNkM0UkovWkhGRzdwN0FGODJZRDZtTmdW?=
 =?utf-8?B?dTluS2N5bm5JQXdBRjFWN2NEa3htN1U1amhPMWwraGJFQlBSeFd1MFlkQWpX?=
 =?utf-8?B?SjB3REY4VllRSmJ4b05McUVETlp5NytXZnlrbE1IZ1dOZ3BpbUF0aFBtQ21X?=
 =?utf-8?B?RWM1RjBybS91VXZwV05YYTlBWitISkZGYjdmVXREYUFQYWNxeWMrZXc0YzR1?=
 =?utf-8?B?UVlYbElXS3ptZklRS3V2d2lyL3l2MHBnbEk3ekJTcjR4bFBIOVNKRlpOci94?=
 =?utf-8?B?S2c4bEFzMDNQTXA2anQyZ3FEYkU3T3g2L21VaXVMWjNLZjIzdTVDYTIwcDFh?=
 =?utf-8?B?VndNVk1WekgyMGJTTHMxTE9TNlpWcGx1RFhFS2R1UXZ0UmxaV25ibWQxeHdj?=
 =?utf-8?B?QkZvclEyUENVdS9NeWlKT0hlNEJXZ3pTTzViYkNJaHcvam5YMHc0MzhDQkpw?=
 =?utf-8?B?bVUwYWxCazBlWllsMVhzSSt2MkY1dSsrSjNSV0dtdXhwUkpSbWorQkRTM01W?=
 =?utf-8?B?b0dwUG1STjBoY0hUMEwzd3BBY1VwNE9LNzhzdGVXRDBwWFNpVmN1dld4L3NK?=
 =?utf-8?B?eHpiRzZrYkhPOFFva3lDdjI2VTlvQmVJQVlHVzVvMVBtU0hTLytQdmRPRDdT?=
 =?utf-8?B?N2dkd0FIVmJjMnh6REt2MG1EakZDUmt3N0RZZDl4SlJFSTRMZWNpL2E2Ulpy?=
 =?utf-8?B?M1pDNnp2OExEVEhmUytrMnhGQWFzSGJ0cVBlcUwzU1NQTjI2UkxVdkxIWUNq?=
 =?utf-8?B?K0xqTDJnN3BORmVkajUyR3FhVDdTVW9kU2k1eTZYMU40NmlnTWRUM3ZJSm9s?=
 =?utf-8?B?RkR2RzJyN0tYekxSOVdpcUFXMEJORGN6bTBBSHUzM3dPRWU0Z2ZuTzRDTW1K?=
 =?utf-8?B?MFNTbU52WWVHem5NTnk5VnBmTlR1WllPYlVjN3lXamxJUjdwTkZtVVRpdVdt?=
 =?utf-8?B?bkw0Q1BoQXhHRDhWUUJ3TjJkSXdFTTMvYWliRy80c0pVSW4yYWg2dnB5ZUdC?=
 =?utf-8?B?V3dFaFZ3SFJ6Q1IySkUxaVNiQUZIZHdQbUpPS2NsNC9tWklzaStiZFM1TklL?=
 =?utf-8?B?S2V6Z3p2WXUzN280SzRhM3hCMlo0cXdybHNsZVMxMW4rY1c3N1J5VjNZZVFQ?=
 =?utf-8?B?UEh2SWtkQS8wbmRnM0trZzJTSTUrTWpFSzBvZ2ZHLzVwblQ0YkxoQUJORUd4?=
 =?utf-8?B?SGVHOExTK0Zxc1BKbkw4MTBDU04wZkRyZTl4cWhKa0huVitidWppZ2tZcjVW?=
 =?utf-8?B?bUNxRHlSRmZuL2ZBY0lvMFkxdjVNTnBKTzZLR0lzemU2RXQzVndrejFKSkhM?=
 =?utf-8?B?T1dDNVkybGtlNlRRSWJzLzNBa1NYcGk3OFBneUtTczdzR1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MzcyNHUvWEdRNHJsYTFCNEhCcmVNZVlRcytJcUpYSElHMUhFR2hZNzluVW9Y?=
 =?utf-8?B?Y3VIakpVVWM0Z2xQbzJiN3lreDhDdGpZNCtNK1o3ajhtNXhqanA0Y2ZYeEpF?=
 =?utf-8?B?TlppUXFqVUd6cnA1cFkrdzJIVzVpbitPUWJWWE5JdTBXVFlDVmFpUGpKRHJI?=
 =?utf-8?B?T2ZybDBMRDVwakhEait5V1ZlVU1QYWlVYzBGSk1hSytHZjRGaTByRXcrK0li?=
 =?utf-8?B?dk51REVpcUw5dGsyZFI3eDloUFlqTWlFNkdyblgxZEZkcFFZUGVxSEtlYk53?=
 =?utf-8?B?MXlPVlhmTVRtUWMxYVBGK2lxMFhSOHhjVGNHWlZubzZpYlprRFNDa1BIK05R?=
 =?utf-8?B?ZUUwMG1kZlNqOUJFYTRRYW5qVUpwU3pvMWxpU0RZTDVrUkxvM1VWdHdtb2NI?=
 =?utf-8?B?Rzl2SmdFRkpDdU0zMWpraVFWNU0rMjhlWkRXeEpDRk93R3owb0dTemp2Y3lR?=
 =?utf-8?B?Zi9Yall4YmlVUHJNZkRoN1AzWmFlVUtYT2t0cTBtY0I2ZlJCY2JTT3BpY1pG?=
 =?utf-8?B?bkRtUHpPY0Jzd3lNcTZ0SlkvaEFKeG44bDJ2Y3NPeC9xWUdjbGRjTnNqR1pR?=
 =?utf-8?B?SnRnd2Q3L3lDOFowbmdiTDBYamkvVEY3QlNMVVpNeDEyTWZDSDdHODNOUDFN?=
 =?utf-8?B?YUhycWxNZXE1aVZIeWlMM214dHR4K3FGNWR3WGU5UW9tTEVKMWhWcTJ0dVkr?=
 =?utf-8?B?ZWlGQ1dvYy9HTFIveEd1VkswS1VicW1BVkJOK0psWTVzWVVXM1E2M1pPUXVZ?=
 =?utf-8?B?bmxlMUlGbklUbTZTSXNZUDhSRG4xVjUyQ1hyb2lMQ0RRYXE0YWRRT0VySEJr?=
 =?utf-8?B?QlFSdE9jTVZ0VW1OdC9lWnRiREFURFIraFBsUzJ5eTgzQ2d6eVBmdmM0ZUZl?=
 =?utf-8?B?bUJla0FhSkJlZEE2d2p4QXJjQnVDQU9XRmY3STRWaERJSDBFRmZnTHBaekhQ?=
 =?utf-8?B?NzM4RVlFVHlhMUVOWVgwWWROdTI3OVdzOGE4UFY2b09HVnplMDhHNC82cmZO?=
 =?utf-8?B?eFRtVmZnRFQ0d2NvMHYyZllIcnNyOTNSM1hjcnpoQU5zcFQ2QWVqaE82K0pw?=
 =?utf-8?B?b3V3R1ByV0UzbnowMVBhUUZMK1FLbjE0LzhCL2tJOHR0c1VGODF0WVdNM015?=
 =?utf-8?B?L0dnM0FqQUJscWR0WXp2b3FRbmdxUVczQnZJN1hJWklma0lxQ3VyVENTSVhk?=
 =?utf-8?B?TE9CdjQ3b0xCV3E2bWlRaU91TllIeStLSGQ0bDA3ZkV0dzBsMjhlN2Y4bXp3?=
 =?utf-8?B?WlZSUU9ndW9FbnpHZWI4TXIwZmRvSlVIYzFlMjdGNlNocThpZW5JTUpHOFBE?=
 =?utf-8?B?UTI1amlYTFNxSjVJbGZ6MXIycmxpVFBvQm9IVkd3SVlDUHJzWTdqL0lCTkxC?=
 =?utf-8?B?SFhyQ2hIYUNTdXlIMWRGLzIrdXFBR1BZci9yN2hxaFI1SWJwR3NTTENxUWti?=
 =?utf-8?B?c25zdkZ2TVJxb1VMNmlOdmxxVlBZbXNBVytyaWJPdGl2RlB4Q0c3dUlRcDFr?=
 =?utf-8?B?ODloa1dyNkorbUZnc1JCajAzM1hUVzBBWkpDQTBmSXByYXhnWGJueXFYVFNh?=
 =?utf-8?B?RVRaSmFtRkVZTkMrZ01RSktscW5QOW9odjJBdW16MEk4SW84ZWtnUTF2Ky82?=
 =?utf-8?B?cE4vMXpaaGtCekU2UWxMVnFnY0VlUnRHajFxRWVQZHNhZ2R1Slp0MERwVDZU?=
 =?utf-8?B?Zm40d2IwR0Fpd2RhOXpqZG9OQlpDOGNEQ3krRFNPdWlWZmwwTDh6L3Y4a0J3?=
 =?utf-8?B?K1dXWnNIQ1pFMTNzYUxjSCthN1BrWmVGeC8wRTFldWp1TllobWhNYTg2MVdF?=
 =?utf-8?B?dG9SOHlTREdDeHRDZnBBVXhvbVZPRVllb1hxN1Rma2V0bWVReWIrdmtkb0dp?=
 =?utf-8?B?aVlyQ245ZXJMWmgvY0YzUEZaRmJ6bFlUcXhDZSsweWZENFlaRlBMMm8xc2di?=
 =?utf-8?B?TW5zcDhySFpXais1MG91aXI0NzRGd0Exc3ovajUyd0kvRzhtdVRZanhOaEZy?=
 =?utf-8?B?MlJrem1XTm5GNGZPa3ZZUkd5d0lPaVNEUWx6YUQxdGdRalZrU0F6bWZEM00x?=
 =?utf-8?B?NU5YN0QySysxSkZhbEJPT1JtZlFvRW1uSnNvYklhdlc2TDRmc1R3TUxGTFQz?=
 =?utf-8?Q?sJMheqmUcbqmA/D23CGLSihWQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c46acf19-d092-49f9-7eea-08dca0ba80c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 08:30:06.3811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MEbETroNC/kpUURnjsyvJoCOY6Sz6Qfz7F39tk0pdkwgiFx3xJIWePrtyT6Q20lF1zCcLOWqWEQmyM1UsVz83Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5052
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAyNCA4OjIzIFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDEzLzIwXSBkcm0vaTkxNS9mYmM6IEV4dHJhY3QgaW50
ZWxfZmJjX2NmYl9jcHAoKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEV4dHJhY3QgYSBoZWxwZXIgdG8gZGV0ZXJtaW5l
IHRoZSBDRkIgYnl0ZXMgcGVyIHBpeGVsIHZhbHVlLg0KPiBDdXJyZW50bHkgdGhpcyBpcyBhbHdh
eXMgNCwgYnV0IHRoYXQgY291bGQgY2hhbmdlIGluIHRoZSBmdXR1cmUuDQoNCkxvb2tzIEdvb2Qg
dG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4N
Cg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMgfCAxOCArKysrKysrKysrKystLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiYy5jDQo+IGluZGV4IDI5M2UxYTNiOWE5ZC4uYTBlNTM5YmM4MGYxIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gQEAgLTE0
MCwyMCArMTQwLDI0IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfZmJjX3BsYW5lX3N0cmlk
ZShjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lDQo+ICAJcmV0dXJuIHN0
cmlkZTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2ZiY19jZmJfY3Bw
KHZvaWQpIHsNCj4gKwlyZXR1cm4gNDsgLyogRkJDIGFsd2F5cyA0IGJ5dGVzIHBlciBwaXhlbCAq
LyB9DQo+ICsNCj4gIC8qIHBsYW5lIHN0cmlkZSBiYXNlZCBjZmIgc3RyaWRlIGluIGJ5dGVzLCBh
c3N1bWluZyAxOjEgY29tcHJlc3Npb24gbGltaXQgKi8gIHN0YXRpYw0KPiB1bnNpZ25lZCBpbnQg
aW50ZWxfZmJjX3BsYW5lX2NmYl9zdHJpZGUoY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRl
DQo+ICpwbGFuZV9zdGF0ZSkgIHsNCj4gLQl1bnNpZ25lZCBpbnQgY3BwID0gNDsgLyogRkJDIGFs
d2F5cyA0IGJ5dGVzIHBlciBwaXhlbCAqLw0KPiArCXVuc2lnbmVkIGludCBjcHAgPSBpbnRlbF9m
YmNfY2ZiX2NwcCgpOw0KPiANCj4gIAlyZXR1cm4gaW50ZWxfZmJjX3BsYW5lX3N0cmlkZShwbGFu
ZV9zdGF0ZSkgKiBjcHA7ICB9DQo+IA0KPiAgLyogbWluaW11bSBhY2NlcHRhYmxlIGNmYiBzdHJp
ZGUgaW4gYnl0ZXMsIGFzc3VtaW5nIDE6MSBjb21wcmVzc2lvbiBsaW1pdCAqLw0KPiBzdGF0aWMg
dW5zaWduZWQgaW50IHNrbF9mYmNfbWluX2NmYl9zdHJpZGUoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXksDQo+IC0JCQkJCSAgIHVuc2lnbmVkIGludCB3aWR0aCkNCj4gKwkJCQkJICAgdW5z
aWduZWQgaW50IGNwcCwgdW5zaWduZWQgaW50IHdpZHRoKQ0KPiAgew0KPiAgCXVuc2lnbmVkIGlu
dCBsaW1pdCA9IDQ7IC8qIDE6NCBjb21wcmVzc2lvbiBsaW1pdCBpcyB0aGUgd29yc3QgY2FzZSAq
Lw0KPiAtCXVuc2lnbmVkIGludCBjcHAgPSA0OyAvKiBGQkMgYWx3YXlzIDQgYnl0ZXMgcGVyIHBp
eGVsICovDQo+ICAJdW5zaWduZWQgaW50IGhlaWdodCA9IDQ7IC8qIEZCQyBzZWdtZW50IGlzIDQg
bGluZXMgKi8NCj4gIAl1bnNpZ25lZCBpbnQgc3RyaWRlOw0KPiANCj4gQEAgLTE3OSw3ICsxODMs
OCBAQCBzdGF0aWMgdW5zaWduZWQgaW50IHNrbF9mYmNfbWluX2NmYl9zdHJpZGUoc3RydWN0DQo+
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IA0KPiAgLyogcHJvcGVybHkgYWxpZ25lZCBjZmIg
c3RyaWRlIGluIGJ5dGVzLCBhc3N1bWluZyAxOjEgY29tcHJlc3Npb24gbGltaXQgKi8gIHN0YXRp
Yw0KPiB1bnNpZ25lZCBpbnQgX2ludGVsX2ZiY19jZmJfc3RyaWRlKHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5LA0KPiAtCQkJCQkgIHVuc2lnbmVkIGludCB3aWR0aCwgdW5zaWduZWQgaW50
IHN0cmlkZSkNCj4gKwkJCQkJICB1bnNpZ25lZCBpbnQgY3BwLCB1bnNpZ25lZCBpbnQgd2lkdGgs
DQo+ICsJCQkJCSAgdW5zaWduZWQgaW50IHN0cmlkZSkNCj4gIHsNCj4gIAkvKg0KPiAgCSAqIEF0
IGxlYXN0IHNvbWUgb2YgdGhlIHBsYXRmb3JtcyByZXF1aXJlIGVhY2ggNCBsaW5lIHNlZ21lbnQg
dG8gQEAgLQ0KPiAxODcsNyArMTkyLDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBfaW50ZWxfZmJj
X2NmYl9zdHJpZGUoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksDQo+ICAJICogdGhh
dCByZWdhcmRsZXNzIG9mIHRoZSBjb21wcmVzc2lvbiBsaW1pdCB3ZSBjaG9vc2UgbGF0ZXIuDQo+
ICAJICovDQo+ICAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDkpDQo+IC0JCXJldHVybiBt
YXgoQUxJR04oc3RyaWRlLCA1MTIpLCBza2xfZmJjX21pbl9jZmJfc3RyaWRlKGRpc3BsYXksDQo+
IHdpZHRoKSk7DQo+ICsJCXJldHVybiBtYXgoQUxJR04oc3RyaWRlLCA1MTIpLCBza2xfZmJjX21p
bl9jZmJfc3RyaWRlKGRpc3BsYXksDQo+IGNwcCwNCj4gK3dpZHRoKSk7DQo+ICAJZWxzZQ0KPiAg
CQlyZXR1cm4gc3RyaWRlOw0KPiAgfQ0KPiBAQCAtMTk3LDggKzIwMiw5IEBAIHN0YXRpYyB1bnNp
Z25lZCBpbnQgaW50ZWxfZmJjX2NmYl9zdHJpZGUoY29uc3Qgc3RydWN0DQo+IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zDQo+ICAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19p
bnRlbF9kaXNwbGF5KHBsYW5lX3N0YXRlLT51YXBpLnBsYW5lLQ0KPiA+ZGV2KTsNCj4gIAl1bnNp
Z25lZCBpbnQgc3RyaWRlID0gaW50ZWxfZmJjX3BsYW5lX2NmYl9zdHJpZGUocGxhbmVfc3RhdGUp
Ow0KPiAgCXVuc2lnbmVkIGludCB3aWR0aCA9IGRybV9yZWN0X3dpZHRoKCZwbGFuZV9zdGF0ZS0+
dWFwaS5zcmMpID4+IDE2Ow0KPiArCXVuc2lnbmVkIGludCBjcHAgPSBpbnRlbF9mYmNfY2ZiX2Nw
cCgpOw0KPiANCj4gLQlyZXR1cm4gX2ludGVsX2ZiY19jZmJfc3RyaWRlKGRpc3BsYXksIHdpZHRo
LCBzdHJpZGUpOw0KPiArCXJldHVybiBfaW50ZWxfZmJjX2NmYl9zdHJpZGUoZGlzcGxheSwgY3Bw
LCB3aWR0aCwgc3RyaWRlKTsNCj4gIH0NCj4gDQo+ICAvKg0KPiAtLQ0KPiAyLjQ0LjINCg0K
