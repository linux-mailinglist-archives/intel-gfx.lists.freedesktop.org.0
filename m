Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B180F45F08
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:48:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA3D3898B7;
	Fri, 14 Jun 2019 13:48:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB9A4898BF;
 Fri, 14 Jun 2019 13:48:34 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYv-0005Sj-P5; Fri, 14 Jun 2019 13:48:14 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:22 +0200
Message-Id: <20190614134726.3827-13-hch@lst.de>
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
 bh=uJddLBdDNaWL4wSSvZ2YhjeFWIY1bS4Okt/V8tHSUJw=; b=Tpc9x4lPYqhK3XjIXO4GqJY9rv
 9rJeQeQNbim7ZbrvzWwlYZe6uviPZA8B8PnxWsyT6JGwXhhBWJVdSZXfCFQexWetdjj9pyjlFh9xF
 NNuQWOD5YMIca+yt05/XIg8Wkq6pGz0Z85GD2RuHezWtfbKqQOoREoRWCESCbTHgW7AMp5BbVshrc
 pEh3xewVIl6LVjW2c5Fh7o0QsoPF6TFPCQBrS9GLC8RQ30e45tR99TsjbM05NZ0+J3y0gAw3KzjRt
 lGDsivXtuD6ZbALT0tjqUJ7bWzADYRpbOi1VBP2HP7AECc7ayAViL+6MV1bLNQPDXazLoyPeSUXcq
 WTLTT30Q==;
Subject: [Intel-gfx] [PATCH 12/16] staging/comedi: mark as broken
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

Y29tZWRpX2J1Zi5jIGFidXNlIHRoZSBETUEgQVBJIGluIGdyYXZlbHkgYnJva2VuIHdheXMsIGFz
IGl0IGFzc3VtZXMgaXQKY2FuIGNhbGwgdmlydF90b19wYWdlIG9uIHRoZSByZXN1bHQsIGFuZCB0
aGUganVzdCByZW1hcCBpdCBhcyB1bmNhY2hlZAp1c2luZyB2bWFwLiAgRGlzYWJsZSB0aGUgZHJp
dmVyIHVudGlsIHRoaXMgQVBJIGFidXNlIGhhcyBiZWVuIGZpeGVkLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXN0b3BoIEhlbGx3aWcgPGhjaEBsc3QuZGU+Ci0tLQogZHJpdmVycy9zdGFnaW5nL2NvbWVk
aS9LY29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvY29tZWRpL0tjb25maWcgYi9kcml2ZXJzL3N0YWdpbmcvY29t
ZWRpL0tjb25maWcKaW5kZXggMDQ5YjY1OWZhNmFkLi5lN2MwMjFkNzZjZmEgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvc3RhZ2luZy9jb21lZGkvS2NvbmZpZworKysgYi9kcml2ZXJzL3N0YWdpbmcvY29t
ZWRpL0tjb25maWcKQEAgLTEsNiArMSw3IEBACiAjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wCiBjb25maWcgQ09NRURJCiAJdHJpc3RhdGUgIkRhdGEgYWNxdWlzaXRpb24gc3VwcG9y
dCAoY29tZWRpKSIKKwlkZXBlbmRzIG9uIEJST0tFTgogCWhlbHAKIAkgIEVuYWJsZSBzdXBwb3J0
IGZvciBhIHdpZGUgcmFuZ2Ugb2YgZGF0YSBhY3F1aXNpdGlvbiBkZXZpY2VzCiAJICBmb3IgTGlu
dXguCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
