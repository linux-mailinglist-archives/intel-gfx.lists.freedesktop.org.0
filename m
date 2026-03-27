Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKGzDaJUxmkkIwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 10:57:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6948B34213A
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2026 10:57:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC9610E345;
	Fri, 27 Mar 2026 09:57:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fyhBtqYE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BA110E345
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2026 09:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774605472; x=1806141472;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ljo1EYQzzx5e+OYTOoj+2tt6RMWonnVgh6XGgQdiZec=;
 b=fyhBtqYEMJRkj0IcCp215OKkX2YWdoIiE4YNrt6RAZkoA6d15ziCk2Pz
 q52h/L6mhxVn/041vlBOgeBpfcrJcEvC929bMhttiS9TSEdW3IXJ0zmj2
 Xdt/ci7GTgQJ+LW+FRUQvGhF+nufjTXhn5eMApMqrjEWQXhYG44NLiejM
 wJmdTBG95H1vxzYG5Qq7PeM7hWdmwS9+XBAhTxei/KZNEu8NwpSU/x1VR
 XWlXNAJNsewPbFbt+vPii7oAOMSbnRUscaptQlm1osqifXMVNYbhyK3bx
 vbz6YfoGyB3PqG/cpDqoVV12bI0MxTZwq98vAOZn9Kzk8l6pMP/HWXOLY Q==;
