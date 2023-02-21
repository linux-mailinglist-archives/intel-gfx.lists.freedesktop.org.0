Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0ED69E79A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 19:35:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52D4310E0CD;
	Tue, 21 Feb 2023 18:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA7710E0CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 18:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677004503; x=1708540503;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sRFG3+KDFQIqlkRPpMkk4Yeb4WUh2Iv9SsC56JfRCyA=;
 b=ORNvyLyme4bKEU4KfpIQA68ukQ4jrPDSxwcVwtGqgVswPVdfTW5dv+k5
 jWL5VNlSbwAglCmkqDF3uiMnvUy5VV3k50EIPqkXc/gdgH/L/6PaQcrx0
 4bGgYdwQM9AioNg82KG5+ocVcmWMwkx3/qvECAyCuI+CR3GYiabf94PkB
 WB24X+dCa8ecmdnvkD2tnme2odV1ivTdWpgqU77lWmvtM+HufxUs4KOUP
 OTSMMrEz0Ltrhzp3FqERdvz/mo86jsptSByZIkbPSQqHNt8aPruv3ZtBv
 88y9glqw9L+3W9Z57wAqsX421Ws0zlA3Q8uZi0vsrS/MJYd3mU5mKMJaS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="313089369"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="313089369"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 10:35:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="845791483"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="845791483"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2023 10:35:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 10:35:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 10:35:01 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 21 Feb 2023 10:35:01 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 21 Feb 2023 10:35:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XLSCJHf8ivoqNArwCJTYkPSZmuC3FS9JsXsjvLFNBfMjey2peKfdyqtOn8S6/7LZ+KvZfipu9O3o2O0fSrGtggfuyI1mF+/kkwwD6TbhuvuIb/CdVg2AjnFVwcAXL1s1mvWVPKbyKJ5H+LTjnRy4nmf5LvpAVc9zKvjBmacP0Zq8AEUihJhk/1NswENjX0g+K5sypEK85ifgfPsGdzT1Xx7/jXXF0EfcWE8s2Z7F4h052iSYXvxNm7iIEtjuMfaU63Bm5Sf+iPTUCAh8GDtjBdVgqR/tpJBxMuSty1k1NcO9OR6JOMbqyEK8ay2GVja15HZd1x1aQsJq4jCdwnEa9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sRFG3+KDFQIqlkRPpMkk4Yeb4WUh2Iv9SsC56JfRCyA=;
 b=jUJUXiuZj2RoqZOd4OG0gv+fXCFz6bGvgl6sQOk861RjOwdoGYEKBINSZW8oAORToEKj5qg4eHaDWU3LVc+RRoqSfFqmn55vLLS0NsdYDHOfkfIf81mxMesvaKzwBjeGaAfOQe2O3KrBTxIv/PtDr6jwJMkDuKroUIplBNPO5YLoFQDFlYlk7+NY5Bfyo5Evvr2g7XDDhIoAq6JXsUlIMagdhGRq5yHhHfmNIQtR7rj9uGTFPZja3UIWiGkilXxtmItlx/zimL2h7iUtDMLzPXy62yoP8nOIWfffybJG0u4ONXIL5tOvUQMUJICA8McnciZDyETi6bl4AuolsiLLyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by IA0PR11MB7283.namprd11.prod.outlook.com (2603:10b6:208:439::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Tue, 21 Feb
 2023 18:34:59 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::4f66:bdc8:3cac:956e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::4f66:bdc8:3cac:956e%3]) with mapi id 15.20.6043.022; Tue, 21 Feb 2023
 18:34:59 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>
