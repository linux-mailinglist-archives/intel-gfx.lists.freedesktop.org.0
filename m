Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0981C3B1BFB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 16:05:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005786E8F3;
	Wed, 23 Jun 2021 14:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44FDD6E8F1;
 Wed, 23 Jun 2021 14:05:19 +0000 (UTC)
IronPort-SDR: p+Eu4M/EHw/ZaZWMZeR2EnsaZzgpokQrIPYdMc0CIG40ZMuH0bZnhMTFNoCK5lqXj6Glar1p0O
 ++xczZLzunDg==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="271112232"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="271112232"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 07:04:22 -0700
IronPort-SDR: XubHnFxECTIJ7eRMFl//RSk5v0z+RIwoK2wBHh5amoZnWO7RXGQOMWeKmeLScwLhg5HDyP6kQB
 UNFvOsT7+3qw==
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="453046075"
Received: from bkuncer-mobl1.ger.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.243])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 07:04:20 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 23 Jun 2021 16:04:08 +0200
Message-Id: <20210623140410.15869-2-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210623140410.15869-1-thomas.hellstrom@linux.intel.com>
References: <20210623140410.15869-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 1/3] drm/i915: Update object placement flags
 to be mutable
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIG9iamVjdCBvcHMgaTkxNV9HRU1fT0JKRUNUX0hBU19JT01FTSBhbmQgdGhlIG9iamVjdApJ
OTE1X0JPX0FMTE9DX1NUUlVDVF9QQUdFIGZsYWdzIGFyZSBjb25zaWRlcmVkIGltbXV0YWJsZSBi
eQptdWNoIG9mIG91ciBjb2RlLiBJbnRyb2R1Y2UgYSBuZXcgbWVtX2ZsYWdzIG1lbWJlciB0byBo
b2xkIHRoZXNlCmFuZCBtYWtlIHN1cmUgY2hlY2tzIGZvciB0aGVzZSBmbGFncyBiZWluZyBzZXQg
YXJlIGVpdGhlciBkb25lCnVuZGVyIHRoZSBvYmplY3QgbG9jayBvciB3aXRoIHBhZ2VzIHByb3Bl
cmx5IHBpbm5lZC4gVGhlIGZsYWdzCndpbGwgY2hhbmdlIGR1cmluZyBtaWdyYXRpb24gdW5kZXIg
dGhlIG9iamVjdCBsb2NrLgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21h
cy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KdjI6Ci0gVW5jb25kaXRpb25hbGx5IHNldCBWTV9J
TyBvbiBvdXIgVk1BcyBpbiBsaW5lIHdpdGggdGhlIHJlc3QgY29yZSBnZW0KICBhbmQgVFRNLiBT
aW5jZSB0aGUgYm8gbWlnaHQgYmUgbWlncmF0ZWQgd2hpbGUgdGhlIFZNQSBpcyBzdGlsbCBhbGl2
ZSwKICB0aGVyZSBpcyBubyBzZW5zZSwgd2hldGhlciBvciBub3QgaXQgbWFwcyBpb21lbSBtaWdo
dCBjaGFuZ2UuCnY2OgotIEludHJvZHVjZSBhIF9faTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0oKSB0
byBiZSB1c2VkIGluIHNpdHVhdGlvbnMgd2hlcmUgd2UKICBrbm93IHRoYXQgYSBmZW5jZSB0aGF0
IGNhbid0IGN1cnJlbnRseSBzaWduYWwga2VlcHMgdGhlIG9iamVjdCBmcm9tIGJlaW5nCiAgbWln
cmF0ZWQgb3IgZXZpY3RlZC4KLSBNb3ZlIGEgY291cGxlIG9mIHNobWVtIHdhcm5pbmdzIGZvciBE
R0ZYIHRvIGEgbGF0ZXIgcGF0Y2ggd2hlcmUgd2UKICBhY3R1YWxseSBtb3ZlIHN5c3RlbSBtZW1v
cnkgdG8gVFRNLgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRlcm5h
bC5jICB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jICAg
ICAgfCAyMiArKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xt
ZW0uaCAgICAgIHwgIDIgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4u
YyAgICAgIHwgMTIgKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2Jq
ZWN0LmMgICAgfCAzOCArKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmggICAgfCAxNCArKy0tLS0tCiAuLi4vZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAgfCAyMCArKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BoeXMuYyAgICAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jICAgICB8ICA3ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV90dG0uYyAgICAgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jICAgfCAgNCArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaHVnZV9nZW1fb2JqZWN0LmMgIHwgIDQgKy0KIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9odWdlX3BhZ2VzLmMgICB8ICA1ICstLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fbW1hbi5jICAgIHwgIDQgKy0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3Rz
L2k5MTVfZ2VtX3BoeXMuYyAgICB8ICAzICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dw
dV9lcnJvci5jICAgICAgICAgfCAgMiArLQogMTcgZmlsZXMgY2hhbmdlZCwgMTAxIGluc2VydGlv
bnMoKyksIDQ2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2ludGVybmFsLmMKaW5kZXggY2U2YjY2NGIxMGFhLi4xM2IyMTdmNzUwNTUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9pbnRlcm5hbC5jCkBAIC0xNzcsOCArMTc3
LDggQEAgaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7CiAKIAlkcm1fZ2VtX3ByaXZh
dGVfb2JqZWN0X2luaXQoJmk5MTUtPmRybSwgJm9iai0+YmFzZSwgc2l6ZSk7Ci0JaTkxNV9nZW1f
b2JqZWN0X2luaXQob2JqLCAmaTkxNV9nZW1fb2JqZWN0X2ludGVybmFsX29wcywgJmxvY2tfY2xh
c3MsCi0JCQkgICAgIEk5MTVfQk9fQUxMT0NfU1RSVUNUX1BBR0UpOworCWk5MTVfZ2VtX29iamVj
dF9pbml0KG9iaiwgJmk5MTVfZ2VtX29iamVjdF9pbnRlcm5hbF9vcHMsICZsb2NrX2NsYXNzLCAw
KTsKKwlvYmotPm1lbV9mbGFncyB8PSBJOTE1X0JPX0ZMQUdfU1RSVUNUX1BBR0U7CiAKIAkvKgog
CSAqIE1hcmsgdGhlIG9iamVjdCBhcyB2b2xhdGlsZSwgc3VjaCB0aGF0IHRoZSBwYWdlcyBhcmUg
bWFya2VkIGFzCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bG1lbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYwppbmRleCBk
NTM5ZGZmYTE1NTQuLjQxZDUxODJjZDM2NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fbG1lbS5jCkBAIC03MSw2ICs3MSwyOCBAQCBib29sIGk5MTVfZ2VtX29iamVjdF9pc19s
bWVtKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJCSAgICAgIG1yLT50eXBlID09
IElOVEVMX01FTU9SWV9TVE9MRU5fTE9DQUwpOwogfQogCisvKioKKyAqIF9faTkxNV9nZW1fb2Jq
ZWN0X2lzX2xtZW0gLSBXaGV0aGVyIHRoZSBvYmplY3QgaXMgcmVzaWRlbnQgaW4KKyAqIGxtZW0g
d2hpbGUgaW4gdGhlIGZlbmNlIHNpZ25hbGluZyBjcml0aWNhbCBwYXRoLgorICogQG9iajogVGhl
IG9iamVjdCB0byBjaGVjay4KKyAqCisgKiBUaGlzIGZ1bmN0aW9uIGlzIGludGVuZGVkIHRvIGJl
IGNhbGxlZCBmcm9tIHdpdGhpbiB0aGUgZmVuY2Ugc2lnbmFsaW5nCisgKiBwYXRoIHdoZXJlIHRo
ZSBmZW5jZSBrZWVwcyB0aGUgb2JqZWN0IGZyb20gYmVpbmcgbWlncmF0ZWQuIEZvciBleGFtcGxl
CisgKiBkdXJpbmcgZ3B1IHJlc2V0IG9yIHNpbWlsYXIuCisgKgorICogUmV0dXJuOiBXaGV0aGVy
IHRoZSBvYmplY3QgaXMgcmVzaWRlbnQgaW4gbG1lbS4KKyAqLworYm9vbCBfX2k5MTVfZ2VtX29i
amVjdF9pc19sbWVtKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCit7CisJc3RydWN0
IGludGVsX21lbW9yeV9yZWdpb24gKm1yID0gUkVBRF9PTkNFKG9iai0+bW0ucmVnaW9uKTsKKwor
I2lmZGVmIENPTkZJR19MT0NLREVQCisJR0VNX1dBUk5fT04oZG1hX3Jlc3ZfdGVzdF9zaWduYWxl
ZChvYmotPmJhc2UucmVzdiwgdHJ1ZSkpOworI2VuZGlmCisJcmV0dXJuIG1yICYmIChtci0+dHlw
ZSA9PSBJTlRFTF9NRU1PUllfTE9DQUwgfHwKKwkJICAgICAgbXItPnR5cGUgPT0gSU5URUxfTUVN
T1JZX1NUT0xFTl9MT0NBTCk7Cit9CisKIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoKIGk5
MTVfZ2VtX29iamVjdF9jcmVhdGVfbG1lbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwK
IAkJCSAgICByZXNvdXJjZV9zaXplX3Qgc2l6ZSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fbG1lbS5oCmluZGV4IGVhNzZmZDExY2NiMC4uMjdhNjExZGViYTQ3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmgKQEAgLTIxLDYgKzIxLDggQEAgaTkxNV9n
ZW1fb2JqZWN0X2xtZW1faW9fbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAK
IGJvb2wgaTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0oc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaik7CiAKK2Jvb2wgX19pOTE1X2dlbV9vYmplY3RfaXNfbG1lbShzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqKTsKKwogc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKgogaTkxNV9n
ZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQkJ
ICAgIHJlc291cmNlX3NpemVfdCBzaXplLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9tbWFuLmMKaW5kZXggMmZkMTU1NzQyYmQyLi42NDk3YTJkYmRhYjkgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwpAQCAtNjg0LDcgKzY4NCw3IEBAIF9fYXNzaWdu
X21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAKIAlpZiAobW1h
cF90eXBlICE9IEk5MTVfTU1BUF9UWVBFX0dUVCAmJgogCSAgICAhaTkxNV9nZW1fb2JqZWN0X2hh
c19zdHJ1Y3RfcGFnZShvYmopICYmCi0JICAgICFpOTE1X2dlbV9vYmplY3RfdHlwZV9oYXMob2Jq
LCBJOTE1X0dFTV9PQkpFQ1RfSEFTX0lPTUVNKSkKKwkgICAgIWk5MTVfZ2VtX29iamVjdF9oYXNf
aW9tZW0ob2JqKSkKIAkJcmV0dXJuIC1FTk9ERVY7CiAKIAltbW8gPSBtbWFwX29mZnNldF9hdHRh
Y2gob2JqLCBtbWFwX3R5cGUsIGZpbGUpOwpAQCAtNzA4LDcgKzcwOCwxMiBAQCBfX2Fzc2lnbl9t
bWFwX29mZnNldF9oYW5kbGUoc3RydWN0IGRybV9maWxlICpmaWxlLAogCWlmICghb2JqKQogCQly
ZXR1cm4gLUVOT0VOVDsKIAorCWVyciA9IGk5MTVfZ2VtX29iamVjdF9sb2NrX2ludGVycnVwdGli
bGUob2JqLCBOVUxMKTsKKwlpZiAoZXJyKQorCQlnb3RvIG91dF9wdXQ7CiAJZXJyID0gX19hc3Np
Z25fbW1hcF9vZmZzZXQob2JqLCBtbWFwX3R5cGUsIG9mZnNldCwgZmlsZSk7CisJaTkxNV9nZW1f
b2JqZWN0X3VubG9jayhvYmopOworb3V0X3B1dDoKIAlpOTE1X2dlbV9vYmplY3RfcHV0KG9iaik7
CiAJcmV0dXJuIGVycjsKIH0KQEAgLTkzMiwxMCArOTM3LDcgQEAgaW50IGk5MTVfZ2VtX21tYXAo
c3RydWN0IGZpbGUgKmZpbHAsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogCQlyZXR1cm4g
UFRSX0VSUihhbm9uKTsKIAl9CiAKLQl2bWEtPnZtX2ZsYWdzIHw9IFZNX1BGTk1BUCB8IFZNX0RP
TlRFWFBBTkQgfCBWTV9ET05URFVNUDsKLQotCWlmIChpOTE1X2dlbV9vYmplY3RfaGFzX2lvbWVt
KG9iaikpCi0JCXZtYS0+dm1fZmxhZ3MgfD0gVk1fSU87CisJdm1hLT52bV9mbGFncyB8PSBWTV9Q
Rk5NQVAgfCBWTV9ET05URVhQQU5EIHwgVk1fRE9OVERVTVAgfCBWTV9JTzsKIAogCS8qCiAJICog
V2Uga2VlcCB0aGUgcmVmIG9uIG1tby0+b2JqLCBub3Qgdm1fZmlsZSwgYnV0IHdlIHJlcXVpcmUK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYwppbmRleCBjZjE4YzQz
MGQ1MWYuLjA3ZThmZjlhOGFhZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9vYmplY3QuYwpAQCAtNDc1LDYgKzQ3NSw0NCBAQCBib29sIGk5MTVfZ2VtX29iamVjdF9taWdy
YXRhYmxlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJcmV0dXJuIG9iai0+bW0u
bl9wbGFjZW1lbnRzID4gMTsKIH0KIAorLyoqCisgKiBpOTE1X2dlbV9vYmplY3RfaGFzX3N0cnVj
dF9wYWdlIC0gV2hldGhlciB0aGUgb2JqZWN0IGlzIHBhZ2UtYmFja2VkCisgKiBAb2JqOiBUaGUg
b2JqZWN0IHRvIHF1ZXJ5LgorICoKKyAqIFRoaXMgZnVuY3Rpb24gc2hvdWxkIG9ubHkgYmUgY2Fs
bGVkIHdoaWxlIHRoZSBvYmplY3QgaXMgbG9ja2VkIG9yIHBpbm5lZCwKKyAqIG90aGVyd2lzZSB0
aGUgcGFnZSBiYWNraW5nIG1heSBjaGFuZ2UgdW5kZXIgdGhlIGNhbGxlci4KKyAqCisgKiBSZXR1
cm46IFRydWUgaWYgcGFnZS1iYWNrZWQsIGZhbHNlIG90aGVyd2lzZS4KKyAqLworYm9vbCBpOTE1
X2dlbV9vYmplY3RfaGFzX3N0cnVjdF9wYWdlKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopCit7CisjaWZkZWYgQ09ORklHX0xPQ0tERVAKKwlpZiAoSVNfREdGWCh0b19pOTE1
KG9iai0+YmFzZS5kZXYpKSAmJgorCSAgICBpOTE1X2dlbV9vYmplY3RfZXZpY3RhYmxlKCh2b2lk
IF9fZm9yY2UgKilvYmopKQorCQlhc3NlcnRfb2JqZWN0X2hlbGRfc2hhcmVkKG9iaik7CisjZW5k
aWYKKwlyZXR1cm4gb2JqLT5tZW1fZmxhZ3MgJiBJOTE1X0JPX0ZMQUdfU1RSVUNUX1BBR0U7Cit9
CisKKy8qKgorICogaTkxNV9nZW1fb2JqZWN0X2hhc19pb21lbSAtIFdoZXRoZXIgdGhlIG9iamVj
dCBpcyBpb21lbS1iYWNrZWQKKyAqIEBvYmo6IFRoZSBvYmplY3QgdG8gcXVlcnkuCisgKgorICog
VGhpcyBmdW5jdGlvbiBzaG91bGQgb25seSBiZSBjYWxsZWQgd2hpbGUgdGhlIG9iamVjdCBpcyBs
b2NrZWQgb3IgcGlubmVkLAorICogb3RoZXJ3aXNlIHRoZSBpb21lbSBiYWNraW5nIG1heSBjaGFu
Z2UgdW5kZXIgdGhlIGNhbGxlci4KKyAqCisgKiBSZXR1cm46IFRydWUgaWYgaW9tZW0tYmFja2Vk
LCBmYWxzZSBvdGhlcndpc2UuCisgKi8KK2Jvb2wgaTkxNV9nZW1fb2JqZWN0X2hhc19pb21lbShj
b25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQoreworI2lmZGVmIENPTkZJR19M
T0NLREVQCisJaWYgKElTX0RHRlgodG9faTkxNShvYmotPmJhc2UuZGV2KSkgJiYKKwkgICAgaTkx
NV9nZW1fb2JqZWN0X2V2aWN0YWJsZSgodm9pZCBfX2ZvcmNlICopb2JqKSkKKwkJYXNzZXJ0X29i
amVjdF9oZWxkX3NoYXJlZChvYmopOworI2VuZGlmCisJcmV0dXJuIG9iai0+bWVtX2ZsYWdzICYg
STkxNV9CT19GTEFHX0lPTUVNOworfQorCiB2b2lkIGk5MTVfZ2VtX2luaXRfX29iamVjdHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJSU5JVF9XT1JLKCZpOTE1LT5tbS5mcmVl
X3dvcmssIF9faTkxNV9nZW1fZnJlZV93b3JrKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3QuaAppbmRleCA3YmY0ZGQ0NmQ4ZDIuLmVhMzIyNGE0ODBjNCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuaApAQCAtMTQ4LDcgKzE0OCw3
IEBAIGk5MTVfZ2VtX29iamVjdF9wdXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikK
IC8qCiAgKiBJZiBtb3JlIHRoYW4gb25lIHBvdGVudGlhbCBzaW11bHRhbmVvdXMgbG9ja2VyLCBh
c3NlcnQgaGVsZC4KICAqLwotc3RhdGljIGlubGluZSB2b2lkIGFzc2VydF9vYmplY3RfaGVsZF9z
aGFyZWQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKK3N0YXRpYyBpbmxpbmUgdm9p
ZCBhc3NlcnRfb2JqZWN0X2hlbGRfc2hhcmVkKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpvYmopCiB7CiAJLyoKIAkgKiBOb3RlIG1tIGxpc3QgbG9va3VwIGlzIHByb3RlY3RlZCBi
eQpAQCAtMjY2LDE3ICsyNjYsOSBAQCBpOTE1X2dlbV9vYmplY3RfdHlwZV9oYXMoY29uc3Qgc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlyZXR1cm4gb2JqLT5vcHMtPmZsYWdzICYg
ZmxhZ3M7CiB9CiAKLXN0YXRpYyBpbmxpbmUgYm9vbAotaTkxNV9nZW1fb2JqZWN0X2hhc19zdHJ1
Y3RfcGFnZShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQotewotCXJldHVy
biBvYmotPmZsYWdzICYgSTkxNV9CT19BTExPQ19TVFJVQ1RfUEFHRTsKLX0KK2Jvb2wgaTkxNV9n
ZW1fb2JqZWN0X2hhc19zdHJ1Y3RfcGFnZShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqKTsKIAotc3RhdGljIGlubGluZSBib29sCi1pOTE1X2dlbV9vYmplY3RfaGFzX2lvbWVt
KGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCi17Ci0JcmV0dXJuIGk5MTVf
Z2VtX29iamVjdF90eXBlX2hhcyhvYmosIEk5MTVfR0VNX09CSkVDVF9IQVNfSU9NRU0pOwotfQor
Ym9vbCBpOTE1X2dlbV9vYmplY3RfaGFzX2lvbWVtKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmopOwogCiBzdGF0aWMgaW5saW5lIGJvb2wKIGk5MTVfZ2VtX29iamVjdF9pc19z
aHJpbmthYmxlKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKaW5kZXggM2Ey
ZDllY2Y4ZTAzLi4yOGRlYzA3ODdiM2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKQEAgLTMzLDEwICszMyw5IEBAIHN0cnVjdCBpOTE1
X2x1dF9oYW5kbGUgewogCiBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdF9vcHMgewogCXVuc2ln
bmVkIGludCBmbGFnczsKLSNkZWZpbmUgSTkxNV9HRU1fT0JKRUNUX0hBU19JT01FTQlCSVQoMSkK
LSNkZWZpbmUgSTkxNV9HRU1fT0JKRUNUX0lTX1NIUklOS0FCTEUJQklUKDIpCi0jZGVmaW5lIEk5
MTVfR0VNX09CSkVDVF9JU19QUk9YWQlCSVQoMykKLSNkZWZpbmUgSTkxNV9HRU1fT0JKRUNUX05P
X01NQVAJCUJJVCg0KQorI2RlZmluZSBJOTE1X0dFTV9PQkpFQ1RfSVNfU0hSSU5LQUJMRQlCSVQo
MSkKKyNkZWZpbmUgSTkxNV9HRU1fT0JKRUNUX0lTX1BST1hZCUJJVCgyKQorI2RlZmluZSBJOTE1
X0dFTV9PQkpFQ1RfTk9fTU1BUAkJQklUKDMpCiAKIAkvKiBJbnRlcmZhY2UgYmV0d2VlbiB0aGUg
R0VNIG9iamVjdCBhbmQgaXRzIGJhY2tpbmcgc3RvcmFnZS4KIAkgKiBnZXRfcGFnZXMoKSBpcyBj
YWxsZWQgb25jZSBwcmlvciB0byB0aGUgdXNlIG9mIHRoZSBhc3NvY2lhdGVkIHNldApAQCAtMjAx
LDE3ICsyMDAsMTggQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgewogCXVuc2lnbmVkIGxv
bmcgZmxhZ3M7CiAjZGVmaW5lIEk5MTVfQk9fQUxMT0NfQ09OVElHVU9VUyBCSVQoMCkKICNkZWZp
bmUgSTkxNV9CT19BTExPQ19WT0xBVElMRSAgIEJJVCgxKQotI2RlZmluZSBJOTE1X0JPX0FMTE9D
X1NUUlVDVF9QQUdFIEJJVCgyKQotI2RlZmluZSBJOTE1X0JPX0FMTE9DX0NQVV9DTEVBUiAgQklU
KDMpCi0jZGVmaW5lIEk5MTVfQk9fQUxMT0NfVVNFUiAgICAgICBCSVQoNCkKKyNkZWZpbmUgSTkx
NV9CT19BTExPQ19DUFVfQ0xFQVIgIEJJVCgyKQorI2RlZmluZSBJOTE1X0JPX0FMTE9DX1VTRVIg
ICAgICAgQklUKDMpCiAjZGVmaW5lIEk5MTVfQk9fQUxMT0NfRkxBR1MgKEk5MTVfQk9fQUxMT0Nf
Q09OVElHVU9VUyB8IFwKIAkJCSAgICAgSTkxNV9CT19BTExPQ19WT0xBVElMRSB8IFwKLQkJCSAg
ICAgSTkxNV9CT19BTExPQ19TVFJVQ1RfUEFHRSB8IFwKIAkJCSAgICAgSTkxNV9CT19BTExPQ19D
UFVfQ0xFQVIgfCBcCiAJCQkgICAgIEk5MTVfQk9fQUxMT0NfVVNFUikKLSNkZWZpbmUgSTkxNV9C
T19SRUFET05MWSAgICAgICAgIEJJVCg1KQotI2RlZmluZSBJOTE1X1RJTElOR19RVUlSS19CSVQg
ICAgNiAvKiB1bmtub3duIHN3aXp6bGluZzsgZG8gbm90IHJlbGVhc2UhICovCisjZGVmaW5lIEk5
MTVfQk9fUkVBRE9OTFkgICAgICAgICBCSVQoNCkKKyNkZWZpbmUgSTkxNV9USUxJTkdfUVVJUktf
QklUICAgIDUgLyogdW5rbm93biBzd2l6emxpbmc7IGRvIG5vdCByZWxlYXNlISAqLwogCisJdW5z
aWduZWQgaW50IG1lbV9mbGFnczoyOworI2RlZmluZSBJOTE1X0JPX0ZMQUdfU1RSVUNUX1BBR0Ug
QklUKDApCisjZGVmaW5lIEk5MTVfQk9fRkxBR19JT01FTSAgICAgICBCSVQoMSkKIAkvKgogCSAq
IElzIHRoZSBvYmplY3QgdG8gYmUgbWFwcGVkIGFzIHJlYWQtb25seSB0byB0aGUgR1BVCiAJICog
T25seSBob25vdXJlZCBpZiBoYXJkd2FyZSBoYXMgcmVsZXZhbnQgcHRlIGJpdApkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYwppbmRleCAwODYwMDVjMWM3ZWEuLmYyZjg1
MGUzMWI4ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Bh
Z2VzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKQEAg
LTM1MSw3ICszNTEsNyBAQCB2b2lkICppOTE1X2dlbV9vYmplY3RfcGluX21hcChzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCWludCBlcnI7CiAKIAlpZiAoIWk5MTVfZ2VtX29iamVj
dF9oYXNfc3RydWN0X3BhZ2Uob2JqKSAmJgotCSAgICAhaTkxNV9nZW1fb2JqZWN0X3R5cGVfaGFz
KG9iaiwgSTkxNV9HRU1fT0JKRUNUX0hBU19JT01FTSkpCisJICAgICFpOTE1X2dlbV9vYmplY3Rf
aGFzX2lvbWVtKG9iaikpCiAJCXJldHVybiBFUlJfUFRSKC1FTlhJTyk7CiAKIAlhc3NlcnRfb2Jq
ZWN0X2hlbGQob2JqKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9waHlzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGh5cy5jCmlu
ZGV4IGJlNzJhZDA2MzRiYS4uNzk4NjYxMmY0OGZhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fcGh5cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9waHlzLmMKQEAgLTc2LDcgKzc2LDcgQEAgc3RhdGljIGludCBpOTE1X2dlbV9v
YmplY3RfZ2V0X3BhZ2VzX3BoeXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAlp
bnRlbF9ndF9jaGlwc2V0X2ZsdXNoKCZ0b19pOTE1KG9iai0+YmFzZS5kZXYpLT5ndCk7CiAKIAkv
KiBXZSdyZSBubyBsb25nZXIgc3RydWN0IHBhZ2UgYmFja2VkICovCi0Jb2JqLT5mbGFncyAmPSB+
STkxNV9CT19BTExPQ19TVFJVQ1RfUEFHRTsKKwlvYmotPm1lbV9mbGFncyAmPSB+STkxNV9CT19G
TEFHX1NUUlVDVF9QQUdFOwogCV9faTkxNV9nZW1fb2JqZWN0X3NldF9wYWdlcyhvYmosIHN0LCBz
Zy0+bGVuZ3RoKTsKIAogCXJldHVybiAwOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fc2htZW0uYwppbmRleCA1ZDE2YzQ0NjJmZGEuLjdhYTFjOTVjN2I3ZCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMKQEAgLTQ0NCw3ICs0NDQsNyBAQCBzaG1l
bV9wcmVhZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCiBzdGF0aWMgdm9pZCBz
aG1lbV9yZWxlYXNlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCiB7Ci0JaWYgKG9i
ai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX1NUUlVDVF9QQUdFKQorCWlmIChpOTE1X2dlbV9vYmpl
Y3RfaGFzX3N0cnVjdF9wYWdlKG9iaikpCiAJCWk5MTVfZ2VtX29iamVjdF9yZWxlYXNlX21lbW9y
eV9yZWdpb24ob2JqKTsKIAogCWZwdXQob2JqLT5iYXNlLmZpbHApOwpAQCAtNTEzLDkgKzUxMyw4
IEBAIHN0YXRpYyBpbnQgc2htZW1fb2JqZWN0X2luaXQoc3RydWN0IGludGVsX21lbW9yeV9yZWdp
b24gKm1lbSwKIAltYXBwaW5nX3NldF9nZnBfbWFzayhtYXBwaW5nLCBtYXNrKTsKIAlHRU1fQlVH
X09OKCEobWFwcGluZ19nZnBfbWFzayhtYXBwaW5nKSAmIF9fR0ZQX1JFQ0xBSU0pKTsKIAotCWk5
MTVfZ2VtX29iamVjdF9pbml0KG9iaiwgJmk5MTVfZ2VtX3NobWVtX29wcywgJmxvY2tfY2xhc3Ms
Ci0JCQkgICAgIEk5MTVfQk9fQUxMT0NfU1RSVUNUX1BBR0UpOwotCisJaTkxNV9nZW1fb2JqZWN0
X2luaXQob2JqLCAmaTkxNV9nZW1fc2htZW1fb3BzLCAmbG9ja19jbGFzcywgMCk7CisJb2JqLT5t
ZW1fZmxhZ3MgfD0gSTkxNV9CT19GTEFHX1NUUlVDVF9QQUdFOwogCW9iai0+d3JpdGVfZG9tYWlu
ID0gSTkxNV9HRU1fRE9NQUlOX0NQVTsKIAlvYmotPnJlYWRfZG9tYWlucyA9IEk5MTVfR0VNX0RP
TUFJTl9DUFU7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV90dG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90dG0uYwppbmRleCBj
NWRlYjhiNzIyN2MuLmI1ZGQzYjcwMzdmNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV90dG0uYwpAQCAtNzMyLDcgKzczMiw2IEBAIHN0YXRpYyB1NjQgaTkxNV90dG1fbW1hcF9v
ZmZzZXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAogY29uc3Qgc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5MTVfZ2VtX3R0bV9vYmpfb3BzID0gewogCS5uYW1lID0g
Imk5MTVfZ2VtX29iamVjdF90dG0iLAotCS5mbGFncyA9IEk5MTVfR0VNX09CSkVDVF9IQVNfSU9N
RU0sCiAKIAkuZ2V0X3BhZ2VzID0gaTkxNV90dG1fZ2V0X3BhZ2VzLAogCS5wdXRfcGFnZXMgPSBp
OTE1X3R0bV9wdXRfcGFnZXMsCkBAIC03NzcsNiArNzc2LDcgQEAgaW50IF9faTkxNV9nZW1fdHRt
X29iamVjdF9pbml0KHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCiAJaTkxNV9nZW1f
b2JqZWN0X2luaXRfbWVtb3J5X3JlZ2lvbihvYmosIG1lbSk7CiAJaTkxNV9nZW1fb2JqZWN0X21h
a2VfdW5zaHJpbmthYmxlKG9iaik7CiAJb2JqLT5yZWFkX2RvbWFpbnMgPSBJOTE1X0dFTV9ET01B
SU5fV0MgfCBJOTE1X0dFTV9ET01BSU5fR1RUOworCW9iai0+bWVtX2ZsYWdzIHw9IEk5MTVfQk9f
RkxBR19JT01FTTsKIAlpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hlX2NvaGVyZW5jeShvYmosIEk5
MTVfQ0FDSEVfTk9ORSk7CiAJSU5JVF9SQURJWF9UUkVFKCZvYmotPnR0bS5nZXRfaW9fcGFnZS5y
YWRpeCwgR0ZQX0tFUk5FTCB8IF9fR0ZQX05PV0FSTik7CiAJbXV0ZXhfaW5pdCgmb2JqLT50dG0u
Z2V0X2lvX3BhZ2UubG9jayk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdXNlcnB0ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Vz
ZXJwdHIuYwppbmRleCA0YjBhY2M3ZWFhMjcuLjU2ZWRmZWZmOGMwMiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCkBAIC01MTAsOCArNTEwLDggQEAgaTkx
NV9nZW1fdXNlcnB0cl9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQlyZXR1cm4gLUVO
T01FTTsKIAogCWRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdChkZXYsICZvYmotPmJhc2UsIGFy
Z3MtPnVzZXJfc2l6ZSk7Ci0JaTkxNV9nZW1fb2JqZWN0X2luaXQob2JqLCAmaTkxNV9nZW1fdXNl
cnB0cl9vcHMsICZsb2NrX2NsYXNzLAotCQkJICAgICBJOTE1X0JPX0FMTE9DX1NUUlVDVF9QQUdF
KTsKKwlpOTE1X2dlbV9vYmplY3RfaW5pdChvYmosICZpOTE1X2dlbV91c2VycHRyX29wcywgJmxv
Y2tfY2xhc3MsIDApOworCW9iai0+bWVtX2ZsYWdzID0gSTkxNV9CT19GTEFHX1NUUlVDVF9QQUdF
OwogCW9iai0+cmVhZF9kb21haW5zID0gSTkxNV9HRU1fRE9NQUlOX0NQVTsKIAlvYmotPndyaXRl
X2RvbWFpbiA9IEk5MTVfR0VNX0RPTUFJTl9DUFU7CiAJaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNo
ZV9jb2hlcmVuY3kob2JqLCBJOTE1X0NBQ0hFX0xMQyk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfZ2VtX29iamVjdC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX2dlbV9vYmplY3QuYwppbmRleCAwYzhlY2ZkZjU0
MDUuLmY5NjNiOGUxZTM3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9odWdlX2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
c2VsZnRlc3RzL2h1Z2VfZ2VtX29iamVjdC5jCkBAIC0xMTQsOCArMTE0LDggQEAgaHVnZV9nZW1f
b2JqZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQlyZXR1cm4gRVJSX1BUUigt
RU5PTUVNKTsKIAogCWRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5pdCgmaTkxNS0+ZHJtLCAmb2Jq
LT5iYXNlLCBkbWFfc2l6ZSk7Ci0JaTkxNV9nZW1fb2JqZWN0X2luaXQob2JqLCAmaHVnZV9vcHMs
ICZsb2NrX2NsYXNzLAotCQkJICAgICBJOTE1X0JPX0FMTE9DX1NUUlVDVF9QQUdFKTsKKwlpOTE1
X2dlbV9vYmplY3RfaW5pdChvYmosICZodWdlX29wcywgJmxvY2tfY2xhc3MsIDApOworCW9iai0+
bWVtX2ZsYWdzIHw9IEk5MTVfQk9fRkxBR19TVFJVQ1RfUEFHRTsKIAogCW9iai0+cmVhZF9kb21h
aW5zID0gSTkxNV9HRU1fRE9NQUlOX0NQVTsKIAlvYmotPndyaXRlX2RvbWFpbiA9IEk5MTVfR0VN
X0RPTUFJTl9DUFU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2h1Z2VfcGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaHVn
ZV9wYWdlcy5jCmluZGV4IGRhZGQ0ODViYzUyZi4uY2NjNjdlZDFhODRiIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwpAQCAtMTY3LDkgKzE2
Nyw4IEBAIGh1Z2VfcGFnZXNfb2JqZWN0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAog
CQlyZXR1cm4gRVJSX1BUUigtRU5PTUVNKTsKIAogCWRybV9nZW1fcHJpdmF0ZV9vYmplY3RfaW5p
dCgmaTkxNS0+ZHJtLCAmb2JqLT5iYXNlLCBzaXplKTsKLQlpOTE1X2dlbV9vYmplY3RfaW5pdChv
YmosICZodWdlX3BhZ2Vfb3BzLCAmbG9ja19jbGFzcywKLQkJCSAgICAgSTkxNV9CT19BTExPQ19T
VFJVQ1RfUEFHRSk7Ci0KKwlpOTE1X2dlbV9vYmplY3RfaW5pdChvYmosICZodWdlX3BhZ2Vfb3Bz
LCAmbG9ja19jbGFzcywgMCk7CisJb2JqLT5tZW1fZmxhZ3MgfD0gSTkxNV9CT19GTEFHX1NUUlVD
VF9QQUdFOwogCWk5MTVfZ2VtX29iamVjdF9zZXRfdm9sYXRpbGUob2JqKTsKIAogCW9iai0+d3Jp
dGVfZG9tYWluID0gSTkxNV9HRU1fRE9NQUlOX0NQVTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmMKaW5kZXggNDRiNWRlMDZjZTY0Li5m
Y2VhMGRkYWJjYzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fbW1hbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fbW1hbi5jCkBAIC04MzcsNyArODM3LDcgQEAgc3RhdGljIGJvb2wgY2FuX21t
YXAoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwgZW51bSBpOTE1X21tYXBfdHlwZSB0
eXBlKQogCiAJaWYgKHR5cGUgIT0gSTkxNV9NTUFQX1RZUEVfR1RUICYmCiAJICAgICFpOTE1X2dl
bV9vYmplY3RfaGFzX3N0cnVjdF9wYWdlKG9iaikgJiYKLQkgICAgIWk5MTVfZ2VtX29iamVjdF90
eXBlX2hhcyhvYmosIEk5MTVfR0VNX09CSkVDVF9IQVNfSU9NRU0pKQorCSAgICAhaTkxNV9nZW1f
b2JqZWN0X2hhc19pb21lbShvYmopKQogCQlyZXR1cm4gZmFsc2U7CiAKIAlyZXR1cm4gdHJ1ZTsK
QEAgLTk5MSw3ICs5OTEsNyBAQCBzdGF0aWMgY29uc3QgY2hhciAqcmVwcl9tbWFwX3R5cGUoZW51
bSBpOTE1X21tYXBfdHlwZSB0eXBlKQogc3RhdGljIGJvb2wgY2FuX2FjY2Vzcyhjb25zdCBzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewogCXJldHVybiBpOTE1X2dlbV9vYmplY3Rf
aGFzX3N0cnVjdF9wYWdlKG9iaikgfHwKLQkgICAgICAgaTkxNV9nZW1fb2JqZWN0X3R5cGVfaGFz
KG9iaiwgSTkxNV9HRU1fT0JKRUNUX0hBU19JT01FTSk7CisJICAgICAgIGk5MTVfZ2VtX29iamVj
dF9oYXNfaW9tZW0ob2JqKTsKIH0KIAogc3RhdGljIGludCBfX2lndF9tbWFwX2FjY2VzcyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fcGh5cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9waHlzLmMKaW5kZXggM2E2Y2U4N2Y4YjUyLi5kNDNkOGRh
ZTBmNjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fcGh5cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fcGh5cy5jCkBAIC0yNSwxMyArMjUsMTQgQEAgc3RhdGljIGludCBtb2NrX3BoeXNfb2Jq
ZWN0KHZvaWQgKmFyZykKIAkJZ290byBvdXQ7CiAJfQogCisJaTkxNV9nZW1fb2JqZWN0X2xvY2so
b2JqLCBOVUxMKTsKIAlpZiAoIWk5MTVfZ2VtX29iamVjdF9oYXNfc3RydWN0X3BhZ2Uob2JqKSkg
eworCQlpOTE1X2dlbV9vYmplY3RfdW5sb2NrKG9iaik7CiAJCWVyciA9IC1FSU5WQUw7CiAJCXBy
X2Vycigic2htZW0gaGFzIG5vIHN0cnVjdCBwYWdlXG4iKTsKIAkJZ290byBvdXRfb2JqOwogCX0K
IAotCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaiwgTlVMTCk7CiAJZXJyID0gaTkxNV9nZW1fb2Jq
ZWN0X2F0dGFjaF9waHlzKG9iaiwgUEFHRV9TSVpFKTsKIAlpOTE1X2dlbV9vYmplY3RfdW5sb2Nr
KG9iaik7CiAJaWYgKGVycikgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9ncHVfZXJyb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKaW5k
ZXggY2IxODJjNmQyNjVhLi5hMmM1OGI1NGE1OTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
cHVfZXJyb3IuYwpAQCAtMTAzOSw3ICsxMDM5LDcgQEAgaTkxNV92bWFfY29yZWR1bXBfY3JlYXRl
KGNvbnN0IHN0cnVjdCBpbnRlbF9ndCAqZ3QsCiAJCQlpZiAocmV0KQogCQkJCWJyZWFrOwogCQl9
Ci0JfSBlbHNlIGlmIChpOTE1X2dlbV9vYmplY3RfaXNfbG1lbSh2bWEtPm9iaikpIHsKKwl9IGVs
c2UgaWYgKF9faTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0odm1hLT5vYmopKSB7CiAJCXN0cnVjdCBp
bnRlbF9tZW1vcnlfcmVnaW9uICptZW0gPSB2bWEtPm9iai0+bW0ucmVnaW9uOwogCQlkbWFfYWRk
cl90IGRtYTsKIAotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
