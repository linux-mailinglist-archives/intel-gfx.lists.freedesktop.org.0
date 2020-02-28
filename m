Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A281732E6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 09:28:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC3D6EE65;
	Fri, 28 Feb 2020 08:28:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85EEC6EE65
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 08:28:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20380967-1500050 for multiple; Fri, 28 Feb 2020 08:28:39 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200227193954.5585-1-ville.syrjala@linux.intel.com>
Message-ID: <158287851663.19174.2013462831358055362@skylake-alporthouse-com>
Date: Fri, 28 Feb 2020 08:28:36 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Lock gmbus/aux mutexes while
 changing cdclk
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAyLTI3IDE5OjM5OjU0KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gZ21idXMvYXV4
IG1heSBiZSBjbG9ja2VkIGJ5IGNkY2xrLCB0aHVzIHdlIHNob3VsZCBtYWtlIHN1cmUgbm8KPiB0
cmFuc2ZlcnMgYXJlIG9uZ29pbmcgd2hpbGUgdGhlIGNkY2xrIGZyZXF1ZW5jeSBpcyBiZWluZyBj
aGFuZ2VkLgo+IFdlIGRvIHRoYXQgYnkgc2ltcGx5IGdyYWJiaW5nIGFsbCB0aGUgZ21idXMvYXV4
IG11dGV4ZXMuIE5vIG9uZQo+IGVsc2Ugc2hvdWxkIGJlIGhvbGRpbmcgYW55IG1vcmUgdGhhbiBv
bmUgb2YgdGhvc2UgYXQgYSB0aW1lIHNvCj4gdGhlIGxvY2sgb3JkZXJpbmcgaGVyZSBzaG91bGRu
J3QgbWF0dGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYyB8IDIzICsrKysrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDIzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jCj4gaW5kZXggMDc0MWQ2NDM0NTViLi5mNjliZjRhNGViMWMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCj4gQEAgLTE4Njgs
NiArMTg2OCw5IEBAIHN0YXRpYyB2b2lkIGludGVsX3NldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0
cnVjdCBpbnRlbF9jZGNsa19jb25maWcgKmNkY2xrX2NvbmZpZywKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZW51bSBwaXBlIHBpcGUpCj4gIHsKPiArICAgICAgIHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyOwo+ICsgICAgICAgdW5zaWduZWQgaW50IGF1eF9tdXRleF9sb2NrY2xh
c3MgPSAwOwo+ICsKPiAgICAgICAgIGlmICghaW50ZWxfY2RjbGtfY2hhbmdlZCgmZGV2X3ByaXYt
PmNkY2xrLmh3LCBjZGNsa19jb25maWcpKQo+ICAgICAgICAgICAgICAgICByZXR1cm47Cj4gIAo+
IEBAIC0xODc2LDggKzE4NzksMjggQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0X2NkY2xrKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCj4gICAgICAgICBpbnRlbF9kdW1wX2Nk
Y2xrX2NvbmZpZyhjZGNsa19jb25maWcsICJDaGFuZ2luZyBDRENMSyB0byIpOwo+ICAKPiArICAg
ICAgIC8qCj4gKyAgICAgICAgKiBMb2NrIGF1eC9nbWJ1cyB3aGlsZSB3ZSBjaGFuZ2UgY2RjbGsg
aW4gY2FzZSB0aG9zZQo+ICsgICAgICAgICogZnVuY3Rpb25zIHVzZSBjZGNsay4gTm90IGFsbCBw
bGF0Zm9ybXMvcG9ydHMgZG8sCj4gKyAgICAgICAgKiBidXQgd2UnbGwgbG9jayB0aGVtIGFsbCBm
b3Igc2ltcGxpY2l0eS4KPiArICAgICAgICAqLwo+ICsgICAgICAgbXV0ZXhfbG9jaygmZGV2X3By
aXYtPmdtYnVzX211dGV4KTsKPiArICAgICAgIGZvcl9lYWNoX2ludGVsX2RwKCZkZXZfcHJpdi0+
ZHJtLCBlbmNvZGVyKSB7Cj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7Cj4gKwo+ICsgICAgICAgICAgICAgICBtdXRl
eF9sb2NrX25lc3RlZCgmaW50ZWxfZHAtPmF1eC5od19tdXRleCwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgYXV4X211dGV4X2xvY2tjbGFzcysrKTsKCm11dGV4X2xvY2tfbmVz
dF9sb2NrKCZpbnRlbF9kcC0+YXV4Lmh3X211dGV4LCAmZGV2X3ByaXYtPmdtYnVzX211dGV4KTsK
PwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
