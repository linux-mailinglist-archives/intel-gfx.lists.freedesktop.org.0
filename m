Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 505DB87C2D6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 19:35:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEA2A10FCCA;
	Thu, 14 Mar 2024 18:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ER17iIhw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0F310FCCA
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Mar 2024 18:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710441336; x=1741977336;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=OPyUuJaHuXLIGjCJMNJv3XNjmI5ia9l8fpt2GMybo8c=;
 b=ER17iIhwQNu7wNmOV4KrtMSSA/PeeHQT1A1YW3guHSHw60gEAHJN4pyQ
 Ya7Pf/Slo2n9VmDfl4e1dL33PEh4p6M9k2wCPT1iRyxBDZM3lgDkhDxkj
 1L3uB+PsEEJIy1uFXgHJIWIQyspMqg4lkJqPuN4Q4oLPA4FiS6siTDnkJ
 4GwPM8aqpdgD4tvDAV4pJDRLSZM9kBQwwkB+VJurdpvly5Xu1a3OHHdNa
 TcrHM4IJ42LijNskE7lXV99zQaA0etOoID8hyM4sxmDAJaiFHJC4XCDYj
 6aWEMovnL+AJxX4HWUSH6ZSawwCR9e6bVVnNxd8X1h/1JB1FVO55Utl65 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5411932"
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; 
   d="scan'208";a="5411932"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 11:35:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; d="scan'208";a="16856634"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 11:35:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 11:35:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 11:35:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 11:35:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AK0yU6YzfLl4aRS4uG62TO6GwuqmKGP3Y6A3dJXoSybvM59+gQRntSONN8KyoDvqfGIk+bA1OWBkYYWfNldoBRIuzgej1+Q1Z0Ic2F/cLFxhQFDFc+0e+wQSaaO54QUQckD04vHCLYHth9nlbV8/eCenp4kW/y4kbsQ9qXZLbiEknN8QtrzuFsNdYW9omwRD7fkToPLL/xcmXDqQlthrQIHKICZym33oMnAjaD03ZSWWoBSWAguuMm3CVIqChy4hNldT78cp+NjDUU5T2ktp46b5VFCOPBjWdlLW19NO7ZYhEyV9e2oQ2T9nrX66qI0Xs9z8NwiD+ZFyQdDZvsWP9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OPyUuJaHuXLIGjCJMNJv3XNjmI5ia9l8fpt2GMybo8c=;
 b=Gsiik/Dxyb4puh6QKYqI23wD3goP2m9uNtbWvB67YyK67yABIAVt+ZaNgqpNemAURz+4JiBPg2cqeujNVReL6CysOil/zJtV0KKJiH4a+idlo59uss55yU8fWAsXriHJKk7cT6l5/H/qgx29jPda9nhDX2PgOpMfz3FBuGTLx7UEzinrpgdlEJif+vpQp8WsC1JiP4lvv2omQQDEb25pWa+ej6tEWZlguaIv/B8Q1Ak7ClyYz1djqTKEOWqKMKYkO4AihCpwh4KYdMuIagjz/g7S2s3/6K+kLRjWYl2l9mtPCgpJ//R3LMjf8Fh+jr9jH4LWawjnYbGHZZnsfKVgTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by LV8PR11MB8485.namprd11.prod.outlook.com (2603:10b6:408:1e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.17; Thu, 14 Mar
 2024 18:35:24 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::872:479f:4c28:21b5]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::872:479f:4c28:21b5%6]) with mapi id 15.20.7386.016; Thu, 14 Mar 2024
 18:35:23 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>, LGCI Bug Filing
 <lgci.bug.filing@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UmVjYWxsOiDinJcgRmkuQ0kuSUdUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9k?=
 =?utf-8?B?cDogSW5jcmVhc2UgaWRsZSBwYXR0ZXJuIHdhaXQgdGltZW91dCB0byAybXMg?=
 =?utf-8?Q?(rev4)?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZHA6IEluY3Jl?=
 =?utf-8?Q?ase_idle_pattern_wait_timeout_to_2ms_(rev4)?=
