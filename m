Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E127E02EA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 13:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9521610E9B7;
	Fri,  3 Nov 2023 12:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1B910E9B4
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 12:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699014726; x=1730550726;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=bSPjlVjaXdREUZrsoBsu9z+fvd/s+IkZdtBc3kuJlXc=;
 b=gLOkzfBnHP/NOkXiMQNGffuSxTpCjn+TDvLfUugMf24TKj5MTMOlaZwX
 Vr3F7VxTr9JEkTyzx9nnPwyU5a6YnPL1a+riL+26t2ufjVepXt1SttvzD
 GB0WmqV0EFxpkQm4tX3A2TyO1B1HBYIhFvGdUQaBNUhuR8r2yp0tfTm3g
 4oFhpOoLwNEAGHj88I3BZR2KrkWmHp3k4OkZCYVBs+hyz2V8NGqVBEeYF
 nBJ3TSF+aeX5u1HgWdFx1h2lWJRokygNFWpInr6V15GCu33X+iTLYDuhA
 4WnYN3CXZ9ISHafGhKHMWHhWfNGPwZLMXjMz3cimHCaELqEZKK84ADM4W w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="455427935"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="455427935"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 05:32:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="790747668"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="790747668"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 05:32:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 05:32:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 05:32:04 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 05:32:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CGRESe1zsIxy26uGvACFVLWufg7gpqeI8YnHSW9/QyVEJ2vmkTykcRFI4ZhrNAxTqUlWe3vmZrNBJIuZ9HF5qUMKTs6pVJoTvN8rvkx/h5gbkXgu/bjvYUR3nfEJAIv56IwaLxZwQIXJ2uwulQ/Mk/+71iW6d/vvDbxfTHgP6lREEOOgQzPTT94wFnv3Gws24Ol5COP+fUl7b+ohG9xq+gvjdt9UV8UutggutSytPFN/rgaRLkxWsdfdXNPzhP337nTKC+ffufquqWJApBTZQxImRljJ2dfCX4CXAoc9sWnVNT10FZWT0zgE/LF/0yCK9hK8SNZ7N4H40I0NG0ILDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bSPjlVjaXdREUZrsoBsu9z+fvd/s+IkZdtBc3kuJlXc=;
 b=CpcAjUWGPibigz/zEqYqgcWZUcg1usRpzeMYn0L6NbJhgSlzg38FRXOJjuT4dxjMmY/iwz0Y6Cx2SgK3/pU/SA74HLau58zvR4d2LI19Ta5a03lj7zA+gLGe6Lw2Iu8jnsg6S8sr+cSqxOIgZ8pmQ6+M2ScWtY7AH85WRYm7baxkod66S9mokjoiBzY86cPVMdLF+Bm5X2ikPvkHnzMvx2AtYv/MADNtfuTBSSKaEQWFivMIKDYv+kQq5mdz4LutSLUa+5IruLc7Wm7opwJVhj08AXTwf0ZWFLpqTVJQG5c9KFKVvb9V91m2wFanDXdVxH2XEaiT1s15DHLaZgJJhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB6017.namprd11.prod.outlook.com (2603:10b6:8:5c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 12:32:02 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::968:3d25:bee3:71e5]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::968:3d25:bee3:71e5%7]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 12:32:02 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1 1/1] drm/i915/xe2lpd: alternate WA for
 underruns with PSR2 and FBC
Thread-Index: AQHaDdwm1n52JxgDZkeJWhw+2JJxDrBoUqyAgAAPMICAAASuAIAAITkA
Date: Fri, 3 Nov 2023 12:32:02 +0000
Message-ID: <1f66cc05bd0a83683f933ad17c11d1e680215748.camel@intel.com>
References: <20231102222941.144583-1-vinod.govindapillai@intel.com>
 <20231102222941.144583-2-vinod.govindapillai@intel.com>
 <87msvv19ag.fsf@intel.com>
 <012689430a23b635e409bbc6b65eed0b985e90fb.camel@intel.com>
 <87h6m315zx.fsf@intel.com>
