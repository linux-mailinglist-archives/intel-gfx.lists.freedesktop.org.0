Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E86E846A7E
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 09:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACCBF10E15C;
	Fri,  2 Feb 2024 08:20:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="llY6q0nm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37F110E15C
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 08:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706862015; x=1738398015;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=nWo7vZoycEe6oqiRD71mWZK6yzDcFtQ3i1IadV2FDZE=;
 b=llY6q0nmbYHP377NLMk2cOojW9MuakVLUgkkMmScw0ybdW+Mn/RnlF2J
 3FbIeDh2SBfw6Gf9DmGAaIFLgUgbgnHKAOGZj44sPe1jY7pr4Kaa88Tpy
 QV3vZWvD4vtKjr2aexMcekH4xHbzpTVHsMWBNBcKEUVIAIH/1q4dvvK00
 6AcaInzRlQyYlgpMG9CudU7Dk9dWe+PKiEI7lEjv0HdNbOYkCA7ddo3sS
 Gmy9waETt0kkM+b+rzRZ41JauKIclNT7oHfvH64jODqkwhklYyy9cVne0
 AC9t41h2EbUhbvHrPQPeeZUJYk+b7llGtcW/JimSafSpzcmqN4f3CbZeu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="402946042"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="402946042"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:20:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="4597706"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 00:20:14 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 00:20:13 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 00:20:13 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 00:20:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FpDuR+6lx03P/mAxhTwYKjbsk2H3dtNwwFacqTNyCqhxnR32ig0A4ZZkqw5l/gyaTcdpV89xyN914KnIqUvAX5slzDxuJOzLHpz1JU+KlgSgI6NOaikGT8TtKlCKFoeUnTXtE72cDPGN+g29fxwZR5fuUUWKJRsVtaGpSYhhliRd0w2SyaeXQRKglmFnf7TuaK8jtHg4oNQ8p2mIfx7sQs0CP25xuKvVjkpTbHhMQKig3EnAbKxz29WtbnkAv0HU8B6uXA5ic1Q2/NU49eUqUzxo7ofwNvbq6TinUTUILt4hz41qz1g2XLi8zr05y3Lm9u3kieIsU7WCOuBEXnBpYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nWo7vZoycEe6oqiRD71mWZK6yzDcFtQ3i1IadV2FDZE=;
 b=V6YkKJEVwT1kJnDjpsWAbzPcPqsqzfQ418W5W0U9t2B72EIYXp6eyItBHDFAVnBz9eH5cFFn3RLj3NPyfGzAHRIVisp/yJkWnorYT9LfZ7mwIvyQhuIjrOaIAFbfk9bZIWrV78XK5Fs+eOmYIikdFut989fPPeGlIN+ZjTDqUtZzgk7y+reet4/uNaGCflhwJPlpAPfPbJX8jd6aAvy/A8ugPE1B2qD2L3V9K1FQt+pHofJ9qgLTu2l/sCP6fLXqkGzDx1jgX6DysnXJ5Joz06IpnmxL6eykPAliWUped2sOyANA5K/OtBib1ABJw4K99QECkz3h7VU/EOIQ0PGGpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6970.namprd11.prod.outlook.com (2603:10b6:806:2aa::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.31; Fri, 2 Feb
 2024 08:20:11 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7249.025; Fri, 2 Feb 2024
 08:20:11 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 06/21] drm/i915/psr: Check possible errors for panel
 replay as well
Thread-Topic: [PATCH v3 06/21] drm/i915/psr: Check possible errors for panel
 replay as well
Thread-Index: AQHaSr/TJ8bvGiTARUi1Uh4HpIUgjLD2yPKAgAAC1AA=
Date: Fri, 2 Feb 2024 08:20:11 +0000
Message-ID: <7e914a8c0121376c601a3bbda5d1f3e7439cbbdb.camel@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-7-jouni.hogander@intel.com>
 <PH7PR11MB5981C75A1E5E64B3FC5C5374F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981C75A1E5E64B3FC5C5374F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6970:EE_
