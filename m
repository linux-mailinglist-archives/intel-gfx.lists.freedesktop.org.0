Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9089624D5B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 12:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E143C892EA;
	Tue, 21 May 2019 10:56:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46787892E5;
 Tue, 21 May 2019 10:56:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 03:56:35 -0700
X-ExtLoop1: 1
Received: from asaudi-mobl.ger.corp.intel.com (HELO [10.249.47.52])
 ([10.249.47.52])
 by orsmga005.jf.intel.com with ESMTP; 21 May 2019 03:56:31 -0700
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
 <20190520082216.26273-30-daniel.vetter@ffwll.ch>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <b91a6f78-43c2-796c-62f1-f84f2973c174@linux.intel.com>
Date: Tue, 21 May 2019 12:56:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520082216.26273-30-daniel.vetter@ffwll.ch>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 29/33] fbcon: replace
 FB_EVENT_MODE_CHANGE/_ALL with direct calls
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
Cc: Daniel Thompson <daniel.thompson@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Yisheng Xie <ysxie@foxmail.com>, Mikulas Patocka <mpatocka@redhat.com>,
 linux-fbdev@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Lee Jones <lee.jones@linaro.org>, Peter Rosin <peda@axentia.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjAtMDUtMjAxOSBvbSAxMDoyMiBzY2hyZWVmIERhbmllbCBWZXR0ZXI6Cj4gQ3JlYXRlIGEg
