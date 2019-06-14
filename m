Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9ED45EFA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89AE7898F1;
	Fri, 14 Jun 2019 13:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AF5A898F1;
 Fri, 14 Jun 2019 13:48:11 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYk-0005GV-78; Fri, 14 Jun 2019 13:48:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:19 +0200
Message-Id: <20190614134726.3827-10-hch@lst.de>
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
 bh=7ZdZ3kFG7vLtpGzKUifkfy5au7mGeecDZr7pOAa/mbQ=; b=fFAKLKpeX1UXm3FTcf0KpVo86s
 TAVWErFRg7UqZpj/joIjhsfplRvSdKGAbFeP6PmZqe8B9ErySOXGc93t2ofqJ0PfW5tVLu+2bO7c7
 tlkcsmUTpcJGdiZudPM+9H/J7qA++YYntqBAP5nQMfi/0VmsaFYiz8iIh+FqmdmOSIDCUkX2AxyUg
 4+iPQe6FbA5imHkaPuPHdlmpbWkOZY2IPMBFcFQu5749gI0wQ18r1UkUghz38MdwIvcYqglGbv42Q
 OE9k8pQvOkUoTghcB7fXqj/U8J8TtUon4YKIlHWSSpbaJgmCuw3j4dq3Y7DAL3QyTY+SLK4x/iHsn
 p71d6N7w==;
Subject: [Intel-gfx] [PATCH 09/16] cnic: stop passing bogus gfp flags
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
LQogZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vY25pYy5jIHwgNCArKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2NuaWMuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2Jyb2FkY29tL2NuaWMuYwppbmRleCA1N2RjM2NiZmYzNmUuLmJkMWM5OTM2ODBlNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vY25pYy5jCisrKyBiL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2Jyb2FkY29tL2NuaWMuYwpAQCAtMTAyOCw3ICsxMDI4LDcgQEAgc3RhdGlj
IGludCBfX2NuaWNfYWxsb2NfdWlvX3JpbmdzKHN0cnVjdCBjbmljX3Vpb19kZXYgKnVkZXYsIGlu
dCBwYWdlcykKIAl1ZGV2LT5sMl9yaW5nX3NpemUgPSBwYWdlcyAqIENOSUNfUEFHRV9TSVpFOwog
CXVkZXYtPmwyX3JpbmcgPSBkbWFfYWxsb2NfY29oZXJlbnQoJnVkZXYtPnBkZXYtPmRldiwgdWRl
di0+bDJfcmluZ19zaXplLAogCQkJCQkgICAmdWRldi0+bDJfcmluZ19tYXAsCi0JCQkJCSAgIEdG
UF9LRVJORUwgfCBfX0dGUF9DT01QKTsKKwkJCQkJICAgR0ZQX0tFUk5FTCk7CiAJaWYgKCF1ZGV2
LT5sMl9yaW5nKQogCQlyZXR1cm4gLUVOT01FTTsKIApAQCAtMTAzNiw3ICsxMDM2LDcgQEAgc3Rh
dGljIGludCBfX2NuaWNfYWxsb2NfdWlvX3JpbmdzKHN0cnVjdCBjbmljX3Vpb19kZXYgKnVkZXYs
IGludCBwYWdlcykKIAl1ZGV2LT5sMl9idWZfc2l6ZSA9IENOSUNfUEFHRV9BTElHTih1ZGV2LT5s
Ml9idWZfc2l6ZSk7CiAJdWRldi0+bDJfYnVmID0gZG1hX2FsbG9jX2NvaGVyZW50KCZ1ZGV2LT5w
ZGV2LT5kZXYsIHVkZXYtPmwyX2J1Zl9zaXplLAogCQkJCQkgICZ1ZGV2LT5sMl9idWZfbWFwLAot
CQkJCQkgIEdGUF9LRVJORUwgfCBfX0dGUF9DT01QKTsKKwkJCQkJICBHRlBfS0VSTkVMKTsKIAlp
ZiAoIXVkZXYtPmwyX2J1ZikgewogCQlfX2NuaWNfZnJlZV91aW9fcmluZ3ModWRldik7CiAJCXJl
dHVybiAtRU5PTUVNOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
