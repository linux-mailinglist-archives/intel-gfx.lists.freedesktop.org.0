Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5204114130
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 14:06:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949206F4E4;
	Thu,  5 Dec 2019 13:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69D886F4E4
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 13:06:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 05:06:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="243240575"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 05 Dec 2019 05:06:14 -0800
Received: from bgsmsx105.gar.corp.intel.com (10.223.43.197) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 5 Dec 2019 05:06:13 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.190]) by
 BGSMSX105.gar.corp.intel.com ([169.254.3.118]) with mapi id 14.03.0439.000;
 Thu, 5 Dec 2019 18:36:09 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 09/13] drm/i915/dsi: use afe_clk() instead of
 intel_dsi_bitrate()
Thread-Index: AQHVpF+JX+p9nqATrE6zoBEdalKUkqerkFsg
Date: Thu, 5 Dec 2019 13:06:09 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809DA442@BGSMSX108.gar.corp.intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
 <bf3b0fb17595eb483597f2dd6d14f861656eba01.1574775655.git.jani.nikula@intel.com>
In-Reply-To: <bf3b0fb17595eb483597f2dd6d14f861656eba01.1574775655.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjNkMmZiNDgtZDc1MC00MDM0LTgwNjItNWFiYjRhZDAyNjUzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJPTWNmQWxXazlDc1ltb2xrcmgzYXBBK204K1RiWnVWRUNCMEc1ZGxReUhCTHpcL0RobXN1XC9ZQVZUcVNYU25SOFcifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 09/13] drm/i915/dsi: use afe_clk()
 instead of intel_dsi_bitrate()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBOb3ZlbWJlciAyNiwgMjAxOSA3OjEz
IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEs
IEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEt1bGthcm5pLCBWYW5kaXRhDQo+IDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyAwOS8xM10gZHJtL2k5MTUvZHNp
OiB1c2UgYWZlX2NsaygpIGluc3RlYWQgb2YNCj4gaW50ZWxfZHNpX2JpdHJhdGUoKQ0KPiANCj4g
V2UnbGwgYmUgZXhwYW5kaW5nIGFmZV9jbGsoKSB0byB0YWtlIERTQyBpbnRvIGFjY291bnQuIFN3
aXRjaCB0byB1c2luZyBpdA0KPiB3aGVyZSBEU0MgbWF0dGVycy4gV2hpY2ggaXMgcmVhbGx5IGV2
ZXJ5d2hlcmUgdGhhdA0KPiBpbnRlbF9kc2lfYml0cmF0ZSgpIGlzIGN1cnJlbnRseSB1c2VkIGlu
IElDTCBEU0kgY29kZS4NCj4gDQo+IFRoZSBmdW5jdGlvbmFsIGRpZmZlcmVuY2UgaXMgdGhhdCB3
ZSByb3VuZCB0aGUgcmVzdWx0IGNsb3Nlc3QgaW5zdGVhZCBvZg0KPiBkb3duLg0KPiANCj4gQ2M6
IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPg0KPiBDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9m
Zi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCg0KTG9va3MgZ29vZCB0
byBtZS4NClJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGlu
dGVsLmNvbT4NCg0KUmVnYXJkcywNClZhbmRpdGENCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDggKysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ljbF9kc2kuYw0KPiBpbmRleCBkZTM3NDMyMzNkY2IuLmQ1NzZmMjljZWY3NSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMNCj4gQEAgLTUzOSw3
ICs1MzksNyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfc2V0dXBfZHBoeV90aW1pbmdzKHN0cnVj
dA0KPiBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQ0KPiAgCSAqIGxlYXZlIGFsbCBmaWVsZHMgYXQg
SFcgZGVmYXVsdCB2YWx1ZXMuDQo+ICAJICovDQo+ICAJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEp
KSB7DQo+IC0JCWlmIChpbnRlbF9kc2lfYml0cmF0ZShpbnRlbF9kc2kpIDw9IDgwMDAwMCkgew0K
PiArCQlpZiAoYWZlX2NsayhlbmNvZGVyKSA8PSA4MDAwMDApIHsNCj4gIAkJCWZvcl9lYWNoX2Rz
aV9wb3J0KHBvcnQsIGludGVsX2RzaS0+cG9ydHMpIHsNCj4gIAkJCQl0bXAgPQ0KPiBJOTE1X1JF
QUQoRFBIWV9UQV9USU1JTkdfUEFSQU0ocG9ydCkpOw0KPiAgCQkJCXRtcCAmPSB+VEFfU1VSRV9N
QVNLOw0KPiBAQCAtNjQ5LDcgKzY0OSw3IEBAIGdlbjExX2RzaV9jb25maWd1cmVfdHJhbnNjb2Rl
cihzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAkJCXRtcCB8PSBFT1RQX0RJ
U0FCTEVEOw0KPiANCj4gIAkJLyogZW5hYmxlIGxpbmsgY2FsaWJyYXRpb24gaWYgZnJlcSA+IDEu
NUdicHMgKi8NCj4gLQkJaWYgKGludGVsX2RzaV9iaXRyYXRlKGludGVsX2RzaSkgPj0gMTUwMCAq
IDEwMDApIHsNCj4gKwkJaWYgKGFmZV9jbGsoZW5jb2RlcikgPj0gMTUwMCAqIDEwMDApIHsNCj4g
IAkJCXRtcCAmPSB+TElOS19DQUxJQlJBVElPTl9NQVNLOw0KPiAgCQkJdG1wIHw9IENBTElCUkFU
SU9OX0VOQUJMRURfSU5JVElBTF9PTkxZOw0KPiAgCQl9DQo+IEBAIC05MzAsNyArOTMwLDcgQEAg
c3RhdGljIHZvaWQgZ2VuMTFfZHNpX3NldHVwX3RpbWVvdXRzKHN0cnVjdA0KPiBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyKQ0KPiAgCSAqIFRJTUVfTlMgPSAoQllURV9DTEtfQ09VTlQgKiA4ICogMTBe
NikvIEJpdHJhdGUNCj4gIAkgKiBFU0NBUEVfQ0xLX0NPVU5UICA9IFRJTUVfTlMvRVNDX0NMS19O
Uw0KPiAgCSAqLw0KPiAtCWRpdmlzb3IgPSBpbnRlbF9kc2lfdGxweF9ucyhpbnRlbF9kc2kpICog
aW50ZWxfZHNpX2JpdHJhdGUoaW50ZWxfZHNpKSAqDQo+IDEwMDA7DQo+ICsJZGl2aXNvciA9IGlu
dGVsX2RzaV90bHB4X25zKGludGVsX2RzaSkgKiBhZmVfY2xrKGVuY29kZXIpICogMTAwMDsNCj4g
IAltdWwgPSA4ICogMTAwMDAwMDsNCj4gIAloc190eF90aW1lb3V0ID0gRElWX1JPVU5EX1VQKGlu
dGVsX2RzaS0+aHNfdHhfdGltZW91dCAqIG11bCwNCj4gIAkJCQkgICAgIGRpdmlzb3IpOw0KPiBA
QCAtMTMwMCw3ICsxMzAwLDcgQEAgc3RhdGljIGludCBnZW4xMV9kc2lfY29tcHV0ZV9jb25maWco
c3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCXBpcGVfY29uZmlnLT5waXBl
X2JwcCA9IDE4Ow0KPiANCj4gIAlwaXBlX2NvbmZpZy0+Y2xvY2tfc2V0ID0gdHJ1ZTsNCj4gLQlw
aXBlX2NvbmZpZy0+cG9ydF9jbG9jayA9IGludGVsX2RzaV9iaXRyYXRlKGludGVsX2RzaSkgLyA1
Ow0KPiArCXBpcGVfY29uZmlnLT5wb3J0X2Nsb2NrID0gYWZlX2NsayhlbmNvZGVyKSAvIDU7DQo+
IA0KPiAgCXJldHVybiAwOw0KPiAgfQ0KPiAtLQ0KPiAyLjIwLjENCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
