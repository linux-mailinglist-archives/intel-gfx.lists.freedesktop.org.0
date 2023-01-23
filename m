Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EAE677AAE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 13:21:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E117310E348;
	Mon, 23 Jan 2023 12:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2096A10E348
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 12:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674476458; x=1706012458;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+77sAIp18VZdYPVRVoxwchQ3CONoBO/4g0UML/J1ffw=;
 b=UbsaXoHNaiL56w/qFsRq2qLJqsfIOlV3X6jYYVK2GrNOflLxy3rTJdma
 f6+bCetaeruv2xAb9DupStFY008vxjWS0l3vjbArDIvzGokDJZ2IRl/rW
 xztY+YhmimylJyv1Ql8OGX1a+QOgpSzrLlyvm7Z40NdMdWvO9vQAdbFFO
 Hp98l3xFQDWnT35t1vjpQAhMvGIvlMq8ofdZLKbN5NR+JkwVTlg/q/Yx+
 94oJc9uJQ8rF8f03vjZ59R0JdzEIamftJ6CN/aiNf0B0UuN3YEjiYt51h
 hR4OMzqAUm2vcPqN7jTcm8/kGGlQ5ANqEgsD9b4uxK3Kk3X+Dsd87XvaJ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="313922870"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="313922870"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 04:20:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="835453826"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="835453826"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 23 Jan 2023 04:20:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 04:20:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 04:20:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 04:20:56 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 04:20:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LBC2d7WUvOfW4CoSZRNc/9yDSkMOt6i4lqC5KCoNY1EJDHx8Ube2wV9adF3/il3/K4enTPZBhnfw0bYF384W4IISQq4eTStBTfhUzupqtFTCqn1ikS8GvVWTp8FgULnq2b+A+xfKFSN1J5WN/0PC2u1E+uSUQL1RMM/NorW4hBaEd8p39/7I23A79uz3r6m4Y6JMnJobRoutYMRIjhBtduILdBTyON5d5K/QoU6rPFkW7uuDH4bWBt/Kl3IybQOkCkzG3MHCnYK/dMjhp8vxs2tiZS9pz/LbTyolq4kNOz90xFgCs9xBO1XyyxSyAkv5QorAvtTrMQbNj0SEfptq2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+77sAIp18VZdYPVRVoxwchQ3CONoBO/4g0UML/J1ffw=;
 b=ZH1biTTHaj6pRwm8mMnQl347ALAmmbxMtvw/qsD0QVu3jgGCHKGEUqOPom1EZEu3DSNo00FQejyyXIxDVQuY6kKlFRsyXuHg0+BtmROjux0QtWwsIzhbbJJOTjGU0QdYFClR2Jw5BHmfzkLGHUBS8WRoetPHUIX2h4aAHD/CLy7f9wDgp0GSzexTi9X9i0nFB5sLxcC1QhDxWAArIBns4AkHHgoAyYyGze2BaqAZ+ZL1SK9sGsZYBYI42dsatU1ray5Sy8IpqLJJzzwo5F9qD1zaNaPmdYcYKnUBl6KQco26QfjG+2nOzgITEWmZ9PeUbHha00EsaLzBPnY3ncP8Jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB5144.namprd11.prod.outlook.com (2603:10b6:510:3e::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.33; Mon, 23 Jan 2023 12:20:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::1a7c:e221:1ca2:f43%8]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 12:20:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Thread-Topic: [PATCH v4] drm/i915/fbdev: Implement fb_dirty for intel custom
 fb helper
Thread-Index: AQHZLv6a5f/GCleKCUS15L0YPf7iqa6r4IyAgAALuwA=
Date: Mon, 23 Jan 2023 12:20:53 +0000
Message-ID: <654a535c8399ba0aefb27773b7c3fbf926d3c9dc.camel@intel.com>
References: <20230123074437.475103-1-jouni.hogander@intel.com>
 <7ee0c0c6-2620-38a6-76da-07c792950dd4@suse.de>
