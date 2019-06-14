Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1586B45ED1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192478989A;
	Fri, 14 Jun 2019 13:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE588989A;
 Fri, 14 Jun 2019 13:47:41 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYJ-0004Xw-Il; Fri, 14 Jun 2019 13:47:36 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:11 +0200
Message-Id: <20190614134726.3827-2-hch@lst.de>
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
 bh=8y6h8N73FB5NENGJmXuBWpySrRWBuNuuherB6ijj6q8=; b=O+TbJCIvZxITqhhJGk19PgKDVb
 zP/cXr3k3gVNVyNuIZZ1EUainJIi7wVTUxXsQtP55j6fTBfcF7Sa+btFSjlOoBpdFax1u6ZazzUaz
 FPx/YcvbrcmM0hj9iSxxr66wiPpIo2CQcbBfULKCswmUhdFlmoDtWAaHV5c6chhQgW7u9cc4uUrYi
 +YgK5P2yi8DIc4PxIDTgNB0H2HMyfDDjSri1AD09oFbVupeMjadiOSOnAJwBO5Fva8F5W4du1//3V
 PC6NEPWuGSXf3Iz9K+nbMDUlMTGN745meRSObE6d5NxDDUuRnYJGChXPFHVxfA6Pw0enVfuoGJDnu
 q+P8IvBA==;
Subject: [Intel-gfx] [PATCH 01/16] media: videobuf-dma-contig: use
 dma_mmap_coherent
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

