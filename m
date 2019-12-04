Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB75A113806
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 00:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EB8F6E946;
	Wed,  4 Dec 2019 23:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF9D96E946
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 23:17:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 15:17:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,278,1571727600"; d="scan'208";a="385941367"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 04 Dec 2019 15:17:48 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120000425.31588-1-daniele.ceraolospurio@intel.com>
 <157420927906.15427.11611745082531859894@skylake-alporthouse-com>
 <ca8feb1c-ce50-7d2b-710e-8c59c78b34e8@intel.com>
Message-ID: <89427594-1092-0e04-7825-400527e7fa74@intel.com>
Date: Wed, 4 Dec 2019 15:17:52 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ca8feb1c-ce50-7d2b-710e-8c59c78b34e8@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: re-init the GT in
 live_gt_pm
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

CgpPbiAxMS8xOS8xOSA0OjMyIFBNLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+IAo+
IAo+IE9uIDExLzE5LzE5IDQ6MjEgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4gUXVvdGluZyBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTExLTIwIDAwOjA0OjI1KQo+Pj4gV2hlbiBHdUMg
aXMgaW4gdXNlIHdlIG5lZWQgdG8gbWFrZSBzdXJlIGl0IGlzIHJlLWxvYWRlZCBiZWZvcmUgdGhl
IGNhbGwKPj4+IHRvIGd0X3Jlc3VtZSwgb3RoZXJ3aXNlIGNvbW11bmljYXRpb24gZnJvbSB0aGUg
ZW5naW5lcyB0byB0aGUgR3VDIHdpbGwKPj4+IG5vdCBiZSBwcm9jZXNzZWQsIHdoaWNoIGJsb2Nr
cyB0aGUgZW5naW5lcyBmcm9tIGN0eCBzd2l0Y2hpbmcgYW5kIGZyb20KPj4+IGJlaW5nIHJlc2V0
Lgo+Pj4KPj4+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVn
LmNnaT9pZD0xMTIyMDUKPj4+IENjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4K
Pj4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IFNpZ25l
ZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0Bp
bnRlbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2d0X3BtLmMgfCA5ICsrKysrKysrKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9ndF9wbS5jIAo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ndF9wbS5j
Cj4+PiBpbmRleCBkMTc1MmYxNTcwMmEuLjBiYjE3YzgwNmRmYyAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMKPj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2d0X3BtLmMKPj4+IEBAIC0xMSw4ICsxMSwxMSBAQCBz
dGF0aWMgaW50IGxpdmVfZ3RfcmVzdW1lKHZvaWQgKmFyZykKPj4+IMKgIHsKPj4+IMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGludGVsX2d0ICpndCA9IGFyZzsKPj4+IMKgwqDCoMKgwqDCoMKgwqAg
SUdUX1RJTUVPVVQoZW5kX3RpbWUpOwo+Pj4gK8KgwqDCoMKgwqDCoCBpbnRlbF93YWtlcmVmX3Qg
d2FrZXJlZjsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgaW50IGVycjsKPj4+ICvCoMKgwqDCoMKgwqAg
d2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0KGd0LT51bmNvcmUtPnJwbSk7Cj4+Cj4+IFRo
YXQgZGVmZWF0cyB0aGUgcG9pbnQgb2YgZ3QgcG0sIG5vPwo+Pgo+Pj4gKwo+Pj4gwqDCoMKgwqDC
oMKgwqDCoCAvKiBEbyBzZXZlcmFsIHN1c3BlbmQvcmVzdW1lIGN5Y2xlcyB0byBjaGVjayB3ZSBk
b24ndCAKPj4+IGV4cGxvZGUhICovCj4+PiDCoMKgwqDCoMKgwqDCoMKgIGRvIHsKPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVsX2d0X3N1c3BlbmRfcHJlcGFyZShndCk7
Cj4+PiBAQCAtMjUsNiArMjgsMTAgQEAgc3RhdGljIGludCBsaXZlX2d0X3Jlc3VtZSh2b2lkICph
cmcpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
YnJlYWs7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlcnIgPSBpbnRlbF9ndF9pbml0X2h3KGd0KTsKPj4KPj4g
SG1tLiBJIGhhdmUgdGhhdCBhcyBwYXJ0IG9mIGludGVsX2d0X3Jlc3VtZS7CoCBXaGljaCBhbHNv
IHB1bGxzIGl0IGludG8KPj4gdGhlIHBtLgo+IAo+IEkgYWxzbyBjb25zaWRlcmVkIG1vdmluZyBp
bml0X2h3KCkgaW5zaWRlIHJlc3VtZSgpLCBidXQgaW4gdGhlIGVuZCBvcHRlZCAKPiBub3QgdG8g
dG8ga2VlcCB0aGUgZml4IGlzb2xhdGVkIHRvIHRoZSB0ZXN0LiBCdXQgaWYgeW91IGhhdmUgYWxy
ZWFkeSAKPiBkb25lIHRoZSB3b3JrLi4uCj4gCj4+Cj4+IEkgdGhpbmsgSSBwcmVmZXIgbXkgcGxh
bi9wYXRjaGVzIDopCj4gCj4gQ2FuIHlvdSBwb2ludCBtZSB0byB0aGVtIGlmIHRoZXkncmUgYWxy
ZWFkeSBvbiB0aGUgbGlzdD8KPiAKCkhleSBDaHJpcywKCklmIHlvdXIgc29sdXRpb24gaXMgc3Rp
bGwgZ29pbmcgdG8gdGFrZSBhIHdoaWxlLCBkbyB5b3UgbWluZCBpZiB3ZSBnbyAKYWhlYWQgd2l0
aCB0aGlzIGZpeCBpbiB0aGUgbWVhbnRpbWUgKHN3aXRjaGluZyB0byBndCBwbSksIHNvIHdlIGNh
biBmaXggCnRoZSBidWc/IE1vcmUgR3VDIGNvZGUgaXMgZ29pbmcgdG8gc2xvd2x5IHRyaWNrbGUg
aW4gaW4gdGhlIG5leHQgZmV3IAp3ZWVrcywgaW5jbHVkaW5nIGF0dGVtcHRpbmcgdG8gdHVybiBI
dUMgYXV0aCBvbiBieSBkZWZhdWx0IGFnYWluIGlmIAp0aGluZ3MgbG9vayBnb29kIGVub3VnaCwg
c28gd2UgbmVlZCB0byBnZXQgdGhlIEd1QyBDSSBoZWFsdGggdW5kZXIgCmNvbnRyb2wgYmVmb3Jl
IHRoYXQuCgpUaGFua3MsCkRhbmllbGUKCj4gVGhhbmtzLAo+IERhbmllbGUKPiAKPj4gLUNocmlz
Cj4+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJ
bnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