bmV3IHdyYXBwZXIgZnVuY3Rpb24gZm9yIHRoaXMsIGZlZWxzIGxpa2UgdGhlcmUncyBzb21lCj4g
cmVmYWN0b3Jpbmcgcm9vbSBoZXJlIGJldHdlZW4gdGhlIHR3byBtb2Rlcy4KPgo+IFNpZ25lZC1v
ZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBMZWUg
Sm9uZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IENjOiBEYW5pZWwgVGhvbXBzb24gPGRhbmll
bC50aG9tcHNvbkBsaW5hcm8ub3JnPgo+IENjOiBKaW5nb28gSGFuIDxqaW5nb29oYW4xQGdtYWls
LmNvbT4KPiBDYzogQmFydGxvbWllaiBab2xuaWVya2lld2ljeiA8Yi56b2xuaWVya2llQHNhbXN1
bmcuY29tPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENj
OiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+IENjOiBZaXNoZW5nIFhpZSA8
eXN4aWVAZm94bWFpbC5jb20+Cj4gQ2M6ICJNaWNoYcWCIE1pcm9zxYJhdyIgPG1pcnEtbGludXhA
cmVyZS5xbXFtLnBsPgo+IENjOiBQZXRlciBSb3NpbiA8cGVkYUBheGVudGlhLnNlPgo+IENjOiBN
aWt1bGFzIFBhdG9ja2EgPG1wYXRvY2thQHJlZGhhdC5jb20+Cj4gQ2M6IGxpbnV4LWZiZGV2QHZn
ZXIua2VybmVsLm9yZwo+IC0tLQo+ICBkcml2ZXJzL3ZpZGVvL2JhY2tsaWdodC9sY2QuYyAgICAg
ICAgICB8ICAyIC0tCj4gIGRyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYmNvbi5jICAgICAgIHwg
MTUgKysrKysrKysrLS0tLS0tCj4gIGRyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jICAg
ICAgIHwgMTMgKystLS0tLS0tLS0tLQo+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L3NoX21vYmlsZV9s
Y2RjZmIuYyB8IDExICstLS0tLS0tLS0tCj4gIGluY2x1ZGUvbGludXgvZmIuaCAgICAgICAgICAg
ICAgICAgICAgIHwgIDQgLS0tLQo+ICBpbmNsdWRlL2xpbnV4L2ZiY29uLmggICAgICAgICAgICAg
ICAgICB8ICAyICsrCj4gIDYgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMzMgZGVs
ZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9iYWNrbGlnaHQvbGNkLmMg
Yi9kcml2ZXJzL3ZpZGVvL2JhY2tsaWdodC9sY2QuYwo+IGluZGV4IDRiNDBjNmE0ZDQ0MS4uMTYy
OTgwNDFiMTQxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdmlkZW8vYmFja2xpZ2h0L2xjZC5jCj4g
KysrIGIvZHJpdmVycy92aWRlby9iYWNrbGlnaHQvbGNkLmMKPiBAQCAtMzIsOCArMzIsNiBAQCBz
dGF0aWMgaW50IGZiX25vdGlmaWVyX2NhbGxiYWNrKHN0cnVjdCBub3RpZmllcl9ibG9jayAqc2Vs
ZiwKPiAgCS8qIElmIHdlIGFyZW4ndCBpbnRlcmVzdGVkIGluIHRoaXMgZXZlbnQsIHNraXAgaXQg
aW1tZWRpYXRlbHkgLi4uICovCj4gIAlzd2l0Y2ggKGV2ZW50KSB7Cj4gIAljYXNlIEZCX0VWRU5U
X0JMQU5LOgo+IC0JY2FzZSBGQl9FVkVOVF9NT0RFX0NIQU5HRToKPiAtCWNhc2UgRkJfRVZFTlRf
TU9ERV9DSEFOR0VfQUxMOgo+ICAJY2FzZSBGQl9FQVJMWV9FVkVOVF9CTEFOSzoKPiAgCWNhc2Ug
RkJfUl9FQVJMWV9FVkVOVF9CTEFOSzoKPiAgCQlicmVhazsKCkJlbG93IGl0IHBlcmZvcm1zIGEg
Y2FsbCB0byBzZXRfbW9kZSgpIGlmIGl0J3Mgbm9uZSBvZiB0aGUgYmxhbmtpbmcgZXZlbnRzOyBp
dCBjYW4gYmUgcmVtb3ZlZC4gOikKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdmlkZW8vZmJkZXYv
Y29yZS9mYmNvbi5jIGIvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMKPiBpbmRleCBj
MWE3NDc2ZTk4MGYuLjhjYzYyZDM0MDM4NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3ZpZGVvL2Zi
ZGV2L2NvcmUvZmJjb24uYwo+ICsrKyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYmNvbi5j
Cj4gQEAgLTMwMDUsNiArMzAwNSwxNSBAQCBzdGF0aWMgdm9pZCBmYmNvbl9zZXRfYWxsX3Zjcyhz
dHJ1Y3QgZmJfaW5mbyAqaW5mbykKPiAgCQlmYmNvbl9tb2RlY2hhbmdlZChpbmZvKTsKPiAgfQo+
ICAKPiArCj4gK3ZvaWQgZmJjb25fdXBkYXRlX3ZjcyhzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgYm9v
bCBhbGwpCj4gK3sKPiArCWlmIChhbGwpCj4gKwkJZmJjb25fc2V0X2FsbF92Y3MoaW5mbyk7Cj4g
KwllbHNlCj4gKwkJZmJjb25fbW9kZWNoYW5nZWQoaW5mbyk7Cj4gK30KPiArCj4gIGludCBmYmNv
bl9tb2RlX2RlbGV0ZWQoc3RydWN0IGZiX2luZm8gKmluZm8sCj4gIAkJICAgICAgIHN0cnVjdCBm
Yl92aWRlb21vZGUgKm1vZGUpCj4gIHsKPiBAQCAtMzMxNCwxMiArMzMyMyw2IEBAIHN0YXRpYyBp
bnQgZmJjb25fZXZlbnRfbm90aWZ5KHN0cnVjdCBub3RpZmllcl9ibG9jayAqc2VsZiwKPiAgCWlu
dCBpZHgsIHJldCA9IDA7Cj4gIAo+ICAJc3dpdGNoKGFjdGlvbikgewo+IC0JY2FzZSBGQl9FVkVO
VF9NT0RFX0NIQU5HRToKPiAtCQlmYmNvbl9tb2RlY2hhbmdlZChpbmZvKTsKPiAtCQlicmVhazsK
PiAtCWNhc2UgRkJfRVZFTlRfTU9ERV9DSEFOR0VfQUxMOgo+IC0JCWZiY29uX3NldF9hbGxfdmNz
KGluZm8pOwo+IC0JCWJyZWFrOwo+ICAJY2FzZSBGQl9FVkVOVF9TRVRfQ09OU09MRV9NQVA6Cj4g
IAkJLyogY2FsbGVkIHdpdGggY29uc29sZSBsb2NrIGhlbGQgKi8KPiAgCQljb24yZmIgPSBldmVu
dC0+ZGF0YTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMg
Yi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJtZW0uYwo+IGluZGV4IGNiZDU4YmE4YTU5ZC4u
NTViODgxNjNlZGMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdmlkZW8vZmJkZXYvY29yZS9mYm1l
bS5jCj4gKysrIGIvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZibWVtLmMKPiBAQCAtMTAzOSwx
NyArMTAzOSw4IEBAIGZiX3NldF92YXIoc3RydWN0IGZiX2luZm8gKmluZm8sIHN0cnVjdCBmYl92
YXJfc2NyZWVuaW5mbyAqdmFyKQo+ICAJICAgICFsaXN0X2VtcHR5KCZpbmZvLT5tb2RlbGlzdCkp
Cj4gIAkJcmV0ID0gZmJfYWRkX3ZpZGVvbW9kZSgmbW9kZSwgJmluZm8tPm1vZGVsaXN0KTsKPiAg
Cj4gLQlpZiAoIXJldCAmJiAoZmxhZ3MgJiBGQklORk9fTUlTQ19VU0VSRVZFTlQpKSB7Cj4gLQkJ
c3RydWN0IGZiX2V2ZW50IGV2ZW50Owo+IC0JCWludCBldm50ID0gKGFjdGl2YXRlICYgRkJfQUNU
SVZBVEVfQUxMKSA/Cj4gLQkJCUZCX0VWRU5UX01PREVfQ0hBTkdFX0FMTCA6Cj4gLQkJCUZCX0VW
RU5UX01PREVfQ0hBTkdFOwo+IC0KPiAtCQlpbmZvLT5mbGFncyAmPSB+RkJJTkZPX01JU0NfVVNF
UkVWRU5UOwo+IC0JCWV2ZW50LmluZm8gPSBpbmZvOwo+IC0JCWV2ZW50LmRhdGEgPSAmbW9kZTsK
PiAtCQlmYl9ub3RpZmllcl9jYWxsX2NoYWluKGV2bnQsICZldmVudCk7Cj4gLQl9Cj4gKwlpZiAo
IXJldCAmJiAoZmxhZ3MgJiBGQklORk9fTUlTQ19VU0VSRVZFTlQpKQo+ICsJCWZiY29uX3VwZGF0
ZV92Y3MoaW5mbywgYWN0aXZhdGUgJiBGQl9BQ1RJVkFURV9BTEwpOwo+ICAKPiAgCXJldHVybiBy
ZXQ7Cj4gIH0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi9zaF9tb2JpbGVfbGNk
Y2ZiLmMgYi9kcml2ZXJzL3ZpZGVvL2ZiZGV2L3NoX21vYmlsZV9sY2RjZmIuYwo+IGluZGV4IDBk
N2EwNDQ4NTJkNy4uYmIxYTYxMGQwMzYzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdmlkZW8vZmJk
ZXYvc2hfbW9iaWxlX2xjZGNmYi5jCj4gKysrIGIvZHJpdmVycy92aWRlby9mYmRldi9zaF9tb2Jp
bGVfbGNkY2ZiLmMKPiBAQCAtMTc3Niw4ICsxNzc2LDYgQEAgc3RhdGljIHZvaWQgc2hfbW9iaWxl
X2ZiX3JlY29uZmlnKHN0cnVjdCBmYl9pbmZvICppbmZvKQo+ICAJc3RydWN0IHNoX21vYmlsZV9s
Y2RjX2NoYW4gKmNoID0gaW5mby0+cGFyOwo+ICAJc3RydWN0IGZiX3Zhcl9zY3JlZW5pbmZvIHZh
cjsKPiAgCXN0cnVjdCBmYl92aWRlb21vZGUgbW9kZTsKPiAtCXN0cnVjdCBmYl9ldmVudCBldmVu
dDsKPiAtCWludCBldm50ID0gRkJfRVZFTlRfTU9ERV9DSEFOR0VfQUxMOwo+ICAKPiAgCWlmIChj
aC0+dXNlX2NvdW50ID4gMSB8fCAoY2gtPnVzZV9jb3VudCA9PSAxICYmICFpbmZvLT5mYmNvbl9w
YXIpKQo+ICAJCS8qIE1vcmUgZnJhbWVidWZmZXIgdXNlcnMgYXJlIGFjdGl2ZSAqLwo+IEBAIC0x
Nzk5LDE0ICsxNzk3LDcgQEAgc3RhdGljIHZvaWQgc2hfbW9iaWxlX2ZiX3JlY29uZmlnKHN0cnVj
dCBmYl9pbmZvICppbmZvKQo+ICAJCS8qIENvdWxkbid0IHJlY29uZmlndXJlLCBob3BlZnVsbHks
IGNhbiBjb250aW51ZSBhcyBiZWZvcmUgKi8KPiAgCQlyZXR1cm47Cj4gIAo+IC0JLyoKPiAtCSAq
IGZiX3NldF92YXIoKSBjYWxscyB0aGUgbm90aWZpZXIgY2hhbmdlIGludGVybmFsbHksIG9ubHkg
aWYKPiAtCSAqIEZCSU5GT19NSVNDX1VTRVJFVkVOVCBmbGFnIGlzIHNldC4gU2luY2Ugd2UgZG8g
bm90IHdhbnQgdG8gZmFrZSBhCj4gLQkgKiB1c2VyIGV2ZW50LCB3ZSBoYXZlIHRvIGNhbGwgdGhl
IGNoYWluIG91cnNlbHZlcy4KPiAtCSAqLwo+IC0JZXZlbnQuaW5mbyA9IGluZm87Cj4gLQlldmVu
dC5kYXRhID0gJmNoLT5kaXNwbGF5Lm1vZGU7Cj4gLQlmYl9ub3RpZmllcl9jYWxsX2NoYWluKGV2
bnQsICZldmVudCk7Cj4gKwlmYmNvbl91cGRhdGVfdmNzKGluZm8sIHRydWUpOwo+ICB9Cj4gIAo+
ICAvKgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2ZiLmggYi9pbmNsdWRlL2xpbnV4L2Zi
LmgKPiBpbmRleCA0YjliODgyZjhmNTIuLjU0ZDZiZWUwOTEyMSAxMDA2NDQKPiAtLS0gYS9pbmNs
dWRlL2xpbnV4L2ZiLmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2ZiLmgKPiBAQCAtMTI0LDE2ICsx
MjQsMTIgQEAgc3RydWN0IGZiX2N1cnNvcl91c2VyIHsKPiAgICogUmVnaXN0ZXIvdW5yZWdpc3Rl
ciBmb3IgZnJhbWVidWZmZXIgZXZlbnRzCj4gICAqLwo+ICAKPiAtLyoJVGhlIHJlc29sdXRpb24g
b2YgdGhlIHBhc3NlZCBpbiBmYl9pbmZvIGFib3V0IHRvIGNoYW5nZSAqLyAKPiAtI2RlZmluZSBG
Ql9FVkVOVF9NT0RFX0NIQU5HRQkJMHgwMQo+ICAvKiAgICAgIENPTlNPTEUtU1BFQ0lGSUM6IGdl
dCBjb25zb2xlIHRvIGZyYW1lYnVmZmVyIG1hcHBpbmcgKi8KPiAgI2RlZmluZSBGQl9FVkVOVF9H
RVRfQ09OU09MRV9NQVAgICAgICAgIDB4MDcKPiAgLyogICAgICBDT05TT0xFLVNQRUNJRklDOiBz
ZXQgY29uc29sZSB0byBmcmFtZWJ1ZmZlciBtYXBwaW5nICovCj4gICNkZWZpbmUgRkJfRVZFTlRf
U0VUX0NPTlNPTEVfTUFQICAgICAgICAweDA4Cj4gIC8qICAgICAgQSBkaXNwbGF5IGJsYW5rIGlz
IHJlcXVlc3RlZCAgICAgICAqLwo+ICAjZGVmaW5lIEZCX0VWRU5UX0JMQU5LICAgICAgICAgICAg
ICAgICAgMHgwOQo+IC0vKiAgICAgIFByaXZhdGUgbW9kZWxpc3QgaXMgdG8gYmUgcmVwbGFjZWQg
Ki8KPiAtI2RlZmluZSBGQl9FVkVOVF9NT0RFX0NIQU5HRV9BTEwJMHgwQgo+ICAvKiAgICAgIENP
TlNPTEUtU1BFQ0lGSUM6IHJlbWFwIGFsbCBjb25zb2xlcyB0byBuZXcgZmIgLSBmb3IgdmdhX3N3
aXRjaGVyb28gKi8KPiAgI2RlZmluZSBGQl9FVkVOVF9SRU1BUF9BTExfQ09OU09MRSAgICAgIDB4
MEYKPiAgLyogICAgICBBIGhhcmR3YXJlIGRpc3BsYXkgYmxhbmsgZWFybHkgY2hhbmdlIG9jY3Vy
cmVkICovCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZmJjb24uaCBiL2luY2x1ZGUvbGlu
dXgvZmJjb24uaAo+IGluZGV4IDkwZTE5NmM4MzVkZC4uZGFhYTk3YjBjOWU2IDEwMDY0NAo+IC0t
LSBhL2luY2x1ZGUvbGludXgvZmJjb24uaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvZmJjb24uaAo+
IEBAIC0xNSw2ICsxNSw3IEBAIHZvaWQgZmJjb25fbmV3X21vZGVsaXN0KHN0cnVjdCBmYl9pbmZv
ICppbmZvKTsKPiAgdm9pZCBmYmNvbl9nZXRfcmVxdWlyZW1lbnQoc3RydWN0IGZiX2luZm8gKmlu
Zm8sCj4gIAkJCSAgIHN0cnVjdCBmYl9ibGl0X2NhcHMgKmNhcHMpOwo+ICB2b2lkIGZiY29uX2Zi
X2JsYW5rZWQoc3RydWN0IGZiX2luZm8gKmluZm8sIGludCBibGFuayk7Cj4gK3ZvaWQgZmJjb25f
dXBkYXRlX3ZjcyhzdHJ1Y3QgZmJfaW5mbyAqaW5mbywgYm9vbCBhbGwpOwo+ICAjZWxzZQo+ICBz
dGF0aWMgaW5saW5lIHZvaWQgZmJfY29uc29sZV9pbml0KHZvaWQpIHt9Cj4gIHN0YXRpYyBpbmxp
bmUgdm9pZCBmYl9jb25zb2xlX2V4aXQodm9pZCkge30KPiBAQCAtMjksNiArMzAsNyBAQCB2b2lk
IGZiY29uX25ld19tb2RlbGlzdChzdHJ1Y3QgZmJfaW5mbyAqaW5mbykge30KPiAgdm9pZCBmYmNv
bl9nZXRfcmVxdWlyZW1lbnQoc3RydWN0IGZiX2luZm8gKmluZm8sCj4gIAkJCSAgIHN0cnVjdCBm
Yl9ibGl0X2NhcHMgKmNhcHMpIHt9Cj4gIHZvaWQgZmJjb25fZmJfYmxhbmtlZChzdHJ1Y3QgZmJf
aW5mbyAqaW5mbywgaW50IGJsYW5rKSB7fQo+ICt2b2lkIGZiY29uX3VwZGF0ZV92Y3Moc3RydWN0
IGZiX2luZm8gKmluZm8sIGJvb2wgYWxsKSB7fQo+ICAjZW5kaWYKPiAgCj4gICNlbmRpZiAvKiBf
TElOVVhfRkJDT05fSCAqLwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
