Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9BDB1FC6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 15:36:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31E146F3B8;
	Fri, 13 Sep 2019 13:36:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8266A6F3B8
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 13:36:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 06:36:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="269412252"
Received: from jjiang35-mobl1.ger.corp.intel.com (HELO [10.252.53.130])
 ([10.252.53.130])
 by orsmga001.jf.intel.com with ESMTP; 13 Sep 2019 06:36:40 -0700
To: Manasi Navare <manasi.d.navare@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190712202214.3906-1-manasi.d.navare@intel.com>
 <20190712202938.GQ5942@intel.com> <20190729191753.GI2632@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <eb58efd5-c193-c176-d18d-b7b793794fd1@linux.intel.com>
Date: Fri, 13 Sep 2019 15:36:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190729191753.GI2632@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/display/icl: Bump up the
 hdisplay and vdisplay as per transcoder limits
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGV5LAoKT3AgMjktMDctMjAxOSBvbSAyMToxNyBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gSGkg
VmlsbGUsCj4KPiBUaGFua3MgZm9yIHlvdXIgcmV2aWV3LCBzbyBkbyB3ZSB3YW50IHRvIG1lcmdl
IHRoaXMgYXMgaXMgb3IKPiBkbyB3ZSBuZWVkIHNvbWUgZnVuY3Rpb24gdG8gcmVqZWN0IHRoZSA4
SyBtb2RlIG9uIElDTCBpbiBpbnRlbF9kcF9tb2RlX3ZhbGlkKCk/Cj4KPiBNYW5hc2kKCkkndmUg
cHVzaGVkIHRoaXMgc2VyaWVzIGFzLWlzIGJlY2F1c2UgaXQgYmxvY2tzIG15IGJpZ2pvaW5lciB3
b3JrLiBXZSBzaG91bGQgcHJvYmFibHkgcmVqZWN0IG1vZGVzIGluIHRoZSBjb25uZWN0b3Igc3Bl
Y2lmaWMgZnVuY3Rpb25zIGlmIHdlIGNhbid0IGhhbmRsZSBpdC4gOikKCgo+Cj4gT24gRnJpLCBK
dWwgMTIsIDIwMTkgYXQgMTE6Mjk6MzhQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+
PiBPbiBGcmksIEp1bCAxMiwgMjAxOSBhdCAwMToyMjoxM1BNIC0wNzAwLCBNYW5hc2kgTmF2YXJl
IHdyb3RlOgo+Pj4gT24gSUNMKywgdGhlIHZlcnRpY2FsIGxpbWl0cyBmb3IgdGhlIHRyYW5zY29k
ZXJzIGFyZSBpbmNyZWFzZWQgdG8gODE5Mgo+Pj4gYW5kIGhvcml6b250YWwgbGltaXRzIGFyZSBi
dW1wZWQgdG8gMTZLIHNvIGJ1bXAgdXAKPj4+IGxpbWl0cyBpbiBpbnRlbF9tb2RlX3ZhbGlkKCkK
Pj4+Cj4+PiB2NDoKPj4+ICogSW5jcmVhc2UgdGhlIGhkaXNwbGF5IHRvIDE2SyAoVmlsbGUpCj4+
PiB2MzoKPj4+ICogU3VwcG9ydGVkIHN0YXJ0aW5nIElDTCAoVmlsbGUpCj4+PiAqIFVzZSB0aGUg
aGlnaGVyIGxpbWl0cyBmcm9tIFRSQU5TX1ZUT1RBTCByZWdpc3RlciAoVmlsbGUpCj4+PiB2MjoK
Pj4+ICogQ2hlY2twYXRjaCB3YXJuaW5nIChNYW5hc2kpCj4+Pgo+Pj4gQ2M6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+PiBDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYt
Ynk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4+IFJldmlld2Vk
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Pgo+
Pj4gLS0tCj4+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCA5ICsrKysrKystLQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKPj4+IGluZGV4IGYwNzA4MTgxNWI4MC4uMTUwMDY3NjQ4NjJiIDEwMDY0NAo+Pj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+PiBAQCAt
MTU3NjQsOCArMTU3NjQsMTMgQEAgaW50ZWxfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LAo+Pj4gIAkJCSAgIERSTV9NT0RFX0ZMQUdfQ0xLRElWMikpCj4+PiAgCQlyZXR1cm4gTU9E
RV9CQUQ7Cj4+PiAgCj4+PiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgfHwKPj4+IC0J
ICAgIElTX0JST0FEV0VMTChkZXZfcHJpdikgfHwgSVNfSEFTV0VMTChkZXZfcHJpdikpIHsKPj4+
ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKPj4+ICsJCWhkaXNwbGF5X21heCA9
IDE2Mzg0Owo+Pj4gKwkJdmRpc3BsYXlfbWF4ID0gODE5MjsKPj4+ICsJCWh0b3RhbF9tYXggPSAx
NjM4NDsKPj4+ICsJCXZ0b3RhbF9tYXggPSA4MTkyOwo+Pj4gKwl9IGVsc2UgaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gOSB8fAo+Pj4gKwkJICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJ
U19IQVNXRUxMKGRldl9wcml2KSkgewo+Pj4gIAkJaGRpc3BsYXlfbWF4ID0gODE5MjsgLyogRkRJ
IG1heCA0MDk2IGhhbmRsZWQgZWxzZXdoZXJlICovCj4+PiAgCQl2ZGlzcGxheV9tYXggPSA0MDk2
Owo+Pj4gIAkJaHRvdGFsX21heCA9IDgxOTI7Cj4+PiAtLSAKPj4+IDIuMTkuMQo+PiAtLSAKPj4g
VmlsbGUgU3lyasOkbMOkCj4+IEludGVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
