Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPimImDmC2rHQQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 06:26:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C8F57738C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 06:26:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FBB610E16E;
	Tue, 19 May 2026 04:26:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hcO7eMtq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B26EE10E0C2;
 Tue, 19 May 2026 04:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779164765; x=1810700765;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ByYKyBjg9CbmipNybhSQWrZbHRqPhD6afDLjr1Tsh1U=;
 b=hcO7eMtqZCj6TWNocVOaZQtlYq5PepxAeEzk59/ij5KlTLDvS0JjyjMq
 b8R4/XrrcdlAy49zGvBosm+/IX6RWqcdhUa7jz5Y3mVv8Bz0TiYYGxvjH
 j3qr2aynXQqchYfJxNfHLuAVZch2uL7jpIbQ436dYYKLaUMvJNJ/1/ehA
 k7YW44m++LS4BG/Q+QDaPPzUCW00cHLyITNMjvH0OtC+6WjH1Myh7bRJi
 EaMuYuW+ufGWzhpDmZoaOIopzrBsbOwYUzsoog+BuMXscxJoSX4Fv9JxO
 /thD40wVRw8hMBOJfrwYEG0NNGLduM5+rBqg/FUm0uty3g7SaKPe7VQeM w==;
X-CSE-ConnectionGUID: U2vKcvNzT02cZgmbzIELzg==
X-CSE-MsgGUID: qI6rKw/SRIi+Lw+mZd8XKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="83888526"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="83888526"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 21:26:04 -0700
X-CSE-ConnectionGUID: 3BECeHjeSReDBB9NcrVx5Q==
X-CSE-MsgGUID: FDBcmCQLR0yqg5YnvHQuow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="238655233"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 21:26:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 21:26:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 21:26:03 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.54) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 21:26:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B9/m/E10kiD7lNaOrqCUn6IxujlSvl26NqJLqUoWo2Bu21JirYooOgSCsRs1EUjCHnehagQFFHwmCJs/64/qs327essGlmomAbGVBmCyX/LMsy1JLfJgidS3aho9HJR5r5jTAds1Md8ts69EB8PH4C2VCWhckeUuahGczYcJ7y9a3jCg9xH1Es4QorQAaLAIP45kdQY9PuVUAYEuhRWiwVPd0oCEmi7nw3Ye11Eh4y0YKRucClMDnHxbKwrtuziZ6jczvIMgxcwJxR3Ni9fCXAs94JBf1up6lIFpQnV0f8uVv4eY3mRek39fJClDmJZ1cEnJIzkBVNTBiKjvTWBIvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ByYKyBjg9CbmipNybhSQWrZbHRqPhD6afDLjr1Tsh1U=;
 b=bpnT/+ylUKqFtKXx8RJm14e10qoPYDAJK+lZ/tqYQb81fcqGEfpH3V73/DKcM+Xntg4qYuL/f0AswmwUFZoRThoBKPihN1Q32FZrj3koDHY5tKRIxcAoQlC3UHmD0LCy3O0LzNDoBszex/VMK9J/pYf1KYkk4I0NVEjq//I697SGxqBDnai2jzHqDO5t17xzSHQakF1Dr0qMVVIoyTK52YM75fcbTM9y0KzvSmHFHCoRM1CLYP1cy4pkxcZfX1/OM/tmYorRM8FhEviEMlB8f5G4YVttduI009STEqV3mjH7jinBbWizILI1msHblvxDCEwHEgDKibIs9CFi0Gt6yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DSVPR11MB9694.namprd11.prod.outlook.com
 (2603:10b6:8:34d::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Tue, 19 May
 2026 04:26:02 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 04:26:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Grzelak, Michal"
 <michal.grzelak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v3 03/31] drm/i915/bios: log unsupported VS/PE-O parsing
Thread-Topic: [PATCH v3 03/31] drm/i915/bios: log unsupported VS/PE-O parsing
Thread-Index: AQHc3cFP/NwvG4GNFEOFwcNEgcWwjbYTLEoAgAGnIEA=
Date: Tue, 19 May 2026 04:26:01 +0000
Message-ID: <DM3PPF208195D8D6CE70E37485A7D71E204E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-4-michal.grzelak@intel.com>
 <DM3PPF208195D8DD99F697F238A2D0CBC37E3032@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DD99F697F238A2D0CBC37E3032@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DSVPR11MB9694:EE_
