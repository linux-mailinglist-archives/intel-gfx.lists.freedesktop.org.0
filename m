Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A20C58FFFF9
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 11:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24ABF10E03B;
	Fri,  7 Jun 2024 09:59:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AolkEh63";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A6510E151
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 09:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717754375; x=1749290375;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+NtkwSajfM5Uui/bqxsklxiiQgRNQvAUCaS6cL+E+Pc=;
 b=AolkEh63PCDVcyffLwYUg3ZbMaOP4oct9ApqSO/ku8ll4mJYCWfCtkIG
 lsFLW4qIay3sUJzu42jibTP+bTUHJIhdornLMepbJrHRD+LgM5aMv6f4n
 BnJAHEAA+/pxlrvX/OkGs8YJQ74DSLYXa09iagVJe+0HKqZjtLeRxgrAt
 0qDRRUFEyYaYnC7VHYmK8lx00CDtJR36OF36wW6C8lt9FVSaHAgYILtDq
 LFspPGPOqvuv+OG3UtPnzjj85GV0U116a2QwKuOd36dSMB42nb8rxfiOh
 1+FtE24cNS9f3+0YRVmmsyeIs7JZS0DxpDZTmqUrnKrPmnT9C1zr1HmL6 w==;
X-CSE-ConnectionGUID: 62XXThlDQt2MwLix3RC79g==
X-CSE-MsgGUID: 34ClsbiASOSojrwtlSmpfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="36995400"
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="36995400"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 02:59:35 -0700
X-CSE-ConnectionGUID: ZLYUTAKjTDmYjoL/DVptZA==
X-CSE-MsgGUID: u0hpcsmrQk6spWIK1UuRqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,220,1712646000"; d="scan'208";a="38268131"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jun 2024 02:59:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 02:59:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 7 Jun 2024 02:59:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 7 Jun 2024 02:59:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 7 Jun 2024 02:59:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KltR/B9yzW26Mv43N/qhkKYTM4kbRkAlTTU/PZGo66asAgye+6VY0S8XlFoB3tkuHYa1r4k/hev6TwvB/Xl3DPgVs8t6No84elzZyyceSJyJUEpZRU5kdZLxVkeZKSb8omvwd48owYWE3wMOwjwy0Uvs8qTX0FarVKqX/AZwydYjij9UCA9UP0AKI//FtmibMRyI6LeuJovRjNPBx7zVproMX0+p7II2A6IfnGoibFl9q8v444lvsrhLpo77tnRXofYu9dZfpr093z+Y0uQYW04meYp5NOCFYVVtaJM+BKgghYO52GiDIk4Vgrw+E5Vqltq75TNZ3J6hxajZd44Waw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+NtkwSajfM5Uui/bqxsklxiiQgRNQvAUCaS6cL+E+Pc=;
 b=Sjc5Fo4nh55EEbEfH9luHxjV0AbSvn0ZM8wysMa7xImDrnHx8Ibf68VP2tiwbWj3kYouqc+9jLZo0x75MA7O8wKe07DKp8BhfasvCpmCbbyZzCcuwi/GxXm5IlbAtCaqqABxTc+zlGiaohCcmEDXfShl/2Z6kx17SntCNCcRX9GvjHR80FNPp5ok11fLTxhU4MXIHWtljOTgvfVvEwxMFH2/bzIujh8ryY0qQCZ8ScSQtTqAEI8rkH5GR19Nm6rEKkDTziDNCGh4f9vuCiBo+GjSiuvVQKNCq4E68wIdAqb26x+K5XpBnzQTvWYC+eBLkSmUC7CMPJbSWDPZY9DDQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW4PR11MB6838.namprd11.prod.outlook.com (2603:10b6:303:213::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Fri, 7 Jun
 2024 09:59:31 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Fri, 7 Jun 2024
 09:59:31 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Topic: [PATCH v6 10/26] drm/i915/psr: Print Panel Replay status instead
 of frame lock status
Thread-Index: AQHatzLdsIUoGo+1NESwzwj69wwgrLG6zW5ggAATFICAATOIsA==
Date: Fri, 7 Jun 2024 09:59:31 +0000
Message-ID: <PH7PR11MB5981E238DC3174FDA40FE79AF9FB2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-11-jouni.hogander@intel.com>
 <PH7PR11MB598181E00446463602261261F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <9ee0016b8bc858f011066d22703bcbc06d054515.camel@intel.com>
In-Reply-To: <9ee0016b8bc858f011066d22703bcbc06d054515.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW4PR11MB6838:EE_
x-ms-office365-filtering-correlation-id: 405f9eee-cd69-4bab-1e1a-08dc86d8870a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|366007|376005|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?dHFnd1UrTnVLSGFKTzNZdGhBNlZva0lLeFBnZW45QUJUN0JDa1paUFFsTWpa?=
 =?utf-8?B?enprTGVQcXYxVnJjUGhvTm1aUG52dHdIMjNBM1p1Q29NUnEwaUVIUS9jcWZh?=
 =?utf-8?B?Y0QwMG5jakZlNVBtWTdVbnk1bEd3NERQU2VoOExSdjc2U3VNVVhUVWNZcWRs?=
 =?utf-8?B?UUJBSGFwcGwreVA1QzNKVVJmb1Jxa2daem9NUk1EbGMwSERQSnU3ZVBxckty?=
 =?utf-8?B?ZHNJMnYzcDhyaWFNS0RHYzNHblczN0FZV0tGNVFxRDVsNnpidUxMZ3hZbmND?=
 =?utf-8?B?QlRIY2V1NVVvYjI5RHBBMmphb1V1NUl4S3hDMlN4YWdlTWcrVTJ0Ti90VnEy?=
 =?utf-8?B?MkZ0SjNlcVlCelkyZU84cHI1N1htZ2dvaGYyZUxlb3hzZ1J2UXk0Qm16d2tj?=
 =?utf-8?B?VGlsQ2hOWkhnN2pFR1pUeXVkeE95VEFUUVNtbXRWTWkva01paW05Z2V2U3dU?=
 =?utf-8?B?Y3ozTnNzcy9ONWpOVXRXOVFUeVp5RCtBU3NvL1BTaGJaMHRMVHF4SE90bFYx?=
 =?utf-8?B?VlllL2xwU05FNnU2ZWpHZ09sZm41c2RGa0loemE3ME9Ob2dTODlDOW8xVUpk?=
 =?utf-8?B?cnRYRVM1UURaR09MSllZZGF6Q0FCdHJJZDZObS85eUlrc29qT2FZQzNUcUN1?=
 =?utf-8?B?L3NHOTU1N0gzNXRvQTFMR2hXVDdEbzFXQUVIaDlSb0dDVFllNEs3bWFZMExZ?=
 =?utf-8?B?SFFZdWp5cGRwYkEwem9jQ1FURS9uU2JEeG9rZlBMUUQ0VnRxTms5T2NMaVNX?=
 =?utf-8?B?anJMUUtXdGJzSGJrWmRCemR0dUpBOElTR2VJdzVSU1ZpSFoyNXFVMW9yQ1lu?=
 =?utf-8?B?SnhFNDJ3VjlKK1k4QjRSb2hjVkZDTDNWRXhtVUdGeitmSkdnL1NVZEFXeFdF?=
 =?utf-8?B?YitOT0NFMTZJekowM254dFZJaEd0dHpiSzE2Vy9VbTVOSkRGb3AwZ2pSbHls?=
 =?utf-8?B?VGMvMGFxVUlXT3dZalRSaGZLb1BGQVY2b1QxblNXMTBQU0tCS0Q3RXhnbjJB?=
 =?utf-8?B?OUd3MHhtbjhBMHdvYk9ZYXJXMm9xaDAzY2dnZG4wT2R6Q3JGdXZxNnI1ZmU1?=
 =?utf-8?B?WVhuUDM5VHN2SVZXeDFaMmF5bTduQmVwNW53cFdqNGlQZjVZZFJ1YTdLVnM3?=
 =?utf-8?B?cTAwSllxdTRkR1drNFZLQmdOQmh2Uk9HL3M3UWtxNHpjUWVYMkU2bTVVTWlC?=
 =?utf-8?B?ZnBjQzgyN2NrMVIwQlNOVkJkbHcyQlJUVjdhQ1pvU2ZoTmdKUjlFRXhwcVJY?=
 =?utf-8?B?UHJuZ2N5Yjl2MTQvR3lTNkpuVFQwR1lUOHUxRjJzUUFBVHhzRUpTa0pSa25q?=
 =?utf-8?B?eCtqcTlPUGdxWFhTYjF5VWNHT05pRVR6TDlQR3Z5MkoyaHplc3o4WFo2U3pn?=
 =?utf-8?B?MDQyL1FFeVBLV0lZNWV2WnJnVnRaQ2c4cUVQdzAzUCtqOU1WaTBKeWZkeHh1?=
 =?utf-8?B?NlMyLzhpdGk5TjhEZlBVa3lZSDV1U3pFL3IwQmhKakRZNkE1OXBiZ0k1OUFS?=
 =?utf-8?B?cFZVclpWZFRjYkozV3prWllGdzMweVZmREU5MGMvT1lMS3RZZWI5QkpqK3No?=
 =?utf-8?B?SmlSbzZ3aE9wTTV2bHg4dmtMNXVDakxOV0NKOUR1N3lLR1oyQkVEWm5ubStt?=
 =?utf-8?B?dEhQUHBqWDlNdXMvVnl5MTdYM2JEVGUxOUdiWmpTSTB6OTQ2bkNCYVFWOTdw?=
 =?utf-8?B?dmV4eVpCTnU5bnVCNnp0V2tUWmlVL0FmY2h3VjN4WFJqTWJ4MXJ2Z0hISXp0?=
 =?utf-8?B?QXo2TGsvYkMrZThWc2lDWlNJSlB2QXBjNWZzM1lXZEtUdHAySGw5MnFMb1Zi?=
 =?utf-8?Q?6iXybTAfl/QdiPYnL0keaRgifm2OoSBlkKTZ4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmVSeWpFRWJKNTZFbHovU1I1Ri9PSXpmWll5TG41ZjNwVG8ramRmV0VyZWJS?=
 =?utf-8?B?amoxUTVhamRKaDg1dHpxdytzT2gvVzY0d3RaaTlMZTBFSnRNYjNUeDFDNk1n?=
 =?utf-8?B?cC9iMHhnNzhMSHVrVXcxK2F4QlQrdDNPS0dibFVGT2w1N3VJYTlvNWJDMGd0?=
 =?utf-8?B?Q1VLK3Mra0VobDVobGdYN3h0eVNsM3ZHaTJFaE1jLzNTdFBSUEkyaHl2bnJs?=
 =?utf-8?B?YjNWSDN2YnpYT3hQZU5uOXlhSS9QT011Ky9vbGhUV2svMVZVcXZQWVFXNXM1?=
 =?utf-8?B?L0lQNjlPektmKzNKSVo2a2hFWUROTHBGQVc1V3plUndTaGlxSHJQajFHK2xn?=
 =?utf-8?B?VmovMlFkU1UxS1MwbU5jeUJYVERGcFRxQlQwSVArZ3ZrU05Rbmg5VjJ0eTVK?=
 =?utf-8?B?eGtLMkVPZ2luVnF0cXBYWmRhY01yWGt1UEdhbzR5YXlEeXBWdWtYRHVuMVBU?=
 =?utf-8?B?aEI3ZmNrengrRmVsVkt6R21mbW5uNlJLWmNkcUtuTXFWeXI1V3FUKy9GVGJk?=
 =?utf-8?B?VExYc0JPcGtKK1ZMK0crN2FWdmVmTnJoRS9Sc2U0ZXdjbXhmdlUzS1lsRGJN?=
 =?utf-8?B?YkRxRGlqQnd2bDVCQTMvcWJvM0lCb1hpeDlNcERET3R2WTgxN1dXM2JYN2tR?=
 =?utf-8?B?Tk5uSWRqTm0wS0xDd2V2QlpoK2lYdVpnM1pJVDBHajlnUDhEL0puNjN1dUZH?=
 =?utf-8?B?TlpSd2hMWUVlMnJyUy9iL0FZUGMvRmNnbzFkbjZhWnJMSWFucjFqVElJVnEr?=
 =?utf-8?B?UkptSDJPakZNTmVnM1kwUklsQ05uakVxRXNCVFpFaUphVkIrTW5UZ0IwS3dM?=
 =?utf-8?B?c3ZlZUpmQnhUQyt5RmZnU01ZRmJWQkV4S0Q1RGo0RWltMWRocHZSMGdXU2c0?=
 =?utf-8?B?SHdnRS9HTHhqZWN5bGVjTFEzN0NYRWZzRGxqa1laZEJESVBuUmdaekx6Tzd2?=
 =?utf-8?B?NytwUE11TmlqYnBUZElyQ2NhR2tBeTViejVhS1cwNnBoSnFLVkdIY1J3UXVt?=
 =?utf-8?B?K3VMWUlNeHhjcFhUTkpCRlk1R2ptcExRVGN2MWVDMTZOVnNZZUZ1Mjc0NCtr?=
 =?utf-8?B?MWVvRWdlMXo3YUN4Vlk0ZjE5UTRFTVlhTnZMeDlrUEpGZXNoeWRtdG5KU3pq?=
 =?utf-8?B?SzI1bHc2cHV1eFhYNDVPb3VQQXBqdjVaa0hhYkVPVGlpMStjTEJ4NXV2SXdI?=
 =?utf-8?B?c1hmUVlqK3k5VVJSNytVajVDbnVTZUFVRHBkZC84ZnRBUEVISjJvZ2ordk96?=
 =?utf-8?B?T0NCRThib1pxOGFJRzBpbjF6Q0hkMXg4eGpUNGphK056a1lGbU1NTGQzUUNW?=
 =?utf-8?B?bzBDS3dWQWk0N3lwN0xJNDhTWVBYL1RkNGpSYWhRQ1NXcXlUKzVUbTUwdk5x?=
 =?utf-8?B?SUY1aVV0T3BiRXVla1h5cTNta2lQa1VHZHprNTNRT3loSmZHb0dzMWtDWGpo?=
 =?utf-8?B?U1NtS2pWZytFSU4raVRRNlVvdHc0NkxkYXRsRm5iaitzbHpWUkhJQTVXTytl?=
 =?utf-8?B?U2pUWktKcUdpR2Zka3EwKy9xWU8zcG54RWQ2Sk9FK1J2UVZUZlAydnMrMDd2?=
 =?utf-8?B?ajlxUHgrY0pwUUtGZWMvUlNNamVLMldFS1lva2MwNnpBUGo3Vmd4VU9NRGth?=
 =?utf-8?B?bm43eFR0NnRJZTJBRzB5dWRKZzlybFN6VDF5YWwyYW84amRaUURMRTNwSlNH?=
 =?utf-8?B?S25uaHpzQ3d2K0NlckE3RUt6MkxCRGhhNkhSeVIrYnExbTJVc0ZiY3U5WW5M?=
 =?utf-8?B?Um5lUmJHQ2hDbGZGSnp2NUpwcU9ydzlRdlZlVkRpaDZXQWJFbUZ3UFBHNFpQ?=
 =?utf-8?B?NE04NXdPdlFOVWxQdmVnVjlLMElDanVZTlFOUEVFNTVoZlJ6R3lpUzN5Uy9j?=
 =?utf-8?B?VnNidU1ra0VIeUlZRHdFVWRjRVZkaExvTDVrcVNwb0hTYVl4YTBGNk1pc2Zi?=
 =?utf-8?B?ZlpPNWVEYWgySCtCQ2RmMGdPYWhsVThWc3lXUVEvRENla3ptNW5IcTh6TE40?=
 =?utf-8?B?dEltSEx0OWl1ekJaLzAvZ2FvaFdWQXNHOVRIa09jWkZhY21nSCtPd0xaQzEy?=
 =?utf-8?B?cEpCSFQvSUZONWcwdFZWd1ZVSUlpNXFtbVNuaklqMFRPWGNUcXZNbEVPdkNw?=
 =?utf-8?Q?dCCaUM7/VVqbzH0wGnuIVN6rj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 405f9eee-cd69-4bab-1e1a-08dc86d8870a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2024 09:59:31.6178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: surcPSSam1InC67wGPOQH6uzpx8ARhsCNaybJwynJUL+tJmuT3ORcm/SI4I3751sCjnmls7cP/hhoLIsCjDVyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6838
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDYsIDIw
MjQgOTowOCBQTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
PjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEthaG9sYSwgTWlr
YSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY2IDEwLzI2
XSBkcm0vaTkxNS9wc3I6IFByaW50IFBhbmVsIFJlcGxheSBzdGF0dXMgaW5zdGVhZA0KPiBvZiBm
cmFtZSBsb2NrIHN0YXR1cw0KPiANCj4gT24gVGh1LCAyMDI0LTA2LTA2IGF0IDE0OjM1ICswMDAw
LCBNYW5uYSwgQW5pbWVzaCB3cm90ZToNCj4gPg0KPiA+DQo+ID4gPiAtLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+ID4gPiBTZW50OiBXZWRuZXNkYXksIEp1bmUgNSwgMjAyNCAzOjU2IFBNDQo+
ID4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IE1hbm5h
LCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0KPiA+ID4g
PG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDogW1BBVENIIHY2IDEwLzI2XSBkcm0vaTkxNS9wc3I6
IFByaW50IFBhbmVsIFJlcGxheSBzdGF0dXMNCj4gPiA+IGluc3RlYWQgb2YgZnJhbWUgbG9jayBz
dGF0dXMNCj4gPiA+DQo+ID4gPiBDdXJyZW50bHkgUGFuZWwgUmVwbGF5IHN0YXR1cyBwcmludG91
dCBpcyBwcmludGluZyBmcmFtZSBsb2NrDQo+ID4gPiBzdGF0dXMuIEl0IHNob3VsZCBwcmludCBQ
YW5lbCBSZXBsYXkgc3RhdHVzIGluc3RlYWQuIFBhbmVsIFJlcGxheQ0KPiA+ID4gc3RhdHVzIHJl
Z2lzdGVyIGZpZWxkIGZvbGxvd3MgUFNSIHN0YXR1cyByZWdpc3RlciBmaWVsZC4gVXNlDQo+ID4g
PiBleGlzdGluZyBQU1IgY29kZSBmb3IgdGhhdC4NCj4gPiA+DQo+ID4gPiBGaXhlczogZWY3NWMy
NWU4ZmVkICgiZHJtL2k5MTUvcGFuZWxyZXBsYXk6IERlYnVnZnMgc3VwcG9ydCBmb3INCj4gPiA+
IHBhbmVsDQo+ID4gPiByZXBsYXkiKQ0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIyICsrKysrLS0tLS0tLS0tLS0t
LS0tDQo+ID4gPiAtLQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAx
NyBkZWxldGlvbnMoLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBpbmRleCA3YmRhZTBkMGVhNDUuLjM1MzBlNWY0NDA5
NiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiA+IEBAIC0zNTc5LDE2ICszNTc5LDkgQEAgc3RhdGljIGludCBpOTE1X3Bzcl9zaW5r
X3N0YXR1c19zaG93KHN0cnVjdA0KPiA+ID4gc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpDQo+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJyZXNlcnZlZCIsDQo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCJzaW5rIGludGVybmFsIGVycm9yIiwNCj4gPiA+
IMKgwqDCoMKgwqDCoMKgwqB9Ow0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgc3RhdGljIGNvbnN0IGNo
YXIgKiBjb25zdCBwYW5lbF9yZXBsYXlfc3RhdHVzW10gPSB7DQo+ID4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIlNpbmsgZGV2aWNlIGZyYW1lIGlzIGxvY2tlZCB0byB0aGUgU291
cmNlIGRldmljZSIsDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIlNpbmsg
ZGV2aWNlIGlzIGNvYXN0aW5nLCB1c2luZyB0aGUgVlRvdGFsIHRhcmdldCIsDQo+ID4gPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIlNpbmsgZGV2aWNlIGlzIGdvdmVybmluZyB0aGUg
ZnJhbWUgcmF0ZSAoZnJhbWUgcmF0ZQ0KPiA+ID4gdW5sb2NrIGlzIGdyYW50ZWQpIiwNCj4gPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAiU2luayBkZXZpY2UgaW4gdGhlIHByb2Nl
c3Mgb2YgcmUtbG9ja2luZyB3aXRoIHRoZQ0KPiA+ID4gU291cmNlIGRldmljZSIsDQo+ID4gPiAt
wqDCoMKgwqDCoMKgwqB9Ow0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGNvbnN0IGNoYXIgKnN0cjsN
Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcmV0Ow0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHU4
IHN0YXR1cywgZXJyb3Jfc3RhdHVzOw0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgdTMyIGlkeDsNCj4g
PiA+DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKCEoQ0FOX1BTUihpbnRlbF9kcCkgfHwgQ0FO
X1BBTkVMX1JFUExBWShpbnRlbF9kcCkpKSB7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHNlcV9wdXRzKG0sICJQU1IvUGFuZWwtUmVwbGF5IFVuc3VwcG9ydGVkXG4iKTsg
QEANCj4gPiA+IC0zNjAyLDE2ICszNTk1LDExIEBAIHN0YXRpYyBpbnQgaTkxNV9wc3Jfc2lua19z
dGF0dXNfc2hvdyhzdHJ1Y3QNCj4gPiA+IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0KPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHJldHVybiByZXQ7DQo+ID4gPg0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgc3RyID0gInVu
a25vd24iOw0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwLT5wc3IucGFuZWxfcmVw
bGF5X2VuYWJsZWQpIHsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZHgg
PSAoc3RhdHVzICYgRFBfU0lOS19GUkFNRV9MT0NLRURfTUFTSykgPj4NCj4gPiA+IERQX1NJTktf
RlJBTUVfTE9DS0VEX1NISUZUOw0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmIChpZHggPCBBUlJBWV9TSVpFKHBhbmVsX3JlcGxheV9zdGF0dXMpKQ0KPiA+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHIgPSBwYW5lbF9yZXBs
YXlfc3RhdHVzW2lkeF07DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKGludGVsX2Rw
LT5wc3IuZW5hYmxlZCkgew0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlk
eCA9IHN0YXR1cyAmIERQX1BTUl9TSU5LX1NUQVRFX01BU0s7DQo+ID4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaWYgKGlkeCA8IEFSUkFZX1NJWkUoc2lua19zdGF0dXMpKQ0KPiA+
ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHIgPSBz
aW5rX3N0YXR1c1tpZHhdOw0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgfQ0KPiA+ID4gK8KgwqDCoMKg
wqDCoMKgc3RhdHVzICY9IERQX1BTUl9TSU5LX1NUQVRFX01BU0s7DQo+ID4gPiArwqDCoMKgwqDC
oMKgwqBpZiAoc3RhdHVzIDwgQVJSQVlfU0laRShzaW5rX3N0YXR1cykpDQo+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RyID0gc2lua19zdGF0dXNbc3RhdHVzXTsNCj4gPiA+
ICvCoMKgwqDCoMKgwqDCoGVsc2UNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBzdHIgPSAidW5rbm93biI7DQo+ID4NCj4gPiBwc3JfZ2V0X3N0YXR1c19hbmRfZXJyb3Jfc3Rh
dHVzKCkgaXMgcmV0dXJuaW5nIGZyYW1lLWxvY2tlZC1zdGF0dXMgZm9yDQo+ID4gcGFuZWwgcmVw
bGF5LCBJdHMgZGlmZmVyZW50IGRwY2QNCj4gPiBEUF9TSU5LX0RFVklDRV9QUl9BTkRfRlJBTUVf
TE9DS19TVEFUVVMsIG5vdCBzYW1lIGxpa2UgcHNyLg0KPiANCj4gUGFuZWwgUmVwbGF5IFNUQVRV
UyB+PSBQU1IgU1RBVFVTIGlmIHlvdSBsb29rIGF0IGRlc2NyaXB0aW9uIG9mIHRoZQ0KPiByZWdp
c3RlcnMuIEZyYW1lIGxvY2sgc3RhdHVzIGlzIGNvbXBsZXRlbHkgZGlmZmVyZW50IHRoaW5nLiBJ
IGRvbid0IHVuZGVyc3RhbmQNCj4gd2h5IHBzciBzaW5rIHN0YXR1cyBkZWJ1Z2ZzIGludGVyZmFj
ZSBzaG91bGQgcHJpbnQgZnJhbWUgbG9jayBzdGF0dXMgZm9yIFBhbmVsDQo+IFJlcGxheT8NCg0K
SWYgd2UgZG8gbm90IHdhbnQgdG8gcHJpbnQgRFBfU0lOS19ERVZJQ0VfUFJfQU5EX0ZSQU1FX0xP
Q0tfU1RBVFVTIHRoZSBwc3JfZ2V0X3N0YXR1c19hbmRfZXJyb3Jfc3RhdHVzKCkgbmVlZCB0byBi
ZSBtb2RpZmllZC4gRG8geW91IGFncmVlPw0KDQpSZWdhcmRzLA0KQW5pbWVzaCANCj4gDQo+IEJS
LA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPiBBbmlt
ZXNoDQo+ID4NCj4gPiA+DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc2VxX3ByaW50ZihtLCAiU2lu
ayAlcyBzdGF0dXM6IDB4JXggWyVzXVxuIiwNCj4gPiA+IHBzcl9tb2RlX3N0cihpbnRlbF9kcCks
IHN0YXR1cywgc3RyKTsNCj4gPiA+DQo+ID4gPiAtLQ0KPiA+ID4gMi4zNC4xDQo+ID4NCg0K
