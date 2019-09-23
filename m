Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEE0BB4EF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 15:06:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136D66E8F9;
	Mon, 23 Sep 2019 13:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05D9F6E8F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 13:06:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 06:06:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="200528127"
Received: from akaras-dev.fi.intel.com ([10.237.72.88])
 by orsmga002.jf.intel.com with ESMTP; 23 Sep 2019 06:06:38 -0700
From: Anna Karas <anna.karas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 16:06:08 +0300
Message-Id: <20190923130608.22773-1-anna.karas@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Delete references to non-existing file
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
Cc: Jani Nikula <jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGVsZXRlIHJlZmVyZW5jZXMgdG8gbm9uLWV4aXN0aW5nIGk5MTVfZ2VtX2JhdGNoX3Bvb2wuYyBm
aWxlLgoKQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KRml4ZXM6IGNvbW1pdCA4Njc1YTYwOGE2
ZmUKKCJkcm0vaTkxNTogS2lsbCB0aGUgdW5kZWFkIGk5MTVfZ2VtX2JhdGNoX3Bvb2wuYyIpClNp
Z25lZC1vZmYtYnk6IEFubmEgS2FyYXMgPGFubmEua2FyYXNAaW50ZWwuY29tPgotLS0KIERvY3Vt
ZW50YXRpb24vZ3B1L2k5MTUucnN0IHwgOSAtLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0IGIvRG9j
dW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QKaW5kZXggMGUzMjI2ODhiZTVjLi44MzkzODk0MjQ1Y2Qg
MTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0CisrKyBiL0RvY3VtZW50YXRp
b24vZ3B1L2k5MTUucnN0CkBAIC0zNjEsMTUgKzM2MSw2IEBAIEJhdGNoYnVmZmVyIFBhcnNpbmcK
IC4uIGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYwog
ICAgOmludGVybmFsOgogCi1CYXRjaGJ1ZmZlciBQb29scwotLS0tLS0tLS0tLS0tLS0tLS0KLQot
Li4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2JhdGNoX3Bvb2wu
YwotICAgOmRvYzogYmF0Y2ggcG9vbAotCi0uLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fYmF0Y2hfcG9vbC5jCi0gICA6aW50ZXJuYWw6Ci0KIFVzZXIgQmF0Y2hi
dWZmZXIgRXhlY3V0aW9uCiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogCi0tIAoyLjE5LjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
