Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA732AA9FF
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Nov 2020 08:52:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB1C26E2DE;
	Sun,  8 Nov 2020 07:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 623246E082;
 Sun,  8 Nov 2020 07:52:00 +0000 (UTC)
IronPort-SDR: xsxzE+DT6XrZ3m/QNxK1adToiNCrTKVzahQElEE3hHdLtDcTTyqHgL14NcxRaMropCaDRaWMRu
 jJw6JbMLN1Tw==
X-IronPort-AV: E=McAfee;i="6000,8403,9798"; a="187629896"
X-IronPort-AV: E=Sophos;i="5.77,461,1596524400"; 
 d="scan'208,217";a="187629896"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2020 23:51:59 -0800
IronPort-SDR: qGZATA64I1ddlBRHA14k2WWB7TR+uMPaUEqMn5xK4u+NcKgf/9AO3oQN/CTn13EbsbkSOJEgcj
 HcJRLVQXBzqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,461,1596524400"; 
 d="scan'208,217";a="540394090"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga005.jf.intel.com with ESMTP; 07 Nov 2020 23:51:58 -0800
Received: from irsmsx606.ger.corp.intel.com (163.33.146.139) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 8 Nov 2020 07:51:57 +0000
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139]) by
 IRSMSX606.ger.corp.intel.com ([163.33.146.139]) with mapi id 15.01.1713.004;
 Sun, 8 Nov 2020 07:51:57 +0000
From: "Wang, Zhi A" <zhi.a.wang@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, "Yuan, Hang"
 <hang.yuan@intel.com>, "Lv, Zhiyuan" <zhiyuan.lv@intel.com>, intel-gvt-dev
 <intel-gvt-dev@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PULL] topic/gvt-ww-lock
Thread-Index: AQHWkNbKhC2+qVTFwE63x71ymU/mv6mBDncAgCvNiYA=
Date: Sun, 8 Nov 2020 07:51:57 +0000
Message-ID: <3ee7e0f7e16746619767b5ed913521b6@intel.com>
References: <4b78ef66-a74f-9156-62fb-bb733947b57e@intel.com>
 <505b138f-46d7-5599-3b41-646508b3bd5b@linux.intel.com>
In-Reply-To: <505b138f-46d7-5599-3b41-646508b3bd5b@linux.intel.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PULL] topic/gvt-ww-lock
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
Content-Type: multipart/mixed; boundary="===============1206558553=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1206558553==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3ee7e0f7e16746619767b5ed913521b6intelcom_"

