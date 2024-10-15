Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86ECB99DF4B
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 09:29:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3051110E2C2;
	Tue, 15 Oct 2024 07:29:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N+78+VSJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0357910E522
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 07:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728977365; x=1760513365;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JWttJ2OWf7OJlEtRRlXOxGE+4Gd0RRpHgelpKmDCl6I=;
 b=N+78+VSJiDJ+E6wROgaGHhXO3BCRCjUkx28whUa/9ZpTI29y66hw8b8R
 /11ecuVdT9q26JVFZwz8YpuTvXGHRkqYORMp0ZdRco6f/kyUVkgM/esxF
 YfAiVadjVIqXa2u9IIkMeKKna1pTyLFAOTsbxYE1rkPHkkIeKs0bctae/
 4+lk+LZW/mp3YACVjyM0pR6NI9yqWD77Nrcr7aBc64YXYPV7OYrmxROmV
 ZMGaEijvYd4z3+7JmOPM6R5tPTOdpnNboB3Cf0DeM8WPaenuL+ee/NjlU
 A5/CfIGmtCKkaIxmomVZWXZwajSiBodcvTx30O3gqqZroly+RP4C2mP+u w==;
X-CSE-ConnectionGUID: NP6x0MWpTluNpiMwioRMew==
X-CSE-MsgGUID: u7mB2tIoQ/iddAMEMB3Y2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28306291"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28306291"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 00:29:24 -0700
X-CSE-ConnectionGUID: AOax3d6dSmOYlyhn1HgNVw==
X-CSE-MsgGUID: bIUR7NpMRXip4msI2KsTSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="82585800"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 00:29:20 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 00:29:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 00:29:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 00:29:19 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 00:29:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hBSpga7AsCiVz/+d0i9hUBHBbwOJ5hT+Ox63zjQDhawWKfNVj3x+vw4h1SuA6Rx2/kKB6rdp5giJJ0hgIgJETEQM+LfUxmiwn/EYsNqg2P2i/ENYJMMI3FhocU8CtdnTHreV40+QsH5neNuw/X2pNGfmtUxFz9Nc8oHDEe4X1OdlSlXKAG/fSfpc/7btTLT5dxR6apoZAXQnygrd+BJwn478ymGRSvnmN5UCBS8RzQETZo8N26CubyNxjiCq17tJyalHMmeiKeFIXody3dBCIGJFEEcF/XP2vmF7RaOAVSGJ/DxsN11Wy//USkiewWqzOV70JrI5QRFxuHDY8KJaWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWttJ2OWf7OJlEtRRlXOxGE+4Gd0RRpHgelpKmDCl6I=;
 b=OwjKlYPxn+ucHlQ7K6ocsxPzj7GIrLQWzaiArfypHRIL4h+NTTFNi1H7b8YX/9vkQa3aXUtcfaxUJ2tr5LIZWe/fPGHTVii8EdxFzg8Ed7wcslUaAkHOmwuQClSYtawhPB3nofVtCbIJPDWirNxqT2TMOdmCzX7BBJRzGTryK9kB0+8sGLs/EdpOh9YNQrVK7NupKdORkcIoKwN8SmrqfQG0U26TUlMj+nIGuiLyXS36wceGuDnopgDar/R3JNhbeoUA0fFiuFPbCDREpBgBlvP53MWAeHs8TkWolRoCU+4FWaWL/omtdQL+LVgxIFsqvtNHryqx4vE+eYye0SlBqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6088.namprd11.prod.outlook.com (2603:10b6:208:3cc::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8048.27; Tue, 15 Oct 2024 07:29:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 07:29:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel Replay
 vblank workaround
Thread-Topic: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel
 Replay vblank workaround
Thread-Index: AQHbGlE0QhF5IARESEKMGSWHu0t5c7J+drUAgAD+mICAAITYgIAHeRkA
Date: Tue, 15 Oct 2024 07:29:17 +0000
Message-ID: <2bc75f443bb9e76f8a913adf9734b7a073f5392a.camel@intel.com>
References: <20241009134225.1322820-1-jouni.hogander@intel.com>
 <87ttdl8irr.fsf@intel.com>
 <68bae7f78e000411bf89b5a7dfb1233735451148.camel@intel.com>
 <87cyk86qkm.fsf@intel.com>
In-Reply-To: <87cyk86qkm.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6088:EE_
x-ms-office365-filtering-correlation-id: 1d3d4642-a132-42ff-0277-08dceceb13ac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?b1REYVJhd0doSzJ3SlcvUFVEVnBYUVdVTlJyMFFUYkE3NHhnb0dDOFJSSEVE?=
 =?utf-8?B?d0dFSmw4eFpCNXpaYm1RMFcvQ3dSRWlMRVpaYTNJUFpFOVM3L3JHRzhvRHpU?=
 =?utf-8?B?N0xFWG8rekUxWEtRdkZuU1BQM295ZVhKaW5NSFZTQ21FOUZUTnVwR3lQZTlD?=
 =?utf-8?B?SVJ0MGlmYnZOR2lEdFBldzVBN2RmUGQ2S0NqaWZqYm5pcy9YN0dDTWI3MTkx?=
 =?utf-8?B?eTFQSGNmQ0VZZmpBWHVqYk83NkJaeUhHRkt0Ulk4RDBUeE11WjI4NTM1SFhT?=
 =?utf-8?B?SzRlODhPWkQwZHBwZHdwVENQL2pqc1hIaXVlTXJPWmxBREkxcTFiWEZUZlFC?=
 =?utf-8?B?SnVyczFWcHFuTS9XTHNXTzZjanFZbDY4eThqU2ZoYTFrN1lEWmhhOXRzR0hF?=
 =?utf-8?B?YVBEdE8zeGQ3Z0kySEZXaU9oTU1uQXlZU2xzbUVpWHBpcVF3cHkvamhvV3or?=
 =?utf-8?B?Njl3U2liaUpHSzQxOXV4SHBjeDFYOGpObnUzNHhnODlNWTV3K2tZYTBWalo0?=
 =?utf-8?B?UHBGdFJidW1iSjlyTDF6SGp4UkwrRDEwQmp3NXpQcEN5WDNmL3FwVkY0K09n?=
 =?utf-8?B?L0Z1NG1BYXRDY1ZZMDdvZjlHTUp5U2NpMXliTmU2TnVrMjAyeXJPdmpWenI3?=
 =?utf-8?B?azlXUkQ1R1BaN0ZvV1JwMFVsOGVSVkMvWjU2bGtoOHpENThaMjlmZDhtTnlQ?=
 =?utf-8?B?S3pablRlN0ZqOGNmamZMWVl3WGJqNUdrZ0dlSS9KbDJCZ1oyVU94b1A0QVpu?=
 =?utf-8?B?NTYrMTFwdHVjZVJBWGFIWkc4Q2J3OXlnL3p4RmVWRktRVDlsWS9PQTNYcWNh?=
 =?utf-8?B?QWwzU0YrcmllL1pITHJuZ0tTM3dncXdNTGpOOFQ2N3RSdGFUUEtDOE5mYVRO?=
 =?utf-8?B?Z0hMalFNWnYwcEc1WE9vNWloaGh3Y052Ui9WMiswaXUreXk1dGpwaG8rLzJr?=
 =?utf-8?B?dzFqSUZSNlo1OWpDRjlnYWVscFRKdWZiL3BXNmJ6OTJPNUdUVFQ2RUxSdmpN?=
 =?utf-8?B?dVg0VEZhWS9PQmtxdUVlU1pYa1lMclQyRlVXS2c5bFQ0NlB3LzdDWExPRHZK?=
 =?utf-8?B?UkhqdmlYdmw5UFFWZDE4eFBlejl1M3BQNkxUMXBEY2pJTkVwL2ZoYmE2cmdH?=
 =?utf-8?B?Y1FGMzhxQW0wWVJ2TEVoNDZVM0hRd0NSeHR3SUFVUGtLeU10enRYZ0I3dFJM?=
 =?utf-8?B?MFQxOEo5cGdrUU1DVWVwRkoyUlF6VmNzVllFTDNDcWVqaFZKdHlPbTdaWStR?=
 =?utf-8?B?MDhXWld6ekdFMEYvcThLelVWWFlJc3FBa2hBcGlhbGtKaDZKL2RHNkp5SUcw?=
 =?utf-8?B?RnlHVENMRUJIdGhCaGtNTWtWaUpoWlNFa1hJYkp2U3ZOeFNDTGN0RTVsWTEx?=
 =?utf-8?B?c3dzaFhoUlp2VU9RV2FtdWVSeFpBcmdSbTRoUy9yY09kbzhieE0ycW5aR2Zt?=
 =?utf-8?B?SXFDU0FhMmVkdzFBT2UrZU85QzhWNUdPekpWL0lLOXJTUm1hWlNCYnBueXBp?=
 =?utf-8?B?N0E2andIMEd6ZFJvYkcwa1BXNXdJeloxUDR6bUt2RVErcTBobkVId3dyMElF?=
 =?utf-8?B?MEFQNHpnM1g2T2xkZGo2RWgrdjh4L0s3M1NjUDBXVlJWT0pZNWRnKzdlRlBV?=
 =?utf-8?B?ZC9ydWtkYVZ2OFU5TEE3STVBRnhuTDljZVVHVkNqTnJPY0xBbkN2SXJ2bzV1?=
 =?utf-8?B?TlR0ZC9NM3pwMVZHdmtwSkx1cCtZRjd1bU9ZZWxtby9rRVZMWW9jQjBsRWZl?=
 =?utf-8?B?L0o2QkJnOVlyeitoamE4d3FmdElDRVhwLzFmUk0ycHorNDZwN1dta1lVWllM?=
 =?utf-8?B?MHF3RDhjM04yNWhDaWtMZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N1hYdFB4K2djZVJJY2hDWG5uQXFwWmZkZXRwZlc3RDg5anJxYkZkWFlhVm9y?=
 =?utf-8?B?WVlTcFlnYmxCYXJMS1ZyVlpqcUQ0YzBIeHFCOHFlYUNXVllOUG1GTk5ocnl2?=
 =?utf-8?B?eXhjQVI2NEQrbnhkVFBmV2s1Z25WTWpLYUtwM004RjJqbTRPYWtxODdKQWd1?=
 =?utf-8?B?aTFYWi9sdTFxVERZelc3am5kTVZ0SjQ2S1BlbUxaOXhVZng0Y2o0UDJzdW54?=
 =?utf-8?B?bTF5SEFrczFGdVJzZFZCbmhRbStJS2hPekRMNUVBWnR4Q2tQUEs4dERONXo3?=
 =?utf-8?B?NUdlWmxOdHk0eFR3RnUyMmRwM1B3Y1BlY1RXRVBxRitHWUxzd2YvT3pDd1dT?=
 =?utf-8?B?SHNQMThKSmtNUDZxeDRHbUZ5dnhPc2FFNkVYMUN4WUNPVHVFTVp1SUc0WmhD?=
 =?utf-8?B?MDcwcHNjdnhPUzZ5TWRPK0lORXcvN2dPbzdCTUZubU9wYXlRaVZZbXVlWm1j?=
 =?utf-8?B?RG9sNjdEYWlidWh1R3dHUlhCSnQ5Qy8zclQ0dlFEbzR2SVVxVTRibVk3bW5L?=
 =?utf-8?B?V1F2MFZXY2dJZXlGcGl1TFJycm1oTGF2MlNGL2RlL3N0eEhXZ2IwTUkzbVJj?=
 =?utf-8?B?UWlTa1llVjY1QlZQeUs5SDFwMHA2WWtSRTZZZW9yTE5mcDlOTndBTnllUDJh?=
 =?utf-8?B?ME9rbkpsckc0L056TmlUVlZvNlhRS3lEaHMxZE55d3ZubkxwVWRZcTZQVk1T?=
 =?utf-8?B?SHNoMzVndHUxQzlxUGVLSzhpMVR1QkgrcE4wQUZnVzFzTHRjemgrVFFnMUlT?=
 =?utf-8?B?Q05DOEtyYTBseXUwTE03YXVDMHJWUEtuQ0tZZHFRTk1OMzM3d0lyR012UEpm?=
 =?utf-8?B?QVYwd1ltSnY5RzlLRUJROFNMa2RXTUxEUTY5cnVXR2RpK0F3RUZUZ3Z3Q3gz?=
 =?utf-8?B?WC8rVmxrWlZyYWZHaHJZU0V6THhhS0lSYUdBZ2VtR0VoenF6QmY2UFdBY1Fx?=
 =?utf-8?B?MmhIcThJclJpRWxzYjlkUmE5UmFTTExqODFNZGZOZjB6M1hMTGZrcXJhRnhi?=
 =?utf-8?B?eXNkUHB6MTRpaC9xamcrWk1pSHFPKzRFRWpweml2bml2WkxUUEdnU016bDBh?=
 =?utf-8?B?Sjg2dEVWNDFJL1pzQXhLaCtSL0xVZkk0VllsR1E2WGMwekR1RGFpdVlSMGZn?=
 =?utf-8?B?ak1lcVFYTkNuanlEMkxrTTluRmk3RVJ0cHk2WXJqdGtUY25IWitTOFBBMEF0?=
 =?utf-8?B?OG5iMkZOTUhjQ0RyZ0RzM0dXNm5xRHJaMTRDa3FuSlp2SzkyMERnK2x4a1B3?=
 =?utf-8?B?TWt2VGtjbTlVbEVVR0FUQlE0aG5UTEFRdjQxQ2ZsYThxUWFnV1lyU1EyWDUv?=
 =?utf-8?B?bWdoODdoWTFFQVlBbXJDNkFiUXVmakprY3d1YlB6WHNKcXNWZytHWFZ3TGxq?=
 =?utf-8?B?UVo4SkFWQXg2K1U2U3MySklMT0lJZHBKZXRiMFZaaDFYbEZMU0lLQUxMa1BQ?=
 =?utf-8?B?azJQc2dmMmhBVGxZdUpkd3F1djkvWnZUaEEzUVhqaTZTTWVOd201ZUpIYWd2?=
 =?utf-8?B?QmpMWGlidVpDSUZuSEZnL01YZXJySDJMV1lDQU1WNi9GUWRqeFZLd25KTGht?=
 =?utf-8?B?V2wzT0RuWlNKemJUQy9oU1hWc253aDdwUDdUQWNxa0Vqb1dlQnRvYnE3aHp4?=
 =?utf-8?B?RHo4ekpuNE9ZVi9LcmpXbGdMaDdTdW1acDRCQ3MxYmZ3VTl0Rm1YTFg3aE1x?=
 =?utf-8?B?ZEJ3amRtQ01FTThYang2Z2Ryb0JxUHd0TVg2Wk5xaStoSG1CaiticFFyVzRs?=
 =?utf-8?B?SjBpWVh0cG5kVkhScHNhNXpPQmozQzFKSVdWaFdWSzBhOUMvUHcvRTF6V3Bn?=
 =?utf-8?B?S1lhZ3RDSll0cG1CUW5odDA0RlUwRXJoLzlpYVJ2WGNaSU1pREh4alpHUU0w?=
 =?utf-8?B?WDRQZW9ORXpub0ViUE42S0pJeko3dkZsclcyOGdia1Q3RjUwL0V4aXhWbmd1?=
 =?utf-8?B?alJBWDZMYjV0VWwxUmducjNaS0RWM2Q4cVE0TFQ4UHJxOXl5bHIvTWc2bjNX?=
 =?utf-8?B?Y3lVNmNhemtWeFV6M0c2c0JJVjZYMy9ZMnBOaW5JS3d6aDVUNUUzZ1hzUElw?=
 =?utf-8?B?U1ZGcFZ2UkdzWGJJZ05uQ2hLZzRGZnd6ektmMERHVDJUYXRxdE92MHBGUzJl?=
 =?utf-8?B?UXhtZWUzY3JvOEt4c1FDQko5ZmhiUE9DVFhRY1Nna0hVT1RrZjNYekw2Ykd2?=
 =?utf-8?B?V3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <85B6FAC783AFA3449617D819C9530B6E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d3d4642-a132-42ff-0277-08dceceb13ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 07:29:17.0675 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ed+xNZQAZjcJ6A80lZFBZvGv4ORva1AkcK0NjpN4zmIBnlQo60jRn/osea2w6YdEuOhQxH065OaNBUtqIARo3W2e0qUkEAj7wUF3zmyM1zY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6088
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

T24gVGh1LCAyMDI0LTEwLTEwIGF0IDE2OjIyICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAxMCBPY3QgMjAyNCwgIkhvZ2FuZGVyLCBKb3VuaSIgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCj4gd3JvdGU6DQo+ID4gT24gV2VkLCAyMDI0LTEwLTA5IGF0IDE3OjE1ICswMzAw
LCBKYW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+IE9uIFdlZCwgMDkgT2N0IDIwMjQsIEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gd3JvdGU6DQo+ID4gPiA+
IFdlIGFyZSBhYm91dCB0byBjaGFuZ2UgbWVhbmluZyBvZiB2YmxhbmtfZW5hYmxlZCB0byBmaXgg
UGFuZWwNCj4gPiA+ID4gUmVwbGF5IHZibGFuaw0KPiA+ID4gPiB3b3JrYXJvdW5kLiBGb3Igc2Fr
ZSBvZiBjbGFyaXR5IHdlIG5lZWQgdG8gcmVuYW1lIGl0Lg0KPiA+ID4gPiBWYmxhbmtfZW5hYmxl
ZCBpcw0KPiA+ID4gPiB1c2VkIGZvciBpOTE1Z20vaTk0NWdtIHZibGFuayBpcnEgd29ya2Fyb3Vu
ZCBhcyB3ZWxsIC0+IGluc3RlYWQNCj4gPiA+ID4gb2YNCj4gPiA+ID4gcmVuYW1lDQo+ID4gPiA+
IGFkZCBuZXcgY291bnRlciBuYW1lZCBhcyB2Ymxhbmtfd2FfcGlwZXMuDQo+ID4gPiA+IA0KPiA+
ID4gPiB2MjoNCj4gPiA+ID4gwqAgLSBzL3ZibGFua193YV9waXBlcy92Ymxhbmtfd2FfbnVtX3Bp
cGVzLw0KPiA+ID4gPiDCoCAtIHVzZSBpbnQgYXMgYSB0eXBlIGZvciB0aGUgY291bnRlcg0KPiA+
ID4gPiANCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmggfCAyICsrDQo+ID4gPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jwqAgfCA4ICsrKystLS0t
DQo+ID4gPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gPiA+ID4gaW5kZXggOTgyZGQ5NDY5
MTk1Li40NTY5N2FmMjVmYTkgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9jb3JlLmgNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+ID4gPiBAQCAtNDU1
LDYgKzQ1NSw4IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5IHsNCj4gPiA+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBGb3IgaTkxNWdtL2k5NDVnbSB2YmxhbmsgaXJxIHdvcmth
cm91bmQgKi8NCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1OCB2Ymxh
bmtfZW5hYmxlZDsNCj4gPiA+IA0KPiA+ID4gTWF5YmUgd2Ugd2FudCB0byByZW5hbWUgdGhpcyBv
bmUgdG9vPw0KPiA+IA0KPiA+IEkgdHJpZWQgdG8gZXhwbGFpbiBpdCBpbiBjb21taXQgbWVzc2Fn
ZS4gU2VlbXMgSSBkaWRuJ3Qgc3VjY2VlZCBpbg0KPiA+IGl0Lg0KPiA+IA0KPiA+IHZibGFua19l
bmFibGVkIGlzIGN1cnJlbnRseSB1c2VkIGJ5IHR3byB3b3JrYXJvdW5kczoNCj4gPiANCj4gPiAx
LiBpOTE1Z20vaTk0NWdtIHZibGFuayBpcnEgd29ya2Fyb3VuZA0KPiA+IDIuIExOTCBQYW5lbCBS
ZXBsYXkgdmJsYW5rIHdvcmthcm91bmQNCj4gPiANCj4gPiAxLiBhbmQgMi4gYXJlIGN1cnJlbnRs
eSB1c2luZyB2YmxhbmtfZW5hYmxlZCBpbiBhIHdheSB0aGV5IGFyZQ0KPiA+IHJlc3BlY3Rpbmcg
aXQncyBtZWFuaW5nOiBpcyB2YmxhbmsgZW5hYmxlZC9kaXNhYmxlZC4NCj4gDQo+IENydWNpYWxs
eSwgdGhleSdyZSBib3RoIHVzaW5nIHRoZSBzYW1lIG1lbWJlciwgYnV0IG5ldmVyIG9uIHRoZSBz
YW1lDQo+IHBsYXRmb3JtLiBUaGUgbWVtYmVyIGlzICJvdmVybG9hZGVkIiBmb3IgdHdvIGRpZmZl
cmVudCB0aGluZ3MuIChTZWUNCj4gdGhlDQo+IG90aGVyd2lzZSB1bnJlbGF0ZWQgc2VyaWVzIFsx
XSwgaXQncyB0aGUgc2FtZSB0aGluZyB3aXRoIHNiX2xvY2suKQ0KPiANCj4gPiBJdCB3YXMgZm91
bmQgb3V0IHRoYXQgMi4gYXMgaXQgaXMgaW1wbGVtZW50ZWQgY3VycmVudGx5IGRvZXNuJ3QNCj4g
PiB3b3JrDQo+ID4gcHJvcGVybHkuIEluc3RlYWQgb2YgaW5mb3JtYXRpb24gb24gdmJsYW5rIGVu
YWJsZWQvZGlzYWJsZWQgd2UgbmVlZA0KPiA+IHRvDQo+ID4ga25vdyBpZiB0aGVyZSBhcmUgcGlw
ZXMgdGhhdCBuZWVkIHRoZSB3b3JrYXJvdW5kLg0KPiA+IA0KPiA+IFJlbmFtaW5nIHZibGFua19l
bmFibGVkIHdvdWxkbid0IHJlZmxlY3QgaG93IGl0J3MgdXNlZCBpbiAxLiBUaGlzDQo+ID4gaXMN
Cj4gPiB3aHkgSSBkZWNpZGVkIHRvIGFkZCBvd24gdmFyaWFibGUgZm9yIDIuIGFuZCB0aGlzIGlz
IHdoYXQgdGhpcw0KPiA+IHBhdGNoIGlzDQo+ID4gYWJvdXQ6IEtlZXAgdmJsYW5rX2VuYWJsZWQg
YXMgaXQgaXMgZm9yIDEuIGFuZCBhZGQgb3duIHZhcmlhYmxlIGZvcg0KPiA+IDIuDQo+IA0KPiBN
eSBwb2ludCBpcyBtb3JlIGdlbmVyaWMsIGFuZCBpdCB3YXMgbm90IGludGVuZGVkIGFzIGEgY29t
bWVudCBvbg0KPiAqdGhpcyoNCj4gcGF0Y2guIEhhdmluZyBhICJ2YmxhbmtfZW5hYmxlZCIgbWVt
YmVyIGlzIG1pc2xlYWRpbmcsIHdoZW4gaXQncw0KPiByZWFsbHkNCj4ganVzdCB1c2VkIGZvciBh
IHZlcnkgbmFycm93IGNhc2Ugb24gYSBmZXcgcGxhdGZvcm1zLg0KPiANCj4gRG9lcyB0aGF0IG1h
a2UgbW9yZSBzZW5zZT8NCg0KT2ssIHRoYW5rIHlvdSBmb3IgdGhlIGV4cGxhbmF0aW9uLiBJIGRl
Y2lkZWQgdG8gcHVzaCBjdXJyZW50IHBhdGNoZXMuDQpMZXQncyB0YWtlIGNhcmUgb2YgdGhpcyBz
ZXBhcmF0ZWx5Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IA0KPiBCUiwNCj4g
SmFuaS4NCj4gDQo+IA0KPiBbMV0NCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci9jb3Zlci4x
NzI3ODkwMTM2LmdpdC5qYW5pLm5pa3VsYUBpbnRlbC5jb20NCj4gDQo+ID4gDQo+ID4gQlIsDQo+
ID4gDQo+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gwqANCj4gPiA+IA0KPiA+ID4gQlIsDQo+ID4g
PiBKYW5pLg0KPiA+ID4gDQo+ID4gPiA+IMKgDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnQgdmJsYW5rX3dhX251bV9waXBlczsNCj4gPiA+ID4gKw0KPiA+ID4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCB3b3JrX3N0cnVjdCB2Ymxhbmtf
ZGNfd29yazsNCj4gPiA+ID4gwqANCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqB1MzIgZGVfaXJxX21hc2tbSTkxNV9NQVhfUElQRVNdOw0KPiA+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+ID4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jDQo+
ID4gPiA+IGluZGV4IGE0MzY3ZGRjN2E0NC4uODIyNmVhMjE4ZDc3IDEwMDY0NA0KPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMNCj4g
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2ly
cS5jDQo+ID4gPiA+IEBAIC0xNDI0LDcgKzE0MjQsNyBAQCBzdGF0aWMgdm9pZA0KPiA+ID4gPiBp
bnRlbF9kaXNwbGF5X3ZibGFua19kY193b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCj4g
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0NCj4g
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjb250YWluZXJfb2Yod29yaywg
dHlwZW9mKCpkaXNwbGF5KSwNCj4gPiA+ID4gaXJxLnZibGFua19kY193b3JrKTsNCj4gPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShk
aXNwbGF5LT5kcm0pOw0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqB1OCB2YmxhbmtfZW5hYmxlZCA9
IFJFQURfT05DRShkaXNwbGF5LQ0KPiA+ID4gPiA+aXJxLnZibGFua19lbmFibGVkKTsNCj4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgaW50IHZibGFua193YV9udW1fcGlwZXMgPSBSRUFEX09OQ0UoZGlz
cGxheS0NCj4gPiA+ID4gPiBpcnEudmJsYW5rX3dhX251bV9waXBlcyk7DQo+ID4gPiA+IMKgDQo+
ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAvKg0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgICogTk9U
RTogaW50ZWxfZGlzcGxheV9wb3dlcl9zZXRfdGFyZ2V0X2RjX3N0YXRlIGlzDQo+ID4gPiA+IHVz
ZWQNCj4gPiA+ID4gb25seSBieSBQU1INCj4gPiA+ID4gQEAgLTE0MzIsNyArMTQzMiw3IEBAIHN0
YXRpYyB2b2lkDQo+ID4gPiA+IGludGVsX2Rpc3BsYXlfdmJsYW5rX2RjX3dvcmsoc3RydWN0IHdv
cmtfc3RydWN0ICp3b3JrKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgICogUFNSIGNvZGUuIElm
IERDM0NPIGlzIHRha2VuIGludG8gdXNlIHdlIG5lZWQgdGFrZQ0KPiA+ID4gPiB0aGF0DQo+ID4g
PiA+IGludG8gYWNjb3VudA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgICogaGVyZSBhcyB3ZWxs
Lg0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgICovDQo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoGlu
dGVsX2Rpc3BsYXlfcG93ZXJfc2V0X3RhcmdldF9kY19zdGF0ZShpOTE1LA0KPiA+ID4gPiB2Ymxh
bmtfZW5hYmxlZCA/IERDX1NUQVRFX0RJU0FCTEUgOg0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBp
bnRlbF9kaXNwbGF5X3Bvd2VyX3NldF90YXJnZXRfZGNfc3RhdGUoaTkxNSwNCj4gPiA+ID4gdmJs
YW5rX3dhX251bV9waXBlcyA/IERDX1NUQVRFX0RJU0FCTEUgOg0KPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBEQ19TVEFURV9FTl9VUFQNCj4gPiA+ID4gT19E
Qw0KPiA+ID4gPiA2KTsNCj4gPiA+ID4gwqB9DQo+ID4gPiA+IMKgDQo+ID4gPiA+IEBAIC0xNDQ3
LDcgKzE0NDcsNyBAQCBpbnQgYmR3X2VuYWJsZV92Ymxhbmsoc3RydWN0IGRybV9jcnRjDQo+ID4g
PiA+ICpfY3J0YykNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChnZW4xMV9kc2lfY29uZmln
dXJlX3RlKGNydGMsIHRydWUpKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybiAwOw0KPiA+ID4gPiDCoA0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoZGlz
cGxheS0+aXJxLnZibGFua19lbmFibGVkKysgPT0gMCAmJiBjcnRjLQ0KPiA+ID4gPiA+IGJsb2Nr
X2RjX2Zvcl92YmxhbmspDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChkaXNwbGF5LT5pcnEu
dmJsYW5rX3dhX251bV9waXBlcysrID09IDAgJiYgY3J0Yy0NCj4gPiA+ID4gPiBibG9ja19kY19m
b3JfdmJsYW5rKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNjaGVk
dWxlX3dvcmsoJmRpc3BsYXktPmlycS52YmxhbmtfZGNfd29yayk7DQo+ID4gPiA+IMKgDQo+ID4g
PiA+IMKgwqDCoMKgwqDCoMKgwqBzcGluX2xvY2tfaXJxc2F2ZSgmZGV2X3ByaXYtPmlycV9sb2Nr
LCBpcnFmbGFncyk7DQo+ID4gPiA+IEBAIC0xNDc4LDcgKzE0NzgsNyBAQCB2b2lkIGJkd19kaXNh
YmxlX3ZibGFuayhzdHJ1Y3QgZHJtX2NydGMNCj4gPiA+ID4gKl9jcnRjKQ0KPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgYmR3X2Rpc2FibGVfcGlwZV9pcnEoZGV2X3ByaXYsIHBpcGUsIEdFTjhfUElQ
RV9WQkxBTkspOw0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3Bpbl91bmxvY2tfaXJxcmVzdG9y
ZSgmZGV2X3ByaXYtPmlycV9sb2NrLCBpcnFmbGFncyk7DQo+ID4gPiA+IMKgDQo+ID4gPiA+IC3C
oMKgwqDCoMKgwqDCoGlmICgtLWRpc3BsYXktPmlycS52YmxhbmtfZW5hYmxlZCA9PSAwICYmIGNy
dGMtDQo+ID4gPiA+ID4gYmxvY2tfZGNfZm9yX3ZibGFuaykNCj4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgaWYgKC0tZGlzcGxheS0+aXJxLnZibGFua193YV9udW1fcGlwZXMgPT0gMCAmJiBjcnRjLQ0K
PiA+ID4gPiA+IGJsb2NrX2RjX2Zvcl92YmxhbmspDQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgc2NoZWR1bGVfd29yaygmZGlzcGxheS0+aXJxLnZibGFua19kY193b3Jr
KTsNCj4gPiA+ID4gwqB9DQo+ID4gPiANCj4gPiANCj4gDQoNCg==
