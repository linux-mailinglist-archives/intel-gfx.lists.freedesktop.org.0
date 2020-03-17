Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1E9187E90
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 11:43:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 350826E095;
	Tue, 17 Mar 2020 10:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A11F96E095
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 10:43:42 +0000 (UTC)
IronPort-SDR: lylBgMdCRGFU6Or4Lmg1yrkXADr0hXYhNNvRn/B6L8kAFg1OvZflFFOdKitHqzTrUwzIv2e68d
 Bk0ajSGWPNkA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 03:43:42 -0700
IronPort-SDR: xKVQhdlneCJsXb0Enasgd5ipkeCd21NzGDehQNsY/qVjOt7SXUv7bpBaBI0x4KCgQ5+2SgOVTy
 6t8Sz8Jf63+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; 
 d="scan'208,217";a="247778103"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga006.jf.intel.com with ESMTP; 17 Mar 2020 03:43:41 -0700
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 17 Mar 2020 10:43:40 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Mar 2020 10:43:40 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Tue, 17 Mar 2020 10:43:40 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Peres, Martin" <martin.peres@intel.com>, "Hiler, Arkadiusz"
 <arkadiusz.hiler@intel.com>, "Vudum, Lakshminarayana"
 <lakshminarayana.vudum@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIENvbnNpZGVyIERCdWYgYmFu?=
 =?utf-8?Q?dwidth_when_calculating_CDCLK_(rev2)?=
Thread-Index: AQHV+/QQwirz4P1VLUitpFfj/iTRrKhMmYI0
Date: Tue, 17 Mar 2020 10:43:40 +0000
Message-ID: <1b7e92817db14053803aff6bf596e65b@intel.com>
References: <20200316113744.31203-1-stanislav.lisovskiy@intel.com>,
 <158440537072.5177.5259310463530440555@emeril.freedesktop.org>
In-Reply-To: <158440537072.5177.5259310463530440555@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIENv?=
 =?utf-8?q?nsider_DBuf_bandwidth_when_calculating_CDCLK_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0864726738=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0864726738==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1b7e92817db14053803aff6bf596e65bintelcom_"

--_000_1b7e92817db14053803aff6bf596e65bintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hhdCBpcyB0aGlzIHdlaXJkIERPQyB3YXJuaW5nIGFib3V0PyAiRXJyb3I6IENhbm5vdCBvcGVu
IGZpbGUgLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYyINCg0KLSB3
b25kZXJpbmcsIGhvdyBpcyB0aGF0IHJlbGF0ZWQgdG8gdGhpcyBwYXRjaC4NCg0KDQpCZXN0IFJl
Z2FyZHMsDQoNCkxpc292c2tpeSBTdGFuaXNsYXYNCg0KT3JnYW5pemF0aW9uOiBJbnRlbCBGaW5s
YW5kIE95IC0gQklDIDAzNTc2MDYtNCAtIFdlc3RlbmRpbmthdHUgNywgMDIxNjAgRXNwb28NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpGcm9tOiBQYXRjaHdvcmsgPHBhdGNod29y
a0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPg0KU2VudDogVHVlc2RheSwgTWFyY2ggMTcsIDIwMjAg
MjozNjoxMCBBTQ0KVG86IExpc292c2tpeSwgU3RhbmlzbGF2DQpDYzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KU3ViamVjdDog4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIENv
bnNpZGVyIERCdWYgYmFuZHdpZHRoIHdoZW4gY2FsY3VsYXRpbmcgQ0RDTEsgKHJldjIpDQoNCj09
IFNlcmllcyBEZXRhaWxzID09DQoNClNlcmllczogQ29uc2lkZXIgREJ1ZiBiYW5kd2lkdGggd2hl
biBjYWxjdWxhdGluZyBDRENMSyAocmV2MikNClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy83NDczOS8NClN0YXRlIDogd2FybmluZw0KDQo9PSBTdW1tYXJ5
ID09DQoNCiQgbWFrZSBodG1sZG9jcyAyPiYxID4gL2Rldi9udWxsIHwgZ3JlcCBpOTE1DQpFcnJv
cjogQ2Fubm90IG9wZW4gZmlsZSAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNl
X3JlZy5jDQpFcnJvcjogQ2Fubm90IG9wZW4gZmlsZSAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2ZlbmNlX3JlZy5jDQpFcnJvcjogQ2Fubm90IG9wZW4gZmlsZSAuL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jDQpFcnJvcjogQ2Fubm90IG9wZW4gZmlsZSAu
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jDQpXQVJOSU5HOiBrZXJu
ZWwtZG9jICcuL3NjcmlwdHMva2VybmVsLWRvYyAtcnN0IC1lbmFibGUtbGluZW5vIC1pbnRlcm5h
bCAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jJyBmYWlsZWQgd2l0
aCByZXR1cm4gY29kZSAyDQpXQVJOSU5HOiBrZXJuZWwtZG9jICcuL3NjcmlwdHMva2VybmVsLWRv
YyAtcnN0IC1lbmFibGUtbGluZW5vIC1mdW5jdGlvbiBmZW5jZSByZWdpc3RlciBoYW5kbGluZyAu
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jJyBmYWlsZWQgd2l0aCBy
ZXR1cm4gY29kZSAxDQpXQVJOSU5HOiBrZXJuZWwtZG9jICcuL3NjcmlwdHMva2VybmVsLWRvYyAt
cnN0IC1lbmFibGUtbGluZW5vIC1mdW5jdGlvbiB0aWxpbmcgc3dpenpsaW5nIGRldGFpbHMgLi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYycgZmFpbGVkIHdpdGggcmV0
dXJuIGNvZGUgMQ0KDQo=

