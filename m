Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7BEFE018
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 15:31:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9486E6E607;
	Fri, 15 Nov 2019 14:31:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489EC6E607
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 14:31:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19214004-1500050 for multiple; Fri, 15 Nov 2019 14:31:23 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191115114549.23716-2-abdiel.janulgue@linux.intel.com>
References: <20191115114549.23716-1-abdiel.janulgue@linux.intel.com>
 <20191115114549.23716-2-abdiel.janulgue@linux.intel.com>
Message-ID: <157382828110.11997.6560092351825849153@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 14:31:21 +0000
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Introduce
 DRM_I915_GEM_MMAP_OFFSET
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTEtMTUgMTE6NDU6NDcpCj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9k
cm0uaAo+IGluZGV4IDU0MDBkN2UwNTdmMS4uZTg0NGMzYThkMTk3IDEwMDY0NAo+IC0tLSBhL2lu
Y2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9k
cm0uaAo+IEBAIC0zOTUsNiArMzk1LDcgQEAgdHlwZWRlZiBzdHJ1Y3QgX2RybV9pOTE1X3NhcmVh
IHsKPiAgI2RlZmluZSBEUk1fSU9DVExfSTkxNV9HRU1fUFdSSVRFICAgICAgRFJNX0lPVyAoRFJN
X0NPTU1BTkRfQkFTRSArIERSTV9JOTE1X0dFTV9QV1JJVEUsIHN0cnVjdCBkcm1faTkxNV9nZW1f
cHdyaXRlKQo+ICAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9NTUFQICAgICAgICAgICAgICAg
IERSTV9JT1dSKERSTV9DT01NQU5EX0JBU0UgKyBEUk1fSTkxNV9HRU1fTU1BUCwgc3RydWN0IGRy
bV9pOTE1X2dlbV9tbWFwKQo+ICAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9NTUFQX0dUVCAg
ICBEUk1fSU9XUihEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX01NQVBfR1RULCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX21tYXBfZ3R0KQo+ICsjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9N
TUFQX09GRlNFVCBEUk1fSU9XUihEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5MTVfR0VNX01NQVBf
R1RULCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0KQo+ICAjZGVmaW5lIERSTV9JT0NU
TF9JOTE1X0dFTV9TRVRfRE9NQUlOICBEUk1fSU9XIChEUk1fQ09NTUFORF9CQVNFICsgRFJNX0k5
MTVfR0VNX1NFVF9ET01BSU4sIHN0cnVjdCBkcm1faTkxNV9nZW1fc2V0X2RvbWFpbikKPiAgI2Rl
ZmluZSBEUk1fSU9DVExfSTkxNV9HRU1fU1dfRklOSVNIICAgRFJNX0lPVyAoRFJNX0NPTU1BTkRf
QkFTRSArIERSTV9JOTE1X0dFTV9TV19GSU5JU0gsIHN0cnVjdCBkcm1faTkxNV9nZW1fc3dfZmlu
aXNoKQo+ICAjZGVmaW5lIERSTV9JT0NUTF9JOTE1X0dFTV9TRVRfVElMSU5HICBEUk1fSU9XUiAo
RFJNX0NPTU1BTkRfQkFTRSArIERSTV9JOTE1X0dFTV9TRVRfVElMSU5HLCBzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX3NldF90aWxpbmcpCj4gQEAgLTc5Myw2ICs3OTQsMzIgQEAgc3RydWN0IGRybV9pOTE1
X2dlbV9tbWFwX2d0dCB7Cj4gICAgICAgICBfX3U2NCBvZmZzZXQ7Cj4gIH07Cj4gIAo+ICtzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX21tYXBfb2Zmc2V0IHsKPiArICAgICAgIC8qKiBIYW5kbGUgZm9yIHRo
ZSBvYmplY3QgYmVpbmcgbWFwcGVkLiAqLwo+ICsgICAgICAgX191MzIgaGFuZGxlOwo+ICsgICAg
ICAgX191MzIgcGFkOwo+ICsgICAgICAgLyoqCj4gKyAgICAgICAgKiBGYWtlIG9mZnNldCB0byB1
c2UgZm9yIHN1YnNlcXVlbnQgbW1hcCBjYWxsCj4gKyAgICAgICAgKgo+ICsgICAgICAgICogVGhp
cyBpcyBhIGZpeGVkLXNpemUgdHlwZSBmb3IgMzIvNjQgY29tcGF0aWJpbGl0eS4KPiArICAgICAg
ICAqLwo+ICsgICAgICAgX191NjQgb2Zmc2V0Owo+ICsKPiArICAgICAgIC8qKgo+ICsgICAgICAg
ICogRmxhZ3MgZm9yIGV4dGVuZGVkIGJlaGF2aW91ci4KPiArICAgICAgICAqCj4gKyAgICAgICAg
KiBJdCBpcyBtYW5kYXRvcnkgdGhhdCBlaXRoZXIgb25lIG9mIHRoZSBNTUFQX09GRlNFVCBmbGFn
cwo+ICsgICAgICAgICogc2hvdWxkIGJlIHBhc3NlZCBoZXJlLgo+ICsgICAgICAgICovCj4gKyAg
ICAgICBfX3U2NCBmbGFnczsKPiArI2RlZmluZSBJOTE1X01NQVBfT0ZGU0VUX0dUVCAwCj4gKyNk
ZWZpbmUgSTkxNV9NTUFQX09GRlNFVF9XQyAgMQo+ICsjZGVmaW5lIEk5MTVfTU1BUF9PRkZTRVRf
V0IgIDIKPiArI2RlZmluZSBJOTE1X01NQVBfT0ZGU0VUX1VDICAzCgpUaGUgb25seSBxdWVzdGlv
biBsZWZ0IGhlcmUgaXMgc2hvdWxkIHdlCgojZGVmaW5lIEk5MTVfTU1BUF9VU0VfRVhURU5TSU9O
UyAoMSA8PCA4KQoKZnJvbSB0aGUgc3RhcnQgYW5kIGFkZCB0aGUgZHVtbXkgdXNlciBleHRlbnNp
b24gaGFuZGxlciB0byBlYXNlCmFkYXB0aW9uLgoKT3RoZXJ3aXNlIHRoZSB1QUJJIGxvb2tzIGNv
cnJlY3Q7IHRob3VnaCBpdCBtZXJpdHMgZG9pbmcgc29tZXRoaW5nIGxpa2UKCnN0cnVjdCBkcm1f
aTkxNV9nZW1fbW1hcF9ndHQgYXJnID0geyB2YWxpZCBzdGF0ZSB9Owp1NjQgcmVkem9uZVsxNl07
CgptZW1zZXQocmVkem9uZSwgMHhjNSwgc2l6ZW9mKHJlZHpvbmUpKTsKaWd0X2Fzc2VydF9lcShp
b2N0bChJOTE1X0dFTV9NTUFQX0dUVCwgJmFyZyksIDApOwoKYXMgdGhhdCB3b3VsZCBoYXZlIGZh
aWxlZCB3aXRoIHRoZSBlYXJsaWVyIHBhdGNoLiBBIHVzZWZ1bCBleGVyY2lzZSB0bwp3b3JrIHRo
cm91Z2ggdG8gbWFrZSBzdXJlIHlvdSB1bmRlcnN0YW5kIHdoeS4KClBsZWFzZSB3cml0ZSB0aGF0
IGlndCBhc2FwLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