--_000_3ee7e0f7e16746619767b5ed913521b6intelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWFhcnRlbjoNCg0KVGhhbmtzIGZvciB0aGUgcmVwbHkuIPCfmIogSGF2ZSB5b3VyIHBhdGNo
ZXMgYmVlbiBtZXJnZWQgaW50byB0aGUgZHJtLWludGVsPyAoVGhlIG5ldyBpOTE1X2dlbV9vYmpl
Y3RfZ2d0dF9waW4oKSB5b3UgbWVudGlvbmVkIGluIHRoZSBlbWFpbCkuIEFsc28sIHdlIG1pZ2h0
IGdvIG9uLWRlbWFuZCBwaW4gcmVjZW50bHkgaW4gdGhlIHN1c3BlbmQvcmVzdW1lIHN1cHBvcnQu
IEluIHRoYXQgY2FzZSwgSSBndWVzcyBJIG5lZWQgdG8gcmV2aWV3IG15IHBhdGNoZXMgYWdhaW4g
YmFzZWQgb24gdGhlIG5ldyBtZWNoYW5pc20uIFdydCB5b3VyIGNvbmNlcm4sIG15IHVuZGVyc3Rh
bmRpbmcgaXMgd3cgZGFuY2UgaXMgZm9yIHJlY29yZGluZyB0aGUgcmVsYXRlZCBsb2NrcyBpbiBh
IHNlY3Rpb24uIFdoZW4gYSBkZWFkbG9jayBoYXBwZW5zLCB3ZSBjYW4gcmV3aW5kIHRoZSBsb2Nr
cyByZWNvcmRlZCBpbiBhIHd3IGRhbmNlIGFuZCByZXdpbmQgdGhlbS4gSW4gdGhlIGN1cnJlbnQg
Y29kZSwgdGhlIGNvbnRleHQgaXMgYWx3YXlzIHBpbm5lZC4gU28gd2UgZG9u4oCZdCBuZWVkIHRv
IHdvcnJ5IGFib3V0IHRoZSBjb250ZXh0IGFzIHdoYXQgeW91IHNhaWQuIEZvciBwcmVwYXJpbmdf
c2hhZG93X3dhX2N0eCwgdGhlIGdlbSBvYmplY3Qgd2lsbCBiZSBuZXdseSBjcmVhdGVkIHdoZW5l
dmVyIHNjYW4gYSBleGVjbGlzdCBjb250ZXh0IGFuZCBpdCB3aWxsIGJlIGRlc3Ryb3llZCB3aGVu
IHRoZSBjb250ZXh0IGlzIHNjaGVkdWxlZC1vdXQuIEkgdGhpbmsgaW4gdGhhdCBjYXNlLCB3ZSBu
ZWVkIGEgc2VwYXJhdGUgd3cgZGFuY2UuDQpUaGFua3MsIFpoaS4NCg0KLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCkZyb206IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+DQpTZW50OiBXZWRuZXNkYXksIFNlcHRlbWJlciAzMCwgMjAyMCAyOjU1
IFBNDQpUbzogV2FuZywgWmhpIEEgPHpoaS5hLndhbmdAaW50ZWwuY29tPjsgSm9vbmFzIExhaHRp
bmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPjsgTmlrdWxhLCBKYW5pIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+OyBpbnRlbC1nZnggPGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc+OyBZdWFuLCBIYW5nIDxoYW5nLnl1YW5AaW50ZWwuY29tPjsgTHYsIFpoaXl1YW4gPHpo
aXl1YW4ubHZAaW50ZWwuY29tPjsgaW50ZWwtZ3Z0LWRldiA8aW50ZWwtZ3Z0LWRldkBsaXN0cy5m
cmVlZGVza3RvcC5vcmc+DQpTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BVTExdIHRvcGljL2d2
dC13dy1sb2NrDQoNCkhleSwNCg0KT3AgMjItMDktMjAyMCBvbSAxMzo1MSBzY2hyZWVmIFdhbmcs
IFpoaSBBOg0KPg0KPiBIaSwNCj4NCj4gSGVyZSdzIHRoZSBwYXRjaCB3aGljaCBpbnRyb2R1Y2Vz
IEdWVC1nIHd3IGxvY2sgc3VwcG9ydCBhZ2FpbnN0IGRybS1pbnRlbC1ndC1uZXh0IGJyYW5jaC4N
Cj4NCj4gVGhhbmtzDQo+DQo+IC0tDQo+DQo+IFRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBj
b21taXQgNDMxNmIxOWRlZTI3Y2M1Y2QzNGE5NWZkYmMwYTNhNTIzNzUwNzcwMToNCj4NCj4gICBk
cm0vaTkxNTogRml4IHVuaW5pdGlhbGlzZWQgdmFyaWFibGUgaW4NCj4gaW50ZWxfY29udGV4dF9j
cmVhdGVfcmVxdWVzdC4gKDIwMjAtMDktMjEgMTE6MDk6NDYgKzAyMDApDQo+DQo+IGFyZSBhdmFp
bGFibGUgaW4gdGhlIGdpdCByZXBvc2l0b3J5IGF0Og0KPg0KPiAgIGh0dHBzOi8vZ2l0aHViLmNv
bS9pbnRlbC9ndnQtbGludXguZ2l0IHRhZ3MvZ3Z0LXd3LWxvY2stMDktMjItMjAyMA0KPg0KPiBm
b3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gZTFiNDlhZTE1NTQ1MWFhYTAzOWVlYjIzZmNl
ODA4YzcxYTAzODI4MzoNCj4NCj4gICBkcm0vaTkxNS9ndnQ6IEludHJvZHVjZSBwZXIgb2JqZWN0
IGxvY2tpbmcgaW4gR1ZUIHNjaGVkdWxlci4NCj4gKDIwMjAtMDktMjIgMTI6MDk6NTYgKzAzMDAp
DQo+DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCj4gZ3Z0LXd3LWxvY2stMDktMjItMjAyMDoNCj4NCj4gLSBJbnRyb2R1
Y2Ugd3cgbG9jayBzdXBwb3J0IGludG8gR1ZULWcuDQo+DQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gWmhpIFdhbmcg
KDEpOg0KPiAgICAgICBkcm0vaTkxNS9ndnQ6IEludHJvZHVjZSBwZXIgb2JqZWN0IGxvY2tpbmcg
aW4gR1ZUIHNjaGVkdWxlci4NCj4NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9zY2hlZHVs
ZXIuYyB8IDY4DQo+ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDU3IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KDQpJJ3ZlIHRh
a2VuIGEgbG9vayBhdCB0aGlzIGJyYW5jaCwgYW5kIEkgaGF2ZSBzb21lIGZlZWRiYWNrLg0KDQpB
ZGRpbmcgd3dfY3R4IGJsaW5kbHkgbGlrZSBpcyBkb25lIGRvZXNuJ3Qgd29yay4gRm9yIGV4YW1w
bGUgSSdtIHdvcmtpbmcgb24gYSBwYXRjaCB0aGF0IGFkZHMgd3cgaGFuZGxpbmcgdG8gaTkxNV9n
ZW1fb2JqZWN0X2dndHRfcGluKCksIHNvIHlvdSBkb24ndCBoYXZlIHRvIHBlcmZvcm0gbWFudWFs
bHkgaW4gcHJlcGFyZV9zaGFkb3dfd2FfY3R4KCkuIGludGVsX2NvbnRleHRfcGluKCkgYWxyZWFk
eSBoYXMgYSB3dyBkYW5jZSwgeW91IGNhbiBrZWVwIGNhbGxpbmcgaXQgd2l0aG91dCBvcGVuIGNv
ZGluZyBpdC4gSWYgeW91IGRvIGRlY2lkZSB0byBjYWxsIGl0IG1hbnVhbGx5LCBpbnRlbF9jb250
ZXh0X3B1dCB3b3VsZCBoYXZlIHRvIGJlIGNhbGxlZCBhZnRlciBjdHhfZmluaS4gQ2hlZXJzLCBN
YWFydGVuDQo=

