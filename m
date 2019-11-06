Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE74F0FF6
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 08:09:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09A4E6EC05;
	Wed,  6 Nov 2019 07:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16F7B6EC09
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 07:09:54 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-qfkYcyCJMGmtepryWqV3BA-1; Wed, 06 Nov 2019 02:09:50 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EAA631800D53;
 Wed,  6 Nov 2019 07:09:46 +0000 (UTC)
Received: from jason-ThinkPad-X1-Carbon-6th.redhat.com
 (ovpn-12-193.pek2.redhat.com [10.72.12.193])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D0511001E75;
 Wed,  6 Nov 2019 07:08:52 +0000 (UTC)
From: Jason Wang <jasowang@redhat.com>
To: kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 kwankhede@nvidia.com, alex.williamson@redhat.com, mst@redhat.com,
 tiwei.bie@intel.com
Date: Wed,  6 Nov 2019 15:05:44 +0800
Message-Id: <20191106070548.18980-3-jasowang@redhat.com>
In-Reply-To: <20191106070548.18980-1-jasowang@redhat.com>
References: <20191106070548.18980-1-jasowang@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: qfkYcyCJMGmtepryWqV3BA-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1573024194;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4jYHNi5/Z7oowUoL78rMhKZ6a5a5wDzQX/xErsA9Orw=;
 b=d9Vuk6OEJt8uP0JH+QlA60H8O7iMFDlPNMRcF/f8ELWvSPrsmbMjGl+xzqGvm4jwQR1W97
 S2kkKCsJFZm+bosQIuFa2N1q4jbgOewnjnZ4ppI9iO5QaKtQA4zbT6CcLD1JfW303KtScH
 AWbnuYwOyFyr6uA8BdVZLes4S1wMu3w=
Subject: [Intel-gfx] [PATCH V9 2/6] modpost: add support for mdev class id
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
 zhihong.wang@intel.com, stefanha@redhat.com, akrowiak@linux.ibm.com,
 netdev@vger.kernel.org, cohuck@redhat.com, oberpar@linux.ibm.com,
 maxime.coquelin@redhat.com, lingshan.zhu@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHN1cHBvcnQgdG8gcGFyc2UgbWRldiBjbGFzcyBpZCB0YWJsZS4KClJldmlld2VkLWJ5OiBQ
