Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 435ED4C536
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 04:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08F7B6E4A0;
	Thu, 20 Jun 2019 02:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 603C56E4A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 02:09:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 19:09:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,395,1557212400"; d="scan'208";a="311522109"
Received: from kmsmsx152.gar.corp.intel.com ([172.21.73.87])
 by orsmga004.jf.intel.com with ESMTP; 19 Jun 2019 19:09:02 -0700
Received: from pgsmsx111.gar.corp.intel.com ([169.254.2.124]) by
 KMSMSX152.gar.corp.intel.com ([169.254.11.7]) with mapi id 14.03.0439.000;
 Thu, 20 Jun 2019 10:09:01 +0800
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Check backlight type while doing eDP
 backlight initializaiton
Thread-Index: AQHVJndCOvbeiAVkvkGiKjTxIKm+HqaiMw6AgAGToxA=
Date: Thu, 20 Jun 2019 02:09:01 +0000
Message-ID: <D42A2A322A1FCA4089E30E9A9BA36AC65D61A9DD@PGSMSX111.gar.corp.intel.com>
References: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
 <1560933806-5184-1-git-send-email-shawn.c.lee@intel.com>
 <874l4lnca2.fsf@intel.com>
In-Reply-To: <874l4lnca2.fsf@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYmM4MjQ1NWUtYTNhZi00ZmYwLWIwOWEtMzYxMGU0ZDliY2JlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiSzJ2Zk94SDhramFLTExlcm9BY1BmYmx1aU0zbjROb1wvMTl6eVJsK2k1S1JNS2VrS1RRSmRsYVErOGQ4TDRLZ0YifQ==
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Check backlight type while
 doing eDP backlight initializaiton
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
Reply-To: "1560933806-5184-1-git-send-email-shawn.c.lee@intel.com"
 <1560933806-5184-1-git-send-email-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIFdlZCwgMTkgSnVuIDIwMTksIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
