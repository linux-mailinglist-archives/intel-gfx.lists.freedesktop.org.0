Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E07520B095
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 13:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE7C6EC73;
	Fri, 26 Jun 2020 11:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5064C6EC73
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 11:34:47 +0000 (UTC)
IronPort-SDR: QADB7/v8RCON7MxfQozH84qPYMpFnA3WO9sN7SSskAXgj4KGR7h7ZjhOwkDZanhoRY1BMuYxBg
 MLtK2c4wXKew==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="210374891"
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="210374891"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 04:34:46 -0700
IronPort-SDR: Qb95r911SexaBaPOMSpbhW9c6JbTJAk9YcLWeanP3eI8IXX0vySTzdxKl9CmZTNzeyHXCeY/L5
 D1YP4I6z+Fzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="276341484"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by orsmga003.jf.intel.com with ESMTP; 26 Jun 2020 04:34:44 -0700
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX153.ger.corp.intel.com (163.33.192.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jun 2020 12:34:42 +0100
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 26 Jun 2020 12:34:43 +0100
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Fri, 26 Jun 2020 12:34:43 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2VuZCBh?=
 =?utf-8?Q?_hotplug_when_edid_changes_(rev8)?=
Thread-Index: AQHWS6Buh/te4/OI3EeRuipwnPn8J6jqswkAgAAQ15M=
Date: Fri, 26 Jun 2020 11:34:42 +0000
Message-ID: <c42ac508dc914e92a454503607b1c488@intel.com>
References: <20200623185756.19502-1-kunal1.joshi@intel.com>
 <159316554368.22986.130817435382883180@emeril.freedesktop.org>,
 <8bb621ba77744f599364bd096447db3d@intel.com>
In-Reply-To: <8bb621ba77744f599364bd096447db3d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2Vu?=
 =?utf-8?q?d_a_hotplug_when_edid_changes_=28rev8=29?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3VyZSBpdCBpcyBnZW0gYXMgdXN1YWwuIGdlbV9jdHhfcGVyc2lzdGFuY2UgdGVzdCBpcyBhYnNv
bHV0ZWx5IG9ydGhvZ29uYWwgdG8gYW55IGhvdHBsdWcgZnVuY2l0b25hbGl0eS4NCkFsc28gaXQg
ZmFpbHMgYWxtb3N0IG9uIHdlZWtseSBiYXNpcy4NCg0KQmVzdCBSZWdhcmRzLA0KDQpMaXNvdnNr
aXkgU3RhbmlzbGF2DQoNCk9yZ2FuaXphdGlvbjogSW50ZWwgRmlubGFuZCBPeSAtIEJJQyAwMzU3
NjA2LTQgLSBXZXN0ZW5kaW5rYXR1IDcsIDAyMTYwIEVzcG9vDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18NCkZyb206IFNhYXJpbmVuLCBKYW5pDQpTZW50OiBGcmlk
YXksIEp1bmUgMjYsIDIwMjAgMjozMjo1MiBQTQ0KVG86IExpc292c2tpeSwgU3RhbmlzbGF2DQpT
dWJqZWN0OiBGVzogW0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2VuZCBh
IGhvdHBsdWcgd2hlbiBlZGlkIGNoYW5nZXMgKHJldjgpDQoNCkhpLA0KQ2FuIHlvdSBjb21tZW50
IGlmIHRoYXQgaXNzdWUgaXMgcmVhbCBvbiB0aGF0IGdlbSB0ZXN0IHRoYXQgZmFpbHMuLi4NCj4g
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBQYXRjaHdvcmsNCj4g
U2VudDogcGVyamFudGFpIDI2LiBrZXPDpGt1dXRhIDIwMjAgMTIuNTkNCj4gVG86IExpc292c2tp
eSwgU3RhbmlzbGF2IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gQ2M6IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g4pyXIEZp
LkNJLklHVDogZmFpbHVyZSBmb3IgU2VuZCBhIGhvdHBsdWcgd2hlbiBlZGlkIGNoYW5nZXMgKHJl
djgpDQo+DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+DQo+IFNlcmllczogU2VuZCBhIGhvdHBs
dWcgd2hlbiBlZGlkIGNoYW5nZXMgKHJldjgpDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjgxNi8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+DQo+ID09
IFN1bW1hcnkgPT0NCj4NCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fODY2MV9m
dWxsIC0+IFBhdGNod29ya18xODAxNl9mdWxsDQo+ID09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4NCj4gU3VtbWFyeQ0KPiAtLS0tLS0tDQo+DQo+
ICAgKipGQUlMVVJFKioNCj4NCj4gICBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0
aCBQYXRjaHdvcmtfMTgwMTZfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUNCj4gICB2ZXJpZmll
ZCBtYW51YWxseS4NCj4NCj4gICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2
ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4gICBpbnRyb2R1Y2VkIGluIFBhdGNo
d29ya18xODAxNl9mdWxsLCBwbGVhc2Ugbm90aWZ5IHlvdXIgYnVnIHRlYW0gdG8gYWxsb3cgdGhl
bQ0KPiAgIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1
Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPg0KPg0KPg0KPiBQb3NzaWJsZSBuZXcgaXNzdWVz
DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4NCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFu
Z2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluDQo+IFBhdGNod29ya18xODAxNl9m
dWxsOg0KPg0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+DQo+ICMjIyMgUG9zc2libGUgcmVncmVz
c2lvbnMgIyMjIw0KPg0KPiAgICogaWd0QGdlbV9jdHhfcGVyc2lzdGVuY2VAbGVnYWN5LWVuZ2lu
ZXMtbWl4ZWRAdmVib3g6DQo+ICAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzFdIC0+
IFtGQUlMXVsyXQ0KPiAgICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzg2NjEvc2hhcmQtDQo+IHNrbDYvaWd0QGdlbV9jdHhfcGVyc2lzdGVuY2VA
bGVnYWN5LWVuZ2luZXMtbWl4ZWRAdmVib3guaHRtbA0KPiAgICBbMl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4MDE2L3NoYXJkLQ0KPiBza2w0
L2lndEBnZW1fY3R4X3BlcnNpc3RlbmNlQGxlZ2FjeS1lbmdpbmVzLW1peGVkQHZlYm94Lmh0bWwN
Cj4NCj4NCj4gS25vd24gaXNzdWVzDQo+IC0tLS0tLS0tLS0tLQ0KPg0KPiAgIEhlcmUgYXJlIHRo
ZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29ya18xODAxNl9mdWxsIHRoYXQgY29tZSBmcm9tIGtu
b3duIGlzc3VlczoNCj4NCj4gIyMjIElHVCBjaGFuZ2VzICMjIw0KPg0KPiAjIyMjIElzc3VlcyBo
aXQgIyMjIw0KPg0KPiAgICogaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHByZXNlcnZhdGlvbi1zM0By
Y3MwOg0KPiAgICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVszXSAtPiBbRE1FU0ctV0FS
Tl1bNF0gKFtpOTE1IzE4MF0pICsxIHNpbWlsYXIgaXNzdWUNCj4gICAgWzNdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0KPiBrYmwz
L2lndEBnZW1fY3R4X2lzb2xhdGlvbkBwcmVzZXJ2YXRpb24tczNAcmNzMC5odG1sDQo+ICAgIFs0
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTgw
MTYvc2hhcmQtDQo+IGtibDcvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHByZXNlcnZhdGlvbi1zM0By
Y3MwLmh0bWwNCj4NCj4gICAqIGlndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC13aXRoLWZhdWx0
LWluamVjdGlvbjoNCj4gICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBbUEFTU11bNV0gLT4gW0RN
RVNHLVdBUk5dWzZdIChbaTkxNSM0MDJdKSArMSBzaW1pbGFyIGlzc3VlDQo+ICAgIFs1XTogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODY2MS9zaGFyZC0N
Cj4gdGdsYjYvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVsb2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9u
Lmh0bWwNCj4gICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xODAxNi9zaGFyZC0NCj4gdGdsYjUvaWd0QGk5MTVfbW9kdWxlX2xvYWRAcmVs
b2FkLXdpdGgtZmF1bHQtaW5qZWN0aW9uLmh0bWwNCj4NCj4gICAqIGlndEBrbXNfYmlnX2ZiQHkt
dGlsZWQtNjRicHAtcm90YXRlLTA6DQo+ICAgICAtIHNoYXJkLWljbGI6ICAgICAgICAgW1BBU1Nd
WzddIC0+IFtETUVTRy1XQVJOXVs4XSAoW2k5MTUjMTk4Ml0pDQo+ICAgIFs3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODY2MS9zaGFyZC0NCj4gaWNs
YjEvaWd0QGttc19iaWdfZmJAeS10aWxlZC02NGJwcC1yb3RhdGUtMC5odG1sDQo+ICAgIFs4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTgwMTYv
c2hhcmQtDQo+IGljbGIzL2lndEBrbXNfYmlnX2ZiQHktdGlsZWQtNjRicHAtcm90YXRlLTAuaHRt
bA0KPg0KPiAgICogaWd0QGttc19jdXJzb3JfY3JjQHBpcGUtYS1jdXJzb3ItMjU2eDg1LW9uc2Ny
ZWVuOg0KPiAgICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctRkFJ
TF1bMTBdIChbaTkxNSM1NF0gLyBbaTkxNSM5NV0pDQo+ICAgIFs5XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODY2MS9zaGFyZC0NCj4ga2JsMS9pZ3RA
a21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci0yNTZ4ODUtb25zY3JlZW4uaHRtbA0KPiAgICBb
MTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18x
ODAxNi9zaGFyZC0NCj4ga2JsNC9pZ3RAa21zX2N1cnNvcl9jcmNAcGlwZS1hLWN1cnNvci0yNTZ4
ODUtb25zY3JlZW4uaHRtbA0KPg0KPiAgICogaWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWJ1
c3ktZmxpcC1iZWZvcmUtY3Vyc29yLWxlZ2FjeToNCj4gICAgIC0gc2hhcmQtc2tsOiAgICAgICAg
ICBbUEFTU11bMTFdIC0+IFtETUVTRy1XQVJOXVsxMl0gKFtpOTE1IzE5ODJdKSArMTAgc2ltaWxh
ciBpc3N1ZXMNCj4gICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJt
LXRpcC9DSV9EUk1fODY2MS9zaGFyZC0NCj4gc2tsNi9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAYmFz
aWMtYnVzeS1mbGlwLWJlZm9yZS1jdXJzb3ItbGVnYWN5Lmh0bWwNCj4gICAgWzEyXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTgwMTYvc2hhcmQt
DQo+IHNrbDcvaWd0QGttc19jdXJzb3JfbGVnYWN5QGJhc2ljLWJ1c3ktZmxpcC1iZWZvcmUtY3Vy
c29yLWxlZ2FjeS5odG1sDQo+DQo+ICAgKiBpZ3RAa21zX2RyYXdfY3JjQGRyYXctbWV0aG9kLXhy
Z2I4ODg4LW1tYXAtd2MtdW50aWxlZDoNCj4gICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFT
U11bMTNdIC0+IFtETUVTRy1GQUlMXVsxNF0gKFtmZG8jMTA4MTQ1XSAvIFtpOTE1IzU0XSAvDQo+
IFtpOTE1Izk1XSkNCj4gICAgWzEzXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fODY2MS9zaGFyZC0NCj4ga2JsMS9pZ3RAa21zX2RyYXdfY3JjQGRyYXct
bWV0aG9kLXhyZ2I4ODg4LW1tYXAtd2MtdW50aWxlZC5odG1sDQo+ICAgIFsxNF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4MDE2L3NoYXJkLQ0K
PiBrYmw0L2lndEBrbXNfZHJhd19jcmNAZHJhdy1tZXRob2QteHJnYjg4ODgtbW1hcC13Yy11bnRp
bGVkLmh0bWwNCj4NCj4gICAqIGlndEBrbXNfZmxpcF90aWxpbmdAZmxpcC1jaGFuZ2VzLXRpbGlu
ZzoNCj4gICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbUEFTU11bMTVdIC0+IFtETUVTRy1GQUlM
XVsxNl0gKFtpOTE1IzE2MzVdIC8gW2k5MTUjOTVdKQ0KPiAgICBbMTVdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0KPiBhcGw4L2ln
dEBrbXNfZmxpcF90aWxpbmdAZmxpcC1jaGFuZ2VzLXRpbGluZy5odG1sDQo+ICAgIFsxNl06IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4MDE2L3No
YXJkLQ0KPiBhcGw0L2lndEBrbXNfZmxpcF90aWxpbmdAZmxpcC1jaGFuZ2VzLXRpbGluZy5odG1s
DQo+ICAgICAtIHNoYXJkLWtibDogICAgICAgICAgW1BBU1NdWzE3XSAtPiBbRE1FU0ctRkFJTF1b
MThdIChbaTkxNSM5NV0pDQo+ICAgIFsxN106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzg2NjEvc2hhcmQtDQo+IGtibDcvaWd0QGttc19mbGlwX3RpbGlu
Z0BmbGlwLWNoYW5nZXMtdGlsaW5nLmh0bWwNCj4gICAgWzE4XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTgwMTYvc2hhcmQtDQo+IGtibDYvaWd0
QGttc19mbGlwX3RpbGluZ0BmbGlwLWNoYW5nZXMtdGlsaW5nLmh0bWwNCj4NCj4gICAqIGlndEBr
bXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAZmJjcHNyLTFwLXByaW1zY3JuLXNwci1pbmRmYi1kcmF3
LW1tYXAtd2M6DQo+ICAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW1BBU1NdWzE5XSAtPiBbRE1F
U0ctV0FSTl1bMjBdIChbaTkxNSMxOTgyXSkNCj4gICAgWzE5XTogaHR0cHM6Ly9pbnRlbC1nZngt
Y2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODY2MS9zaGFyZC0NCj4gdGdsYjYvaWd0QGtt
c19mcm9udGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tc3ByLWluZGZiLWRyYXct
bW1hcC0NCj4gd2MuaHRtbA0KPiAgICBbMjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xODAxNi9zaGFyZC0NCj4gdGdsYjgvaWd0QGttc19mcm9u
dGJ1ZmZlcl90cmFja2luZ0BmYmNwc3ItMXAtcHJpbXNjcm4tc3ByLWluZGZiLWRyYXctbW1hcC0N
Cj4gd2MuaHRtbA0KPg0KPiAgICogaWd0QGttc19wbGFuZUBwbGFuZS1wb3NpdGlvbi1ob2xlLWRw
bXMtcGlwZS1hLXBsYW5lczoNCj4gICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbUEFTU11bMjFd
IC0+IFtETUVTRy1XQVJOXVsyMl0gKFtpOTE1IzkzXSAvIFtpOTE1Izk1XSkgKzENCj4gc2ltaWxh
ciBpc3N1ZQ0KPiAgICBbMjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0KPiBrYmw3L2lndEBrbXNfcGxhbmVAcGxhbmUtcG9zaXRp
b24taG9sZS1kcG1zLXBpcGUtYS1wbGFuZXMuaHRtbA0KPiAgICBbMjJdOiBodHRwczovL2ludGVs
LWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODAxNi9zaGFyZC0NCj4ga2Js
Ni9pZ3RAa21zX3BsYW5lQHBsYW5lLXBvc2l0aW9uLWhvbGUtZHBtcy1waXBlLWEtcGxhbmVzLmh0
bWwNCj4NCj4gICAqIGlndEBrbXNfcGxhbmVfYWxwaGFfYmxlbmRAcGlwZS1iLWNvdmVyYWdlLTdl
ZmM6DQo+ICAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW1BBU1NdWzIzXSAtPiBbRkFJTF1bMjRd
IChbZmRvIzEwODE0NV0gLyBbaTkxNSMyNjVdKSArMSBzaW1pbGFyDQo+IGlzc3VlDQo+ICAgIFsy
M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2NjEv
c2hhcmQtDQo+IHNrbDQvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWItY292ZXJhZ2Ut
N2VmYy5odG1sDQo+ICAgIFsyNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE4MDE2L3NoYXJkLQ0KPiBza2w4L2lndEBrbXNfcGxhbmVfYWxwaGFf
YmxlbmRAcGlwZS1iLWNvdmVyYWdlLTdlZmMuaHRtbA0KPg0KPiAgICogaWd0QGttc19zZXRtb2Rl
QGJhc2ljOg0KPiAgICAgLSBzaGFyZC1rYmw6ICAgICAgICAgIFtQQVNTXVsyNV0gLT4gW0ZBSUxd
WzI2XSAoW2k5MTUjMzFdKQ0KPiAgICBbMjVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0KPiBrYmwzL2lndEBrbXNfc2V0bW9kZUBi
YXNpYy5odG1sDQo+ICAgIFsyNl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE4MDE2L3NoYXJkLQ0KPiBrYmw0L2lndEBrbXNfc2V0bW9kZUBiYXNp
Yy5odG1sDQo+DQo+ICAgKiBpZ3RAa21zX3ZibGFua0BwaXBlLWItdHMtY29udGludWF0aW9uLWRw
bXMtcnBtOg0KPiAgICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtQQVNTXVsyN10gLT4gW0RNRVNH
LVdBUk5dWzI4XSAoW2k5MTUjMTYzNV0gLyBbaTkxNSM5NV0pICsxMg0KPiBzaW1pbGFyIGlzc3Vl
cw0KPiAgICBbMjddOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV84NjYxL3NoYXJkLQ0KPiBhcGwzL2lndEBrbXNfdmJsYW5rQHBpcGUtYi10cy1jb250aW51
YXRpb24tZHBtcy1ycG0uaHRtbA0KPiAgICBbMjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODAxNi9zaGFyZC0NCj4gYXBsMS9pZ3RAa21zX3Zi
bGFua0BwaXBlLWItdHMtY29udGludWF0aW9uLWRwbXMtcnBtLmh0bWwNCj4NCj4gICAqIGlndEBw
ZXJmX3BtdUBzZW1hcGhvcmUtYnVzeUByY3MwOg0KPiAgICAgLSBzaGFyZC1rYmw6ICAgICAgICAg
IFtQQVNTXVsyOV0gLT4gW0ZBSUxdWzMwXSAoW2k5MTUjMTgyMF0pDQo+ICAgIFsyOV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2NjEvc2hhcmQtDQo+
IGtibDYvaWd0QHBlcmZfcG11QHNlbWFwaG9yZS1idXN5QHJjczAuaHRtbA0KPiAgICBbMzBdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODAxNi9z
aGFyZC0NCj4ga2JsNi9pZ3RAcGVyZl9wbXVAc2VtYXBob3JlLWJ1c3lAcmNzMC5odG1sDQo+DQo+
DQo+ICMjIyMgUG9zc2libGUgZml4ZXMgIyMjIw0KPg0KPiAgICogaWd0QGdlbV9jdHhfcGVyc2lz
dGVuY2VAZW5naW5lcy1taXhlZC1wcm9jZXNzQHZjczA6DQo+ICAgICAtIHNoYXJkLXNrbDogICAg
ICAgICAgW0ZBSUxdWzMxXSAoW2k5MTUjMTUyOF0pIC0+IFtQQVNTXVszMl0NCj4gICAgWzMxXTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODY2MS9zaGFy
ZC0NCj4gc2tsOS9pZ3RAZ2VtX2N0eF9wZXJzaXN0ZW5jZUBlbmdpbmVzLW1peGVkLXByb2Nlc3NA
dmNzMC5odG1sDQo+ICAgIFszMl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvUGF0Y2h3b3JrXzE4MDE2L3NoYXJkLQ0KPiBza2wzL2lndEBnZW1fY3R4X3BlcnNpc3Rl
bmNlQGVuZ2luZXMtbWl4ZWQtcHJvY2Vzc0B2Y3MwLmh0bWwNCj4NCj4gICAqIGlndEBnZW1fZXhl
Y193aGlzcGVyQGJhc2ljLXF1ZXVlcy1hbGw6DQo+ICAgICAtIHNoYXJkLWdsazogICAgICAgICAg
W0RNRVNHLVdBUk5dWzMzXSAoW2k5MTUjMTE4XSAvIFtpOTE1Izk1XSkgLT4gW1BBU1NdWzM0XQ0K
PiAgICBbMzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV84NjYxL3NoYXJkLQ0KPiBnbGsyL2lndEBnZW1fZXhlY193aGlzcGVyQGJhc2ljLXF1ZXVlcy1h
bGwuaHRtbA0KPiAgICBbMzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xODAxNi9zaGFyZC0NCj4gZ2xrNy9pZ3RAZ2VtX2V4ZWNfd2hpc3BlckBi
YXNpYy1xdWV1ZXMtYWxsLmh0bWwNCj4NCj4gICAqIGlndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9h
ZDoNCj4gICAgIC0gc2hhcmQtdGdsYjogICAgICAgICBbRE1FU0ctV0FSTl1bMzVdIChbaTkxNSM0
MDJdKSAtPiBbUEFTU11bMzZdICsyIHNpbWlsYXIgaXNzdWVzDQo+ICAgIFszNV06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2NjEvc2hhcmQtDQo+IHRn
bGI3L2lndEBpOTE1X21vZHVsZV9sb2FkQHJlbG9hZC5odG1sDQo+ICAgIFszNl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4MDE2L3NoYXJkLQ0K
PiB0Z2xiNy9pZ3RAaTkxNV9tb2R1bGVfbG9hZEByZWxvYWQuaHRtbA0KPg0KPiAgICogaWd0QGtt
c19iaWdfZmJAeC10aWxlZC02NGJwcC1yb3RhdGUtMTgwOg0KPiAgICAgLSBzaGFyZC1nbGs6ICAg
ICAgICAgIFtETUVTRy1GQUlMXVszN10gKFtpOTE1IzExOF0gLyBbaTkxNSM5NV0pIC0+IFtQQVNT
XVszOF0gKzENCj4gc2ltaWxhciBpc3N1ZQ0KPiAgICBbMzddOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0KPiBnbGs4L2lndEBrbXNf
YmlnX2ZiQHgtdGlsZWQtNjRicHAtcm90YXRlLTE4MC5odG1sDQo+ICAgIFszOF06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4MDE2L3NoYXJkLQ0K
PiBnbGs2L2lndEBrbXNfYmlnX2ZiQHgtdGlsZWQtNjRicHAtcm90YXRlLTE4MC5odG1sDQo+DQo+
ICAgKiBpZ3RAa21zX2N1cnNvcl9sZWdhY3lAZmxpcC12cy1jdXJzb3ItbGVnYWN5Og0KPiAgICAg
LSBzaGFyZC1hcGw6ICAgICAgICAgIFtGQUlMXVszOV0gKFtJR1QjNV0pIC0+IFtQQVNTXVs0MF0N
Cj4gICAgWzM5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9E
Uk1fODY2MS9zaGFyZC0NCj4gYXBsMy9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAZmxpcC12cy1jdXJz
b3ItbGVnYWN5Lmh0bWwNCj4gICAgWzQwXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTgwMTYvc2hhcmQtDQo+IGFwbDYvaWd0QGttc19jdXJzb3Jf
bGVnYWN5QGZsaXAtdnMtY3Vyc29yLWxlZ2FjeS5odG1sDQo+DQo+ICAgKiBpZ3RAa21zX2ZsaXBA
ZmxpcC12cy1leHBpcmVkLXZibGFuay1pbnRlcnJ1cHRpYmxlQGEtaGRtaS1hMjoNCj4gICAgIC0g
c2hhcmQtZ2xrOiAgICAgICAgICBbRkFJTF1bNDFdIChbaTkxNSM3OV0pIC0+IFtQQVNTXVs0Ml0g
KzEgc2ltaWxhciBpc3N1ZQ0KPiAgICBbNDFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0KPiBnbGs1L2lndEBrbXNfZmxpcEBmbGlw
LXZzLWV4cGlyZWQtdmJsYW5rLWludGVycnVwdGlibGVAYS1oZG1pLWEyLmh0bWwNCj4gICAgWzQy
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTgw
MTYvc2hhcmQtDQo+IGdsazgvaWd0QGttc19mbGlwQGZsaXAtdnMtZXhwaXJlZC12YmxhbmstaW50
ZXJydXB0aWJsZUBhLWhkbWktYTIuaHRtbA0KPg0KPiAgICogaWd0QGttc19mbGlwQGZsaXAtdnMt
c3VzcGVuZEBjLWRwMToNCj4gICAgIC0gc2hhcmQta2JsOiAgICAgICAgICBbRE1FU0ctV0FSTl1b
NDNdIChbaTkxNSMxODBdKSAtPiBbUEFTU11bNDRdICs1IHNpbWlsYXIgaXNzdWVzDQo+ICAgIFs0
M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2NjEv
c2hhcmQtDQo+IGtibDYvaWd0QGttc19mbGlwQGZsaXAtdnMtc3VzcGVuZEBjLWRwMS5odG1sDQo+
ICAgIFs0NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE4MDE2L3NoYXJkLQ0KPiBrYmwyL2lndEBrbXNfZmxpcEBmbGlwLXZzLXN1c3BlbmRAYy1k
cDEuaHRtbA0KPg0KPiAgICogaWd0QGttc19mbGlwQHBsYWluLWZsaXAtZmItcmVjcmVhdGUtaW50
ZXJydXB0aWJsZUBhLWVkcDE6DQo+ICAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0ZBSUxdWzQ1
XSAoW2k5MTUjMTkyOF0pIC0+IFtQQVNTXVs0Nl0NCj4gICAgWzQ1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODY2MS9zaGFyZC0NCj4gc2tsNi9pZ3RA
a21zX2ZsaXBAcGxhaW4tZmxpcC1mYi1yZWNyZWF0ZS1pbnRlcnJ1cHRpYmxlQGEtZWRwMS5odG1s
DQo+ICAgIFs0Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE4MDE2L3NoYXJkLQ0KPiBza2w3L2lndEBrbXNfZmxpcEBwbGFpbi1mbGlwLWZiLXJl
Y3JlYXRlLWludGVycnVwdGlibGVAYS1lZHAxLmh0bWwNCj4NCj4gICAqIGlndEBrbXNfZmxpcF90
aWxpbmdAZmxpcC1jaGFuZ2VzLXRpbGluZzoNCj4gICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBb
RkFJTF1bNDddIChbaTkxNSM2OTldKSAtPiBbUEFTU11bNDhdDQo+ICAgIFs0N106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2NjEvc2hhcmQtDQo+IHNr
bDEvaWd0QGttc19mbGlwX3RpbGluZ0BmbGlwLWNoYW5nZXMtdGlsaW5nLmh0bWwNCj4gICAgWzQ4
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTgw
MTYvc2hhcmQtDQo+IHNrbDcvaWd0QGttc19mbGlwX3RpbGluZ0BmbGlwLWNoYW5nZXMtdGlsaW5n
Lmh0bWwNCj4NCj4gICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLXByaW1z
Y3JuLWluZGZiLW1zZmxpcC1ibHQ6DQo+ICAgICAtIHNoYXJkLXRnbGI6ICAgICAgICAgW0RNRVNH
LVdBUk5dWzQ5XSAoW2k5MTUjMTk4Ml0pIC0+IFtQQVNTXVs1MF0NCj4gICAgWzQ5XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODY2MS9zaGFyZC0NCj4g
dGdsYjcvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0Bwc3ItMXAtcHJpbXNjcm4taW5kZmIt
bXNmbGlwLWJsdC5odG1sDQo+ICAgIFs1MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4MDE2L3NoYXJkLQ0KPiB0Z2xiNy9pZ3RAa21zX2Zyb250
YnVmZmVyX3RyYWNraW5nQHBzci0xcC1wcmltc2Nybi1pbmRmYi1tc2ZsaXAtYmx0Lmh0bWwNCj4N
Cj4gICAqIGlndEBrbXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1w
aXBlLWMtcGxhbmVzOg0KPiAgICAgLSBzaGFyZC1za2w6ICAgICAgICAgIFtJTkNPTVBMRVRFXVs1
MV0gKFtpOTE1IzY5XSkgLT4gW1BBU1NdWzUyXQ0KPiAgICBbNTFdOiBodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0KPiBza2w3L2lndEBr
bXNfcGxhbmVAcGxhbmUtcGFubmluZy1ib3R0b20tcmlnaHQtc3VzcGVuZC1waXBlLWMtcGxhbmVz
Lmh0bWwNCj4gICAgWzUyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTgwMTYvc2hhcmQtDQo+IHNrbDIvaWd0QGttc19wbGFuZUBwbGFuZS1wYW5u
aW5nLWJvdHRvbS1yaWdodC1zdXNwZW5kLXBpcGUtYy1wbGFuZXMuaHRtbA0KPg0KPiAgICogaWd0
QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBlLWEtY29uc3RhbnQtYWxwaGEtbWluOg0KPiAgICAg
LSBzaGFyZC1za2w6ICAgICAgICAgIFtGQUlMXVs1M10gKFtmZG8jMTA4MTQ1XSAvIFtpOTE1IzI2
NV0pIC0+IFtQQVNTXVs1NF0gKzIgc2ltaWxhcg0KPiBpc3N1ZXMNCj4gICAgWzUzXTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODY2MS9zaGFyZC0NCj4g
c2tsOC9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1jb25zdGFudC1hbHBoYS1taW4u
aHRtbA0KPiAgICBbNTRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xODAxNi9zaGFyZC0NCj4gc2tsOS9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5k
QHBpcGUtYS1jb25zdGFudC1hbHBoYS1taW4uaHRtbA0KPg0KPiAgICogaWd0QGttc19wc3JAcHNy
Ml9zcHJpdGVfcGxhbmVfbW92ZToNCj4gICAgIC0gc2hhcmQtaWNsYjogICAgICAgICBbU0tJUF1b
NTVdIChbZmRvIzEwOTQ0MV0pIC0+IFtQQVNTXVs1Nl0gKzIgc2ltaWxhciBpc3N1ZXMNCj4gICAg
WzU1XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODY2
MS9zaGFyZC0NCj4gaWNsYjUvaWd0QGttc19wc3JAcHNyMl9zcHJpdGVfcGxhbmVfbW92ZS5odG1s
DQo+ICAgIFs1Nl06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0
Y2h3b3JrXzE4MDE2L3NoYXJkLQ0KPiBpY2xiMi9pZ3RAa21zX3BzckBwc3IyX3Nwcml0ZV9wbGFu
ZV9tb3ZlLmh0bWwNCj4NCj4gICAqIGlndEBrbXNfdmJsYW5rQHBpcGUtYi13YWl0LWlkbGUtaGFu
ZzoNCj4gICAgIC0gc2hhcmQtc2tsOiAgICAgICAgICBbRE1FU0ctV0FSTl1bNTddIChbaTkxNSMx
OTgyXSkgLT4gW1BBU1NdWzU4XSArMSBzaW1pbGFyIGlzc3VlDQo+ICAgIFs1N106IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg2NjEvc2hhcmQtDQo+IHNr
bDUvaWd0QGttc192YmxhbmtAcGlwZS1iLXdhaXQtaWRsZS1oYW5nLmh0bWwNCj4gICAgWzU4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTgwMTYv
c2hhcmQtDQo+IHNrbDYvaWd0QGttc192YmxhbmtAcGlwZS1iLXdhaXQtaWRsZS1oYW5nLmh0bWwN
Cj4NCj4gICAqIGlndEBrbXNfdmJsYW5rQHBpcGUtYy1hY2N1cmFjeS1pZGxlOg0KPiAgICAgLSBz
aGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1XQVJOXVs1OV0gKFtpOTE1IzE5ODJdKSAtPiBbUEFT
U11bNjBdDQo+ICAgIFs1OV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzg2NjEvc2hhcmQtDQo+IGFwbDMvaWd0QGttc192YmxhbmtAcGlwZS1jLWFjY3Vy
YWN5LWlkbGUuaHRtbA0KPiAgICBbNjBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xODAxNi9zaGFyZC0NCj4gYXBsNi9pZ3RAa21zX3ZibGFua0Bw
aXBlLWMtYWNjdXJhY3ktaWRsZS5odG1sDQo+DQo+ICAgKiBpZ3RAc3luY29ial93YWl0QG11bHRp
LXdhaXQtYWxsLXNpZ25hbGVkOg0KPiAgICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1X
QVJOXVs2MV0gKFtpOTE1IzE2MzVdIC8gW2k5MTUjOTVdKSAtPiBbUEFTU11bNjJdICsxMw0KPiBz
aW1pbGFyIGlzc3Vlcw0KPiAgICBbNjFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0KPiBhcGw2L2lndEBzeW5jb2JqX3dhaXRAbXVs
dGktd2FpdC1hbGwtc2lnbmFsZWQuaHRtbA0KPiAgICBbNjJdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xODAxNi9zaGFyZC0NCj4gYXBsOC9pZ3RA
c3luY29ial93YWl0QG11bHRpLXdhaXQtYWxsLXNpZ25hbGVkLmh0bWwNCj4NCj4NCj4gIyMjIyBX
YXJuaW5ncyAjIyMjDQo+DQo+ICAgKiBpZ3RAZ2VtX2V4ZWNfcmVsb2NAYmFzaWMtY29uY3VycmVu
dDE2Og0KPiAgICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtUSU1FT1VUXVs2M10gKFtpOTE1IzE2
MzVdIC8gW2k5MTUjMTk1OF0pIC0+DQo+IFtJTkNPTVBMRVRFXVs2NF0gKFtpOTE1IzE2MzVdIC8g
W2k5MTUjMTk1OF0pDQo+ICAgIFs2M106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvQ0lfRFJNXzg2NjEvc2hhcmQtDQo+IGFwbDgvaWd0QGdlbV9leGVjX3JlbG9jQGJh
c2ljLWNvbmN1cnJlbnQxNi5odG1sDQo+ICAgIFs2NF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4MDE2L3NoYXJkLQ0KPiBhcGwzL2lndEBnZW1f
ZXhlY19yZWxvY0BiYXNpYy1jb25jdXJyZW50MTYuaHRtbA0KPg0KPiAgICogaWd0QGttc19jb2xv
cl9jaGFtZWxpdW1AcGlwZS1hLWN0bS1saW1pdGVkLXJhbmdlOg0KPiAgICAgLSBzaGFyZC1hcGw6
ICAgICAgICAgIFtTS0lQXVs2NV0gKFtmZG8jMTA5MjcxXSAvIFtmZG8jMTExODI3XSAvIFtpOTE1
IzE2MzVdKSAtPg0KPiBbU0tJUF1bNjZdIChbZmRvIzEwOTI3MV0gLyBbZmRvIzExMTgyN10pICsy
IHNpbWlsYXIgaXNzdWVzDQo+ICAgIFs2NV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvQ0lfRFJNXzg2NjEvc2hhcmQtDQo+IGFwbDEvaWd0QGttc19jb2xvcl9jaGFt
ZWxpdW1AcGlwZS1hLWN0bS1saW1pdGVkLXJhbmdlLmh0bWwNCj4gICAgWzY2XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTgwMTYvc2hhcmQtDQo+
IGFwbDgvaWd0QGttc19jb2xvcl9jaGFtZWxpdW1AcGlwZS1hLWN0bS1saW1pdGVkLXJhbmdlLmh0
bWwNCj4NCj4gICAqIGlndEBrbXNfY3Vyc29yX2xlZ2FjeUBmbGlwLXZzLWN1cnNvci1sZWdhY3k6
DQo+ICAgICAtIHNoYXJkLXNrbDogICAgICAgICAgW0RNRVNHLUZBSUxdWzY3XSAoW2k5MTUjMTk4
Ml0pIC0+IFtETUVTRy1XQVJOXVs2OF0NCj4gKFtpOTE1IzE5ODJdKQ0KPiAgICBbNjddOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0K
PiBza2w2L2lndEBrbXNfY3Vyc29yX2xlZ2FjeUBmbGlwLXZzLWN1cnNvci1sZWdhY3kuaHRtbA0K
PiAgICBbNjhdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xODAxNi9zaGFyZC0NCj4gc2tsNC9pZ3RAa21zX2N1cnNvcl9sZWdhY3lAZmxpcC12cy1j
dXJzb3ItbGVnYWN5Lmh0bWwNCj4NCj4gICAqIGlndEBrbXNfZmJjb25fZmJ0QGZiYy1zdXNwZW5k
Og0KPiAgICAgLSBzaGFyZC1hcGw6ICAgICAgICAgIFtETUVTRy1GQUlMXVs2OV0gKFtpOTE1IzE2
MzVdIC8gW2k5MTUjOTVdKSAtPiBbRkFJTF1bNzBdDQo+IChbaTkxNSMxNTI1XSkNCj4gICAgWzY5
XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fODY2MS9z
aGFyZC0NCj4gYXBsMS9pZ3RAa21zX2ZiY29uX2ZidEBmYmMtc3VzcGVuZC5odG1sDQo+ICAgIFs3
MF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE4
MDE2L3NoYXJkLQ0KPiBhcGw4L2lndEBrbXNfZmJjb25fZmJ0QGZiYy1zdXNwZW5kLmh0bWwNCj4N
Cj4gICAqIGlndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNyLTFwLW9mZnNjcmVuLXByaS1z
aHJmYi1kcmF3LWJsdDoNCj4gICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbU0tJUF1bNzFdIChb
ZmRvIzEwOTI3MV0pIC0+IFtTS0lQXVs3Ml0gKFtmZG8jMTA5MjcxXSAvDQo+IFtpOTE1IzE2MzVd
KSArNSBzaW1pbGFyIGlzc3Vlcw0KPiAgICBbNzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0KPiBhcGw4L2lndEBrbXNfZnJvbnRi
dWZmZXJfdHJhY2tpbmdAcHNyLTFwLW9mZnNjcmVuLXByaS1zaHJmYi1kcmF3LWJsdC5odG1sDQo+
ICAgIFs3Ml06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3
b3JrXzE4MDE2L3NoYXJkLQ0KPiBhcGw0L2lndEBrbXNfZnJvbnRidWZmZXJfdHJhY2tpbmdAcHNy
LTFwLW9mZnNjcmVuLXByaS1zaHJmYi1kcmF3LWJsdC5odG1sDQo+DQo+ICAgKiBpZ3RAa21zX3Bs
YW5lX2FscGhhX2JsZW5kQHBpcGUtYS1hbHBoYS03ZWZjOg0KPiAgICAgLSBzaGFyZC1za2w6ICAg
ICAgICAgIFtGQUlMXVs3M10gKFtmZG8jMTA4MTQ1XSAvIFtpOTE1IzI2NV0pIC0+IFtETUVTRy1G
QUlMXVs3NF0NCj4gKFtmZG8jMTA4MTQ1XSAvIFtpOTE1IzE5ODJdKQ0KPiAgICBbNzNdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0K
PiBza2wxMC9pZ3RAa21zX3BsYW5lX2FscGhhX2JsZW5kQHBpcGUtYS1hbHBoYS03ZWZjLmh0bWwN
Cj4gICAgWzc0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTgwMTYvc2hhcmQtDQo+IHNrbDcvaWd0QGttc19wbGFuZV9hbHBoYV9ibGVuZEBwaXBl
LWEtYWxwaGEtN2VmYy5odG1sDQo+DQo+ICAgKiBpZ3RAcGVyZkBnZW4xMi11bnByaXZpbGVnZWQt
c2luZ2xlLWN0eC1jb3VudGVyczoNCj4gICAgIC0gc2hhcmQtYXBsOiAgICAgICAgICBbU0tJUF1b
NzVdIChbZmRvIzEwOTI3MV0gLyBbaTkxNSMxNjM1XSkgLT4gW1NLSVBdWzc2XQ0KPiAoW2ZkbyMx
MDkyNzFdKSArNSBzaW1pbGFyIGlzc3Vlcw0KPiAgICBbNzVdOiBodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NjYxL3NoYXJkLQ0KPiBhcGw2L2lndEBwZXJm
QGdlbjEyLXVucHJpdmlsZWdlZC1zaW5nbGUtY3R4LWNvdW50ZXJzLmh0bWwNCj4gICAgWzc2XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTgwMTYv
c2hhcmQtDQo+IGFwbDgvaWd0QHBlcmZAZ2VuMTItdW5wcml2aWxlZ2VkLXNpbmdsZS1jdHgtY291
bnRlcnMuaHRtbA0KPg0KPg0KPiAgIFtJR1QjNV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaWd0LWdwdS10b29scy9pc3N1ZXMvNQ0KPiAgIFtmZG8jMTA4MTQ1XTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTA4MTQ1DQo+ICAgW2ZkbyMx
MDkyNzFdOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDky
NzENCj4gICBbZmRvIzEwOTQ0MV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwOTQ0MQ0KPiAgIFtmZG8jMTExODI3XTogaHR0cHM6Ly9idWdzLmZyZWVkZXNr
dG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExODI3DQo+ICAgW2k5MTUjMTE4XTogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTE4DQo+ICAgW2k5MTUjMTUy
NV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE1MjUN
Cj4gICBbaTkxNSMxNTI4XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRl
bC9pc3N1ZXMvMTUyOA0KPiAgIFtpOTE1IzE2MzVdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xNjM1DQo+ICAgW2k5MTUjMTgwXTogaHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMTgwDQo+ICAgW2k5MTUjMTgyMF06
IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE4MjANCj4g
ICBbaTkxNSMxOTI4XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9p
c3N1ZXMvMTkyOA0KPiAgIFtpOTE1IzE5NThdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5v
cmcvZHJtL2ludGVsL2lzc3Vlcy8xOTU4DQo+ICAgW2k5MTUjMTk4Ml06IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE5ODINCj4gICBbaTkxNSMyNjVdOiBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8yNjUNCj4gICBb
aTkxNSMzMV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVz
LzMxDQo+ICAgW2k5MTUjNDAyXTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9p
bnRlbC9pc3N1ZXMvNDAyDQo+ICAgW2k5MTUjNTRdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3Rv
cC5vcmcvZHJtL2ludGVsL2lzc3Vlcy81NA0KPiAgIFtpOTE1IzY5XTogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNjkNCj4gICBbaTkxNSM2OTldOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy82OTkNCj4gICBbaTkx
NSM3OV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzc5
DQo+ICAgW2k5MTUjOTNdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVs
L2lzc3Vlcy85Mw0KPiAgIFtpOTE1Izk1XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L2RybS9pbnRlbC9pc3N1ZXMvOTUNCj4NCj4NCj4gUGFydGljaXBhdGluZyBob3N0cyAoMTEgLT4g
MTEpDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAgIE5vIGNoYW5nZXMg
aW4gcGFydGljaXBhdGluZyBob3N0cw0KPg0KPg0KPiBCdWlsZCBjaGFuZ2VzDQo+IC0tLS0tLS0t
LS0tLS0NCj4NCj4gICAqIExpbnV4OiBDSV9EUk1fODY2MSAtPiBQYXRjaHdvcmtfMTgwMTYNCj4N
Cj4gICBDSS0yMDE5MDUyOTogMjAxOTA1MjkNCj4gICBDSV9EUk1fODY2MTogNjRjYWIwYjlmOWJm
ZWIxNGQzZWMyNDUyZDc2YjU2OTE1Y2RlYjA5ZiBADQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL2dmeC1jaS9saW51eA0KPiAgIElHVF81NzE3OiA3MjViZjJkYWU1MWYwMDg3ZWFhNjRm
MTkzMWEyZWY5ZDIyZjA3MGRkIEANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcveG9y
Zy9hcHAvaW50ZWwtZ3B1LXRvb2xzDQo+ICAgUGF0Y2h3b3JrXzE4MDE2OiA2ZjZkMDBiY2ZmOWZi
ZWE3OTY5Yzk0YTUyZjQwOTZhNzE5ZTI3MzNiIEANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAgcGlnbGl0XzQ1MDk6IGZkYzVhNGNhMTExMjRhYjg0MTNj
Nzk4ODg5NmVlYzRjOTczMzY2OTQgQA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9w
aWdsaXQNCj4NCj4gPT0gTG9ncyA9PQ0KPg0KPiBGb3IgbW9yZSBkZXRhaWxzIHNlZTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzE4MDE2L2lu
ZGV4Lmh0bWwNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
