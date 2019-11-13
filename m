Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B2BFBC4A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 00:12:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A59D6EE92;
	Wed, 13 Nov 2019 23:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76DFE6EE92
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 23:12:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 15:12:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,302,1569308400"; d="scan'208";a="202887184"
Received: from bruce-dg1.jf.intel.com ([10.165.21.136])
 by fmsmga008.fm.intel.com with ESMTP; 13 Nov 2019 15:12:18 -0800
From: Bruce Chang <yu.bruce.chang@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 15:11:04 -0800
Message-Id: <20191113231104.24208-1-yu.bruce.chang@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix a bug calling sleep function in
 atomic context
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

YmVsb3cgaXMgdGhlIGNhbGwgdHJhY2Ugd2hlbiB0aGlzIGlzc3VlIGlzIGhpdAoKPDM+IFsxMTMu
MzE2MjQ3XSBCVUc6IHNsZWVwaW5nIGZ1bmN0aW9uIGNhbGxlZCBmcm9tIGludmFsaWQgY29udGV4
dCBhdCBtbS9wYWdlX2FsbG9jLmM6NDY1Mwo8Mz4gWzExMy4zMTgxOTBdIGluX2F0b21pYygpOiAx
LCBpcnFzX2Rpc2FibGVkKCk6IDAsIHBpZDogNjc4LCBuYW1lOiBkZWJ1Z2ZzX3Rlc3QKPDQ+IFsx
MTMuMzE5OTAwXSBubyBsb2NrcyBoZWxkIGJ5IGRlYnVnZnNfdGVzdC82NzguCjwzPiBbMTEzLjMy
MTAwMl0gUHJlZW1wdGlvbiBkaXNhYmxlZCBhdDoKPDQ+IFsxMTMuMzIxMTMwXSBbPGZmZmZmZmZm
YTAyNTA2ZDQ+XSBpOTE1X2Vycm9yX29iamVjdF9jcmVhdGUrMHg0OTQvMHg2MTAgW2k5MTVdCjw0
PiBbMTEzLjMyNzI1OV0gQ2FsbCBUcmFjZToKPDQ+IFsxMTMuMzI3ODcxXSBkdW1wX3N0YWNrKzB4
NjcvMHg5Ygo8ND4gWzExMy4zMjg2ODNdIF9fX21pZ2h0X3NsZWVwKzB4MTY3LzB4MjUwCjw0PiBb
MTEzLjMyOTYxOF0gX19hbGxvY19wYWdlc19ub2RlbWFzaysweDI2Yi8weDExMTAKPDQ+IFsxMTMu
MzMwNzMxXSA/IF9fX3NsYWJfYWxsb2MuY29uc3Rwcm9wLjM0KzB4MjFjLzB4MzgwCjw0PiBbMTEz
LjMzMTk0M10gPyBfX19zbGFiX2FsbG9jLmNvbnN0cHJvcC4zNCsweDIxYy8weDM4MAo8ND4gWzEx
My4zMzMxNjldID8gX19zbGFiX2FsbG9jLmlzcmEuMjguY29uc3Rwcm9wLjMzKzB4NGQvMHg3MAo8
ND4gWzExMy4zMzQ2MTRdIHBvb2xfYWxsb2MuY29uc3Rwcm9wLjE5KzB4MTQvMHg2MCBbaTkxNV0K
PDQ+IFsxMTMuMzM1OTUxXSBjb21wcmVzc19wYWdlKzB4N2MvMHgxMDAgW2k5MTVdCjw0PiBbMTEz
LjMzNzExMF0gaTkxNV9lcnJvcl9vYmplY3RfY3JlYXRlKzB4NGJkLzB4NjEwIFtpOTE1XQo8ND4g
WzExMy4zMzg1MTVdIGk5MTVfY2FwdHVyZV9ncHVfc3RhdGUrMHgzODQvMHgxNjgwIFtpOTE1XQo8
ND4gWzExMy4zMzk3NzFdID8gX19sb2NrX2FjcXVpcmUrMHg0YWMvMHgxZTkwCjw0PiBbMTEzLjM0
MDc4NV0gPyBfcmF3X3NwaW5fbG9ja19pcnFzYXZlX25lc3RlZCsweDEvMHg1MAo8ND4gWzExMy4z
NDIxMjddIGk5MTVfZ3B1X2luZm9fb3BlbisweDQ0LzB4NzAgW2k5MTVdCjw0PiBbMTEzLjM0MzI0
M10gZnVsbF9wcm94eV9vcGVuKzB4MTM5LzB4MWIwCjw0PiBbMTEzLjM0NDE5Nl0gPyBvcGVuX3By
b3h5X29wZW4rMHhjMC8weGMwCjw0PiBbMTEzLjM0NTE0OV0gZG9fZGVudHJ5X29wZW4rMHgxY2Uv
MHgzYTAKPDQ+IFsxMTMuMzQ2MDg0XSBwYXRoX29wZW5hdCsweDRjOS8weGFjMAo8ND4gWzExMy4z
NDY5NjddIGRvX2ZpbHBfb3BlbisweDk2LzB4MTEwCjw0PiBbMTEzLjM0Nzg0OF0gPyBfX2FsbG9j
X2ZkKzB4ZTAvMHgxZjAKPDQ+IFsxMTMuMzQ4NzM2XSA/IGRvX3N5c19vcGVuKzB4MWI4LzB4MjUw
Cjw0PiBbMTEzLjM0OTY0N10gZG9fc3lzX29wZW4rMHgxYjgvMHgyNTAKPDQ+IFsxMTMuMzUwNTI2
XSBkb19zeXNjYWxsXzY0KzB4NTUvMHgxYzAKPDQ+IFsxMTMuMzUxNDE4XSBlbnRyeV9TWVNDQUxM
XzY0X2FmdGVyX2h3ZnJhbWUrMHg0OS8weGJlCgpBZnRlciB0aGUgaW9fbWFwcGluZ19tYXBfYXRv
bWljX3djL2ttYXBfYXRvbWljLCB0aGUga2VybmVsIGVudGVycyBhdG9taWMgY29udGV4dApidXQg
YWZ0ZXIgdGhhdCwgY29tcHJlc3NfcGFnZSBjYWxscyBwb29sX2FsbG9jIHdpdGggR0ZQX0tFUk5F
TCBmbGFnIHdoaWNoIGNhbgpwb3RlbnRpYWxseSBnbyB0byBzbGVlcC4gV2hlbiB0aGUga2VybmVs
IGlzIGluIGF0b21pYyBjb250ZXh0LCBzbGVlcGluZyBpcyBub3QKYWxsb3dlZC4gVGhpcyBpcyB3
aHkgdGhpcyBidWcgZ290IHRyaWdnZXJlZC4KCkluIG9yZGVyIHRvIGZpeCB0aGlzIGlzc3VlLCB3
ZSBlaXRoZXIKCTEpIG5vdCBlbnRlciBpbnRvIGF0b21pYyBjb250ZXh0LCBpLmUuLCB0byB1c2Ug
bm9uIGF0b21pYyB2ZXJzaW9uIG9mCgkJZnVuY3Rpb25zIGxpa2UgaW9fbWFwcGluZ19tYXBfd2Mv
a21hcCwKb3IKCTIpIG1ha2UgY29tcHJlc3NfcGFnZSBydW4gaW4gYXRvbWljIGNvbnRleHQuCgpC
dXQgaXQgaXMgbm90IGEgZ29vZCBpZGVhIHRvIHJ1biBzbG93IGNvbXByZXNzaW9uIGluIGF0b21p
YyBjb250ZXh0LCBzbywKMSkgYWJvdmUgaXMgcHJlZmVycmVkIHNvbHV0aW9uIHdoaWNoIGlzIHRo
ZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGlzIHBhdGNoLgoKU2lnbmVkLW9mZi1ieTogQnJ1Y2UgQ2hh
bmcgPHl1LmJydWNlLmNoYW5nQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEJyaWFuIFdlbHR5IDxi
cmlhbi53ZWx0eUBpbnRlbC5jb20+CkZpeGVzOiA4OTVkOGViZWFhOTI0ICgiZHJtL2k5MTU6IGVy
cm9yIGNhcHR1cmUgd2l0aCBubyBnZ3R0IHNsb3QiKQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ3B1X2Vycm9yLmMgfCA4ICsrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5j
CmluZGV4IDFmMmYyNjZmMjZhZi4uNzExOGVjYjdmMTQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ3B1X2Vycm9yLmMKQEAgLTEwMDcsNjcgKzEwMDcsNjcgQEAgaTkxNV9lcnJvcl9vYmplY3Rf
Y3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCWNvbXByZXNzLT53YyA9IGk5
MTVfZ2VtX29iamVjdF9pc19sbWVtKHZtYS0+b2JqKSB8fAogCQkgICAgICAgZHJtX21tX25vZGVf
YWxsb2NhdGVkKCZnZ3R0LT5lcnJvcl9jYXB0dXJlKTsKIAogCXJldCA9IC1FSU5WQUw7CiAJaWYg
KGRybV9tbV9ub2RlX2FsbG9jYXRlZCgmZ2d0dC0+ZXJyb3JfY2FwdHVyZSkpIHsKIAkJdm9pZCBf
X2lvbWVtICpzOwogCQlkbWFfYWRkcl90IGRtYTsKIAogCQlmb3JfZWFjaF9zZ3RfZGFkZHIoZG1h
LCBpdGVyLCB2bWEtPnBhZ2VzKSB7CiAJCQlnZ3R0LT52bS5pbnNlcnRfcGFnZSgmZ2d0dC0+dm0s
IGRtYSwgc2xvdCwKIAkJCQkJICAgICBJOTE1X0NBQ0hFX05PTkUsIDApOwogCiAJCQlzID0gaW9f
bWFwcGluZ19tYXBfd2MoJmdndHQtPmlvbWFwLCBzbG90LCBQQUdFX1NJWkUpOwogCQkJcmV0ID0g
Y29tcHJlc3NfcGFnZShjb21wcmVzcywgKHZvaWQgIF9fZm9yY2UgKilzLCBkc3QpOwogCQkJaW9f
bWFwcGluZ191bm1hcChzKTsKIAkJCWlmIChyZXQpCiAJCQkJYnJlYWs7CiAJCX0KIAl9IGVsc2Ug
aWYgKGk5MTVfZ2VtX29iamVjdF9pc19sbWVtKHZtYS0+b2JqKSkgewogCQlzdHJ1Y3QgaW50ZWxf
bWVtb3J5X3JlZ2lvbiAqbWVtID0gdm1hLT5vYmotPm1tLnJlZ2lvbjsKIAkJZG1hX2FkZHJfdCBk
bWE7CiAKIAkJZm9yX2VhY2hfc2d0X2RhZGRyKGRtYSwgaXRlciwgdm1hLT5wYWdlcykgewogCQkJ
dm9pZCBfX2lvbWVtICpzOwogCi0JCQlzID0gaW9fbWFwcGluZ19tYXBfYXRvbWljX3djKCZtZW0t
PmlvbWFwLCBkbWEpOworCQkJcyA9IGlvX21hcHBpbmdfbWFwX3djKCZtZW0tPmlvbWFwLCBkbWEs
IFBBR0VfU0laRSk7CiAJCQlyZXQgPSBjb21wcmVzc19wYWdlKGNvbXByZXNzLCAodm9pZCBfX2Zv
cmNlICopcywgZHN0KTsKLQkJCWlvX21hcHBpbmdfdW5tYXBfYXRvbWljKHMpOworCQkJaW9fbWFw
cGluZ191bm1hcChzKTsKIAkJCWlmIChyZXQpCiAJCQkJYnJlYWs7CiAJCX0KIAl9IGVsc2Ugewog
CQlzdHJ1Y3QgcGFnZSAqcGFnZTsKIAogCQlmb3JfZWFjaF9zZ3RfcGFnZShwYWdlLCBpdGVyLCB2
bWEtPnBhZ2VzKSB7CiAJCQl2b2lkICpzOwogCiAJCQlkcm1fY2xmbHVzaF9wYWdlcygmcGFnZSwg
MSk7CiAKLQkJCXMgPSBrbWFwX2F0b21pYyhwYWdlKTsKKwkJCXMgPSBrbWFwKHBhZ2UpOwogCQkJ
cmV0ID0gY29tcHJlc3NfcGFnZShjb21wcmVzcywgcywgZHN0KTsKLQkJCWt1bm1hcF9hdG9taWMo
cyk7CisJCQlrdW5tYXAocyk7CiAKIAkJCWRybV9jbGZsdXNoX3BhZ2VzKCZwYWdlLCAxKTsKIAog
CQkJaWYgKHJldCkKIAkJCQlicmVhazsKIAkJfQogCX0KIAogCWlmIChyZXQgfHwgY29tcHJlc3Nf
Zmx1c2goY29tcHJlc3MsIGRzdCkpIHsKIAkJd2hpbGUgKGRzdC0+cGFnZV9jb3VudC0tKQogCQkJ
cG9vbF9mcmVlKCZjb21wcmVzcy0+cG9vbCwgZHN0LT5wYWdlc1tkc3QtPnBhZ2VfY291bnRdKTsK
IAkJa2ZyZWUoZHN0KTsKIAkJZHN0ID0gTlVMTDsKIAl9CiAJY29tcHJlc3NfZmluaXNoKGNvbXBy
ZXNzKTsKIAogCXJldHVybiBkc3Q7CiB9CiAKIC8qCiAgKiBHZW5lcmF0ZSBhIHNlbWktdW5pcXVl
IGVycm9yIGNvZGUuIFRoZSBjb2RlIGlzIG5vdCBtZWFudCB0byBoYXZlIG1lYW5pbmcsIFRoZQog
ICogY29kZSdzIG9ubHkgcHVycG9zZSBpcyB0byB0cnkgdG8gcHJldmVudCBmYWxzZSBkdXBsaWNh
dGVkIGJ1ZyByZXBvcnRzIGJ5CiAgKiBncm9zc2x5IGVzdGltYXRpbmcgYSBHUFUgZXJyb3Igc3Rh
dGUuCiAgKgogICogVE9ETyBJZGVhbGx5LCBoYXNoaW5nIHRoZSBiYXRjaGJ1ZmZlciB3b3VsZCBi
ZSBhIHZlcnkgbmljZSB3YXkgdG8gZGV0ZXJtaW5lCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
