Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC9345EF4
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C2BA898F3;
	Fri, 14 Jun 2019 13:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8893898E1;
 Fri, 14 Jun 2019 13:48:09 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYd-00054z-8V; Fri, 14 Jun 2019 13:47:56 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:17 +0200
Message-Id: <20190614134726.3827-8-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614134726.3827-1-hch@lst.de>
References: <20190614134726.3827-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=voUH/VESvtWj4I6HLsXBpYRJA1I9bz8V8FhWnyIglGY=; b=uRK7ZFAnjpL2rr/0CUfA2lvRvn
 MMA/TT67HwvKwHALsH6Yi1bK/9hQpeF2Y9WNSQiuHCQZk3pGo5Iut8pm4tAYvEGrw/6WXYNTmPxKO
 dAMk/oU/QBEx/xXpnJFg9G8wz5Fp9ysZOZxj3YySGlQxOS9aKURHvR4B3f1nS4JChwui9qEEY8i6X
 bJlC9leC1vR0nEGsTg5/vqnuj4fdWff3QX72bE0zpkRJHcgzwvQf1m9HIJwDxhhdbqgBXTTX3ixSJ
 5oYDmNfDcKyAIPrOHNouEAsKLx5bVbDJIHGyKOFWk1kar/q9/gTj6w2JpvlWTWoobtck9JM+dFHSI
 3wLzosZw==;
Subject: [Intel-gfx] [PATCH 07/16] IB/hfi1: stop passing bogus gfp flags
 arguments to dma_alloc_coherent
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Intel Linux Wireless <linuxwifi@intel.com>, linux-rdma@vger.kernel.org,
 netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZG1hX2FsbG9jX2NvaGVyZW50IGlzIG5vdCBqdXN0IHRoZSBwYWdlIGFsbG9jYXRvci4gIFRoZSBv
