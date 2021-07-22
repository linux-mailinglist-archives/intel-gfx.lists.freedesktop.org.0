Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AE43D22B2
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 13:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2B96E48C;
	Thu, 22 Jul 2021 11:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F2FD6E842
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 11:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626953228;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=tlwSP3E+o6dACUexqN1lCWWtUA1ZS2/frtL2qurgSS8=;
 b=JM4wdHnHB1Y5/EzFENbsOmvtv/1wvBejgaxRH0P2M9jg+LLtSzpl6vxuVuV5fv5ovfoUx1
 R5tSv5DSE7wEbzw6AB1F8+U5U1oLMCuuWip0HhkyBi61CIyGL+p7n+UXhiWVRA792n0vzn
 QhqF6QdElyzj51jBobYdl9tRWAeYY3A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-526-TXg5LJprPxKeYAsU7j2vnQ-1; Thu, 22 Jul 2021 07:27:05 -0400
X-MC-Unique: TXg5LJprPxKeYAsU7j2vnQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD732E7B47;
 Thu, 22 Jul 2021 11:26:39 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-114-106.ams2.redhat.com
 [10.36.114.106])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E64F6A056;
 Thu, 22 Jul 2021 11:26:38 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id B0EE018000B2; Thu, 22 Jul 2021 13:26:36 +0200 (CEST)
Date: Thu, 22 Jul 2021 13:26:36 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: "Wang, Zhi A" <zhi.a.wang@intel.com>
Message-ID: <20210722112636.wj277vqhg4dez5ug@sirius.home.kraxel.org>
References: <20210721155355.173183-1-hch@lst.de>
 <DM4PR11MB55496531B246A4604FC86998CAE49@DM4PR11MB5549.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM4PR11MB55496531B246A4604FC86998CAE49@DM4PR11MB5549.namprd11.prod.outlook.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Subject: Re: [Intel-gfx] refactor the i915 GVT support
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

  Hi,

> https://github.com/intel/gvt-linux/blob/topic/gvt-xengt/drivers/gpu/drm/i915/gvt/xengt.c

> But it's hard for some customers to contribute their own "hypervisor"
> module to the upstream Linux kernel. I am thinking what would be a
> better solution here? The MPT layer in the kernel helps a lot for
> customers, but only one open-source "hypervisor" module is there in
> the kernel. That can confuse people which don't know the story.  One
> thing I was thinking is to put a document about the background and
> more description in the MPT headers. So it won't confuse more people. 

Getting the xengt module linked above merged into mainline
would also nicely explain why there are hypervisor modules.

take care,
  Gerd

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