In-Reply-To: <7ee0c0c6-2620-38a6-76da-07c792950dd4@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB5144:EE_
x-ms-office365-filtering-correlation-id: 92266235-b954-4565-26c0-08dafd3c45a6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aYNbHn/4lfv5ffAcbe2nBLccwB7Tye2cxWPSIn4Aj4NlcwqiTfHUEK1TueZKKzfGBLy6WWBtP0xM5HhRfVl/29timnvj/+K4dU4j+Guo/ISEj02hGLIH5PSUJ98uzG/kpB9nEoQ5ZGm2J09KjIxpBhpOiDb/nAakU8PU/CAvek4YWKNI6IKiKJxfFA7kJorcZHrcKi3i+OgCRaKaG8OszJADXaUwQXrQG/ZSZlsmkOSYmLsVNSBdZgFGVMI3t7bI8cSIn/MMAKlyRJt+cFUikvN8rtK57YFhZ+nLrs1+17A+aK335tprKxb/KwF8TO3PvEJsVRzN7kcdfkrRlOdBq+ejFc+R2wr9tShrp6a+RjY5Htfs4goX/DFr+Ug83JXZttEe+PzP16Ff7CZYdOOLwb1nBvfVpg533knTx2CQF/MzNBMPr/vEBx3plTiPSDb9rP+I1qTuL2Q+arcG5wI2hFGvQnbN7y+iQ0po4utyt0LCw34AF/C24c90If7inD2Ux+TFI/fGBeOvhxpTTNhnP3bkcTYaYtLaB7sO5SrenpFt/rjMOudAWSFHfQpun6LhK+zUQHrFAxvdQIAv385DdZOvUYdXEypMwC/ALIDlURHwRnIQPg1l09nngFHqwhrOkb4gMW2ydaK2nDIKBcJjOTTgzRrMPgSv0+LQAmEWbjchbT7BUgtrT3JTWDusLhSuoBEjgp2JS9qTs0PiXoW30mrBffeEsPESK4zn8jsDb3krtq5tM4aCH9pbriiBOKH0n9bBh26yTSqYtQye3RPi8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(376002)(39860400002)(346002)(396003)(451199015)(122000001)(38100700002)(82960400001)(36756003)(86362001)(478600001)(38070700005)(316002)(54906003)(110136005)(6486002)(66446008)(64756008)(8676002)(76116006)(66946007)(66556008)(66476007)(4326008)(91956017)(2616005)(66574015)(71200400001)(2906002)(6506007)(83380400001)(26005)(5660300002)(6512007)(41300700001)(186003)(8936002)(14143004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V2FZejhaNndLR0tobGd0eXVQd1RreFI5dVpDMmcxSjMwUkNkSWRVNVJGSVcx?=
 =?utf-8?B?czRKci9Gb01Jdi9SSW4wLzhLMUl2Nk51aUZoNHU4K0kzQVc2TFBiRXk1a0Ru?=
 =?utf-8?B?YisyU3c4N2ZZTHZHMTBHYXM3T0pjVTVqbEdXcm9MeGw0RHFMU1I5Rzlick1B?=
 =?utf-8?B?bDZ1MlZHRDhYT0RLN1hCQmtJMHVqcU5Tek9tUFpoL1NqMjF6WUUyVnhGZVNV?=
 =?utf-8?B?eDN1K1VWVU9MV2ZxWnRhSSsyMDIwUTlXMHBzM1ZTMHp6QlNjdEcxK29KRFcz?=
 =?utf-8?B?Z1VpclUyNCtHRHg2dlMrS1VZeVRDVXNWQ21VMWd3MjljbVRSNnI0eTZTUFhB?=
 =?utf-8?B?RjdXeWFaWTN6V1NGQnVhamVuSGNZTXB3NDFKTnNxQXVTTDloMWFaU2d6NWtv?=
 =?utf-8?B?ZXM4ZWR3WW5NcndBV2M0TVZwQU1ZWTVnUmxBZk5TQ3JaUFppUHN0M0ZTR3pE?=
 =?utf-8?B?aW5naVViWGFUaHFwQnRlTk1lWkdnTWJYOFZXbGxWSldRdDBRbVNBU2V5ZVBi?=
 =?utf-8?B?RGVHSWdIU3k4VHFjK09WckdmM2REL1E1aC9YQVJrK3NqT0RwMW1adTRxZG1J?=
 =?utf-8?B?VHZQUTQ3eEtFYlJvT09pdHJDNDFRODBBQ1JoVVd2Y21MZCthczZHRFJMUHBP?=
 =?utf-8?B?OXJMekxhMTc2SFdjTkJUUFZ5cWlIOWNoLzdrcTh4Mm12QVQ3YVp3aWpMUk9C?=
 =?utf-8?B?QkUxZ3FtajZYWWRnbW1MTVdqb1hrakkxM1hlbkQwZU1TSnF1RUIrTVkxdXl2?=
 =?utf-8?B?NlFMYndKSEN4VnphMzA2UWpBYWt6U1YzM3RWa3BLQm9xK1hyMVlrcC9VOXdF?=
 =?utf-8?B?S2RFTkU0L2hxQ2JCclpkbUlOQUJ5SlljaDlMTDVGNWZNc21PS1o2aE1QdHcw?=
 =?utf-8?B?c3gvT1Flb0VkWFR5SFhRVUV4dXFEY2MvcTRiVXZQRnEvVklnM045TUJxQXRO?=
 =?utf-8?B?eFp0dmx2ZUFmaUp3a2l0UXBsOFQybXFMWnVwRTNkWWUveFZNR2IweU42MU5w?=
 =?utf-8?B?Tkl2TUJFdjE0R05wMHZmWHdnVXJucFpoY1U1M3JsREtUWk9jbEpyck1WVTNS?=
 =?utf-8?B?MnFYOHluY3BBODlyZjZ5QzB4MU0wUVFWZWRuNXlsMVZCa1dOeEtnRHFoSlNC?=
 =?utf-8?B?QTdMMDhkaERhQ1RkalY0S1ROTW9nTE92NmVFSGNrQmRRYW4vMU11eUc4WUV5?=
 =?utf-8?B?Q254MVFtQXNSNWcyMkhLQ1JxR3R3MlVmYmVyNHFCWkVNWjBXZ1FJOFR2KzRB?=
 =?utf-8?B?SXRnVDNvV3Ayd1R6RzdrV2VlZzYxN1RXMUxFUE9tVUFIYklOOHpROVlEZ0dv?=
 =?utf-8?B?QzJoSExBWlJxenV2VG9mUThiSFlNenFjNXdLUjdxWHRIOGJWY21hTWxHbGEy?=
 =?utf-8?B?cVFaSm5valFVcVZXT0pRRkU5TU5XcGNNNDU2TVM3RXFNSzg0anRIU0RNbE82?=
 =?utf-8?B?ZDlZc29OdmJ3MjFxRTBzWnBrajh6Wmtsd3FITmpCQnR4RUNsSWkwcVB4RUw5?=
 =?utf-8?B?eDlTYVVsUTF4NnUra1VSY1VVWndXZFQ5QjVCdWNQd09ZQTNXeHh6dkNXY1Ar?=
 =?utf-8?B?VEFXMkU2dytFWm9UcElGUlNuVXREalgyL1F0ajIrZmprcVdIQXJLZnluUmRs?=
 =?utf-8?B?ZS8xRXZuTGRON08wSGQvK0MwRzNTNFd1bHFMNzhYaDR6L2RCcm83VE9lRjBo?=
 =?utf-8?B?bTN6OVVTcDhLaFVGMSt5aGFITUxiUW9kR2w0cUVoUDNzWDJYdlNOVkEwYXBQ?=
 =?utf-8?B?UytNUjhjWVNmQmx2LzJvenQwOUI0WmQ5NWRQNS9IYkMvRHErNERoS2R2aE9h?=
 =?utf-8?B?UDZucG5DOGliamw4VjBOU3VmalBKL1kyeWIxbnV2UGJFeHh3ZVYxelZ3OUs3?=
 =?utf-8?B?Z1F3UUgvM1JBd1g2eE53MTRMRGJNSTBQbzRGbzd0L0ZIN0EyaFJnWFlhTlN4?=
 =?utf-8?B?b2NDTEdRNm5GUms3Y3hiTWUwbUU1aE5aaXBiSjVmai9iOEU5amM2TmxrM2RK?=
 =?utf-8?B?RStlejJTakY5bE40RVROQWc0b256Tk5QcjJVeVdjTVNFSE93NEpqMkowb1Ir?=
 =?utf-8?B?WmIyRHdwUEh5N21pUmxTZUJzUkpjRVoxMFJmdnVucmRXK1dONm1hdVdQR2Zs?=
 =?utf-8?B?eVo4bjhUOWdpbm1TY2Z4UmNKSmNMWlY4UjRaWHJqbEdyd1NRSHE1cXFtRHVK?=
 =?utf-8?B?a3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <03A7CB67175BD347A273D5E466F72078@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92266235-b954-4565-26c0-08dafd3c45a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2023 12:20:53.4415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HQtOgZGe1PQ1RzxZHb9ihjAKEUU+UKuFDfnxwjuYCD1cpD5ilD0tCCFoS8VRzdcLZUXAVRJtZd7Pgi7xbXljftzC63t1OYYM887uCup/zwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5144
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/fbdev: Implement fb_dirty for
 intel custom fb helper
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTAxLTIzIGF0IDEyOjM4ICswMTAwLCBUaG9tYXMgWmltbWVybWFubiB3cm90
ZToNCj4gSGkNCj4gDQo+IEFtIDIzLjAxLjIzIHVtIDA4OjQ0IHNjaHJpZWIgSm91bmkgSMO2Z2Fu
ZGVyOg0KPiA+IEFmdGVyIGRpc2Nvbm5lY3RpbmcgZGFtYWdlIHdvcmtlciBmcm9tIHVwZGF0ZSBs
b2dpYyBpdCdzIGxlZnQgdG8NCj4gPiBmYmRldg0KPiA+IGVtdWxhdGlvbiBpbXBsZW1lbnRhdGlv
biB0byBoYXZlIGZiX2RpcnR5IGZ1bmN0aW9uLiBDdXJyZW50bHkgaW50ZWwNCj4gPiBmYmRldiBk
b2Vzbid0IGhhdmUgaXQuIFRoaXMgaXMgY2F1c2luZyBwcm9ibGVtcyB0byBmZWF0dXJlcyAoUFNS
LA0KPiA+IEZCQywNCj4gPiBEUlJTKSByZWx5aW5nIG9uIGRpcnR5IGNhbGxiYWNrLg0KPiA+IA0K
PiA+IEltcGxlbWVudCBzaW1wbGUgZmJfZGlydHkgY2FsbGJhY2sgdG8gZGVsaXZlciBub3RpZmlj
YXRpb25zIGFib3V0DQo+ID4gdXBkYXRlcw0KPiA+IGluIGZiIGNvbnNvbGUuDQo+ID4gDQo+ID4g
djQ6IEFkZCBwcm9wZXIgRml4ZXMgdGFnIGFuZCBtb2RpZnkgY29tbWl0IG1lc3NhZ2UNCj4gPiB2
MzogQ2hlY2sgZGFtYWdlIGNsaXANCj4gPiB2MjogSW1wcm92ZWQgY29tbWl0IG1lc3NhZ2UgYW5k
IGFkZGVkIEZpeGVzIHRhZw0KPiA+IA0KPiA+IEZpeGVzOiBmMjMxYWY0OThjMjkgKCJkcm0vZmIt
aGVscGVyOiBEaXNjb25uZWN0IGRhbWFnZSB3b3JrZXIgZnJvbQ0KPiA+IHVwZGF0ZSBsb2dpYyIp
DQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+ID4gQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPg0KPiA+IENj
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyB8IDEyICsrKysr
KysrKysrKw0KPiA+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspDQo+ID4gDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYu
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+ID4g
aW5kZXggMTlmM2I1ZDkyYTU1Li5kMzlkYjgwNTBjNjkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+ID4gQEAgLTMyMSw4ICszMjEsMjAg
QEAgc3RhdGljIGludCBpbnRlbGZiX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZiX2hlbHBlcg0KPiA+ICpo
ZWxwZXIsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7DQo+ID4gwqAgfQ0KPiA+IMKg
IA0KPiA+ICtzdGF0aWMgaW50IGludGVsZmJfZGlydHkoc3RydWN0IGRybV9mYl9oZWxwZXIgKmhl
bHBlciwgc3RydWN0DQo+ID4gZHJtX2NsaXBfcmVjdCAqY2xpcCkNCj4gPiArew0KPiA+ICvCoMKg
wqDCoMKgwqDCoGlmICghKGNsaXAtPngxIDwgY2xpcC0+eDIgJiYgY2xpcC0+eTEgPCBjbGlwLT55
MikpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOw0KPiA+ICsN
Cj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaGVscGVyLT5mYi0+ZnVuY3MtPmRpcnR5KQ0KPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gaGVscGVyLT5mYi0+ZnVuY3MtPmRp
cnR5KGhlbHBlci0+ZmIsIE5VTEwsDQo+ID4gMCwgMCwgY2xpcCwgMSk7DQo+IA0KPiBEaWRuJ3Qg
SSBuYWNrIHRoaXMgYXBwcm9hY2ggYWxyZWFkeT8gWW91IHNob3VsZG4ndCBzZXQgZmJfZGlydHku
IFRoZSANCj4gYmV0dGVyIHNvbHV0aW9uIHdhcyB0byBpbXBsZW1lbnQgaTkxNS1zcGVjaWZpYyBo
ZWxwZXJzIGZvciB3cml0ZSwgDQo+IGZpbGxhcmVhLCBjb3B5YXJlYSBhbmQgYmxpdC4gVGhvc2Ug
c2hvdWxkIGNhbGwgaW50ZWxmYl9kaXJ0eSgpDQo+IGRpcmVjdGx5IA0KPiBhZnRlciBwZXJmb3Jt
aW5nIHRoZSBvdXRwdXQuwqAgQW5kIElJUkMgeW91IGFscmVhZHkgaW1wbGVtZW50ZWQgdGhpcy4N
Cg0KSSBoYXZlIGltcGxlbWVudGVkIHN1Y2ggdGhpbmcuIEkgZGlkbid0IHRvb2sgaXQgYXMgYSBu
YWNrIGJhY2sgdGhlbi4NCkxhc3QgY29tbWVudCBmcm9tIHlvdSB3YXM6DQoNCiJpZiB5b3UgZ28g
d2l0aCBmYl9kaXJ0eSwgcGxlYXNlIGltcGxlbWVudCB0aGUgY2xpcHBpbmcgDQp0ZXN0IGluIHlv
dXIgY2FsbGJhY2suIg0KDQphbmQgdjMgd2FzIHByZXBhcmVkIHRvIGFkZHJlc3MgdGhhdCBjb21t
ZW50LsKgTXkgdGhpbmtpbmcgd2FzIHRoYXQgdGhpcw0KaXMgb25seSBmb3IgZmIgY29uc29sZSwg
YnV0IFZpbGxlIFN5cmrDpGzDpCBjb21tZW50ZWQgdGhhdCB0aGVyZSBpcyBtb3JlDQp0aGFuIGNv
bnNvbGUgc28gSSBzdGlja2VkIGluIHRoaXMgYXBwcm9hY2guDQoNClNvIHlvdSB0aGluayBJIHNo
b3VsZCBqdXN0IGRyb3AgaWRlYSBvZiBzZXR0aW5nIGRpcnR5IGNhbGxiYWNrIGFuZA0KaW1wbGVt
ZW50IHRob3NlIGk5MTUtc3BlY2lmaWMgaGVscGVycz8NCg0KPiANCj4gQmVzdCByZWdhcmRzDQo+
IFRob21hcw0KPiANCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIDA7DQo+ID4gK30N
Cj4gPiArDQo+ID4gwqAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZmJfaGVscGVyX2Z1bmNzIGlu
dGVsX2ZiX2hlbHBlcl9mdW5jcyA9IHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgLmZiX3Byb2JlID0g
aW50ZWxmYl9jcmVhdGUsDQo+ID4gK8KgwqDCoMKgwqDCoMKgLmZiX2RpcnR5ID0gaW50ZWxmYl9k
aXJ0eSwNCj4gPiDCoCB9Ow0KPiA+IMKgIA0KPiA+IMKgIHN0YXRpYyB2b2lkIGludGVsX2ZiZGV2
X2Rlc3Ryb3koc3RydWN0IGludGVsX2ZiZGV2ICppZmJkZXYpDQo+IA0KPiAtLSANCj4gVGhvbWFz
IFppbW1lcm1hbm4NCj4gR3JhcGhpY3MgRHJpdmVyIERldmVsb3Blcg0KPiBTVVNFIFNvZnR3YXJl
IFNvbHV0aW9ucyBHZXJtYW55IEdtYkgNCj4gTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJn
LCBHZXJtYW55DQo+IChIUkIgMzY4MDksIEFHIE7DvHJuYmVyZykNCj4gR2VzY2jDpGZ0c2bDvGhy
ZXI6IEl2byBUb3Rldg0KDQo=
