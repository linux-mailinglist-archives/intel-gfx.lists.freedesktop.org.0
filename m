Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DD2E2B86
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 09:56:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE60C6E04A;
	Thu, 24 Oct 2019 07:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D181D6E04A
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 07:56:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 00:56:20 -0700
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="192107404"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 00:56:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 10:56:08 +0300
Message-Id: <20191024075608.11511-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191022140300.20872-1-jani.nikula@intel.com>
References: <20191022140300.20872-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2] drm/i915/bios: add compression parameter
 block definition
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

QWRkIGRlZmluaXRpb24gZm9yIGJsb2NrIDU2LCB0aGUgY29tcHJlc3Npb24gcGFyYW1ldGVycy4K
CnYyOiBhZGQgbWlzc2luZyBzbGljZV9oZWlnaHQgKFZhbmRpdGEpCgpDYzogVmFuZGl0YSBLdWxr
YXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92YnRfZGVmcy5oIHwgNTIgKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDUyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3ZidF9kZWZzLmgKaW5kZXggZTMwNDVjZWQ0YmZlLi42OWE3Y2IxZmExMjEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKQEAgLTExNCw2
ICsxMTQsNyBAQCBlbnVtIGJkYl9ibG9ja19pZCB7CiAJQkRCX0xWRFNfUE9XRVIJCQk9IDQ0LAog
CUJEQl9NSVBJX0NPTkZJRwkJCT0gNTIsCiAJQkRCX01JUElfU0VRVUVOQ0UJCT0gNTMsCisJQkRC
X0NPTVBSRVNTSU9OX1BBUkFNRVRFUlMJPSA1NiwKIAlCREJfU0tJUAkJCT0gMjU0LCAvKiBWQklP
UyBwcml2YXRlIGJsb2NrLCBpZ25vcmUgKi8KIH07CiAKQEAgLTgxMSw0ICs4MTIsNTUgQEAgc3Ry
dWN0IGJkYl9taXBpX3NlcXVlbmNlIHsKIAl1OCBkYXRhWzBdOyAvKiB1cCB0byA2IHZhcmlhYmxl
IGxlbmd0aCBibG9ja3MgKi8KIH0gX19wYWNrZWQ7CiAKKy8qCisgKiBCbG9jayA1NiAtIENvbXBy
ZXNzaW9uIFBhcmFtZXRlcnMKKyAqLworCisjZGVmaW5lIFZCVF9SQ19CVUZGRVJfQkxPQ0tfU0la
RV8xS0IJMAorI2RlZmluZSBWQlRfUkNfQlVGRkVSX0JMT0NLX1NJWkVfNEtCCTEKKyNkZWZpbmUg
VkJUX1JDX0JVRkZFUl9CTE9DS19TSVpFXzE2S0IJMgorI2RlZmluZSBWQlRfUkNfQlVGRkVSX0JM
T0NLX1NJWkVfNjRLQgkzCisKKyNkZWZpbmUgVkJUX0RTQ19MSU5FX0JVRkZFUl9ERVBUSCh2YnRf
dmFsdWUpCSgodmJ0X3ZhbHVlKSArIDgpIC8qIGJpdHMgKi8KKyNkZWZpbmUgVkJUX0RTQ19NQVhf
QlBQKHZidF92YWx1ZSkJCSg2ICsgKHZidF92YWx1ZSkgKiAyKQorCitzdHJ1Y3QgZHNjX2NvbXBy
ZXNzaW9uX3BhcmFtZXRlcnNfZW50cnkgeworCXU4IHZlcnNpb25fbWFqb3I6NDsKKwl1OCB2ZXJz
aW9uX21pbm9yOjQ7CisKKwl1OCByY19idWZmZXJfYmxvY2tfc2l6ZToyOworCXU4IHJlc2VydmVk
MTo2OworCisJLyoKKwkgKiBCdWZmZXIgc2l6ZSBpbiBieXRlczoKKwkgKgorCSAqIDQgXiByY19i
dWZmZXJfYmxvY2tfc2l6ZSAqIDEwMjQgKiAocmNfYnVmZmVyX3NpemUgKyAxKSBieXRlcworCSAq
LworCXU4IHJjX2J1ZmZlcl9zaXplOworCXUzMiBzbGljZXNfcGVyX2xpbmU7CisKKwl1OCBsaW5l
X2J1ZmZlcl9kZXB0aDo0OworCXU4IHJlc2VydmVkMjo0OworCisJLyogRmxhZyBCaXRzIDEgKi8K
Kwl1OCBibG9ja19wcmVkaWN0aW9uX2VuYWJsZToxOworCXU4IHJlc2VydmVkMzo3OworCisJdTgg
bWF4X2JwcDsgLyogbWFwcGluZyAqLworCisJLyogQ29sb3IgZGVwdGggY2FwYWJpbGl0aWVzICov
CisJdTggcmVzZXJ2ZWQ0OjE7CisJdTggc3VwcG9ydF84YnBjOjE7CisJdTggc3VwcG9ydF8xMGJw
YzoxOworCXU4IHN1cHBvcnRfMTJicGM6MTsKKwl1OCByZXNlcnZlZDU6NDsKKworCXUxNiBzbGlj
ZV9oZWlnaHQ7Cit9IF9fcGFja2VkOworCitzdHJ1Y3QgYmRiX2NvbXByZXNzaW9uX3BhcmFtZXRl
cnMgeworCXUxNiBlbnRyeV9zaXplOworCXN0cnVjdCBkc2NfY29tcHJlc3Npb25fcGFyYW1ldGVy
c19lbnRyeSBkYXRhWzE2XTsKK30gX19wYWNrZWQ7CisKICNlbmRpZiAvKiBfSU5URUxfVkJUX0RF
RlNfSF8gKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