IHdyb3RlOgo+T24gV2VkLCAxOSBKdW4gMjAxOSwgTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGlu
dGVsLmNvbT4gd3JvdGU6Cj4+IElmIExGUCBiYWNrbGlnaHQgdHlwZSBzZXR0aW5nIGZyb20gVkJU
IHdhcyAiVkVTQSBlRFAgQVVYIEludGVyZmFjZSIuCj4+IERyaXZlciBzaG91bGQgY2hlY2sgcGFu
ZWwgY2FwYWJpbGl0eSBhbmQgdHJ5IHRvIGluaXRpYWxpemUgYXV4IGJhY2tsaWdodC4KPj4gTm8g
bWF0dGVyIGk5MTVfbW9kcGFyYW1zLmVuYWJsZV9kcGNkX2JhY2tsaWdodCB3YXMgZW5hYmxlZCBv
ciBub3QuCj4+Cj4+IHYyOiBhY2Nlc3MgZGV2X3ByaXYtPnZidC5iYWNrbGlnaHQudHlwZSBkaXJl
Y3RseSBhbmQgcmVtb3ZlIHVudXNlZCBmdW5jdGlvbi4KPj4KPj4gQ2M6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgo+PiBDYzogSm9zZSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KPj4gQ2M6IENvb3BlciBDaGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNv
bT4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNv
bT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCAg
ICAgICAgICAgICB8IDEgKwo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9hdXhfYmFja2xpZ2h0LmMgfCA0ICsrKy0KPj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuaCAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuaAo+PiBpbmRleCA0ZTQyY2ZhZjYxYTcuLjBiN2JlNjM4OWEwNyAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgKPj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgKPj4gQEAgLTQy
LDYgKzQyLDcgQEAgZW51bSBpbnRlbF9iYWNrbGlnaHRfdHlwZSB7Cj4+ICAJSU5URUxfQkFDS0xJ
R0hUX0RJU1BMQVlfRERJLAo+PiAgCUlOVEVMX0JBQ0tMSUdIVF9EU0lfRENTLAo+PiAgCUlOVEVM
X0JBQ0tMSUdIVF9QQU5FTF9EUklWRVJfSU5URVJGQUNFLAo+PiArCUlOVEVMX0JBQ0tMSUdIVF9W
RVNBX0VEUF9BVVhfSU5URVJGQUNFLAo+PiAgfTsKPj4gIAo+PiAgc3RydWN0IGVkcF9wb3dlcl9z
ZXEgewo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9hdXhfYmFja2xpZ2h0LmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9hdXhfYmFja2xpZ2h0LmMKPj4gaW5kZXggN2RlZDk1YTMzNGRiLi5kYjdjN2I5ZjliNTYg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4
X2JhY2tsaWdodC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfYXV4X2JhY2tsaWdodC5jCj4+IEBAIC0yNjQsOCArMjY0LDEwIEBAIGludGVsX2RwX2F1eF9k
aXNwbGF5X2NvbnRyb2xfY2FwYWJsZShzdHJ1Y3QgCj4+IGludGVsX2Nvbm5lY3RvciAqY29ubmVj
dG9yKSAgaW50IAo+PiBpbnRlbF9kcF9hdXhfaW5pdF9iYWNrbGlnaHRfZnVuY3Moc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yKSAgewo+PiAgCXN0cnVjdCBpbnRlbF9wYW5l
bCAqcGFuZWwgPSAmaW50ZWxfY29ubmVjdG9yLT5wYW5lbDsKPj4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSAKPj4gK3RvX2k5MTUoaW50ZWxfY29ubmVjdG9yLT5iYXNlLmRl
dik7Cj4+ICAKPj4gLQlpZiAoIWk5MTVfbW9kcGFyYW1zLmVuYWJsZV9kcGNkX2JhY2tsaWdodCkK
Pj4gKwlpZiAoIWk5MTVfbW9kcGFyYW1zLmVuYWJsZV9kcGNkX2JhY2tsaWdodCAmJgo+PiArCSAg
ICAoZGV2X3ByaXYtPnZidC5iYWNrbGlnaHQudHlwZSAhPSAKPj4gK0lOVEVMX0JBQ0tMSUdIVF9W
RVNBX0VEUF9BVVhfSU5URVJGQUNFKSkKPj4gIAkJcmV0dXJuIC1FTk9ERVY7Cj4KPlRoZXJlIHdh
cyBhbHNvIHRoaXMgcGFydCBpbiB0aGUgdjEgcmV2aWV3Ogo+Cj4gICAgVGhlIHVzdWFsIHRoaW5n
IHRvIGRvIGlzIHRvIHNldCBpOTE1LmVuYWJsZV9kcGNkX2JhY2tsaWdodCBpbml0aWFsIHZhbHVl
Cj4gICAgdG8gLTEgKGkuZS4gbWFrZSBpdCBhbiBpbnQpLCBhbmQgd2l0aCB0aGF0IGRlZmF1bHQg
dmFsdWUgcmVzcGVjdAo+ICAgIFZCVC4gT3RoZXJ3aXNlLCByZXNwZWN0IHRoZSB2YWx1ZSBvZiBl
bmFibGVfZHBjZF9iYWNrbGlnaHQuCj4KPgo+QlIsCj5KYW5pLgoKRG8geW91IG1lYW4gd2Ugc2hv
dWxkIGRvIGZvbGxvd2luZz8KMS4gQ2hhbmdlIGk5MTUuZW5hYmxlX2RwY2RfYmFja2xpZ2h0IHR5
cGUgZnJvbSBib29sIHRvIGludC4KMi4gR2l2ZSBkZWZhdWx0IHZhbHVlIGFzIC0xIGZvciBlbmFi
bGVfZHBjZF9iYWNrbGlnaHQgaW4gaTkxNV9wYXJhbS5oLgozLiBBZGQgYSBqdWRnZW1lbnQgdG8g
Y2hlY2sgTEZQIGJhY2tsaWdodCB0eXBlIHdhcyBhdXggaW50ZXJmYWNlIG9yIG5vdC4KICAgQmV0
d2VlbiBpZiAoIWk5MTVfbW9kcGFyYW1zLmVuYWJsZV9kcGNkX2JhY2tsaWdodCkgYW5kIAogICBp
ZiAoIWludGVsX2RwX2F1eF9kaXNwbGF5X2NvbnRyb2xfY2FwYWJsZShpbnRlbF9jb25uZWN0b3Ip
KS4KCkJlc3QgcmVnYXJkcywKU2hhd24KCj4+ICAKPj4gIAlpZiAoIWludGVsX2RwX2F1eF9kaXNw
bGF5X2NvbnRyb2xfY2FwYWJsZShpbnRlbF9jb25uZWN0b3IpKQo+Cj4tLQo+SmFuaSBOaWt1bGEs
IEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