Thread-Topic: [PATCH] gen8_ppgtt: Use correct huge page manager for MTL
Thread-Index: AQHZQwU6ctRXEC22Zkm8cMgyPUuOGa7Zlt+AgAAENUCAAAMsAIAACMOggAALwgCAAAneQA==
Date: Tue, 21 Feb 2023 18:34:59 +0000
Message-ID: <CH0PR11MB5444566E57C1FBA29F57DB5AE5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20230217191813.1104342-1-jonathan.cavitt@intel.com>
 <0f4df8e9-1cb9-b1a4-284d-67fc75b74c2e@intel.com>
 <CH0PR11MB5444727E7C9F280059073C1EE5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
 <b371944c-779d-cd9e-e9ba-6c7b8a6bc0bb@intel.com>
 <CH0PR11MB544409A98B8A5F6E8E087DF4E5A59@CH0PR11MB5444.namprd11.prod.outlook.com>
 <548e3921-8488-afc1-aeae-6ff526e16e51@intel.com>
In-Reply-To: <548e3921-8488-afc1-aeae-6ff526e16e51@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|IA0PR11MB7283:EE_
x-ms-office365-filtering-correlation-id: f7a12310-8126-4ba9-2a59-08db143a564a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qEhBQqck577wOv4j81OnAviLqM6RH1PujyB49V7+LsrIDyXf1PmqyJoGXQ+zlgQQoSjOlgNw6bAwcKUmrxqIsRGtyLhOwCMcUDBTG49HnnVPe2AApAH0k6B6bw037/OIIivUYlt/vnItVZjVSQAwZdyR5CLHWn+VBwiBEKnqer7QLraIZpnCDx2GPRmuw+Z1l+ISc3d6Q9ZYxIJCwI6KBjOg8ZEB/ps3TBg+h0Hnkq4vdZ6N2KTYFwoFgqFHiUn0/Cfq1hZOl1zL8G/vMN7yNoT7siE5jta9zyNeH8VdDhkuaJVYjw6dMFP5APPowBHQ+dg7HNOTaWUTBWF6JG5V9lgUPjDNd/fVuo7TmdiVB/k4UUnVbw8I4LoD4UIlVuAP/EefhhF6jIFrph0eaP3SiPSCIHPVl949j7grlbCGct1MY5kZPigxLPQ0adyH5xsmobGwf0sj9KOYQF/AjSWkUcZy/srt5QneKydGr56VGm9bNoM3pezabyTXUOw43dkvVJfpTt4jFGkVNSpDqMZSf7MZlrCow63jPvCJaNXpcKz9oMR1BMZpIZnj8Xhv69PwNcx7A8L83PUHMnZ18rfJPob2Rg+BV6ewnOVQkhi83SmTeAXDHpDfVnepSUYZ749vJmoU7JDDmZLwFzBt/k/eR/SwXEXx7ELldJghVQqvWS0hIqDdIBu9CvKKcyna832XgVd0pn2quTMfH/1jHg52O1ph9vfzZu+bZs7+2RZwwok=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(136003)(366004)(346002)(396003)(451199018)(64756008)(66556008)(66946007)(66446008)(8676002)(66476007)(4326008)(52536014)(478600001)(5660300002)(76116006)(38100700002)(86362001)(82960400001)(6506007)(316002)(6636002)(26005)(7696005)(41300700001)(6862004)(71200400001)(8936002)(54906003)(186003)(9686003)(2906002)(55016003)(38070700005)(53546011)(122000001)(83380400001)(33656002)(14583001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UFN1SStrZ1J3SnU5MTRUckcvYjVybnFCdWFITGdpaHROUjlwT052c29mRFo4?=
 =?utf-8?B?ZlliOGw4ek0vRzAwb3BEbmROQTFEbGN0SVZhYldWekNuREZWdHo0ckRRQTdH?=
 =?utf-8?B?dVJ6T0V4dHBhK1ZCWmlyVGNJR200NDJGaDZGSWxXbkpmYXpPY1RxMXFDWW1h?=
 =?utf-8?B?YWNTRCtZb3FFMHAxa2h3WVBrNGZUZ3VQUDFUdmhnREF4dVpMY3BGYnZxOE12?=
 =?utf-8?B?a0lxY3ZmdlI5Tzl0V1BHZTBzdmtLOXRDYjZqY0ZRQUNYNStrK2J3VzRHa2pB?=
 =?utf-8?B?MEdMKyt0VG1hd2VITlFhc1U5ODBGWlhxWTVtMmZMWGw1dm9NREFOMWdhT2Mx?=
 =?utf-8?B?dWdMKzkzNWxUUnowRnlYU1Mya3Q1MzhJWkFOQVF6YXNLQTNabFZiY2FjUEhS?=
 =?utf-8?B?Vkw1VGgySm5jb2RxWXRJNWkxWi80OEJENWJ3QXhGVW9rQ1ZvZHJDSDRkNnhV?=
 =?utf-8?B?TlR2bVU4OXdzRTUwYkJYSGpwZkxZWTBuaXJYaDVMbTI0RkxkaVhhQ1FqOG03?=
 =?utf-8?B?cFExdGswU0VzT09xWkdQZnl1N1dJenNLeDdjcHNvTWUxTVBQak5sb3RuazZ3?=
 =?utf-8?B?S0toM0dyRnd0cEdybm0vYVFxcDUwM3FFM0MyWG1td0Fpa0NRMnRuMWZoaDFC?=
 =?utf-8?B?eUlKaDVPOUdpV1hHbm9SZ0RGK2FSQjhCR1ZLRXVESzhsQmVmVUNBMHo5VDRn?=
 =?utf-8?B?VC8vWHlaMmpTMWFnZndmdEpFaTJqdEo2YUQ5NE1USmNDcVdRUUgyU1Jqc2gv?=
 =?utf-8?B?c1RNeHlhcXpFZFdKb2dwUTZhSElpMkVmS08ySUtQWmcycEpvc2xRNlNFdVdy?=
 =?utf-8?B?ZzIvTmtocjFNMVlqWjd3RklwSFBVNnBXZzJmK2pPKzVRc2VZK2srQy9iOXA5?=
 =?utf-8?B?RDNrekpVZHdRZGpoVHB4RkNNL2FFSWNlUmNtQWRMRURkMHF4a2IvZkJ6a3BI?=
 =?utf-8?B?UWI0MElhNGZidXprUFAxT0gzUG90ZmNxRFRiMG5uc1k1azRjdXZqeGc0dktL?=
 =?utf-8?B?SUZhK2Y2bW03clRBZ2xDQTJrVnFQd2hIWDgrcmpwNUlNbEsvYXdoTXNDQUNF?=
 =?utf-8?B?amNZMXBuUTVydnZYWG9LZEdZTHc2ZFlPWnZ2WXhFTjNaQWdJc3RmQytHTnAz?=
 =?utf-8?B?K090K05sOTJEQzR2Y3NjOW5NKzkyZEVoTjIwUlRQL1JvRE5FYmNkcXBxdE9k?=
 =?utf-8?B?Q3pkSTNZZFBNMDR5VWJEY2wwZTQwVUxZbUNId2J6TEl5bHlvREtVVjNvYVZ3?=
 =?utf-8?B?UGFscjFJc0VnZ2Y1MytpeXVPYm5ETU5kb0dsMWIxblo0MjRVeUYzSWsrc1Zy?=
 =?utf-8?B?b1RpZ3czTEVWTkwwWFE0M1FGdGdJZTFBVXZCRlM0WVpWekZ0WTNVdE9GdEdr?=
 =?utf-8?B?L21IRk5kaFJCL3hvZmJkQ0dObEdURzFTallLZzZGRThVSk9GNzRLb1BTMXJR?=
 =?utf-8?B?eVVjSktGZWk0aXNLZTR4ZTVpeG1IUUxmU2lXYUpVSm45UlpWaVZXTklxbkpX?=
 =?utf-8?B?N01SODBMUkg3Y0UvRDdYeU1DcEorUWNkWGE4ZTg1dDNPQ0I1RlR4UUdCRDVx?=
 =?utf-8?B?VnNuamtVakVBZXZURm00bXF1amhSMXZ0bnl6QlBGZkJvYjdzM0Z6anhzZXRa?=
 =?utf-8?B?RkwzZWdaRC9TUlgwNm5lU0Z1SmtJRi85ZlVCa3MwSmZqdG1ERG5NQjdsWUdr?=
 =?utf-8?B?SFg3MCsxTkd5SDhrY0pTZHF6MGg3Zmp3WjQ2R0RIU0VZaUFueURJRmNzNmFu?=
 =?utf-8?B?elF6dTlJMEpSb002dm1XaVdpdUZVKzhXL1lOQTJSNTlhdERBeGIvREw0dXJh?=
 =?utf-8?B?dWpNOVhtczRBcHptd0NvaE8rR0dYMUtXbVFZN1lQeWZoUEJUbS94ekdIUU5N?=
 =?utf-8?B?UGRjbjBJNXYyTi9PM2JYVFVlem50MFJWblREL2lUUWV0elBuMW5wcGZEMEpm?=
 =?utf-8?B?MHBFS2FySExzWEtld3NRaVlmL3dzclZSMlgrdnU5Ymtidkh6S2kwVzVTZ1Zi?=
 =?utf-8?B?U1lOYlp6aWw4WVRTbTV0WTVOUm80NHJEZmFpSW1mdlpTQWxCUDdTU0tZZE1t?=
 =?utf-8?B?d1A0a3FsMFRIc3hQUXVVcVZGLzQxamFCUDhVUUM2OHBrSHRMekgyd3pYaHdE?=
 =?utf-8?Q?g1H/1wOXPv21T7vesLosi9XIj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7a12310-8126-4ba9-2a59-08db143a564a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2023 18:34:59.1104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zoLQ4o1PkBvYraU2jauLGfQ+tsXHL7YqkY7ebAfBVnFHOGqlm4ZDP2cUvvuImU4lLv0XZ3u2GnYgrP0QdMqDCSJxuCp3P6JDKe8GvIXjvp4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7283
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] gen8_ppgtt: Use correct huge page manager
 for MTL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEF1bGQsIE1hdHRoZXcgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+IA0KU2VudDogVHVlc2RheSwgRmVicnVhcnkgMjEsIDIwMjMgOTo0NiBB
