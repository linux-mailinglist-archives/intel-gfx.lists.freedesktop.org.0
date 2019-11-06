Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B93F20CA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 22:26:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 633E16E241;
	Wed,  6 Nov 2019 21:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32DA6E241
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 21:26:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 13:26:33 -0800
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="192602865"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.10.155])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 13:26:33 -0800
Date: Wed, 6 Nov 2019 13:26:28 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20191106212628.dm7hb6oyx5f4z6qn@ldmartin-desk1>
References: <20191106123135.12441-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106123135.12441-1-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lmem: fixup fake lmem teardown
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMTI6MzE6MzVQTSArMDAwMCwgTWF0dGhldyBBdWxkIHdy
b3RlOgo+V2Ugc2hvdWxkIG5vdCBiZSB1bmNvbmRpdGlvbmFsbHkgY2FsbGluZyByZWxlYXNlX2Zh
a2VfbG1lbV9iYXIuCj4KPlNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KPkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNv
bT4KPkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KClJldmlld2Vk
LWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KClVuYmluZGlu
ZyB0aGUgbW9kdWxlIGlzIG5vdyB3b3JraW5nIGFnYWluLCB0aGFua3MuCgpMdWNhcyBEZSBNYXJj
aGkKCj4tLS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jIHwgNiAr
KysrLS0KPiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX2xtZW0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMKPmluZGV4IDU4MzExODA5
NTYzNS4uZWRkYjM5MjkxN2FhIDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcmVnaW9uX2xtZW0uYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9u
X2xtZW0uYwo+QEAgLTUxLDggKzUxLDEwIEBAIHN0YXRpYyBpbnQgaW5pdF9mYWtlX2xtZW1fYmFy
KHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCj4KPiBzdGF0aWMgdm9pZCByZWxlYXNl
X2Zha2VfbG1lbV9iYXIoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSkKPiB7Cj4tCWlm
IChkcm1fbW1fbm9kZV9hbGxvY2F0ZWQoJm1lbS0+ZmFrZV9tYXBwYWJsZSkpCj4tCQlkcm1fbW1f
cmVtb3ZlX25vZGUoJm1lbS0+ZmFrZV9tYXBwYWJsZSk7Cj4rCWlmICghZHJtX21tX25vZGVfYWxs
b2NhdGVkKCZtZW0tPmZha2VfbWFwcGFibGUpKQo+KwkJcmV0dXJuOwo+Kwo+Kwlkcm1fbW1fcmVt
b3ZlX25vZGUoJm1lbS0+ZmFrZV9tYXBwYWJsZSk7Cj4KPiAJZG1hX3VubWFwX3Jlc291cmNlKCZt
ZW0tPmk5MTUtPmRybS5wZGV2LT5kZXYsCj4gCQkJICAgbWVtLT5yZW1hcF9hZGRyLAo+LS0gCj4y
LjIwLjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
