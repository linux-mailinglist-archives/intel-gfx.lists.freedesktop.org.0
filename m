Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7641DAEA7
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 11:23:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 059356E3E7;
	Wed, 20 May 2020 09:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 581336E3E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 09:23:34 +0000 (UTC)
IronPort-SDR: Rc9zCHBCojmbK4WtCWoXdroRIgSs2yDoYM2mvgXWHIEPhVKOyfSEXUVmCRuhnoOK1OnZ999wV6
 oWMrBOiga1bA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 01:44:35 -0700
IronPort-SDR: 73JCE/vm7i2IJlgiWiidLx7ZyT29JBlKBzvUk6FjkbVgq+FqlgOvQGaA3uPxNQzaN7H2o9Nt98
 zowlxXgxOLGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,413,1583222400"; d="scan'208";a="253615771"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga007.fm.intel.com with ESMTP; 20 May 2020 01:44:31 -0700
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 20 May 2020 09:44:30 +0100
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 May 2020 09:44:30 +0100
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 20 May 2020 09:44:30 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Navare, Manasi D"
 <manasi.d.navare@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ29uc2lkZXIgREJ1ZiBiYW5k?=
 =?utf-8?Q?width_when_calculating_CDCLK_(rev15)?=
Thread-Index: AQHWLjmSPzdLW8dBdkyTsPnHElJlkKiwgMUpgAAoCuCAAABulw==
Date: Wed, 20 May 2020 08:44:30 +0000
Message-ID: <f9f90111abed4bb59b89f9a58cd6b8ed@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>,
 <158993276093.31238.16626778601427555656@emeril.freedesktop.org>
 <50aa41497acc456b823c14fa7ab55837@intel.com>,
 <817306d801194374a51cfb1931c5d363@intel.com>
In-Reply-To: <817306d801194374a51cfb1931c5d363@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ29u?=
 =?utf-8?q?sider_DBuf_bandwidth_when_calculating_CDCLK_=28rev15=29?=
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