bmx5IHZhbGlkCmFyZ3VtZW50cyB0byBwYXNzIGFyZSBlaXRoZXIgR0ZQX0FUT01JQyBvciBHRlBf
QVRPTUlDIHdpdGggcG9zc2libGUKbW9kaWZpZXJzIG9mIF9fR0ZQX05PUkVUUlkgb3IgX19HRlBf
Tk9XQVJOLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0t
LQogZHJpdmVycy9pbmZpbmliYW5kL2h3L2hmaTEvaW5pdC5jIHwgMjIgKysrLS0tLS0tLS0tLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbmZpbmliYW5kL2h3L2hmaTEvaW5pdC5jIGIvZHJpdmVy
cy9pbmZpbmliYW5kL2h3L2hmaTEvaW5pdC5jCmluZGV4IDcxY2I5NTI1YzA3NC4uZmY5ZDEwNmVl
Nzg0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2luZmluaWJhbmQvaHcvaGZpMS9pbml0LmMKKysrIGIv
ZHJpdmVycy9pbmZpbmliYW5kL2h3L2hmaTEvaW5pdC5jCkBAIC0xODQ2LDE3ICsxODQ2LDEwIEBA
IGludCBoZmkxX2NyZWF0ZV9yY3ZoZHJxKHN0cnVjdCBoZmkxX2RldmRhdGEgKmRkLCBzdHJ1Y3Qg
aGZpMV9jdHh0ZGF0YSAqcmNkKQogCXU2NCByZWc7CiAKIAlpZiAoIXJjZC0+cmN2aGRycSkgewot
CQlnZnBfdCBnZnBfZmxhZ3M7Ci0KIAkJYW10ID0gcmN2aGRycV9zaXplKHJjZCk7CiAKLQkJaWYg
KHJjZC0+Y3R4dCA8IGRkLT5maXJzdF9keW5fYWxsb2NfY3R4dCB8fCByY2QtPmlzX3ZuaWMpCi0J
CQlnZnBfZmxhZ3MgPSBHRlBfS0VSTkVMOwotCQllbHNlCi0JCQlnZnBfZmxhZ3MgPSBHRlBfVVNF
UjsKIAkJcmNkLT5yY3ZoZHJxID0gZG1hX2FsbG9jX2NvaGVyZW50KCZkZC0+cGNpZGV2LT5kZXYs
IGFtdCwKLQkJCQkJCSAgJnJjZC0+cmN2aGRycV9kbWEsCi0JCQkJCQkgIGdmcF9mbGFncyB8IF9f
R0ZQX0NPTVApOworCQkJCQkJICAmcmNkLT5yY3ZoZHJxX2RtYSwgR0ZQX0tFUk5FTCk7CiAKIAkJ
aWYgKCFyY2QtPnJjdmhkcnEpIHsKIAkJCWRkX2Rldl9lcnIoZGQsCkBAIC0xODcwLDcgKzE4NjMs
NyBAQCBpbnQgaGZpMV9jcmVhdGVfcmN2aGRycShzdHJ1Y3QgaGZpMV9kZXZkYXRhICpkZCwgc3Ry
dWN0IGhmaTFfY3R4dGRhdGEgKnJjZCkKIAkJCXJjZC0+cmN2aGRydGFpbF9rdmFkZHIgPSBkbWFf
YWxsb2NfY29oZXJlbnQoJmRkLT5wY2lkZXYtPmRldiwKIAkJCQkJCQkJICAgIFBBR0VfU0laRSwK
IAkJCQkJCQkJICAgICZyY2QtPnJjdmhkcnF0YWlsYWRkcl9kbWEsCi0JCQkJCQkJCSAgICBnZnBf
ZmxhZ3MpOworCQkJCQkJCQkgICAgR0ZQX0tFUk5FTCk7CiAJCQlpZiAoIXJjZC0+cmN2aGRydGFp
bF9rdmFkZHIpCiAJCQkJZ290byBiYWlsX2ZyZWU7CiAJCX0KQEAgLTE5MjYsMTkgKzE5MTksMTAg
QEAgaW50IGhmaTFfc2V0dXBfZWFnZXJidWZzKHN0cnVjdCBoZmkxX2N0eHRkYXRhICpyY2QpCiB7
CiAJc3RydWN0IGhmaTFfZGV2ZGF0YSAqZGQgPSByY2QtPmRkOwogCXUzMiBtYXhfZW50cmllcywg
ZWdydG9wLCBhbGxvY2VkX2J5dGVzID0gMDsKLQlnZnBfdCBnZnBfZmxhZ3M7CiAJdTE2IG9yZGVy
LCBpZHggPSAwOwogCWludCByZXQgPSAwOwogCXUxNiByb3VuZF9tdHUgPSByb3VuZHVwX3Bvd19v
Zl90d28oaGZpMV9tYXhfbXR1KTsKIAotCS8qCi0JICogR0ZQX1VTRVIsIGJ1dCB3aXRob3V0IEdG
UF9GUywgc28gYnVmZmVyIGNhY2hlIGNhbiBiZQotCSAqIGNvYWxlc2NlZCAod2UgaG9wZSk7IG90
aGVyd2lzZSwgZXZlbiBhdCBvcmRlciA0LAotCSAqIGhlYXZ5IGZpbGVzeXN0ZW0gYWN0aXZpdHkg
bWFrZXMgdGhlc2UgZmFpbCwgYW5kIHdlIGNhbgotCSAqIHVzZSBjb21wb3VuZCBwYWdlcy4KLQkg
Ki8KLQlnZnBfZmxhZ3MgPSBfX0dGUF9SRUNMQUlNIHwgX19HRlBfSU8gfCBfX0dGUF9DT01QOwot
CiAJLyoKIAkgKiBUaGUgbWluaW11bSBzaXplIG9mIHRoZSBlYWdlciBidWZmZXJzIGlzIGEgZ3Jv
dXBzIG9mIE1UVS1zaXplZAogCSAqIGJ1ZmZlcnMuCkBAIC0xOTY5LDcgKzE5NTMsNyBAQCBpbnQg
aGZpMV9zZXR1cF9lYWdlcmJ1ZnMoc3RydWN0IGhmaTFfY3R4dGRhdGEgKnJjZCkKIAkJCWRtYV9h
bGxvY19jb2hlcmVudCgmZGQtPnBjaWRldi0+ZGV2LAogCQkJCQkgICByY2QtPmVncmJ1ZnMucmN2
dGlkX3NpemUsCiAJCQkJCSAgICZyY2QtPmVncmJ1ZnMuYnVmZmVyc1tpZHhdLmRtYSwKLQkJCQkJ
ICAgZ2ZwX2ZsYWdzKTsKKwkJCQkJICAgR0ZQX0tFUk5FTCk7CiAJCWlmIChyY2QtPmVncmJ1ZnMu
YnVmZmVyc1tpZHhdLmFkZHIpIHsKIAkJCXJjZC0+ZWdyYnVmcy5idWZmZXJzW2lkeF0ubGVuID0K
IAkJCQlyY2QtPmVncmJ1ZnMucmN2dGlkX3NpemU7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