X-CSE-ConnectionGUID: QM4GNXEOSv2sv+BQoLCSow==
X-CSE-MsgGUID: Esow2/NuQzOkhJtAOzVG2Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="79277698"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="79277698"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 02:57:48 -0700
X-CSE-ConnectionGUID: 6zRCPtbWTSq3TIkA9nnsJw==
X-CSE-MsgGUID: XiqERLtQTnK2wxXQl5vJdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="220423973"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 02:57:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 02:57:47 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Mar 2026 02:57:47 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.18) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 02:57:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oE10dAWqO0CwMinvg9+eQbtFmt0FkkRQ83zb1D4tjC4vkCLJrwHYF11sbZZT3P5QwTh1yBiYEZIaI/rIoddJ2BjUtK9lZzvxW+mQC8MWcm4v5/gAjLzvzdK4C4DN4AuH8XrWQHBm0qMKINQ7NMiZ5bTn7Y1CpGL49fiMYofi+2glI1uejRe1u4ewzKZTbpKwdF9p7/vxxZpyezklaxx+doq8CI69bjyV6GxB0uP8HlSnnAhMRqjoXGv18V+8a9b6rag23ovl8ocWz5mKa0URgJTTsx2fBEBlUm1sqm6jqmmyAkSmOuxwfKaGSmZmC6SEZakwwwIvevFEB66RBt6mPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ljo1EYQzzx5e+OYTOoj+2tt6RMWonnVgh6XGgQdiZec=;
 b=ErNL5YI5oYCU1wEQ8Oud9wVhLCBkevt1hvDXCZ0j8UNqtQIR2DtE30xyzxX3SQNFw9BcxfvAAUpOm4uo5WCO8cR5101o9NuXDHznS4g/lqxOfi47KIa682PjBzr66855A2oZCvCYKwIZFrkgMXC9CN7VUo17jlxxg8S9Sdx+6gIcStIvKlyhEgjQ4lyt7k0RAofzsCXbFGlx/Q7dt1CbBKVHFEPw8dMF+peY2y4UL/qZS6pKP15DvJOt/G3ItUp1e/lEdPE/6mdy8LpvFFSsxZfm61ZC8Qp8MEth/+D/YqWgDbADoUx2hw9btwXIrdXJdb2YjTFIZQaa7wQEhVHICQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 (2603:10b6:518:1::d41) by CH3PR11MB8095.namprd11.prod.outlook.com
 (2603:10b6:610:154::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.7; Fri, 27 Mar
 2026 09:57:38 +0000
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::df01:30b2:d465:e136]) by PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::df01:30b2:d465:e136%6]) with mapi id 15.20.9745.007; Fri, 27 Mar 2026
 09:57:38 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "kenny@panix.com" <kenny@panix.com>,
 "lyude@redhat.com" <lyude@redhat.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: FYI, 9a64c65083b91 ("drm/i915: Add short HPD IRQ storm detection
 for non-MST systems") still happens on my AlderLake laptop
Thread-Topic: FYI, 9a64c65083b91 ("drm/i915: Add short HPD IRQ storm detection
 for non-MST systems") still happens on my AlderLake laptop
Thread-Index: AQHcvLxJl33nA3qonEmIJSAOz1nesrXAvFEAgAFp8hA=
Date: Fri, 27 Mar 2026 09:57:38 +0000
Message-ID: <PH3PPFAB4263235AAFB0FCDB15775C82BB9E057A@PH3PPFAB4263235.namprd11.prod.outlook.com>
References: <d651ced3-228a-4915-b2c7-a1d00fdf618e@panix.com>
 <4288710622de707f6b2760254e4f67c0b92e0766.camel@intel.com>
In-Reply-To: <4288710622de707f6b2760254e4f67c0b92e0766.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPFAB4263235:EE_|CH3PR11MB8095:EE_
x-ms-office365-filtering-correlation-id: b03f5170-0ce1-4db7-e37b-08de8be74733
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: 8RjYXvFUOq73nVb0TpR8GIAcmsD+UJLj/mVX7gPOY9xdLQq4eS9Ye+scmZiYd+6y0UBdcr/9KJvwhHCNxeqwc6RHTWtb/SmJ+hjfWRBe8IgCeeHCizEaZIsn2Ws35oGcdjUfy3HiMo8H31Q792qIHxAS3pbHeBqt/sBI8s9f4R5Az/88X5YUIUEylCj1gmEGI0jpb+exVZoSgD2yepPOIY+1EAkQBshvL/70IOieLP3v9M7RG7cplXq/ZRCEbeqeqNztPBKRWbzNATtsW6f13abk6dkaVfddoDwt+WpxCUqzMaIZA92pgGujvrObk1avQ6NQRDyAJ10bwFVbxHVvZGgE2F8HX11FeP3Q1Jf0y7Hj36atPtFzUS9fSjt8NbZpkxKrRS4NzJruJd8Ow2CzZcEXuk/CYiSynoWFd6N3kmMNfJlc6GhMqu7cDvbIBUQWbqRdikzLxvaszhcL760Xzz4JpB0gIYK02Rj/+Zgqx4Zf/TNbtq0HRzcE+CU0RsRPFXVcaNaMOgLKWAcVT4kaO64yrqEpB6XuaEXdZGztYpmzN40jLJpD6TuZIDCn46K7xpVvQwpcTNwK25dQuE244V1nPtMmGFonWRMfpjxAsNEYE7jhlP1vV1Pr2FlHpH9QgSgGAfRvhlhf+FODSIaqaGrR8tIouLniK3aljAnfOKxWx4z6cDBF/BZL8pWf2GxThxGnF6KvJeuZfXCL8t/FShbRNE2YlOqsaO7BtNkQmuet4QZd/S/cDdKe6Cfqf1uc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPFAB4263235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q0U2MExTQWNiM2htK0xtUlZtcDZGUTNaSW1sdVE4S09jSk9LVE9Nb3VlMmt6?=
 =?utf-8?B?NGV1b1ZHeSsyMWxFaldISFNPYk5aR0hmODlrOHJnb0FQRUR2aHVuTjJNTVAx?=
 =?utf-8?B?NENGZnppMTBTczFPSlFnbTN3Y014MnYrclU1aHhpS1lVY1I4blpPbjRqSEg4?=
 =?utf-8?B?U2w1ZTNBek1qVTcxNkxwVmpZd09vQXdhM1B1NkpPcG5VSU55MytzMWZSOXFr?=
 =?utf-8?B?ZGQyMXBBbnY1ZDZBbzhNZCtaTVpGRmtjRXVWUnRIcElsNGJjemx5dTBmV3VL?=
 =?utf-8?B?SlVqSVVGV2VEUWFTUXh2a2lJNDY3RndPem82MUhwYWpLRFNGZ3M0L3UvV0Ix?=
 =?utf-8?B?bHZRc3RML3FNOTduN3MxYzMyTFdqUzQ0ZjRsVmFUd0gvZGxneDlVQllIT2kz?=
 =?utf-8?B?QVEzT3lMbEVFYWRFTGFmaGVqT2xmZ3FDeUdFcVpwR0FUNmJIOEs2RkZ1cmhz?=
 =?utf-8?B?azZ2Zzk2UitHMlpWTFNTZlZ3RDVXcEdMMWtCVFZZYWcwQkVUL3FNSGtqRCtP?=
 =?utf-8?B?aXNCNkJCNm1kU3RCK2JBbGlWSks3NzlYQno1SjlCT0ppb2tZSWpiVmtSVmsv?=
 =?utf-8?B?ODQ2eHI2cWpWMVkyZjhoMEZvN1J1ak8va25ONFl5S25oeUZGVVVRTi9NRmY0?=
 =?utf-8?B?U2xxR1ZLWmM2YTBrZHNoN0JsYURtQ09VMUN0aUhpa0ljdCs5TVdhVnRQbnlN?=
 =?utf-8?B?VUlhNGVrLzkzR0ExVjJJU25qTVFLZUx4ZFZSNjJtWVF1YnJrU1JvQTRielhZ?=
 =?utf-8?B?L2Y4T3NSZVp5dTJzTmJDT2JWNmwzaDBtNTA5M2x1bHZvU0RZYjIzM1hlUEsw?=
 =?utf-8?B?WXhWb1NKK3NrbjRNYWNhc2VPSnNrUzlIVStUbEFwd3VnTDFaNStwUDhpNDRu?=
 =?utf-8?B?cTNOQTF3MmJGNk5iMDZqcmtqMExmVndJd2RnMms4MHQ5QjN1QnVqb1YzLzNH?=
 =?utf-8?B?a1lHZHQwMytxaEQ2bXdXRG0xdjAwMTc0QXVyb3V1ZGpMeURJZFhTSWhUWWxQ?=
 =?utf-8?B?WWNoeGZBRzBDblpoTUlYbUN4VDJuVVZXN2RZUXIzaU5qVE12dGxYWjQ3SlVI?=
 =?utf-8?B?aTh2R3NiVG9LdGRIOWl4MGVLZW9tYXZEa1M4MzlmUE8zaHFuT1RCQUYrMFdK?=
 =?utf-8?B?ZUFJU3RDcSt1OWZCUHJDdHVXOVBWZnRBcU5Pc0hKUkhkbnpsSHZtbDJCRXRy?=
 =?utf-8?B?WWpqMnp6N240dVl5bjhjUlFzRFFJV05HV1ZWWldXdE9Mb2ExNDRpcUViRzM3?=
 =?utf-8?B?YjZtV1FnUDZZM1QrNS9qNjJTcHAyckRqc1VTZmdZUndtOXZHUDNkSlAvdmhv?=
 =?utf-8?B?N201cUhZU2xHSHVRQytzZUJtemJEL2xBYmdNYzJ5RjBKc04xdXM4L1lMYjJu?=
 =?utf-8?B?NjU0SUpnMkFxbnRKWTVmNVA2RUVOMm5yRktHTFNPdHdDaVJ6cTJDWkxlQi83?=
 =?utf-8?B?b1dvRTBWbS9GTytsUU9INjNyZlF2SDlQYzBNMDNzdCtVQjU4SkovaUpJVXJa?=
 =?utf-8?B?ZjZiZEVVVmtWTzdiaHY1OUxvakJ0V3p5cjNMdEtyZndnby93bFNrd3BWbUU3?=
 =?utf-8?B?YkdFT216UjZIVHZ1alRzbHBLWEFBdkljcXBUUkp0bXcvWXBHQ2VUbVo2RDVG?=
 =?utf-8?B?QkMzTVRLc2dKeFp4aGE1bDZIQkhrOVJ1aDRSc3BGU0plZHEyeElKR1BpOVRi?=
 =?utf-8?B?N0VpWGpGTWJyZFRsSTBORXFKUFJ4WnJQckxnb1M1ZEEramtkQ0g1VGlyTWhn?=
 =?utf-8?B?U1ZKaEVBdkgrUWJSdSt1SzF1TmlkRytHcGQ3Z1I1RnFCU0tacUZDQmdkamtN?=
 =?utf-8?B?MFplY1Q3TXZIc1BnbFN3cldMNHoxS3JaTlFVT0diclMvZ1FlVmc5RmtTSVhn?=
 =?utf-8?B?OE8wbGdPKzJ1MnpOVXJLMDBhbDhBaHo1cXhIQ1krazBqYWlsaHVzY3cxczlJ?=
 =?utf-8?B?VExGS0VIVHJ1YVhOeUlvd2k3NDlCMjhkV0Z2b1NPcVAvOE90OGJaSzhMQ283?=
 =?utf-8?B?by9vRjd3bml2RDZKZVEzU05PUmt1cVJoaEhicHpSdzYwNk0ycTgwd29JcWFH?=
 =?utf-8?B?emY0YmRaenNmRVMxeTE2TE1US2F5NGxsN1dkNU9ncDF6Wm9JWmprNWxDbE9V?=
 =?utf-8?B?YTJrTzBhUEFCYjF5cHVWN25kbjhGNnNVRmhTQjFXZWdoalN5cTVyS0IzYTk0?=
 =?utf-8?B?c3o2TC9WT2RJWWxSTUFPL0JnVlJPSXAxL0gydEJIVVAwMVZUc1hBN1JaaGRk?=
 =?utf-8?B?ZnN5Tkh3T1RyZEJ0TlMzMWl4dVZ0UFlCbmxsTjRQTlVJVTNBb3JKZUhZVHhV?=
 =?utf-8?B?LzZDeUJTbkJ1eGZ4UGZVU1lRekIyNHoybkx2YnpNWnNpQWs1YUg2dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: MruzRtC2FMfpErcGPj2OUiQqBfneviGmuvjjKY1npY8Idcqj1Zn7MQbXsV/gRlvjgDlpkntuzHQYJiBjL6AVrZbOnxEmuyuAgO1u+FhZ1zKKZXRNUNbg61q4jcWalRd8gbRbM6bcf2GjaKB5vO5MdXSICVwe694L36h0XNU5RrpelpLZyFX0Ir17npWzwbyupF7cQu7lt24T8YQOySGqLXi2AWaeEG1CqBeKMSzslVGo6Fq/ofAZOjHDiUeOk2MoCg6o5hwaOqLp1AodSv05tZRLsc2zOFFLpdGgo+bHj9AHgJIAm+OTvN2uucuNSeR7vLeOmkNbGcigkgaMRyuTRg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPFAB4263235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b03f5170-0ce1-4db7-e37b-08de8be74733
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2026 09:57:38.0900 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2jYsQxGVUMmiN1BxVlzT8K9wj1bJ6BX+oXNEBLw8UxCruRV4Jcp+Xj7Ed1Z9iYvVAP4iLvPHluYRUZ1clT5R1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8095
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
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.vivi@intel.com,m:jani.nikula@intel.com,m:kenny@panix.com,m:lyude@redhat.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url,lists.freedesktop.org:email,PH3PPFAB4263235.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jani.saarinen@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.saarinen@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6948B34213A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SEksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpdmks
DQo+IFJvZHJpZ28NCj4gU2VudDogVGh1cnNkYXksIDI2IE1hcmNoIDIwMjYgMTQuMjANCj4gVG86
IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsga2VubnlAcGFuaXguY29tOw0K
PiBseXVkZUByZWRoYXQuY29tOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KPiBTdWJqZWN0OiBSZTogRllJLCA5YTY0
YzY1MDgzYjkxICgiZHJtL2k5MTU6IEFkZCBzaG9ydCBIUEQgSVJRIHN0b3JtDQo+IGRldGVjdGlv
biBmb3Igbm9uLU1TVCBzeXN0ZW1zIikgc3RpbGwgaGFwcGVucyBvbiBteSBBbGRlckxha2UgbGFw
dG9wDQo+IA0KPiBPbiBXZWQsIDIwMjYtMDMtMjUgYXQgMTg6MDIgLTA3MDAsIEtlbm5ldGggQ3J1
ZHVwIHdyb3RlOg0KPiA+DQo+ID4gQmFja2dyb3VuZDoNCj4gPg0KPiA+IC0gUnVubmluZyBMaW51
cycgbGF0ZXN0IG1hc3Rlcg0KPiA+DQo+ID4gLSBIYXZlIGFuIFhQUy05MzIwIHdpdGggYW4gQWxk
ZXJsYWtlIENQVSBpNy0xMjgwUA0KPiA+DQo+ID4gLSBJIGhhdmUgYSBEZWxsIG1vbml0b3IgaG9v
a2VkIHVwIHZpYSBhIFRodW5kZXJib2x0IERvY2sgdmlhIEhETUkNCj4gPiAoYWxvbmcgd2l0aCB0
aGUgYnVpbHQtaW4gZURQIHNjcmVlbikNCj4gPg0KPiA+IC0gVGhlIG1vbml0b3IgaXMgdHVybmVk
IG9mZiBpbiB0aGUgS0RFIHNldHRpbmdzIG9uY2UgSSBsb2cgaW50byBLV2luDQo+ID4NCj4gPiAt
IEF0IGJvb3QsIGhhdmUgYSBoaWdoIENQVSB1c2FnZSBmcm9tIHRoZSBpOTE1OjgwIGt3b3JrZXIg
KGFuZCBhIGJ1bmNoDQo+ID4gb2YgSVJRcyBmcm9tIHRoZSBkaXNwbGF5IGRyaXZlcikgdW50aWwg
SSB1bnBsdWcgdGhlIEhETUkgY29ubmVjdG9yDQo+ID4NCj4gPiAtIElmIEkgbG9naWNhbGx5IGVu
YWJsZSB0aGUgbW9uaXRvciB2aWEgdGhlIEtERSBzZXR1cCwgdGhlIHN0b3JtIHN0b3BzDQo+ID4N
Cj4gPiAtIEhhcHBlbnMgd2l0aCB0aGUgWGUgb3IgaTkxNSBkcml2ZXJzDQo+ID4NCj4gPiAtIEhh
dmUgdG8gdHVybiBpdCBvZmYgdmlhICJpOTE1X2hwZF9zaG9ydF9zdG9ybV9jdGwiDQo+ID4NCj4g
PiBJZiB0aGVyZSdzIGFueSBhZGRpdGlvbmFsIGluZm8geW91IG5lZWQgKGluIGNhc2UgdGhlcmUn
cyBhIHNvbHV0aW9uDQo+ID4gdGhhdCdzIG5vdCAianVzdCB1c2Ugc2hvcnRfc3Rvcm1fY3RsIiA6
KSApLCBwbGVhc2UgbGV0IG1lIGtub3cuDQo+IA0KPiBQbGVhc2UgcmVwb3J0IHRoZSBidWcgaW4g
b3VyIGdpdGxhYi9pc3N1ZXM6DQo+IA0KPiBodHRwczovL2RybS5wYWdlcy5mcmVlZGVza3RvcC5v
cmcvaW50ZWwtZG9jcy9ob3ctdG8tZmlsZS1pOTE1LWJ1Z3MuaHRtbA0KPiANCj4gDQo+IChBZGRp
bmcgdGhlIGludGVsLWdmeCBtYWlsaW5nIGxpc3QgaGVyZSBhcyB3ZWxsKQ0KSXMgdGhpcyBzYW1l
IGFzIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS93b3Jr
X2l0ZW1zLzE1NzAwIGV2ZW4gb24gZGlmZmVyZW50IHBsYXRmb3JtPw0KDQo+IA0KPiA+DQo+ID4g
LUtlbm55DQoNCkJyLA0KSmFuaQ0K
