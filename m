Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D21355C3F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Apr 2021 21:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4357C6E8A2;
	Tue,  6 Apr 2021 19:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8830E6E8A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Apr 2021 19:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617737864;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=L7OY+N2Q6/FRu9JVKctbQPu74TT+x5L6GqR5UhbmXrU=;
 b=ImIGhzs/nQD3PtHCidPsK7zKhoieNKP6kDCrs5By0GNrEa+6Ixs1odtbri1REgB9Hs4bWB
 1InaTehLJgZ776XPVD0jSvnE3qrfEpl5Fa65MwIwoOJvVfkuwnbeF84jY1JrEa1SzMdMrh
 rNedIcBjPpHe2yT2f28Af17VeL/CCAo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-331-4X-8dloyMCeIxWKJh8UVQQ-1; Tue, 06 Apr 2021 15:37:40 -0400
X-MC-Unique: 4X-8dloyMCeIxWKJh8UVQQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBE491007478;
 Tue,  6 Apr 2021 19:37:38 +0000 (UTC)
Received: from omen (ovpn-112-85.phx2.redhat.com [10.3.112.85])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 56AEE17D04;
 Tue,  6 Apr 2021 19:37:38 +0000 (UTC)
Date: Tue, 6 Apr 2021 13:37:28 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Fred Gao <fred.gao@intel.com>
Message-ID: <20210406133728.23ecb592@omen>
In-Reply-To: <20210325170953.24549-1-fred.gao@intel.com>
References: <20210302130220.9349-1-fred.gao@intel.com>
 <20210325170953.24549-1-fred.gao@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: Re: [Intel-gfx] [PATCH v5] vfio/pci: Add support for opregion v2.1+
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
Cc: Swee Yee Fonn <swee.yee.fonn@intel.com>, intel-gfx@lists.freedesktop.org,
 kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 26 Mar 2021 01:09:53 +0800
Fred Gao <fred.gao@intel.com> wrote:

> Before opregion version 2.0 VBT data is stored in opregion mailbox #4,
> but when VBT data exceeds 6KB size and cannot be within mailbox #4
> then from opregion v2.0+, Extended VBT region, next to opregion is
> used to hold the VBT data, so the total size will be opregion size plus
> extended VBT region size.
> 
> Since opregion v2.0 with physical host VBT address would not be
> practically available for end user and guest can not directly access
> host physical address, so it is not supported.
> 
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Signed-off-by: Swee Yee Fonn <swee.yee.fonn@intel.com>
> Signed-off-by: Fred Gao <fred.gao@intel.com>
> ---
>  drivers/vfio/pci/vfio_pci_igd.c | 53 +++++++++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)

Applied to vfio next branch for v5.13.  Thanks,

Alex

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
