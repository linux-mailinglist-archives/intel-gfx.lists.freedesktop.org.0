Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F103C3175E
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Jun 2019 00:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A0389A1F;
	Fri, 31 May 2019 22:59:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AE3989A1F
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 22:59:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 15:59:14 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 31 May 2019 15:59:14 -0700
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
 <20190516215634.16675-2-daniele.ceraolospurio@intel.com>
 <87lfz08acb.fsf@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <8ada3f20-e5d4-87c0-abc4-512b35395a4a@intel.com>
Date: Fri, 31 May 2019 15:59:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <87lfz08acb.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 1/7] drm/i915: prefer i915_runtime_pm in
 intel_runtime function
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA1LzIxLzE5IDE6NDUgQU0sIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIFRodSwgMTYgTWF5
IDIwMTksIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRl
bC5jb20+IHdyb3RlOgo+PiBBcyBhIGZpcnN0IHN0ZXAgdG93YXJkcyB1cGRhdGluZyB0aGUgY29k
ZSB0byB3b3JrIG9uIHRoZSBydW50aW1lX3BtCj4+IHN0cnVjdHVyZSBpbnN0ZWFkIG9mIGk5MTUs
IHJld29yayBhbGwgdGhlIGludGVybmFscyB0byB1c2UgYW5kIHBhc3MKPj4gYXJvdW5kIHRoYXQu
Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2Vy
YW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmggICAgICAgICB8ICAgMiArCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHJ2LmggICAgICAgIHwgIDEwICstCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVu
dGltZV9wbS5jIHwgMTUyICsrKysrKysrKysrKy0tLS0tLS0tLS0tLQo+PiAgIDMgZmlsZXMgY2hh
bmdlZCwgODIgaW5zZXJ0aW9ucygrKSwgODIgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaAo+PiBpbmRleCA1ODAxZjU0MDc1ODkuLjQ3NDA3NGM3ZjM5NSAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4+IEBAIC0xMTc3LDYgKzExNzcsOCBAQCBzdHJ1Y3Qgc2ts
X3dtX3BhcmFtcyB7Cj4+ICAgICovCj4+ICAgc3RydWN0IGk5MTVfcnVudGltZV9wbSB7Cj4+ICAg
CWF0b21pY190IHdha2VyZWZfY291bnQ7Cj4+ICsJc3RydWN0IGRldmljZSAqa2RldjsKPiAKPiBU
aGlzIGNvdWxkIHVzZSBhIHNtYWxsIGNvbW1lbnQgdG8gc2F5IHdoYXQgZGV2aWNlIHRoaXMgaXMu
Cj4gCgpXb3VsZCBzb21ldGhpbmcgbGlrZToKCgkvKiB0aGUgaW50ZWwgZ3B1IHdlJ3JlIGxvYWRl
ZCBvbiAqLwoKd29yaz8gT3Igc2hvdWxkIEkganVzdCByZW5hbWUgaXQgdG8gaTkxNV9rZGV2IGxp
a2Ugd2UgdXNlIGluIG90aGVyIHBhcnRzIApvZiB0aGUgZHJpdmVyPwoKVGhhbmtzLApEYW5pZWxl
Cgo+IEJSLAo+IEphbmkuCj4gCj4+ICsJYm9vbCBhdmFpbGFibGU7Cj4+ICAgCWJvb2wgc3VzcGVu
ZGVkOwo+PiAgIAlib29sIGlycXNfZW5hYmxlZDsKPj4gICAKPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHJ2LmgKPj4gaW5kZXggMzBiMmQ2ZWQyZDUzLi5iZDA0ZjM5NGZiZDMgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2Rydi5oCj4+IEBAIC0xNjYyLDEzICsxNjYyLDE3IEBAIF9fX19hc3NlcnRf
cnBtX3dha2Vsb2NrX2hlbGQoc3RydWN0IGk5MTVfcnVudGltZV9wbSAqcnBtLCBpbnQgd2FrZXJl
Zl9jb3VudCkKPj4gICB9Cj4+ICAgCj4+ICAgc3RhdGljIGlubGluZSB2b2lkCj4+IC1hc3NlcnRf
cnBtX3Jhd193YWtlcmVmX2hlbGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+ICtf
X2Fzc2VydF9ycG1fcmF3X3dha2VyZWZfaGVsZChzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0p
Cj4+ICAgewo+PiAtCXN0cnVjdCBpOTE1X3J1bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1l
X3BtOwo+PiAtCj4+ICAgCV9fX19hc3NlcnRfcnBtX3Jhd193YWtlcmVmX2hlbGQocnBtLCBhdG9t
aWNfcmVhZCgmcnBtLT53YWtlcmVmX2NvdW50KSk7Cj4+ICAgfQo+PiAgIAo+PiArc3RhdGljIGlu
bGluZSB2b2lkCj4+ICthc3NlcnRfcnBtX3Jhd193YWtlcmVmX2hlbGQoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUpCj4+ICt7Cj4+ICsJX19hc3NlcnRfcnBtX3Jhd193YWtlcmVmX2hlbGQo
Jmk5MTUtPnJ1bnRpbWVfcG0pOwo+PiArfQo+PiArCj4+ICAgc3RhdGljIGlubGluZSB2b2lkCj4+
ICAgX19hc3NlcnRfcnBtX3dha2Vsb2NrX2hlbGQoc3RydWN0IGk5MTVfcnVudGltZV9wbSAqcnBt
KQo+PiAgIHsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRp
bWVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYwo+PiBpbmRl
eCBiNGFiYWJhYmRmNmMuLjJlMjFmNTYyZGY0NCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3J1bnRpbWVfcG0uYwo+PiBAQCAtNjAsMTkgKzYwLDE5IEBACj4+ICAgICogcHJlc2Vu
dCBmb3IgYSBnaXZlbiBwbGF0Zm9ybS4KPj4gICAgKi8KPj4gICAKPj4gLXN0YXRpYyBpbnRlbF93
YWtlcmVmX3QgaW50ZWxfcnVudGltZV9wbV9nZXRfcmF3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KTsKPj4gK3N0YXRpYyBpbnRlbF93YWtlcmVmX3QgaW50ZWxfcnVudGltZV9wbV9nZXRf
cmF3KHN0cnVjdCBpOTE1X3J1bnRpbWVfcG0gKnJwbSk7Cj4+ICAgc3RhdGljIHZvaWQKPj4gLV9f
aW50ZWxfcnVudGltZV9wbV9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludGVs
X3dha2VyZWZfdCB3cmVmLAo+PiArX19pbnRlbF9ydW50aW1lX3BtX3B1dChzdHJ1Y3QgaTkxNV9y
dW50aW1lX3BtICpycG0sIGludGVsX3dha2VyZWZfdCB3cmVmLAo+PiAgIAkJICAgICAgIGJvb2wg
d2FrZWxvY2spOwo+PiAgIAo+PiAgICNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9ERUJV
R19SVU5USU1FX1BNKQo+PiAgIHN0YXRpYyB2b2lkCj4+IC1pbnRlbF9ydW50aW1lX3BtX3B1dF9y
YXcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGludGVsX3dha2VyZWZfdCB3cmVmKTsK
Pj4gK2ludGVsX3J1bnRpbWVfcG1fcHV0X3JhdyhzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0s
IGludGVsX3dha2VyZWZfdCB3cmVmKTsKPj4gICAjZWxzZQo+PiAtc3RhdGljIGlubGluZSB2b2lk
IGludGVsX3J1bnRpbWVfcG1fcHV0X3JhdyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
Pj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9ydW50aW1lX3BtX3B1dF9yYXcoc3RydWN0IGk5
MTVfcnVudGltZV9wbSAqcnBtLAo+PiAgIAkJCQkJICAgIGludGVsX3dha2VyZWZfdCB3cmVmKQo+
PiAgIHsKPj4gLQlfX2ludGVsX3J1bnRpbWVfcG1fcHV0KGk5MTUsIC0xLCBmYWxzZSk7Cj4+ICsJ
X19pbnRlbF9ydW50aW1lX3BtX3B1dChycG0sIC0xLCBmYWxzZSk7Cj4+ICAgfQo+PiAgICNlbmRp
Zgo+PiAgIAo+PiBAQCAtMTEyLDIxICsxMTIsMTggQEAgc3RhdGljIHZvaWQgX19wcmludF9kZXBv
dF9zdGFjayhkZXBvdF9zdGFja19oYW5kbGVfdCBzdGFjaywKPj4gICAJc25wcmludF9zdGFja190
cmFjZShidWYsIHN6LCAmdHJhY2UsIGluZGVudCk7Cj4+ICAgfQo+PiAgIAo+PiAtc3RhdGljIHZv
aWQgaW5pdF9pbnRlbF9ydW50aW1lX3BtX3dha2VyZWYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4+ICtzdGF0aWMgdm9pZCBpbml0X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZihzdHJ1
Y3QgaTkxNV9ydW50aW1lX3BtICpycG0pCj4+ICAgewo+PiAtCXN0cnVjdCBpOTE1X3J1bnRpbWVf
cG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwo+PiAtCj4+ICAgCXNwaW5fbG9ja19pbml0KCZy
cG0tPmRlYnVnLmxvY2spOwo+PiAgIH0KPj4gICAKPj4gICBzdGF0aWMgbm9pbmxpbmUgZGVwb3Rf
c3RhY2tfaGFuZGxlX3QKPj4gLXRyYWNrX2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZihzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gK3RyYWNrX2ludGVsX3J1bnRpbWVfcG1fd2FrZXJl
ZihzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0pCj4+ICAgewo+PiAtCXN0cnVjdCBpOTE1X3J1
bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwo+PiAgIAlkZXBvdF9zdGFja19oYW5k
bGVfdCBzdGFjaywgKnN0YWNrczsKPj4gICAJdW5zaWduZWQgbG9uZyBmbGFnczsKPj4gICAKPj4g
LQlpZiAoIUhBU19SVU5USU1FX1BNKGk5MTUpKQo+PiArCWlmICghcnBtLT5hdmFpbGFibGUpCj4+
ICAgCQlyZXR1cm4gLTE7Cj4+ICAgCj4+ICAgCXN0YWNrID0gX19zYXZlX2RlcG90X3N0YWNrKCk7
Cj4+IEBAIC0xNTMsMTAgKzE1MCw5IEBAIHRyYWNrX2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gICAJcmV0dXJuIHN0YWNrOwo+PiAgIH0K
Pj4gICAKPj4gLXN0YXRpYyB2b2lkIHVudHJhY2tfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+PiArc3RhdGljIHZvaWQgdW50cmFja19pbnRl
bF9ydW50aW1lX3BtX3dha2VyZWYoc3RydWN0IGk5MTVfcnVudGltZV9wbSAqcnBtLAo+PiAgIAkJ
CQkJICAgICBkZXBvdF9zdGFja19oYW5kbGVfdCBzdGFjaykKPj4gICB7Cj4+IC0Jc3RydWN0IGk5
MTVfcnVudGltZV9wbSAqcnBtID0gJmk5MTUtPnJ1bnRpbWVfcG07Cj4+ICAgCXVuc2lnbmVkIGxv
bmcgZmxhZ3MsIG47Cj4+ICAgCWJvb2wgZm91bmQgPSBmYWxzZTsKPj4gICAKPj4gQEAgLTI3NCw5
ICsyNzAsOCBAQCBkdW1wX2FuZF9mcmVlX3dha2VyZWZfdHJhY2tpbmcoc3RydWN0IGludGVsX3J1
bnRpbWVfcG1fZGVidWcgKmRlYnVnKQo+PiAgIH0KPj4gICAKPj4gICBzdGF0aWMgbm9pbmxpbmUg
dm9pZAo+PiAtX19pbnRlbF93YWtlcmVmX2RlY19hbmRfY2hlY2tfdHJhY2tpbmcoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+ICtfX2ludGVsX3dha2VyZWZfZGVjX2FuZF9jaGVja190
cmFja2luZyhzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0pCj4+ICAgewo+PiAtCXN0cnVjdCBp
OTE1X3J1bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwo+PiAgIAlzdHJ1Y3QgaW50
ZWxfcnVudGltZV9wbV9kZWJ1ZyBkYmcgPSB7fTsKPj4gICAJdW5zaWduZWQgbG9uZyBmbGFnczsK
Pj4gICAKPj4gQEAgLTI5Miw5ICsyODcsOCBAQCBfX2ludGVsX3dha2VyZWZfZGVjX2FuZF9jaGVj
a190cmFja2luZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gICB9Cj4+ICAgCj4+
ICAgc3RhdGljIG5vaW5saW5lIHZvaWQKPj4gLXVudHJhY2tfYWxsX2ludGVsX3J1bnRpbWVfcG1f
d2FrZXJlZnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+ICt1bnRyYWNrX2FsbF9p
bnRlbF9ydW50aW1lX3BtX3dha2VyZWZzKHN0cnVjdCBpOTE1X3J1bnRpbWVfcG0gKnJwbSkKPj4g
ICB7Cj4+IC0Jc3RydWN0IGk5MTVfcnVudGltZV9wbSAqcnBtID0gJmk5MTUtPnJ1bnRpbWVfcG07
Cj4+ICAgCXN0cnVjdCBpbnRlbF9ydW50aW1lX3BtX2RlYnVnIGRiZyA9IHt9Owo+PiAgIAl1bnNp
Z25lZCBsb25nIGZsYWdzOwo+PiAgIAo+PiBAQCAtMzQ1LDYxICszMzksNTcgQEAgdm9pZCBwcmlu
dF9pbnRlbF9ydW50aW1lX3BtX3dha2VyZWYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
Cj4+ICAgCj4+ICAgI2Vsc2UKPj4gICAKPj4gLXN0YXRpYyB2b2lkIGluaXRfaW50ZWxfcnVudGlt
ZV9wbV93YWtlcmVmKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+PiArc3RhdGljIHZv
aWQgaW5pdF9pbnRlbF9ydW50aW1lX3BtX3dha2VyZWYoc3RydWN0IGk5MTVfcnVudGltZV9wbSAq
cnBtKQo+PiAgIHsKPj4gICB9Cj4+ICAgCj4+ICAgc3RhdGljIGRlcG90X3N0YWNrX2hhbmRsZV90
Cj4+IC10cmFja19pbnRlbF9ydW50aW1lX3BtX3dha2VyZWYoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCj4+ICt0cmFja19pbnRlbF9ydW50aW1lX3BtX3dha2VyZWYoc3RydWN0IGk5MTVf
cnVudGltZV9wbSAqcnBtKQo+PiAgIHsKPj4gICAJcmV0dXJuIC0xOwo+PiAgIH0KPj4gICAKPj4g
LXN0YXRpYyB2b2lkIHVudHJhY2tfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAo+PiArc3RhdGljIHZvaWQgdW50cmFja19pbnRlbF9ydW50aW1l
X3BtX3dha2VyZWYoc3RydWN0IGk5MTVfcnVudGltZV9wbSAqcnBtLAo+PiAgIAkJCQkJICAgICBp
bnRlbF93YWtlcmVmX3Qgd3JlZikKPj4gICB7Cj4+ICAgfQo+PiAgIAo+PiAgIHN0YXRpYyB2b2lk
Cj4+IC1fX2ludGVsX3dha2VyZWZfZGVjX2FuZF9jaGVja190cmFja2luZyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKPj4gK19faW50ZWxfd2FrZXJlZl9kZWNfYW5kX2NoZWNrX3RyYWNr
aW5nKHN0cnVjdCBpOTE1X3J1bnRpbWVfcG0gKnJwbSkKPj4gICB7Cj4+IC0JYXRvbWljX2RlYygm
aTkxNS0+cnVudGltZV9wbS53YWtlcmVmX2NvdW50KTsKPj4gKwlhdG9taWNfZGVjKCZycG0tPndh
a2VyZWZfY291bnQpOwo+PiAgIH0KPj4gICAKPj4gICBzdGF0aWMgdm9pZAo+PiAtdW50cmFja19h
bGxfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKPj4gK3VudHJhY2tfYWxsX2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZnMoc3RydWN0IGk5MTVf
cnVudGltZV9wbSAqcnBtKQo+PiAgIHsKPj4gICB9Cj4+ICAgCj4+ICAgI2VuZGlmCj4+ICAgCj4+
ICAgc3RhdGljIHZvaWQKPj4gLWludGVsX3J1bnRpbWVfcG1fYWNxdWlyZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwgYm9vbCB3YWtlbG9jaykKPj4gK2ludGVsX3J1bnRpbWVfcG1fYWNx
dWlyZShzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0sIGJvb2wgd2FrZWxvY2spCj4+ICAgewo+
PiAtCXN0cnVjdCBpOTE1X3J1bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwo+PiAt
Cj4+ICAgCWlmICh3YWtlbG9jaykgewo+PiAgIAkJYXRvbWljX2FkZCgxICsgSU5URUxfUlBNX1dB
S0VMT0NLX0JJQVMsICZycG0tPndha2VyZWZfY291bnQpOwo+PiAtCQlhc3NlcnRfcnBtX3dha2Vs
b2NrX2hlbGQoaTkxNSk7Cj4+ICsJCV9fYXNzZXJ0X3JwbV93YWtlbG9ja19oZWxkKHJwbSk7Cj4+
ICAgCX0gZWxzZSB7Cj4+ICAgCQlhdG9taWNfaW5jKCZycG0tPndha2VyZWZfY291bnQpOwo+PiAt
CQlhc3NlcnRfcnBtX3Jhd193YWtlcmVmX2hlbGQoaTkxNSk7Cj4+ICsJCV9fYXNzZXJ0X3JwbV9y
YXdfd2FrZXJlZl9oZWxkKHJwbSk7Cj4+ICAgCX0KPj4gICB9Cj4+ICAgCj4+ICAgc3RhdGljIHZv
aWQKPj4gLWludGVsX3J1bnRpbWVfcG1fcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwgaW50IHdha2Vsb2NrKQo+PiAraW50ZWxfcnVudGltZV9wbV9yZWxlYXNlKHN0cnVjdCBp
OTE1X3J1bnRpbWVfcG0gKnJwbSwgaW50IHdha2Vsb2NrKQo+PiAgIHsKPj4gLQlzdHJ1Y3QgaTkx
NV9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9wbTsKPj4gLQo+PiAgIAlpZiAod2Fr
ZWxvY2spIHsKPj4gLQkJYXNzZXJ0X3JwbV93YWtlbG9ja19oZWxkKGk5MTUpOwo+PiArCQlfX2Fz
c2VydF9ycG1fd2FrZWxvY2tfaGVsZChycG0pOwo+PiAgIAkJYXRvbWljX3N1YihJTlRFTF9SUE1f
V0FLRUxPQ0tfQklBUywgJnJwbS0+d2FrZXJlZl9jb3VudCk7Cj4+ICAgCX0gZWxzZSB7Cj4+IC0J
CWFzc2VydF9ycG1fcmF3X3dha2VyZWZfaGVsZChpOTE1KTsKPj4gKwkJX19hc3NlcnRfcnBtX3Jh
d193YWtlcmVmX2hlbGQocnBtKTsKPj4gICAJfQo+PiAgIAo+PiAtCV9faW50ZWxfd2FrZXJlZl9k
ZWNfYW5kX2NoZWNrX3RyYWNraW5nKGk5MTUpOwo+PiArCV9faW50ZWxfd2FrZXJlZl9kZWNfYW5k
X2NoZWNrX3RyYWNraW5nKHJwbSk7Cj4+ICAgfQo+PiAgIAo+PiAgIGJvb2wgaW50ZWxfZGlzcGxh
eV9wb3dlcl93ZWxsX2lzX2VuYWJsZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAo+PiBAQCAtMjAzMCw3ICsyMDIwLDcgQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9ncmFiX2FzeW5j
X3B1dF9yZWYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAgIAkJZ290byBv
dXRfdmVyaWZ5Owo+PiAgIAo+PiAgIAljYW5jZWxfZGVsYXllZF93b3JrKCZwb3dlcl9kb21haW5z
LT5hc3luY19wdXRfd29yayk7Cj4+IC0JaW50ZWxfcnVudGltZV9wbV9wdXRfcmF3KGRldl9wcml2
LAo+PiArCWludGVsX3J1bnRpbWVfcG1fcHV0X3JhdygmZGV2X3ByaXYtPnJ1bnRpbWVfcG0sCj4+
ICAgCQkJCSBmZXRjaF9hbmRfemVybygmcG93ZXJfZG9tYWlucy0+YXN5bmNfcHV0X3dha2VyZWYp
KTsKPj4gICBvdXRfdmVyaWZ5Ogo+PiAgIAl2ZXJpZnlfYXN5bmNfcHV0X2RvbWFpbnNfc3RhdGUo
cG93ZXJfZG9tYWlucyk7Cj4+IEBAIC0yMjE5LDcgKzIyMDksOCBAQCBpbnRlbF9kaXNwbGF5X3Bv
d2VyX3B1dF9hc3luY193b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKPj4gICAJCWNvbnRh
aW5lcl9vZih3b3JrLCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSwKPj4gICAJCQkgICAgIHBvd2Vy
X2RvbWFpbnMuYXN5bmNfcHV0X3dvcmsud29yayk7Cj4+ICAgCXN0cnVjdCBpOTE1X3Bvd2VyX2Rv
bWFpbnMgKnBvd2VyX2RvbWFpbnMgPSAmZGV2X3ByaXYtPnBvd2VyX2RvbWFpbnM7Cj4+IC0JaW50
ZWxfd2FrZXJlZl90IG5ld193b3JrX3dha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldF9yYXco
ZGV2X3ByaXYpOwo+PiArCXN0cnVjdCBpOTE1X3J1bnRpbWVfcG0gKnJwbSA9ICZkZXZfcHJpdi0+
cnVudGltZV9wbTsKPj4gKwlpbnRlbF93YWtlcmVmX3QgbmV3X3dvcmtfd2FrZXJlZiA9IGludGVs
X3J1bnRpbWVfcG1fZ2V0X3JhdyhycG0pOwo+PiAgIAlpbnRlbF93YWtlcmVmX3Qgb2xkX3dvcmtf
d2FrZXJlZiA9IDA7Cj4+ICAgCj4+ICAgCW11dGV4X2xvY2soJnBvd2VyX2RvbWFpbnMtPmxvY2sp
Owo+PiBAQCAtMjI0OSw5ICsyMjQwLDkgQEAgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYXN5bmNf
d29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4+ICAgCW11dGV4X3VubG9jaygmcG93ZXJf
ZG9tYWlucy0+bG9jayk7Cj4+ICAgCj4+ICAgCWlmIChvbGRfd29ya193YWtlcmVmKQo+PiAtCQlp
bnRlbF9ydW50aW1lX3BtX3B1dF9yYXcoZGV2X3ByaXYsIG9sZF93b3JrX3dha2VyZWYpOwo+PiAr
CQlpbnRlbF9ydW50aW1lX3BtX3B1dF9yYXcocnBtLCBvbGRfd29ya193YWtlcmVmKTsKPj4gICAJ
aWYgKG5ld193b3JrX3dha2VyZWYpCj4+IC0JCWludGVsX3J1bnRpbWVfcG1fcHV0X3JhdyhkZXZf
cHJpdiwgbmV3X3dvcmtfd2FrZXJlZik7Cj4+ICsJCWludGVsX3J1bnRpbWVfcG1fcHV0X3Jhdyhy
cG0sIG5ld193b3JrX3dha2VyZWYpOwo+PiAgIH0KPj4gICAKPj4gICAvKioKPj4gQEAgLTIyNjks
NyArMjI2MCw4IEBAIHZvaWQgX19pbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9hc3luYyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPj4gICAJCQkJICAgICBpbnRlbF93YWtlcmVmX3Qgd2Fr
ZXJlZikKPj4gICB7Cj4+ICAgCXN0cnVjdCBpOTE1X3Bvd2VyX2RvbWFpbnMgKnBvd2VyX2RvbWFp
bnMgPSAmaTkxNS0+cG93ZXJfZG9tYWluczsKPj4gLQlpbnRlbF93YWtlcmVmX3Qgd29ya193YWtl
cmVmID0gaW50ZWxfcnVudGltZV9wbV9nZXRfcmF3KGk5MTUpOwo+PiArCXN0cnVjdCBpOTE1X3J1
bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwo+PiArCWludGVsX3dha2VyZWZfdCB3
b3JrX3dha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldF9yYXcocnBtKTsKPj4gICAKPj4gICAJ
bXV0ZXhfbG9jaygmcG93ZXJfZG9tYWlucy0+bG9jayk7Cj4+ICAgCj4+IEBAIC0yMjk2LDcgKzIy
ODgsNyBAQCB2b2lkIF9faW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYXN5bmMoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCj4+ICAgCW11dGV4X3VubG9jaygmcG93ZXJfZG9tYWlucy0+bG9j
ayk7Cj4+ICAgCj4+ICAgCWlmICh3b3JrX3dha2VyZWYpCj4+IC0JCWludGVsX3J1bnRpbWVfcG1f
cHV0X3JhdyhpOTE1LCB3b3JrX3dha2VyZWYpOwo+PiArCQlpbnRlbF9ydW50aW1lX3BtX3B1dF9y
YXcocnBtLCB3b3JrX3dha2VyZWYpOwo+PiAgIAo+PiAgIAlpbnRlbF9ydW50aW1lX3BtX3B1dChp
OTE1LCB3YWtlcmVmKTsKPj4gICB9Cj4+IEBAIC0yMzM0LDcgKzIzMjYsNyBAQCB2b2lkIGludGVs
X2Rpc3BsYXlfcG93ZXJfZmx1c2hfd29yayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
Pj4gICAJbXV0ZXhfdW5sb2NrKCZwb3dlcl9kb21haW5zLT5sb2NrKTsKPj4gICAKPj4gICAJaWYg
KHdvcmtfd2FrZXJlZikKPj4gLQkJaW50ZWxfcnVudGltZV9wbV9wdXRfcmF3KGk5MTUsIHdvcmtf
d2FrZXJlZik7Cj4+ICsJCWludGVsX3J1bnRpbWVfcG1fcHV0X3JhdygmaTkxNS0+cnVudGltZV9w
bSwgd29ya193YWtlcmVmKTsKPj4gICB9Cj4+ICAgCj4+ICAgLyoqCj4+IEBAIC00OTk2LDI0ICs0
OTg4LDIyIEBAIHN0YXRpYyB2b2lkIGludGVsX3Bvd2VyX2RvbWFpbnNfdmVyaWZ5X3N0YXRlKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+PiAgIAo+PiAgICNlbmRpZgo+PiAgIAo+PiAt
c3RhdGljIGludGVsX3dha2VyZWZfdCBfX2ludGVsX3J1bnRpbWVfcG1fZ2V0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAo+PiArc3RhdGljIGludGVsX3dha2VyZWZfdCBfX2ludGVsX3J1
bnRpbWVfcG1fZ2V0KHN0cnVjdCBpOTE1X3J1bnRpbWVfcG0gKnJwbSwKPj4gICAJCQkJCSAgICAg
IGJvb2wgd2FrZWxvY2spCj4+ICAgewo+PiAtCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaTkxNS0+
ZHJtLnBkZXY7Cj4+IC0Jc3RydWN0IGRldmljZSAqa2RldiA9ICZwZGV2LT5kZXY7Cj4+ICAgCWlu
dCByZXQ7Cj4+ICAgCj4+IC0JcmV0ID0gcG1fcnVudGltZV9nZXRfc3luYyhrZGV2KTsKPj4gKwly
ZXQgPSBwbV9ydW50aW1lX2dldF9zeW5jKHJwbS0+a2Rldik7Cj4+ICAgCVdBUk5fT05DRShyZXQg
PCAwLCAicG1fcnVudGltZV9nZXRfc3luYygpIGZhaWxlZDogJWRcbiIsIHJldCk7Cj4+ICAgCj4+
IC0JaW50ZWxfcnVudGltZV9wbV9hY3F1aXJlKGk5MTUsIHdha2Vsb2NrKTsKPj4gKwlpbnRlbF9y
dW50aW1lX3BtX2FjcXVpcmUocnBtLCB3YWtlbG9jayk7Cj4+ICAgCj4+IC0JcmV0dXJuIHRyYWNr
X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZihpOTE1KTsKPj4gKwlyZXR1cm4gdHJhY2tfaW50ZWxf
cnVudGltZV9wbV93YWtlcmVmKHJwbSk7Cj4+ICAgfQo+PiAgIAo+PiAtc3RhdGljIGludGVsX3dh
a2VyZWZfdCBpbnRlbF9ydW50aW1lX3BtX2dldF9yYXcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4+ICtzdGF0aWMgaW50ZWxfd2FrZXJlZl90IGludGVsX3J1bnRpbWVfcG1fZ2V0X3Jh
dyhzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0pCj4+ICAgewo+PiAtCXJldHVybiBfX2ludGVs
X3J1bnRpbWVfcG1fZ2V0KGk5MTUsIGZhbHNlKTsKPj4gKwlyZXR1cm4gX19pbnRlbF9ydW50aW1l
X3BtX2dldChycG0sIGZhbHNlKTsKPj4gICB9Cj4+ICAgCj4+ICAgLyoqCj4+IEBAIC01MDMwLDcg
KzUwMjAsNyBAQCBzdGF0aWMgaW50ZWxfd2FrZXJlZl90IGludGVsX3J1bnRpbWVfcG1fZ2V0X3Jh
dyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gICAgKi8KPj4gICBpbnRlbF93YWtl
cmVmX3QgaW50ZWxfcnVudGltZV9wbV9nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Cj4+ICAgewo+PiAtCXJldHVybiBfX2ludGVsX3J1bnRpbWVfcG1fZ2V0KGk5MTUsIHRydWUpOwo+
PiArCXJldHVybiBfX2ludGVsX3J1bnRpbWVfcG1fZ2V0KCZpOTE1LT5ydW50aW1lX3BtLCB0cnVl
KTsKPj4gICB9Cj4+ICAgCj4+ICAgLyoqCj4+IEBAIC01MDQ5LDIzICs1MDM5LDIyIEBAIGludGVs
X3dha2VyZWZfdCBpbnRlbF9ydW50aW1lX3BtX2dldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkKPj4gICAgKi8KPj4gICBpbnRlbF93YWtlcmVmX3QgaW50ZWxfcnVudGltZV9wbV9nZXRf
aWZfaW5fdXNlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+PiAgIHsKPj4gLQlpZiAo
SVNfRU5BQkxFRChDT05GSUdfUE0pKSB7Cj4+IC0JCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaTkx
NS0+ZHJtLnBkZXY7Cj4+IC0JCXN0cnVjdCBkZXZpY2UgKmtkZXYgPSAmcGRldi0+ZGV2Owo+PiAr
CXN0cnVjdCBpOTE1X3J1bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwo+PiAgIAo+
PiArCWlmIChJU19FTkFCTEVEKENPTkZJR19QTSkpIHsKPj4gICAJCS8qCj4+ICAgCQkgKiBJbiBj
YXNlcyBydW50aW1lIFBNIGlzIGRpc2FibGVkIGJ5IHRoZSBSUE0gY29yZSBhbmQgd2UgZ2V0Cj4+
ICAgCQkgKiBhbiAtRUlOVkFMIHJldHVybiB2YWx1ZSB3ZSBhcmUgbm90IHN1cHBvc2VkIHRvIGNh
bGwgdGhpcwo+PiAgIAkJICogZnVuY3Rpb24sIHNpbmNlIHRoZSBwb3dlciBzdGF0ZSBpcyB1bmRl
ZmluZWQuIFRoaXMgYXBwbGllcwo+PiAgIAkJICogYXRtIHRvIHRoZSBsYXRlL2Vhcmx5IHN5c3Rl
bSBzdXNwZW5kL3Jlc3VtZSBoYW5kbGVycy4KPj4gICAJCSAqLwo+PiAtCQlpZiAocG1fcnVudGlt
ZV9nZXRfaWZfaW5fdXNlKGtkZXYpIDw9IDApCj4+ICsJCWlmIChwbV9ydW50aW1lX2dldF9pZl9p
bl91c2UocnBtLT5rZGV2KSA8PSAwKQo+PiAgIAkJCXJldHVybiAwOwo+PiAgIAl9Cj4+ICAgCj4+
IC0JaW50ZWxfcnVudGltZV9wbV9hY3F1aXJlKGk5MTUsIHRydWUpOwo+PiArCWludGVsX3J1bnRp
bWVfcG1fYWNxdWlyZShycG0sIHRydWUpOwo+PiAgIAo+PiAtCXJldHVybiB0cmFja19pbnRlbF9y
dW50aW1lX3BtX3dha2VyZWYoaTkxNSk7Cj4+ICsJcmV0dXJuIHRyYWNrX2ludGVsX3J1bnRpbWVf
cG1fd2FrZXJlZihycG0pOwo+PiAgIH0KPj4gICAKPj4gICAvKioKPj4gQEAgLTUwODksMjcgKzUw
NzgsMjUgQEAgaW50ZWxfd2FrZXJlZl90IGludGVsX3J1bnRpbWVfcG1fZ2V0X2lmX2luX3VzZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gICAgKi8KPj4gICBpbnRlbF93YWtlcmVm
X3QgaW50ZWxfcnVudGltZV9wbV9nZXRfbm9yZXN1bWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4+ICAgewo+PiAtCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaTkxNS0+ZHJtLnBkZXY7
Cj4+IC0Jc3RydWN0IGRldmljZSAqa2RldiA9ICZwZGV2LT5kZXY7Cj4+ICsJc3RydWN0IGk5MTVf
cnVudGltZV9wbSAqcnBtID0gJmk5MTUtPnJ1bnRpbWVfcG07Cj4+ICAgCj4+IC0JYXNzZXJ0X3Jw
bV93YWtlbG9ja19oZWxkKGk5MTUpOwo+PiAtCXBtX3J1bnRpbWVfZ2V0X25vcmVzdW1lKGtkZXYp
Owo+PiArCV9fYXNzZXJ0X3JwbV93YWtlbG9ja19oZWxkKHJwbSk7Cj4+ICsJcG1fcnVudGltZV9n
ZXRfbm9yZXN1bWUocnBtLT5rZGV2KTsKPj4gICAKPj4gLQlpbnRlbF9ydW50aW1lX3BtX2FjcXVp
cmUoaTkxNSwgdHJ1ZSk7Cj4+ICsJaW50ZWxfcnVudGltZV9wbV9hY3F1aXJlKHJwbSwgdHJ1ZSk7
Cj4+ICAgCj4+IC0JcmV0dXJuIHRyYWNrX2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZihpOTE1KTsK
Pj4gKwlyZXR1cm4gdHJhY2tfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmKHJwbSk7Cj4+ICAgfQo+
PiAgIAo+PiAtc3RhdGljIHZvaWQgX19pbnRlbF9ydW50aW1lX3BtX3B1dChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKPj4gK3N0YXRpYyB2b2lkIF9faW50ZWxfcnVudGltZV9wbV9wdXQo
c3RydWN0IGk5MTVfcnVudGltZV9wbSAqcnBtLAo+PiAgIAkJCQkgICBpbnRlbF93YWtlcmVmX3Qg
d3JlZiwKPj4gICAJCQkJICAgYm9vbCB3YWtlbG9jaykKPj4gICB7Cj4+IC0Jc3RydWN0IHBjaV9k
ZXYgKnBkZXYgPSBpOTE1LT5kcm0ucGRldjsKPj4gLQlzdHJ1Y3QgZGV2aWNlICprZGV2ID0gJnBk
ZXYtPmRldjsKPj4gKwlzdHJ1Y3QgZGV2aWNlICprZGV2ID0gcnBtLT5rZGV2Owo+PiAgIAo+PiAt
CXVudHJhY2tfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmKGk5MTUsIHdyZWYpOwo+PiArCXVudHJh
Y2tfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmKHJwbSwgd3JlZik7Cj4+ICAgCj4+IC0JaW50ZWxf
cnVudGltZV9wbV9yZWxlYXNlKGk5MTUsIHdha2Vsb2NrKTsKPj4gKwlpbnRlbF9ydW50aW1lX3Bt
X3JlbGVhc2UocnBtLCB3YWtlbG9jayk7Cj4+ICAgCj4+ICAgCXBtX3J1bnRpbWVfbWFya19sYXN0
X2J1c3koa2Rldik7Cj4+ICAgCXBtX3J1bnRpbWVfcHV0X2F1dG9zdXNwZW5kKGtkZXYpOwo+PiBA
QCAtNTExNyw5ICs1MTA0LDkgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9ydW50aW1lX3BtX3B1dChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPj4gICAKPj4gICAjaWYgSVNfRU5BQkxFRChD
T05GSUdfRFJNX0k5MTVfREVCVUdfUlVOVElNRV9QTSkKPj4gICBzdGF0aWMgdm9pZAo+PiAtaW50
ZWxfcnVudGltZV9wbV9wdXRfcmF3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpbnRl
bF93YWtlcmVmX3Qgd3JlZikKPj4gK2ludGVsX3J1bnRpbWVfcG1fcHV0X3JhdyhzdHJ1Y3QgaTkx
NV9ydW50aW1lX3BtICpycG0sIGludGVsX3dha2VyZWZfdCB3cmVmKQo+PiAgIHsKPj4gLQlfX2lu
dGVsX3J1bnRpbWVfcG1fcHV0KGk5MTUsIHdyZWYsIGZhbHNlKTsKPj4gKwlfX2ludGVsX3J1bnRp
bWVfcG1fcHV0KHJwbSwgd3JlZiwgZmFsc2UpOwo+PiAgIH0KPj4gICAjZW5kaWYKPj4gICAKPj4g
QEAgLTUxMzcsNyArNTEyNCw3IEBAIGludGVsX3J1bnRpbWVfcG1fcHV0X3JhdyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgaW50ZWxfd2FrZXJlZl90IHdyZWYpCj4+ICAgICovCj4+ICAg
dm9pZCBpbnRlbF9ydW50aW1lX3BtX3B1dF91bmNoZWNrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCj4+ICAgewo+PiAtCV9faW50ZWxfcnVudGltZV9wbV9wdXQoaTkxNSwgLTEsIHRy
dWUpOwo+PiArCV9faW50ZWxfcnVudGltZV9wbV9wdXQoJmk5MTUtPnJ1bnRpbWVfcG0sIC0xLCB0
cnVlKTsKPj4gICB9Cj4+ICAgCj4+ICAgI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RF
QlVHX1JVTlRJTUVfUE0pCj4+IEBAIC01MTUyLDcgKzUxMzksNyBAQCB2b2lkIGludGVsX3J1bnRp
bWVfcG1fcHV0X3VuY2hlY2tlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gICAg
Ki8KPj4gICB2b2lkIGludGVsX3J1bnRpbWVfcG1fcHV0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LCBpbnRlbF93YWtlcmVmX3Qgd3JlZikKPj4gICB7Cj4+IC0JX19pbnRlbF9ydW50aW1l
X3BtX3B1dChpOTE1LCB3cmVmLCB0cnVlKTsKPj4gKwlfX2ludGVsX3J1bnRpbWVfcG1fcHV0KCZp
OTE1LT5ydW50aW1lX3BtLCB3cmVmLCB0cnVlKTsKPj4gICB9Cj4+ICAgI2VuZGlmCj4+ICAgCj4+
IEBAIC01MTY4LDggKzUxNTUsOCBAQCB2b2lkIGludGVsX3J1bnRpbWVfcG1fcHV0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LCBpbnRlbF93YWtlcmVmX3Qgd3JlZikKPj4gICAgKi8KPj4g
ICB2b2lkIGludGVsX3J1bnRpbWVfcG1fZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQo+PiAgIHsKPj4gLQlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGk5MTUtPmRybS5wZGV2Owo+
PiAtCXN0cnVjdCBkZXZpY2UgKmtkZXYgPSAmcGRldi0+ZGV2Owo+PiArCXN0cnVjdCBpOTE1X3J1
bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwo+PiArCXN0cnVjdCBkZXZpY2UgKmtk
ZXYgPSBycG0tPmtkZXY7Cj4+ICAgCj4+ICAgCS8qCj4+ICAgCSAqIERpc2FibGUgdGhlIHN5c3Rl
bSBzdXNwZW5kIGRpcmVjdCBjb21wbGV0ZSBvcHRpbWl6YXRpb24sIHdoaWNoIGNhbgo+PiBAQCAt
NTE5MCw3ICs1MTc3LDcgQEAgdm9pZCBpbnRlbF9ydW50aW1lX3BtX2VuYWJsZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4gICAJICogc28gdGhlIGRyaXZlcidzIG93biBSUE0gcmVm
ZXJlbmNlIHRyYWNraW5nIGFzc2VydHMgYWxzbyB3b3JrIG9uCj4+ICAgCSAqIHBsYXRmb3JtcyB3
aXRob3V0IFJQTSBzdXBwb3J0Lgo+PiAgIAkgKi8KPj4gLQlpZiAoIUhBU19SVU5USU1FX1BNKGk5
MTUpKSB7Cj4+ICsJaWYgKCFycG0tPmF2YWlsYWJsZSkgewo+PiAgIAkJaW50IHJldDsKPj4gICAK
Pj4gICAJCXBtX3J1bnRpbWVfZG9udF91c2VfYXV0b3N1c3BlbmQoa2Rldik7Cj4+IEBAIC01MjEw
LDggKzUxOTcsOCBAQCB2b2lkIGludGVsX3J1bnRpbWVfcG1fZW5hYmxlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQo+PiAgIAo+PiAgIHZvaWQgaW50ZWxfcnVudGltZV9wbV9kaXNhYmxl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+PiAgIHsKPj4gLQlzdHJ1Y3QgcGNpX2Rl
diAqcGRldiA9IGk5MTUtPmRybS5wZGV2Owo+PiAtCXN0cnVjdCBkZXZpY2UgKmtkZXYgPSAmcGRl
di0+ZGV2Owo+PiArCXN0cnVjdCBpOTE1X3J1bnRpbWVfcG0gKnJwbSA9ICZpOTE1LT5ydW50aW1l
X3BtOwo+PiArCXN0cnVjdCBkZXZpY2UgKmtkZXYgPSBycG0tPmtkZXY7Cj4+ICAgCj4+ICAgCS8q
IFRyYW5zZmVyIHJwbSBvd25lcnNoaXAgYmFjayB0byBjb3JlICovCj4+ICAgCVdBUk4ocG1fcnVu
dGltZV9nZXRfc3luYyhrZGV2KSA8IDAsCj4+IEBAIC01MjE5LDcgKzUyMDYsNyBAQCB2b2lkIGlu
dGVsX3J1bnRpbWVfcG1fZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4g
ICAKPj4gICAJcG1fcnVudGltZV9kb250X3VzZV9hdXRvc3VzcGVuZChrZGV2KTsKPj4gICAKPj4g
LQlpZiAoIUhBU19SVU5USU1FX1BNKGk5MTUpKQo+PiArCWlmICghcnBtLT5hdmFpbGFibGUpCj4+
ICAgCQlwbV9ydW50aW1lX3B1dChrZGV2KTsKPj4gICB9Cj4+ICAgCj4+IEBAIC01MjMzLDEwICs1
MjIwLDE3IEBAIHZvaWQgaW50ZWxfcnVudGltZV9wbV9jbGVhbnVwKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQo+PiAgIAkgICAgIGludGVsX3JwbV9yYXdfd2FrZXJlZl9jb3VudChjb3Vu
dCksCj4+ICAgCSAgICAgaW50ZWxfcnBtX3dha2Vsb2NrX2NvdW50KGNvdW50KSk7Cj4+ICAgCj4+
IC0JdW50cmFja19hbGxfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmcyhpOTE1KTsKPj4gKwl1bnRy
YWNrX2FsbF9pbnRlbF9ydW50aW1lX3BtX3dha2VyZWZzKHJwbSk7Cj4+ICAgfQo+PiAgIAo+PiAg
IHZvaWQgaW50ZWxfcnVudGltZV9wbV9pbml0X2Vhcmx5KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQo+PiAgIHsKPj4gLQlpbml0X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZihpOTE1KTsK
Pj4gKwlzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9wbTsKPj4g
KwlzdHJ1Y3QgcGNpX2RldiAqcGRldiA9IGk5MTUtPmRybS5wZGV2Owo+PiArCXN0cnVjdCBkZXZp
Y2UgKmtkZXYgPSAmcGRldi0+ZGV2Owo+PiArCj4+ICsJcnBtLT5rZGV2ID0ga2RldjsKPj4gKwly
cG0tPmF2YWlsYWJsZSA9IEhBU19SVU5USU1FX1BNKGk5MTUpOwo+PiArCj4+ICsJaW5pdF9pbnRl
bF9ydW50aW1lX3BtX3dha2VyZWYocnBtKTsKPj4gICB9Cj4gCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
