Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6D547965B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 22:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1841D10E629;
	Fri, 17 Dec 2021 21:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34E910E629
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 21:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639777057; x=1671313057;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=dFlI6+uLyGm6FezSvIbhPtSuQvLvKCxC81h1jgJajik=;
 b=FE44zQmbkTLLzjBd0hlWn0rMCH4ymqmcRpNM1kqbSgGiRF9/tR2kqzfz
 p06NGEE/vLRlOQ0ml32NbVNaZ3HIuHAS/vzg3FjTuL6n729/HoiyoFJeR
 buFKEpI9XEps55+1q6qdFrOQ5NJTEamNW9gsUrMa5SrD5ELmL60SptUAD
 rddgllr/0Xpy2lxWWCK3Zm+N4oifZPbkbtS9oC9YbsGpeV0POX1zlic4l
 SFnTQOiczkFSnCnQZhdMU9mAqjkIxkGS71xuaZzeU1k5ly1xQ04utUYBh
 lwlpT0ig19CRYnwVhjfkzua2nSLTWD7uercVJxggQMTeHLCqr4PoCMak4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="239790211"
X-IronPort-AV: E=Sophos;i="5.88,214,1635231600"; d="scan'208";a="239790211"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 13:37:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,214,1635231600"; d="scan'208";a="683527223"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 17 Dec 2021 13:37:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 17 Dec 2021 13:37:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 17 Dec 2021 13:37:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 17 Dec 2021 13:37:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKXx8JRqYHoVfcb/TmwKvXMeW5pFnUPE94LWwmdJLk3dwO6bYM+wewgDhd34Zm6bY50O3s+fGiDDyNE/MUvULwj5ZRGaKOYdVOeqspXAot7iKYXgBWKZisXmGmSRHnRmT5hYN7AZ9X4nAJgXIhISvRcypjRZcPVtAy3rMdmGLRM51REnPBVGohIGyCfEiVXC2ptXenvkkj7JUvxfEV/78nwd3nlwg9XeUg4t/3u5dT0WvN9U2MqdZA8AedCDbe2umRExAu+Lev+lLsxzOOUSRLtreaFT9cqQTrKkjQaQrNzjV3jq+u2nrSmnUQjNCu+sgPGY9OVhtHnHljFeIexo3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dFlI6+uLyGm6FezSvIbhPtSuQvLvKCxC81h1jgJajik=;
 b=HoBPzIeCtBm/UdArFwxrAh9xf1yFiQ7zx4ii0F+n//GCjTcv2FOeXO/fXtKVo1bzz6plNFSBsf0q7q84NVOc5TyeXfIsrmOzSgNhc5XfHcc6mA4CcvvvL9QObF+r1GWZfMWaFdm3xIj1Yi2qBBRGmaP7dw8LPHouV1w857ZEeYugBcARqVHBy1RkX7dQWyjULpa1/idlDP1PaF/oxOuW4/23grpd+CKJP2pVCIhqqK2ScBiqqx5tJrcjxGCX7xfVCXTatD+XlypYMBp/DmvzaeSQjH37kEW+itV8RMLGD8TVyMyAg+yMzoG98hH8SJ5yvhomZWWI25nOciV3Nw6TVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by MWHPR11MB1726.namprd11.prod.outlook.com (2603:10b6:300:23::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.17; Fri, 17 Dec
 2021 21:37:34 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6969:18ef:2c3e:7cea]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::6969:18ef:2c3e:7cea%4]) with mapi id 15.20.4778.016; Fri, 17 Dec 2021
 21:37:34 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dmc: Eliminate remnant GEN<n>
 references