--_000_1b7e92817db14053803aff6bf596e65bintelcom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVu
dD0iTWljcm9zb2Z0IEV4Y2hhbmdlIFNlcnZlciI+DQo8IS0tIGNvbnZlcnRlZCBmcm9tIHRleHQg
LS0+PHN0eWxlPjwhLS0gLkVtYWlsUXVvdGUgeyBtYXJnaW4tbGVmdDogMXB0OyBwYWRkaW5nLWxl
ZnQ6IDRwdDsgYm9yZGVyLWxlZnQ6ICM4MDAwMDAgMnB4IHNvbGlkOyB9IC0tPjwvc3R5bGU+DQo8
L2hlYWQ+DQo8Ym9keT4NCjxtZXRhIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD1VVEYtOCI+
DQo8c3R5bGUgdHlwZT0idGV4dC9jc3MiIHN0eWxlPSIiPg0KPCEtLQ0KcA0KCXttYXJnaW4tdG9w
OjA7DQoJbWFyZ2luLWJvdHRvbTowfQ0KLS0+DQo8L3N0eWxlPg0KPGRpdiBkaXI9Imx0ciI+DQo8
ZGl2IGlkPSJ4X2RpdnRhZ2RlZmF1bHR3cmFwcGVyIiBkaXI9Imx0ciIgc3R5bGU9ImZvbnQtc2l6
ZToxMnB0OyBjb2xvcjojMDAwMDAwOyBmb250LWZhbWlseTpDYWxpYnJpLEhlbHZldGljYSxzYW5z
LXNlcmlmIj4NCjxwPldoYXQgaXMgdGhpcyB3ZWlyZCBET0Mgd2FybmluZyBhYm91dD8gJnF1b3Q7
PHNwYW4gc3R5bGU9ImNvbG9yOnJnYigzMywzMywzMyk7IGZvbnQtZmFtaWx5OndmX3NlZ29lLXVp
X25vcm1hbCwmcXVvdDtTZWdvZSBVSSZxdW90OywmcXVvdDtTZWdvZSBXUCZxdW90OyxUYWhvbWEs
QXJpYWwsc2Fucy1zZXJpZixzZXJpZixFbW9qaUZvbnQ7IGZvbnQtc2l6ZToxMy4zMzMzcHgiPkVy
cm9yOiBDYW5ub3Qgb3BlbiBmaWxlIC4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVu
Y2VfcmVnLmMmcXVvdDs8L3NwYW4+PC9wPg0KPHA+PHNwYW4gc3R5bGU9ImNvbG9yOnJnYigzMywz
MywzMyk7IGZvbnQtZmFtaWx5OndmX3NlZ29lLXVpX25vcm1hbCwmcXVvdDtTZWdvZSBVSSZxdW90
OywmcXVvdDtTZWdvZSBXUCZxdW90OyxUYWhvbWEsQXJpYWwsc2Fucy1zZXJpZixzZXJpZixFbW9q
aUZvbnQ7IGZvbnQtc2l6ZToxMy4zMzMzcHgiPi0gd29uZGVyaW5nLCZuYnNwO2hvdyBpcyB0aGF0
IHJlbGF0ZWQgdG8gdGhpcyBwYXRjaC48L3NwYW4+PC9wPg0KPHA+PGJyPg0KPC9wPg0KPGRpdiBp
ZD0ieF9TaWduYXR1cmUiPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6VGFob21hOyBmb250LXNp
emU6MTNweCI+PGZvbnQgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB0Ij5CZXN0
IFJlZ2FyZHMsPGJyPg0KPGJyPg0KTGlzb3Zza2l5IFN0YW5pc2xhdiA8YnI+DQo8YnI+DQpPcmdh
bml6YXRpb246IEludGVsIEZpbmxhbmQgT3kgLSBCSUMgMDM1NzYwNi00IC0gV2VzdGVuZGlua2F0
dSA3LCAwMjE2MCBFc3Bvbzxicj4NCjwvc3Bhbj48L2ZvbnQ+PC9kaXY+DQo8L2Rpdj4NCjwvZGl2
Pg0KPGhyIHRhYmluZGV4PSItMSIgc3R5bGU9ImRpc3BsYXk6aW5saW5lLWJsb2NrOyB3aWR0aDo5
OCUiPg0KPGRpdiBpZD0ieF9kaXZScGx5RndkTXNnIiBkaXI9Imx0ciI+PGZvbnQgZmFjZT0iQ2Fs
aWJyaSwgc2Fucy1zZXJpZiIgY29sb3I9IiMwMDAwMDAiIHN0eWxlPSJmb250LXNpemU6MTFwdCI+
PGI+RnJvbTo8L2I+IFBhdGNod29yayAmbHQ7cGF0Y2h3b3JrQGVtZXJpbC5mcmVlZGVza3RvcC5v
cmcmZ3Q7PGJyPg0KPGI+U2VudDo8L2I+IFR1ZXNkYXksIE1hcmNoIDE3LCAyMDIwIDI6MzY6MTAg
QU08YnI+DQo8Yj5Ubzo8L2I+IExpc292c2tpeSwgU3RhbmlzbGF2PGJyPg0KPGI+Q2M6PC9iPiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPGJyPg0KPGI+U3ViamVjdDo8L2I+IOKclyBG
aS5DSS5ET0NTOiB3YXJuaW5nIGZvciBDb25zaWRlciBEQnVmIGJhbmR3aWR0aCB3aGVuIGNhbGN1
bGF0aW5nIENEQ0xLIChyZXYyKTwvZm9udD4NCjxkaXY+Jm5ic3A7PC9kaXY+DQo8L2Rpdj4NCjwv
ZGl2Pg0KPGZvbnQgc2l6ZT0iMiI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMHB0OyI+DQo8ZGl2
IGNsYXNzPSJQbGFpblRleHQiPj09IFNlcmllcyBEZXRhaWxzID09PGJyPg0KPGJyPg0KU2VyaWVz
OiBDb25zaWRlciBEQnVmIGJhbmR3aWR0aCB3aGVuIGNhbGN1bGF0aW5nIENEQ0xLIChyZXYyKTxi
cj4NClVSTCZuYnNwOyZuYnNwOyA6IDxhIGhyZWY9Imh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNzQ3MzkvIj5odHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzc0NzM5LzwvYT48YnI+DQpTdGF0ZSA6IHdhcm5pbmc8YnI+DQo8YnI+DQo9PSBTdW1t
YXJ5ID09PGJyPg0KPGJyPg0KJCBtYWtlIGh0bWxkb2NzIDImZ3Q7JmFtcDsxICZndDsgL2Rldi9u
dWxsIHwgZ3JlcCBpOTE1PGJyPg0KRXJyb3I6IENhbm5vdCBvcGVuIGZpbGUgLi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYzxicj4NCkVycm9yOiBDYW5ub3Qgb3BlbiBm
aWxlIC4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmM8YnI+DQpFcnJv
cjogQ2Fubm90IG9wZW4gZmlsZSAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNl
X3JlZy5jPGJyPg0KRXJyb3I6IENhbm5vdCBvcGVuIGZpbGUgLi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9mZW5jZV9yZWcuYzxicj4NCldBUk5JTkc6IGtlcm5lbC1kb2MgJy4vc2NyaXB0
cy9rZXJuZWwtZG9jIC1yc3QgLWVuYWJsZS1saW5lbm8gLWludGVybmFsIC4vZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMnIGZhaWxlZCB3aXRoIHJldHVybiBjb2RlIDI8
YnI+DQpXQVJOSU5HOiBrZXJuZWwtZG9jICcuL3NjcmlwdHMva2VybmVsLWRvYyAtcnN0IC1lbmFi
bGUtbGluZW5vIC1mdW5jdGlvbiBmZW5jZSByZWdpc3RlciBoYW5kbGluZyAuL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jJyBmYWlsZWQgd2l0aCByZXR1cm4gY29kZSAx
PGJyPg0KV0FSTklORzoga2VybmVsLWRvYyAnLi9zY3JpcHRzL2tlcm5lbC1kb2MgLXJzdCAtZW5h
YmxlLWxpbmVubyAtZnVuY3Rpb24gdGlsaW5nIHN3aXp6bGluZyBkZXRhaWxzIC4vZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMnIGZhaWxlZCB3aXRoIHJldHVybiBjb2Rl
IDE8YnI+DQo8YnI+DQo8L2Rpdj4NCjwvc3Bhbj48L2ZvbnQ+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_1b7e92817db14053803aff6bf596e65bintelcom_--

--===============0864726738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0864726738==--
