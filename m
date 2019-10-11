Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D20ECD3AAE
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 10:18:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CD666EBD2;
	Fri, 11 Oct 2019 08:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19FD86EBCE;
 Fri, 11 Oct 2019 08:18:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4C2283086E26;
 Fri, 11 Oct 2019 08:18:10 +0000 (UTC)
Received: from jason-ThinkPad-X1-Carbon-6th.redhat.com
 (ovpn-12-241.pek2.redhat.com [10.72.12.241])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3A101100EBDE;
 Fri, 11 Oct 2019 08:17:39 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 kwankhede@nvidia.com, alex.williamson@redhat.com, mst@redhat.com,
 tiwei.bie@intel.com
Date: Fri, 11 Oct 2019 16:15:52 +0800
Message-Id: <20191011081557.28302-3-jasowang@redhat.com>
In-Reply-To: <20191011081557.28302-1-jasowang@redhat.com>
References: <20191011081557.28302-1-jasowang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Fri, 11 Oct 2019 08:18:10 +0000 (UTC)
Subject: [Intel-gfx] [PATCH V3 2/7] mdev: bus uevent support
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
Cc: christophe.de.dinechin@gmail.com, sebott@linux.ibm.com, airlied@linux.ie,
 Jason Wang <jasowang@redhat.com>, heiko.carstens@de.ibm.com,
 virtualization@lists.linux-foundation.org, rob.miller@broadcom.com,
 lulu@redhat.com, eperezma@redhat.com, pasic@linux.ibm.com,
 borntraeger@de.ibm.com, haotian.wang@sifive.com, farman@linux.ibm.com,
 idos@mellanox.com, gor@linux.ibm.com, cunming.liang@intel.com,
 xiao.w.wang@intel.com, freude@linux.ibm.com, parav@mellanox.com,
 zhihong.wang@intel.com, akrowiak@linux.ibm.com, netdev@vger.kernel.org,
 cohuck@redhat.com, oberpar@linux.ibm.com, maxime.coquelin@redhat.com,
 lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBhZGRzIGJ1cyB1ZXZlbnQgc3VwcG9ydCBmb3IgbWRldiBidXMgaW4gb3JkZXIg
dG8gYWxsb3cKY29vcGVyYXRpb24gd2l0aCB1c2Vyc3BhY2UuCgpTaWduZWQtb2ZmLWJ5OiBKYXNv
biBXYW5nIDxqYXNvd2FuZ0ByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvdmZpby9tZGV2L21kZXZf
ZHJpdmVyLmMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy92ZmlvL21kZXYvbWRldl9kcml2ZXIuYyBiL2RyaXZlcnMvdmZp
by9tZGV2L21kZXZfZHJpdmVyLmMKaW5kZXggYjdjNDBjZTg2ZWUzLi4zMTlkODg2ZmZhZjcgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvdmZpby9tZGV2L21kZXZfZHJpdmVyLmMKKysrIGIvZHJpdmVycy92
ZmlvL21kZXYvbWRldl9kcml2ZXIuYwpAQCAtODIsOSArODIsMTcgQEAgc3RhdGljIGludCBtZGV2
X21hdGNoKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9kcml2ZXIgKmRydikKIAly
ZXR1cm4gMDsKIH0KIAorc3RhdGljIGludCBtZGV2X3VldmVudChzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdCBrb2JqX3VldmVudF9lbnYgKmVudikKK3sKKwlzdHJ1Y3QgbWRldl9kZXZpY2UgKm1k
ZXYgPSB0b19tZGV2X2RldmljZShkZXYpOworCisJcmV0dXJuIGFkZF91ZXZlbnRfdmFyKGVudiwg
Ik1PREFMSUFTPW1kZXY6YyUwMlgiLCBtZGV2LT5jbGFzc19pZCk7Cit9CisKIHN0cnVjdCBidXNf
dHlwZSBtZGV2X2J1c190eXBlID0gewogCS5uYW1lCQk9ICJtZGV2IiwKIAkubWF0Y2gJCT0gbWRl
dl9tYXRjaCwKKwkudWV2ZW50CQk9IG1kZXZfdWV2ZW50LAogCS5wcm9iZQkJPSBtZGV2X3Byb2Jl
LAogCS5yZW1vdmUJCT0gbWRldl9yZW1vdmUsCiB9OwotLSAKMi4xOS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
