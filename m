Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2F71D71AA
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 09:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFC06E0F4;
	Mon, 18 May 2020 07:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E53E06E0D9
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 07:21:07 +0000 (UTC)
IronPort-SDR: bQUauPl08iBZmwbe8taWsVwDfATAJMJqhyilT+5okn7v/P0sNMowVL0L1BRyGlYsC3NHY6CHY+
 wcAI8ymkUduw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 00:21:05 -0700
IronPort-SDR: e4uWAsILzV1I+i8J2XKA1vIHVv94xA13zm7423s4X/J0uRJdoIe8P1lDWbQ4KbSWcsq6se133/
 jbhqmNR+xsQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; 
 d="scan'208,217";a="465479213"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
 by fmsmga005.fm.intel.com with ESMTP; 18 May 2020 00:21:05 -0700
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX108.ger.corp.intel.com (163.33.3.3) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 18 May 2020 08:21:05 +0100
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 May 2020 08:21:04 +0100
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.1713.004;
 Mon, 18 May 2020 08:21:04 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Arno <star@gmx.li>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "chris@chris-wilson.co.uk"
 <chris@chris-wilson.co.uk>, "Vudum, Lakshminarayana"
 <lakshminarayana.vudum@intel.com>
Thread-Topic: [Intel-gfx] intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR*
 CPU pipe A FIFO underrun
Thread-Index: AQHWJ2zTJARQYTolEk6jSoDUEmIFJ6itZhgAgAAUsMA=
Date: Mon, 18 May 2020 07:21:04 +0000
Message-ID: <267c19058bf64dc2851cc5b6c0c6383c@intel.com>
References: <aab05507-450d-5643-20af-500dec6bc59b@gmx.li>
 <fab11a35-be96-40c4-3572-6879eb39364a@gmx.li>
In-Reply-To: <fab11a35-be96-40c4-3572-6879eb39364a@gmx.li>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] intel_cpu_fifo_underrun_irq_handler [i915]] *ERROR*
 CPU pipe A FIFO underrun
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
Content-Type: multipart/mixed; boundary="===============0384757295=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0384757295==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_267c19058bf64dc2851cc5b6c0c6383cintelcom_"