ZG1hX2FsbG9jX2NvaGVyZW50IGRvZXMgbm90IHJldHVybiBhIHBoeXNpY2FsIGFkZHJlc3MsIGJ1
dCBhIERNQQphZGRyZXNzLCB3aGljaCBtaWdodCBiZSByZW1hcHBlZCBvciBoYXZlIGFuIG9mZnNl
dC4gIFBhc3NpbmcgdGhpcwpETUEgYWRkcmVzcyB0byB2bV9pb21hcF9tZW1vcnkgaXMgY29tcGxl
dGVseSBib2d1cy4gIFVzZSB0aGUgcHJvcGVyCmRtYV9tbWFwX2NvaGVyZW50IGhlbHBlciBpbnN0
ZWFkLCBhbmQgc3RvcCBwYXNzaW5nIF9fR0ZQX0NPTVAKdG8gZG1hX2FsbG9jX2NvaGVyZW50LCBh
cyB0aGUgbWVtb3J5IG1hbmFnZW1lbnQgaW5zaWRlIHRoZSBETUEKYWxsb2NhdG9yIGlzIGhpZGRl
biBmcm9tIHRoZSBjYWxsZXJzLgoKRml4ZXM6IGE4ZjNjMjAzZTE5YiAoIlttZWRpYV0gdmlkZW9i
dWYtZG1hLWNvbnRpZzogYWRkIGNhY2hlIHN1cHBvcnQiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpc3Rv
cGggSGVsbHdpZyA8aGNoQGxzdC5kZT4KLS0tCiBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92aWRl
b2J1Zi1kbWEtY29udGlnLmMgfCAyMyArKysrKysrLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3Y0bDItY29yZS92aWRlb2J1Zi1kbWEtY29udGlnLmMgYi9kcml2ZXJzL21lZGlhL3Y0
bDItY29yZS92aWRlb2J1Zi1kbWEtY29udGlnLmMKaW5kZXggZTFiZjUwZGY0YzcwLi5hNTk0MmVh
MzhmMWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3ZpZGVvYnVmLWRtYS1j
b250aWcuYworKysgYi9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92aWRlb2J1Zi1kbWEtY29udGln
LmMKQEAgLTM5LDExICszOSwxMSBAQCBzdHJ1Y3QgdmlkZW9idWZfZG1hX2NvbnRpZ19tZW1vcnkg
ewogCiBzdGF0aWMgaW50IF9fdmlkZW9idWZfZGNfYWxsb2Moc3RydWN0IGRldmljZSAqZGV2LAog
CQkJICAgICAgIHN0cnVjdCB2aWRlb2J1Zl9kbWFfY29udGlnX21lbW9yeSAqbWVtLAotCQkJICAg
ICAgIHVuc2lnbmVkIGxvbmcgc2l6ZSwgZ2ZwX3QgZmxhZ3MpCisJCQkgICAgICAgdW5zaWduZWQg
bG9uZyBzaXplKQogewogCW1lbS0+c2l6ZSA9IHNpemU7Ci0JbWVtLT52YWRkciA9IGRtYV9hbGxv
Y19jb2hlcmVudChkZXYsIG1lbS0+c2l6ZSwKLQkJCQkJJm1lbS0+ZG1hX2hhbmRsZSwgZmxhZ3Mp
OworCW1lbS0+dmFkZHIgPSBkbWFfYWxsb2NfY29oZXJlbnQoZGV2LCBtZW0tPnNpemUsICZtZW0t
PmRtYV9oYW5kbGUsCisJCQlHRlBfS0VSTkVMKTsKIAogCWlmICghbWVtLT52YWRkcikgewogCQlk
ZXZfZXJyKGRldiwgIm1lbW9yeSBhbGxvYyBzaXplICVsZCBmYWlsZWRcbiIsIG1lbS0+c2l6ZSk7
CkBAIC0yNjAsOCArMjYwLDcgQEAgc3RhdGljIGludCBfX3ZpZGVvYnVmX2lvbG9jayhzdHJ1Y3Qg
dmlkZW9idWZfcXVldWUgKnEsCiAJCQlyZXR1cm4gdmlkZW9idWZfZG1hX2NvbnRpZ191c2VyX2dl
dChtZW0sIHZiKTsKIAogCQkvKiBhbGxvY2F0ZSBtZW1vcnkgZm9yIHRoZSByZWFkKCkgbWV0aG9k
ICovCi0JCWlmIChfX3ZpZGVvYnVmX2RjX2FsbG9jKHEtPmRldiwgbWVtLCBQQUdFX0FMSUdOKHZi
LT5zaXplKSwKLQkJCQkJR0ZQX0tFUk5FTCkpCisJCWlmIChfX3ZpZGVvYnVmX2RjX2FsbG9jKHEt
PmRldiwgbWVtLCBQQUdFX0FMSUdOKHZiLT5zaXplKSkpCiAJCQlyZXR1cm4gLUVOT01FTTsKIAkJ
YnJlYWs7CiAJY2FzZSBWNEwyX01FTU9SWV9PVkVSTEFZOgpAQCAtMjgwLDcgKzI3OSw2IEBAIHN0
YXRpYyBpbnQgX192aWRlb2J1Zl9tbWFwX21hcHBlcihzdHJ1Y3QgdmlkZW9idWZfcXVldWUgKnEs
CiAJc3RydWN0IHZpZGVvYnVmX2RtYV9jb250aWdfbWVtb3J5ICptZW07CiAJc3RydWN0IHZpZGVv
YnVmX21hcHBpbmcgKm1hcDsKIAlpbnQgcmV0dmFsOwotCXVuc2lnbmVkIGxvbmcgc2l6ZTsKIAog
CWRldl9kYmcocS0+ZGV2LCAiJXNcbiIsIF9fZnVuY19fKTsKIApAQCAtMjk4LDIzICsyOTYsMTgg
QEAgc3RhdGljIGludCBfX3ZpZGVvYnVmX21tYXBfbWFwcGVyKHN0cnVjdCB2aWRlb2J1Zl9xdWV1
ZSAqcSwKIAlCVUdfT04oIW1lbSk7CiAJTUFHSUNfQ0hFQ0sobWVtLT5tYWdpYywgTUFHSUNfRENf
TUVNKTsKIAotCWlmIChfX3ZpZGVvYnVmX2RjX2FsbG9jKHEtPmRldiwgbWVtLCBQQUdFX0FMSUdO
KGJ1Zi0+YnNpemUpLAotCQkJCUdGUF9LRVJORUwgfCBfX0dGUF9DT01QKSkKKwlpZiAoX192aWRl
b2J1Zl9kY19hbGxvYyhxLT5kZXYsIG1lbSwgUEFHRV9BTElHTihidWYtPmJzaXplKSkpCiAJCWdv
dG8gZXJyb3I7CiAKLQkvKiBUcnkgdG8gcmVtYXAgbWVtb3J5ICovCi0Jc2l6ZSA9IHZtYS0+dm1f
ZW5kIC0gdm1hLT52bV9zdGFydDsKLQl2bWEtPnZtX3BhZ2VfcHJvdCA9IHBncHJvdF9ub25jYWNo
ZWQodm1hLT52bV9wYWdlX3Byb3QpOwotCiAJLyogdGhlICJ2bV9wZ29mZiIgaXMganVzdCB1c2Vk
IGluIHY0bDIgdG8gZmluZCB0aGUKIAkgKiBjb3JyZXNwb25kaW5nIGJ1ZmZlciBkYXRhIHN0cnVj
dHVyZSB3aGljaCBpcyBhbGxvY2F0ZWQKIAkgKiBlYXJsaWVyIGFuZCBpdCBkb2VzIG5vdCBtZWFu
IHRoZSBvZmZzZXQgZnJvbSB0aGUgcGh5c2ljYWwKIAkgKiBidWZmZXIgc3RhcnQgYWRkcmVzcyBh
cyB1c3VhbC4gU28gc2V0IGl0IHRvIDAgdG8gcGFzcwotCSAqIHRoZSBzYW5pdHkgY2hlY2sgaW4g
dm1faW9tYXBfbWVtb3J5KCkuCisJICogdGhlIHNhbml0eSBjaGVjayBpbiBkbWFfbW1hcF9jb2hl
cmVudCgpLgogCSAqLwogCXZtYS0+dm1fcGdvZmYgPSAwOwotCi0JcmV0dmFsID0gdm1faW9tYXBf
bWVtb3J5KHZtYSwgbWVtLT5kbWFfaGFuZGxlLCBzaXplKTsKKwlyZXR2YWwgPSBkbWFfbW1hcF9j
b2hlcmVudChxLT5kZXYsIHZtYSwgbWVtLT52YWRkciwgbWVtLT5kbWFfaGFuZGxlLAorCQkJdm1h
LT52bV9lbmQgLSB2bWEtPnZtX3N0YXJ0KTsKIAlpZiAocmV0dmFsKSB7CiAJCWRldl9lcnIocS0+
ZGV2LCAibW1hcDogcmVtYXAgZmFpbGVkIHdpdGggZXJyb3IgJWQuICIsCiAJCQlyZXR2YWwpOwot
LSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
