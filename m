Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F3E6861FB
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 09:48:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C467B10E3BF;
	Wed,  1 Feb 2023 08:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AB0710E3BE
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 08:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675241315; x=1706777315;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kcZbE/kT3vHVDQbv+6b8scZ9UeFb2HPnX2N9SdHMzws=;
 b=cc50+2liLI0aQOe/1807/7INsdqqlDQQx/HkIM/3Mc+AZhJ+X7YWVLIM
 pyYjdOR4/b8dahBh4sifAd1Jev0JpjXX91MZyeSf992JRSvunoRgVWtOi
 kAvkAzxZkZGKtuZS/zuo6rjjUsFlB0yC27ACqbmTICgQKSzfl8L6eBOZ4
 2t8n8WfJmLy5oym4CzqBvuYig+PN0TQFYS8RvqLed3mQEei5AzKkiKRgK
 WLra4u4UoQv2o4vwXstYOGj0bJPdM8gwNFjaRcPF52aCSa1FcSI0XF3Ff
 7fFuMuJ1qd/3nbuKeZX/xiUhF70WBt1stKGJy054a/+GlwLuTIgMMeI5m A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="308432264"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="308432264"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 00:48:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="753597238"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="753597238"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Feb 2023 00:48:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 1 Feb 2023 00:48:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 1 Feb 2023 00:48:31 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 1 Feb 2023 00:48:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U3JIqTL/01m37xfFBMzp/ZfxVwWL4s4DtuxQ79Tq368N4VThIjqZmIKbfTE1RXcokXmEsLA4IWxU2V+8yJR8v21tItXwIIlDOtdlSOH9BprE55YWhuzpVsNcfCzhVYexCrEoqd0afvCr13szhw789wkltKUR0lUc08TFziD9khHF5uddOZwrd/jkouhNWQJObfokwkY6mOiZfbZPbyeQ75cLx1/cPGl0szdrcR04X4fTgHPk281YAt+9n8gPeboqnEfknJnjsPCSC+Wfts4QeIwLOEdSpDGJeA3mHav7UR0mY/YgNCOnOUxLy4iLb3+iuWqADxQaKAnU9KcR/eDDpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kcZbE/kT3vHVDQbv+6b8scZ9UeFb2HPnX2N9SdHMzws=;
 b=aaeLQwuasjwAT9QEd4Ims+GCY2wLWQPkFQ3zMbnhzZTphYQopA2njA9VDXiJx7RuqUdYZrTy5O9rUuK5Iiem5v4OjqBPXMCyJWomKPDbRSQolKfPsNPPTVIXbIvFqr2MS4ybmZyv3tBK9ghzlT7d8z28cLwNA45QdejLOsKOz1kn1GdVOZ9MSVE+VaGRBSJbSUqiLjSEBhsRyqHD5SHyFPRlJR1+vWIIWqKmnI/M9ZLtFN5z9cfyMPL8yMaLyDBYd+iQLSIaMmSjnn2qgpeT4goJykpGFWcT0o6ELqtYuHTWVDwn5CJyLh8KylYOMqI0vCPDoVJ0VRXpmgvo7ASeWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH8PR11MB6832.namprd11.prod.outlook.com (2603:10b6:510:22c::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.36; Wed, 1 Feb 2023 08:48:29 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::8901:2af2:6e02:c95c%4]) with mapi id 15.20.6043.033; Wed, 1 Feb 2023
 08:48:29 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v9 5/6] drm/i915/mtl: Add function to send command to GSC
 CS
Thread-Index: AQHZNT5X8dSmqehjQkeW4+DAs0QVVK65yWqA
Date: Wed, 1 Feb 2023 08:48:28 +0000
Message-ID: <20f86b7f8b0aea2fb32c6e6635d5e8cedcbdfc19.camel@intel.com>
References: <20230131063342.2811275-1-suraj.kandpal@intel.com>
 <20230131063342.2811275-6-suraj.kandpal@intel.com>
