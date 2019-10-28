Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F88DE758F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 16:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59796E973;
	Mon, 28 Oct 2019 15:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0B86E96C;
 Mon, 28 Oct 2019 15:53:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 08:53:40 -0700
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="193299043"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 08:53:37 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 28 Oct 2019 16:53:18 +0100
Message-Id: <20191028155318.23416-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191028155318.23416-1-janusz.krzysztofik@linux.intel.com>
References: <20191028155318.23416-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v3 4/4] tests/gem_ctx_shared:
 Calculate object attributs from actual page size
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZXhlYy1zaGFyZWQtZ3R0LSogc3VidGVzdHMgdXNlIGhhcmRjb2RlZCB2YWx1ZXMgZm9yIG9iamVj
dCBzaXplIGFuZApzb2Z0cGluIG9mZnNldCwgYmFzZWQgb24gNGtCIHBhZ2Ugc2l6ZSBhc3N1bXB0
aW9uLiAgVGhhdCBtYXkgcmVzdWx0IGluCnRob3NlIHN1YnRlc3RzIGZhaWxpbmcgd2hlbiBydW4g
b24gZnV0dXJlIGJhY2tpbmcgc3RvcmVzIHdpdGggcG9zc2libHkKbGFyZ2VyIG1pbmltdW0gcGFn
ZSBzaXplcy4KClJlcGxhY2UgaGFyZGNvZGVkIGNvbnN0YW50cyB3aXRoIHZhbHVlcyBkZXJpdmVk
IGZyb20gbWluaW11bSBwYWdlIHNpemUKb2YgYWN0dWFsIGJhY2tpbmcgc3RvcmUgdGhlIHRlc3Qg
aXMgcnVubmluZyBvbi4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6
LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYyB8IDYgKysr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYyBiL3Rlc3RzL2k5MTUvZ2VtX2N0
eF9zaGFyZWQuYwppbmRleCBmNzg1MjQ4Mi4uZDM4NmRlNjUgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5
MTUvZ2VtX2N0eF9zaGFyZWQuYworKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMKQEAg
LTE5NSw2ICsxOTUsNyBAQCBzdGF0aWMgdm9pZCBleGVjX3NoYXJlZF9ndHQoaW50IGk5MTUsIHVu
c2lnbmVkIGludCByaW5nKQogCXVpbnQzMl90IHNjcmF0Y2gsICpzOwogCXVpbnQzMl90IGJhdGNo
LCBjc1sxNl07CiAJdWludDY0X3Qgb2Zmc2V0OworCXVpbnQ2NF90IHBhZ2Vfc2l6ZTsKIAlpbnQg
aTsKIAogCWdlbV9yZXF1aXJlX3JpbmcoaTkxNSwgcmluZyk7CkBAIC0yMDMsNyArMjA0LDggQEAg
c3RhdGljIHZvaWQgZXhlY19zaGFyZWRfZ3R0KGludCBpOTE1LCB1bnNpZ25lZCBpbnQgcmluZykK
IAljbG9uZSA9IGdlbV9jb250ZXh0X2Nsb25lKGk5MTUsIDAsIEk5MTVfQ09OVEVYVF9DTE9ORV9W
TSwgMCk7CiAKIAkvKiBGaW5kIGEgaG9sZSBiaWcgZW5vdWdoIGZvciBib3RoIG9iamVjdHMgbGF0
ZXIgKi8KLQlzY3JhdGNoID0gZ2VtX2NyZWF0ZShpOTE1LCAxNjM4NCk7CisJcGFnZV9zaXplID0g
MXVsbCA8PCBnZW1fbWluX3BhZ2Vfc2l6ZV9vcmRlcihpOTE1KTsKKwlzY3JhdGNoID0gZ2VtX2Ny
ZWF0ZShpOTE1LCA0ICogcGFnZV9zaXplKTsKIAlnZW1fd3JpdGUoaTkxNSwgc2NyYXRjaCwgMCwg
JmJiZSwgc2l6ZW9mKGJiZSkpOwogCW9iai5oYW5kbGUgPSBzY3JhdGNoOwogCWdlbV9leGVjYnVm
KGk5MTUsICZleGVjYnVmKTsKQEAgLTI0Niw3ICsyNDgsNyBAQCBzdGF0aWMgdm9pZCBleGVjX3No
YXJlZF9ndHQoaW50IGk5MTUsIHVuc2lnbmVkIGludCByaW5nKQogCWdlbV93cml0ZShpOTE1LCBi
YXRjaCwgMCwgY3MsIHNpemVvZihjcykpOwogCiAJb2JqLmhhbmRsZSA9IGJhdGNoOwotCW9iai5v
ZmZzZXQgKz0gODE5MjsgLyogbWFrZSBzdXJlIHdlIGRvbid0IGNhdXNlIGFuIGV2aWN0aW9uISAq
LworCW9iai5vZmZzZXQgKz0gMiAqIHBhZ2Vfc2l6ZTsgLyogbWFrZSBzdXJlIHdlIGRvbid0IGNh
dXNlIGFuIGV2aWN0aW9uISAqLwogCWV4ZWNidWYucnN2ZDEgPSBjbG9uZTsKIAlpZiAoZ2VuID4g
MyAmJiBnZW4gPCA2KQogCQlleGVjYnVmLmZsYWdzIHw9IEk5MTVfRVhFQ19TRUNVUkU7Ci0tIAoy
LjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
