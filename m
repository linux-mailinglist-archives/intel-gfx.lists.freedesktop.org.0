Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A72E45F01
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6D798989A;
	Fri, 14 Jun 2019 13:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CF7A8989A;
 Fri, 14 Jun 2019 13:48:31 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYq-0005Ma-VZ; Fri, 14 Jun 2019 13:48:09 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:21 +0200
Message-Id: <20190614134726.3827-12-hch@lst.de>
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
 bh=yT59YDuDyJ+PxdfRPqwI/alSJ84EPbJSnwgnpwBRCag=; b=owRHpuK6KPpEPbej7i1YhZs6AX
 wN7yNoV43C+ez1kJ8mjyYksBoNb/QnO43qmDtaoXcejQN8JVymeq+ihqkSdORxH9DTolc8g44wL/n
 4LSqiLNL1pznmOxp4ws/5vWu11eRtAmNuWXern/02xHfx/UTArA2cLwNsqFsJR3FHm32czvwMjXp2
 7sGt2jHFZhtBCFB/p80y7vCA6bbzdpMVufvVVb+aSI6J4MNffPlYXrnmf1qIq+XF2XIQg2V9t5O5b
 b1wpDdk22coEH5ua9xigsjiut+9bxXp+UfE0duTuPjXZxk7HNsybWuKX1NvzSJkdd8inzEtTrVrtu
 gzlO+vIg==;
Subject: [Intel-gfx] [PATCH 11/16] s390/ism: stop passing bogus gfp flags
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
LQogZHJpdmVycy9zMzkwL25ldC9pc21fZHJ2LmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvczM5MC9u
ZXQvaXNtX2Rydi5jIGIvZHJpdmVycy9zMzkwL25ldC9pc21fZHJ2LmMKaW5kZXggNGZjMjA1NmJk
MjI3Li40ZmY1NTA2ZmE0YzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvczM5MC9uZXQvaXNtX2Rydi5j
CisrKyBiL2RyaXZlcnMvczM5MC9uZXQvaXNtX2Rydi5jCkBAIC0yNDEsNyArMjQxLDggQEAgc3Rh
dGljIGludCBpc21fYWxsb2NfZG1iKHN0cnVjdCBpc21fZGV2ICppc20sIHN0cnVjdCBzbWNkX2Rt
YiAqZG1iKQogCiAJZG1iLT5jcHVfYWRkciA9IGRtYV9hbGxvY19jb2hlcmVudCgmaXNtLT5wZGV2
LT5kZXYsIGRtYi0+ZG1iX2xlbiwKIAkJCQkJICAgJmRtYi0+ZG1hX2FkZHIsCi0JCQkJCSAgIEdG
UF9LRVJORUwgfCBfX0dGUF9OT1dBUk4gfCBfX0dGUF9OT01FTUFMTE9DIHwgX19HRlBfQ09NUCB8
IF9fR0ZQX05PUkVUUlkpOworCQkJCQkgICBHRlBfS0VSTkVMIHwgX19HRlBfTk9XQVJOIHwKKwkJ
CQkJICAgX19HRlBfTk9SRVRSWSk7CiAJaWYgKCFkbWItPmNwdV9hZGRyKQogCQljbGVhcl9iaXQo
ZG1iLT5zYmFfaWR4LCBpc20tPnNiYV9iaXRtYXApOwogCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
