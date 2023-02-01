Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D5E686E60
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 19:49:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1C1610E188;
	Wed,  1 Feb 2023 18:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEBF210E188
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 18:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675277339; x=1706813339;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=B2uosNmvuaVo88cjaRz80vN5/Z2nyasb+nF9F1fCU44=;
 b=BQ+6JvJrm9NS3/whu6jbHqRBCE28Ag5N40hdg3W1fFu9wk03xellaIKN
 PnHEHlHs74kOG5faCMsOUmgUHlBtdI6AhAIA5wsvYFOQNc/CxGF6Ty5uD
 yS3aEkL4aRa5MR0ahmkSz2uNYRxuRU9MbFLIf7hHiIDtLvRJiysvyavb5
 MjsMfy55LKSLnSF/VApIgAQjSeRWGYkRxxqpppbxvLOugpionA2CCwXxD
 htgzQy9eoNCSh1CmKPzqLAoRu1Gbw2q4RheaprDjag/JomNVezZ642xTr
 K6vaokTHF8evggIWUt0icWX7CL35rH4b3nydXVnBUWOCEMaBMz0TNxGd2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="390631440"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="390631440"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 10:48:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="697381425"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="697381425"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 01 Feb 2023 10:48:35 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 10:48:35 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 1 Feb 2023 10:48:35 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Feb 2023 10:48:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OqK5dq36gVMSV3QW8waRNZ7BWST0IhQFUkchuFf8fjBPbiUtqXtQipWeO+sPFjSj/zt88HHwgGlSBjWJkIfqP434Jv3tkB4XDYguYFt5eNeGWikKGGdVCti2o29njSPGcBpgofbbbvvZSOJ8jRredwmgAQKwkGsRj61FNQURr76yOMeeqN5dfxj0hRpygcP4YKHOO0ZvuSFU8Zm7KH9WGuVe+xtZT+ItJ+RF19PIDO+P5H2FtS/mjphxptz9smFiVg8T3b8eKtshjo+w/eoPssW5fdLOzIOX4pd9ePknuwZcNBTiJLq8N0EQtBVitrCSFHjexV6hwhwwDrg5ueLa3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B2uosNmvuaVo88cjaRz80vN5/Z2nyasb+nF9F1fCU44=;
 b=LXAaB8Fnwl0ID3MreIels2pgucZUoNhoNhrPNChSJfQG4EObIuN0TJyfUN6FYeWIbBVW26ILQiZTwgKPUSpB3PuRgHflRvm+ulkepmJeYzIMf9CO1BK0BC2JiCXU6x3TKZTtn2tDxnq0FheQUyFABiP19+m8ISvNaBiTFLKTJwVz91dUIdC2awKRirzDVZ0s6hRh6Sj4WnJE9hTWYlDdgWkpqclvuu5SrePbgu6RR/xO8g+R0WQX/M3L/epZBWLpUYmqnOM2P4mvdnV/Gfkf8vyX52ZA5UT/q96kVxPo87Zt35hMbxSyXHw4pP6t3iwx8VppOu85XaamMtQftK4j+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3207.namprd11.prod.outlook.com (2603:10b6:a03:7c::14)
 by MW5PR11MB5905.namprd11.prod.outlook.com (2603:10b6:303:19f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.24; Wed, 1 Feb
 2023 18:48:33 +0000
Received: from BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::7454:4526:af70:14bb]) by BYAPR11MB3207.namprd11.prod.outlook.com
 ([fe80::7454:4526:af70:14bb%7]) with mapi id 15.20.6043.038; Wed, 1 Feb 2023
 18:48:33 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [RFC] drm/i915: make dev_priv usage explitic in some
 macros
Thread-Index: AQHZNl/tMA6GsPnLJk+6R91C/+4rda66VkKAgAAM+YCAAAuSAA==
Date: Wed, 1 Feb 2023 18:48:32 +0000
Message-ID: <011193b2b2facfe19c29e678a2711d2d66ef082e.camel@intel.com>
References: <20230201135329.514677-1-luciano.coelho@intel.com>
 <87zg9x1fev.fsf@intel.com>
 <4ec970306dfec2c9b4aa6dd8ec642649293aa371.camel@intel.com>
 <20230201180705.i3ghhomhnsl6kba3@ldmartin-desk2>
