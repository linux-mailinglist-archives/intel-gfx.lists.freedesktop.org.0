Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6DE45EFE
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63BD489915;
	Fri, 14 Jun 2019 13:48:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736E28991E;
 Fri, 14 Jun 2019 13:48:19 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYn-0005Ie-J2; Fri, 14 Jun 2019 13:48:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:20 +0200
Message-Id: <20190614134726.3827-11-hch@lst.de>
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
 bh=OBOS8iCVbCKavrjNtD9grYbIza6qqnOVd5RpWueyj/M=; b=ty9usQOn48ryjo/yA+LI46GxnP
 KU+hV8DMp9K1AiYIp8CEWPCsYTVt0fa2fCx5FsgZtmFG+oZvda4iGOisvCu0KEUqYodtwwPbJHVPw
 Db2/6G2kesXnDnAn6z45JeeW3RlmDj87Wy6HfqWc00nj35RFlVFkRRZqPO0HsFrH99HI5YZOdnRTJ
 tHa9SDSKcyyo8FiIMQIwPBhvOKYxNIVJw/YdoAgm7jutOjnHItVUz1dXoVckleKMabuzqyEvJHykt
 ISIIujsBNMPIb0GXNcbQX1pr9F5xfFC5uZwG+WNcNlp5UaVPCWtpvsAYlg/ngmgqOUWtijss40PJa
 oxHQO6Tw==;
Subject: [Intel-gfx] [PATCH 10/16] iwlwifi: stop passing bogus gfp flags
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
LQogZHJpdmVycy9uZXQvd2lyZWxlc3MvaW50ZWwvaXdsd2lmaS9mdy9kYmcuYyAgICAgfCAzICst
LQogZHJpdmVycy9uZXQvd2lyZWxlc3MvaW50ZWwvaXdsd2lmaS9wY2llL3RyYW5zLmMgfCAzICst
LQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvaW50ZWwvaXdsd2lmaS9mdy9kYmcuYyBiL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL2ludGVsL2l3bHdpZmkvZncvZGJnLmMKaW5kZXggNWY1MmU0MGEy
OTAzLi4zMjNkYzVkNWVlODggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2ludGVs
L2l3bHdpZmkvZncvZGJnLmMKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvaW50ZWwvaXdsd2lm
aS9mdy9kYmcuYwpAQCAtMjM2MSw4ICsyMzYxLDcgQEAgaXdsX2Z3X2RiZ19idWZmZXJfYWxsb2Nh
dGlvbihzdHJ1Y3QgaXdsX2Z3X3J1bnRpbWUgKmZ3cnQsIHUzMiBzaXplKQogCiAJdmlydHVhbF9h
ZGRyID0KIAkJZG1hX2FsbG9jX2NvaGVyZW50KGZ3cnQtPnRyYW5zLT5kZXYsIHNpemUsICZwaHlz
X2FkZHIsCi0JCQkJICAgR0ZQX0tFUk5FTCB8IF9fR0ZQX05PV0FSTiB8IF9fR0ZQX1pFUk8gfAot
CQkJCSAgIF9fR0ZQX0NPTVApOworCQkJCSAgIEdGUF9LRVJORUwgfCBfX0dGUF9OT1dBUk4pOwog
CiAJLyogVE9ETzogYWxsb2MgZnJhZ21lbnRzIGlmIG5lZWRlZCAqLwogCWlmICghdmlydHVhbF9h
ZGRyKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvaW50ZWwvaXdsd2lmaS9wY2ll
L3RyYW5zLmMgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9pbnRlbC9pd2x3aWZpL3BjaWUvdHJhbnMu
YwppbmRleCA4MDNmY2JhYzQxNTIuLjIyYTQ3ZjkyOGRjOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9u
ZXQvd2lyZWxlc3MvaW50ZWwvaXdsd2lmaS9wY2llL3RyYW5zLmMKKysrIGIvZHJpdmVycy9uZXQv
d2lyZWxlc3MvaW50ZWwvaXdsd2lmaS9wY2llL3RyYW5zLmMKQEAgLTIxMCw4ICsyMTAsNyBAQCBz
dGF0aWMgdm9pZCBpd2xfcGNpZV9hbGxvY19md19tb25pdG9yX2Jsb2NrKHN0cnVjdCBpd2xfdHJh
bnMgKnRyYW5zLAogCWZvciAocG93ZXIgPSBtYXhfcG93ZXI7IHBvd2VyID49IG1pbl9wb3dlcjsg
cG93ZXItLSkgewogCQlzaXplID0gQklUKHBvd2VyKTsKIAkJY3B1X2FkZHIgPSBkbWFfYWxsb2Nf
Y29oZXJlbnQodHJhbnMtPmRldiwgc2l6ZSwgJnBoeXMsCi0JCQkJCSAgICAgIEdGUF9LRVJORUwg
fCBfX0dGUF9OT1dBUk4gfAotCQkJCQkgICAgICBfX0dGUF9aRVJPIHwgX19HRlBfQ09NUCk7CisJ
CQkJCSAgICAgIEdGUF9LRVJORUwgfCBfX0dGUF9OT1dBUk4pOwogCQlpZiAoIWNwdV9hZGRyKQog
CQkJY29udGludWU7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