TQ0KVG86IENhdml0dCwgSm9uYXRoYW4gPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQpDYzog
RHV0dCwgU3VkZWVwIDxzdWRlZXAuZHV0dEBpbnRlbC5jb20+OyBTaWRkaXF1aSwgQXlheiBBIDxh
eWF6LnNpZGRpcXVpQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
ClN1YmplY3Q6IFJlOiBbUEFUQ0hdIGdlbjhfcHBndHQ6IFVzZSBjb3JyZWN0IGh1Z2UgcGFnZSBt
YW5hZ2VyIGZvciBNVEwNCj4gDQo+IE9uIDIxLzAyLzIwMjMgMTc6MTQsIENhdml0dCwgSm9uYXRo
YW4gd3JvdGU6DQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBBdWxk
LCBNYXR0aGV3IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFR1ZXNkYXksIEZl
YnJ1YXJ5IDIxLCAyMDIzIDg6MzMgQU0NCj4gPiBUbzogQ2F2aXR0LCBKb25hdGhhbiA8am9uYXRo
YW4uY2F2aXR0QGludGVsLmNvbT4NCj4gPiBDYzogRHV0dCwgU3VkZWVwIDxzdWRlZXAuZHV0dEBp
bnRlbC5jb20+OyBTaWRkaXF1aSwgQXlheiBBIDxheWF6LnNpZGRpcXVpQGludGVsLmNvbT47IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBSZTogW1BBVENIXSBn
ZW44X3BwZ3R0OiBVc2UgY29ycmVjdCBodWdlIHBhZ2UgbWFuYWdlciBmb3IgTVRMDQo+ID4+DQo+
ID4+IE9uIDIxLzAyLzIwMjMgMTY6MjgsIENhdml0dCwgSm9uYXRoYW4gd3JvdGU6DQo+ID4+PiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+Pj4gRnJvbTogQXVsZCwgTWF0dGhldyA8bWF0
dGhldy5hdWxkQGludGVsLmNvbT4NCj4gPj4+IFNlbnQ6IFR1ZXNkYXksIEZlYnJ1YXJ5IDIxLCAy
MDIzIDg6MDYgQU0NCj4gPj4+IFRvOiBDYXZpdHQsIEpvbmF0aGFuIDxqb25hdGhhbi5jYXZpdHRA
aW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+Pj4gQ2M6IER1
dHQsIFN1ZGVlcCA8c3VkZWVwLmR1dHRAaW50ZWwuY29tPjsgU2lkZGlxdWksIEF5YXogQSA8YXlh
ei5zaWRkaXF1aUBpbnRlbC5jb20+DQo+ID4+PiBTdWJqZWN0OiBSZTogW1BBVENIXSBnZW44X3Bw
Z3R0OiBVc2UgY29ycmVjdCBodWdlIHBhZ2UgbWFuYWdlciBmb3IgTVRMDQo+ID4+Pj4NCj4gPj4+
PiBPbiAxNy8wMi8yMDIzIDE5OjE4LCBKb25hdGhhbiBDYXZpdHQgd3JvdGU6DQo+ID4+Pj4+IE1U
TCBjdXJyZW50bHkgdXNlcyBnZW44X3BwZ3R0X2luc2VydF9odWdlIHdoZW4gbWFuYWdpbmcgaHVn
ZSBwYWdlcy4gIFRoaXMgaXMgYmVjYXVzZQ0KPiA+Pj4+PiBNVEwgcmVwb3J0cyBhcyBub3Qgc3Vw
cG9ydGluZyA2NEsgcGFnZXMsIG9yIG1vcmUgYWNjdXJhdGVseSwgdGhlIHN5c3RlbSB0aGF0IHJl
cG9ydHMNCj4gPj4+Pj4gd2hldGhlciBhIHBsYXRmb3JtIGhhcyA2NEsgcGFnZXMgcmVwb3J0cyBm
YWxzZSBmb3IgTVRMLiAgVGhpcyBpcyBvbmx5IGhhbGYgY29ycmVjdCwNCj4gPj4+Pj4gYXMgdGhl
IDY0SyBwYWdlIHN1cHBvcnQgcmVwb3J0aW5nIHN5c3RlbSBvbmx5IGNhcmVzIGFib3V0IDY0SyBw
YWdlIHN1cHBvcnQgZm9yIExNRU0sDQo+ID4+Pj4+IHdoaWNoIE1UTCBkb2Vzbid0IGhhdmUuDQo+
ID4+Pj4+DQo+ID4+Pj4+IE1UTCBzaG91bGQgYmUgdXNpbmcgeGVocHNkdl9wcGd0dF9pbnNlcnRf
aHVnZS4gIEhvd2V2ZXIsIHNpbXBseSBjaGFuZ2luZyBvdmVyIHRvDQo+ID4+Pj4+IHVzaW5nIHRo
YXQgbWFuYWdlciBkb2Vzbid0IHJlc29sdmUgdGhlIGlzc3VlIGJlY2F1c2UgTVRMIGlzIGV4cGVj
dGluZyB0aGUgdmlydHVhbA0KPiA+Pj4+PiBhZGRyZXNzIHNwYWNlIGZvciB0aGUgcGFnZSB0YWJs
ZSB0byBiZSBmbHVzaGVkIGFmdGVyIGluaXRpYWxpemF0aW9uLCBzbyB3ZSBtdXN0IGFsc28NCj4g
Pj4+Pj4gYWRkIGEgZmx1c2ggc3RhdGVtZW50IHRoZXJlLg0KPiA+Pj4+Pg0KPiA+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBKb25hdGhhbiBDYXZpdHQgPGpvbmF0aGFuLmNhdml0dEBpbnRlbC5jb20+DQo+
ID4+Pj4gUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4N
Cj4gPj4+Pg0KPiA+Pj4+IEFsdGhvdWdoIGl0IGxvb2tzIGxpa2UgdGhlIGh1Z2VwYWdlIG1vY2sg
dGVzdHMgYXJlIGZhaWxpbmcgd2l0aCB0aGlzLiBJDQo+ID4+Pj4gYXNzdW1lIHRoZSBtb2NrIGRl
dmljZSBqdXN0IHVzZXMgc29tZSAibWF4IiBnZW4gdmVyc2lvbiBvciBzbywgd2hpY2ggbm93DQo+
ID4+Pj4gdHJpZ2dlcnMgdGhpcyBwYXRoLiBBbnkgaWRlYXMgZm9yIHRoYXQ/DQo+ID4+Pg0KPiA+
Pj4gV2l0aCB0aGlzIHBhdGNoIGFwcGxpZWQsIG11bHRpcGxlIGNhbGxzIHRvIHRoZSBodWdlcGFn
ZXMgbGl2ZSBzZWxmdGVzdCByZXN1bHQgaW4gYSBrZXJuZWwgcGFuaWMuDQo+ID4+PiBJZiB0aGUg
bW9jayB0ZXN0cyBhcmUgcnVuIGltbWVkaWF0ZWx5IGFmdGVyIHRoZSBsaXZlIG9uZXMsIHRoYXQg
d291bGQgZXhwbGFpbiB0aGlzIGJlaGF2aW9yLg0KPiA+Pj4gSSB3YXMgaW5mb3JtZWQgd2hlbiB0
aGlzIHdhcyBpbml0aWFsbHkgZGVidWdnZWQgdGhhdCB0aGUgZXJyb3Igd2FzIGEga25vd24gSU9N
TVUgaXNzdWUNCj4gPj4+IHJhdGhlciB0aGFuIHNvbWUgbm92ZWwgcmVncmVzc2lvbiwgdGhvdWdo
IGl0J3MgaGFyZCB0byB0ZWxsIGlmIHRoYXQgd2FzIGp1c3QgaG9wZWZ1bCBvcHRpbWlzbQ0KPiA+
Pj4gb3Igbm90IGF0IHRoaXMgcG9pbnQuDQo+ID4+DQo+ID4+IEluIHRoZSB0ZXN0IHJlc3VsdHMg
d2Ugbm93IGdldDoNCj4gPj4NCj4gPj4gNj4gWzE4My40MjAzMTZdIGk5MTU6IFJ1bm5pbmcNCj4g
Pj4gaTkxNV9nZW1faHVnZV9wYWdlX21vY2tfc2VsZnRlc3RzL2lndF9tb2NrX2V4aGF1c3RfZGV2
aWNlX3N1cHBvcnRlZF9wYWdlcw0KPiA+PiA8Nj4gWzE4My40MzY5NzhdIGk5MTU6IFJ1bm5pbmcN
Cj4gPj4gaTkxNV9nZW1faHVnZV9wYWdlX21vY2tfc2VsZnRlc3RzL2lndF9tb2NrX21lbW9yeV9y
ZWdpb25faHVnZV9wYWdlcw0KPiA+PiA8Nj4gWzE4My40NDU3NzddIGk5MTU6IFJ1bm5pbmcNCj4g
Pj4gaTkxNV9nZW1faHVnZV9wYWdlX21vY2tfc2VsZnRlc3RzL2lndF9tb2NrX3BwZ3R0X21pc2Fs
aWduZWRfZG1hDQo+ID4+IDw2PiBbMTgzLjkwNDUzMV0gaTkxNTogUnVubmluZw0KPiA+PiBpOTE1
X2dlbV9odWdlX3BhZ2VfbW9ja19zZWxmdGVzdHMvaWd0X21vY2tfcHBndHRfaHVnZV9maWxsDQo+
ID4+IDwzPiBbMTgzLjkxMjY1OF0gZ3R0PTY5NjMyLCBleHBlY3RlZD00MDk2LCBzaXplPTY5NjMy
LCBzaW5nbGU9eWVzDQo+ID4+IDwzPiBbMTgzLjkxMjc4NF0gaTkxNS9pOTE1X2dlbV9odWdlX3Bh
Z2VfbW9ja19zZWxmdGVzdHM6DQo+ID4+IGlndF9tb2NrX3BwZ3R0X2h1Z2VfZmlsbCBmYWlsZWQg
d2l0aCBlcnJvciAtMjINCj4gPiANCj4gPiAgICAgICAgICAgICAgICAgIGlmIChleHBlY3RlZF9n
dHQgJiBJOTE1X0dUVF9QQUdFX1NJWkVfNEspDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAg
IGV4cGVjdGVkX2d0dCAmPSB+STkxNV9HVFRfUEFHRV9TSVpFXzY0SzsNCj4gPiANCj4gPiBJIGRv
bid0IGtub3cgd2h5IHdlJ3JlIGRvaW5nIHRoYXQgdG8gZXhwZWN0ZWRfZ3R0LCBidXQgdGhhdCBz
ZWVtcyB0byBiZSB0aGUgY2F1c2Ugb2YgdGhlDQo+ID4gcHJvYmxlbSBpbiB0aGlzIGNhc2UuDQo+
IA0KPiBJIHRoaW5rIGl0J3MgZHVlIHRvIHRoZSBvbGRlciBodWdlIHBhZ2UgbW9kZWwsIHdoZXJl
IDY0SyByZXF1aXJlcyB0aGUgDQo+IGVudGlyZSBwYWdlLXRhYmxlIHRvIGFsbCB1c2UgNjRLIHBh
Z2VzIHVuZGVybmVhdGggKHBkZSBsZXZlbCBoaW50KSwgc28gDQo+IGlmIHdlIHNlZSA0SyBpbiB0
aGVyZSBzb21ld2hlcmUgdGhlbiB3ZSBkb24ndCBleHBlY3QgdG8gZ2V0IGJhY2sgNjRLIA0KPiBH
VFQuIEJ1dCBvbiBuZXdlciBIVyB3ZSBub3cgaGF2ZSBoYXZlIHB0ZSBsZXZlbCBoaW50LCBzbyBJ
IHRoaW5rIHRoZSANCj4gYWJvdmUgY2FuIGp1c3QgYmUgcmVtb3ZlZCB3aXRoIHRoaXMgcGF0Y2gs
IHNpbmNlIHRoYXQncyB3aGF0IHRoZSBtb2NrIA0KPiBkZXZpY2Ugbm93IHVzZXMuDQoNClNlZW1z
IHJpZ2h0LiAgSSBndWVzcyB0aGF0IHdvdWxkIGJlLi4uIHdoYXQ/ICBJcyBpdDoNCkEuIFBsYXRm
b3JtIHNwZWNpZmljPyAgSS5FLiB3ZSBuZWVkIHMgZ2VuZXJhdGlvbiBjaGVjayBpbiB0aGUgc2Vs
ZnRlc3QgdG8gcHJvY2VlZCwgc3VjaCBhcyB0aGUgZm9sbG93aW5nOg0KDQogICAgICAgICAgICAg
ICAgIGlmIChleHBlY3RlZF9ndHQgJiBJOTE1X0dUVF9QQUdFX1NJWkVfNEsgJiYgR1JBUEhJQ1Nf
VkVSKGk5MTUpID49IDEyKQ0KDQpCLiBTeXN0ZW1zIHNwZWNpZmljPyAgSS5FLiB3ZSBoYXZlIGEg
c3BlY2lhbCBjaGVjayBmb3IgdGhpcyBmdW5jdGlvbmFsaXR5IHN1Y2ggYXM6DQoNCiAgICAgICAg
ICAgICAgICAgaWYgKGV4cGVjdGVkX2d0dCAmIEk5MTVfR1RUX1BBR0VfU0laRV80SyAmJiBoYXNf
cHRlX2xldmVsX2hpbnQoaTkxNSkpDQoNCkMuIFRoZSBuZXcgbm9ybS4gIEkuRS4gd2UgY2FuIGp1
c3QgcmVtb3ZlIHRoaXMgbGluZSBmcm9tIHRoZSB0ZXN0IGFuZCBldmVyeXRoaW5nIHdpbGwgd29y
ayBvdXQgZmluZS4NCg0KLUpvbmF0aGFuIENhdml0dA0KDQo+IA0KPiA+IC1Kb25hdGhhbiBDYXZp
dHQNCj4gPiANCj4gPj4NCj4gPj4gSSBkaWRuJ3QgbG9vayBhbnkgZGVlcGVyIHRoYW4gdGhhdCB0
aG91Z2guIE5vdGUgdGhhdCB0aGlzIGEganVzdCBhDQo+ID4+IG1vY2svZmFrZSBkZXZpY2UuIEkg
ZG9uJ3QgdGhpbmsgaXRzIElPTU1VIHJlbGF0ZWQuDQo+ID4+DQo+ID4+PiAtSm9uYXRoYW4gQ2F2
aXR0DQo+ID4+Pg0KPiA+Pj4+DQo+ID4+Pj4+IC0tLQ0KPiA+Pj4+PiAgICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jIHwgMyArKy0NCj4gPj4+Pj4gICAgIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPj4+Pj4NCj4gPj4+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjhfcHBndHQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2dlbjhfcHBndHQuYw0KPiA+Pj4+PiBpbmRleCA0ZGFhYTZmNTU2Njgu
LjljNTcxMTg1Mzk1ZiAxMDA2NDQNCj4gPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvZ2VuOF9wcGd0dC5jDQo+ID4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dl
bjhfcHBndHQuYw0KPiA+Pj4+PiBAQCAtNTcwLDYgKzU3MCw3IEBAIHhlaHBzZHZfcHBndHRfaW5z
ZXJ0X2h1Z2Uoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sDQo+ID4+Pj4+ICAgICAJCQl9
DQo+ID4+Pj4+ICAgICAJCX0gd2hpbGUgKHJlbSA+PSBwYWdlX3NpemUgJiYgaW5kZXggPCBtYXgp
Ow0KPiA+Pj4+PiAgICAgDQo+ID4+Pj4+ICsJCWRybV9jbGZsdXNoX3ZpcnRfcmFuZ2UodmFkZHIs
IFBBR0VfU0laRSk7DQo+ID4+Pj4+ICAgICAJCXZtYV9yZXMtPnBhZ2Vfc2l6ZXNfZ3R0IHw9IHBh
Z2Vfc2l6ZTsNCj4gPj4+Pj4gICAgIAl9IHdoaWxlIChpdGVyLT5zZyAmJiBzZ19kbWFfbGVuKGl0
ZXItPnNnKSk7DQo+ID4+Pj4+ICAgICB9DQo+ID4+Pj4+IEBAIC03MDcsNyArNzA4LDcgQEAgc3Rh
dGljIHZvaWQgZ2VuOF9wcGd0dF9pbnNlcnQoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0s
DQo+ID4+Pj4+ICAgICAJc3RydWN0IHNndF9kbWEgaXRlciA9IHNndF9kbWEodm1hX3Jlcyk7DQo+
ID4+Pj4+ICAgICANCj4gPj4+Pj4gICAgIAlpZiAodm1hX3Jlcy0+YmkucGFnZV9zaXplcy5zZyA+
IEk5MTVfR1RUX1BBR0VfU0laRSkgew0KPiA+Pj4+PiAtCQlpZiAoSEFTXzY0S19QQUdFUyh2bS0+
aTkxNSkpDQo+ID4+Pj4+ICsJCWlmIChHUkFQSElDU19WRVJfRlVMTCh2bS0+aTkxNSkgPj0gSVBf
VkVSKDEyLCA1MCkpDQo+ID4+Pj4+ICAgICAJCQl4ZWhwc2R2X3BwZ3R0X2luc2VydF9odWdlKHZt
LCB2bWFfcmVzLCAmaXRlciwgY2FjaGVfbGV2ZWwsIGZsYWdzKTsNCj4gPj4+Pj4gICAgIAkJZWxz
ZQ0KPiA+Pj4+PiAgICAgCQkJZ2VuOF9wcGd0dF9pbnNlcnRfaHVnZSh2bSwgdm1hX3JlcywgJml0
ZXIsIGNhY2hlX2xldmVsLCBmbGFncyk7DQo+ID4+Pj4NCj4gPj4NCj4gDQo=
