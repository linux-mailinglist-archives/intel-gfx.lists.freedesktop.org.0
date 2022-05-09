Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9090551FE5A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 15:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0427910E7EF;
	Mon,  9 May 2022 13:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADDAC10E7EF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 13:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652103180; x=1683639180;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YkEuhqeqlmzNCnVotuY7poVF7+0tY4kd+I7KbybLzPE=;
 b=TBm29b0zHJRVUTL9ylWrMYJ7yl0QAgTeysZicAH35z5k1ymfHp/jhwz0
 EcNftpgONCZa7uApWlz5S2xZm8hm4Ea62UWhjpNaG54CtdYv7LON7gt6U
 9aplRlNX0CTaHTPLkqZtE2sqwtgAZhnMFZXBInOYBUbkH+WIyTUy04R0X
 ha/w/vozZU/08yBGFZd3fJ2BBDg1rd5fzo6GZwUBBqbcw1YyeJgDLJ7Gr
 ce3du+A/epQwi4Nu7WGsDpYqwl+wWbMACv9HIf+2BWzBZ5MPJ+PLl7Ed0
 tmPdZAsDqT2AUH9qpW8cYkK/37bEhuI1qxHUx28guITy85QAojbJlusL6 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="248951668"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="248951668"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 06:32:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="738167103"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga005.jf.intel.com with ESMTP; 09 May 2022 06:32:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 9 May 2022 06:32:35 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Mon, 9 May 2022 06:32:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH v2 1/2] drm/i915/psr: Use full update In case of area
 calculation fails
Thread-Index: AQHYY3XMnvW1a1gKFk6c1uFb0Wui6q0XAOgA
Date: Mon, 9 May 2022 13:32:35 +0000
Message-ID: <ee93f276c4116da6384fcb225148881ef91a30ce.camel@intel.com>
References: <20220509072404.1423018-1-jouni.hogander@intel.com>
 <20220509072404.1423018-2-jouni.hogander@intel.com>
In-Reply-To: <20220509072404.1423018-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-Type: text/plain; charset="utf-8"
Content-ID: <5FC1EB5E87A5C64DB596FC6D6D954C90@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/psr: Use full update In
 case of area calculation fails
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
Cc: "markpearson@lenovo.com" <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTA1LTA5IGF0IDEwOjI0ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnRseSB3ZSBoYXZlIHNvbWUgY29ybmVyIGNhc2VzIHdoZXJlIGFyZWEgY2FsY3Vs
YXRpb24gZmFpbHMuICBGb3INCj4gdGhlc2Ugc2VsIGZldGNoIGFyZWEgY2FsY3VsYXRpb24gZW5k
cyB1cCBoYXZpbmcgdXBkYXRlIGFyZWEgYXMgeTEgPSAwLA0KPiB5MiA9IDQuIEluc3RlYWQgb2Yg
dGhlc2UgdmFsdWVzIHNhZmVyIG9wdGlvbiBpcyBmdWxsIHVwZGF0ZS4NCj4gDQo+IE9uZSBvZiBz
dWNoIGZvciBleGFtcGxlIGlzIGJpZyBmYiB3aXRoIG9mZnNldC4gV2UgZG9uJ3QgaGF2ZSB1c2Fi
bGUNCj4gb2Zmc2V0IGluIHBzcjJfc2VsX2ZldGNoX3VwZGF0ZS4gQ3VycmVudGx5IGl0J3Mgb3Bl
biB3aGF0IGlzIHRoZQ0KPiBwcm9wZXIgd2F5IHRvIGZpeCB0aGlzIGNvcm5lciBjYXNlLiBVc2Ug
ZnVsbCB1cGRhdGUgZm9yIG5vdy4NCj4gDQo+IHYyOiBDb21taXQgbWVzc2FnZSBtb2RpZmllZA0K
PiANCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gVGVzdGVkLWJ5OiBN
YXJrIFBlYXJzb24gPG1hcmtwZWFyc29uQGxlbm92by5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpv
dW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzICsrKw0KPiAgMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IGluZGV4IDA2ZGI0MDdlMjc0OS4uOGMwOTlkMjRkZTg2IDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE3NzAsNiAr
MTc3MCw5IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCWNsaXBfYXJlYV91cGRhdGUoJnBpcGVfY2xpcCwgJmRh
bWFnZWRfYXJlYSk7DQo+ICAJfQ0KPiAgDQo+ICsJaWYgKHBpcGVfY2xpcC55MSA9PSAtMSkNCj4g
KwkJZnVsbF91cGRhdGUgPSB0cnVlOw0KDQpMZWZ0IHRoZSBkZWJ1Z19vbmNlIGFuZCB0aGUgVE9E
TyBvdXQsIGZvciBhIHJlZ3VsYXIgcmVhZGVyIHRoaXMgbG9va3MgbGlrZSBhIG5vcm1hbCBjb2Rl
IHBhdGguLi4gd2hhdCBpcyBub3QgdGhlIGNhc2UuDQoNCj4gKw0KPiAgCWlmIChmdWxsX3VwZGF0
ZSkNCj4gIAkJZ290byBza2lwX3NlbF9mZXRjaF9zZXRfbG9vcDsNCj4gIA0KDQo=
