Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC67E855E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95DC26E1A5;
	Tue, 29 Oct 2019 10:18:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30DB36E1BB;
 Tue, 29 Oct 2019 10:18:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:18:31 -0700
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="203524307"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:18:27 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 29 Oct 2019 11:17:51 +0100
Message-Id: <20191029101751.5848-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191029101751.5848-1-janusz.krzysztofik@linux.intel.com>
References: <20191029101751.5848-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RESEND PATCH i-g-t v2 1/1] tests/i915_module_load: Use
 new name of fault injection module parameter
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmFtZSBvZiB0aGUgaTkxNSBtb2R1bGUgcGFyYW1ldGVyIHByb3ZpZGluZyBmYXVsdCBpbmplY3Rp
b24gZnVuY3Rpb24gaXMKY2hhbmdpbmcgZm9yIGNvbnNpc3RlbmN5IHdpdGggYSBuZXcgY29udmVu
dGlvbiBvZiBuYW1pbmcgaTkxNSBkcml2ZXIKaW50ZXJuYWwgZnVuY3Rpb25zIGNhbGxlZCBmcm9t
IHRoZSBkcml2ZXIgUENJIC5wcm9iZSBlbnRyeSBwb2ludC4gIEFkanVzdAp0aGUgdGVzdCB0byB1
c2UgdGhlIG5ldyBuYW1lLgoKU3VnZ2VzdGVkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5s
YWh0aW5lbkBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2Zp
ayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1pY2hhxYIgV2FqZGVj
emtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IE1pY2hhxYIgV2luaWFyc2tpIDxt
aWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KQ2M6IFBpb3RyIFBpw7Nya293c2tpIDxwaW90ci5w
aW9ya293c2tpQGludGVsLmNvbT4KQ2M6IFRvbWFzeiBMaXMgPHRvbWFzei5saXNAaW50ZWwuY29t
PgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgpS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
dGVzdHMvaTkxNS9pOTE1X21vZHVsZV9sb2FkLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2k5MTVf
bW9kdWxlX2xvYWQuYyBiL3Rlc3RzL2k5MTUvaTkxNV9tb2R1bGVfbG9hZC5jCmluZGV4IDdmZTgz
NTIwLi5hNjIwYWI0MSAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9pOTE1X21vZHVsZV9sb2FkLmMK
KysrIGIvdGVzdHMvaTkxNS9pOTE1X21vZHVsZV9sb2FkLmMKQEAgLTM1Niw3ICszNTYsNyBAQCBp
Z3RfbWFpbgogCiAJCWlndF9pOTE1X2RyaXZlcl91bmxvYWQoKTsKIAotCQl3aGlsZSAoaW5qZWN0
X2ZhdWx0KCJpOTE1IiwgImluamVjdF9sb2FkX2ZhaWx1cmUiLCArK2kpID09IDApCisJCXdoaWxl
IChpbmplY3RfZmF1bHQoImk5MTUiLCAiaW5qZWN0X3Byb2JlX2ZhaWx1cmUiLCArK2kpID09IDAp
CiAJCQk7CiAKIAkJLyogV2UgZXhwZWN0IHRvIGhpdCBhdCBsZWFzdCBvbmUgZmF1bHQhICovCi0t
IAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
