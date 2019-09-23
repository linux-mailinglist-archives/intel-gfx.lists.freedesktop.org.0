Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 519C6BB891
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 17:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91BBE6E95F;
	Mon, 23 Sep 2019 15:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D12CF89CA1
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 15:52:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 08:52:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,540,1559545200"; d="scan'208";a="179170409"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga007.jf.intel.com with ESMTP; 23 Sep 2019 08:52:02 -0700
Date: Mon, 23 Sep 2019 08:53:29 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190923155328.GA17911@intel.com>
References: <20190920163814.GD1208@intel.com>
 <20190923125252.25913-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923125252.25913-1-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix dsc bpp calculations, v3.
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMDI6NTI6NTJQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gVGhlcmUgd2FzIGEgaW50ZWdlciB3cmFwYXJvdW5kIHdoZW4gbW9kZV9jbG9j
ayBiZWNhbWUgdG9vIGhpZ2gsCj4gYW5kIHdlIGRpZG4ndCBjb3JyZWN0IGZvciB0aGUgRkVDIG92
ZXJoZWFkIGZhY3RvciB3aGVuIGRpdmlkaW5nLAo+IHdpdGggdGhlIGNhbGN1bGF0aW9ucyBicmVh
a2luZyBhdCBIQlIzLgo+IAo+IEFzIGEgcmVzdWx0IG91ciBjYWxjdWxhdGVkIGJwcCB3YXMgd2F5
IHRvbyBoaWdoLCBhbmQgdGhlIGxpbmsgd2lkdGgKPiBsaW1pdGF0aW9uIG5ldmVyIGNhbWUgaW50
byBlZmZlY3QuCj4gCj4gUHJpbnQgb3V0IHRoZSByZXN1bHRpbmcgYnBwIGNhbGN1bHVsYXRpb25z
IGFzIGEgc2FuaXR5IGNoZWNrLCBqdXN0Cj4gaW4gY2FzZSB3ZSBldmVyIGhhdmUgdG8gZGVidWcg
aXQgbGF0ZXIgb24gYWdhaW4uCj4gCj4gV2UgYWxzbyB1c2VkIHRoZSB3cm9uZyBmYWN0b3IgZm9y
IEZFQy4gV2hpbGUgYnNwZWMgbWVudGlvbnMgMi40JSwKPiBhbGwgdGhlIGNhbGN1bGF0aW9ucyB1
c2UgMS8wLjk3MjI2MSwgYW5kIHRoZSBzYW1lIHJhdGlvIHNob3VsZCBiZQo+IGFwcGxpZWQgdG8g
ZGF0YSBNL04gYXMgd2VsbCwgc28gdXNlIGl0IHRoZXJlIHdoZW4gRkVDIGlzIGVuYWJsZWQuCj4g
Cj4gTWFrZSBzdXJlIHdlIGRvbid0IGJyZWFrIGh3IHJlYWRvdXQsIGFuZCByZWFkIG91dCBGRUMg
ZW5hYmxlIHN0YXRlCj4gYW5kIGNvcnJlY3QgdGhlIERESSBjbG9jayByZWFkb3V0IGZvciB0aGUg
bmV3IHZhbHVlcy4KPiAKPiBUaGlzIGZpeGVzIHRoZSBGSUZPIHVuZGVycnVuIHdlIGFyZSBzZWVp
bmcgd2l0aCBGRUMgZW5hYmxlZC4KPiAKPiBDaGFuZ2VzIHNpbmNlIHYyOgo+IC0gSGFuZGxlIGZl
Y19lbmFibGUgaW4gaW50ZWxfbGlua19jb21wdXRlX21fbiwgc28gb25seSBkYXRhIE0vTiBpcyBh
ZGp1c3RlZC4gKFZpbGxlKQo+IC0gRml4IGluaXRpYWwgaGFyZHdhcmUgcmVhZG91dCBmb3IgRkVD
LiAoVmlsbGUpCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4u
bGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBGaXhlczogZDkyMThjOGY2Y2Y0ICgiZHJtL2k5
MTUvZHA6IEFkZCBoZWxwZXJzIGZvciBDb21wcmVzc2VkIEJQUCBhbmQgU2xpY2UgQ291bnQgZm9y
IERTQyIpCj4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjArCj4gQ2M6IE1hbmFz
aSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gLS0tCj4gVGhhbmtzLCB0aGF0
IGZpeGVkIHRoZSBGSUZPIHVuZGVycnVuLCBtYWtpbmcgdGhlIGRpc2FibGVtZW50IHBhdGNoIG9i
c29sZXRlLgo+IEJpZ2pvaW5lciBpcyBub3cgY29tcGxldGVseSB3b3JraW5nIGFzIGludGVuZGVk
LiA6KQoKVGhhdHMgZ3JlYXQsIHNvIHRoZSBGRUMgYWRqdXN0bWVudHMgaW4gdGhlIGNvbXB1dGUg
bV9uIHdhcyB0aGUgdGhpbmcgdGhhdCB3YXMgbWlzaW5nCmJlY2F1c2Ugb2Ygd2hpY2ggd2Ugd2Vy
ZSBzZWVpbmcgdGhlIHVuZGVycnVucz8KCkkgdGhpbmsgQW51c2hhIG1pc3NlZCBpdCB3aGVuIHNo
ZSBpbXBsZW1lbnRlZCBGRUMgYWxvbmcgd2l0aCBEU0MgYmVjYXVzZSBiYWNrIHRoZW4Kd2Ugb25s
eSBoYWQgZURQIERTQyBwYW5lbHMgd2hlcmUgd2UgZG8gbm8gZW5hYmxlIEZFQyBhbmQgZGlkbnQg
aGF2ZSBhbnkgRkVDIERTQyBEUCBwYW5lbHMuCgpUaGFua3MgZm9yIHRoYSBjYXRjaCBhbmQgdGhl
IGZpeC4KClJlZ2FyZHMKTWFuYXNpCgo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jICAgICB8ICAyMSArKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8ICAxMyArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaCB8ICAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgICAgICB8IDE5MSArKysrKysrKysrLS0tLS0tLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaCAgICAgIHwgICA3ICstCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgIHwgICAyICstCj4gIDYgZmlsZXMgY2hh
bmdlZCwgMTM3IGluc2VydGlvbnMoKyksIDk5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IGluZGV4IDBjMGRhOWY2YzJlOC4uM2U3N2Iz
MGQ5MWQ1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4g
QEAgLTE0NzksNiArMTQ3OSwxMCBAQCBzdGF0aWMgdm9pZCBkZGlfZG90Y2xvY2tfZ2V0KHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKPiAgCWlmIChwaXBlX2NvbmZpZy0+cGl4
ZWxfbXVsdGlwbGllcikKPiAgCQlkb3RjbG9jayAvPSBwaXBlX2NvbmZpZy0+cGl4ZWxfbXVsdGlw
bGllcjsKPiAgCj4gKwkvKiBmZWMgYWRkcyBvdmVyaGVhZCB0byB0aGUgZGF0YSBNL04gdmFsdWVz
LCBjb3JyZWN0IGZvciBpdCAqLwo+ICsJaWYgKHBpcGVfY29uZmlnLT5mZWNfZW5hYmxlKQo+ICsJ
CWRvdGNsb2NrID0gaW50ZWxfZHBfZmVjX3RvX21vZGVfY2xvY2soZG90Y2xvY2spOwo+ICsKPiAg
CXBpcGVfY29uZmlnLT5iYXNlLmFkanVzdGVkX21vZGUuY3J0Y19jbG9jayA9IGRvdGNsb2NrOwo+
ICB9Cj4gIAo+IEBAIC00MDQ1LDYgKzQwNDksMjMgQEAgdm9pZCBpbnRlbF9kZGlfZ2V0X2NvbmZp
ZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQlwaXBlX2NvbmZpZy0+bGFuZV9j
b3VudCA9Cj4gIAkJCSgodGVtcCAmIERESV9QT1JUX1dJRFRIX01BU0spID4+IERESV9QT1JUX1dJ
RFRIX1NISUZUKSArIDE7Cj4gIAkJaW50ZWxfZHBfZ2V0X21fbihpbnRlbF9jcnRjLCBwaXBlX2Nv
bmZpZyk7Cj4gKwo+ICsJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSB7Cj4gKwkJCWk5
MTVfcmVnX3QgZHBfdHBfY3RsOwo+ICsKPiArCQkJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQo+
ICsJCQkJZHBfdHBfY3RsID0gRFBfVFBfQ1RMKHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2Rlcik7
Cj4gKwkJCWVsc2UKPiArCQkJCWRwX3RwX2N0bCA9IFRHTF9EUF9UUF9DVEwocGlwZV9jb25maWct
PmNwdV90cmFuc2NvZGVyKTsKPiArCj4gKwkJCXBpcGVfY29uZmlnLT5mZWNfZW5hYmxlID0KPiAr
CQkJCUk5MTVfUkVBRChkcF90cF9jdGwpICYgRFBfVFBfQ1RMX0ZFQ19FTkFCTEU7Cj4gKwo+ICsJ
CQlEUk1fREVCVUdfS01TKCJbRU5DT0RFUjolZDolc10gRmVjIHN0YXR1czogJXVcbiIsCj4gKwkJ
CQkgICAgICBlbmNvZGVyLT5iYXNlLmJhc2UuaWQsIGVuY29kZXItPmJhc2UubmFtZSwKPiArCQkJ
CSAgICAgIHBpcGVfY29uZmlnLT5mZWNfZW5hYmxlKTsKPiArCQl9Cj4gKwo+ICAJCWJyZWFrOwo+
ICAJY2FzZSBUUkFOU19ERElfTU9ERV9TRUxFQ1RfRFBfTVNUOgo+ICAJCXBpcGVfY29uZmlnLT5v
dXRwdXRfdHlwZXMgfD0gQklUKElOVEVMX09VVFBVVF9EUF9NU1QpOwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggNWVjZjU0MjcwMTgxLi4z
MTY5OGE1Nzc3M2YgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+IEBAIC03MjkxLDcgKzcyOTEsNyBAQCBzdGF0aWMgaW50IGlyb25sYWtlX2Zk
aV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YywKPiAgCXBpcGVf
Y29uZmlnLT5mZGlfbGFuZXMgPSBsYW5lOwo+ICAKPiAgCWludGVsX2xpbmtfY29tcHV0ZV9tX24o
cGlwZV9jb25maWctPnBpcGVfYnBwLCBsYW5lLCBmZGlfZG90Y2xvY2ssCj4gLQkJCSAgICAgICBs
aW5rX2J3LCAmcGlwZV9jb25maWctPmZkaV9tX24sIGZhbHNlKTsKPiArCQkJICAgICAgIGxpbmtf
YncsICZwaXBlX2NvbmZpZy0+ZmRpX21fbiwgZmFsc2UsIGZhbHNlKTsKPiAgCj4gIAlyZXQgPSBp
cm9ubGFrZV9jaGVja19mZGlfbGFuZXMoZGV2LCBpbnRlbF9jcnRjLT5waXBlLCBwaXBlX2NvbmZp
Zyk7Cj4gIAlpZiAocmV0ID09IC1FREVBRExLKQo+IEBAIC03NTM4LDExICs3NTM4LDE1IEBAIHZv
aWQKPiAgaW50ZWxfbGlua19jb21wdXRlX21fbih1MTYgYml0c19wZXJfcGl4ZWwsIGludCBubGFu
ZXMsCj4gIAkJICAgICAgIGludCBwaXhlbF9jbG9jaywgaW50IGxpbmtfY2xvY2ssCj4gIAkJICAg
ICAgIHN0cnVjdCBpbnRlbF9saW5rX21fbiAqbV9uLAo+IC0JCSAgICAgICBib29sIGNvbnN0YW50
X24pCj4gKwkJICAgICAgIGJvb2wgY29uc3RhbnRfbiwgYm9vbCBmZWNfZW5hYmxlKQo+ICB7Cj4g
LQltX24tPnR1ID0gNjQ7Cj4gKwl1MzIgZGF0YV9jbG9jayA9IGJpdHNfcGVyX3BpeGVsICogcGl4
ZWxfY2xvY2s7Cj4gKwo+ICsJaWYgKGZlY19lbmFibGUpCj4gKwkJZGF0YV9jbG9jayA9IGludGVs
X2RwX21vZGVfdG9fZmVjX2Nsb2NrKGRhdGFfY2xvY2spOwo+ICAKPiAtCWNvbXB1dGVfbV9uKGJp
dHNfcGVyX3BpeGVsICogcGl4ZWxfY2xvY2ssCj4gKwltX24tPnR1ID0gNjQ7Cj4gKwljb21wdXRl
X21fbihkYXRhX2Nsb2NrLAo+ICAJCSAgICBsaW5rX2Nsb2NrICogbmxhbmVzICogOCwKPiAgCQkg
ICAgJm1fbi0+Z21jaF9tLCAmbV9uLT5nbWNoX24sCj4gIAkJICAgIGNvbnN0YW50X24pOwo+IEBA
IC0xMjgzMiw2ICsxMjgzNiw3IEBAIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLAo+ICAJUElQRV9DT05GX0NIRUNL
X0JPT0woaGRtaV9zY3JhbWJsaW5nKTsKPiAgCVBJUEVfQ09ORl9DSEVDS19CT09MKGhkbWlfaGln
aF90bWRzX2Nsb2NrX3JhdGlvKTsKPiAgCVBJUEVfQ09ORl9DSEVDS19CT09MKGhhc19pbmZvZnJh
bWUpOwo+ICsJUElQRV9DT05GX0NIRUNLX0JPT0woZmVjX2VuYWJsZSk7Cj4gIAo+ICAJUElQRV9D
T05GX0NIRUNLX0JPT0xfSU5DT01QTEVURShoYXNfYXVkaW8pOwo+ICAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAo+IGluZGV4IDVjZWE2ZjhlMTA3YS4u
NGI5ZTE4ZTVhMjYzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmgKPiBAQCAtNDQzLDcgKzQ0Myw3IEBAIGVudW0gcGh5X2ZpYSB7Cj4gIHZvaWQg
aW50ZWxfbGlua19jb21wdXRlX21fbih1MTYgYnBwLCBpbnQgbmxhbmVzLAo+ICAJCQkgICAgaW50
IHBpeGVsX2Nsb2NrLCBpbnQgbGlua19jbG9jaywKPiAgCQkJICAgIHN0cnVjdCBpbnRlbF9saW5r
X21fbiAqbV9uLAo+IC0JCQkgICAgYm9vbCBjb25zdGFudF9uKTsKPiArCQkJICAgIGJvb2wgY29u
c3RhbnRfbiwgYm9vbCBmZWNfZW5hYmxlKTsKPiAgYm9vbCBpc19jY3NfbW9kaWZpZXIodTY0IG1v
ZGlmaWVyKTsKPiAgdm9pZCBscHRfZGlzYWJsZV9jbGtvdXRfZHAoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KTsKPiAgdTMyIGludGVsX3BsYW5lX2ZiX21heF9zdHJpZGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKPiBpbmRleCA4Mjk1NTlmOTc0NDAuLjJkM2Y0MTgzZjk5ZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBAQCAtNzYsOCArNzYsOCBAQAo+
ICAjZGVmaW5lIERQX0RTQ19NQVhfRU5DX1RIUk9VR0hQVVRfMAkJMzQwMDAwCj4gICNkZWZpbmUg
RFBfRFNDX01BWF9FTkNfVEhST1VHSFBVVF8xCQk0MDAwMDAKPiAgCj4gLS8qIERQIERTQyBGRUMg
T3ZlcmhlYWQgZmFjdG9yID0gKDEwMCAtIDIuNCkvMTAwICovCj4gLSNkZWZpbmUgRFBfRFNDX0ZF
Q19PVkVSSEVBRF9GQUNUT1IJCTk3Ngo+ICsvKiBEUCBEU0MgRkVDIE92ZXJoZWFkIGZhY3RvciA9
IDEvKDAuOTcyMjYxKSAqLwo+ICsjZGVmaW5lIERQX0RTQ19GRUNfT1ZFUkhFQURfRkFDVE9SCQk5
NzIyNjEKPiAgCj4gIC8qIENvbXBsaWFuY2UgdGVzdCBzdGF0dXMgYml0cyAgKi8KPiAgI2RlZmlu
ZSBJTlRFTF9EUF9SRVNPTFVUSU9OX1NISUZUX01BU0sJMAo+IEBAIC00OTIsNiArNDkyLDEwNCBA
QCBpbnQgaW50ZWxfZHBfZ2V0X2xpbmtfdHJhaW5fZmFsbGJhY2tfdmFsdWVzKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArdTMyIGludGVsX2RwX21v
ZGVfdG9fZmVjX2Nsb2NrKHUzMiBtb2RlX2Nsb2NrKQo+ICt7Cj4gKwlyZXR1cm4gZGl2X3U2NCht
dWxfdTMyX3UzMihtb2RlX2Nsb2NrLCAxMDAwMDAwVSksCj4gKwkJICAgICAgIERQX0RTQ19GRUNf
T1ZFUkhFQURfRkFDVE9SKTsKPiArfQo+ICsKPiArdTMyIGludGVsX2RwX2ZlY190b19tb2RlX2Ns
b2NrKHUzMiBmZWNfY2xvY2spCj4gK3sKPiArCXJldHVybiBkaXZfdTY0KG11bF91MzJfdTMyKGZl
Y19jbG9jaywKPiArCQkJCSAgIERQX0RTQ19GRUNfT1ZFUkhFQURfRkFDVE9SKSwKPiArCQkgICAg
ICAgMTAwMDAwMFUpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdTE2IGludGVsX2RwX2RzY19nZXRfb3V0
cHV0X2JwcCh1MzIgbGlua19jbG9jaywgdTMyIGxhbmVfY291bnQsCj4gKwkJCQkgICAgICAgdTMy
IG1vZGVfY2xvY2ssIHUzMiBtb2RlX2hkaXNwbGF5KQo+ICt7Cj4gKwl1MzIgYml0c19wZXJfcGl4
ZWwsIG1heF9icHBfc21hbGxfam9pbmVyX3JhbTsKPiArCWludCBpOwo+ICsKPiArCS8qCj4gKwkg
KiBBdmFpbGFibGUgTGluayBCYW5kd2lkdGgoS2JpdHMvc2VjKSA9IChOdW1iZXJPZkxhbmVzKSoK
PiArCSAqIChMaW5rU3ltYm9sQ2xvY2spKiA4ICogKFRpbWVTbG90c1Blck1UUCkKPiArCSAqIGZv
ciBTU1QgLT4gVGltZVNsb3RzUGVyTVRQIGlzIDEsCj4gKwkgKiBmb3IgTVNUIC0+IFRpbWVTbG90
c1Blck1UUCBoYXMgdG8gYmUgY2FsY3VsYXRlZAo+ICsJICovCj4gKwliaXRzX3Blcl9waXhlbCA9
IChsaW5rX2Nsb2NrICogbGFuZV9jb3VudCAqIDgpIC8KPiArCQkJIGludGVsX2RwX21vZGVfdG9f
ZmVjX2Nsb2NrKG1vZGVfY2xvY2spOwo+ICsJRFJNX0RFQlVHX0tNUygiTWF4IGxpbmsgYnBwOiAl
dVxuIiwgYml0c19wZXJfcGl4ZWwpOwo+ICsKPiArCS8qIFNtYWxsIEpvaW5lciBDaGVjazogb3V0
cHV0IGJwcCA8PSBqb2luZXIgUkFNIChiaXRzKSAvIEhvcml6LiB3aWR0aCAqLwo+ICsJbWF4X2Jw
cF9zbWFsbF9qb2luZXJfcmFtID0gRFBfRFNDX01BWF9TTUFMTF9KT0lORVJfUkFNX0JVRkZFUiAv
IG1vZGVfaGRpc3BsYXk7Cj4gKwlEUk1fREVCVUdfS01TKCJNYXggc21hbGwgam9pbmVyIGJwcDog
JXVcbiIsIG1heF9icHBfc21hbGxfam9pbmVyX3JhbSk7Cj4gKwo+ICsJLyoKPiArCSAqIEdyZWF0
ZXN0IGFsbG93ZWQgRFNDIEJQUCA9IE1JTiAob3V0cHV0IEJQUCBmcm9tIGF2YWlsYWJsZSBMaW5r
IEJXCj4gKwkgKiBjaGVjaywgb3V0cHV0IGJwcCBmcm9tIHNtYWxsIGpvaW5lciBSQU0gY2hlY2sp
Cj4gKwkgKi8KPiArCWJpdHNfcGVyX3BpeGVsID0gbWluKGJpdHNfcGVyX3BpeGVsLCBtYXhfYnBw
X3NtYWxsX2pvaW5lcl9yYW0pOwo+ICsKPiArCS8qIEVycm9yIG91dCBpZiB0aGUgbWF4IGJwcCBp
cyBsZXNzIHRoYW4gc21hbGxlc3QgYWxsb3dlZCB2YWxpZCBicHAgKi8KPiArCWlmIChiaXRzX3Bl
cl9waXhlbCA8IHZhbGlkX2RzY19icHBbMF0pIHsKPiArCQlEUk1fREVCVUdfS01TKCJVbnN1cHBv
cnRlZCBCUFAgJXUsIG1pbiAldVxuIiwKPiArCQkJICAgICAgYml0c19wZXJfcGl4ZWwsIHZhbGlk
X2RzY19icHBbMF0pOwo+ICsJCXJldHVybiAwOwo+ICsJfQo+ICsKPiArCS8qIEZpbmQgdGhlIG5l
YXJlc3QgbWF0Y2ggaW4gdGhlIGFycmF5IG9mIGtub3duIEJQUHMgZnJvbSBWRVNBICovCj4gKwlm
b3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRSh2YWxpZF9kc2NfYnBwKSAtIDE7IGkrKykgewo+ICsJ
CWlmIChiaXRzX3Blcl9waXhlbCA8IHZhbGlkX2RzY19icHBbaSArIDFdKQo+ICsJCQlicmVhazsK
PiArCX0KPiArCWJpdHNfcGVyX3BpeGVsID0gdmFsaWRfZHNjX2JwcFtpXTsKPiArCj4gKwkvKgo+
ICsJICogQ29tcHJlc3NlZCBCUFAgaW4gVTYuNCBmb3JtYXQgc28gbXVsdGlwbHkgYnkgMTYsIGZv
ciBHZW4gMTEsCj4gKwkgKiBmcmFjdGlvbmFsIHBhcnQgaXMgMAo+ICsJICovCj4gKwlyZXR1cm4g
Yml0c19wZXJfcGl4ZWwgPDwgNDsKPiArfQo+ICsKPiArc3RhdGljIHU4IGludGVsX2RwX2RzY19n
ZXRfc2xpY2VfY291bnQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiArCQkJCSAgICAgICBp
bnQgbW9kZV9jbG9jaywgaW50IG1vZGVfaGRpc3BsYXkpCj4gK3sKPiArCXU4IG1pbl9zbGljZV9j
b3VudCwgaTsKPiArCWludCBtYXhfc2xpY2Vfd2lkdGg7Cj4gKwo+ICsJaWYgKG1vZGVfY2xvY2sg
PD0gRFBfRFNDX1BFQUtfUElYRUxfUkFURSkKPiArCQltaW5fc2xpY2VfY291bnQgPSBESVZfUk9V
TkRfVVAobW9kZV9jbG9jaywKPiArCQkJCQkgICAgICAgRFBfRFNDX01BWF9FTkNfVEhST1VHSFBV
VF8wKTsKPiArCWVsc2UKPiArCQltaW5fc2xpY2VfY291bnQgPSBESVZfUk9VTkRfVVAobW9kZV9j
bG9jaywKPiArCQkJCQkgICAgICAgRFBfRFNDX01BWF9FTkNfVEhST1VHSFBVVF8xKTsKPiArCj4g
KwltYXhfc2xpY2Vfd2lkdGggPSBkcm1fZHBfZHNjX3NpbmtfbWF4X3NsaWNlX3dpZHRoKGludGVs
X2RwLT5kc2NfZHBjZCk7Cj4gKwlpZiAobWF4X3NsaWNlX3dpZHRoIDwgRFBfRFNDX01JTl9TTElD
RV9XSURUSF9WQUxVRSkgewo+ICsJCURSTV9ERUJVR19LTVMoIlVuc3VwcG9ydGVkIHNsaWNlIHdp
ZHRoICVkIGJ5IERQIERTQyBTaW5rIGRldmljZVxuIiwKPiArCQkJICAgICAgbWF4X3NsaWNlX3dp
ZHRoKTsKPiArCQlyZXR1cm4gMDsKPiArCX0KPiArCS8qIEFsc28gdGFrZSBpbnRvIGFjY291bnQg
bWF4IHNsaWNlIHdpZHRoICovCj4gKwltaW5fc2xpY2VfY291bnQgPSBtaW5fdCh1OCwgbWluX3Ns
aWNlX2NvdW50LAo+ICsJCQkJRElWX1JPVU5EX1VQKG1vZGVfaGRpc3BsYXksCj4gKwkJCQkJICAg
ICBtYXhfc2xpY2Vfd2lkdGgpKTsKPiArCj4gKwkvKiBGaW5kIHRoZSBjbG9zZXN0IG1hdGNoIHRv
IHRoZSB2YWxpZCBzbGljZSBjb3VudCB2YWx1ZXMgKi8KPiArCWZvciAoaSA9IDA7IGkgPCBBUlJB
WV9TSVpFKHZhbGlkX2RzY19zbGljZWNvdW50KTsgaSsrKSB7Cj4gKwkJaWYgKHZhbGlkX2RzY19z
bGljZWNvdW50W2ldID4KPiArCQkgICAgZHJtX2RwX2RzY19zaW5rX21heF9zbGljZV9jb3VudChp
bnRlbF9kcC0+ZHNjX2RwY2QsCj4gKwkJCQkJCSAgICBmYWxzZSkpCj4gKwkJCWJyZWFrOwo+ICsJ
CWlmIChtaW5fc2xpY2VfY291bnQgIDw9IHZhbGlkX2RzY19zbGljZWNvdW50W2ldKQo+ICsJCQly
ZXR1cm4gdmFsaWRfZHNjX3NsaWNlY291bnRbaV07Cj4gKwl9Cj4gKwo+ICsJRFJNX0RFQlVHX0tN
UygiVW5zdXBwb3J0ZWQgU2xpY2UgQ291bnQgJWRcbiIsIG1pbl9zbGljZV9jb3VudCk7Cj4gKwly
ZXR1cm4gMDsKPiArfQo+ICsKPiAgc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzCj4gIGludGVs
X2RwX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiAgCQkgICAg
c3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCj4gQEAgLTIyNTksNyArMjM1Nyw3IEBAIGlu
dGVsX2RwX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJ
CQkgICAgICAgYWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jaywKPiAgCQkJICAgICAgIHBpcGVfY29u
ZmlnLT5wb3J0X2Nsb2NrLAo+ICAJCQkgICAgICAgJnBpcGVfY29uZmlnLT5kcF9tX24sCj4gLQkJ
CSAgICAgICBjb25zdGFudF9uKTsKPiArCQkJICAgICAgIGNvbnN0YW50X24sIHBpcGVfY29uZmln
LT5mZWNfZW5hYmxlKTsKPiAgCj4gIAlpZiAoaW50ZWxfY29ubmVjdG9yLT5wYW5lbC5kb3duY2xv
Y2tfbW9kZSAhPSBOVUxMICYmCj4gIAkJZGV2X3ByaXYtPmRycnMudHlwZSA9PSBTRUFNTEVTU19E
UlJTX1NVUFBPUlQpIHsKPiBAQCAtMjI2OSw3ICsyMzY3LDcgQEAgaW50ZWxfZHBfY29tcHV0ZV9j
b25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAkJCQkJICAgICAgIGludGVs
X2Nvbm5lY3Rvci0+cGFuZWwuZG93bmNsb2NrX21vZGUtPmNsb2NrLAo+ICAJCQkJCSAgICAgICBw
aXBlX2NvbmZpZy0+cG9ydF9jbG9jaywKPiAgCQkJCQkgICAgICAgJnBpcGVfY29uZmlnLT5kcF9t
Ml9uMiwKPiAtCQkJCQkgICAgICAgY29uc3RhbnRfbik7Cj4gKwkJCQkJICAgICAgIGNvbnN0YW50
X24sIHBpcGVfY29uZmlnLT5mZWNfZW5hYmxlKTsKPiAgCX0KPiAgCj4gIAlpZiAoIUhBU19EREko
ZGV2X3ByaXYpKQo+IEBAIC00MzczLDkxICs0NDcxLDYgQEAgaW50ZWxfZHBfZ2V0X3NpbmtfaXJx
X2VzaShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCB1OCAqc2lua19pcnFfdmVjdG9yKQo+ICAJ
CURQX0RQUlhfRVNJX0xFTjsKPiAgfQo+ICAKPiAtdTE2IGludGVsX2RwX2RzY19nZXRfb3V0cHV0
X2JwcChpbnQgbGlua19jbG9jaywgdTggbGFuZV9jb3VudCwKPiAtCQkJCWludCBtb2RlX2Nsb2Nr
LCBpbnQgbW9kZV9oZGlzcGxheSkKPiAtewo+IC0JdTE2IGJpdHNfcGVyX3BpeGVsLCBtYXhfYnBw
X3NtYWxsX2pvaW5lcl9yYW07Cj4gLQlpbnQgaTsKPiAtCj4gLQkvKgo+IC0JICogQXZhaWxhYmxl
IExpbmsgQmFuZHdpZHRoKEtiaXRzL3NlYykgPSAoTnVtYmVyT2ZMYW5lcykqCj4gLQkgKiAoTGlu
a1N5bWJvbENsb2NrKSogOCAqICgoMTAwLUZFQ092ZXJoZWFkKS8xMDApKihUaW1lU2xvdHNQZXJN
VFApCj4gLQkgKiBGRUNPdmVyaGVhZCA9IDIuNCUsIGZvciBTU1QgLT4gVGltZVNsb3RzUGVyTVRQ
IGlzIDEsCj4gLQkgKiBmb3IgTVNUIC0+IFRpbWVTbG90c1Blck1UUCBoYXMgdG8gYmUgY2FsY3Vs
YXRlZAo+IC0JICovCj4gLQliaXRzX3Blcl9waXhlbCA9IChsaW5rX2Nsb2NrICogbGFuZV9jb3Vu
dCAqIDggKgo+IC0JCQkgIERQX0RTQ19GRUNfT1ZFUkhFQURfRkFDVE9SKSAvCj4gLQkJbW9kZV9j
bG9jazsKPiAtCj4gLQkvKiBTbWFsbCBKb2luZXIgQ2hlY2s6IG91dHB1dCBicHAgPD0gam9pbmVy
IFJBTSAoYml0cykgLyBIb3Jpei4gd2lkdGggKi8KPiAtCW1heF9icHBfc21hbGxfam9pbmVyX3Jh
bSA9IERQX0RTQ19NQVhfU01BTExfSk9JTkVSX1JBTV9CVUZGRVIgLwo+IC0JCW1vZGVfaGRpc3Bs
YXk7Cj4gLQo+IC0JLyoKPiAtCSAqIEdyZWF0ZXN0IGFsbG93ZWQgRFNDIEJQUCA9IE1JTiAob3V0
cHV0IEJQUCBmcm9tIGF2YWlhbGJsZSBMaW5rIEJXCj4gLQkgKiBjaGVjaywgb3V0cHV0IGJwcCBm
cm9tIHNtYWxsIGpvaW5lciBSQU0gY2hlY2spCj4gLQkgKi8KPiAtCWJpdHNfcGVyX3BpeGVsID0g
bWluKGJpdHNfcGVyX3BpeGVsLCBtYXhfYnBwX3NtYWxsX2pvaW5lcl9yYW0pOwo+IC0KPiAtCS8q
IEVycm9yIG91dCBpZiB0aGUgbWF4IGJwcCBpcyBsZXNzIHRoYW4gc21hbGxlc3QgYWxsb3dlZCB2
YWxpZCBicHAgKi8KPiAtCWlmIChiaXRzX3Blcl9waXhlbCA8IHZhbGlkX2RzY19icHBbMF0pIHsK
PiAtCQlEUk1fREVCVUdfS01TKCJVbnN1cHBvcnRlZCBCUFAgJWRcbiIsIGJpdHNfcGVyX3BpeGVs
KTsKPiAtCQlyZXR1cm4gMDsKPiAtCX0KPiAtCj4gLQkvKiBGaW5kIHRoZSBuZWFyZXN0IG1hdGNo
IGluIHRoZSBhcnJheSBvZiBrbm93biBCUFBzIGZyb20gVkVTQSAqLwo+IC0JZm9yIChpID0gMDsg
aSA8IEFSUkFZX1NJWkUodmFsaWRfZHNjX2JwcCkgLSAxOyBpKyspIHsKPiAtCQlpZiAoYml0c19w
ZXJfcGl4ZWwgPCB2YWxpZF9kc2NfYnBwW2kgKyAxXSkKPiAtCQkJYnJlYWs7Cj4gLQl9Cj4gLQli
aXRzX3Blcl9waXhlbCA9IHZhbGlkX2RzY19icHBbaV07Cj4gLQo+IC0JLyoKPiAtCSAqIENvbXBy
ZXNzZWQgQlBQIGluIFU2LjQgZm9ybWF0IHNvIG11bHRpcGx5IGJ5IDE2LCBmb3IgR2VuIDExLAo+
IC0JICogZnJhY3Rpb25hbCBwYXJ0IGlzIDAKPiAtCSAqLwo+IC0JcmV0dXJuIGJpdHNfcGVyX3Bp
eGVsIDw8IDQ7Cj4gLX0KPiAtCj4gLXU4IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwKPiAtCQkJCWludCBtb2RlX2Nsb2NrLAo+IC0JCQkJaW50
IG1vZGVfaGRpc3BsYXkpCj4gLXsKPiAtCXU4IG1pbl9zbGljZV9jb3VudCwgaTsKPiAtCWludCBt
YXhfc2xpY2Vfd2lkdGg7Cj4gLQo+IC0JaWYgKG1vZGVfY2xvY2sgPD0gRFBfRFNDX1BFQUtfUElY
RUxfUkFURSkKPiAtCQltaW5fc2xpY2VfY291bnQgPSBESVZfUk9VTkRfVVAobW9kZV9jbG9jaywK
PiAtCQkJCQkgICAgICAgRFBfRFNDX01BWF9FTkNfVEhST1VHSFBVVF8wKTsKPiAtCWVsc2UKPiAt
CQltaW5fc2xpY2VfY291bnQgPSBESVZfUk9VTkRfVVAobW9kZV9jbG9jaywKPiAtCQkJCQkgICAg
ICAgRFBfRFNDX01BWF9FTkNfVEhST1VHSFBVVF8xKTsKPiAtCj4gLQltYXhfc2xpY2Vfd2lkdGgg
PSBkcm1fZHBfZHNjX3NpbmtfbWF4X3NsaWNlX3dpZHRoKGludGVsX2RwLT5kc2NfZHBjZCk7Cj4g
LQlpZiAobWF4X3NsaWNlX3dpZHRoIDwgRFBfRFNDX01JTl9TTElDRV9XSURUSF9WQUxVRSkgewo+
IC0JCURSTV9ERUJVR19LTVMoIlVuc3VwcG9ydGVkIHNsaWNlIHdpZHRoICVkIGJ5IERQIERTQyBT
aW5rIGRldmljZVxuIiwKPiAtCQkJICAgICAgbWF4X3NsaWNlX3dpZHRoKTsKPiAtCQlyZXR1cm4g
MDsKPiAtCX0KPiAtCS8qIEFsc28gdGFrZSBpbnRvIGFjY291bnQgbWF4IHNsaWNlIHdpZHRoICov
Cj4gLQltaW5fc2xpY2VfY291bnQgPSBtaW5fdCh1OCwgbWluX3NsaWNlX2NvdW50LAo+IC0JCQkJ
RElWX1JPVU5EX1VQKG1vZGVfaGRpc3BsYXksCj4gLQkJCQkJICAgICBtYXhfc2xpY2Vfd2lkdGgp
KTsKPiAtCj4gLQkvKiBGaW5kIHRoZSBjbG9zZXN0IG1hdGNoIHRvIHRoZSB2YWxpZCBzbGljZSBj
b3VudCB2YWx1ZXMgKi8KPiAtCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHZhbGlkX2RzY19z
bGljZWNvdW50KTsgaSsrKSB7Cj4gLQkJaWYgKHZhbGlkX2RzY19zbGljZWNvdW50W2ldID4KPiAt
CQkgICAgZHJtX2RwX2RzY19zaW5rX21heF9zbGljZV9jb3VudChpbnRlbF9kcC0+ZHNjX2RwY2Qs
Cj4gLQkJCQkJCSAgICBmYWxzZSkpCj4gLQkJCWJyZWFrOwo+IC0JCWlmIChtaW5fc2xpY2VfY291
bnQgIDw9IHZhbGlkX2RzY19zbGljZWNvdW50W2ldKQo+IC0JCQlyZXR1cm4gdmFsaWRfZHNjX3Ns
aWNlY291bnRbaV07Cj4gLQl9Cj4gLQo+IC0JRFJNX0RFQlVHX0tNUygiVW5zdXBwb3J0ZWQgU2xp
Y2UgQ291bnQgJWRcbiIsIG1pbl9zbGljZV9jb3VudCk7Cj4gLQlyZXR1cm4gMDsKPiAtfQo+IC0K
PiAgc3RhdGljIHZvaWQKPiAgaW50ZWxfcGl4ZWxfZW5jb2Rpbmdfc2V0dXBfdnNjKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAsCj4gIAkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5o
Cj4gaW5kZXggZTAxZDFmODk0MDlkLi4yMTQ3ZDNjMTQ4NzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oCj4gQEAgLTEwMywxMCArMTAzLDYgQEAgYm9vbCBpbnRl
bF9kcF9zb3VyY2Vfc3VwcG9ydHNfaGJyMihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsKPiAg
Ym9vbCBpbnRlbF9kcF9zb3VyY2Vfc3VwcG9ydHNfaGJyMyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKTsKPiAgYm9vbAo+ICBpbnRlbF9kcF9nZXRfbGlua19zdGF0dXMoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwgdTggKmxpbmtfc3RhdHVzKTsKPiAtdTE2IGludGVsX2RwX2RzY19nZXRfb3V0
cHV0X2JwcChpbnQgbGlua19jbG9jaywgdTggbGFuZV9jb3VudCwKPiAtCQkJCWludCBtb2RlX2Ns
b2NrLCBpbnQgbW9kZV9oZGlzcGxheSk7Cj4gLXU4IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291
bnQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IG1vZGVfY2xvY2ssCj4gLQkJCQlpbnQg
bW9kZV9oZGlzcGxheSk7Cj4gIAo+ICBib29sIGludGVsX2RwX3JlYWRfZHBjZChzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKTsKPiAgYm9vbCBpbnRlbF9kcF9nZXRfY29sb3JpbWV0cnlfc3RhdHVz
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOwo+IEBAIC0xMTksNCArMTE1LDcgQEAgc3RhdGlj
IGlubGluZSB1bnNpZ25lZCBpbnQgaW50ZWxfZHBfdW51c2VkX2xhbmVfbWFzayhpbnQgbGFuZV9j
b3VudCkKPiAgCXJldHVybiB+KCgxIDw8IGxhbmVfY291bnQpIC0gMSkgJiAweGY7Cj4gIH0KPiAg
Cj4gK3UzMiBpbnRlbF9kcF9mZWNfdG9fbW9kZV9jbG9jayh1MzIgZmVjX2Nsb2NrKTsKPiArdTMy
IGludGVsX2RwX21vZGVfdG9fZmVjX2Nsb2NrKHUzMiBtb2RlX2Nsb2NrKTsKPiArCj4gICNlbmRp
ZiAvKiBfX0lOVEVMX0RQX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9tc3QuYwo+IGluZGV4IGVlZWIzZjkzM2FhNC4uY2Y0ZDg1MWE1MTM5IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gQEAgLTgxLDcg
KzgxLDcgQEAgc3RhdGljIGludCBpbnRlbF9kcF9tc3RfY29tcHV0ZV9saW5rX2NvbmZpZyhzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQkJICAgICAgIGFkanVzdGVkX21vZGUtPmNy
dGNfY2xvY2ssCj4gIAkJCSAgICAgICBjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrLAo+ICAJCQkgICAg
ICAgJmNydGNfc3RhdGUtPmRwX21fbiwKPiAtCQkJICAgICAgIGNvbnN0YW50X24pOwo+ICsJCQkg
ICAgICAgY29uc3RhbnRfbiwgY3J0Y19zdGF0ZS0+ZmVjX2VuYWJsZSk7Cj4gIAljcnRjX3N0YXRl
LT5kcF9tX24udHUgPSBzbG90czsKPiAgCj4gIAlyZXR1cm4gMDsKPiAtLSAKPiAyLjIwLjEKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
