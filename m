Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7909A7B8E3
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 10:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D20510EB8A;
	Fri,  4 Apr 2025 08:31:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="gmBxv3+Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BE3A10EB8A;
 Fri,  4 Apr 2025 08:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NPzymWGZFZtOe+/jKRLbVu5DHM/rAWyTP2BsW0jWWww=; b=gmBxv3+YsKaQUOox3/D9POOLlC
 buaE3GmpF/BKwDIizPM9bE+SXwlr9WPozDTwla/E/usOJEJE+CuJH9AXDMomS3kxgDaA4sm/g+w3/
 JU5fzwobQjUjjQxNxWsNC2xGRppdEEs0Vye5x2AehKQnRI0YgOBSrlMzOv7G4DAIZ2P5W2uS7/YT8
 qL8qNuc9ovK/Xmfa5sKCdcK4JAJQh1uqbERIYKgBlv0rjWbp11Opc/5vhIKum1AU3xV8ANFWxKMNs
 TNrIqaqRq1lRUHywgru3b30QqSXTJHjc8makSqjsg5xLnD3Hl6tNGdJEvWdnNNnbWSMz4bOIYTgUf
 xDct+lPg==;
Received: from hch by bombadil.infradead.org with local (Exim 4.98.1 #2 (Red
 Hat Linux)) id 1u0cSF-0000000B9ab-3R5k;
 Fri, 04 Apr 2025 08:31:11 +0000
Date: Fri, 4 Apr 2025 01:31:11 -0700
From: Christoph Hellwig <hch@infradead.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: linux-fsdevel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-mm@kvack.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 0/9] Remove aops->writepage
Message-ID: <Z--YzzLSj7B7ltYE@infradead.org>
References: <20250402150005.2309458-1-willy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402150005.2309458-1-willy@infradead.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The whole series looks good to me:

Reviewed-by: Christoph Hellwig <hch@lst.de>

