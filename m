Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A1C4B668
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 12:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C317A6E35B;
	Wed, 19 Jun 2019 10:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33A366E35B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 10:45:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 03:45:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="358155461"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 19 Jun 2019 03:45:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
 <20190618074153.16055-8-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bfb5ef57-187d-766e-b88c-c2a7d684f54d@linux.intel.com>
Date: Wed, 19 Jun 2019 11:45:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618074153.16055-8-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/26] drm/i915: Make the semaphore
 saturation mask global
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
Cc: Dmitry Ermilov <dmitry.ermilov@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE4LzA2LzIwMTkgMDg6NDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgaWRlYSBiZWhp
bmQga2VlcGluZyB0aGUgc2F0dXJhdGlvbiBtYXNrIGxvY2FsIHRvIGEgY29udGV4dCBiYWNrZmly
ZWQKPiBzcGVjdGFjdWxhcmx5LiBUaGUgcHJlbWlzZSB3aXRoIHRoZSBsb2NhbCBtYXNrIHdhcyB0
aGF0IHdlIHdvdWxkIGJlIG1vcmUKPiBwcm9hY3RpdmUgaW4gYXR0ZW1wdGluZyB0byB1c2Ugc2Vt
YXBob3JlcyBhZnRlciBlYWNoIHRpbWUgdGhlIGNvbnRleHQKPiBpZGxlZCwgYW5kIHRoYXQgYWxs
IG5ldyBjb250ZXh0cyB3b3VsZCBhdHRlbXB0IHRvIHVzZSBzZW1hcGhvcmVzCj4gaWdub3Jpbmcg
dGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIHN5c3RlbS4gVGhpcyB0dXJucyBvdXQgdG8gYmUgaG9y
cmlibHkKPiBvcHRpbWlzdGljLiBJZiB0aGUgc3lzdGVtIHN0YXRlIGlzIHN0aWxsIG92ZXJzYXR1
cmF0ZWQgYW5kIHRoZSBleGlzdGluZwo+IHdvcmtsb2FkcyBoYXZlIGFsbCBzdG9wcGVkIHVzaW5n
IHNlbWFwaG9yZXMsIHRoZSBuZXcgd29ya2xvYWRzIHdvdWxkCj4gYXR0ZW1wdCB0byB1c2Ugc2Vt
YXBob3JlcyBhbmQgYmUgZGVwcmlvcml0aXNlZCBiZWhpbmQgcmVhbCB3b3JrLiBUaGUKPiBuZXcg
Y29udGV4dHMgd291bGQgbm90IHN3aXRjaCBvZmYgdXNpbmcgc2VtYXBob3JlcyB1bnRpbCB0aGVp
ciBpbml0aWFsCj4gYmF0Y2ggb2YgbG93IHByaW9yaXR5IHdvcmsgaGFkIGNvbXBsZXRlZC4gR2l2
ZW4gc3VmZmljaWVudCBiYWNrbG9hZCBsb2FkCj4gb2YgZXF1YWwgdXNlciBwcmlvcml0eSwgdGhp
cyB3b3VsZCBjb21wbGV0ZWx5IHN0YXJ2ZSB0aGUgbmV3IHdvcmsgb2YgYW55Cj4gR1BVIHRpbWUu
Cj4gCj4gVG8gY29tcGVuc2F0ZSwgcmVtb3ZlIHRoZSBsb2NhbCB0cmFja2luZyBpbiBmYXZvdXIg
b2Yga2VlcGluZyBpdCBhcwo+IGdsb2JhbCBzdGF0ZSBvbiB0aGUgZW5naW5lIC0tIG9uY2UgdGhl
IHN5c3RlbSBpcyBzYXR1cmF0ZWQgYW5kCj4gc2VtYXBob3JlcyBhcmUgZGlzYWJsZWQsIGV2ZXJ5
b25lIHN0b3BzIGF0dGVtcHRpbmcgdG8gdXNlIHNlbWFwaG9yZXMKPiB1bnRpbCB0aGUgc3lzdGVt
IGlzIGlkbGUgYWdhaW4uIE9uZSBvZiB0aGUgcmVhc29uIGZvciBwcmVmZXJyaW5nIGxvY2FsCj4g
Y29udGV4dCB0cmFja2luZyB3YXMgdGhhdCBpdCB3b3JrZWQgd2l0aCB2aXJ0dWFsIGVuZ2luZXMs
IHNvIGZvcgo+IHN3aXRjaGluZyB0byBnbG9iYWwgc3RhdGUgd2UgY291bGQgZWl0aGVyIGRvIGEg
Y29tcGxldGUgY2hlY2sgb2YgYWxsIHRoZQo+IHZpcnR1YWwgc2libGluZ3Mgb3Igc2ltcGx5IGRp
c2FibGUgc2VtYXBob3JlcyBmb3IgdGhvc2UgcmVxdWVzdHMuIFRoaXMKPiB0YWtlcyB0aGUgc2lt
cGxlciBhcHByb2FjaCBvZiBkaXNhYmxpbmcgc2VtYXBob3JlcyBvbiB2aXJ0dWFsIGVuZ2luZXMu
Cj4gCj4gVGhlIGRvd25zaWRlIGlzIHRoYXQgdGhlIGRlY2lzaW9uIHRoYXQgdGhlIGVuZ2luZSBp
cyBzYXR1cmF0ZWQgaXMgYQo+IGxvY2FsIG1lYXN1cmUgLS0gd2UgYXJlIG9ubHkgY2hlY2tpbmcg
d2hldGhlciBvciBub3QgdGhpcyBjb250ZXh0IHdhcwo+IHNjaGVkdWxlZCBpbiBhIHRpbWVseSBm
YXNoaW9uLCBpdCBtYXkgYmUgbGVnaXRpbWF0ZWx5IGRlbGF5ZWQgZHVlIHRvIHVzZXIKPiBwcmlv
cml0aWVzLiBXZSBzdGlsbCBoYXZlIHRoZSBzYW1lIGRpbGVtbWEgdGhvdWdoLCB0aGF0IHdlIGRv
IG5vdCB3YW50Cj4gdG8gZW1wbG95IHRoZSBzZW1hcGhvcmUgcG9sbCB1bmxlc3MgaXQgd2lsbCBi
ZSB1c2VkLgo+IAo+IEZpeGVzOiBjYTZlNTZmNjU0ZTcgKCJkcm0vaTkxNTogRGlzYWJsZSBzZW1h
cGhvcmUgYnVzeXdhaXRzIG9uIHNhdHVyYXRlZCBzeXN0ZW1zIikKPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogRG1pdHJ5IFJvZ296aGtpbiA8ZG1p
dHJ5LnYucm9nb3poa2luQGludGVsLmNvbT4KPiBDYzogRG1pdHJ5IEVybWlsb3YgPGRtaXRyeS5l
cm1pbG92QGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2NvbnRleHQuYyAgICAgICB8IDIgLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2NvbnRleHRfdHlwZXMuaCB8IDIgLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV9wbS5jICAgICB8IDIgKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2VuZ2luZV90eXBlcy5oICB8IDIgKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jICAgICAgICAgICB8IDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVx
dWVzdC5jICAgICAgICAgICB8IDQgKystLQo+ICAgNiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Nv
bnRleHQuYwo+IGluZGV4IDQyZjQ1NzQ0ZDg1OS4uMmM0NTRmMjI3YzJlIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+IEBAIC0xNDIsNyArMTQyLDYgQEAgaW50
ZWxfY29udGV4dF9pbml0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiAgIAljZS0+ZW5naW5l
ID0gZW5naW5lOwo+ICAgCWNlLT5vcHMgPSBlbmdpbmUtPmNvcHM7Cj4gICAJY2UtPnNzZXUgPSBl
bmdpbmUtPnNzZXU7Cj4gLQljZS0+c2F0dXJhdGVkID0gMDsKPiAgIAo+ICAgCUlOSVRfTElTVF9I
RUFEKCZjZS0+c2lnbmFsX2xpbmspOwo+ICAgCUlOSVRfTElTVF9IRUFEKCZjZS0+c2lnbmFscyk7
Cj4gQEAgLTIyMyw3ICsyMjIsNiBAQCB2b2lkIGludGVsX2NvbnRleHRfZW50ZXJfZW5naW5lKHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiAgIAo+ICAgdm9pZCBpbnRlbF9jb250ZXh0X2V4aXRf
ZW5naW5lKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiAgIHsKPiAtCWNlLT5zYXR1cmF0ZWQg
PSAwOwo+ICAgCWludGVsX2VuZ2luZV9wbV9wdXQoY2UtPmVuZ2luZSk7Cj4gICB9Cj4gICAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oCj4gaW5kZXgg
YjU2NWMzZmY0Mzc4Li40YzBlMjExYzcxNWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfY29udGV4dF90eXBlcy5oCj4gQEAgLTU4LDggKzU4LDYgQEAgc3RydWN0IGlu
dGVsX2NvbnRleHQgewo+ICAgCWF0b21pY190IHBpbl9jb3VudDsKPiAgIAlzdHJ1Y3QgbXV0ZXgg
cGluX211dGV4OyAvKiBndWFyZHMgcGlubmluZyBhbmQgYXNzb2NpYXRlZCBvbi1ncHVpbmcgKi8K
PiAgIAo+IC0JaW50ZWxfZW5naW5lX21hc2tfdCBzYXR1cmF0ZWQ7IC8qIHN1Ym1pdHRpbmcgc2Vt
YXBob3JlcyB0b28gbGF0ZT8gKi8KPiAtCj4gICAJLyoqCj4gICAJICogYWN0aXZlOiBBY3RpdmUg
dHJhY2tlciBmb3IgdGhlIHJxIGFjdGl2aXR5IChpbmMuIGV4dGVybmFsKSBvbiB0aGlzCj4gICAJ
ICogaW50ZWxfY29udGV4dCBvYmplY3QuCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
ZW5naW5lX3BtLmMKPiBpbmRleCBkMTRlMzUyYjBiMTcuLjJjZTAwZDNkYzQyYSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCj4gQEAgLTEwMCw2ICsxMDAs
OCBAQCBzdGF0aWMgaW50IF9fZW5naW5lX3Bhcmsoc3RydWN0IGludGVsX3dha2VyZWYgKndmKQo+
ICAgCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9Cj4gICAJCWNvbnRhaW5lcl9vZih3
ZiwgdHlwZW9mKCplbmdpbmUpLCB3YWtlcmVmKTsKPiAgIAo+ICsJZW5naW5lLT5zYXR1cmF0ZWQg
PSAwOwo+ICsKPiAgIAkvKgo+ICAgCSAqIElmIG9uZSBhbmQgb25seSBvbmUgcmVxdWVzdCBpcyBj
b21wbGV0ZWQgYmV0d2VlbiBwbSBldmVudHMsCj4gICAJICogd2Uga25vdyB0aGF0IHdlIGFyZSBp
bnNpZGUgdGhlIGtlcm5lbCBjb250ZXh0IGFuZCBpdCBpcwo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCj4gaW5kZXggMTFhMjVmMDYwZmVkLi4xY2JlMTBh
MGZlYzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlw
ZXMuaAo+IEBAIC0yNTgsNiArMjU4LDggQEAgc3RydWN0IGludGVsX2VuZ2luZV9jcyB7Cj4gICAJ
c3RydWN0IGludGVsX2NvbnRleHQgKmtlcm5lbF9jb250ZXh0OyAvKiBwaW5uZWQgKi8KPiAgIAlz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqcHJlZW1wdF9jb250ZXh0OyAvKiBwaW5uZWQ7IG9wdGlvbmFs
ICovCj4gICAKPiArCWludGVsX2VuZ2luZV9tYXNrX3Qgc2F0dXJhdGVkOyAvKiBzdWJtaXR0aW5n
IHNlbWFwaG9yZXMgdG9vIGxhdGU/ICovCj4gKwo+ICAgCXVuc2lnbmVkIGxvbmcgc2VyaWFsOwo+
ICAgCj4gICAJdW5zaWduZWQgbG9uZyB3YWtlcmVmX3NlcmlhbDsKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+IGluZGV4IDA1NjNmZTgzOThjNS4uYmJiZGM2MzkwNmM2IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMzE5OCw3ICszMTk4LDYgQEAgc3Rh
dGljIHZvaWQgdmlydHVhbF9jb250ZXh0X2V4aXQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQo+
ICAgCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUgPSBjb250YWluZXJfb2YoY2UsIHR5cGVvZigq
dmUpLCBjb250ZXh0KTsKPiAgIAl1bnNpZ25lZCBpbnQgbjsKPiAgIAo+IC0JY2UtPnNhdHVyYXRl
ZCA9IDA7Cj4gICAJZm9yIChuID0gMDsgbiA8IHZlLT5udW1fc2libGluZ3M7IG4rKykKPiAgIAkJ
aW50ZWxfZW5naW5lX3BtX3B1dCh2ZS0+c2libGluZ3Nbbl0pOwo+ICAgfQo+IEBAIC0zMzk3LDYg
KzMzOTYsNyBAQCBpbnRlbF9leGVjbGlzdHNfY3JlYXRlX3ZpcnR1YWwoc3RydWN0IGk5MTVfZ2Vt
X2NvbnRleHQgKmN0eCwKPiAgIAl2ZS0+YmFzZS51YWJpX2NsYXNzID0gSTkxNV9FTkdJTkVfQ0xB
U1NfSU5WQUxJRDsKPiAgIAl2ZS0+YmFzZS5pbnN0YW5jZSA9IEk5MTVfRU5HSU5FX0NMQVNTX0lO
VkFMSURfVklSVFVBTDsKPiAgIAl2ZS0+YmFzZS5mbGFncyA9IEk5MTVfRU5HSU5FX0lTX1ZJUlRV
QUw7Cj4gKwl2ZS0+YmFzZS5zYXR1cmF0ZWQgPSBBTExfRU5HSU5FUzsKClRoaXMgY291bGQgdXNl
IGEgY29tbWVudC4KCj4gICAKPiAgIAlzbnByaW50Zih2ZS0+YmFzZS5uYW1lLCBzaXplb2YodmUt
PmJhc2UubmFtZSksICJ2aXJ0dWFsIik7Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVl
c3QuYwo+IGluZGV4IDk4ZTQ3NDNiMDNiZS4uMjdiOTg5M2ZhOGUzIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmMKPiBAQCAtNDE4LDcgKzQxOCw3IEBAIHZvaWQgX19pOTE1X3Jl
cXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCj4gICAJICovCj4gICAJ
aWYgKHJlcXVlc3QtPnNjaGVkLnNlbWFwaG9yZXMgJiYKPiAgIAkgICAgaTkxNV9zd19mZW5jZV9z
aWduYWxlZCgmcmVxdWVzdC0+c2VtYXBob3JlKSkKPiAtCQlyZXF1ZXN0LT5od19jb250ZXh0LT5z
YXR1cmF0ZWQgfD0gcmVxdWVzdC0+c2NoZWQuc2VtYXBob3JlczsKPiArCQllbmdpbmUtPnNhdHVy
YXRlZCB8PSByZXF1ZXN0LT5zY2hlZC5zZW1hcGhvcmVzOwo+ICAgCj4gICAJLyogV2UgbWF5IGJl
IHJlY3Vyc2luZyBmcm9tIHRoZSBzaWduYWwgY2FsbGJhY2sgb2YgYW5vdGhlciBpOTE1IGZlbmNl
ICovCj4gICAJc3Bpbl9sb2NrX25lc3RlZCgmcmVxdWVzdC0+bG9jaywgU0lOR0xFX0RFUFRIX05F
U1RJTkcpOwo+IEBAIC03OTgsNyArNzk4LDcgQEAgYWxyZWFkeV9idXN5d2FpdGluZyhzdHJ1Y3Qg
aTkxNV9yZXF1ZXN0ICpycSkKPiAgIAkgKgo+ICAgCSAqIFNlZSB0aGUgYXJlLXdlLXRvby1sYXRl
PyBjaGVjayBpbiBfX2k5MTVfcmVxdWVzdF9zdWJtaXQoKS4KPiAgIAkgKi8KPiAtCXJldHVybiBy
cS0+c2NoZWQuc2VtYXBob3JlcyB8IHJxLT5od19jb250ZXh0LT5zYXR1cmF0ZWQ7Cj4gKwlyZXR1
cm4gcnEtPnNjaGVkLnNlbWFwaG9yZXMgfCBycS0+ZW5naW5lLT5zYXR1cmF0ZWQ7Cj4gICB9Cj4g
ICAKPiAgIHN0YXRpYyBpbnQKPiAKCk90aGVyd2lzZToKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
