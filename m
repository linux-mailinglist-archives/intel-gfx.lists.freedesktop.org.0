Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC1AE77C7
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 18:45:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A3B6E9AC;
	Mon, 28 Oct 2019 17:45:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83A26E9AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 17:45:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 10:45:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="189687360"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 28 Oct 2019 10:45:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 19:45:09 +0200
Date: Mon, 28 Oct 2019 19:45:09 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20191028174509.GT1208@intel.com>
References: <20191028110031.29616-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028110031.29616-1-imre.deak@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid HPD poll detect triggering
 a new detect cycle
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
Cc: intel-gfx@lists.freedesktop.org, Val Kulkov <val.kulkov@gmail.com>,
 wangqr <wqr.prg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMDE6MDA6MzFQTSArMDIwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IEZvciB0aGUgSFBEIGludGVycnVwdCBmdW5jdGlvbmFsaXR5IHRoZSBIVyBkZXBlbmRzIG9u
IHBvd2VyIHdlbGxzIGluIHRoZQo+IGRpc3BsYXkgY29yZSBkb21haW4gdG8gYmUgb24uIEFjY29y
ZGluZ2x5IHdoZW4gZW5hYmxpbmcgdGhlc2UgcG93ZXIKPiB3ZWxscyB0aGUgSFBEIHBvbGxpbmcg
bG9naWMgd2lsbCBmb3JjZSBhbiBIUEQgZGV0ZWN0aW9uIGN5Y2xlIHRvIGFjY291bnQKPiBmb3Ig
aG90cGx1ZyBldmVudHMgdGhhdCBtYXkgaGF2ZSBoYXBwZW5lZCB3aGVuIHN1Y2ggYSBwb3dlciB3
ZWxsIHdhcwo+IG9mZi4KPiAKPiBUaHVzIGEgZGV0ZWN0IGN5Y2xlIHN0YXJ0ZWQgYnkgcG9sbGlu
ZyBjb3VsZCBzdGFydCBhIG5ldyBkZXRlY3QgY3ljbGUgaWYKPiBhIHBvd2VyIHdlbGwgaW4gdGhl
IGRpc3BsYXkgY29yZSBkb21haW4gZ2V0cyBlbmFibGVkIGR1cmluZyBkZXRlY3QgYW5kCj4gc3Rh
eXMgZW5hYmxlZCBhZnRlciBkZXRlY3QgY29tcGxldGVzLiBUaGF0IGluIHR1cm4gY2FuIGxlYWQg
dG8gYQo+IGRldGVjdGlvbiBjeWNsZSBydW5hd2F5Lgo+IAo+IFRvIHByZXZlbnQgcmUtdHJpZ2dl
cmluZyBhIHBvbGwtZGV0ZWN0IGN5Y2xlIG1ha2Ugc3VyZSB3ZSBkcm9wIGFsbCBwb3dlcgo+IHJl
ZmVyZW5jZXMgd2UgYWNxdWlyZWQgZHVyaW5nIGRldGVjdCBzeW5jaHJvbm91c2x5IGJ5IHRoZSBl
bmQgb2YgZGV0ZWN0Lgo+IFRoaXMgd2lsbCBsZXQgdGhlIHBvbGwtZGV0ZWN0IGxvZ2ljIGNvbnRp
bnVlIHdpdGggcG9sbGluZyAobWF0Y2hpbmcgdGhlCj4gb2ZmIHN0YXRlIG9mIHRoZSBjb3JyZXNw
b25kaW5nIHBvd2VyIHdlbGxzKSBpbnN0ZWFkIG9mIHNjaGVkdWxpbmcgYSBuZXcKPiBkZXRlY3Rp
b24gY3ljbGUuCj4gCj4gRml4ZXM6IDZjZmU3ZWMwMmU4NSAoImRybS9pOTE1OiBSZW1vdmUgdGhl
IHVubmVlZGVkIEFVWCBwb3dlciByZWYgZnJvbSBpbnRlbF9kcF9kZXRlY3QoKSIpCj4gQnVnemls
bGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMjEyNQo+
IFJlcG9ydGVkLWJ5OiBWYWwgS3Vsa292IDx2YWwua3Vsa292QGdtYWlsLmNvbT4KPiBSZXBvcnRl
ZC1hbmQtdGVzdGVkLWJ5OiB3YW5ncXIgPCB3cXIucHJnQGdtYWlsLmNvbT4KPiBDYzogVmFsIEt1
bGtvdiA8dmFsLmt1bGtvdkBnbWFpbC5jb20+Cj4gQ2M6IHdhbmdxciA8IHdxci5wcmdAZ21haWwu
Y29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYyAgfCAgNyArKysrKysr
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgIHwgMjQgKysrKysr
KysrKysrKystLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZG1pLmMgfCAgNiArKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNlcnRpb25zKCspLCA5
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NydC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQu
Ywo+IGluZGV4IGZmNjEyNmVhNzkzYy4uODM0YmYxZDQzYmI4IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jCj4gQEAgLTg2NCw2ICs4NjQsMTMgQEAgaW50ZWxf
Y3J0X2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ICAKPiAgb3V0Ogo+
ICAJaW50ZWxfZGlzcGxheV9wb3dlcl9wdXQoZGV2X3ByaXYsIGludGVsX2VuY29kZXItPnBvd2Vy
X2RvbWFpbiwgd2FrZXJlZik7Cj4gKwo+ICsJLyoKPiArCSAqIE1ha2Ugc3VyZSB0aGUgcmVmcyBm
b3IgcG93ZXIgd2VsbHMgZW5hYmxlZCBkdXJpbmcgZGV0ZWN0IGFyZQo+ICsJICogZHJvcHBlZCB0
byBhdm9pZCBhIG5ldyBkZXRlY3QgY3ljbGUgdHJpZ2dlcmVkIGJ5IEhQRCBwb2xsaW5nLgo+ICsJ
ICovCj4gKwlpbnRlbF9kaXNwbGF5X3Bvd2VyX2ZsdXNoX3dvcmsoZGV2X3ByaXYpOwo+ICsKPiAg
CXJldHVybiBzdGF0dXM7Cj4gIH0KPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwo+IGluZGV4IDg2OTg5ZWMyNWJjNi4uZjRlMGVjMDVkN2M5IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC01NjAwLDYgKzU2MDAsNyBAQCBp
bnRlbF9kcF9kZXRlY3Qoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiAgCXN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHAp
Owo+ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSAmZGlnX3BvcnQtPmJhc2U7Cj4g
IAllbnVtIGRybV9jb25uZWN0b3Jfc3RhdHVzIHN0YXR1czsKPiArCWludCBlcnIgPSAwOwo+ICAK
PiAgCURSTV9ERUJVR19LTVMoIltDT05ORUNUT1I6JWQ6JXNdXG4iLAo+ICAJCSAgICAgIGNvbm5l
Y3Rvci0+YmFzZS5pZCwgY29ubmVjdG9yLT5uYW1lKTsKPiBAQCAtNTYyNiw3ICs1NjI3LDcgQEAg
aW50ZWxfZHBfZGV0ZWN0KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gIAkJCQkJ
CQlpbnRlbF9kcC0+aXNfbXN0KTsKPiAgCQl9Cj4gIAo+IC0JCWdvdG8gb3V0Owo+ICsJCWdvdG8g
b3V0X3VwZGF0ZV9lZGlkOwo+ICAJfQo+ICAKPiAgCWlmIChpbnRlbF9kcC0+cmVzZXRfbGlua19w
YXJhbXMpIHsKPiBAQCAtNTY1NCw3ICs1NjU1LDcgQEAgaW50ZWxfZHBfZGV0ZWN0KHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gIAkJICogd2l0aCBFRElEIG9uIGl0Cj4gIAkJICov
Cj4gIAkJc3RhdHVzID0gY29ubmVjdG9yX3N0YXR1c19kaXNjb25uZWN0ZWQ7Cj4gLQkJZ290byBv
dXQ7Cj4gKwkJZ290byBvdXRfdXBkYXRlX2VkaWQ7Cj4gIAl9Cj4gIAo+ICAJLyoKPiBAQCAtNTY2
MiwxMSArNTY2Myw5IEBAIGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yLAo+ICAJICogd2l0aCBhbiBJUlFfSFBELCBzbyBmb3JjZSBhIGxpbmsgc3RhdHVzIGNo
ZWNrLgo+ICAJICovCj4gIAlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpIHsKPiAtCQlp
bnQgcmV0Owo+IC0KPiAtCQlyZXQgPSBpbnRlbF9kcF9yZXRyYWluX2xpbmsoZW5jb2RlciwgY3R4
KTsKPiAtCQlpZiAocmV0KQo+IC0JCQlyZXR1cm4gcmV0Owo+ICsJCWVyciA9IGludGVsX2RwX3Jl
dHJhaW5fbGluayhlbmNvZGVyLCBjdHgpOwo+ICsJCWlmIChlcnIpCgpUaGlzIHNob3VsZCBwcm9i
YWJseSByZWFkIAppZiAoZXJyID09IC1FREVBRExLKQoKQWxzbyBJIGRvbid0IHRoaW5rIHdlIG5l
ZWQgdG8gY2hhbmdlIHRoaXMgdG8gYSBnb3RvIHNpbmNlIGl0IGp1c3QKbWVhbnMgd2UncmUgZ29p
bmcgdG8gcmV0cnkgdGhlIHdob2xlIHRoaW5nIGFnYWluLCBzbyB0aGUgc3RyYWlnaHQKcmV0dXJu
IHNob3VsZCBiZSBmaW5lLgoKPiArCQkJZ290byBvdXRfc3luY19wb3dlcjsKPiAgCX0KPiAgCj4g
IAkvKgo+IEBAIC01Njg0LDExICs1NjgzLDE4IEBAIGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ICAKPiAgCWludGVsX2RwX2NoZWNrX3NlcnZpY2VfaXJx
KGludGVsX2RwKTsKPiAgCj4gLW91dDoKPiArb3V0X3VwZGF0ZV9lZGlkOgo+ICAJaWYgKHN0YXR1
cyAhPSBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCAmJiAhaW50ZWxfZHAtPmlzX21zdCkKPiAg
CQlpbnRlbF9kcF91bnNldF9lZGlkKGludGVsX2RwKTsKPiAgCj4gLQlyZXR1cm4gc3RhdHVzOwo+
ICtvdXRfc3luY19wb3dlcjoKPiArCS8qCj4gKwkgKiBNYWtlIHN1cmUgdGhlIHJlZnMgZm9yIHBv
d2VyIHdlbGxzIGVuYWJsZWQgZHVyaW5nIGRldGVjdCBhcmUKPiArCSAqIGRyb3BwZWQgdG8gYXZv
aWQgYSBuZXcgZGV0ZWN0IGN5Y2xlIHRyaWdnZXJlZCBieSBIUEQgcG9sbGluZy4KPiArCSAqLwo+
ICsJaW50ZWxfZGlzcGxheV9wb3dlcl9mbHVzaF93b3JrKGRldl9wcml2KTsKPiArCj4gKwlyZXR1
cm4gZXJyID8gZXJyIDogc3RhdHVzOwo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gaW5kZXggYjU0Y2NiYjVhYWQ1Li5m
ZjcxYTRkYTNkMDAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZG1pLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYwo+IEBAIC0yNjI2LDYgKzI2MjYsMTIgQEAgaW50ZWxfaGRtaV9kZXRlY3Qoc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvciwgYm9vbCBmb3JjZSkKPiAgCWlmIChzdGF0dXMgIT0gY29u
bmVjdG9yX3N0YXR1c19jb25uZWN0ZWQpCj4gIAkJY2VjX25vdGlmaWVyX3BoeXNfYWRkcl9pbnZh
bGlkYXRlKGludGVsX2hkbWktPmNlY19ub3RpZmllcik7Cj4gIAo+ICsJLyoKPiArCSAqIE1ha2Ug
c3VyZSB0aGUgcmVmcyBmb3IgcG93ZXIgd2VsbHMgZW5hYmxlZCBkdXJpbmcgZGV0ZWN0IGFyZQo+
ICsJICogZHJvcHBlZCB0byBhdm9pZCBhIG5ldyBkZXRlY3QgY3ljbGUgdHJpZ2dlcmVkIGJ5IEhQ
RCBwb2xsaW5nLgo+ICsJICovCj4gKwlpbnRlbF9kaXNwbGF5X3Bvd2VyX2ZsdXNoX3dvcmsoZGV2
X3ByaXYpOwo+ICsKPiAgCXJldHVybiBzdGF0dXM7Cj4gIH0KPiAgCj4gLS0gCj4gMi4xNy4xCgot
LSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