--_000_267c19058bf64dc2851cc5b6c0c6383cintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UGxlYXNlIG1ha2UgZ2l0bGFiIGlzc3VlIGlmIG5vdCBhbHJlYWR5IGRvbmUuIExha3NobWksIHBs
ZWFzZSBndWlkZS4NCg0KRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5m
cmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBBcm5vDQpTZW50OiBtYWFuYW50YWkgMTguIHRv
dWtva3V1dGEgMjAyMCAxMC4wNw0KVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IGNocmlzQGNocmlzLXdpbHNvbi5jby51aw0KU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIGludGVs
X2NwdV9maWZvX3VuZGVycnVuX2lycV9oYW5kbGVyIFtpOTE1XV0gKkVSUk9SKiBDUFUgcGlwZSBB
IEZJRk8gdW5kZXJydW4NCg0KDQpJcyB0aGVyZSBhbm90aGVyIHBsYWNlIHRvIHJlcG9ydCB0aGlz
IGtpbmQgb2YgaXNzdWU/IERpZG4ndCBnZXQgYW55IGZlZWRiYWNrLiBEaWQgSSBtYWtlIG1pc3Rh
a2VzIGluIG15IG1haWw/IEkgYWxyZWFkeSB0cmllZCB0aGUgVWJ1bnR1IGJ1Zy10cmFja2VyIChz
ZWUgYmVsb3cpIHdpdGggbm8gc3VjY2Vzcy4NCg0KVGhhbmsgeW91LA0KDQpBcm5vDQoNCg0KQW0g
MTEuMDUuMjAgdW0gMTA6MTggc2NocmllYiBBcm5vOg0KDQpNeSBsYXB0b3AgKGNvcmUgbTUtNnk1
NCkgc3RhcnRzIGZsaWNrZXJpbmcgYWZ0ZXIgcmV0dXJuaW5nIGZyb20gU3VzcGVuZCAodG8gUkFN
KSBvciBvdGhlciBjb21tYW5kcyB0b3VjaGluZyB0aGUgdmlkZW8gZHJpdmVyICh4cmFuZHIsIHBv
d2VydG9wIC0tY2FsaWJyYXRlLCAuLi4pDQoNCkZyb20ga2VybmVsICh0ZXN0ZWQgd2l0aCB1cCB0
byA1LjcpIEkgZ2V0IHRoZSBtZXNzYWdlOg0KDQpbZHJtOmludGVsX2NwdV9maWZvX3VuZGVycnVu
X2lycV9oYW5kbGVyIFtpOTE1XV0gKkVSUk9SKiBDUFUgcGlwZSBBIEZJRk8gdW5kZXJydW4NCg0K
SSBhZGRlZCBhIGJ1ZyB3aXRoIG1vcmUgZGV0YWlscyBoZXJlOg0KDQpodHRwczovL2J1Z3MubGF1
bmNocGFkLm5ldC91YnVudHUvK3NvdXJjZS9saW51eC8rYnVnLzE4NzI3NjANCg0KYnV0IGd1eXMg
ZnJvbSBVYnVudHUgc2VlbXMgbm90IGFibGUgdG8gaGVscCAoYXMgaXQgaXMgYW4gdXBzdHJlYW0g
YnVnKSAhPw0KDQpUaGlzIGhhcHBlbmQgbm90IGluIG9sZGVyIGtlcm5lbHMsIGJ1dCB0aGVzZSBo
YXZlIHRoZSBwcm9ibGVtIG5vdCB0byBnbyBpbiBwb3dlciBzYXZlIHN0YXRlcy4gU28gSSB0aGlu
ayB0aGUgZml4IG9mIHRoYXQNCg0KaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvdWJ1bnR1Lytz
b3VyY2UvbGludXgvK2J1Zy8xODYzNDg5DQoNCmNhdXNlcyB0aGlzIHJlZ3Jlc3Npb24uDQoNCkhv
cGUgc29tZW9uZSBjYW4gaGVscC4gRm9yIGEgIGxhcHRvcCBpdCBpcyBiZXR0ZXIgdG8gaGF2ZSBi
b3RoIC0gc3RhbmRieSBhbmQgcG93ZXIgc2F2aW5nLiBUaGFuayB5b3UuDQoNCkFybm8NCg0KDQoN
Cg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KDQpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0DQoNCkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc8
bWFpbHRvOkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc+DQoNCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQo=

