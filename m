Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF648663C51
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 10:10:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FE3910E56C;
	Tue, 10 Jan 2023 09:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A8010E56C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 09:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=B7sGmSmXqXdck4MSb4UdnDVnJ5cP+hxBfzPSNoLBlas=; b=H++a8/OB8Gph+evoX6G3aPlj1z
 +i6Vgp0jxN9tIF/xZFKGnKV14cCjfSQIFV1i7lRhSvevb/3EuEoBVyY/u2k58CrZIsKCruEQI+H7m
 +hFHcoh1JAgVqidnjH9+TITs1EHV6t2Qt7WFLuPO7s2Yf+IYBJdD+n60G1GdUCvb3gsJwMuaDaDt+
 uDPuiOJnAKxyhYNR2gINgVczKp78Kb+hJ6dioAlD7FFV8JxmN/BbgsjE1z6Z/R4/o43rhk5pXT7Wp
 /lYhrXoq+5Fv9yKqQ0GWxw5H+cLaq+PYKQLLqgpC9yCeZFBYxwBWXI5ptX6GIkql0ZYc6ops7I5N7
 RgwlWvpw==;
Received: from [2001:4bb8:181:656b:cb3a:c552:3fcc:12a6] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pFAe4-0060ZL-9E; Tue, 10 Jan 2023 09:10:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: Alex Williamson <alex.williamson@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>
Date: Tue, 10 Jan 2023 10:10:05 +0100
Message-Id: <20230110091009.474427-1-hch@lst.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] misc mdev tidyups
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Tony Krowiak <akrowiak@linux.ibm.com>, Jason Herne <jjherne@linux.ibm.com>,
 kvm@vger.kernel.org, linux-s390@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Halil Pasic <pasic@linux.ibm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

this series tidies up the mdev Kconfig interaction and documentation a bit.

Diffstat:
 Documentation/driver-api/vfio-mediated-device.rst |  108 ----------------------
 Documentation/s390/vfio-ap.rst                    |    1 
 arch/s390/Kconfig                                 |    6 -
 arch/s390/configs/debug_defconfig                 |    1 
 arch/s390/configs/defconfig                       |    1 
 drivers/gpu/drm/i915/Kconfig                      |    2 
 drivers/vfio/mdev/Kconfig                         |    8 -
 samples/Kconfig                                   |   16 +--
 samples/vfio-mdev/README.rst                      |  100 ++++++++++++++++++++
 9 files changed, 115 insertions(+), 128 deletions(-)
