Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0B845EE5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E46898F5;
	Fri, 14 Jun 2019 13:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A17DB898E1;
 Fri, 14 Jun 2019 13:48:04 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYa-0004vN-2H; Fri, 14 Jun 2019 13:47:52 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:16 +0200
Message-Id: <20190614134726.3827-7-hch@lst.de>
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
 bh=GC9Gboqptsed7WVs/myU7Q6vnMi9vBxIwQ2uPA5D0pw=; b=UntrdW5G2+b49vgfbJaGUDLN0E
 6yE3PpGKvsuDOwoXcyXIdlGC5PZ5Rx2/rsrnwuL8rTHEvIhh9QW1GU17v1tVNFho0ne9tn/Z4eT54
 OswJKEO4vsr1FvbWuovnG6n4mY8AwbgfvU32igpwJyhrRibTzRGYZ0pS+zdU9gFhrv4TTezoxvPTg
 hlLUh5YHvDGvTCdMXXQ7VhKjApYDYfxlL3VT+nNwtwNQkVPOAXwAW1qubfFu1o+AsbdCjGKbzv2rR
 p+QnqhNY4+X8ZCNtkVbeuJ4T0148xhaiU0PQmlP12f+mNEdx8mMY/AvPPLm2vvkGBNkm80UQVHowq
 4Bj27y3g==;
Subject: [Intel-gfx] [PATCH 06/16] drm: don't pass __GFP_COMP to
 dma_alloc_coherent in drm_pci_alloc
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

VGhlIG1lbW9yeSByZXR1cm5lZCBmcm9tIGRtYV9hbGxvY19jb2hlcmVudCBpcyBvcGFxdWV1ZSB0
byB0aGUgdXNlciwKdGh1cyB0aGUgZXhhY3Qgd2F5IG9mIHBhZ2UgcmVmY291bnRpbmcgc2hhbGwg
bm90IG1hdHRlciBlaXRoZXIuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RvcGggSGVsbHdpZyA8aGNo
QGxzdC5kZT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2J1ZnMuYyB8IDIgKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fYnVmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9idWZzLmMKaW5kZXgg
YjY0MDQzN2NlOTBmLi43YTc5YTE2YTA1NWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fYnVmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fYnVmcy5jCkBAIC03MCw3ICs3MCw3
IEBAIGRybV9kbWFfaGFuZGxlX3QgKmRybV9wY2lfYWxsb2Moc3RydWN0IGRybV9kZXZpY2UgKiBk
ZXYsIHNpemVfdCBzaXplLCBzaXplX3QgYWxpCiAJZG1haC0+c2l6ZSA9IHNpemU7CiAJZG1haC0+
dmFkZHIgPSBkbWFfYWxsb2NfY29oZXJlbnQoJmRldi0+cGRldi0+ZGV2LCBzaXplLAogCQkJCQkg
JmRtYWgtPmJ1c2FkZHIsCi0JCQkJCSBHRlBfS0VSTkVMIHwgX19HRlBfQ09NUCk7CisJCQkJCSBH
RlBfS0VSTkVMKTsKIAogCWlmIChkbWFoLT52YWRkciA9PSBOVUxMKSB7CiAJCWtmcmVlKGRtYWgp
OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