In-Reply-To: <20230201180705.i3ghhomhnsl6kba3@ldmartin-desk2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.3-1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3207:EE_|MW5PR11MB5905:EE_
x-ms-office365-filtering-correlation-id: 216dae60-60c0-4f8c-d8ad-08db0484eafa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vVcPvXl+uuBYRgs5UYcTjMbJ7csh89ET3DQlHuXX6ac3BCEe3PbdnyMVjlDWUS5xPiweAOdiuLXOyJB5hUFW4rTi36ZtwJ/G5jRuxxt7CVV2GgmdejO7Q0if16ZAfYM2iAXWAUXfVXfRTQfoRPx9QhPmD80Yk8lXwTbdnjoFpJJW4o/k4pybBVfkJY7i+hOuU4EPKxBUOnQ3AhVFjlSKxVVcXjgrzCrBKgVGHB1CbFrqDKNNmsgoe5au3Y1GjM/IPGLyTAC1oSqhKz1ZjfV6JSdPzUGlfS8ovuIY1HFNThhgm0cxbc90OzFrk4vkrdYLEFH0LxdGvsp+9hnh2vVyEVp7OoWC4ABfRLHgzMNPFrWw+VCD38XXabaopgq1Y64duD89p23MZ8cOu2IfjMtErprzJr4Z64DgpAlmbljQGKAI+iuTpxJcUULVGAJA2nKc4JVbSGyAFoMSZ/owRGFsHtpw1hpTkUVQAW9YRxUhE6Ns26QJMdCGHgnOGeLfljgpCU+y9ewzRIx9Qys9wPRT2Fg1o1jHVrdEHD9AlojrncDZ18xBHW6GLXZZc3jEpSfcrD7+nE3KwsGGNdTdGzdyOet3byezMvfJC8n1kQIz/zIH64/sOrSINik/WlG6gCALDyj1B/Ass/DAhkmMnCgjMFLm5DLraQIhRzmxiH0sOqBJ1Y4P1K9VWYvx1lLbdNbKp1JuIQvw6XrQCqNBXV43vA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3207.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(136003)(376002)(346002)(39860400002)(451199018)(8936002)(41300700001)(8676002)(66946007)(66556008)(478600001)(6486002)(86362001)(66446008)(64756008)(66476007)(76116006)(91956017)(4326008)(6862004)(71200400001)(37006003)(316002)(36756003)(6506007)(54906003)(6636002)(5660300002)(2906002)(38070700005)(6512007)(26005)(38100700002)(2616005)(186003)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWEyR0poaUI4Rk14WVVabnVVcTJIb1dmS0Q2QUlPaE42ZS82aTIvaGlxSUNt?=
 =?utf-8?B?S2V3R1kyd1NTL3FiY0VJdUYwMVFoWEljU3B3SC9XY0VJUklBUngwa0ZhaWZr?=
 =?utf-8?B?cFVFbk51RnVicFM1UlQrUFlmOHJjWnM1SVRydGxIYWcrQlFnWk56c3libCti?=
 =?utf-8?B?MTZ5Y2I5d1pKRFgwc2k1UkI5dlMzeTlHTElpR1Y3bmd6dVZIMWpiSVBhSDBh?=
 =?utf-8?B?NUtGMmY4V1Fqb2xpSVBUcE5wWGF2SWVkdDBPRUR2eUxIQ1VHUWo4QmZRRFZj?=
 =?utf-8?B?NXNJUkIrMk94OEVtUW1PTk4vdXVlMUJGOGlHUUpucUZWOXE4K21HeFlqVStT?=
 =?utf-8?B?MjFwRkhqbFZrK1N2SlFzZGRqUTdDN3ROWkRaQUFsTC9JQkZXak1qM2J4dnRh?=
 =?utf-8?B?NEZXMFJNMlFuSjBlaTZvVUVQZGV2ZllYWTRrYVM3RVFSRGpkVXU5Nms5M2xt?=
 =?utf-8?B?anpDT0VickcwOWJDbWVlamZHeDFFbXRwcDBVb2xzN2hpUFZ4SGRIdjdYL1Qz?=
 =?utf-8?B?OS9ERkxyN2FtOCtWZkNud002YjBZMVhMNVNEak9VU1BaVmw1MWppZzF1cDFv?=
 =?utf-8?B?K0kvTzhMSmNsRSttb3JpU2E5c25lU3pUUzJCakdyR2YrUlNtTThtL1J2RWpU?=
 =?utf-8?B?UjRYbzM2TEhxSUhMYzZhTndhQmlhYm9lR0RuT2tpNTAzN2g3Qk5nNDViQmpv?=
 =?utf-8?B?NlllQUdKQ1M1a0dCREJSMC9YQWNOL0F3Tk82VlhPYlR2Yk1VcWtwMVlpQ0dW?=
 =?utf-8?B?Yi9sSU43VjVhL2VqVlg5MlVCZXJDNUNvQmpLYmttcTZSajV3eFBOOUhZQUcx?=
 =?utf-8?B?ancyZGcxZXZLMlBCQ1ozdkV5Zk4vUURoSWNhSlFxL012azFRUEFEKzYxWXFk?=
 =?utf-8?B?cWR2Wm0xUGw4VG5FbW5nV09Qa0dSa0R1Q2xoMUgrd0JVdldpeHRkTzNYRDNC?=
 =?utf-8?B?ZS80YkRSUmYrUkJwcXpGSTN2MWZuYU5TYUpZWXl0dU1SeWZ5TmMvT1hnZXpZ?=
 =?utf-8?B?VU8wL1MyOFpxRXM3amdBNmZkeWtyR1EzeStmRUZnaVc2ZzFBWWFSWTNJSjEv?=
 =?utf-8?B?NFA4M3BGb3JsMGpyNmZENHZvT1hnYkxxSzhQVkc3eFhtTTRjUm95SVg3elA0?=
 =?utf-8?B?RGtvOGhyeTdaajY5SmlYWlh2cERaRnF5VCtzOGVQNDN1amtHaXBHTjhGSndJ?=
 =?utf-8?B?UmR5K0puRUdoM2FtUEJ5a3RMV1FlN2NUS08rZnVRRlBIdzZaSFcrS2xyWTF4?=
 =?utf-8?B?RmRFVUJBZ0pQYmpqUVhMZWtTcjRmRzM1NG0wQTJBU0ZjeEdBelZLelp0N3py?=
 =?utf-8?B?Rlh4TFdEVm9VRC9TRk5iRGlnQnQ3akFNNDVmaG9KS1d3VFYrREhLVzk4d2ZS?=
 =?utf-8?B?ekR2d2Z3bkRXWWxLdyswcUt1MWx1WDNNall5TVhvMGIvOFl4dEtIUTJvOFdS?=
 =?utf-8?B?eGtYY3JJSHJRTjBkbjFybS9VUmhEVnNjL1hsb1hMVks3ZUpNMjh1WEdQR21S?=
 =?utf-8?B?ZDk5aWtXM291SVJTZE82UGhtNk9ybnlaTEZ2VW1uTEF6ZERQOHpwa0JnSklR?=
 =?utf-8?B?MnM1bTJ1K0I4WGtKRTY1OVFnSHl4SEFUcWdqQytkRU8rMkRJL3dBem1WbURZ?=
 =?utf-8?B?RXVxN1k4RlF1MXllS3oyK3RiejdvTENCbm0wbkhuTXV1QjRyNjZuMDJVZWlk?=
 =?utf-8?B?a1JVQlo5RHhzRU5PU2NKdGxvWXpQOFFTMk11Z3Jrb2hqTENvMWIwVFVpQlVJ?=
 =?utf-8?B?MlNsZVBzWXJvYzZwM1h0NlQxTmR1VHFheThBWm55NXRob3BSVTk4NlVXN0Ra?=
 =?utf-8?B?STJHSjhybjJsd0hWZjdNOTFXQWJoSkVGRWJKME5JWW9PN1I1UlhUVTc1eWJx?=
 =?utf-8?B?a0lob1I0ZTJiako5bldXNnZFTmJsWVVWMUViZlM1djlzMWdKWGF4ZjZRQXcw?=
 =?utf-8?B?UWluU1J6Vk5oMU1XYnBuek0vN0JpdUNyK3ZpU25Dbkx2WEVTaHJKclVqaVpl?=
 =?utf-8?B?dzZDUDlpYTYyeEdrVWthemNxSUNFdGdiWERyTEFmaEJzQjArSXp4anZ5YXJo?=
 =?utf-8?B?VXJPdkJvRXdyZTI4cStZajFwUVRwcVBMbXFzSnFMbGJiM1hmWlpabFJuM3J2?=
 =?utf-8?B?eDNXN1dMSGR1ak8wWGZnWkpING9CQzBScWMzTHgvbnB2ZkJKeDIxQ3RpRE5X?=
 =?utf-8?B?Rnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A119510DD319054FA94810DAB7857E8D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3207.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 216dae60-60c0-4f8c-d8ad-08db0484eafa
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2023 18:48:32.6934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ocTNfD6ySaOky4yPTA29jAkOxwr55MlAEXoz+Q9g36oue+we+PoKWwEfgGHR4K97IwgHdm4Hpj4ZGN21VSNwEq6DPh9xQ7RWRqmyhN6hdJ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5905
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC] drm/i915: make dev_priv usage explitic in
 some macros
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTAyLTAxIGF0IDEwOjA3IC0wODAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFdlZCwgRmViIDAxLCAyMDIzIGF0IDA5OjIwOjQyQU0gLTA4MDAsIENvZWxobywgTHVj
aWFubyB3cm90ZToNCj4gPiBPbiBXZWQsIDIwMjMtMDItMDEgYXQgMTk6MDkgKzAyMDAsIEphbmkg
TmlrdWxhIHdyb3RlOg0KPiA+ID4gT24gV2VkLCAwMSBGZWIgMjAyMywgTHVjYSBDb2VsaG8gPGx1
Y2lhbm8uY29lbGhvQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gPiA+IFRoZXJlIGFyZSBhIGZldyBt
YWNyb3MgKGUuZy4gRFBMTCgpKSB0aGF0IGltcGxpY2l0bHkgdXNlIGRldl9wcml2LCBieQ0KPiA+
ID4gPiB1c2luZyBvdGhlciBtYWNyb3MgdGhhdCBpbXBsY2l0aWx5IHVzZSBkZXZfcHJpdi4NCj4g
PiA+ID4gDQo+ID4gPiA+IEluIGFuIGVmZm9ydCB0byBhbGlnbiBhbGwgZGVmaW5pdGlvbnMgb2Yg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgdG8gYmUNCj4gPiA+ID4gZGVjbGFyZWQgYXMgaTkxNSBp
bnN0ZWFkIG9mIGFyYml0cmFyaWx5IHVzaW5nIGVpdGhlciBpOTE1IG9yIGRldl9wcml2LA0KPiA+
ID4gPiB3ZSBuZWVkIHRvIG1ha2UgdGhlc2UgbWFjcm9zIGV4cGxpY2l0bHkgdXNlIGRldl9wcml2
LCBzbyB0aGF0IHdlIGNhbg0KPiA+ID4gPiBjaGFuZ2UgdGhlbSBsYXRlciB0byBiZSBkZWZpbmVk
IGFzIGk5MTUuDQo+ID4gPiANCj4gPiA+IEx1Y2FzIHBvc3RlZCBhIHNsaWdodGx5IHJlbGF0ZWQg
cGF0Y2ggWzFdLCBhbmQgSSB0aGluayBiYXNlZCBvbiB0aGUNCj4gPiA+IGRpc2N1c3Npb24gd2Ug
c2hvdWxkIHByb2JhYmx5IGFkZCBBVVggYW5kIERQTEwgcmVnaXN0ZXJzIHRoYXQgYXJlDQo+ID4g
PiBWTFYvQ0hWIHNwZWNpZmljLCBhbmQgaW5jbHVkZSB0aGUgTU1JTyBvZmZzZXQgZGlyZWN0bHkg
d2l0aG91dCBkZXZfcHJpdiwNCj4gPiA+IGFuZCBub24tVkxWL0NIViBtYWNyb3MgdGhhdCB3aWxs
IGhhdmUgTU1JTyBvZmZzZXQgMC4gVGhpcyB3b3VsZCByZWR1Y2UNCj4gPiA+IHRoZSBpbXBsaWNp
dCBkZXZfcHJpdiBjb25zaWRlcmFibHksIGFuZCBhdm9pZCB0aGUgbmVlZCB0byBwYXNzIGk5MTUN
Cj4gPiA+IHBvaW50ZXIgdG8gdGhvc2UgcmVnaXN0ZXIgbWFjcm9zIGFsdG9nZXRoZXIuDQo+ID4g
DQo+ID4gWWVzLCBJIHNhdyB0aGF0Lg0KPiA+IA0KPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3JlZ3MuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaV9yZWdzLmgNCj4gPiA+ID4gaW5kZXggYWJiZTQyN2U0
NjJlLi5kMDBlOTMyMTA2NGEgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvdmx2X2RzaV9yZWdzLmgNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS92bHZfZHNpX3JlZ3MuaA0KPiA+ID4gPiBAQCAtMTAwLDcgKzEwMCw3IEBA
DQo+ID4gPiA+IA0KPiA+ID4gPiAgI2RlZmluZSBfTUlQSUFfREVWSUNFX1JFQURZCQkoX01JUElf
TU1JT19CQVNFKGRldl9wcml2KSArIDB4YjAwMCkNCj4gPiA+ID4gICNkZWZpbmUgX01JUElDX0RF
VklDRV9SRUFEWQkJKF9NSVBJX01NSU9fQkFTRShkZXZfcHJpdikgKyAweGI4MDApDQo+ID4gPiA+
IC0jZGVmaW5lIE1JUElfREVWSUNFX1JFQURZKHBvcnQpCQlfTU1JT19NSVBJKHBvcnQsIF9NSVBJ
QV9ERVZJQ0VfUkVBRFksIF9NSVBJQ19ERVZJQ0VfUkVBRFkpDQo+ID4gPiA+ICsjZGVmaW5lIE1J
UElfREVWSUNFX1JFQURZKGRldl9wcml2LCBwb3J0KSBfTU1JT19NSVBJKHBvcnQsIF9NSVBJQV9E
RVZJQ0VfUkVBRFksIF9NSVBJQ19ERVZJQ0VfUkVBRFkpDQo+ID4gPiANCj4gPiA+IFdoaWxlIHRo
aXMga2luZCBvZiBwYXNzZXMgZGV2X3ByaXYgYXMgcGFyYW1ldGVyLCB0aGUgZGV2X3ByaXYgaW4N
Cj4gPiA+IF9NSVBJQV9ERVZJQ0VfUkVBRFkgYW5kIF9NSVBJQ19ERVZJQ0VfUkVBRFkgaXMgc3Rp
bGwgaW1wbGljaXQuDQo+ID4gDQo+ID4gWWVzLCB0aGlzIHdhcyBvbiBwdXJwb3NlIGFuZCBteSBz
ZWNvbmQgY2hhbmdlIGlzIHRvIG1vZGlmeSB0aGUgdGhlDQo+ID4gY2FsbHMgdG8gdGhlIGlubmVy
IG1hY3JvcyB0byBwYXNzIHRoZSBwYXJhbWV0ZXIgYXMgd2VsbC4NCj4gPiANCj4gPiBJbiBhbnkg
Y2FzZSwgdGhpcyBhbHJlYWR5IHdvcmtzIGFzIGlzLCBldmVuIGlmIHdlIHBhc3MgaTkxNSB0bw0K
PiA+IE1JUElfREVWSUNFX1JFQURZKCkgaGVyZSwgYmVjYXVzZSB0aGUgZGV2X3ByaXYgdGhhdCBN
SVBJKl9ERVZJQ0VfUkVBRFkNCj4gPiB1c2Ugd2lsbCBiZSBleHBhbmRlZCAgdG8gd2hhdGV2ZXIg
d2UgcGFzc2VkIGFzIGRldl9wcml2IHRvIHRoZSBvdXRlcg0KPiA+IG1hY3JvLg0KPiA+IA0KPiA+
IA0KPiA+ID4gSSB0aGluayB0aGVzZSBjb3VsZCB1c2UgYSBzaW1pbGFyIHRyZWF0bWVudCBhcyBp
biBbMV0sIG1vdmluZyB0aGUNCj4gPiA+IF9NSVBJX01NSU9fQkFTRSgpIHBhcnQgb25lIGxldmVs
IHVwLg0KPiA+IA0KPiA+IFllcywgYW5kIHRoaXMgY2FuIGFsc28gYmUgZG9uZSB3aXRoIG1vcmUg
cnVsZXMgYWZ0ZXIgbXkgb3RoZXIgcGF0Y2hlcy4NCj4gPiBUaGUgcHJvYmxlbSBpcyBpZiB3ZSBh
bGwgc3RhcnQgbWFraW5nIGNoYW5nZXMgaW4gdGhpcyBhcmVhIGF0IHRoZSBzYW1lDQo+ID4gdGlt
ZSwgdGhlbiB0aGVyZSB3aWxsIGJlIGNvbmZsaWN0IGFmdGVyIGNvbmZsaWN0Lg0KPiANCj4gQXMg
SSBzaGFyZWQgcHJldmlvdXNseSBJIHRoaW5rIHRoZXNlIG1hbnVhbCBjaGFuZ2VzIG5lZWQgdG8g
Y29tZQ0KPiAqYmVmb3JlKiBub3QgYWZ0ZXIgLSB3aHkgd291bGQgeW91IGNoYW5nZSB0aGUgY2Fs
bGVycyB0byBwYXNzIGRldl9wcml2DQo+IGFuZCB0aGVuIHVsdGltYXRlbHkgcmVtb3ZlPyBMZXQg
dGhlIHNjcmlwdGVkIGNoYW5nZXMgb25seSBkbyB0aGUNCj4gYWRkaXRpb24gb2YgZGV2X3ByaXYg
dG8gdGhlIGNhbGxlcnMsIGFmdGVyIHlvdSByZW1vdmVkIHRoZSBvbmVzIHRoYXQNCj4gc2hvdWxk
bid0IGhhdmUgaXQgYXQgYWxsDQo+IA0KPiBUaGlzIG1ha2VzIHRoZSBzY3JpcHQgZWFzaWVyIHRv
IHdyaXRlIGFuZCBydW4gYW5kIGNhbiBiZSBwb3N0cG9uZWQgdG8NCj4gd2hlbiB0aGUgYnJhbmNo
ZXMgYXJlIGluIHN5bmMgaWYgd2UgYXJlIGdvaW5nIHRvIGNyb3NzIHRoZSBkaXNwbGF5Lw0KPiBi
b3VuZGFyeS4NCg0KWWVzLCB5b3UncmUgdG90YWxseSByaWdodC4gIFNvcnJ5IGlmIG15IGNvbW1l
bnQgY2FtZSBvdXQgbmVnYXRpdmUsIHRoYXQNCndhcyBub3QgbXkgaW50ZW50LiAgV2UncmUgb2J2
aW91c2x5IGFsbCB3b3JraW5nIG9uIHRoZSBzYW1lIGNvZGUgYmFzZQ0Kc28gd2Ugd29yayBpbiBw
YXJhbGxlbCBhbmQgY29uZmxpY3RzIGFyZSBhIHBhcnQgb2YgbmF0dXJlLiA6KQ0KDQoNCj4gQW55
d2F5IHNpbmNlIHlvdSBhcmUgY2hhbmdpbmcgdGhpcywgSSdsbCBob2xkIG9mZiBvbiBtb3JlIHBh
dGNoZXMNCj4gcmVsYXRlZCB0byBpdC4NCg0KSXQncyBtYXliZSBhIGJpdCBlYXNpZXIgbGlrZSB0
aGF0LCBidXQgaW4gYW55IGNhc2UgdGhlIGJlYXV0eSBvZg0Kc2VtYW50aWMgcGF0Y2hlcyBpcyB0
aGF0IHRoZXkgc2hvdWxkICJ1bmRlcnN0YW5kIiBvdGhlciBjaGFuZ2VzIGFuZCBhY3QNCmFjY29y
ZGluZ2x5LiAgV2l0aCB5b3VyIGNoYW5nZXMsIG15IHJ1bGVzIHdvdWxkbid0IG1hdGNodGhvc2Ug
Y2FzZXMNCmFueW1vcmUsIGJ1dCB3b3VsZCBzdGlsbCBtYXRjaCBvdGhlciBvbmVzLg0KDQpSZWdh
cmRpbmcgYWRkaW5nIGFyZ3VtZW50cyBqdXN0IHRvIHJlbW92ZSB0aGVtIGxhdGVyLCBJIHRoaW5r
IGl0J3Mgb2theQ0KaWYgd2UgZG9uJ3Qgd2FudCB0byBkbyBldmVyeXRoaW5nIGluIGEgZ2lnYW50
aWMgcGF0Y2guICBPbmUgcGF0Y2ggaXMNCmx5aW5nIHRoZSBmb3VuZGF0aW9uIGZvciB0aGUgbmV4
dCB0aGF0IHdpbGwgYWN0dWFsbHkgbWFrZSB0aGluZ3MNCmNsZWFuZXIuICBJdCdzIGEgYml0IGVh
c2llciB0byByZXZpZXcsIElNSE8uICBXZSBwcm9iYWJseSBjYW4sIGluIHRoZQ0KZW5kLCBiZWZv
cmUgYWN0dWFsbHkgbWVyZ2luZyB0aGUgY2hhbmdlcywgc3F1YXNoIGV2ZXJ5dGhpbmcgdG9nZXRo
ZXIgdG8NCmF2b2lkIGFkZGluZy1qdXN0LXRvLXJlbW92ZS4gIExldCdzIHNlZSBob3cgaXQgZ29l
cy4NCg0KVGhhbmtzIGZvciB0aGUgY29tbWVudHMhDQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