YXJhdiBQYW5kaXQgPHBhcmF2QG1lbGxhbm94LmNvbT4KUmV2aWV3ZWQtYnk6IENvcm5lbGlhIEh1
Y2sgPGNvaHVja0ByZWRoYXQuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBXYW5nIDxqYXNvd2Fu
Z0ByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvdmZpby9tZGV2L3ZmaW9fbWRldi5jICAgICB8ICAy
ICsrCiBzY3JpcHRzL21vZC9kZXZpY2V0YWJsZS1vZmZzZXRzLmMgfCAgMyArKysKIHNjcmlwdHMv
bW9kL2ZpbGUyYWxpYXMuYyAgICAgICAgICB8IDExICsrKysrKysrKysrCiAzIGZpbGVzIGNoYW5n
ZWQsIDE2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3ZmaW8vbWRldi92Zmlv
X21kZXYuYyBiL2RyaXZlcnMvdmZpby9tZGV2L3ZmaW9fbWRldi5jCmluZGV4IDM4NDMxZTllZjdm
NS4uYTY2NDFjZDhiNWEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYu
YworKysgYi9kcml2ZXJzL3ZmaW8vbWRldi92ZmlvX21kZXYuYwpAQCAtMTI1LDYgKzEyNSw4IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWRldl9jbGFzc19pZCB2ZmlvX2lkX3RhYmxlW10gPSB7CiAJ
eyAwIH0sCiB9OwogCitNT0RVTEVfREVWSUNFX1RBQkxFKG1kZXYsIHZmaW9faWRfdGFibGUpOwor
CiBzdGF0aWMgc3RydWN0IG1kZXZfZHJpdmVyIHZmaW9fbWRldl9kcml2ZXIgPSB7CiAJLm5hbWUJ
PSAidmZpb19tZGV2IiwKIAkucHJvYmUJPSB2ZmlvX21kZXZfcHJvYmUsCmRpZmYgLS1naXQgYS9z
Y3JpcHRzL21vZC9kZXZpY2V0YWJsZS1vZmZzZXRzLmMgYi9zY3JpcHRzL21vZC9kZXZpY2V0YWJs
ZS1vZmZzZXRzLmMKaW5kZXggMDU0NDA1YjkwYmE0Li42Y2JiMTA2MjQ4OGEgMTAwNjQ0Ci0tLSBh
L3NjcmlwdHMvbW9kL2RldmljZXRhYmxlLW9mZnNldHMuYworKysgYi9zY3JpcHRzL21vZC9kZXZp
Y2V0YWJsZS1vZmZzZXRzLmMKQEAgLTIzMSw1ICsyMzEsOCBAQCBpbnQgbWFpbih2b2lkKQogCURF
VklEKHdtaV9kZXZpY2VfaWQpOwogCURFVklEX0ZJRUxEKHdtaV9kZXZpY2VfaWQsIGd1aWRfc3Ry
aW5nKTsKIAorCURFVklEKG1kZXZfY2xhc3NfaWQpOworCURFVklEX0ZJRUxEKG1kZXZfY2xhc3Nf
aWQsIGlkKTsKKwogCXJldHVybiAwOwogfQpkaWZmIC0tZ2l0IGEvc2NyaXB0cy9tb2QvZmlsZTJh
bGlhcy5jIGIvc2NyaXB0cy9tb2QvZmlsZTJhbGlhcy5jCmluZGV4IGM5MWViYTc1MTgwNC4uNDVm
MWMyMmY0OWJlIDEwMDY0NAotLS0gYS9zY3JpcHRzL21vZC9maWxlMmFsaWFzLmMKKysrIGIvc2Ny
aXB0cy9tb2QvZmlsZTJhbGlhcy5jCkBAIC0xMzM1LDYgKzEzMzUsMTYgQEAgc3RhdGljIGludCBk
b193bWlfZW50cnkoY29uc3QgY2hhciAqZmlsZW5hbWUsIHZvaWQgKnN5bXZhbCwgY2hhciAqYWxp
YXMpCiAJcmV0dXJuIDE7CiB9CiAKKy8qIGxvb2tzIGxpa2U6ICJtZGV2OmNOIiAqLworc3RhdGlj
IGludCBkb19tZGV2X2VudHJ5KGNvbnN0IGNoYXIgKmZpbGVuYW1lLCB2b2lkICpzeW12YWwsIGNo
YXIgKmFsaWFzKQoreworCURFRl9GSUVMRChzeW12YWwsIG1kZXZfY2xhc3NfaWQsIGlkKTsKKwor
CXNwcmludGYoYWxpYXMsICJtZGV2OmMlMDJYIiwgaWQpOworCWFkZF93aWxkY2FyZChhbGlhcyk7
CisJcmV0dXJuIDE7Cit9CisKIC8qIERvZXMgbmFtZWxlbiBieXRlcyBvZiBuYW1lIGV4YWN0bHkg
bWF0Y2ggdGhlIHN5bWJvbD8gKi8KIHN0YXRpYyBib29sIHN5bV9pcyhjb25zdCBjaGFyICpuYW1l
LCB1bnNpZ25lZCBuYW1lbGVuLCBjb25zdCBjaGFyICpzeW1ib2wpCiB7CkBAIC0xNDA3LDYgKzE0
MTcsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRldnRhYmxlIGRldnRhYmxlW10gPSB7CiAJeyJ0
eXBlYyIsIFNJWkVfdHlwZWNfZGV2aWNlX2lkLCBkb190eXBlY19lbnRyeX0sCiAJeyJ0ZWUiLCBT
SVpFX3RlZV9jbGllbnRfZGV2aWNlX2lkLCBkb190ZWVfZW50cnl9LAogCXsid21pIiwgU0laRV93
bWlfZGV2aWNlX2lkLCBkb193bWlfZW50cnl9LAorCXsibWRldiIsIFNJWkVfbWRldl9jbGFzc19p
ZCwgZG9fbWRldl9lbnRyeX0sCiB9OwogCiAvKiBDcmVhdGUgTU9EVUxFX0FMSUFTKCkgc3RhdGVt
ZW50cy4KLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
