Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDF649698
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 03:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 661266E0C4;
	Tue, 18 Jun 2019 01:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D8226E0C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 01:13:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 18:13:19 -0700
X-ExtLoop1: 1
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.251.137.226])
 ([10.251.137.226])
 by orsmga003.jf.intel.com with ESMTP; 17 Jun 2019 18:13:18 -0700
To: intel-gfx@lists.freedesktop.org
References: <20190614002838.3072-1-robert.m.fosha@intel.com>
 <20190614002838.3072-2-robert.m.fosha@intel.com>
 <62ddd492-4a40-0854-73a2-bc5693797011@linux.intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <e240571b-f8bf-71d7-a359-8a423881eaee@Intel.com>
Date: Mon, 17 Jun 2019 18:13:18 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <62ddd492-4a40-0854-73a2-bc5693797011@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Support flags in whitlist WAs
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

T24gNi8xMy8yMDE5IDIzOjQ4LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPgo+IE9uIDE0LzA2LzIw
MTkgMDE6MjgsIFJvYmVydCBNLiBGb3NoYSB3cm90ZToKPj4gRnJvbTogSm9obiBIYXJyaXNvbiA8
Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPj4KPj4gTmV3ZXIgaGFyZHdhcmUgYWRkcyBmbGFn
cyB0byB0aGUgd2hpdGVsaXN0IHdvcmstYXJvdW5kIHJlZ2lzdGVyLiBUaGVzZQo+PiBhbGxvdyBw
ZXIgYWNjZXNzIGRpcmVjdGlvbiBwcml2aWxlZ2VzIGFuZCByYW5nZXMuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj4+IFNpZ25l
ZC1vZmYtYnk6IFJvYmVydCBNLiBGb3NoYSA8cm9iZXJ0Lm0uZm9zaGFAaW50ZWwuY29tPgo+PiBD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDkgKysrKysrKystCj4+IMKgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA3
ICsrKysrKysKPj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMKPj4gaW5kZXggMTY1YjBhNDVlMDA5Li5hZTgyMzQwZmZmNDUgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+PiBAQCAtMTAxMiw3ICsx
MDEyLDcgQEAgYm9vbCBpbnRlbF9ndF92ZXJpZnlfd29ya2Fyb3VuZHMoc3RydWN0IAo+PiBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAo+PiDCoCB9Cj4+IMKgIMKgIHN0YXRpYyB2b2lkCj4+IC13aGl0
ZWxpc3RfcmVnKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcpCj4+ICt3
aGl0ZWxpc3RfcmVnX2V4dChzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVn
LCB1MzIgZmxhZ3MpCj4+IMKgIHsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgaTkxNV93YSB3YSA9IHsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIC5yZWcgPSByZWcKPj4gQEAgLTEwMjEsOSArMTAyMSwxNiBA
QCB3aGl0ZWxpc3RfcmVnKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgCj4+IGk5MTVfcmVnX3Qg
cmVnKQo+PiDCoMKgwqDCoMKgIGlmIChHRU1fREVCVUdfV0FSTl9PTih3YWwtPmNvdW50ID49IFJJ
TkdfTUFYX05PTlBSSVZfU0xPVFMpKQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+PiDC
oCArwqDCoMKgIHdhLnJlZy5yZWcgfD0gZmxhZ3M7Cj4+IMKgwqDCoMKgwqAgX3dhX2FkZCh3YWws
ICZ3YSk7Cj4+IMKgIH0KPj4gwqAgK3N0YXRpYyB2b2lkCj4+ICt3aGl0ZWxpc3RfcmVnKHN0cnVj
dCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcpCj4+ICt7Cj4+ICvCoMKgwqAgd2hp
dGVsaXN0X3JlZ19leHQod2FsLCByZWcsIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SVyk7Cj4+ICt9
Cj4+ICsKPj4gwqAgc3RhdGljIHZvaWQgZ2VuOV93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGk5MTVf
d2FfbGlzdCAqdykKPj4gwqAgewo+PiDCoMKgwqDCoMKgIC8qIAo+PiBXYVZGRVN0YXRlQWZ0ZXJQ
aXBlQ29udHJvbHdpdGhNZWRpYVN0YXRlQ2xlYXI6c2tsLGJ4dCxnbGssY2ZsICovCj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIAo+PiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gaW5kZXggZWRmOWY5MzkzNGExLi4xMGZlYTVhYjNmYzMg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiBAQCAtMjUxMyw2ICsyNTEzLDEzIEBA
IGVudW0gaTkxNV9wb3dlcl93ZWxsX2lkIHsKPj4gwqAgI2RlZmluZcKgwqAgUklOR19XQUlUX1NF
TUFQSE9SRcKgwqDCoCAoMSA8PCAxMCkgLyogZ2VuNisgKi8KPj4gwqAgwqAgI2RlZmluZSBSSU5H
X0ZPUkNFX1RPX05PTlBSSVYoYmFzZSwgaSkgX01NSU8oKChiYXNlKSArIDB4NEQwKSArIAo+PiAo
aSkgKiA0KQo+PiArI2RlZmluZcKgwqAgUklOR19GT1JDRV9UT19OT05QUklWX1JXwqDCoMKgwqDC
oMKgwqAgKDAgPDwgMjgpwqDCoMKgIC8qIENGTCsgJiAKPj4gR2VuMTErICovCj4KPiBTaG91bGRu
J3QgdGhpcyBjb21tZW50IGJlIGFnYWluc3QgdGhlIFJEIGFuZCBXUiBmbGFncywgd2hpbGUgdGhl
IGFib3ZlIAo+IGlzIHRoZSBsZWdhY3kgb25lPwoKVGVjaG5pY2FsbHksIHRoaXMgZmllbGQgZG9l
cyBub3QgZXhpc3QgYXQgYWxsIG9uIG9sZGVyIGhhcmR3YXJlLiBIb3dldmVyIAp0aGVzZSBiaXRz
IGFyZSBNQlogaGVuY2UgYXJlIGVxdWl2YWxlbnQgdG8gaGF2aW5nIHRoZSB2YWx1ZSBvZiBSVyBi
ZWluZyAKc2V0LiBUbyBtZSwgaXQgbWFrZXMgbW9yZSBzZW5zZSB0byBiZSBhY2N1cmF0ZSBhbmQg
bGFiZWwgdGhlIGVudGlyZSAKZmllbGQgYXMgbmV3ZXIgaGFyZHdhcmUgb25seS4KCkpvaG4uCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
