Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 177E629295
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:13:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71F0A6E0A1;
	Fri, 24 May 2019 08:13:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4816E0A1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:13:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 01:13:16 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by orsmga003.jf.intel.com with ESMTP; 24 May 2019 01:13:15 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
Date: Fri, 24 May 2019 09:13:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524064529.20514-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [BrownBag] drm/i915/gtt: Neuter the deferred unbind
 callback from gen6_ppgtt_cleanup
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI0LzA1LzIwMTkgMDc6NDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBIYXZpbmcgZGVmZXJy
ZWQgdGhlIHZtYSBkZXN0cnVjdGlvbiB0byBhIHdvcmtlciB3aGVyZSB3ZSBjYW4gYWNxdWlyZSB0
aGUKPiBzdHJ1Y3RfbXV0ZXgsIHdlIGhhdmUgdG8gYXZvaWQgY2hhc2luZyBiYWNrIGludG8gdGhl
IG5vdyBkZXN0cm95ZWQKPiBwcGd0dC4gVGhlIHBkX3ZtYSBpcyBzcGVjaWFsIGluIGhhdmluZyBh
IGN1c3RvbSB1bmJpbmQgZnVuY3Rpb24gdG8gc2Nhbgo+IGZvciB1bnVzZWQgcGFnZXMgZGVzcGl0
ZSB0aGUgVk1BIGl0c2VsZiBiZWluZyBub3Rpb25hbGx5IHBhcnQgb2YgdGhlCj4gR0dUVC4gQXMg
c3VjaCwgd2UgbmVlZCB0byBkaXNhYmxlIHRoYXQgY2FsbGJhY2sgdG8gYXZvaWQgYQo+IHVzZS1h
ZnRlci1mcmVlLgo+IAo+IFRoaXMgdW5mb3J0dW5hdGVseSBibGV3IHVwIHNvIGVhcmx5IGR1cmlu
ZyBib290IHRoYXQgQ0kgZGVjbGFyZWQgdGhlCj4gbWFjaGluZSB1bnJlYWNoYWJsZSBhcyBvcHBv
c2VkIHRvIGJlaW5nIHRoZSBtYWpvciBmYWlsdXJlIGl0IHdhcy4gT29wcy4KPiAKPiBGaXhlczog
ZDM2MjIwOTljNzZmICgiZHJtL2k5MTUvZ3R0OiBBbHdheXMgYWNxdWlyZSBzdHJ1Y3RfbXV0ZXgg
Zm9yIGdlbjZfcHBndHRfY2xlYW51cCIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4gQ2M6IFRvbWkgU2FydmVsYSA8dG9taS5wLnNhcnZlbGFAaW50ZWwu
Y29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAyOCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gaW5kZXggOGQ4YTRi
MGFkNGQ5Li4yNjZiYWExMWRmNjQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
Ywo+IEBAIC0xODQ3LDYgKzE4NDcsMzMgQEAgc3RhdGljIHZvaWQgZ2VuNl9wcGd0dF9jbGVhbnVw
X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3cmspCj4gICAJa2ZyZWUod29yayk7Cj4gICB9Cj4g
ICAKPiArc3RhdGljIGludCBub3Bfc2V0X3BhZ2VzKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+ICt7
Cj4gKwlyZXR1cm4gLUVOT0RFVjsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgbm9wX2NsZWFyX3Bh
Z2VzKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+ICt7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgbm9w
X2JpbmQoc3RydWN0IGk5MTVfdm1hICp2bWEsCj4gKwkJICAgIGVudW0gaTkxNV9jYWNoZV9sZXZl
bCBjYWNoZV9sZXZlbCwKPiArCQkgICAgdTMyIHVudXNlZCkKPiArewo+ICsJcmV0dXJuIC1FTk9E
RVY7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIG5vcF91bmJpbmQoc3RydWN0IGk5MTVfdm1hICp2
bWEpCj4gK3sKPiArfQo+ICsKPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3ZtYV9vcHMgbm9w
X3ZtYV9vcHMgPSB7Cj4gKwkuc2V0X3BhZ2VzID0gbm9wX3NldF9wYWdlcywKPiArCS5jbGVhcl9w
YWdlcyA9IG5vcF9jbGVhcl9wYWdlcywKPiArCS5iaW5kX3ZtYSA9IG5vcF9iaW5kLAo+ICsJLnVu
YmluZF92bWEgPSBub3BfdW5iaW5kLAo+ICt9Owo+ICsKPiAgIHN0YXRpYyB2b2lkIGdlbjZfcHBn
dHRfY2xlYW51cChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKPiAgIHsKPiAgIAlzdHJ1
Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQgPSB0b19nZW42X3BwZ3R0KGk5MTVfdm1fdG9fcHBndHQo
dm0pKTsKPiBAQCAtMTg1NSw2ICsxODgyLDcgQEAgc3RhdGljIHZvaWQgZ2VuNl9wcGd0dF9jbGVh
bnVwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQo+ICAgCS8qIEZJWE1FIHJlbW92ZSB0
aGUgc3RydWN0X211dGV4IHRvIGJyaW5nIHRoZSBsb2NraW5nIHVuZGVyIGNvbnRyb2wgKi8KPiAg
IAlJTklUX1dPUksoJndvcmstPmJhc2UsIGdlbjZfcHBndHRfY2xlYW51cF93b3JrKTsKPiAgIAl3
b3JrLT52bWEgPSBwcGd0dC0+dm1hOwo+ICsJd29yay0+dm1hLT5vcHMgPSAmbm9wX3ZtYV9vcHM7
CgpDb3VsZCB3ZSB1c2Ugc29tZSBhc3NlcnRzIGJlZm9yZSBvdmVycmlkaW5nIHRoZSB2bWEgb3Bz
PyBMaWtlIApHRU1fQlVHX09OKHZtYS0+cGFnZXMpPyBBbmQgc29tZXRoaW5nIGZvciBzdGlsbCBi
b3VuZD8KCj4gICAJc2NoZWR1bGVfd29yaygmd29yay0+YmFzZSk7Cj4gICAKPiAgIAlnZW42X3Bw
Z3R0X2ZyZWVfcGQocHBndHQpOwo+IAoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
