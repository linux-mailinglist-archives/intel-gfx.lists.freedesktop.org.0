Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF81F3A297E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 12:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A02A76E499;
	Thu, 10 Jun 2021 10:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F956E499;
 Thu, 10 Jun 2021 10:40:21 +0000 (UTC)
IronPort-SDR: J7YIBuNnB5cqi/kB9c8RYBqi4LpuxwzxA80hxoBnipT1QHT9FDsaCoAE6+IYCaS/4R7gsRHDWx
 hQnplg2MknuQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="269125146"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="269125146"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 03:40:18 -0700
IronPort-SDR: nDsp7ngTXPj8MCume9uDc80QRr2jtf1hP+wuNkrtyIMtoKYnXkq7t45fIBPSGZRjfVc9U0Eg7I
 dsNsybanBXiQ==
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="448672052"
Received: from jmotowid-mobl.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.213.30.122])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 03:40:17 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 10 Jun 2021 12:39:55 +0200
Message-Id: <20210610103955.67802-1-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgaGF2ZSBlc3RhYmxpc2hlZCBwcmV2aW91c2x5IHdlIHN0b3AgdXNpbmcgcmVsb2NhdGlvbnMg
c3RhcnRpbmcKZnJvbSBnZW4xMiBwbGF0Zm9ybXMgd2l0aCBUaWdlcmxha2UgYXMgYW4gZXhjZXB0
aW9uLiBXZSBrZWVwIHRoaXMKc3RhdGVtZW50IGJ1dCB3ZSB3YW50IHRvIGVuYWJsZSByZWxvY2F0
aW9ucyBjb25kaXRpb25hbGx5IGZvcgpSb2NrZXRsYWtlIGFuZCBBbGRlcmxha2UgdW5kZXIgcmVx
dWlyZV9mb3JjZV9wcm9iZSBmbGFnIHNldC4KCktlZXBpbmcgcmVsb2NhdGlvbnMgdW5kZXIgcmVx
dWlyZV9mb3JjZV9wcm9iZSBmbGFnIGlzIGludGVyaW0gc29sdXRpb24KdW50aWwgSUdUcyB3aWxs
IGJlIHJld3JpdHRlbiB0byB1c2Ugc29mdHBpbi4KCnYyOiAtIHJlbW92ZSBpbmxpbmUgZnJvbSBm
dW5jdGlvbiBkZWZpbml0aW9uIChKYW5pKQogICAgLSBmaXggaW5kZW50YXRpb24KCnYzOiBjaGFu
Z2UgdG8gR1JBUEhJQ1NfVkVSKCkgKFpiaWduaWV3KQoKU2lnbmVkLW9mZi1ieTogWmJpZ25pZXcg
S2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+CkNjOiBEYXZlIEFp
cmxpZSA8YWlybGllZEByZWRoYXQuY29tPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRl
ckBpbnRlbC5jb20+CkNjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+CkFj
a2VkLWJ5OiBEYXZlIEFpcmxpZSA8YWlybGllZEByZWRoYXQuY29tPgotLS0KIC4uLi9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyAgICB8IDI0ICsrKysrKysrKysrKysrKy0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IGE4
YWJjOWFmNWZmNC4uMzBjNGYwNTQ5ZWEwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAgLTQ5MSwxNiArNDkxLDMwIEBAIGViX3VucmVzZXJ2
ZV92bWEoc3RydWN0IGViX3ZtYSAqZXYpCiAJZXYtPmZsYWdzICY9IH5fX0VYRUNfT0JKRUNUX1JF
U0VSVkVEOwogfQogCitzdGF0aWMgYm9vbCBwbGF0Zm9ybV9oYXNfcmVsb2NzX2VuYWJsZWQoY29u
c3Qgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIpCit7CisJLyoKKwkgKiBSZWxvY2F0aW9ucyBh
cmUgZGlzYWxsb3dlZCBzdGFydGluZyBmcm9tIGdlbjEyIHdpdGggVGlnZXJsYWtlCisJICogYXMg
YW4gZXhjZXB0aW9uLiBXZSBhbGxvdyB0ZW1wb3JhcmlseSB1c2UgcmVsb2NhdGlvbnMgZm9yIFJv
Y2tldGxha2UKKwkgKiBhbmQgQWxkZXJsYWtlIHdoZW4gcmVxdWlyZV9mb3JjZV9wcm9iZSBmbGFn
IGlzIHNldC4KKwkgKi8KKwlpZiAoR1JBUEhJQ1NfVkVSKGViLT5pOTE1KSA8IDEyIHx8IElTX1RJ
R0VSTEFLRShlYi0+aTkxNSkpCisJCXJldHVybiB0cnVlOworCisJaWYgKElOVEVMX0lORk8oZWIt
Pmk5MTUpLT5yZXF1aXJlX2ZvcmNlX3Byb2JlICYmCisJICAgIChJU19ST0NLRVRMQUtFKGViLT5p
OTE1KSB8fCBJU19BTERFUkxBS0VfUyhlYi0+aTkxNSkgfHwKKwkgICAgIElTX0FMREVSTEFLRV9Q
KGViLT5pOTE1KSkpCisJCXJldHVybiB0cnVlOworCisJcmV0dXJuIGZhbHNlOworfQorCiBzdGF0
aWMgaW50CiBlYl92YWxpZGF0ZV92bWEoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCiAJCXN0
cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyICplbnRyeSwKIAkJc3RydWN0IGk5MTVfdm1h
ICp2bWEpCiB7Ci0JLyogUmVsb2NhdGlvbnMgYXJlIGRpc2FsbG93ZWQgZm9yIGFsbCBwbGF0Zm9y
bXMgYWZ0ZXIgVEdMLUxQLiAgVGhpcwotCSAqIGFsc28gY292ZXJzIGFsbCBwbGF0Zm9ybXMgd2l0
aCBsb2NhbCBtZW1vcnkuCi0JICovCi0JaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50ICYmCi0J
ICAgIEdSQVBISUNTX1ZFUihlYi0+aTkxNSkgPj0gMTIgJiYgIUlTX1RJR0VSTEFLRShlYi0+aTkx
NSkpCisJaWYgKGVudHJ5LT5yZWxvY2F0aW9uX2NvdW50ICYmICFwbGF0Zm9ybV9oYXNfcmVsb2Nz
X2VuYWJsZWQoZWIpKQogCQlyZXR1cm4gLUVJTlZBTDsKIAogCWlmICh1bmxpa2VseShlbnRyeS0+
ZmxhZ3MgJiBlYi0+aW52YWxpZF9mbGFncykpCi0tIAoyLjI2LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