VGhhbmsgeW91IExha3NobWkhDQoNCkJlc3QgUmVnYXJkcywNCg0KTGlzb3Zza2l5IFN0YW5pc2xh
dg0KDQpPcmdhbml6YXRpb246IEludGVsIEZpbmxhbmQgT3kgLSBCSUMgMDM1NzYwNi00IC0gV2Vz
dGVuZGlua2F0dSA3LCAwMjE2MCBFc3Bvbw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQpGcm9tOiBWdWR1bSwgTGFrc2htaW5hcmF5YW5hDQpTZW50OiBXZWRuZXNk
YXksIE1heSAyMCwgMjAyMCAxMTo0MzoyNiBBTQ0KVG86IExpc292c2tpeSwgU3RhbmlzbGF2OyBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBTYWFyaW5lbiwgSmFuaTsgTmF2YXJlLCBN
YW5hc2kgRA0KU3ViamVjdDogUkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIENvbnNpZGVy
IERCdWYgYmFuZHdpZHRoIHdoZW4gY2FsY3VsYXRpbmcgQ0RDTEsgKHJldjE1KQ0KDQpGaWxlZCBh
IG5ldyBidWcgYW5kIFJlLXJlcG9ydGVkLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0K
RnJvbTogTGlzb3Zza2l5LCBTdGFuaXNsYXYgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29t
Pg0KU2VudDogV2VkbmVzZGF5LCBNYXkgMjAsIDIwMjAgOToyMiBBTQ0KVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJh
eWFuYS52dWR1bUBpbnRlbC5jb20+OyBTYWFyaW5lbiwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRl
bC5jb20+OyBOYXZhcmUsIE1hbmFzaSBEIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPg0KU3Vi
amVjdDogUmU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIENvbnNpZGVyIERCdWYgYmFuZHdp
ZHRoIHdoZW4gY2FsY3VsYXRpbmcgQ0RDTEsgKHJldjE1KQ0KDQpTZWxmIHRlc3QgZmFpbHVyZSBh
cyB1c3VhbC4gQW5kIGFzIHVzdWFsIG5vdCByZWxhdGVkIHRvIHRoZSBwYXRjaC4NCg0KQmVzdCBS
ZWdhcmRzLA0KDQpMaXNvdnNraXkgU3RhbmlzbGF2DQoNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCkZyb206IFBhdGNod29yayA8cGF0Y2h3b3JrQGVtZXJpbC5mcmVl
ZGVza3RvcC5vcmc+DQpTZW50OiBXZWRuZXNkYXksIE1heSAyMCwgMjAyMCAyOjU5IEFNDQpUbzog
TGlzb3Zza2l5LCBTdGFuaXNsYXYNCkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQpTdWJqZWN0OiDinJcgRmkuQ0kuQkFUOiBmYWlsdXJlIGZvciBDb25zaWRlciBEQnVmIGJhbmR3
aWR0aCB3aGVuIGNhbGN1bGF0aW5nIENEQ0xLIChyZXYxNSkNCg0KPT0gU2VyaWVzIERldGFpbHMg
PT0NCg0KU2VyaWVzOiBDb25zaWRlciBEQnVmIGJhbmR3aWR0aCB3aGVuIGNhbGN1bGF0aW5nIENE
Q0xLIChyZXYxNSkNClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy83NDczOS8NClN0YXRlIDogZmFpbHVyZQ0KDQo9PSBTdW1tYXJ5ID09DQoNCkNJIEJ1ZyBM
b2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzg1MDYgLT4gUGF0Y2h3b3JrXzE3NzE4ID09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCg0KU3VtbWFyeQ0K
LS0tLS0tLQ0KDQogICoqRkFJTFVSRSoqDQoNCiAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29t
aW5nIHdpdGggUGF0Y2h3b3JrXzE3NzE4IGFic29sdXRlbHkgbmVlZCB0byBiZQ0KICB2ZXJpZmll
ZCBtYW51YWxseS4NCg0KICBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBu
b3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCiAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtf
MTc3MTgsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtDQogIHRvIGRv
Y3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9z
aXRpdmVzIGluIENJLg0KDQogIEV4dGVybmFsIFVSTDogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEu
b3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTc3MTgvaW5kZXguaHRtbA0KDQpQb3NzaWJsZSBu
ZXcgaXNzdWVzDQotLS0tLS0tLS0tLS0tLS0tLS0tDQoNCiAgSGVyZSBhcmUgdGhlIHVua25vd24g
Y2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTc3MTg6
DQoNCiMjIyBJR1QgY2hhbmdlcyAjIyMNCg0KIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMj
DQoNCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGNsaWVudDoNCiAgICAtIGZpLWJzdy1rZWZr
YTogICAgICAgW1BBU1NdWzFdIC0+IFtJTkNPTVBMRVRFXVsyXQ0KICAgWzFdOiBodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV84NTA2L2ZpLWJzdy1rZWZrYS9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQGNsaWVudC5odG1sDQogICBbMl06IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE3NzE4L2ZpLWJzdy1rZWZrYS9p
Z3RAaTkxNV9zZWxmdGVzdEBsaXZlQGNsaWVudC5odG1sDQoNCg0KS25vd24gaXNzdWVzDQotLS0t
LS0tLS0tLS0NCg0KICBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdvcmtfMTc3
MTggdGhhdCBjb21lIGZyb20ga25vd24gaXNzdWVzOg0KDQojIyMgSUdUIGNoYW5nZXMgIyMjDQoN
CiMjIyMgSXNzdWVzIGhpdCAjIyMjDQoNCiAgKiBpZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9h
ZDoNCiAgICAtIGZpLWdsay1kc2k6ICAgICAgICAgW1BBU1NdWzNdIC0+IFtUSU1FT1VUXVs0XSAo
W2k5MTUjMTI4OF0pDQogICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzg1MDYvZmktZ2xrLWRzaS9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9h
ZC5odG1sDQogICBbNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAv
UGF0Y2h3b3JrXzE3NzE4L2ZpLWdsay1kc2kvaWd0QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQu
aHRtbA0KDQogICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBleGVjbGlzdHM6DQogICAgLSBmaS1r
YmwtZ3VjOiAgICAgICAgIFtQQVNTXVs1XSAtPiBbSU5DT01QTEVURV1bNl0gKFtpOTE1IzE4NzRd
KQ0KICAgWzVdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RS
TV84NTA2L2ZpLWtibC1ndWMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBleGVjbGlzdHMuaHRtbA0K
ICAgWzZdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29y
a18xNzcxOC9maS1rYmwtZ3VjL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZXhlY2xpc3RzLmh0bWwN
Cg0KICAqIGlndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3Q6DQogICAgLSBmaS1rYmwtNzUw
MHU6ICAgICAgIFtQQVNTXVs3XSAtPiBbRkFJTF1bOF0gKFtpOTE1IzIyN10pDQogICBbN106IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzg1MDYvZmkta2Js
LTc1MDB1L2lndEBrbXNfY2hhbWVsaXVtQGhkbWktaHBkLWZhc3QuaHRtbA0KICAgWzhdOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzcxOC9maS1r
YmwtNzUwMHUvaWd0QGttc19jaGFtZWxpdW1AaGRtaS1ocGQtZmFzdC5odG1sDQoNCg0KIyMjIyBQ
b3NzaWJsZSBmaXhlcyAjIyMjDQoNCiAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV4ZWNsaXN0
czoNCiAgICAtIGZpLWtibC04ODA5ZzogICAgICAgW0lOQ09NUExFVEVdWzldIChbaTkxNSMxODc0
XSkgLT4gW1BBU1NdWzEwXQ0KICAgWzldOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL0NJX0RSTV84NTA2L2ZpLWtibC04ODA5Zy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
QGV4ZWNsaXN0cy5odG1sDQogICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJl
ZS9kcm0tdGlwL1BhdGNod29ya18xNzcxOC9maS1rYmwtODgwOWcvaWd0QGk5MTVfc2VsZnRlc3RA
bGl2ZUBleGVjbGlzdHMuaHRtbA0KDQoNCiAgW2k5MTUjMTI4OF06IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzEyODgNCiAgW2k5MTUjMTg3NF06IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzE4NzQNCiAgW2k5MTUj
MjI3XTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvMjI3
DQoNCg0KUGFydGljaXBhdGluZyBob3N0cyAoNDkgLT4gNDQpDQotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0NCg0KICBBZGRpdGlvbmFsICgxKTogZmkta2JsLTc1NjB1DQogIE1pc3Npbmcg
ICAgKDYpOiBmaS1pbGstbTU0MCBmaS1oc3ctNDIwMHUgZmktYnl0LXNxdWF3a3MgZmktYnN3LWN5
YW4gZmktYnl0LWNsYXBwZXIgZmktYmR3LXNhbXVzDQoNCg0KQnVpbGQgY2hhbmdlcw0KLS0tLS0t
LS0tLS0tLQ0KDQogICogTGludXg6IENJX0RSTV84NTA2IC0+IFBhdGNod29ya18xNzcxOA0KDQog
IENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KICBDSV9EUk1fODUwNjogZDZhNzNlOTA4NGZmNmFkZmFi
YmFkMDE0YmMyOTRkMjU0NDg0ZjMwNCBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2dm
eC1jaS9saW51eA0KICBJR1RfNTY2MTogYTc3MmE3YzdhNzYxYzYxMjViYzBhZjUyODRhZDYwMzQ3
ODEwNzczNyBAIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL3hvcmcvYXBwL2ludGVsLWdw
dS10b29scw0KICBQYXRjaHdvcmtfMTc3MTg6IDJiZTNmZWNjNjMyMGY2MWNjYmQwODk4MTMyZGNi
N2VlZGFlNzY0MGIgQCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgN
Cg0KDQo9PSBMaW51eCBjb21taXRzID09DQoNCjJiZTNmZWNjNjMyMCBkcm0vaTkxNTogUmVtb3Zl
IHVubmVlZGVkIGhhY2sgbm93IGZvciBDRENMSyBiNzRiNzEzYzgyM2YgZHJtL2k5MTU6IEFkanVz
dCBDRENMSyBhY2NvcmRpbmdseSB0byBvdXIgREJ1ZiBidyBuZWVkcw0KMjQwNWNmYTIwYTkwIGRy
bS9pOTE1OiBJbnRyb2R1Y2UgZm9yX2VhY2hfZGJ1Zl9zbGljZV9pbl9tYXNrIG1hY3JvDQo0NzY1
YjczMmMzODcgZHJtL2k5MTU6IFBsYW5lIGNvbmZpZ3VyYXRpb24gYWZmZWN0cyBDRENMSyBpbiBH
ZW4xMSsNCmNjODU3YTE1ZDM3MCBkcm0vaTkxNTogQ2hlY2sgcGxhbmUgY29uZmlndXJhdGlvbiBw
cm9wZXJseQ0KYTJlMmE1ZjQzY2Q3IGRybS9pOTE1OiBFeHRyYWN0IGNkY2xrIHJlcXVpcmVtZW50
cyBjaGVja2luZyB0byBzZXBhcmF0ZSBmdW5jdGlvbg0KNDI5MjJhMWNmNGQ5IGRybS9pOTE1OiBE
ZWNvdXBsZSBjZGNsayBjYWxjdWxhdGlvbiBmcm9tIG1vZGVzZXQgY2hlY2tzDQoNCj09IExvZ3Mg
PT0NCg0KRm9yIG1vcmUgZGV0YWlscyBzZWU6IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE3NzE4L2luZGV4Lmh0bWwNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
