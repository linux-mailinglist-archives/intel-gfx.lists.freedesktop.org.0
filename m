Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85481B8CCA
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 10:27:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99CB6FB5A;
	Fri, 20 Sep 2019 08:27:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03EA6FB49;
 Fri, 20 Sep 2019 08:27:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1AF9AC05AA64;
 Fri, 20 Sep 2019 08:27:23 +0000 (UTC)
Received: from jason-ThinkPad-X1-Carbon-6th.redhat.com
 (ovpn-12-88.pek2.redhat.com [10.72.12.88])
 by smtp.corp.redhat.com (Postfix) with ESMTP id F10FA10016EB;
 Fri, 20 Sep 2019 08:26:03 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 kwankhede@nvidia.com, alex.williamson@redhat.com, mst@redhat.com,
 tiwei.bie@intel.com
Date: Fri, 20 Sep 2019 16:20:49 +0800
Message-Id: <20190920082050.19352-6-jasowang@redhat.com>
In-Reply-To: <20190920082050.19352-1-jasowang@redhat.com>
References: <20190920082050.19352-1-jasowang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Fri, 20 Sep 2019 08:27:23 +0000 (UTC)
Subject: [Intel-gfx] [RFC PATCH V2 5/6] vringh: fix copy direction of
 vringh_iov_push_kern()
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
Cc: sebott@linux.ibm.com, airlied@linux.ie, Jason Wang <jasowang@redhat.com>,
 heiko.carstens@de.ibm.com, virtualization@lists.linux-foundation.org,
 rob.miller@broadcom.com, lulu@redhat.com, eperezma@redhat.com,
 pasic@linux.ibm.com, borntraeger@de.ibm.com, haotian.wang@sifive.com,
 farman@linux.ibm.com, idos@mellanox.com, gor@linux.ibm.com,
 cunming.liang@intel.com, xiao.w.wang@intel.com, freude@linux.ibm.com,
 zhihong.wang@intel.com, akrowiak@linux.ibm.com, pmorel@linux.ibm.com,
 netdev@vger.kernel.org, cohuck@redhat.com, oberpar@linux.ibm.com,
 maxime.coquelin@redhat.com, lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugd2FudCB0byBjb3B5IGZyb20gaW92IHRvIGJ1Ziwgc28gdGhlIGRpcmVjdGlvbiB3YXMgd3Jv
bmcuCgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgotLS0K
IGRyaXZlcnMvdmhvc3QvdnJpbmdoLmMgfCA4ICsrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92aG9zdC92
cmluZ2guYyBiL2RyaXZlcnMvdmhvc3QvdnJpbmdoLmMKaW5kZXggMDhhZDBkMWYwNDc2Li5hMGEy
ZDc0OTY3ZWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdmhvc3QvdnJpbmdoLmMKKysrIGIvZHJpdmVy
cy92aG9zdC92cmluZ2guYwpAQCAtODUyLDYgKzg1MiwxMiBAQCBzdGF0aWMgaW5saW5lIGludCB4
ZmVyX2tlcm4odm9pZCAqc3JjLCB2b2lkICpkc3QsIHNpemVfdCBsZW4pCiAJcmV0dXJuIDA7CiB9
CiAKK3N0YXRpYyBpbmxpbmUgaW50IGtlcm5feGZlcih2b2lkICpkc3QsIHZvaWQgKnNyYywgc2l6
ZV90IGxlbikKK3sKKwltZW1jcHkoZHN0LCBzcmMsIGxlbik7CisJcmV0dXJuIDA7Cit9CisKIC8q
KgogICogdnJpbmdoX2luaXRfa2VybiAtIGluaXRpYWxpemUgYSB2cmluZ2ggZm9yIGEga2VybmVs
c3BhY2UgdnJpbmcuCiAgKiBAdnJoOiB0aGUgdnJpbmdoIHRvIGluaXRpYWxpemUuCkBAIC05NTgs
NyArOTY0LDcgQEAgRVhQT1JUX1NZTUJPTCh2cmluZ2hfaW92X3B1bGxfa2Vybik7CiBzc2l6ZV90
IHZyaW5naF9pb3ZfcHVzaF9rZXJuKHN0cnVjdCB2cmluZ2hfa2lvdiAqd2lvdiwKIAkJCSAgICAg
Y29uc3Qgdm9pZCAqc3JjLCBzaXplX3QgbGVuKQogewotCXJldHVybiB2cmluZ2hfaW92X3hmZXIo
d2lvdiwgKHZvaWQgKilzcmMsIGxlbiwgeGZlcl9rZXJuKTsKKwlyZXR1cm4gdnJpbmdoX2lvdl94
ZmVyKHdpb3YsICh2b2lkICopc3JjLCBsZW4sIGtlcm5feGZlcik7CiB9CiBFWFBPUlRfU1lNQk9M
KHZyaW5naF9pb3ZfcHVzaF9rZXJuKTsKIAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
