Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3CC45ED2
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 15:47:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39104898BF;
	Fri, 14 Jun 2019 13:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 878E5898C4;
 Fri, 14 Jun 2019 13:47:43 +0000 (UTC)
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmYG-0004Xc-Jk; Fri, 14 Jun 2019 13:47:33 +0000
From: Christoph Hellwig <hch@lst.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Ian Abbott <abbotti@mev.co.uk>,
 H Hartley Sweeten <hsweeten@visionengravers.com>
Date: Fri, 14 Jun 2019 15:47:10 +0200
Message-Id: <20190614134726.3827-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2klM0787YOypidTxFFKkFXrGCXrbMhQ5qreI3X9Vu1k=; b=Cj3+LM9vIrA6nltYCay8yBPba
 y6IkbYwpLx9JZh8kK5t2kLy0T8EhKYFLd4ni8FEoVyGRGa1u1i3grWUes4UAS9IJ9k3PGBxh0Ddkp
 +eH6rF5lBzxCwQMwke6G/c2TJda2p6rGBomPUsGZBfRc0dQxUxHgwIel6XPax0+lxmSXe9hnoqneL
 tM4WnvDTXZk0YQhKyEzCwXVDmrezpr/WzX/aQS4stZilw7GkSoqCXo2Zka98OqbC6gFV5/7OKNZNF
 BKEvRnmiaTr9rp4o4Y6qOWysCXUmGZc3uHBgRcuKZdrN51a9q9TVTZ/wz3VsIWst8b5uTNKZ6nDin
 VS2+DYitQ==;
Subject: [Intel-gfx] use exact allocation for dma coherent memory
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

SGkgYWxsLAoKdmFyaW91cyBhcmNoaXRlY3R1cmVzIGhhdmUgdXNlZCBleGFjdCBtZW1vcnkgYWxs
b2NhdGlvbnMgZm9yIGRtYQphbGxvY2F0aW9ucyBmb3IgYSBsb25nIHRpbWUsIGJ1dCB4ODYgYW5k
IHRodXMgdGhlIGNvbW1vbiBjb2RlIGJhc2VkCm9uIGl0IGtlcHQgdXNpbmcgb3VyIG5vcm1hbCBw
b3dlciBvZiB0d28gYWxsb2NhdG9yLCB3aGljaCB0ZW5kcyB0bwp3YXN0ZSBhIGxvdCBvZiBtZW1v
cnkgZm9yIGNlcnRhaW4gYWxsb2NhdGlvbnMuCgpTd2l0Y2hpbmcgdG8gYSBzbGlnaHRseSBjbGVh
bmVkIHVwIGFsbG9jX3BhZ2VzX2V4YWN0IGlzIHByZXR0eSBlYXN5LApidXQgaXQgdHVybnMgb3V0
IHRoYXQgYmVjYXVzZSB3ZSBkaWRuJ3QgZmlsdGVyIHZhbGlkIGdmcF90IGZsYWdzCm9uIHRoZSBE
TUEgYWxsb2NhdG9yLCBhIGJ1bmNoIG9mIGRyaXZlcnMgd2VyZSBwYXNzaW5nIF9fR0ZQX0NPTVAK
dG8gaXQsIHdoaWNoIGlzIHJhdGhlciBib2d1cyBpbiB0b28gbWFueSB3YXlzIHRvIGV4cGxhaW4u
ICBBcm0gaGFzCmJlZW4gZmlsdGVyaW5nIGl0IGZvciBhIHdoaWxlLCBidXQgdGhpcyBzZXJpZXMg
aW5zdGVhZCB0cmllcyB0byBmaXgKdGhlIGRyaXZlcnMgYW5kIHdhcm4gd2hlbiBfX0dGUF9DT01Q
IGlzIHBhc3NlZCwgd2hpY2ggbWFrZXMgaXQgbXVjaApsYXJnZXIgdGhhbiBqdXN0IGFkZGluZyB0
aGUgZnVuY3Rpb25hbGl0eS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
