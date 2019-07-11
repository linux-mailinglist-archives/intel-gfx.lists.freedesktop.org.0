Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A588A65A3C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 17:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0A3D6E179;
	Thu, 11 Jul 2019 15:18:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 115C56E179
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 15:18:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 08:18:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="193434570"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2019 08:18:11 -0700
Date: Thu, 11 Jul 2019 18:17:54 +0300
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190711151754.GE12363@ideak-desk.fi.intel.com>
References: <20190711065215.4004-1-chris@chris-wilson.co.uk>
 <20190711065215.4004-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711065215.4004-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 02/18] drm/i915/selftests: Hold the vma
 manager lock while modifying mmap_offset
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDc6NTE6NTlBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFJpZ2h0IGlkZWEsIHdyb25nIGxvY2suIFdlIGFscmVhZHkgZHJvcCBzdHJ1Y3RfbXV0
ZXggYmVmb3JlIHdlIGZyZWUgdGhlCj4gbW1hcF9vZmZzZXQgd2hlbiBmcmVlaW5nIHRoZSBvYmpl
Y3QsIHNvIHdlIG5lZWQgdG8gdGFrZSB0aGUgdm1hIG1hbmFnZXIKPiBsb2NrIHdoZW4gbWFuaXB1
bGF0aW5nIHRoZSBtbWFwX29mZnNldCBhZGRyZXNzIHNwYWNlIGZvciBvdXIgc2VsZnRlc3RzLgo+
IAo+IEZpeGVzOiA4MjIxZDIxYjA2NjQgKCJkcm0vaTkxNS9zZWxmdGVzdHM6IExvY2sgdGhlIGRy
bV9tbSB3aGlsZSBtb2RpZnlpbmciKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+CgpMb29rcyBjb3JyZWN0IHRvIG1lLCBvYmotPnJlZmNvdW50PTAgd2hpbGUgaXRzIG1tYXBf
b2Zmc2V0IGlzIHN0aWxsIG5vdApyZW1vdmVkIGlzIGEgdmFsaWQgc2NlbmFyaW8gYW5kIGZvciBt
bWFwX29mZnNldCBsb29rdXAvY2hhbmdlcyB2bV9sb2NrCnNob3VsZCBiZSBlbm91Z2g6CgpSZXZp
ZXdlZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgoKPiAtLS0KPiAgLi4uL2Ry
bS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jICAgIHwgMjAgKysrKysrKysrKysr
KysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9p
OTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX21tYW4uYwo+IGluZGV4IGI5NWZkYzJiNmJmYy4uNTYzNWNiYjRhZjIyIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMK
PiBAQCAtNDAxLDYgKzQwMSwxOCBAQCBzdGF0aWMgdm9pZCByZXN0b3JlX3JldGlyZV93b3JrZXIo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAlpOTE1X2dlbV9zaHJpbmtlcl9yZWdp
c3RlcihpOTE1KTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgbW1hcF9vZmZzZXRfbG9jayhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArCV9fYWNxdWlyZXMoJmk5MTUtPmRybS52bWFf
b2Zmc2V0X21hbmFnZXItPnZtX2xvY2spCj4gK3sKPiArCXdyaXRlX2xvY2soJmk5MTUtPmRybS52
bWFfb2Zmc2V0X21hbmFnZXItPnZtX2xvY2spOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBtbWFw
X29mZnNldF91bmxvY2soc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gKwlfX3JlbGVh
c2VzKCZpOTE1LT5kcm0udm1hX29mZnNldF9tYW5hZ2VyLT52bV9sb2NrKQo+ICt7Cj4gKwl3cml0
ZV91bmxvY2soJmk5MTUtPmRybS52bWFfb2Zmc2V0X21hbmFnZXItPnZtX2xvY2spOwo+ICt9Cj4g
Kwo+ICBzdGF0aWMgaW50IGlndF9tbWFwX29mZnNldF9leGhhdXN0aW9uKHZvaWQgKmFyZykKPiAg
ewo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBhcmc7Cj4gQEAgLTQxOSw5ICs0
MzEsOSBAQCBzdGF0aWMgaW50IGlndF9tbWFwX29mZnNldF9leGhhdXN0aW9uKHZvaWQgKmFyZykK
PiAgCWRybV9tbV9mb3JfZWFjaF9ob2xlKGhvbGUsIG1tLCBob2xlX3N0YXJ0LCBob2xlX2VuZCkg
ewo+ICAJCXJlc3Yuc3RhcnQgPSBob2xlX3N0YXJ0Owo+ICAJCXJlc3Yuc2l6ZSA9IGhvbGVfZW5k
IC0gaG9sZV9zdGFydCAtIDE7IC8qIFBBR0VfU0laRSB1bml0cyAqLwo+IC0JCW11dGV4X2xvY2so
Jmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICsJCW1tYXBfb2Zmc2V0X2xvY2soaTkxNSk7Cj4g
IAkJZXJyID0gZHJtX21tX3Jlc2VydmVfbm9kZShtbSwgJnJlc3YpOwo+IC0JCW11dGV4X3VubG9j
aygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwkJbW1hcF9vZmZzZXRfdW5sb2NrKGk5MTUp
Owo+ICAJCWlmIChlcnIpIHsKPiAgCQkJcHJfZXJyKCJGYWlsZWQgdG8gdHJpbSBWTUEgbWFuYWdl
ciwgZXJyPSVkXG4iLCBlcnIpOwo+ICAJCQlnb3RvIG91dF9wYXJrOwo+IEBAIC00ODUsOSArNDk3
LDkgQEAgc3RhdGljIGludCBpZ3RfbW1hcF9vZmZzZXRfZXhoYXVzdGlvbih2b2lkICphcmcpCj4g
IAl9Cj4gIAo+ICBvdXQ6Cj4gLQltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsK
PiArCW1tYXBfb2Zmc2V0X2xvY2soaTkxNSk7Cj4gIAlkcm1fbW1fcmVtb3ZlX25vZGUoJnJlc3Yp
Owo+IC0JbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArCW1tYXBfb2Zm
c2V0X3VubG9jayhpOTE1KTsKPiAgb3V0X3Bhcms6Cj4gIAlyZXN0b3JlX3JldGlyZV93b3JrZXIo
aTkxNSk7Cj4gIAlyZXR1cm4gZXJyOwo+IC0tIAo+IDIuMjIuMAo+IApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