Thread-Index: AQHX8vhQ1pkKW8VhYESX1NZZDFZZW6w3NqiA
Date: Fri, 17 Dec 2021 21:37:34 +0000
Message-ID: <4c02824ccbb7d40c15fc20ea272013c41e9aa54a.camel@intel.com>
References: <20211217034141.198033-1-madhumitha.tolakanahalli.pradeep@intel.com>
In-Reply-To: <20211217034141.198033-1-madhumitha.tolakanahalli.pradeep@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 08844e1c-e950-45ee-2077-08d9c1a57042
x-ms-traffictypediagnostic: MWHPR11MB1726:EE_
x-microsoft-antispam-prvs: <MWHPR11MB17260B78AB57F3BC77236D439F789@MWHPR11MB1726.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zyXF/HQiL4d61dhZqGBg03ys106q5BDMTlDhiA1SLJ0ZihcXJpWIcIfElXJx86Dy9tMaL8TaH32EDytcMyvskDzhAEOTL0z3t9+SYbZdkYxBMq3YTYgImSOT8eOUzfebJpuY6kepul/dM5eWWSFDp3JSEOeT+oLFW4fV6W2RLxXH4AeUZfAZ4JU67SDqjjCpD97myAwG0i2aLuYValQzi/I+fQ5/vU4asF14/CFwjomcyk73xLysPeDIXjNEsGMS8bxdL25E26uvS8RWd6FvcXZC7hRqbYnmMI5eYLCse1gWPptpXefqgtWkwdt1rfxN3R3OvGqsnhLMuCBoXsk6qkHJjDgGZikLQw9TTg4tTaQveLIKO4xW23nlVLgHnx6gRFc02ZxEt+LDI5Sx+SRoeLK4FcuZvTPgWhgKuOVZ3FWJrp1gKWXgkJ0icbXw65mMsl8xxEE+QnOApoBi6Jc9g95QqDdD3HOz7mv4oALIQKP7RoXb8sWdYW0ojS1H95s+hESFsObYkDhRUELvY9Gk2+C2ZS+ghHhEepF+owN9JmUsldt4OoN5MJF7FHt2RMDuxe+Mu4BJprmF9kVa3XoWCmjUFUtzjhOUakiUv/M3BbrkeUapXL3ddrP0/xgcZY1m2Q+ualJx/WEy/jlA2JjYVb5yGNpRx7/W1CCZiBHg87JDQIkVdLit44QQDr5RcpU2W26ldWfRhVdkn8KAZDLJfA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66446008)(6512007)(66556008)(316002)(122000001)(26005)(66946007)(6506007)(8936002)(6916009)(508600001)(64756008)(86362001)(76116006)(2906002)(66476007)(186003)(71200400001)(6486002)(83380400001)(82960400001)(2616005)(4001150100001)(8676002)(38100700002)(5660300002)(36756003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RWdIaWVCOUs4MXpLN0dHNEdyelRicjVmY1JBVmNnZWVIUVVCbU9hUDRSVktu?=
 =?utf-8?B?RzJlZmhFUUx3cHNONEZHSlZVeTdiZDFLSTFaWEtCei9pNUhvY05jUzVJTFdI?=
 =?utf-8?B?b1g3a2ZtM1Z2UXR5WmtlL3Q5ekprK0lUUW9SdHBPREVPeHhlckVQWkFiSXo1?=
 =?utf-8?B?TEZWRHBHYmpYdlVVTGlqWmtRZm1iL21QbUtNb2tIR1RrbFFmOEkrYThzaEV0?=
 =?utf-8?B?NnlFOGpsaGFMUGxtY29iUEFZakM1MHdqak1LSWFMTWZQSnNiRU5JZHFWUzNt?=
 =?utf-8?B?SlV0THpROFYvV3RoYXBaSHlaODNzbnhnb0s3cStueUwxdHJzUHhzOVZyMmIv?=
 =?utf-8?B?RWZJUVI0cWVtSitUaS8rQzZrMHd4YytlMjVGY3lqeDVtM2JsYjdaSjNOcHZN?=
 =?utf-8?B?UWRVWS9OYjc5L0pSUXE3ZU1UdFNqcTBFdXBOTDdXTDFMeHYrWG8yaTI5N0xa?=
 =?utf-8?B?OG5hSlVOSzExdWF3VjdWUVFWN1RBYnNEenRCYUQ5RklucnZ4WXR3WW1MYlJC?=
 =?utf-8?B?NEpha3RQdEdBMVZ5MWlPS0NKcGkxL0UwRnloTit6a1lQbHloLy9BVW1MN25U?=
 =?utf-8?B?ZGpJKzhEcG9xQkZkK1NZM1RvdFE4bUJTeTcydFJXTzhydTlWV0ZmRnA1VE1i?=
 =?utf-8?B?TlFLWTcxMUJ2NFR5eDRYbzJ5WGZZWnZ2cUNUTW5KbGF3TlhsTUgrTmY2STQ4?=
 =?utf-8?B?aFJQOHErL1FWWStWOEVtZkxZSklubnlMazI3OXlvdDJYdjZrQUwweXlyMjht?=
 =?utf-8?B?Rk5FZkM5eTcveWVhdVFjb3N3TkhxUjFtNmF1KzFBcXFqR2pWalM3TzFaeXdu?=
 =?utf-8?B?TVlCTEE3L3ljOFFyN01PT1BmR2t0WTFJMjZxWExuaWFGVjRQSVVwdXZrOXV3?=
 =?utf-8?B?Y3QrbW5yOUt2TEZxYU1lRURRNG9lZGpKbjA2YzJOOUltcktxdlJaemh2REg4?=
 =?utf-8?B?UXRuK2RQd1RMdmIrZG9ycWxUZEZUVW40KzBldjl0NllQVzVYUDhiSm00ajhO?=
 =?utf-8?B?QXJtb2JaaGFLZTNGNHduNU5kaVZoZ3lWdDJnNUJDdHZuODNrR2lSakoyZTI4?=
 =?utf-8?B?cHVVMktVKzBBY216ckloTHNuR1QyL0hPNmtUbXZkNXJmcEIrWml0UEoyMG1I?=
 =?utf-8?B?Z1VkMEtieEZaZ0lCdzlxMmd4VFpSSmZGRFkrTmpsdUhOWEtSQysrQWh2cVNY?=
 =?utf-8?B?ZEwycThPWjRNaVovTUQxVUdNWHFETzROeDJSV0dDSGdteks3K0NGUFRCRGdY?=
 =?utf-8?B?YnhQblAwamE4bWZhZnI0aUc0T1RXUXJ0TUkrYmJvQnpZWDVmU1R4bWZhL3li?=
 =?utf-8?B?aXRWSHdZVUhTeWhtTU5mK1kxcHZDNGMreUhuNXhwT3A1NlhpSWhPdkx4aXFt?=
 =?utf-8?B?ZEVTMU1WZ3EyRm5Pa0FBb3NxYUdNSEF1UktwN2wvSU9uODFuanJQNWJmZjR6?=
 =?utf-8?B?djZkT2JnNDh1VytHMmNGUFFSeHJXd3cyQk5RMnNwZmFjVlluN010K0xwWGow?=
 =?utf-8?B?bEVIR0RTQnRTeThrVEZuai9XZ0dac3dOR2Vjek5HM3RQMlBWWWxIeEpqVVFQ?=
 =?utf-8?B?QXRvWnYxNlVKVkVPamFIU0dEL1RPWldwNDl2bnNHcTBCcjJVdGhJV2N3cm9C?=
 =?utf-8?B?TjJEeGVDSDhzNnRQMm9KVU1SUmhGU052bFhzWXhYU09UZEVQMlVkdWpodHQ0?=
 =?utf-8?B?TUhPaVd0RDJoZGZDZURqOGNBSTROOUhyMWpYd3FkRGw2dEJYOENCRkxlNnhs?=
 =?utf-8?B?MGdJS01EaTBja2pxQVJ5YlhKOXptenRYNEY1ZmxQeGxPK2ZPMGJzaFNCL00r?=
 =?utf-8?B?UEl3MWQ4cEtmZlhUYXZMQ0o0ZllMeU5DazJmWWpDRTNrRW8wZ3hNaVBYVHNE?=
 =?utf-8?B?S1hFSVdrck9wOEpyZW5wWktRbWlXL1VIVm0rYmY0Vi9CT203MS8wc2hLZ1RN?=
 =?utf-8?B?UndkcUpYZzZ1VDZ0NWoxS2k2OGYraG5WeVZwdThkcHlnbTJzbzR1am5RbU90?=
 =?utf-8?B?S2xWU25MazNwWFFvajV4U0ZmL05IRlZ5Vzk5dUg3bkM3UVVlRkxONEFzR2Zl?=
 =?utf-8?B?eGRJWnRRc2ptTjdKaWVnWWNzMUlXQmRsd1h4eHhoZWpzMVZjUjBlUXRzbXBX?=
 =?utf-8?B?SVVYM3BPT0xpdVAvcThjNWhZTkVibk90VjRjNXVpdThPeUJkV1RiRTV6SGo0?=
 =?utf-8?Q?hd+1VUyV35aL3oi+jYkqnZs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5C48A00A0906C649B144D4168099BE88@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08844e1c-e950-45ee-2077-08d9c1a57042
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2021 21:37:34.5189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E+7MSkIjpUpnn0oW+wnN+8rFuYf07wAMzjJcqHst8ykE5kLPjOONrdBGNYjL8FbaPeHeyfqiCiMUKNcHQYlMnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1726
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Eliminate remnant GEN<n>
 references
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

T24gVGh1LCAyMDIxLTEyLTE2IGF0IDE5OjQxIC0wODAwLCBNYWRodW1pdGhhIFRvbGFrYW5haGFs
bGkgUHJhZGVlcA0Kd3JvdGU6DQo+IFJlcGxhY2UgR0VOPG4+IHdpdGggRElTUExBWV9WRVI8bj4s
IGluIGxpbmUgd2l0aCB0aGUgbmFtaW5nDQo+IGNvbnZlbnRpb24NCj4gZm9sbG93ZWQgaW4gdGhl
IGk5MTUgZHJpdmVyIGNvZGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYWRodW1pdGhhIFRvbGFr
YW5haGFsbGkgUHJhZGVlcCA8DQo+IG1hZGh1bWl0aGEudG9sYWthbmFoYWxsaS5wcmFkZWVwQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rt
Yy5jIHwgMTQgKysrKysrKy0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZG1jLmMNCj4gaW5kZXggYTY5YjI4ZDY1YTliLi43NjE2YTM5MDZiOWUgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBAQCAtNDMsOSArNDMs
OSBAQA0KPiAgCV9fc3RyaW5naWZ5KG1ham9yKSAiXyIJCSBcDQo+ICAJX19zdHJpbmdpZnkobWlu
b3IpICIuYmluIg0KPiAgDQo+IC0jZGVmaW5lIEdFTjEyX0RNQ19NQVhfRldfU0laRQkJSUNMX0RN
Q19NQVhfRldfU0laRQ0KPiArI2RlZmluZSBESVNQTEFZX1ZFUjEzX0RNQ19NQVhfRldfU0laRQkw
eDIwMDAwDQo+ICANCj4gLSNkZWZpbmUgR0VOMTNfRE1DX01BWF9GV19TSVpFCQkweDIwMDAwDQo+
ICsjZGVmaW5lIERJU1BMQVlfVkVSMTJfRE1DX01BWF9GV19TSVpFCUlDTF9ETUNfTUFYX0ZXX1NJ
WkUNCldoeSB0aGUgb3JkZXIgb2YgR0VOMTIvMTMgYW5kIFZFUjEyLzEzIGlzIHJldmVyc2VkPw0K
T3RoZXIgdGhhbiB0aGF0LCBMR1RNLg0KLWNheg0KDQo+ICANCj4gICNkZWZpbmUgQURMUF9ETUNf
UEFUSAkJCURNQ19QQVRIKGFkbHAsIDIsIDE0KQ0KPiAgI2RlZmluZSBBRExQX0RNQ19WRVJTSU9O
X1JFUVVJUkVECURNQ19WRVJTSU9OKDIsIDE0KQ0KPiBAQCAtNjg0LDIzICs2ODQsMjMgQEAgdm9p
ZCBpbnRlbF9kbWNfdWNvZGVfaW5pdChzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpDQo+ICAJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgew0KPiAgCQlkbWMtPmZ3X3Bh
dGggPSBBRExQX0RNQ19QQVRIOw0KPiAgCQlkbWMtPnJlcXVpcmVkX3ZlcnNpb24gPSBBRExQX0RN
Q19WRVJTSU9OX1JFUVVJUkVEOw0KPiAtCQlkbWMtPm1heF9md19zaXplID0gR0VOMTNfRE1DX01B
WF9GV19TSVpFOw0KPiArCQlkbWMtPm1heF9md19zaXplID0gRElTUExBWV9WRVIxM19ETUNfTUFY
X0ZXX1NJWkU7DQo+ICAJfSBlbHNlIGlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikpIHsNCj4g
IAkJZG1jLT5md19wYXRoID0gQURMU19ETUNfUEFUSDsNCj4gIAkJZG1jLT5yZXF1aXJlZF92ZXJz
aW9uID0gQURMU19ETUNfVkVSU0lPTl9SRVFVSVJFRDsNCj4gLQkJZG1jLT5tYXhfZndfc2l6ZSA9
IEdFTjEyX0RNQ19NQVhfRldfU0laRTsNCj4gKwkJZG1jLT5tYXhfZndfc2l6ZSA9IERJU1BMQVlf
VkVSMTJfRE1DX01BWF9GV19TSVpFOw0KPiAgCX0gZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSkg
ew0KPiAgCQlkbWMtPmZ3X3BhdGggPSBERzFfRE1DX1BBVEg7DQo+ICAJCWRtYy0+cmVxdWlyZWRf
dmVyc2lvbiA9IERHMV9ETUNfVkVSU0lPTl9SRVFVSVJFRDsNCj4gLQkJZG1jLT5tYXhfZndfc2l6
ZSA9IEdFTjEyX0RNQ19NQVhfRldfU0laRTsNCj4gKwkJZG1jLT5tYXhfZndfc2l6ZSA9IERJU1BM
QVlfVkVSMTJfRE1DX01BWF9GV19TSVpFOw0KPiAgCX0gZWxzZSBpZiAoSVNfUk9DS0VUTEFLRShk
ZXZfcHJpdikpIHsNCj4gIAkJZG1jLT5md19wYXRoID0gUktMX0RNQ19QQVRIOw0KPiAgCQlkbWMt
PnJlcXVpcmVkX3ZlcnNpb24gPSBSS0xfRE1DX1ZFUlNJT05fUkVRVUlSRUQ7DQo+IC0JCWRtYy0+
bWF4X2Z3X3NpemUgPSBHRU4xMl9ETUNfTUFYX0ZXX1NJWkU7DQo+ICsJCWRtYy0+bWF4X2Z3X3Np
emUgPSBESVNQTEFZX1ZFUjEyX0RNQ19NQVhfRldfU0laRTsNCj4gIAl9IGVsc2UgaWYgKERJU1BM
QVlfVkVSKGRldl9wcml2KSA+PSAxMikgew0KPiAgCQlkbWMtPmZ3X3BhdGggPSBUR0xfRE1DX1BB
VEg7DQo+ICAJCWRtYy0+cmVxdWlyZWRfdmVyc2lvbiA9IFRHTF9ETUNfVkVSU0lPTl9SRVFVSVJF
RDsNCj4gLQkJZG1jLT5tYXhfZndfc2l6ZSA9IEdFTjEyX0RNQ19NQVhfRldfU0laRTsNCj4gKwkJ
ZG1jLT5tYXhfZndfc2l6ZSA9IERJU1BMQVlfVkVSMTJfRE1DX01BWF9GV19TSVpFOw0KPiAgCX0g
ZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID09IDExKSB7DQo+ICAJCWRtYy0+ZndfcGF0
aCA9IElDTF9ETUNfUEFUSDsNCj4gIAkJZG1jLT5yZXF1aXJlZF92ZXJzaW9uID0gSUNMX0RNQ19W
RVJTSU9OX1JFUVVJUkVEOw0K
