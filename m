Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCF5A710A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 18:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91CA589402;
	Tue,  3 Sep 2019 16:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE3B8951E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 16:52:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 09:52:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="194409643"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by orsmga002.jf.intel.com with ESMTP; 03 Sep 2019 09:52:48 -0700
Date: Tue, 3 Sep 2019 09:52:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190903165248.GG13677@mdroper-desk.amr.corp.intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
 <20190829092554.32198-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829092554.32198-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH v3 2/7] drm/i915/tgl: Access the right
 register when handling PSR interruptions
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDI6MjU6NDlBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IAo+IEZvciBvbGRlciBnZW5zIFBTUiBJSVIgYW5kIElNUiBoYXZlIGZpeGVkIGFkZHJl
c3Nlcy4gRnJvbSBUR0wgb253YXJkcyB0aG9zZQo+IHJlZ2lzdGVycyBtb3ZlZCB0byBlYWNoIHRy
YW5zY29kZXIgb2Zmc2V0LiBUaGUgYml0cyBmb3IgdGhlIHJlZ2lzdGVycwo+IGFyZSBkZWZpbmVk
IHdpdGhvdXQgYW4gb2Zmc2V0IHBlciB0cmFuc2NvZGVyIGFzIHJpZ2h0IG5vdyB3ZSBoYXZlIG9u
ZQo+IHJlZ2lzdGVyIHBlciB0cmFuc2NvZGVyLiBTbyBhZGQgYSBmYWtlICJ0cmFuc19zaGlmdCIg
d2hlbiBjYWxjdWxhdGluZwo+IHRoZSBiaXRzIG9mZnNldHM6IGl0IHdpbGwgYmUgMCBmb3IgZ2Vu
MTIrIGFuZCBwc3IudHJhbnNjb2RlciBvdGhlcndpc2UuCj4gCj4gdjIgKEx1Y2FzKTogY2hhbmdl
IHRoZSBpbXBsZW1lbnRhdGlvbiB0byB1c2UgdHJhbnNfc2hpZnQgaW5zdGVhZCBvZgo+IGdldHRp
bmcgZWFjaCBiaXQgdmFsdWUgd2l0aCBhIGRpZmZlcmVudCBtYWNybwo+IAo+IENjOiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5h
a2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2
aUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgfCA2MCArKysrKysrKysrKysrKysrKystLS0tLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICB8IDUxICsrKysrKysrKysrKysrKysrLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAxMCArKystCj4g
IDMgZmlsZXMgY2hhbmdlZCwgOTkgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gaW5kZXggNmYyYmY1MGI2
ZDgwLi5lMDFjODk3ZWM5ZjkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMKPiBAQCAtOTAsMTcgKzkwLDMyIEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfZW5h
YmxlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAo+ICBzdGF0aWMgdm9p
ZCBwc3JfaXJxX2NvbnRyb2woc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICB7
Cj4gLQllbnVtIHRyYW5zY29kZXIgdHJhbnMgPSBkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXI7Cj4g
LQl1MzIgdmFsLCBtYXNrOwo+ICsJZW51bSB0cmFuc2NvZGVyIHRyYW5zX3NoaWZ0Owo+ICsJdTMy
IG1hc2ssIHZhbDsKPiArCWk5MTVfcmVnX3QgaW1yX3JlZzsKPiAgCj4gLQltYXNrID0gRURQX1BT
Ul9FUlJPUih0cmFucyk7Cj4gKwkvKgo+ICsJICogZ2VuMTIrIGhhcyByZWdpc3RlcnMgcmVsYXRp
dmUgdG8gdHJhbnNjb2RlciBhbmQgb25lIHBlciB0cmFuc2NvZGVyCj4gKwkgKiB1c2luZyB0aGUg
c2FtZSBiaXQgZGVmaW5pdGlvbjogaGFuZGxlIGl0IGFzIFRSQU5TQ09ERVJfRURQIHRvIGZvcmNl
Cj4gKwkgKiAwIHNoaWZ0IGluIGJpdCBkZWZpbml0aW9uCj4gKwkgKi8KPiArCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpID49IDEyKSB7Cj4gKwkJdHJhbnNfc2hpZnQgPSAwOwo+ICsJCWltcl9yZWcg
PSBUUkFOU19QU1JfSU1SKGRldl9wcml2LT5wc3IudHJhbnNjb2Rlcik7Cj4gKwl9IGVsc2Ugewo+
ICsJCXRyYW5zX3NoaWZ0ID0gZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyOwo+ICsJCWltcl9yZWcg
PSBFRFBfUFNSX0lNUjsKPiArCX0KPiArCj4gKwltYXNrID0gRURQX1BTUl9FUlJPUih0cmFuc19z
aGlmdCk7Cj4gIAlpZiAoZGV2X3ByaXYtPnBzci5kZWJ1ZyAmIEk5MTVfUFNSX0RFQlVHX0lSUSkK
PiAtCQltYXNrIHw9IEVEUF9QU1JfUE9TVF9FWElUKHRyYW5zKSB8IEVEUF9QU1JfUFJFX0VOVFJZ
KHRyYW5zKTsKPiArCQltYXNrIHw9IEVEUF9QU1JfUE9TVF9FWElUKHRyYW5zX3NoaWZ0KSB8Cj4g
KwkJCUVEUF9QU1JfUFJFX0VOVFJZKHRyYW5zX3NoaWZ0KTsKPiAgCj4gLQl2YWwgPSBJOTE1X1JF
QUQoRURQX1BTUl9JTVIpOwo+IC0JdmFsICY9IH5FRFBfUFNSX1RSQU5TX01BU0sodHJhbnMpOwo+
ICsJdmFsID0gSTkxNV9SRUFEKGltcl9yZWcpOwo+ICsJdmFsICY9IH5FRFBfUFNSX1RSQU5TX01B
U0sodHJhbnNfc2hpZnQpOwo+ICAJdmFsIHw9IH5tYXNrOwo+IC0JSTkxNV9XUklURShFRFBfUFNS
X0lNUiwgdmFsKTsKPiArCUk5MTVfV1JJVEUoaW1yX3JlZywgdmFsKTsKPiAgfQo+ICAKPiAgc3Rh
dGljIHZvaWQgcHNyX2V2ZW50X3ByaW50KHUzMiB2YWwsIGJvb2wgcHNyMl9lbmFibGVkKQo+IEBA
IC0xNDMsMTUgKzE1OCwyNSBAQCBzdGF0aWMgdm9pZCBwc3JfZXZlbnRfcHJpbnQodTMyIHZhbCwg
Ym9vbCBwc3IyX2VuYWJsZWQpCj4gIHZvaWQgaW50ZWxfcHNyX2lycV9oYW5kbGVyKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTMyIHBzcl9paXIpCj4gIHsKPiAgCWVudW0gdHJh
bnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGRldl9wcml2LT5wc3IudHJhbnNjb2RlcjsKPiArCWVu
dW0gdHJhbnNjb2RlciB0cmFuc19zaGlmdDsKPiArCWk5MTVfcmVnX3QgaW1yX3JlZzsKPiAgCWt0
aW1lX3QgdGltZV9ucyA9ICBrdGltZV9nZXQoKTsKPiAgCj4gLQlpZiAocHNyX2lpciAmIEVEUF9Q
U1JfUFJFX0VOVFJZKGNwdV90cmFuc2NvZGVyKSkgewo+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpIHsKPiArCQl0cmFuc19zaGlmdCA9IDA7Cj4gKwkJaW1yX3JlZyA9IFRSQU5TX1BT
Ul9JTVIoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKTsKPiArCX0gZWxzZSB7Cj4gKwkJdHJhbnNf
c2hpZnQgPSBkZXZfcHJpdi0+cHNyLnRyYW5zY29kZXI7Cj4gKwkJaW1yX3JlZyA9IEVEUF9QU1Jf
SU1SOwo+ICsJfQo+ICsKPiArCWlmIChwc3JfaWlyICYgRURQX1BTUl9QUkVfRU5UUlkodHJhbnNf
c2hpZnQpKSB7Cj4gIAkJZGV2X3ByaXYtPnBzci5sYXN0X2VudHJ5X2F0dGVtcHQgPSB0aW1lX25z
Owo+ICAJCURSTV9ERUJVR19LTVMoIlt0cmFuc2NvZGVyICVzXSBQU1IgZW50cnkgYXR0ZW1wdCBp
biAyIHZibGFua3NcbiIsCj4gIAkJCSAgICAgIHRyYW5zY29kZXJfbmFtZShjcHVfdHJhbnNjb2Rl
cikpOwo+ICAJfQo+ICAKPiAtCWlmIChwc3JfaWlyICYgRURQX1BTUl9QT1NUX0VYSVQoY3B1X3Ry
YW5zY29kZXIpKSB7Cj4gKwlpZiAocHNyX2lpciAmIEVEUF9QU1JfUE9TVF9FWElUKHRyYW5zX3No
aWZ0KSkgewo+ICAJCWRldl9wcml2LT5wc3IubGFzdF9leGl0ID0gdGltZV9uczsKPiAgCQlEUk1f
REVCVUdfS01TKCJbdHJhbnNjb2RlciAlc10gUFNSIGV4aXQgY29tcGxldGVkXG4iLAo+ICAJCQkg
ICAgICB0cmFuc2NvZGVyX25hbWUoY3B1X3RyYW5zY29kZXIpKTsKPiBAQCAtMTY1LDcgKzE5MCw3
IEBAIHZvaWQgaW50ZWxfcHNyX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwgdTMyIHBzcl9paXIpCj4gIAkJfQo+ICAJfQo+ICAKPiAtCWlmIChwc3JfaWlyICYg
RURQX1BTUl9FUlJPUihjcHVfdHJhbnNjb2RlcikpIHsKPiArCWlmIChwc3JfaWlyICYgRURQX1BT
Ul9FUlJPUih0cmFuc19zaGlmdCkpIHsKPiAgCQl1MzIgdmFsOwo+ICAKPiAgCQlEUk1fV0FSTigi
W3RyYW5zY29kZXIgJXNdIFBTUiBhdXggZXJyb3JcbiIsCj4gQEAgLTE4MSw5ICsyMDYsOSBAQCB2
b2lkIGludGVsX3Bzcl9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIHUzMiBwc3JfaWlyKQo+ICAJCSAqIGFnYWluIHNvIHdlIGRvbid0IGNhcmUgYWJvdXQgdW5t
YXNrIHRoZSBpbnRlcnJ1cHRpb24KPiAgCQkgKiBvciB1bnNldCBpcnFfYXV4X2Vycm9yLgo+ICAJ
CSAqLwo+IC0JCXZhbCA9IEk5MTVfUkVBRChFRFBfUFNSX0lNUik7Cj4gLQkJdmFsIHw9IEVEUF9Q
U1JfRVJST1IoY3B1X3RyYW5zY29kZXIpOwo+IC0JCUk5MTVfV1JJVEUoRURQX1BTUl9JTVIsIHZh
bCk7Cj4gKwkJdmFsID0gSTkxNV9SRUFEKGltcl9yZWcpOwo+ICsJCXZhbCB8PSBFRFBfUFNSX0VS
Uk9SKHRyYW5zX3NoaWZ0KTsKPiArCQlJOTE1X1dSSVRFKGltcl9yZWcsIHZhbCk7Cj4gIAo+ICAJ
CXNjaGVkdWxlX3dvcmsoJmRldl9wcml2LT5wc3Iud29yayk7Cj4gIAl9Cj4gQEAgLTczMCw4ICs3
NTUsMTMgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJICogZmlyc3QgdGltZSB0aGF0IFBTUiBIVyB0cmll
cyB0byBhY3RpdmF0ZSBzbyBsZXRzIGtlZXAgUFNSIGRpc2FibGVkCj4gIAkgKiB0byBhdm9pZCBh
bnkgcmVuZGVyaW5nIHByb2JsZW1zLgo+ICAJICovCj4gLQl2YWwgPSBJOTE1X1JFQUQoRURQX1BT
Ul9JSVIpOwo+IC0JdmFsICY9IEVEUF9QU1JfRVJST1IoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVy
KTsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKSB7Cj4gKwkJdmFsID0gSTkxNV9S
RUFEKFRSQU5TX1BTUl9JSVIoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKSk7Cj4gKwkJdmFsICY9
IEVEUF9QU1JfRVJST1IoMCk7Cj4gKwl9IGVsc2Ugewo+ICsJCXZhbCA9IEk5MTVfUkVBRChFRFBf
UFNSX0lJUik7Cj4gKwkJdmFsICY9IEVEUF9QU1JfRVJST1IoZGV2X3ByaXYtPnBzci50cmFuc2Nv
ZGVyKTsKPiArCX0KPiAgCWlmICh2YWwpIHsKPiAgCQlkZXZfcHJpdi0+cHNyLnNpbmtfbm90X3Jl
bGlhYmxlID0gdHJ1ZTsKPiAgCQlEUk1fREVCVUdfS01TKCJQU1IgaW50ZXJydXB0aW9uIGVycm9y
IHNldCwgbm90IGVuYWJsaW5nIFBTUlxuIik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gaW5k
ZXggM2YxYjZlZTE1N2JhLi43M2YxYmQ2MGJjNjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMKPiBAQCAtMjY1NiwxMSArMjY1NiwyMSBAQCBnZW44X2RlX21pc2NfaXJxX2hhbmRsZXIoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgaWlyKQo+ICAJfQo+ICAKPiAgCWlm
IChpaXIgJiBHRU44X0RFX0VEUF9QU1IpIHsKPiAtCQl1MzIgcHNyX2lpciA9IEk5MTVfUkVBRChF
RFBfUFNSX0lJUik7Cj4gKwkJdTMyIHBzcl9paXI7Cj4gKwkJaTkxNV9yZWdfdCBpaXJfcmVnOwo+
ICsKPiArCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPiArCQkJaWlyX3JlZyA9IFRS
QU5TX1BTUl9JSVIoZGV2X3ByaXYtPnBzci50cmFuc2NvZGVyKTsKPiArCQllbHNlCj4gKwkJCWlp
cl9yZWcgPSBFRFBfUFNSX0lJUjsKPiArCj4gKwkJcHNyX2lpciA9IEk5MTVfUkVBRChpaXJfcmVn
KTsKPiArCQlJOTE1X1dSSVRFKGlpcl9yZWcsIHBzcl9paXIpOwo+ICsKPiArCQlpZiAocHNyX2lp
cikKPiArCQkJZm91bmQgPSB0cnVlOwo+ICAKPiAgCQlpbnRlbF9wc3JfaXJxX2hhbmRsZXIoZGV2
X3ByaXYsIHBzcl9paXIpOwo+IC0JCUk5MTVfV1JJVEUoRURQX1BTUl9JSVIsIHBzcl9paXIpOwo+
IC0JCWZvdW5kID0gdHJ1ZTsKPiAgCX0KPiAgCj4gIAlpZiAoIWZvdW5kKQo+IEBAIC0zMjgwLDgg
KzMyOTAsMjMgQEAgc3RhdGljIHZvaWQgZ2VuMTFfaXJxX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKPiAgCj4gIAlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBHRU4x
MV9ESVNQTEFZX0lOVF9DVEwsIDApOwo+ICAKPiAtCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUs
IEVEUF9QU1JfSU1SLCAweGZmZmZmZmZmKTsKPiAtCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUs
IEVEUF9QU1JfSUlSLCAweGZmZmZmZmZmKTsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDEyKSB7Cj4gKwkJZW51bSB0cmFuc2NvZGVyIHRyYW5zOwo+ICsKPiArCQlmb3IgKHRyYW5zID0g
VFJBTlNDT0RFUl9BOyB0cmFucyA8PSBUUkFOU0NPREVSX0Q7IHRyYW5zKyspIHsKPiArCQkJZW51
bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW47Cj4gKwo+ICsJCQlkb21haW4gPSBQ
T1dFUl9ET01BSU5fVFJBTlNDT0RFUih0cmFucyk7Cj4gKwkJCWlmICghaW50ZWxfZGlzcGxheV9w
b3dlcl9pc19lbmFibGVkKGRldl9wcml2LCBkb21haW4pKQo+ICsJCQkJY29udGludWU7Cj4gKwo+
ICsJCQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCBUUkFOU19QU1JfSU1SKHRyYW5zKSwgMHhm
ZmZmZmZmZik7Cj4gKwkJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIFRSQU5TX1BTUl9JSVIo
dHJhbnMpLCAweGZmZmZmZmZmKTsKPiArCQl9Cj4gKwl9IGVsc2Ugewo+ICsJCWludGVsX3VuY29y
ZV93cml0ZSh1bmNvcmUsIEVEUF9QU1JfSU1SLCAweGZmZmZmZmZmKTsKPiArCQlpbnRlbF91bmNv
cmVfd3JpdGUodW5jb3JlLCBFRFBfUFNSX0lJUiwgMHhmZmZmZmZmZik7Cj4gKwl9Cj4gIAo+ICAJ
Zm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcGlwZSkKPiAgCQlpZiAoaW50ZWxfZGlzcGxheV9wb3dl
cl9pc19lbmFibGVkKGRldl9wcml2LAo+IEBAIC0zNzk0LDcgKzM4MTksMjEgQEAgc3RhdGljIHZv
aWQgZ2VuOF9kZV9pcnFfcG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQo+ICAJZWxzZSBpZiAoSVNfQlJPQURXRUxMKGRldl9wcml2KSkKPiAgCQlkZV9wb3J0X2Vu
YWJsZXMgfD0gR0VOOF9QT1JUX0RQX0FfSE9UUExVRzsKPiAgCj4gLQlnZW4zX2Fzc2VydF9paXJf
aXNfemVybyh1bmNvcmUsIEVEUF9QU1JfSUlSKTsKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEyKSB7Cj4gKwkJZW51bSB0cmFuc2NvZGVyIHRyYW5zOwo+ICsKPiArCQlmb3IgKHRyYW5z
ID0gVFJBTlNDT0RFUl9BOyB0cmFucyA8PSBUUkFOU0NPREVSX0Q7IHRyYW5zKyspIHsKPiArCQkJ
ZW51bSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW47Cj4gKwo+ICsJCQlkb21haW4g
PSBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUih0cmFucyk7Cj4gKwkJCWlmICghaW50ZWxfZGlzcGxh
eV9wb3dlcl9pc19lbmFibGVkKGRldl9wcml2LCBkb21haW4pKQo+ICsJCQkJY29udGludWU7Cj4g
Kwo+ICsJCQlnZW4zX2Fzc2VydF9paXJfaXNfemVybyh1bmNvcmUsIFRSQU5TX1BTUl9JSVIodHJh
bnMpKTsKPiArCQl9Cj4gKwl9IGVsc2Ugewo+ICsJCWdlbjNfYXNzZXJ0X2lpcl9pc196ZXJvKHVu
Y29yZSwgRURQX1BTUl9JSVIpOwo+ICsJfQo+ICAKPiAgCWZvcl9lYWNoX3BpcGUoZGV2X3ByaXYs
IHBpcGUpIHsKPiAgCQlkZXZfcHJpdi0+ZGVfaXJxX21hc2tbcGlwZV0gPSB+ZGVfcGlwZV9tYXNr
ZWQ7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggNmU3ZGI5YzY1OTgxLi4zM2Q5ZDE0
MWVlOGYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtNDIyMiw5ICs0MjIyLDE3
IEBAIGVudW0gewo+ICAjZGVmaW5lICAgRURQX1BTUl9UUDFfVElNRV8wdXMJCQkoMyA8PCA0KQo+
ICAjZGVmaW5lICAgRURQX1BTUl9JRExFX0ZSQU1FX1NISUZUCQkwCj4gIAo+IC0vKiBCc3BlYyBj
bGFpbXMgdGhvc2UgYXJlbid0IHNoaWZ0ZWQgYnV0IHN0YXkgYXQgMHg2NDgwMCAqLwo+ICsvKgo+
ICsgKiBVbnRpbCBUR0wsIEJzcGVjIHNheXMgSU1SL0lJUiBhcmUgZml4ZWQgYXQgMHg2NDh4eC4g
T24gVEdMKyB0aG9zZSByZWdpc3RlcnMKClRoZSB3YXkgdGhlc2UgY29tbWVudHMgYXJlIHdyaXR0
ZW4gKGJvdGggb2xkIGFuZCBuZXcpIG1ha2VzIGl0IHNvdW5kCmxpa2Ugd2UgZG9uJ3QgY29tcGxl
dGVseSB0cnVzdCB0aGUgYnNwZWMgZm9yIHNvbWUgcmVhc29uLiAgSSdkIGp1c3QgZHJvcAp0aGUg
bWVudGlvbiBvZiB0aGUgYnNwZWMgYW5kIHNheSAiVW50aWwgVEdMLCBJTVIvSUlSIGFyZSBmaXhl
ZC4uLiIKClRoZSBwYXRjaCBpdHNlbGYgbG9va3MgY29ycmVjdCwgc28KClJldmlld2VkLWJ5OiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoKPiArICogYXJlIHJlbGF0aXZl
IHRvIHRyYW5zY29kZXIgYW5kIGJpdHMgZGVmaW5lZCBmb3IgZWFjaCBvbmUgYXMKPiArICogaWYg
dXNpbmcgbm8gc2hpZnQgKGkuZS4gYXMgaWYgaXQgd2FzIGZvciBUUkFOU0NPREVSX0VEUCkKPiAr
ICovCj4gICNkZWZpbmUgRURQX1BTUl9JTVIJCQkJX01NSU8oMHg2NDgzNCkKPiAgI2RlZmluZSBF
RFBfUFNSX0lJUgkJCQlfTU1JTygweDY0ODM4KQo+ICsjZGVmaW5lIF9QU1JfSU1SX0EJCQkJMHg2
MDgxNAo+ICsjZGVmaW5lIF9QU1JfSUlSX0EJCQkJMHg2MDgxOAo+ICsjZGVmaW5lIFRSQU5TX1BT
Ul9JTVIodHJhbikJCQlfTU1JT19UUkFOUzIodHJhbiwgX1BTUl9JTVJfQSkKPiArI2RlZmluZSBU
UkFOU19QU1JfSUlSKHRyYW4pCQkJX01NSU9fVFJBTlMyKHRyYW4sIF9QU1JfSUlSX0EpCj4gICNk
ZWZpbmUgICBfRURQX1BTUl9UUkFOU19TSElGVCh0cmFucykJCSgodHJhbnMpID09IFRSQU5TQ09E
RVJfRURQID8gXAo+ICAJCQkJCQkgMCA6ICgodHJhbnMpIC0gVFJBTlNDT0RFUl9BICsgMSkgKiA4
KQo+ICAjZGVmaW5lICAgRURQX1BTUl9UUkFOU19NQVNLKHRyYW5zKQkJKDB4NyA8PCBfRURQX1BT
Ul9UUkFOU19TSElGVCh0cmFucykpCj4gLS0gCj4gMi4yMy4wCj4gCgotLSAKTWF0dCBSb3BlcgpH
cmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVtZW50Cklu
dGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