In-Reply-To: <20230131063342.2811275-6-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH8PR11MB6832:EE_
x-ms-office365-filtering-correlation-id: f62d4b7d-cd23-43e6-7a4c-08db043116fb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mZyhGGF4+cQO6pU8hU7xB64lKNRLdd9WBTlPJ2dUA7ZAwy+XiMBtwcafJ6oAdwJx7oVZnAkOEc0yHFy2tVghJOjBy1YVH1zRT1cPzz5tr9Q1ILxX6o9SgznmOz/scy58EWOC4J5dXmkbA31kix81FiqzS8pdcmxe1etCcCagAmQIYzEI7E7FKymMEX9kLaL8uyi57IUt7dcJ+TDFKaOxJ+QUif8BsTflh3lTVx3as+fsJ/fMJ4UJj26jcyAMnq3pPflWB06kSGTm+Evrz90vJ15fxQpw7TFTkjtrSpg/PDF35eJG4VWZu+2NjSU1zclDFL/99Xeoc48HB5OFClofIWFY/9N5r7o64+qIu+u6591N4E0cu4FBaNUV+QfphBOBO+KOFKvyuV9laK1HWb9R4L2CpDrcPomDBqPGOHSpcZGJuLzbbjdrFGnj0BWJXNSO07xwD9Q/zL9dnXR9nmeNcY+R/xJzkKXlJ1+WVnx6NEUs/gD7VfpHhbQxog3+x5ayCEaMMSAFefytWBkHH+FnY3iM18P5yJgI5VrvFgslG8aPsH3da5LCpXbUsFaek4JGqWMTI2CC2Z5qDlXCdvQwzQXZP5Wk+XKULOODDJ43b1JfTeg7D4wcg97v1QhigPupku4jtU2fiM1aZ4gpHfNf0teLerEbTx/q8kgZ0CUNHrGqDINRgFBHk5qpkvlfQAKW1+R5wK9WcZgKB+2HaeaEsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(39860400002)(366004)(396003)(376002)(451199018)(8936002)(41300700001)(107886003)(122000001)(86362001)(66556008)(66446008)(5660300002)(83380400001)(2616005)(38100700002)(66476007)(4326008)(76116006)(71200400001)(38070700005)(64756008)(6486002)(54906003)(66946007)(478600001)(110136005)(8676002)(82960400001)(91956017)(36756003)(316002)(6512007)(26005)(6506007)(186003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y3RUVnVYNmJpZFpmdWpoQk5YZ2drSTB6dENhYzJ5QXh3ajRnOGJTNXFESlBX?=
 =?utf-8?B?Y2tZM0hta2NDeW1ndHUvSWNmQTZjYTcrTUtOZlRpclIwVC9mMFFQU010bnNk?=
 =?utf-8?B?WlZuODlrUDJPSkdMOWM4YjJqV1RDTkIzci9BYUpWUFRoUWNKK3I5RnZLQ2Z6?=
 =?utf-8?B?alVVZTk4bjdzOE8wcnQydXZFVnorN0JsK2MzeG8yYXI1WHkwaEdqSkJLNEht?=
 =?utf-8?B?RXUycitBZkYxajAxK0xmYmxqVFpXZkh6Q2xqL0VqUHpnRU1NeUhlT0RWVVNQ?=
 =?utf-8?B?a0wrWnNuZElNdFpBMVg2NGU3Q1dVaExqbjJuaHo0R2JHcEkyWmhmV0ovVC9n?=
 =?utf-8?B?MUZzNWRoRE9DbGxQU2NBMG1kNWZZNkN1ZVFZRnVObExHcXZOUHRpVldzeHVk?=
 =?utf-8?B?L3dRMmdhVWRvczhkVytBS293OFhDbHl3NFRlK2FPeENUcXV5endhbTJyTC85?=
 =?utf-8?B?cFhyc0RoTEdNZGdqOWE3Z1NMeisrRWVtNnV4OWZocDFFdnVPbjkrKzhYRnF4?=
 =?utf-8?B?NlBtQ3BNSkU2WGpQUWtMeUJ3alRwcUFJYTc3emhRUDNiTThnTE81WUhndmhl?=
 =?utf-8?B?dG1xeGJZSXZHUWkxbDR2TEIxYTFmMkViYWszVG1aeG5hNkdGZytYY1hlc25m?=
 =?utf-8?B?WkdvQTlpZ1VTMTZDNm9kU0hQazE4d0g5c1JBNTFDT3BodG5aQTRTNm0rSDlD?=
 =?utf-8?B?UWE5b0I0dGVZMGJzQ0lKQXJFdVo3YnVRbm41UjBiS0VpTmNlNWpwbHpsOTVO?=
 =?utf-8?B?dDhEY0t0ZGZyZzhmbnhiYVRBWHMwcDd6NXNUMWx0MVhiVUV4SXBsWGZXa3Vm?=
 =?utf-8?B?WE9JR3JlTmNQcmpNWWd1RHhVeDd6dGJHbkg4b3ZOcEZmUkx3R0ZENDlQMUU4?=
 =?utf-8?B?dnZJRVlMaDZyaHRFT3VsbHp6ZUFnNmc0elBobFd2Yks5UFppNkhTSWNaOEJE?=
 =?utf-8?B?aGp1emhpT2NzWjFlOGdXMEd4WTRER1NaWHZldG9tWTdlR1RQZUJyZnlEa1BS?=
 =?utf-8?B?TU1hclNnLzJnSFJNSXlHUHM4anliTEV5Z1RlNHhyMkdXS1BSTTV6YTA2NGE0?=
 =?utf-8?B?eTFGeHRnTlc1RDV5ZVNLUFpsemdpQWJybUhEbkVkMy9RV3JKQ1dXL1VtL1E2?=
 =?utf-8?B?MEg2VHFsS2ZyVWhPTC9rU1p5VmFBckJKNnY4U1BUb2M5ZEsydHIvNTFrWEc2?=
 =?utf-8?B?OFNWTTY4V1dYWDIzS3ZES1hnZ0lLcnNUUHU0SXNxSVFmRHAzamlJVW5tYjJz?=
 =?utf-8?B?OUIrV29GQjA4ckVEckQ0ekJHeXZRMW1IQmxBQmQ2NFB6VWRMcFNhSHM1MVNw?=
 =?utf-8?B?aSt3aGpoZWIvZnNaWi80TlBWSHdzVURoL2wxaEdyTGdacjVuVGpkbHhKVzVl?=
 =?utf-8?B?Y1NRMGo5czlEWHN4MXRFMGxkcG9Hc0RYazA1ZCtxbWIzend5SEpIc3ZySEc5?=
 =?utf-8?B?U01KQko4dTNiMFRSWVE5TUtQMEFMRnBQTFdBamhZQ0szM2hrdmtsRXBzTWgz?=
 =?utf-8?B?NlN0blBXTnB3OWg3KzlrZDRQZnNFOTRuRWpDemZTR04yRW5kaGN0b29DNEFC?=
 =?utf-8?B?RWRqNTlmaGRVN2swSU1SMHhFbTY2dzVkaVRtWnpTWSs5cEJ2WmRJNmkvRTlP?=
 =?utf-8?B?NDh1bTRHcVd5cG80d2s4TGZDRUUxb29xbFA1ZmlhUGNINmxDM0t5TlJDbHFk?=
 =?utf-8?B?b0ZhV20zaktsSk9MeUZwYm9wWVhUOXhoWGppQjFmOWJ0NU4zRkhML250T2tn?=
 =?utf-8?B?TWR3VXJMZjVrempUeWVNelRrMWw4TklUSUU5cE5kNmVJdlhUS0VEek96VGNP?=
 =?utf-8?B?a0NXVVZUTkZ6VHVxNjdXdG8rSkpNZ3cvbnUzZkZ6RlNtajg0Z3BIR0x6YlVK?=
 =?utf-8?B?d1JzN1lvdHVsRzIzeWdhcmZ4ZHFyaUdkTWxpazZmQWJxa3FCU0ExQnRWNmtS?=
 =?utf-8?B?QURWQUdleUJrQ0FTeGQ0ajljWGYwU2NoR1RFZk5zVHh5d0Zmc3U5N2ZucGZq?=
 =?utf-8?B?MXN6ZUZDVkRRaldLYStTaERMQ09TYitSY01tUXV6Qkl1dElYK2hXT3o2Rml2?=
 =?utf-8?B?Mkhkd05tcnJHbFBRdUZBc0Y1UGNheDZwWituQUF3VVNCamxMbzFSempOOGI2?=
 =?utf-8?B?MCtYNzNrNkFrYnk3d2NYaHE0RjVyWEs1Z0hiZTM4Nk5vcUl2VnVhRkN5ZzdS?=
 =?utf-8?Q?k0PnQX5nkk/PkIaaQI8Cm1s1cMIALyfM/gDeYmzhs1pY?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1086DAD3E3A4E947856B8868D2392655@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f62d4b7d-cd23-43e6-7a4c-08db043116fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2023 08:48:28.8232 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ahJ5WTVU1H2+/1+KAP7BxVPzxW1tBrkvdXL6M3iI6tzo72fdcbdLgDzL2k7E55Moe9d2z6Y33/2OQSS9cYasVRLsMBolnQB55mU1At6ShbLvI1vwViuz7etv+ZGmL0MN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6832
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 5/6] drm/i915/mtl: Add function to send
 command to GSC CS
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