--_000_3ee7e0f7e16746619767b5ed913521b6intelcom_
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
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseToiU2Vnb2UgVUkgRW1vamkiOw0KCXBhbm9z
ZS0xOjIgMTEgNSAyIDQgMiA0IDIgMiAzO30NCi8qIFN0eWxlIERlZmluaXRpb25zICovDQpwLk1z
b05vcm1hbCwgbGkuTXNvTm9ybWFsLCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjowaW47DQoJbWFy
Z2luLWJvdHRvbTouMDAwMXB0Ow0KCWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNh
bGlicmkiLHNhbnMtc2VyaWY7fQ0KYTpsaW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5
bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6Ymx1ZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5l
O30NCnNwYW4uRW1haWxTdHlsZTE5DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLWNvbXBvc2U7
DQoJZm9udC1mYW1pbHk6IlRpbWVzIE5ldyBSb21hbiIsc2VyaWY7fQ0KLk1zb0NocERlZmF1bHQN
Cgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1zaXplOjEwLjBwdDt9DQpAcGFn
ZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGlu
IDEuMGluIDEuMGluO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0K
LS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpl
eHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0
ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6
ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0t
Pg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRU4tVVMiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUi
Pg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxl
PSJtYXJnaW4tYm90dG9tOjEyLjBwdCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC4wcHQiPkhp
IE1hYXJ0ZW46PGJyPg0KPGJyPg0KVGhhbmtzIGZvciB0aGUgcmVwbHkuIDwvc3Bhbj48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjEwLjBwdDtmb250LWZhbWlseTomcXVvdDtTZWdvZSBVSSBFbW9qaSZx
dW90OyxzYW5zLXNlcmlmIj4mIzEyODUyMjs8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MC4wcHQiPiBIYXZlIHlvdXIgcGF0Y2hlcyBiZWVuIG1lcmdlZCBpbnRvIHRoZSBkcm0taW50ZWw/
IChUaGUgbmV3IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3BpbigpIHlvdSBtZW50aW9uZWQgaW4gdGhl
IGVtYWlsKS4gQWxzbywNCiB3ZSBtaWdodCBnbyBvbi1kZW1hbmQgcGluIHJlY2VudGx5IGluIHRo
ZSBzdXNwZW5kL3Jlc3VtZSBzdXBwb3J0LiBJbiB0aGF0IGNhc2UsIEkgZ3Vlc3MgSSBuZWVkIHRv
IHJldmlldyBteSBwYXRjaGVzIGFnYWluIGJhc2VkIG9uIHRoZSBuZXcgbWVjaGFuaXNtLiBXcnQg
eW91ciBjb25jZXJuLCBteSB1bmRlcnN0YW5kaW5nIGlzIHd3IGRhbmNlIGlzIGZvciByZWNvcmRp
bmcgdGhlIHJlbGF0ZWQgbG9ja3MgaW4gYSBzZWN0aW9uLiBXaGVuIGEgZGVhZGxvY2sNCiBoYXBw
ZW5zLCB3ZSBjYW4gcmV3aW5kIHRoZSBsb2NrcyByZWNvcmRlZCBpbiBhIHd3IGRhbmNlIGFuZCBy
ZXdpbmQgdGhlbS4gSW4gdGhlIGN1cnJlbnQgY29kZSwgdGhlIGNvbnRleHQgaXMgYWx3YXlzIHBp
bm5lZC4gU28gd2UgZG9u4oCZdCBuZWVkIHRvIHdvcnJ5IGFib3V0IHRoZSBjb250ZXh0IGFzIHdo
YXQgeW91IHNhaWQuIEZvciBwcmVwYXJpbmdfc2hhZG93X3dhX2N0eCwgdGhlIGdlbSBvYmplY3Qg
d2lsbCBiZSBuZXdseSBjcmVhdGVkIHdoZW5ldmVyDQogc2NhbiBhIGV4ZWNsaXN0IGNvbnRleHQg
YW5kIGl0IHdpbGwgYmUgZGVzdHJveWVkIHdoZW4gdGhlIGNvbnRleHQgaXMgc2NoZWR1bGVkLW91
dC4gSSB0aGluayBpbiB0aGF0IGNhc2UsIHdlIG5lZWQgYSBzZXBhcmF0ZSB3dyBkYW5jZS48bzpw
PjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2luLWJv
dHRvbToxMi4wcHQiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0Ij5UaGFua3MsIFpoaS48
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2lu
LWJvdHRvbToxMi4wcHQiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0Ij48YnI+DQotLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLTxicj4NCkZyb206IE1hYXJ0ZW4gTGFua2hvcnN0ICZsdDtt
YWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20mZ3Q7IDxicj4NClNlbnQ6IFdlZG5lc2Rh
eSwgU2VwdGVtYmVyIDMwLCAyMDIwIDI6NTUgUE08YnI+DQpUbzogV2FuZywgWmhpIEEgJmx0O3po
aS5hLndhbmdAaW50ZWwuY29tJmd0OzsgSm9vbmFzIExhaHRpbmVuICZsdDtqb29uYXMubGFodGlu
ZW5AbGludXguaW50ZWwuY29tJmd0OzsgTmlrdWxhLCBKYW5pICZsdDtqYW5pLm5pa3VsYUBpbnRl
bC5jb20mZ3Q7OyBpbnRlbC1nZnggJmx0O2ludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcm
Z3Q7OyBZdWFuLCBIYW5nICZsdDtoYW5nLnl1YW5AaW50ZWwuY29tJmd0OzsgTHYsIFpoaXl1YW4g
Jmx0O3poaXl1YW4ubHZAaW50ZWwuY29tJmd0OzsgaW50ZWwtZ3Z0LWRldg0KICZsdDtpbnRlbC1n
dnQtZGV2QGxpc3RzLmZyZWVkZXNrdG9wLm9yZyZndDs8YnI+DQpTdWJqZWN0OiBSZTogW0ludGVs
LWdmeF0gW1BVTExdIHRvcGljL2d2dC13dy1sb2NrPGJyPg0KPGJyPg0KSGV5LDxicj4NCjxicj4N
Ck9wIDIyLTA5LTIwMjAgb20gMTM6NTEgc2NocmVlZiBXYW5nLCBaaGkgQTo8YnI+DQomZ3Q7PGJy
Pg0KJmd0OyBIaSw8YnI+DQomZ3Q7PGJyPg0KJmd0OyBIZXJlJ3MgdGhlIHBhdGNoIHdoaWNoIGlu
dHJvZHVjZXMgR1ZULWcgd3cgbG9jayBzdXBwb3J0IGFnYWluc3QgZHJtLWludGVsLWd0LW5leHQg
YnJhbmNoLjxicj4NCiZndDs8YnI+DQomZ3Q7IFRoYW5rczxicj4NCiZndDs8YnI+DQomZ3Q7IC0t
PGJyPg0KJmd0Ozxicj4NCiZndDsgVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA0
MzE2YjE5ZGVlMjdjYzVjZDM0YTk1ZmRiYzBhM2E1MjM3NTA3NzAxOjxicj4NCiZndDs8YnI+DQom
Z3Q7ICZuYnNwOyBkcm0vaTkxNTogRml4IHVuaW5pdGlhbGlzZWQgdmFyaWFibGUgaW4gPGJyPg0K
Jmd0OyBpbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0LiAoMjAyMC0wOS0yMSAxMTowOTo0NiAm
IzQzOzAyMDApPGJyPg0KJmd0Ozxicj4NCiZndDsgYXJlIGF2YWlsYWJsZSBpbiB0aGUgZ2l0IHJl
cG9zaXRvcnkgYXQ6PGJyPg0KJmd0Ozxicj4NCiZndDsgJm5ic3A7IDxhIGhyZWY9Imh0dHBzOi8v
Z2l0aHViLmNvbS9pbnRlbC9ndnQtbGludXguZ2l0IiB0YXJnZXQ9Il9CTEFOSyI+aHR0cHM6Ly9n
aXRodWIuY29tL2ludGVsL2d2dC1saW51eC5naXQ8L2E+IHRhZ3MvZ3Z0LXd3LWxvY2stMDktMjIt
MjAyMDxicj4NCiZndDs8YnI+DQomZ3Q7IGZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byBl
MWI0OWFlMTU1NDUxYWFhMDM5ZWViMjNmY2U4MDhjNzFhMDM4MjgzOjxicj4NCiZndDs8YnI+DQom
Z3Q7ICZuYnNwOyBkcm0vaTkxNS9ndnQ6IEludHJvZHVjZSBwZXIgb2JqZWN0IGxvY2tpbmcgaW4g
R1ZUIHNjaGVkdWxlci4gPGJyPg0KJmd0OyAoMjAyMC0wOS0yMiAxMjowOTo1NiAmIzQzOzAzMDAp
PGJyPg0KJmd0Ozxicj4NCiZndDsgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTxicj4NCiZndDsgZ3Z0LXd3LWxvY2stMDktMjIt
MjAyMDo8YnI+DQomZ3Q7PGJyPg0KJmd0OyAtIEludHJvZHVjZSB3dyBsb2NrIHN1cHBvcnQgaW50
byBHVlQtZy48YnI+DQomZ3Q7PGJyPg0KJmd0OyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPGJyPg0KJmd0OyBaaGkgV2FuZyAo
MSk6PGJyPg0KJmd0OyAmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgZHJtL2k5MTUvZ3Z0
OiBJbnRyb2R1Y2UgcGVyIG9iamVjdCBsb2NraW5nIGluIEdWVCBzY2hlZHVsZXIuPGJyPg0KJmd0
Ozxicj4NCiZndDsgJm5ic3A7ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L3NjaGVkdWxlci5jIHwg
NjggPGJyPg0KJmd0OyAmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0
MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7
JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzsmIzQzOyYjNDM7JiM0MzstLS0tLS08
YnI+DQomZ3Q7ICZuYnNwOzEgZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCYjNDM7KSwgMTEg
ZGVsZXRpb25zKC0pPGJyPg0KPGJyPg0KSSd2ZSB0YWtlbiBhIGxvb2sgYXQgdGhpcyBicmFuY2gs
IGFuZCBJIGhhdmUgc29tZSBmZWVkYmFjay48YnI+DQo8YnI+DQpBZGRpbmcgd3dfY3R4IGJsaW5k
bHkgbGlrZSBpcyBkb25lIGRvZXNuJ3Qgd29yay4gRm9yIGV4YW1wbGUgSSdtIHdvcmtpbmcgb24g
YSBwYXRjaCB0aGF0IGFkZHMgd3cgaGFuZGxpbmcgdG8gaTkxNV9nZW1fb2JqZWN0X2dndHRfcGlu
KCksIHNvIHlvdSBkb24ndCBoYXZlIHRvIHBlcmZvcm0gbWFudWFsbHkgaW4gcHJlcGFyZV9zaGFk
b3dfd2FfY3R4KCkuIGludGVsX2NvbnRleHRfcGluKCkgYWxyZWFkeSBoYXMgYSB3dyBkYW5jZSwg
eW91IGNhbiBrZWVwDQogY2FsbGluZyBpdCB3aXRob3V0IG9wZW4gY29kaW5nIGl0LiBJZiB5b3Ug
ZG8gZGVjaWRlIHRvIGNhbGwgaXQgbWFudWFsbHksIGludGVsX2NvbnRleHRfcHV0IHdvdWxkIGhh
dmUgdG8gYmUgY2FsbGVkIGFmdGVyIGN0eF9maW5pLiBDaGVlcnMsIE1hYXJ0ZW48bzpwPjwvbzpw
Pjwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_3ee7e0f7e16746619767b5ed913521b6intelcom_--

--===============1206558553==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1206558553==--