--_000_267c19058bf64dc2851cc5b6c0c6383cintelcom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDb25zb2xhczsNCglwYW5vc2UtMToyIDEx
IDYgOSAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWws
IGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNtOw0KCW1hcmdpbi1ib3R0
b206LjAwMDFwdDsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixz
YW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9y
aXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQphOnZp
c2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5
Ow0KCWNvbG9yOnB1cnBsZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnByZQ0KCXtt
c28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJbXNvLXN0eWxlLWxpbms6IkhUTUwgUHJlZm9ybWF0dGVk
IENoYXIiOw0KCW1hcmdpbjowY207DQoJbWFyZ2luLWJvdHRvbTouMDAwMXB0Ow0KCWZvbnQtc2l6
ZToxMC4wcHQ7DQoJZm9udC1mYW1pbHk6IkNvdXJpZXIgTmV3Ijt9DQpwLm1zb25vcm1hbDAsIGxp
Lm1zb25vcm1hbDAsIGRpdi5tc29ub3JtYWwwDQoJe21zby1zdHlsZS1uYW1lOm1zb25vcm1hbDsN
Cgltc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzsNCgltYXJnaW4tcmlnaHQ6MGNtOw0KCW1zby1tYXJn
aW4tYm90dG9tLWFsdDphdXRvOw0KCW1hcmdpbi1sZWZ0OjBjbTsNCglmb250LXNpemU6MTEuMHB0
Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCnNwYW4uSFRNTFByZWZvcm1h
dHRlZENoYXINCgl7bXNvLXN0eWxlLW5hbWU6IkhUTUwgUHJlZm9ybWF0dGVkIENoYXIiOw0KCW1z
by1zdHlsZS1wcmlvcml0eTo5OTsNCgltc28tc3R5bGUtbGluazoiSFRNTCBQcmVmb3JtYXR0ZWQi
Ow0KCWZvbnQtZmFtaWx5OiJDb25zb2xhcyIsc2VyaWY7fQ0Kc3Bhbi5FbWFpbFN0eWxlMjENCgl7
bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNh
bnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5
bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LXNpemU6MTAuMHB0O30NCkBwYWdlIFdvcmRTZWN0
aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsNCgltYXJnaW46NzAuODVwdCAyLjBjbSA3MC44
NXB0IDIuMGNtO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+
PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9
ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBt
c28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0
PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0K
PC9oZWFkPg0KPGJvZHkgbGFuZz0iRkkiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRp
diBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9
IkVOLVVTIiBzdHlsZT0ibXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVMiPlBsZWFzZSBtYWtlIGdp
dGxhYiBpc3N1ZSBpZiBub3QgYWxyZWFkeSBkb25lLiBMYWtzaG1pLCBwbGVhc2UgZ3VpZGUuDQo8
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyIgc3R5bGU9Im1zby1mYXJlYXN0LWxhbmd1YWdlOkVOLVVTIj48bzpwPiZuYnNwOzwvbzpw
Pjwvc3Bhbj48L3A+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItbGVmdDpzb2xpZCBi
bHVlIDEuNXB0O3BhZGRpbmc6MGNtIDBjbSAwY20gNC4wcHQiPg0KPGRpdj4NCjxkaXYgc3R5bGU9
ImJvcmRlcjpub25lO2JvcmRlci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0
IDBjbSAwY20gMGNtIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIGxhbmc9IkVOLVVT
Ij5Gcm9tOjwvc3Bhbj48L2I+PHNwYW4gbGFuZz0iRU4tVVMiPiBJbnRlbC1nZnggJmx0O2ludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZyZndDsNCjxiPk9uIEJlaGFsZiBPZiA8
L2I+QXJubzxicj4NCjxiPlNlbnQ6PC9iPiBtYWFuYW50YWkgMTguIHRvdWtva3V1dGEgMjAyMCAx
MC4wNzxicj4NCjxiPlRvOjwvYj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgY2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPGJyPg0KPGI+U3ViamVjdDo8L2I+IFJlOiBbSW50ZWwtZ2Z4
XSBpbnRlbF9jcHVfZmlmb191bmRlcnJ1bl9pcnFfaGFuZGxlciBbaTkxNV1dICpFUlJPUiogQ1BV
IHBpcGUgQSBGSUZPIHVuZGVycnVuPG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8L2Rp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHA+SXMgdGhl
cmUgYW5vdGhlciBwbGFjZSB0byByZXBvcnQgdGhpcyBraW5kIG9mIGlzc3VlPyBEaWRuJ3QgZ2V0
IGFueSBmZWVkYmFjay4gRGlkIEkgbWFrZSBtaXN0YWtlcyBpbiBteSBtYWlsPyBJIGFscmVhZHkg
dHJpZWQgdGhlIFVidW50dSBidWctdHJhY2tlciAoc2VlIGJlbG93KSB3aXRoIG5vIHN1Y2Nlc3Mu
PG86cD48L286cD48L3A+DQo8cD5UaGFuayB5b3UsPG86cD48L286cD48L3A+DQo8cD5Bcm5vPG86
cD48L286cD48L3A+DQo8cD48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj5BbSAxMS4wNS4yMCB1bSAxMDoxOCBzY2hyaWViIEFybm86PG86cD48L286cD48
L3A+DQo8L2Rpdj4NCjxibG9ja3F1b3RlIHN0eWxlPSJtYXJnaW4tdG9wOjUuMHB0O21hcmdpbi1i
b3R0b206NS4wcHQiPg0KPGRpdj4NCjxwPk15IGxhcHRvcCAoY29yZSBtNS02eTU0KSBzdGFydHMg
ZmxpY2tlcmluZyBhZnRlciByZXR1cm5pbmcgZnJvbSBTdXNwZW5kICh0byBSQU0pIG9yIG90aGVy
IGNvbW1hbmRzIHRvdWNoaW5nIHRoZSB2aWRlbyBkcml2ZXIgKHhyYW5kciwgcG93ZXJ0b3AgLS1j
YWxpYnJhdGUsIC4uLik8bzpwPjwvbzpwPjwvcD4NCjxwPkZyb20ga2VybmVsICh0ZXN0ZWQgd2l0
aCB1cCB0byA1LjcpIEkgZ2V0IHRoZSBtZXNzYWdlOjxvOnA+PC9vOnA+PC9wPg0KPHAgaWQ9Inl1
aV8zXzEwXzNfMV8xNTg5MTExMjM5NDQ5XzE1MjkiPltkcm06aW50ZWxfY3B1X2ZpZm9fdW5kZXJy
dW5faXJxX2hhbmRsZXIgW2k5MTVdXSAqRVJST1IqIENQVSBwaXBlIEEgRklGTyB1bmRlcnJ1bjxv
OnA+PC9vOnA+PC9wPg0KPHA+SSBhZGRlZCBhIGJ1ZyB3aXRoIG1vcmUgZGV0YWlscyBoZXJlOjxv
OnA+PC9vOnA+PC9wPg0KPHA+PGEgaHJlZj0iaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvdWJ1
bnR1LyYjNDM7c291cmNlL2xpbnV4LyYjNDM7YnVnLzE4NzI3NjAiPmh0dHBzOi8vYnVncy5sYXVu
Y2hwYWQubmV0L3VidW50dS8mIzQzO3NvdXJjZS9saW51eC8mIzQzO2J1Zy8xODcyNzYwPC9hPjxv
OnA+PC9vOnA+PC9wPg0KPHA+YnV0IGd1eXMgZnJvbSBVYnVudHUgc2VlbXMgbm90IGFibGUgdG8g
aGVscCAoYXMgaXQgaXMgYW4gdXBzdHJlYW0gYnVnKSAhPzxvOnA+PC9vOnA+PC9wPg0KPHA+VGhp
cyBoYXBwZW5kIG5vdCBpbiBvbGRlciBrZXJuZWxzLCBidXQgdGhlc2UgaGF2ZSB0aGUgcHJvYmxl
bSBub3QgdG8gZ28gaW4gcG93ZXIgc2F2ZSBzdGF0ZXMuIFNvIEkgdGhpbmsgdGhlIGZpeCBvZiB0
aGF0Jm5ic3A7PG86cD48L286cD48L3A+DQo8cD48YSBocmVmPSJodHRwczovL2J1Z3MubGF1bmNo
cGFkLm5ldC91YnVudHUvJiM0Mztzb3VyY2UvbGludXgvJiM0MztidWcvMTg2MzQ4OSI+aHR0cHM6
Ly9idWdzLmxhdW5jaHBhZC5uZXQvdWJ1bnR1LyYjNDM7c291cmNlL2xpbnV4LyYjNDM7YnVnLzE4
NjM0ODk8L2E+PG86cD48L286cD48L3A+DQo8cD5jYXVzZXMgdGhpcyByZWdyZXNzaW9uLiA8bzpw
PjwvbzpwPjwvcD4NCjxwPkhvcGUgc29tZW9uZSBjYW4gaGVscC4gRm9yIGEmbmJzcDsgbGFwdG9w
IGl0IGlzIGJldHRlciB0byBoYXZlIGJvdGggLSBzdGFuZGJ5IGFuZCBwb3dlciBzYXZpbmcuIFRo
YW5rIHlvdS48bzpwPjwvbzpwPjwvcD4NCjxwPkFybm88bzpwPjwvbzpwPjwvcD4NCjxwPjxvOnA+
Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YnI+DQo8YnI+
DQo8bzpwPjwvbzpwPjwvcD4NCjxwcmU+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX188bzpwPjwvbzpwPjwvcHJlPg0KPHByZT5JbnRlbC1nZnggbWFpbGluZyBs
aXN0PG86cD48L286cD48L3ByZT4NCjxwcmU+PGEgaHJlZj0ibWFpbHRvOkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmciPkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc8L2E+PG86
cD48L286cD48L3ByZT4NCjxwcmU+PGEgaHJlZj0iaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngiPmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4PC9hPjxvOnA+PC9vOnA+PC9wcmU+DQo8L2Js
b2NrcXVvdGU+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_267c19058bf64dc2851cc5b6c0c6383cintelcom_--

--===============0384757295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0384757295==--