In-Reply-To: <87h6m315zx.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB6017:EE_
x-ms-office365-filtering-correlation-id: 7e9cd997-4aad-4de0-b304-08dbdc68e1e9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 04juoiwaPiTmcml/CdIyKKJeLubGoz+KLELSkbXezYzCeA+fhDKrT75j3AJVoKGTzguMOiIKuUKmKlnb81tTsytWuZHlcqCJJIDHb/Sa4PYxI01RLDvKHbP8H6NqfsxDW5z/wsIoNxOGcsW+6JkxdMyl1hqkMp4ZQ4AJh9HoIV5IyDhGymwGfCX71l4tuD6e6wAq9Ae/fMnIEm9WVByVexvK5HWfSAwLY6lactwsFuk2qeL7vr5sKc0NoDmPxReDOc4C3StPcl1EHEivS3sTNB+lBtfRtGrD4mre3rx5QW7JwZWW62ZHYWzZ0XolxXOVEO5nKfLE7y1qALpJp/pBoAa6sj3EMY0jZ5ypY/AG3NHOy6rt/mJRx71l0kvO6BU8hU3Jcy+97ZboSMB89Dq96ZN7ROR6CzN6fv91gYFDWpUqaGmHu7PRHfMI4OYuwgDQfTB6uvlaIbX6YL4PSs1q6UjNJFD58xk63MmSBfJBD3fS+gwPnQ/mN/TOttQYmKMdLxED4l3Ah7NhLppYO5PM8+xlEJkwVPLr34zOXmIYjXtpbESx6gFZqc3MjcY28lPM2xbPOu51IbIJMYi2xgkozEX9mr/p7P2RIZmpshNIEjY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(376002)(136003)(396003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(6486002)(41300700001)(2906002)(966005)(5660300002)(4326008)(38070700009)(8676002)(36756003)(316002)(8936002)(66446008)(66476007)(66556008)(91956017)(82960400001)(86362001)(64756008)(66946007)(76116006)(6512007)(122000001)(38100700002)(110136005)(26005)(2616005)(478600001)(71200400001)(83380400001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WnZMVHdiTEhtTjFCKys0RXVGMkdQb3VpSWpuT0lWOHJGQ1JMUnIvSlVnUlc5?=
 =?utf-8?B?ZmpCb1dhSE5aRFcxRGFHcXpoQW5oTGpKNlZDUjNzQlhhcUs2OFlPeGFKOGl0?=
 =?utf-8?B?enBOZjY5Qy9YQ2l1MXdkSUhab0xmcXZKMmxyMzFrU1ZMRVhKeEN2UEVYbkhY?=
 =?utf-8?B?K2xqdlVWRDc1K3JRVGVpajNKc2xhVXVDdnJMeG0xUVJzREVwejN0Uzk4OVNN?=
 =?utf-8?B?Smh3NkRlaDlVNXc1cjMyQVZUbW5qZVc5ZXp2ejZSQXFpeU42UzZrdThrUUJN?=
 =?utf-8?B?b1ZuV0UrWTlVclNSYloxcnM3VjRDWEZBaUtBWVpUZWM4RXdrZEtlMzZkNG4y?=
 =?utf-8?B?OUJWM0k2dmc1b2NPMU0reHA0VjliaFZPc1NIRTJRSkM2VStuMFVtQlY4Zy8v?=
 =?utf-8?B?d09SQnI4K2xTTTFrZTliN09DWHAvVXFnZXJjM0VqUVFoUTZqTnNXYndyakk3?=
 =?utf-8?B?M0dEY0JzaXBKSWxnVCtSK2psM29nK3pwUWZSVExDOXRqcGZuYUR2cVFWOUJ4?=
 =?utf-8?B?VjM3U29PYXFxZDVVU1dNY1NuWUE0NkxGOUNEY2YwNy9abHNpT21keHZ4eGxQ?=
 =?utf-8?B?bTVFWVNhayt3bVUvTER6L2NiRXhxSkNSdXl4VjZyZmZzVUhraitTZ1ErWmNM?=
 =?utf-8?B?NDRETzNoUmk0eG1ZSmxiWnJqbE91NVp2UHhMTGQxTzM4RjFBYmwydHEycVM5?=
 =?utf-8?B?ME1pcHJCK1RPSURGeFd0NFYrN3BJQWdRd3FJUzJ5NFdlK1VKOEprSmJEZHV1?=
 =?utf-8?B?UDk4WmNRNkZteVZjZ01acVo4Q0VrazdCK00xVGlSMDdLejFzOHBHaisrbE93?=
 =?utf-8?B?MzhKU2hzWEN6NHM4RklmanBTcWlJd0tZaEl3b254OVVjNnlLU2pOMjJ2cWw1?=
 =?utf-8?B?OGthRVB6K29jditzbU4vZHdpcm9oUnNBbWc0cFdaVDhXaHRpM3RwRzFiUWtp?=
 =?utf-8?B?MHU3Z0hiMGJjMGhlQ244QS8yYVVydERxZG5naWdkU1pPVW10NFlOS25XTjla?=
 =?utf-8?B?YWNGSkRmTXJzUWVNV25DNDQ5SSt0UHIrbXc2Y3F5MjZ6Mk5jSDZ4OU9jaGRx?=
 =?utf-8?B?bk5Pamt3QkpjSzZzT0I3bWRCZTU2cXR6WUJMdTVBT3dWTWwvNG5nYnY1Ynpl?=
 =?utf-8?B?aDFXUjhUUHRLL0IwSE9CU01MWDlRQ1g2b3JObkNDY08xRGR2ZGdkZGpySEJE?=
 =?utf-8?B?Wmx0dDJweDgweWx5bCtPTWxMNlNsWHZhdlp3dW85NXlHRkxJbk40QllTR1Rz?=
 =?utf-8?B?eC9EWFBtK3U4ZGhvZThhajRIVndyU2NwL3IzejFGYnRWNWg5aWluNUNHMUhr?=
 =?utf-8?B?YVFuNC9YMnFkYUhUMXNKakhpQXNPUkF2aVY5ZEVUczBlbjZqa2hxcW5wVU93?=
 =?utf-8?B?K0VMU0ZxL0sxeTU3d3JqQUlodzlsMStZbDhUMG9mR0gyc3pXTWJVb1pDMmRK?=
 =?utf-8?B?WDNBQVE2QU8zL0d0bDF4dFpRdFVvbzRtRlVoVDBvRjByUDNEa1l1aXZxWFB3?=
 =?utf-8?B?M0p3dDByNXExc1BoZ3BSSlE1TW5WcU1HbXorbk8vK3JuTWxHQUhpd05uQS84?=
 =?utf-8?B?ZlRuL2I1TjVGQlpPVjJHZmF4M3B3MGZiVzgydUs0VHRBMzB0WWdJNWtFTzZ0?=
 =?utf-8?B?cFN0N1I1QmFUWWhnSE9UR2RmOHBGRTdIUUhFNDYxdHdSVjM1Z05WNXR6UWZh?=
 =?utf-8?B?ZW1TNTIyZXhXdER6cU9sYlQxVEVvemZRTlJmVWpkTUNSbncxN0d1by94NG44?=
 =?utf-8?B?cmRYeHVYS2NhQ2hoYkR0YU8zdFp5VnFoenUvanQ5R21EL3ZZWE13ZlBaNU14?=
 =?utf-8?B?bmFKTmltVXhpZHVJYjNlN3NwdzJqRVBRQVUyeXFWZU1rdGJqK2Z2T3ZjREpI?=
 =?utf-8?B?czZ0NngxK3lNZEhwNnUxcmJ1aHpXUzk2VkgwMThQNUx6TmFibFU1bGF5MWYz?=
 =?utf-8?B?MDlvRjMrR1l4dTlEc08yMWxkdmlWTENBaldvbUFaTnY5dnk0akFHTmNFSnFh?=
 =?utf-8?B?U3Y4VEdsaUFEbmptajdFK3cxcTg4ekhlVEpqSkc5bmhvZEhvTGtIL2VObXEx?=
 =?utf-8?B?cmQxOXRzNlRTdnlXVTE0clMxMHVURC9uSnNpNHhZOU5ET0wrVk0xcHdWSTBM?=
 =?utf-8?B?RFJXNFZuOHRwajUybWRWRDN0eEFzMUlHOEZyUE1SOElJVUcwdEhhZ3V1ampP?=
 =?utf-8?Q?XmsaKt1SXqyV0Qj6bJx3qjM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2A1E074F6F0A574E8AFE60C0ECE7E27A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e9cd997-4aad-4de0-b304-08dbdc68e1e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 12:32:02.7914 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kNNBQVjd2XpRbqVgSYAknDJncwxAfsWXKH71+ss4St6VOjRAYkGu8YEbLBWQsJhIpjMShXQkvbUGlgoEhvzMUyB8/aW9OiJVA8jyiErv3WU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6017
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 1/1] drm/i915/xe2lpd: alternate WA for
 underruns with PSR2 and FBC
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIzLTExLTAzIGF0IDEyOjMzICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAwMyBOb3YgMjAyMywgIkdvdmluZGFwaWxsYWksIFZpbm9kIiA8dmlub2QuZ292aW5k
YXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEhpLA0KPiA+IA0KPiA+IA0KPiA+IE9uIEZy
aSwgMjAyMy0xMS0wMyBhdCAxMToyMSArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4gPiBP
biBGcmksIDAzIE5vdiAyMDIzLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGls
bGFpQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gPiA+IEltcGxlbWVudCB0aGUgYWx0ZXJuYXRlIFdB
IGZvciB0aGUgdW5kZXJydW5zIHdoZW4gYm90aCBQU1IyDQo+ID4gPiA+IGFuZCBGQkMgaXMgZW5h
YmxlZC4NCj4gPiA+IA0KPiA+ID4gQnV0IHdlIGRvbid0IGVuYWJsZSBGQkMgd2hlbiBQU1IyIGlz
IGVuYWJsZWQsIGZvciBkaXNwbGF5IDEyKy4NCj4gPiA+IA0KPiA+ID4gU2VlIGludGVsX2ZiYy5j
IGxpbmUgMTIwMCBvciBzby4NCj4gPiANCj4gPiBZZXMuIEkgaGFkIGFub3RoZXIgc2VyaWVzIHRv
IGVuYWJsZSBGQkMgKyBQU1IgZm9yIHhlMmxwZC4NCj4gPiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzEyNTkzMi8NCj4gPiBJIHNob3VsZCBtZW50aW9uIHRoYXQgaGVy
ZS4NCj4gDQo+IFdlbGwsIHRoaXMgZGVwZW5kcyBvbiB0aGF0IHN0dWZmLCBzbyBtYXliZSB0aGVz
ZSBzaG91bGQgYWxsIGJlIHBhcnQgb2YNCj4gdGhlIHNhbWUgc2VyaWVzPw0KDQpPa2F5ISBJIGNh
biBtYWtlIHRoaXMgYXMgcGFydCBvZiB0aGUgUFNSICsgRkJDIHNlcmllcw0KDQpCUg0KVmlub2QN
Cg0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiA+IA0KPiA+IA0KPiA+IFRoYW5rcw0KPiA+IFZp
bm9kDQo+ID4gDQo+ID4gPiANCj4gPiA+IEJSLA0KPiA+ID4gSmFuaS4NCj4gPiA+IA0KPiA+ID4g
DQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2
aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDEyICsrKysrKysrKysrLQ0K
PiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9mYmMuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMNCj4gPiA+ID4gaW5kZXggYmRlMTJmZTYyMjc1Li5iOWNkOTJhOTk3Y2QgMTAw
NjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMu
Yw0KPiA+ID4gPiBAQCAtNjA4LDYgKzYwOCw3IEBAIHN0YXRpYyB1MzIgaXZiX2RwZmNfY3RsKHN0
cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gPiA+ID4gwqBzdGF0aWMgdm9pZCBpdmJfZmJjX2FjdGl2
YXRlKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gPiA+ID4gwqB7DQo+ID4gPiA+IMKgwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGZiYy0+aTkxNTsNCj4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgdTMyIGRwZmNfY3RsOw0KPiA+ID4gPiDCoA0KPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEwKQ0KPiA+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdsa19mYmNfcHJvZ3JhbV9jZmJfc3RyaWRlKGZiYyk7
DQo+ID4gPiA+IEBAIC02MTcsOCArNjE4LDE3IEBAIHN0YXRpYyB2b2lkIGl2Yl9mYmNfYWN0aXZh
dGUoc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGlu
dGVsX2d0X3N1cHBvcnRfbGVnYWN5X2ZlbmNpbmcodG9fZ3QoaTkxNSkpKQ0KPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNuYl9mYmNfcHJvZ3JhbV9mZW5jZShmYmMpOw0K
PiA+ID4gPiDCoA0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAvKg0KPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqAgKiBBbHRlcm5hdGUgV0EgZm9yIEhXIGJ1ZyB3aXRoIFBTUjIgKyBGQkMuDQo+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoCAqIDEuV3JpdGUgRkJDX0NUTCB3aXRoIFBsYW5lIGJpbmRpbmcgc2V0
IGNvcnJlY3RseSB3aXRoIEZCQyBlbmFibGUgPSAwDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCAq
IDIuV3JpdGUgRkJDX0NUTCB3aXRoIFBsYW5lIGJpbmRpbmcgc2V0IGNvcnJlY3RseSB3aXRoIEZC
QyBlbmFibGUgPSAxDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCAqLw0KPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqBkcGZjX2N0bCA9IGl2Yl9kcGZjX2N0bChmYmMpOw0KPiA+ID4gPiArwqDCoMKgwqDC
oMKgwqBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMjApDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZShpOTE1LCBJTEtfRFBGQ19DT05UUk9MKGZi
Yy0+aWQpLCBkcGZjX2N0bCk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlu
dGVsX2RlX3dyaXRlKGk5MTUsIElMS19EUEZDX0NPTlRST0woZmJjLT5pZCksDQo+ID4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBGQ19DVExfRU4gfCBp
dmJfZHBmY19jdGwoZmJjKSk7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgRFBGQ19DVExfRU4gfCBkcGZjX2N0bCk7DQo+ID4gPiA+IMKgfQ0KPiA+
ID4gPiDCoA0KPiA+ID4gPiDCoHN0YXRpYyBib29sIGl2Yl9mYmNfaXNfY29tcHJlc3Npbmcoc3Ry
dWN0IGludGVsX2ZiYyAqZmJjKQ0KPiA+ID4gDQo+ID4gDQo+IA0KDQo=
