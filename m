Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E693121A036
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 14:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE9E89EAE;
	Thu,  9 Jul 2020 12:48:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFD289C6B
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 12:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594298916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wq1kFYAWyMi1luu/i9PjUD65Uz5zsRQxFztxNWKcNAE=;
 b=EPD9A8Z6fgAi8pJn4uDnHbVhta4IQX4BCnp4791c5yIjuzU6n92sZNf2RhNw66Py8ofEo4
 EejOM8NEObwJnr3KBXNH0bkpU2Hq32Bfju1O1zBoWWpfumBzrfIMr5dpGCiGHTOszuy2cM
 7TZu7+XCFzybB6xVWAU5QTrJelboTrM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-lcY18hqwMkCdj-O9Qo6VlQ-1; Thu, 09 Jul 2020 08:48:31 -0400
X-MC-Unique: lcY18hqwMkCdj-O9Qo6VlQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 27E9B193F560;
 Thu,  9 Jul 2020 12:48:30 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-200.ams2.redhat.com
 [10.36.112.200])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AB5742B6DD;
 Thu,  9 Jul 2020 12:48:29 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id C1614187; Thu,  9 Jul 2020 14:48:28 +0200 (CEST)
Date: Thu, 9 Jul 2020 14:48:28 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200709124828.4qgbafyobms5yx5g@sirius.home.kraxel.org>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <20200709123339.547390-2-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200709123339.547390-2-daniel.vetter@ffwll.ch>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/virtio: Remove open-coded
 commit-tail function
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
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 09, 2020 at 02:33:39PM +0200, Daniel Vetter wrote:
> Exactly matches the one in the helpers.
> 
> This avoids me having to roll out dma-fence critical section
> annotations to this copy.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Cc: virtualization@lists.linux-foundation.org

Acked-by: Gerd Hoffmann <kraxel@redhat.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
