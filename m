Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 114F937F776
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 14:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 466ED6ED05;
	Thu, 13 May 2021 12:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C15156ED03;
 Thu, 13 May 2021 12:08:08 +0000 (UTC)
IronPort-SDR: ud4nSBo/UrF9VlxAdMesTG1rdCv2+Vh3gMe/s0kEzZxBMGOu7eNxCgKs8K6RsU9tMUm+Nz8alT
 oGnFqB5dKscg==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="220921338"
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="220921338"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 05:08:06 -0700
IronPort-SDR: H+DcFarT8g/NcLQVwyJIpXXFWhLnI6FseWn7VOgWqKmS+SUcPXXHLlyjHeYy0zwba9RK/z3XS7
 7U1D3ruNAJXQ==
X-IronPort-AV: E=Sophos;i="5.82,296,1613462400"; d="scan'208";a="623602015"
Received: from cjodwyer-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.20.105])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2021 05:08:04 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 May 2021 13:07:56 +0100
Message-Id: <20210513120756.622515-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gem: Pin the L-shape quirked object
 as unshrinkable
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
Cc: dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpXaGVuIGluc3Rh
bnRpYXRpbmcgYSB0aWxlZCBvYmplY3Qgb24gYW4gTC1zaGFwZWQgbWVtb3J5IG1hY2hpbmUsIHdl
IG1hcmsKdGhlIG9iamVjdCBhcyB1bnNocmlua2FibGUgdG8gcHJldmVudCB0aGUgc2hyaW5rZXIg
ZnJvbSB0cnlpbmcgdG8gc3dhcApvdXQgdGhlIHBhZ2VzLiBXZSBoYXZlIHRvIGRvIHRoaXMgYXMg
d2UgZG8gbm90IGtub3cgdGhlIHN3aXp6bGluZyBvbiB0aGUKaW5kaXZpZHVhbCBwYWdlcywgYW5k
IHNvIHRoZSBkYXRhIHdpbGwgYmUgc2NyYW1ibGVkIGFjcm9zcyBzd2FwIG91dC9pbi4KCk5vdCBv
bmx5IGRvIHdlIG5lZWQgdG8gbW92ZSB0aGUgb2JqZWN0IG9mZiB0aGUgc2hyaW5rZXIgbGlzdCwg
d2UgbmVlZCB0bwptYXJrIHRoZSBvYmplY3Qgd2l0aCBzaHJpbmtfcGluIHNvIHRoYXQgdGhlIGNv
dW50ZXIgaXMgY29uc2lzdGVudCBhY3Jvc3MKY2FsbHMgdG8gbWFkdmlzZS4KCnYyOiBpbiB0aGUg
bWFkdmlzZSBpb2N0bCB3ZSBuZWVkIHRvIGNoZWNrIGlmIHRoZSBvYmplY3QgaXMgY3VycmVudGx5
CnNocmlua2FibGUvcHVyZ2VhYmxlLCBub3QgaWYgdGhlIG9iamVjdCB0eXBlIHN1cHBvcnRzIHNo
cmlua2luZwoKRml4ZXM6IDAxNzU5NjllNDg5YSAoImRybS9pOTE1L2dlbTogVXNlIHNocmlua2Fi
bGUgc3RhdHVzIGZvciB1bmtub3duIHN3aXp6bGUgcXVpcmtzIikKUmVmZXJlbmNlczogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy8zMjkzClJlcG9ydGVk
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVk
LW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jIHwgIDIgKysKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgIHwgMTEgKysrKystLS0tLS0KIDIgZmlsZXMg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKaW5kZXggYWVkOGEzN2NjZGM5Li43MzYxOTcxYzE3
N2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCkBAIC02Myw2
ICs2Myw4IEBAIHZvaWQgX19pOTE1X2dlbV9vYmplY3Rfc2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCiAJICAgIGk5MTUtPnF1aXJrcyAmIFFVSVJLX1BJTl9TV0laWkxF
RF9QQUdFUykgewogCQlHRU1fQlVHX09OKGk5MTVfZ2VtX29iamVjdF9oYXNfdGlsaW5nX3F1aXJr
KG9iaikpOwogCQlpOTE1X2dlbV9vYmplY3Rfc2V0X3RpbGluZ19xdWlyayhvYmopOworCQlHRU1f
QlVHX09OKCFsaXN0X2VtcHR5KCZvYmotPm1tLmxpbmspKTsKKwkJYXRvbWljX2luYygmb2JqLT5t
bS5zaHJpbmtfcGluKTsKIAkJc2hyaW5rYWJsZSA9IGZhbHNlOwogCX0KIApkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMKaW5kZXggZDAwMThjNWY4OGJkLi5jZmZkN2Y0Zjg3ZGMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwpAQCAtMTAwOSwxMiArMTAwOSwxMSBAQCBpOTE1X2dlbV9tYWR2aXNlX2lvY3Rs
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCW9iai0+bW0ubWFkdiA9IGFy
Z3MtPm1hZHY7CiAKIAlpZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19wYWdlcyhvYmopKSB7Ci0JCXN0
cnVjdCBsaXN0X2hlYWQgKmxpc3Q7CisJCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKLQkJaWYgKGk5
MTVfZ2VtX29iamVjdF9pc19zaHJpbmthYmxlKG9iaikpIHsKLQkJCXVuc2lnbmVkIGxvbmcgZmxh
Z3M7Ci0KLQkJCXNwaW5fbG9ja19pcnFzYXZlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwor
CQlzcGluX2xvY2tfaXJxc2F2ZSgmaTkxNS0+bW0ub2JqX2xvY2ssIGZsYWdzKTsKKwkJaWYgKCFs
aXN0X2VtcHR5KCZvYmotPm1tLmxpbmspKSB7CisJCQlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0Owog
CiAJCQlpZiAob2JqLT5tbS5tYWR2ICE9IEk5MTVfTUFEVl9XSUxMTkVFRCkKIAkJCQlsaXN0ID0g
Jmk5MTUtPm1tLnB1cmdlX2xpc3Q7CkBAIC0xMDIyLDggKzEwMjEsOCBAQCBpOTE1X2dlbV9tYWR2
aXNlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCQkJbGlzdCA9
ICZpOTE1LT5tbS5zaHJpbmtfbGlzdDsKIAkJCWxpc3RfbW92ZV90YWlsKCZvYmotPm1tLmxpbmss
IGxpc3QpOwogCi0JCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZpOTE1LT5tbS5vYmpfbG9jaywg
ZmxhZ3MpOwogCQl9CisJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmk5MTUtPm1tLm9ial9sb2Nr
LCBmbGFncyk7CiAJfQogCiAJLyogaWYgdGhlIG9iamVjdCBpcyBubyBsb25nZXIgYXR0YWNoZWQs
IGRpc2NhcmQgaXRzIGJhY2tpbmcgc3RvcmFnZSAqLwotLSAKMi4yNi4zCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