x-ms-office365-filtering-correlation-id: b4db1449-ad86-4541-ebb0-08deb55ebbba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|3023799003|4143699003|11063799003|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: ihAHhXUjOPFEFEeokLLsP0nv6awzGk3c9T70P6zbIwDl8k9Jy+cW8YzXn9A5ObaHFVrplORdXZdApPmI+DBTqdCXN9MBC3zGyecaNpcwYnz4JmkvD3Wbqye9RuQoeRA2uu6tTtCKGjHSLCpklsLpgPZV2lMbY6tWPY60dqrfIQ3H9ba3QBAduRSX6mt6CrJBubVTpCBJIN2KKEjJwF1RqCa01Eqwidlx4UgtFOTbtxanHUofK5m6gOflU/NbauwKKprncn3aFXsg3QzLUx/rMfKp1kYIvMzWqKdRKAV+S/yLLPEvM6VMemB3ka6QROXPwImge0VnQ3tSNwNH86btQzS6LpPHTU15Y6hxcnV5fyJXBWFt9u10ES9B9p2ugKziGI627OkqWdBu945cNlk79pMhLMCTl7FJHnlfdY8AHSi2rlkKMyQ0ShZo8RiEQoIMcD6cn0DZ1mWhqHEsssMYPCH+PjeOhrt+z+O5EVqgeOiEkZgYgJR0HqXfyoIzTq/nYkzh3tDUm6iHPNcLRuFcu0rvSZnvlTtTOqoQsEGusiHXAxdqZTbEgTtS/mcwepal5RDZcyBaaHIVV8sKxzG26ZnMt8MGt5m0HTcAx8ABxuh3m54EM4djH8CCzFOcksfhVT+zWrEE+CeDJCxd96mFV+JB/XhgvwJn/VYZaxKX16arS718U4CD9RZUVW2DEwBsWzFmm4y+pY8QFB8636GvNxyHs8jX1wR887uqCu5+v09DeH40NH5fweaLmM/IY6kG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(3023799003)(4143699003)(11063799003)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2p4NUxnSG9YTHZBVDNsV0VaRGkxTVlwTU9FMmh4bHo1clVMOS9Vcy9rbHBT?=
 =?utf-8?B?NFJheEJDSStyNGM4RDFnQ2RNdmhXdTcvYjB0ZlEyZUpBSnZBaVhJRjg3ZkhX?=
 =?utf-8?B?di9Ob0lSTzREdVN0RDZSUEdTSHptaGZpR0p1MHBwQzZVN3IvYWV0Szg4QjlM?=
 =?utf-8?B?aVRLaUoxbmxmV2EvV3NOMExVYlFwdWxEczQ1Si9IL0ZsUEdwZWdvQ3ZtT1VF?=
 =?utf-8?B?KzVXR3JFbnlHYnVGZVY0K3k4TnUyVUZwblkxUjVqK0xtQTFabXhLOC9YNW5x?=
 =?utf-8?B?eGQzVHFydnJiaVhMRm43cm5pS3VLcjQ5T05jRHQxamxCV1hkSmpLTmg1d0l4?=
 =?utf-8?B?dlZ3YTQ3N3drZXJnaDA2RnBNNzFyd3hXL0ljdzd4SXE2M0IrU3JSbWVGMXQz?=
 =?utf-8?B?bEYxcW9tZ211c0hlMUZJdzNVK28rZk15eVNneTlwcFZDcGc5YjkyeVQyaUJa?=
 =?utf-8?B?N21ua2ZDWGRobEh1RnN3Qnd3RXdpdFd4QVdPNTRGS2pkVnpZeGZuM1pUSXho?=
 =?utf-8?B?Y3d5K0RidkxpUWpFYlY1bXlQeVBPbWpXenNtMHRMUjVIVzFuNDFEU2V3M2lB?=
 =?utf-8?B?UkhBODRLeTNWajNFT1VNOTZqZnFBdzBjbGhOMzdvME1nRjE4TUlZN0lLVVRm?=
 =?utf-8?B?dkZVMEZpajhBZnl0WVBFSDY2YW9kWUN3bXI4SWFNeXdSM3llNXc5aXp1Mm0x?=
 =?utf-8?B?b0cxektKME9pZ0FQRWQ0VS83NXdaMy9nUDBRamFnQWpOemM2Znh0bWdnQWdS?=
 =?utf-8?B?ODR6S3VRdTFRdVoydU1UR0g2UWF0QSt0UytNUTFjV2lsdkNpdGovckljcWUx?=
 =?utf-8?B?WC9MQzJ3N1RNbDlIU1lQOSt3UkFlL0FvMHVoS3pUbVl2dFprNzYvRFlTcTJa?=
 =?utf-8?B?Sm9nYjBLK2duSVlkTUdybTRMQ0ZoOWM0bXNTNmpMM2Rzc2lmWUhYVGRackE1?=
 =?utf-8?B?Y2NzTnVLNW9ZbXJnbklERS81SjBIRmg3YkQwMllYWmFmWmgyOHY4VFI5SGpQ?=
 =?utf-8?B?WGRZSHRnRlpsTlRhSVQxREZEbWlSdFZzOGtTTVcxRHYzUG9FUmYyZytMaERC?=
 =?utf-8?B?TWtUcmVTVTE4RWk2cE5TMTFMTWZSeGI2WFZ3OXZsakZOT0xDSDJ0T093Rk5L?=
 =?utf-8?B?WE1HSFJNZ1Y1UjNwY1hiVFpjd240OFMydGd5WHlteVM0ZzFUZ0dLTy9IcFNZ?=
 =?utf-8?B?SGVLQ0JlU2taTDJybTlSMS81VDRFd0Y5bTFSYzZTUG45VXU1M24xUTg1enV6?=
 =?utf-8?B?VktBYjIyRnRPUDNOOGpIVzhKMXhuY2pJZ1ViM3UxOTBocDZaTlI5VnF5NWpU?=
 =?utf-8?B?a3dUSmpvWFM0VWJLUjcvclBPY1hMa0d3OWRCUEFMN1gvZmsyODI2UDROUWJv?=
 =?utf-8?B?aWtOKzZTMVlZcjJtZVVxSEJ4QmU0MklPQkRWYUFWRVpURnNtbStLc1piQ0d1?=
 =?utf-8?B?aitDS1FCYTZTdWN6OHZETWJUbitCVUpQTEUrb0hqKzlTdzNmTlRQMWFnV01E?=
 =?utf-8?B?eGtKS1Z5djBMYjg0Y0pNdUVETEpERHdFVEhFM1QxM2JDR2cyWE1rYXptdExL?=
 =?utf-8?B?SGVwWjh0dFB4dGhtVFRic0ZkSFpxZGRrejdxcHo5YXR6dG9KUVNVVytiY3Uw?=
 =?utf-8?B?N0JCUW1sZFp6b0pUTEJ6Y1VmcTBvUDZmK1VIcjZVU2loNW1GWm0zeFZCWlJw?=
 =?utf-8?B?L001cGd2VDQ3N3QvSExmWElaREl4KzhZLzhwK1VEUHJCQmFjWVVYYkU0UG9J?=
 =?utf-8?B?TWt0NzFmdUsxeGI2TDA4N0w3M2llUDBkL0E4cWtlK0tyYS9zcDhaL2o0ZFM0?=
 =?utf-8?B?eU1ZSFNsVnJVZzNiNmplcDBndlZLS0ZRZlYyY2h3eFJRNnhZTDY4b0xqNzlq?=
 =?utf-8?B?QWdiMTNWYjhrMm5LejhPMEJFYnRlbGNtK09BUTdzcjlGSU13dGxBVkhZcHBB?=
 =?utf-8?B?VCtYeTV4eXR5MWIzQnBld2RlMjRNSUFyN2VjOUF6T0o0TnV2T2YvSTY0VGt5?=
 =?utf-8?B?ZVVTNG1hOCtlN3ZVNytxL1JmUE04VVljbm9YRVFSdmdxRElTQ0VZNm9pMXpt?=
 =?utf-8?B?d2ZWOStsSWorY0hURmlEcXYzbEx3Z2xDVzE5c0Y3cjFuTDFwd2I1QzdkSHlo?=
 =?utf-8?B?RkdLY2duRTVwaUp4Yis2OWVvdUJoQmEvQWRHeXZEeDA1bS9lZklTZUptMzdK?=
 =?utf-8?B?ODdndjR5MUxUT2ViZFpQaWRiUEd4OWZhZWxUL2pSQ0RPRzZuQnMvVFBGSUZl?=
 =?utf-8?B?dVpLUyt6cHl3emw2QW1lMks4UGxzS2tMbWZZS3J4eFA2TzA0MmVTd1ByaWlj?=
 =?utf-8?B?OE00bHV2aWI0NlI0QjNTL1d1UW16bjNZU1JCT2FEUVpjcHV4dzFUUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: w5AOJTKPLmp8w6N0+W/ZoLipeaeNsAFFDazRSmYx9+PlWH3sLobT0ATxCh3TcyaRXq6XBuBjXZnceoVjgrO1+vDa/7HFzu/EySQQ7UCqWh/qyEb7eRZV4Kg7M4vyVuqJaKeqOE5p5HTWW1YGB4m8aGApAmY/ydQH0L8dpE4cbdRAY3f8BZ2GflrJtlZ2ZWKm6HFXaq2vd8sCuGa81+y/WiPlEvqE4KVh97efWOxxOKUWex+8JsPW1FwdD8CijRvIrzqqYZT54fYw/nUTUYuVGGNxJy97x3olq5GVQuDeuxriSrIO4ZnqIKigGQ0YbmQIEMWzWOvDHdR1VJNywODsuQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4db1449-ad86-4541-ebb0-08deb55ebbba
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 04:26:01.3944 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w4J3V+Ma5/f1HdgyepfbhH10QbYAdQaMKRtG4lHnM6IpAcWRmn0yyczYylGDsE28JGvzWEslMFpWegZsr4Ueig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSVPR11MB9694
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E7C8F57738C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBSRTogW1BBVENIIHYzIDAzLzMxXSBkcm0vaTkxNS9iaW9zOiBsb2cgdW5zdXBw
b3J0ZWQgVlMvUEUtTw0KPiBwYXJzaW5nDQo+IA0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2MyAwMy8z
MV0gZHJtL2k5MTUvYmlvczogbG9nIHVuc3VwcG9ydGVkIFZTL1BFLU8NCj4gPiBwYXJzaW5nDQo+
ID4NCj4gPiBTZWFyY2ggZm9yIFZCVCAjNTcuIENoZWNrIGZvciBmYWlsdXJlIHNpbmNlIHByZS1J
Q0wgR09QcyBkbyBub3QNCj4gPiBjb250YWluIHRoZSBibG9jay4gQ2hlY2sgYWxzbyBpZiBWQlQg
dmVyc2lvbiBpcyBhcHByb3ByaWF0ZWx5IHVwLXRvLWRhdGUuDQo+ID4NCj4gPiBJc3N1ZSBhIGRl
YnVnIG1lc3NhZ2Ugd2hlbiBwb3J0IHJlcXVlc3RzIHRvIG92ZXJyaWRlIFZTL1BFIGFuZCBwYXJz
aW5nDQo+ID4gVkJUDQo+ID4gIzU3IGZvciB0aGUgcGxhdGZvcm0gaGFzIG5vdCB5ZXQgYmVlbiBp
bXBsZW1lbnRlZC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgR3J6ZWxhayA8bWlj
aGFsLmdyemVsYWtAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDE4ICsrKysrKysrKysrKysrKysrKw0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+IGluZGV4IDU3MDBkZTQzOGZkZmQuLjNm
OWU0ZDMxYzczNzUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYw0KPiA+IEBAIC0yMTg1LDYgKzIxODUsMjMgQEAgcGFyc2VfY29tcHJlc3Npb25f
cGFyYW1ldGVycyhzdHJ1Y3QNCj4gPiBpbnRlbF9kaXNwbGF5DQo+ID4gKmRpc3BsYXkpDQo+ID4g
IAl9DQo+ID4gIH0NCj4gPg0KPiA+ICtzdGF0aWMgdm9pZA0KPiA+ICtwYXJzZV92c3dpbmdfcHJl
ZW1waF9vdmVycmlkZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgew0KPiA+ICsJY29u
c3Qgc3RydWN0IGJkYl92c3dpbmdfcHJlZW1waCAqYmxvY2s7DQo+ID4gKw0KPiA+ICsJaWYgKGRp
c3BsYXktPnZidC52ZXJzaW9uIDwgMjE4KQ0KPiA+ICsJCXJldHVybjsNCj4gPiArDQo+ID4gKwli
bG9jayA9IGJkYl9maW5kX3NlY3Rpb24oZGlzcGxheSwgQkRCX1ZTV0lOR19QUkVFTVBIKTsNCj4g
PiArDQo+ID4gKwkvKiBwcmUtSUNMIEdPUCBkb24ndCBoYXZlIFZCVCAjNTcgKi8NCj4gDQo+IElm
IHdlIGFscmVhZHkga25vdyBwcmUgSUNMIGRvZXMgaGF2ZSBWQlQgIzU3IGZvciBzdXJlIHdoeSBl
dmVuIHRyeSB0aGUgZmluZA0KPiBzZWN0aW9uIGZvciBjaGVjayB2YnQgdmVyc2lvbnMgbGV0cyBq
dXN0IHJldHVybiBlYXJseSBhZnRlciBkaXNwbGF5X3ZlcigpIGNoZWNrICwNCj4gd2hpY2ggaXMg
ZG9uZSBldmVuIGJlZm9yZSB0aGUgdmJ0LnZlcnNpb24gY2hlY2sgLg0KPiANCj4gUmVnYXJkcywN
Cj4gU3VyYWogS2FuZHBhbA0KPiANCj4gPiArCWlmICghYmxvY2spDQo+ID4gKwkJcmV0dXJuOw0K
PiA+ICsNCj4gPiArCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIlZTL1BFLU8gcGFyc2luZyBu
b3QgeWV0IHN1cHBvcnRlZFxuIik7DQoNCkFsc28gbGV0cyByZW1vdmUgdGhpcyBkcm1fZGJnX2tt
cyBkb2VzIG5vdCByZWFsbHkgaGVscCBoZXJlIGFuZCBuZWVkcyB0byBiZSByZW1vdmVkIGJ5IHRo
ZSBlbmQgb2YgdGhpcyBwYXRjaCBzZXJpZXMgYW55d2F5cw0KDQpSZWdhcmRzLA0KU3VyYWogS2Fu
ZHBhbA0KDQo+IH0NCj4gPiArDQo+ID4gIHN0YXRpYyB1OCB0cmFuc2xhdGVfaWJvb3N0KHN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCB1OCB2YWwpICB7DQo+ID4gIAlzdGF0aWMgY29uc3Qg
dTggbWFwcGluZ1tdID0geyAxLCAzLCA3IH07IC8qIFNlZSBWQlQgc3BlYyAqLyBAQA0KPiA+IC0z
Mjc2LDYNCj4gPiArMzI5Myw3IEBAIHZvaWQgaW50ZWxfYmlvc19pbml0KHN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5KQ0KPiA+DQo+ID4gIAkvKiBEZXBlbmRzIG9uIGNoaWxkIGRldmljZSBs
aXN0ICovDQo+ID4gIAlwYXJzZV9jb21wcmVzc2lvbl9wYXJhbWV0ZXJzKGRpc3BsYXkpOw0KPiA+
ICsJcGFyc2VfdnN3aW5nX3ByZWVtcGhfb3ZlcnJpZGUoZGlzcGxheSk7DQo+ID4NCj4gPiAgb3V0
Og0KPiA+ICAJaWYgKCF2YnQpIHsNCj4gPiAtLQ0KPiA+IDIuNDUuMg0KDQo=
