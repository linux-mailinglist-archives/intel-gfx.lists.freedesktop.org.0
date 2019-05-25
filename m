Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A90212A232
	for <lists+intel-gfx@lfdr.de>; Sat, 25 May 2019 02:59:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D416E0E9;
	Sat, 25 May 2019 00:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C561B6E0E9
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 May 2019 00:59:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 17:59:03 -0700
X-ExtLoop1: 1
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga008.jf.intel.com with ESMTP; 24 May 2019 17:59:02 -0700
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 24 May 2019 17:59:02 -0700
Received: from shsmsx108.ccr.corp.intel.com (10.239.4.97) by
 fmsmsx117.amr.corp.intel.com (10.18.116.17) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 24 May 2019 17:59:02 -0700
Received: from shsmsx103.ccr.corp.intel.com ([169.254.4.70]) by
 SHSMSX108.ccr.corp.intel.com ([169.254.8.126]) with mapi id 14.03.0415.000;
 Sat, 25 May 2019 08:59:00 +0800
From: "Ye, Tony" <tony.ye@intel.com>
To: "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>
Thread-Topic: [PATCH v4 21/22] drm/i915/huc: Define HuC firmware version for
 Icelake
Thread-Index: AQHVEb/ATi2CNWCbNE62qID1a6nbV6Z7BpNA
Date: Sat, 25 May 2019 00:58:59 +0000
Message-ID: <16587A43-DAA9-4AEC-96F2-C55F8B4F35CC@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>,
 <20190523233049.28020-22-michal.wajdeczko@intel.com>
In-Reply-To: <20190523233049.28020-22-michal.wajdeczko@intel.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 21/22] drm/i915/huc: Define HuC firmware
 version for Icelake
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPgoKPiDlnKggMjAxOeW5tDXm
nIgyNOaXpe+8jOS4iuWNiDc6MzLvvIxXYWpkZWN6a28sIE1pY2hhbCA8TWljaGFsLldhamRlY3pr
b0BpbnRlbC5jb20+IOWGmemBk++8mgo+IAo+IERlZmluZSBIdUMgZmlybXdhcmUgdmVyc2lvbiBm
b3IgSWNlbGFrZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwu
d2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMu
bGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5z
cml2YXRzYUBpbnRlbC5jb20+Cj4gQ2M6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPgo+IAo+
IHYyOiA4LjQuMzIzOCBpcyBub3cgYXZhaWxhYmxlCj4gLS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfaHVjX2Z3LmMgfCAxMiArKysrKysrKysrKysKPiAxIGZpbGUgY2hhbmdlZCwgMTIg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9odWNfZncuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2h1Y19mdy5jCj4gaW5kZXgg
OGJhYzZhMDUxYzE4Li4wNWNiZjgzMzhmNTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfaHVjX2Z3LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9o
dWNfZncuYwo+IEBAIC0zOCw2ICszOCwxMCBAQAo+ICNkZWZpbmUgR0xLX0hVQ19GV19NSU5PUiAw
MQo+ICNkZWZpbmUgR0xLX0JMRF9OVU0gMjg5Mwo+IAo+ICsjZGVmaW5lIElDTF9IVUNfRldfTUFK
T1IgOAo+ICsjZGVmaW5lIElDTF9IVUNfRldfTUlOT1IgNAo+ICsjZGVmaW5lIElDTF9CTERfTlVN
IDMyMzgKPiArCj4gI2RlZmluZSBIVUNfRldfUEFUSChwbGF0Zm9ybSwgbWFqb3IsIG1pbm9yLCBi
bGRfbnVtKSBcCj4gICAgImk5MTUvIiBfX3N0cmluZ2lmeShwbGF0Zm9ybSkgIl9odWNfdmVyIiBf
X3N0cmluZ2lmeShtYWpvcikgIl8iIFwKPiAgICBfX3N0cmluZ2lmeShtaW5vcikgIl8iIF9fc3Ry
aW5naWZ5KGJsZF9udW0pICIuYmluIgo+IEBAIC01OCw2ICs2MiwxMCBAQCBNT0RVTEVfRklSTVdB
UkUoSTkxNV9LQkxfSFVDX1VDT0RFKTsKPiAgICBHTEtfSFVDX0ZXX01JTk9SLCBHTEtfQkxEX05V
TSkKPiBNT0RVTEVfRklSTVdBUkUoSTkxNV9HTEtfSFVDX1VDT0RFKTsKPiAKPiArI2RlZmluZSBJ
OTE1X0lDTF9IVUNfVUNPREUgSFVDX0ZXX1BBVEgoaWNsLCBJQ0xfSFVDX0ZXX01BSk9SLCBcCj4g
KyAgICBJQ0xfSFVDX0ZXX01JTk9SLCBJQ0xfQkxEX05VTSkKPiArTU9EVUxFX0ZJUk1XQVJFKEk5
MTVfSUNMX0hVQ19VQ09ERSk7Cj4gKwo+IHN0YXRpYyB2b2lkIGh1Y19md19zZWxlY3Qoc3RydWN0
IGludGVsX3VjX2Z3ICpodWNfZncpCj4gewo+ICAgIHN0cnVjdCBpbnRlbF9odWMgKmh1YyA9IGNv
bnRhaW5lcl9vZihodWNfZncsIHN0cnVjdCBpbnRlbF9odWMsIGZ3KTsKPiBAQCAtODgsNiArOTYs
MTAgQEAgc3RhdGljIHZvaWQgaHVjX2Z3X3NlbGVjdChzdHJ1Y3QgaW50ZWxfdWNfZncgKmh1Y19m
dykKPiAgICAgICAgaHVjX2Z3LT5wYXRoID0gSTkxNV9HTEtfSFVDX1VDT0RFOwo+ICAgICAgICBo
dWNfZnctPm1ham9yX3Zlcl93YW50ZWQgPSBHTEtfSFVDX0ZXX01BSk9SOwo+ICAgICAgICBodWNf
ZnctPm1pbm9yX3Zlcl93YW50ZWQgPSBHTEtfSFVDX0ZXX01JTk9SOwo+ICsgICAgfSBlbHNlIGlm
IChJU19JQ0VMQUtFKGRldl9wcml2KSkgewo+ICsgICAgICAgIGh1Y19mdy0+cGF0aCA9IEk5MTVf
SUNMX0hVQ19VQ09ERTsKPiArICAgICAgICBodWNfZnctPm1ham9yX3Zlcl93YW50ZWQgPSBJQ0xf
SFVDX0ZXX01BSk9SOwo+ICsgICAgICAgIGh1Y19mdy0+bWlub3JfdmVyX3dhbnRlZCA9IElDTF9I
VUNfRldfTUlOT1I7Cj4gICAgfQo+IH0KPiAKPiAtLSAKPiAyLjE5LjIKPiAKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