x-ms-office365-filtering-correlation-id: 41dfcb53-ecca-40f9-b1b9-08dc23c7c66a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p+dCZp4eKo2tu9A0fjbWJGK3gTQ35QAUsuyGSqGavPut7B6/LOlBwvsnbZmp6uN0w7YUDvgvcCF+AYJxxrhGP4cPWsM3qxIDMoDEjEGGeP8scz8zegkJLLZ4y+q8kk8t+MO5gksO46LILuCRE/EZLLumEsOEdWWKCKOmx5gIRoFGvccUuPePMCayH56GwOZDPW+xzglNhx109kNKDsfBiWAr0JSJ+312zyhhlf8hUolCRfcb12mMe9p3AmOQUSb7ZXkf4qQ5wrJ47oewBV2zCvsfo/TH7JU1uod5wMb8qzZ8lbJZrk4fA/+aGBn/quSmzt8Cjp82SDGOHErQFjPzuX7H2e3cNI5/+LDzYGFCRgGMrifp5U30NWB4BoKfjZudEyAd8kIH/SfsieRcCd8RFV4qjm1oweM/wIbiPJzaJyuvAsMLv9bdCqtdGK9H6IILfZsz5w34wNtkFka6hanwx4XLkDZd3wfgtmRGGjtRjmT+SmZGs+qeAKr157RvDx3vwuOvhXX43ZGF2ON67nt/dT+rliEX4JSesLBM/wmFEry/Fol37DKGn8Dv5jguamQdVb2WAkdx6SVUflsLjWp6Z458vG6YWe70pezkBBZIztuVieRao69nHDlEFR/1J5FP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(346002)(39860400002)(366004)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(316002)(76116006)(66446008)(8676002)(66476007)(2906002)(8936002)(86362001)(66946007)(5660300002)(66556008)(64756008)(36756003)(38070700009)(71200400001)(110136005)(82960400001)(38100700002)(122000001)(6506007)(478600001)(53546011)(83380400001)(6512007)(6486002)(2616005)(26005)(66574015)(41300700001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SkNiMGJ5TndMSGpYTzY5NHJoTFRZKzJ6R2RldUM0bHdjdE5vWmtROWpJcXhT?=
 =?utf-8?B?a0JhMElPMU45WGIzc0l2U1IwWW1CS3J0bVdWWlQwWnYwM0ZWTW9OcWJ2WkEz?=
 =?utf-8?B?dm1TSjFLUVVoeWtlZ1JZSGp5WkhOb2ZBL20rR0MyZUhTeTRoeVJ5cUc5cXRC?=
 =?utf-8?B?V0RuWXI5WVFacFB1VVdQQ0l2cmZQSmtCeDlMR1lmVHNDdk9nTmdPdW5tMVJF?=
 =?utf-8?B?VllMUDduQ1ZpS3RKQmtJMWlIc1hRU0lQWTdrTlQzanh1N2VFRmhOUURGT0hM?=
 =?utf-8?B?NU9uWUJaWTVoUEpvMkFpbGd0dmdlZzRzRTkrL0x6eDU5Y2FoajRQc1NFb0FS?=
 =?utf-8?B?NVNPZlA3SWwwUEZrVW1NSjdYcVVxcno3WnJBc1BRUCtKVTdEdzV0bUZxVWtY?=
 =?utf-8?B?ajNhRGgwZHUwN3RYWDZNcXE2b0VEMlduSWZ0NDlSd1dHTmhiZDhzMGRjNk1N?=
 =?utf-8?B?dUFIY0lkbWJPd2NJYlA2bVJwWVJNUWtSZ2JRb1JzUDcxZ0RGRG40MDUwYWtV?=
 =?utf-8?B?M2U2MDVRdXMvbmpJZWNFUjA5T3lZVktueWtjNk5pMFJNaG8xaXNRWmZlczhI?=
 =?utf-8?B?Smhyb2R4Q3BsNTdkcWx2NzFqQld2L0FoZlI2WWRWQit1dEdMb3BhSEVoS2sx?=
 =?utf-8?B?VDVkTDJpRyt2ZTlJdTdPZDRZWXJqRnhQZ2NNSjJRU05oeUFjTU9YQmlJNFVQ?=
 =?utf-8?B?dXlQVXNNdHpVb0h6emY5aU16cTBFVXBJYW1pV1puYi81aWNTV2t5bkpab3E2?=
 =?utf-8?B?UU9zVnZYRlBZNUhJMm96dkpGRmFDS3k1aHIvTlJacWEvUGFmY1IrZkY3LzZD?=
 =?utf-8?B?TEhxTkt4ZGhRbzBHS2NTRVlzL0orR01WRWFhcW1QcG42RDArMFhpb3BQR0NR?=
 =?utf-8?B?ZFpON1RnbFFtbDl0c3ZvcElIU3ZlSnNPczZCMFRrd2VsYTlWRUl4WEI0WVNR?=
 =?utf-8?B?YnRCYkVMVlgra0RrRWRXak9oTURZWnBhVVhWSDV5aUlINkkzN2VFallpdFNK?=
 =?utf-8?B?aVluNWdGZzZhamNJSHpYdThlYkF2MnpHSEtKTXBoM2drOFJPbnlpOXp2SERt?=
 =?utf-8?B?WEJSVHUxbmdhVkU3eWNaQllqWkZBajNPQmFVVXNWSzBYYittUWhvOHRsblhO?=
 =?utf-8?B?bGRCbm5SUExGUjAzNTg3N0c1dDV6RmxncG9nazRib0J6REQwWFRSeTl0V05I?=
 =?utf-8?B?NXFURWV4VmNHcGhhVDRXeFljZzl2dFZmaWp2MlU1aFJKcGttd1FRaFYyb0ZH?=
 =?utf-8?B?Q0EzQ3FLYXJaWTFsUGtLL2RvaXVrZHM3ZjNLSEJPbDZMQWVjM1FXUFhMdXNt?=
 =?utf-8?B?RlFvTVJoQzBObFVJOWgwREMrazd3RjMvZTY0RUltRzJxMkpUNkRHRk1KdTdX?=
 =?utf-8?B?RGlud2kxRkwyVjNyeDRscWdzVWVEeERMQnNaREtodk1kZ08yYml3VDNGcmVt?=
 =?utf-8?B?czlYS1EydEg2SklBUlliY1ZuTGlvT1h3UVZ3SnExRkRHbXR4SlN5SUlRZkt6?=
 =?utf-8?B?T084TWY0MS9ucUpZWHRpN1Q5VHdNWlZHb2dkb1VHcXlWdG53ejdsOVJFSSsr?=
 =?utf-8?B?REFRWVN2MXJTeVFhSXlpbEc2NDR3Ky9KRFQ0QTdqREg3NmNISFl1TjB2NHRB?=
 =?utf-8?B?aHBOUUFVN1hlL25aclVtcGdXTnNFbXRLdm1BT2llbzRGRDBLMkt3Vit2cmpy?=
 =?utf-8?B?VGlWNzZ6dVArYnFDWGRlYmtnRThjYSsyeVkzaXhvbWtoZGVqcnZtdGlNODdl?=
 =?utf-8?B?K1ZSUzhGT3dQVG4zMHI2U2grT3RnRmVYNXRBelJuYm1zdnk4ZnVseXBDQ3la?=
 =?utf-8?B?eVJQWTR3NjEyL05ocFJURjhBMXN5Ti9hOU9YZ2l2UlBEcUU0SUI5emp5bk04?=
 =?utf-8?B?dEhwUXRpY2U5MmUxekgzakhkTUZLVGZyN21NZEQxSk9QVldwR0JodnlDMTZv?=
 =?utf-8?B?WXFNWGxkL0N1WkZCNmo2TjBZVXY0c0tPSkxDK0MxY0FpR0hsOThRTmN5a29z?=
 =?utf-8?B?K3VlQWs1Wnc5eU5LNmxxeGliYWwyMk9XSVpRR0RIR0xGTGs3TUdWTFdJano2?=
 =?utf-8?B?ZUxnYzZNeXU2Lzdra0lCRm9aL2VRT3lPTDNjemlBcE0yYjVpMExac0R6Vmhm?=
 =?utf-8?B?dTg5Y2NZMTY1T2xHdUpnRWN6ZlBEM2dVZ3BCdVdXNFgwWjFDSXZHeDBJa2Zx?=
 =?utf-8?B?SGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <80EAB61F97C4044C97AFB0057911F113@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41dfcb53-ecca-40f9-b1b9-08dc23c7c66a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 08:20:11.3534 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E7oqQk/XwYxgANDCQXQPJF0YNE3gFfc9633XMhklKZlRgiVfAyNmjyvXpjo3o4QQj9DkN1QUfpdvWhbwueWvgPSogVQiLKNfni/L+C483Oo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6970
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

T24gRnJpLCAyMDI0LTAyLTAyIGF0IDA4OjEwICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogRnJpZGF5LCBK
YW51YXJ5IDE5LCAyMDI0IDM6NDAgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
OyBIb2dhbmRlciwgSm91bmkNCj4gPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IFN1
YmplY3Q6IFtQQVRDSCB2MyAwNi8yMV0gZHJtL2k5MTUvcHNyOiBDaGVjayBwb3NzaWJsZSBlcnJv
cnMgZm9yDQo+ID4gcGFuZWwNCj4gPiByZXBsYXkgYXMgd2VsbA0KPiA+IA0KPiA+IE9uIEhQRCBp
bnRlcnJ1cHQgd2Ugd2FudCB0byBjaGVjayBpZiB0aGUgcmVhc29uIGZvciBIUEQgd2FzIHNvbWUN
Cj4gPiBwYW5lbA0KPiA+IHJlcGxheSBlcnJvciBkZXRlY3RlZCBieSBtb25pdG9yL3BhbmVsLiBU
aGlzIGlzIGFscmVhZHkgZG9uZSBmb3INCj4gPiBQU1IuIFdlDQo+ID4gd2FudCB0byBkbyB0aGlz
IGZvciBwYW5lbCByZXBsYXkgYXMgd2VsbC4gTW9kaWZ5DQo+ID4gaW50ZWxfcHNyX3Nob3J0X3B1
bHNlIHRvDQo+ID4gc3VwcG9ydCBwYW5lbCByZXBsYXkgYXMgd2VsbC4NCj4gPiANCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
PiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAy
MSArKysrKysrKysrKysrKysrLS0tLQ0KPiA+IC0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxNiBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggODkzYzcyZWE4Y2YxLi42ZDdl
Zjc0MjAxZDIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiBAQCAtMjk1OSw2ICsyOTU5LDEzIEBAIHN0YXRpYyB2b2lkDQo+ID4gcHNyX2Nh
cGFiaWxpdHlfY2hhbmdlZF9jaGVjayhzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+
ID4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gPiDCoH0NCj4gPiANCj4gPiArLyoNCj4gPiArICogT24g
Y29tbW9uIGJpdHM6DQo+ID4gKyAqIERQX1BTUl9SRkJfU1RPUkFHRV9FUlJPUiA9PQ0KPiA+IERQ
X1BBTkVMX1JFUExBWV9SRkJfU1RPUkFHRV9FUlJPUg0KPiA+ICsgKiBEUF9QU1JfVlNDX1NEUF9V
TkNPUlJFQ1RBQkxFX0VSUk9SID09DQo+ID4gK0RQX1BBTkVMX1JFUExBWV9WU0NfU0RQX1VOQ09S
UkVDVEFCTEVfRVJST1INCj4gPiArICogRFBfUFNSX0xJTktfQ1JDX0VSUk9SID09IERQX1BBTkVM
X1JFUExBWV9MSU5LX0NSQ19FUlJPUg0KPiA+ICsgKiB0aGlzIGZ1bmN0aW9uIGlzIHJlbHlpbmcg
b24gUFNSIGRlZmluaXRpb25zwqAgKi8NCj4gPiDCoHZvaWQgaW50ZWxfcHNyX3Nob3J0X3B1bHNl
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApwqAgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4g
PiBAQCAtDQo+ID4gMjk2OCw3ICsyOTc1LDcgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uo
c3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERQX1BTUl9WU0NfU0RQX1VOQ09SUkVDVEFC
TEVfRVJST1IgfA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIERQX1BTUl9MSU5LX0NSQ19FUlJPUjsNCj4gPiANCj4gPiAtwqDCoMKgwqDCoMKg
wqBpZiAoIUNBTl9QU1IoaW50ZWxfZHApKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghQ0FOX1BT
UihpbnRlbF9kcCkgJiYgIUNBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKQ0KPiANCj4gSSBmZWVs
IGhlcmUgdGhlIGNvbmRpdGlvbiBjaGVjayB3b3VsZCBiZToNCj4gwqDCoMKgwqDCoMKgwqDCoGlm
ICghKENBTl9QU1IoaW50ZWxfZHApIHx8IENBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKSkNCg0K
VGhpcyBpcyBtYXR0ZXIgb2YgdGFzdGUuIFJlY2VpdmVkIHNvbWUgdGltZSBhZ28gb3Bwb3Npbmcg
Y29tbWVudC4gSQ0KZG9uJ3QgaGF2ZSBzdHJvbmcgb3BpbmlvbiBvbiB0aGlzLiBJLmUgSSBjYW4g
Y2hhbmdlIGl0Lg0KDQo+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm47DQo+ID4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoG11dGV4X2xvY2soJnBzci0+bG9jayk7
DQo+ID4gQEAgLTI5ODIsMTIgKzI5ODksMTQgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uo
c3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZ290byBleGl0Ow0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9DQo+ID4gDQo+ID4g
LcKgwqDCoMKgwqDCoMKgaWYgKHN0YXR1cyA9PSBEUF9QU1JfU0lOS19JTlRFUk5BTF9FUlJPUiB8
fCAoZXJyb3Jfc3RhdHVzICYNCj4gPiBlcnJvcnMpKSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYg
KCghcHNyLT5wYW5lbF9yZXBsYXlfZW5hYmxlZCAmJiBzdGF0dXMgPT0NCj4gPiBEUF9QU1JfU0lO
S19JTlRFUk5BTF9FUlJPUikgfHwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGVycm9yX3N0
YXR1cyAmIGVycm9ycykpIHsNCj4gDQo+IFRoaXMgd2lsbCBjaGVjayBvbmx5IGZvciBwc3IsIHJ0
PyAuLiBUaGUgZmxhZyBwYW5lbF9yZXBsYXlfZW5hYmxlZA0KPiB3aWxsIGJlIHRydWUgYW5kIHdp
bGwgbm90IGNoZWNrIGZvciBlcnJvciBzdGF0dXMgZm9yIHBhbmVsLXJlcGxheS4NCg0KSSB0aGlu
ayBEUF9QU1JfU0lOS19JTlRFUk5BTF9FUlJPUiBpcyBvbmx5IGluIFBTUiBzdGF0dXMgcmVnaXN0
ZXIuDQplcnJvcl9zdGF0dXMgYml0cyBhcmUgZm9yIGJvdGggYW5kIHRoZXkgYXJlIHN0aWxsIGNo
ZWNrZWQuDQoNCj4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9w
c3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHApOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcHNyLT5zaW5rX25vdF9yZWxpYWJsZSA9IHRydWU7DQo+ID4gwqDCoMKgwqDCoMKg
wqDCoH0NCj4gPiANCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoc3RhdHVzID09IERQX1BTUl9TSU5L
X0lOVEVSTkFMX0VSUk9SICYmICFlcnJvcl9zdGF0dXMpDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYg
KCFwc3ItPnBhbmVsX3JlcGxheV9lbmFibGVkICYmIHN0YXR1cyA9PQ0KPiA+IERQX1BTUl9TSU5L
X0lOVEVSTkFMX0VSUk9SICYmDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgICFlcnJvcl9zdGF0
dXMpDQo+IA0KPiBTYW1lIGRvdWJ0IGFzIGFib3ZlLg0KDQpEUF9QU1JfU0lOS19JTlRFUk5BTF9F
UlJPUiBkb2Vzbid0IGV4aXN0IGluIFBhbmVsIFJlcGxheSBzdGF0dXMNCnJlZ2lzdGVyLiBJLmUu
IGlmIHBhbmVsIHJlcGxheSBpcyBlbmFibGVkIGRvIG5vdCBjaGVjayBmdXJ0aGVyIGZvcg0KaW50
ZXJuYWwgZXJyb3Igb3IgZXJyb3Igc3RhdHVzIGJpdHMuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5k
ZXINCg0KPiANCj4gUmVnYXJkcywNCj4gQW5pbWVzaA0KPiANCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiUFNSIHNpbmsg
aW50ZXJuYWwgZXJyb3IsIGRpc2FibGluZw0KPiA+IFBTUlxuIik7DQo+ID4gwqDCoMKgwqDCoMKg
wqDCoGlmIChlcnJvcl9zdGF0dXMgJiBEUF9QU1JfUkZCX1NUT1JBR0VfRVJST1IpIEBAIC0zMDA3
LDgNCj4gPiArMzAxNiwxMCBAQCB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBjbGVhciBzdGF0dXMgcmVn
aXN0ZXIgKi8NCj4gPiDCoMKgwqDCoMKgwqDCoMKgZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9k
cC0+YXV4LCBEUF9QU1JfRVJST1JfU1RBVFVTLA0KPiA+IGVycm9yX3N0YXR1cyk7DQo+ID4gDQo+
ID4gLcKgwqDCoMKgwqDCoMKgcHNyX2FscG1fY2hlY2soaW50ZWxfZHApOw0KPiA+IC3CoMKgwqDC
oMKgwqDCoHBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2soaW50ZWxfZHApOw0KPiA+ICvCoMKg
wqDCoMKgwqDCoGlmICghcHNyLT5wYW5lbF9yZXBsYXlfZW5hYmxlZCkgew0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwc3JfYWxwbV9jaGVjayhpbnRlbF9kcCk7DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2so
aW50ZWxfZHApOw0KPiA+ICvCoMKgwqDCoMKgwqDCoH0NCj4gPiANCj4gPiDCoGV4aXQ6DQo+ID4g
wqDCoMKgwqDCoMKgwqDCoG11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsNCj4gPiAtLQ0KPiA+IDIu
MzQuMQ0KPiANCg0K
