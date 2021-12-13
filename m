Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F408347236C
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 10:04:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C33C089D49;
	Mon, 13 Dec 2021 09:04:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A8DE89D4A;
 Mon, 13 Dec 2021 09:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=E1tfJAJEo2ii3UUfFc4sMr4HPboIoKFc3I0QAP/7CAY=; b=aIrkrI+KqL28ZA6400YDIn5IRt
 l/K5scmwRddqvQ4sE0ypmZYXJJlYitkGODVJZb+y0TgOVv54m15f3u+j3oQp6CC7XNdvtxL6zewm5
 wVLwzhTVZ0guWNcDSliGheB19UtdIGNOf8Edd9tenuethftMe2lSvWjMDGO5BIVsYw60DVxcIJXg9
 8D9jlXCJajiE7uuBy01ct8hzHIr96VtnyABQb2KZDfCcEK6qALNDGh6d7/eoKvaptsKAfe4c1Pf0O
 DZ5/9P6Hm20Gs2DvIGP1uc4PJK+LjSecS4BbZPZ+UQm524ZMKszJ/5wNQbln7cKISDMGA1UQglJ/u
 ZRpyi5wQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1mwhFf-008UXb-Be; Mon, 13 Dec 2021 09:04:07 +0000
Date: Mon, 13 Dec 2021 01:04:07 -0800
From: Christoph Hellwig <hch@infradead.org>
To: ira.weiny@intel.com
Message-ID: <YbcMhzfm31aL5fzx@infradead.org>
References: <20211210232404.4098157-1-ira.weiny@intel.com>
 <20211210232404.4098157-2-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211210232404.4098157-2-ira.weiny@intel.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Replace kmap() with
 kmap_local_page()
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
Cc: David Airlie <airlied@linux.ie>, linux-arm-msm@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 10, 2021 at 03:23:58PM -0800, ira.weiny@intel.com wrote:
> -		vaddr = kmap(page);
> +		vaddr = kmap_local_page(page);
>  		memcpy(vaddr, data, len);
> -		kunmap(page);
> +		kunmap_local(vaddr);

memcpy_to_page?