Thread-Index: AQHadj5gCPjOZ3gRp0CoqH7kN2HsBA==
X-CallingTelephoneNumber: IPM.Note
X-VoiceMessageDuration: 1
X-FaxNumberOfPages: 0
Date: Thu, 14 Mar 2024 18:35:23 +0000
Message-ID: <PH8PR11MB6753E148FB9EC08401689CB4F2292@PH8PR11MB6753.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|LV8PR11MB8485:EE_
x-ms-office365-filtering-correlation-id: f559a710-bceb-4229-43fc-08dc445582d7
x-ms-exchange-recallreportgenerated: true
x-ms-exchange-recallreportcfmgenerated: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bl+9NLh/Hxmj/U2XZawydtf6c8o+n3W0NxyljWjedw3Fw9nc/Q62TaK0Rk26H+hADhiJdx3j7g9rTU6Eq6zTRcZcROI9UYMAqIS+HXhPdTphPGzVabxUpb9/f+BRqbiSvbtWBq8i86GDWgZBa97+3GCpgNzbOObgkAA2BJ4xaKaHnDhDDq/D+29PWAzRztZoC2+mqFo+LDMUxG43j0I15pZLsyrRaRf86UEgdJyX9JdZuOawoo4a+l5cRqDpE5nkdWk8p/WpZkcdHZLih14KRHZzr8GAqfQCAVC6f44NO2xNsOnGfSsZSPBGcgJ13RBjGw0cSQMlz9NeLT0foDly4inaL5AsTKZpuCGaFG//psa4BZ4JmZnHYyIVGX5DFa6Yv8RIPyRdpq9oiQaORR3F1yUe7Hm2cgf3BgtnZc8PlF2ebUp01Z1CIZu1P76PNIFRgq8orF/KlCyPi6SQSaHlTYTevuLlG8qiJtDLMexlwSL0QilDEpiBiOC7KDjwFF9bEJwGDwJ3MMRpe5RUuFpIfTFT2y60A7BgHSTJz6FvpkDcOh+NO5hpWfwCoirosks54AgMR0zJQmCvXMsTFYMn71uV8Zo1oQO5fyMQl4px77jF1QKh1CsQ61EmsOK8C0LxZAxqM8+499S7pl9Ir94JF8XpQxo1U/eUSrV+PPhhQ9JboxizerC9PAZ5QI67k2YDuQ78D4uRC2K43g4ywSQo1g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXpQSnlPeWdPTFRyRnBWMjFoTnJJVzZvSTk2MTNCRWV0bTFIc0JEalA4SkFL?=
 =?utf-8?B?a0RUM0ZDb1UrVnlQWWdERTVKMXNFeFh2aG55cDcrZ2pDUXU2UVMzeVF1dnBs?=
 =?utf-8?B?UFEvR1ZXV0FPVVNuTjgrb1pVUVBZaFdWMUxSaXI2ck05d3piNXV5TGJGaTFj?=
 =?utf-8?B?SEtDdkpxOFFnUVdWRFhiUkR1OXJOOS91ZU1Td2VIQ2QxbEFoRHhwRExoMnpl?=
 =?utf-8?B?R0ErcDlUY21ma0dNRzdUZWpWK3VxbEtuUUxDcCtJblhqai9NenkrcFB1WEQ0?=
 =?utf-8?B?OFFTWHhDbDh0R2VwdjZlNXZMSk5VRXdvNnBsUVpWak5NQ2dHTjdrSURXMU9J?=
 =?utf-8?B?My9sRlRlNWp2V0xPMXNaQ2d4anVhM0lMTk9yd2pwVWx3ajlNSHpla3ZCY3Br?=
 =?utf-8?B?eHFGcXI2V2pOVWRMYVRjd1NFL0NMdktNeG1GQno2d2R4emxkcXFtbm16N1NS?=
 =?utf-8?B?RjFuci9VL2oybGFlYWdYSE1kYngwTnk4VTV0V2ZBYXd4M1luN2sxKzlzbGdD?=
 =?utf-8?B?dzhOZkppUFlsUnA3bHE2KzE1b2puTTJNWGlqU2RiVmVWTnNwbFBKM0xoNnA4?=
 =?utf-8?B?YXcrN1lrb3Q3Qk9IK2hqU2RwUTRJdytyRDZkRXhQRmRXWjBueDkwMklhcFFq?=
 =?utf-8?B?aGI1TzQwZFpVSk1LZXY2MDdjYjYrSlR1MHFZamw4bWVackhqa0pqZXJnd0RS?=
 =?utf-8?B?OVFMQjJhYVFiK2pJWHZRbGFVZUNtTzBMYnJhKzliTFVlTmZlUVY5ay9IcDFY?=
 =?utf-8?B?STh0Wm1ma2ZZaTVCbWhkb2puSFhERy9mM1Jod0ZTclh0T2hFU1JZNHh3M01P?=
 =?utf-8?B?Z0pPWTdhS3BFRWptTWhrNnNtUFdnZDVZQTZ2SGthQndoWEVFQnhaTEc3ZXJF?=
 =?utf-8?B?TmVkVy9MWkRLZno5M1N5WlR3OE01UkxqeHdMWWhKVm9KZ25ZM0ZmcXdOSlpl?=
 =?utf-8?B?ZmhnNkt5Y3RQRUxzWXNLTHd3KzhlMXdtYUJvOGJxSS84SnV4MW51NDk2Uy84?=
 =?utf-8?B?emIvcnNhSG9xSWNhazMwYk5iWCt4cExrc3Y0TlhBTlZ5VERtQ01rS3g2aVUw?=
 =?utf-8?B?MGlQaXNHQnVnaGJiKzZMTVJiNzB6RnYrV05Qb0Q4OVdIQXFVZ1FFRGVsanY2?=
 =?utf-8?B?OUtlL1FKaGJrUGgyODJIaWVSeTZQZ1Axa1JWVXNudEFkMlVTYjE3c0NoWlRI?=
 =?utf-8?B?UVdDcWY4L2tVZy9lckhSN2ZXTnp4eTNvOWd1TUU3V09MdWVVQXFMbnd3Z3dn?=
 =?utf-8?B?YXZpVWl6T0R5TjI4OWJXT2RLazFseitBYkNqbFdkVjlPa2xHUXFzbG8xLzBa?=
 =?utf-8?B?aTgyU3dSM2ljbjJFanBxQ1UzV09YZm8xa3NxMWZvK0hEMU5IaUhZcklJcHll?=
 =?utf-8?B?b2NqaFNxeVdhbFhuTHBPRlJnOStCOUdLNkdZc212WDV5Y2ZLUnFQOEpqc2Z1?=
 =?utf-8?B?K2lrb2lzMnhoS2Jqb2lQSm5zZFF5UmxhUkMvT1FhVEJwTGRPYWlZVmcra2FH?=
 =?utf-8?B?QlBybVBoQ1FJOTU4LzYvRFBQN0VCbW9oWHI4QThnd3R4T1ZJN3FmY1FBdXpJ?=
 =?utf-8?B?K3NHZGJML2w0NThzWGhxSFc1L284bzc4cjlsUW9TZjNMR1h0YmxId0g5NWFC?=
 =?utf-8?B?NU11MFd6SUlLcjI5RmJaR1BjZHNXMjgxN1ByandkY2twbHJYQmd5TkNFMzNQ?=
 =?utf-8?B?NTBUVm9EV0NCNUNjYzlKVVlMS0p2cHUyeGhKV0hKK0lSNllJUUdIWVgwTnhW?=
 =?utf-8?B?WEhWM1FlQXpyME1lY0NSSmd2QnlTNmFJdG12TkduVmN2cGU4cEpuSXpVK05H?=
 =?utf-8?B?MGI3ZndnWk9LUklQUmx5ZXg2aFI5M2ZvUFd0dTl5MFNqNmRsLzBSMFhNMzhV?=
 =?utf-8?B?R0NIak4zblo0QmkwT3NSTDhTTmQ5T01hL0xhRFhjSkYybmNQTWlOQ3VuQkFV?=
 =?utf-8?B?NTllcmk5ODFoV0Zwc2oyK3RXWDFNRHBKUUZaTExVYXlNVkNxRXhVMFNqUGF3?=
 =?utf-8?B?VlVXeWxTVEU5VCt6R2p4Y0NrQ0luQ2xleG5HTFZjTS9XU2tDY1dpV3F2ZVA5?=
 =?utf-8?B?MGxvc3pBMmNWb3RIT3MweEg3TStmMmJ0aEw0RG9NVmZjdnpkTlZJcERwNlhL?=
 =?utf-8?B?bzVEU01YT0N2d3ZHNlYxRkF4Ty96T09xOGVGQVNRRktpa1lxUW1qNnB6NGtx?=
 =?utf-8?B?aWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f559a710-bceb-4229-43fc-08dc445582d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2024 18:35:23.7572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NIUEWw2PJt3VMQb8ZqGPQv4zMVeOH266/PpEUxKEPGrdj1jU9Lr61dmiD0ya3SRbQ0AUQhcMjKGntIBm7F6tGWKSFZfVGV69Q1LSz2lLdAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8485
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

SWxsaXBpbGxpLCBUZWphc3JlZVggd291bGQgbGlrZSB0byByZWNhbGwgdGhlIG1lc3NhZ2UsICLi
nJcgRmkuQ0kuSUdUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kcDogSW5jcmVhc2UgaWRsZSBwYXR0
ZXJuIHdhaXQgdGltZW91dCB0byAybXMgKHJldjQpIi4=
