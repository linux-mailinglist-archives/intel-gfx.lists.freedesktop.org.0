Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A392F3BFC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 00:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7786F7FC;
	Thu,  7 Nov 2019 23:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1026F7FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 23:11:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 15:11:00 -0800
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="206296219"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.155])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 15:10:59 -0800
Date: Thu, 7 Nov 2019 15:10:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191107231052.vl5fezichmu2xle6@ldmartin-desk1>
References: <20191107214559.77087-1-jose.souza@intel.com>
 <20191107214559.77087-3-jose.souza@intel.com>
 <20191107224451.oe7pjygu2emjhqoo@ldmartin-desk1>
 <752d008bee9b89b4b17836c0d57d708cbf44d0c0.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <752d008bee9b89b4b17836c0d57d708cbf44d0c0.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display/mst: Enable virtual
 channel payload allocation earlier
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBOb3YgMDcsIDIwMTkgYXQgMTA6NTY6MDlQTSArMDAwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPk9uIFRodSwgMjAxOS0xMS0wNyBhdCAxNDo0NCAtMDgwMCwgTHVjYXMgRGUgTWFyY2hpIHdy
b3RlOgo+PiBPbiBUaHUsIE5vdiAwNywgMjAxOSBhdCAwMTo0NTo1OVBNIC0wODAwLCBKb3NlIFNv
dXphIHdyb3RlOgo+PiA+IFRoaXMgcmVnaXN0ZXIgd2FzIGJlaW5nIGVuYWJsZWQgYWZ0ZXIgZW5h
YmxlIFRSQU5TX0RESV9GVU5DX0NUTCBhbmQKPj4gPiBQSVBFQ09ORi9UUkFOU19DT05GIHdoaWxl
IEJTcGVjIHN0YXRlcyB0aGF0IGl0IHNob3VsZCBiZSBzZXQgd2hlbgo+PiA+IGVuYWJsaW5nIFRS
QU5TX0RESV9GVU5DX0NUTC4KPj4gPgo+PiA+IEJTcGVjOiA0OTE5MAo+Pgo+PiBub3Qgd2hhdCBJ
IHJlYWQgaGVyZS4KPj4KPj4gOGouIENvbmZpZ3VyZSBUUkFOU19ERElfRlVOQ19DVEwyIGlmIHBv
cnQgc3luYyBtb2RlIG5lZWRzIHRvIGJlCj4+IGNvbmZpZ3VyZWQuCj4+IFRoZW4gY29uZmlndXJl
IGFuZCBlbmFibGUgVFJBTlNfRERJX0ZVTkNfQ1RMLgo+Cj5XZSBjYWxsIGljbF9lbmFibGVfdHJh
bnNfcG9ydF9zeW5jKCkgaW4gaGFzd2VsbF9jcnRjX2VuYWJsZSgpIGFuZCB0aGVuCj5hIGZldyBs
aW5lcyBsYXRlciBpbnRlbF9kZGlfZW5hYmxlX3RyYW5zY29kZXJfZnVuYygpLCBpZiBub3QgZG8g
dGhhdAo+cmlnaHQgYXdheSB3YXMgYSBwcm9ibGVtIHBlb3BsZSB3b3JraW5nIGluIHBvcnQgc3lu
YyB3b3VsZCBnZXQgdGhpcwo+aXNzdWUuCgpub3Qgd2hhdCBJIG1lYW50LiBJIG1lYW50IHRoZSBz
cGVjIHNheXMgdG8gZW5hYmxlIFRSQU5TX0RESV9GVU5DX0NUTCwKZG8gc3RlcCA4aywgYW5kIHRo
ZW4gZW5hYmxlIHBpcGUgVkMgcGF5bG9hZCBhbGxvY2F0aW9uLgoKV2UgYXJlbid0IGRvaW5nIHN0
ZXAgOGsgYW55d2hlcmUgdGhvdWdoLCBhcyBJIG5vdGVkIGJlbG93LgoKTHVjYXMgRGUgTWFyY2hp
Cgo+Cj4+Cj4+IDhsLiBJZiBEaXNwbGF5UG9ydCBtdWx0aXN0cmVhbSAtIEVuYWJsZSBwaXBlIFZD
IHBheWxvYWQgYWxsb2NhdGlvbiBpbgo+PiBUUkFOU19ERElfRlVOQ19DVEwKPj4KPj4gQnV0IHll
cywgdGhpcyBuZWVkcyB0byBiZSBkb25lIGJlZm9yZSBUUkFOU19DT05GLgo+Pgo+PiA+IEJTcGVj
OiAyMjI0Mwo+Pgo+PiBzYW1lIGhlcmUuICBCdXQgYXMgbG9uZyBhcyB3ZSBkb24ndCBkbyBzdGVw
IDhrLCBJIHRoaW5rIHRoZXkgY2FuIGluCj4+IGZhY3QKPj4gYmUgY29tYmluZWQuCj4+Cj4+IFRo
ZXNlIGNvdmVyIFRHTCBhbmQgSUNMIG9ubHksIHdoaWxlIHRoZSBjb2RlIGdvZXMgdW50aWwgaGFz
d2VsbC4gQXJlCj4+IHlvdQo+PiBzdXJlIGl0J3Mgc2FmZSBmb3IgdGhlIG90aGVycz8KPj4KPgo+
SSBoYWQgb25seSBjaGVja2VkIGlmIHRoZSByZWdpc3RlciBleGlzdCBzaW5jZSBIU1cgYnV0IG5v
dyBJIGNoZWNrZWQKPkhTVywgQkRXIGFuZCBTS0wgc2VxdWVuY2UgYWxsIG9mIHRoZW4gcmVxdWly
ZXMgdGhpcy4KPgo+QlNwZWM6IDQyMjMKPkJTcGVjOiA0MTYzCj5CU3BlYzogNDIzMQo+Cj4KPj4g
dGhhbmtzCj4+IEx1Y2FzIERlIE1hcmNoaQo+Pgo+PiA+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPj4gPiAtLS0KPj4gPiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8IDE4ICsrLS0tLS0tLS0tLS0tLS0t
Cj4+ID4gLQo+PiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgIDYgLS0tLS0tCj4+ID4gMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIyIGRl
bGV0aW9ucygtKQo+PiA+Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMKPj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKPj4gPiBpbmRleCAzOThjNmYwNTRhNmUuLjNkNWZjZTg3ODYwMCAxMDA2NDQKPj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+PiA+IEBAIC0xODAz
LDIyICsxODAzLDYgQEAgdm9pZCBpbnRlbF9kZGlfc2V0X2RwX21zYShjb25zdCBzdHJ1Y3QKPj4g
PiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+PiA+IAlJOTE1X1dSSVRFKFRSQU5TX01T
QV9NSVNDKGNwdV90cmFuc2NvZGVyKSwgdGVtcCk7Cj4+ID4gfQo+PiA+Cj4+ID4gLXZvaWQgaW50
ZWxfZGRpX3NldF92Y19wYXlsb2FkX2FsbG9jKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
Cj4+ID4gKmNydGNfc3RhdGUsCj4+ID4gLQkJCQkgICAgYm9vbCBzdGF0ZSkKPj4gPiAtewo+PiA+
IC0Jc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVh
cGkuY3J0Yyk7Cj4+ID4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGNydGMtPmJhc2UuZGV2KTsKPj4gPiAtCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2Rl
ciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOwo+PiA+IC0JdTMyIHRlbXA7Cj4+ID4gLQo+
PiA+IC0JdGVtcCA9IEk5MTVfUkVBRChUUkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIp
KTsKPj4gPiAtCWlmIChzdGF0ZSA9PSB0cnVlKQo+PiA+IC0JCXRlbXAgfD0gVFJBTlNfRERJX0RQ
X1ZDX1BBWUxPQURfQUxMT0M7Cj4+ID4gLQllbHNlCj4+ID4gLQkJdGVtcCAmPSB+VFJBTlNfRERJ
X0RQX1ZDX1BBWUxPQURfQUxMT0M7Cj4+ID4gLQlJOTE1X1dSSVRFKFRSQU5TX0RESV9GVU5DX0NU
TChjcHVfdHJhbnNjb2RlciksIHRlbXApOwo+PiA+IC19Cj4+ID4gLQo+PiA+IC8qCj4+ID4gICog
UmV0dXJucyB0aGUgVFJBTlNfRERJX0ZVTkNfQ1RMIHZhbHVlIGJhc2VkIG9uIENSVEMgc3RhdGUu
Cj4+ID4gICoKPj4gPiBAQCAtMTkyNCw2ICsxOTA4LDggQEAgdm9pZCBpbnRlbF9kZGlfZW5hYmxl
X3RyYW5zY29kZXJfZnVuYyhjb25zdAo+PiA+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQo+PiA+IAl1MzIgdGVtcDsKPj4gPgo+PiA+IAl0ZW1wID0gaW50ZWxfZGRpX3RyYW5z
Y29kZXJfZnVuY19yZWdfdmFsX2dldChjcnRjX3N0YXRlKTsKPj4gPiArCWlmIChpbnRlbF9jcnRj
X2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpKQo+PiA+ICsJCXRlbXAg
fD0gVFJBTlNfRERJX0RQX1ZDX1BBWUxPQURfQUxMT0M7Cj4+ID4gCUk5MTVfV1JJVEUoVFJBTlNf
RERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSwgdGVtcCk7Cj4+ID4gfQo+PiA+Cj4+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+PiA+IGlu
ZGV4IDU1MWRlMmJhYTU2OS4uM2I0YWVhMjUzZjhjIDEwMDY0NAo+PiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gPiBAQCAtNjY3MCw5ICs2Njcw
LDYgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9jcnRjX2VuYWJsZShzdHJ1Y3QKPj4gPiBpbnRlbF9j
cnRjX3N0YXRlICpwaXBlX2NvbmZpZywKPj4gPiAJaWYgKHBpcGVfY29uZmlnLT5oYXNfcGNoX2Vu
Y29kZXIpCj4+ID4gCQlscHRfcGNoX2VuYWJsZShzdGF0ZSwgcGlwZV9jb25maWcpOwo+PiA+Cj4+
ID4gLQlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShwaXBlX2NvbmZpZywgSU5URUxfT1VUUFVUX0RQ
X01TVCkpCj4+ID4gLQkJaW50ZWxfZGRpX3NldF92Y19wYXlsb2FkX2FsbG9jKHBpcGVfY29uZmln
LCB0cnVlKTsKPj4gPiAtCj4+ID4gCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoY3J0Yyk7Cj4+ID4g
CWludGVsX2NydGNfdmJsYW5rX29uKHBpcGVfY29uZmlnKTsKPj4gPgo+PiA+IEBAIC02NzgzLDkg
KzY3ODAsNiBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2NydGNfZGlzYWJsZShzdHJ1Y3QKPj4gPiBp
bnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKPj4gPiAJaWYgKCF0cmFuc2NvZGVyX2lz
X2RzaShjcHVfdHJhbnNjb2RlcikpCj4+ID4gCQlpbnRlbF9kaXNhYmxlX3BpcGUob2xkX2NydGNf
c3RhdGUpOwo+PiA+Cj4+ID4gLQlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShvbGRfY3J0Y19zdGF0
ZSwgSU5URUxfT1VUUFVUX0RQX01TVCkpCj4+ID4gLQkJaW50ZWxfZGRpX3NldF92Y19wYXlsb2Fk
X2FsbG9jKG9sZF9jcnRjX3N0YXRlLCBmYWxzZSk7Cj4+ID4gLQo+PiA+IAlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMSkKPj4gPiAJCWljbF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9zeW5j
KG9sZF9jcnRjX3N0YXRlKTsKPj4gPgo+PiA+IC0tCj4+ID4gMi4yNC4wCj4+ID4KPj4gPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiA+IEludGVsLWdm
eCBtYWlsaW5nIGxpc3QKPj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+ID4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
Pl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5JbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
