Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A229249FB2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 15:25:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C793A6E353;
	Wed, 19 Aug 2020 13:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D4BB6E353
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 13:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597843522;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=5JG7lykHHZDOhZibDTST22h7kjX3blalLhMbA84YoqU=;
 b=FoPILI65B/r5W7ZfUPRYMziDDEfWTv1u35ATLlQXkAk5V0lH1rRP8kllGSG+cE9iw4nXt0
 mdjGq7sX+rAg9R/Tom7z5OrwqE8XOLyF7Ak0oR6GjO7ZEaBeKt7mCVt/sC5NW1fE5u7s+D
 9AF/V1+788jWRYuLqTpRmmIbHvo58x4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-579-Uoxkl9T5OGqKRSQ9hbg5rw-1; Wed, 19 Aug 2020 09:24:12 -0400
X-MC-Unique: Uoxkl9T5OGqKRSQ9hbg5rw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B13010054FF;
 Wed, 19 Aug 2020 13:24:10 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-195.ams2.redhat.com
 [10.36.112.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CA33D5D9E8;
 Wed, 19 Aug 2020 13:24:09 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 7007E1753B; Wed, 19 Aug 2020 15:24:08 +0200 (CEST)
Date: Wed, 19 Aug 2020 15:24:08 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Jiri Slaby <jirislaby@kernel.org>
Message-ID: <20200819132408.jnqjhdgd4jbnarhh@sirius.home.kraxel.org>
References: <20200707201229.472834-4-daniel.vetter@ffwll.ch>
 <20200709123339.547390-1-daniel.vetter@ffwll.ch>
 <20200709123339.547390-2-daniel.vetter@ffwll.ch>
 <5cb80369-75a5-fc83-4683-3a6fc2814104@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5cb80369-75a5-fc83-4683-3a6fc2814104@kernel.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 19, 2020 at 02:43:28PM +0200, Jiri Slaby wrote:
> On 09. 07. 20, 14:33, Daniel Vetter wrote:
> > Exactly matches the one in the helpers.
> 
> It's not that exact. The order of modeset_enables and planes is
> different. And this causes a regression -- no fb in qemu.

Does https://patchwork.freedesktop.org/patch/385980/ help?

take care,
  Gerd

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