Q29uZGl0aW9uYWwgUmIgd2l0aCBiZWxvdyBmaXggaW4gaW50ZWxfaGRjcF9nc2NfZnJlZV9tZXNz
YWdlOg0KDQpSZXZpZXdlZC1ieTogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhp
c0BpbnRlbC5jb20+DQoNCk9uIFR1ZSwgMjAyMy0wMS0zMSBhdCAxMjowMyArMDUzMCwgS2FuZHBh
bCwgU3VyYWogd3JvdGU6DQo+IEFkZCBmdW5jdGlvbiB0aGF0IHRha2VzIGNhcmUgb2Ygc2VuZGlu
ZyBjb21tYW5kIHRvIGdzYyBjcy4gV2Ugc3RhcnQNCj4gb2Ygd2l0aCBhbGxvY2F0aW9uIG9mIG1l
bW9yeSBmb3Igb3VyIGNvbW1hbmQgaW50ZWxfaGRjcF9nc2NfbWVzc2FnZSB0aGF0DQo+IGNvbnRh
aW5zIGdzYyBjcyBtZW1vcnkgaGVhZGVyIGFzIGRpcmVjdGVkIGluIHNwZWNzIGZvbGxvd2VkIGJ5
IHRoZQ0KPiBhY3R1YWwgcGF5bG9hZCBoZGNwIG1lc3NhZ2UgdGhhdCB3ZSB3YW50IHRvIHNlbmQu
DQo+IFNwZWMgc3RhdGVzIHRoYXQgd2UgbmVlZCB0byBwb2xsIHBlbmRpbmcgYml0IG9mIHJlc3Bv
bnNlIGhlYWRlciBhcm91bmQNCj4gMjAgdGltZXMgZWFjaCB0cnkgYmVpbmcgNTBtcyBhcGFydCBo
ZW5jZSBhZGRpbmcgdGhhdCB0byBjdXJyZW50DQo+IGdzY19tc2dfc2VuZCBmdW5jdGlvbg0KPiBB
bHNvIHdlIHVzZSB0aGUgc2FtZSBmdW5jdGlvbiB0byB0YWtlIGNhcmUgb2YgYm90aCBzZW5kaW5n
IGFuZCByZWNlaXZpbmcNCj4gaGVuY2Ugbm8gc2VwYXJhdGUgZnVuY3Rpb24gdG8gZ2V0IHRoZSBy
ZXNwb25zZS4NCj4gDQo+IA0KYWxhbjpzbmlwLi4NCg0KPiArLypUaGlzIGZ1bmN0aW9uIGhlbHBz
IGFsbG9jYXRlIG1lbW9yeSBmb3IgdGhlIGNvbW1hbmQgdGhhdCB3ZSB3aWxsIHNlbmQgdG8gZ3Nj
IGNzICovDQo+ICtpbnQgaW50ZWxfaGRjcF9nc2NfaGRjcDJfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkNCj4gK3sNCj4gKw0KYWxhbjogb2theSBpIHNlZSB0aGlzIGlzIG5vdyBi
ZWluZyBjYWxsZWQgZnJvbSBpbnRlbF9oZGNwX2dzY19pbml0DQoNCj4gK3ZvaWQgaW50ZWxfaGRj
cF9nc2NfZnJlZV9tZXNzYWdlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiArew0K
PiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfaGRjcF9nc2NfbWVzc2FnZSAqaGRjcF9tZXNz
YWdlID0NCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGk5MTUtPmRpc3BsYXkuaGRjcC5oZGNwX21l
c3NhZ2U7DQo+ICvCoMKgwqDCoMKgwqDCoGlmIChoZGNwX21lc3NhZ2UtPnZtYSkNCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGk5MTVfdm1hX3VucGluKGZldGNoX2FuZF96ZXJvKCZo
ZGNwX21lc3NhZ2UtPnZtYSkpOw0KYWxhbjogaSBiZWxpZXZlIHlvdSBkb24ndCBuZWVkIHRoaXMg
ZXh0cmEgaTkxNV92bWFfdW5waW4uIEFsc28sIHRha2Ugbm90ZSB5b3UgaGF2ZSBhIGJ1ZyBhYm92
ZSAuLi4NCmZpcnN0IGNvZGUgZG9lcyBhICJmZXRjaF9hbmRfemVybyIgYW5kIHJpZ2h0IGFmdGVy
IHplcm8taW5nIG91dCBpdHMgdXNlZCB0byBjYWxsIGk5MTVfdm1hX3VucGluX2FuZF9yZWxlYXNl
DQpvbiB0aGUgbGluZSBiZWxvdy4gU28uLiAiaWYgKGhkY3BfbWVzc2FnZS0+dm1hKSAtPiBpOTE1
X3ZtYV91bnBpbl9hbmRfcmVsZWFzZSINCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBpOTE1X3ZtYV91
bnBpbl9hbmRfcmVsZWFzZSgmaGRjcF9tZXNzYWdlLT52bWEsIEk5MTVfVk1BX1JFTEVBU0VfTUFQ
KTsNCj4gK8KgwqDCoMKgwqDCoMKga2ZyZWUoaGRjcF9tZXNzYWdlKTsNCj4gK30NCj4gKw0KPiAN
Cg0KYWxhbjpzbmlwLi4NCj4gLS0gDQo+IDIuMjUuMQ0KPiANCg0K
