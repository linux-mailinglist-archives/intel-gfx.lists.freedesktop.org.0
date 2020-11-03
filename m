Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B542A4E73
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 19:21:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F6B86E8BF;
	Tue,  3 Nov 2020 18:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB7556E8BF
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 18:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1604427712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5HaZF0HHG9oO3e49yeD9DsV0qAb3GYn1OcgqbvDseMU=;
 b=BdxVk8lFbdp/s0LgShY3NbVDtYnEyiDq21iZl37YcIyZXmh60DF3OL3UbWpLjGHWM/BlXi
 oM+Y21VmaX3BLWYgK7idQdXq5zVb2GC6PZtG0GrNtDBNb43/SVJ1epYDZPa6XAkcbcLnlz
 F7vVg94qVWBhAz0Ce1B8HfUrcluKM/w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-70-y6tC8vg3OimS9rP6mtrDrw-1; Tue, 03 Nov 2020 13:21:46 -0500
X-MC-Unique: y6tC8vg3OimS9rP6mtrDrw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B6E8B1009E23;
 Tue,  3 Nov 2020 18:21:44 +0000 (UTC)
Received: from w520.home (ovpn-112-213.phx2.redhat.com [10.3.112.213])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 13B251002D46;
 Tue,  3 Nov 2020 18:21:44 +0000 (UTC)
Date: Tue, 3 Nov 2020 11:21:43 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Fred Gao <fred.gao@intel.com>
Message-ID: <20201103112143.07682d41@w520.home>
In-Reply-To: <20201102180120.25319-1-fred.gao@intel.com>
References: <20200929161038.15465-1-fred.gao@intel.com>
 <20201102180120.25319-1-fred.gao@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Subject: Re: [Intel-gfx] [PATCH v3] vfio/pci: Bypass IGD init in case of
 -ENODEV
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
Cc: Hang Yuan <hang.yuan@linux.intel.com>, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue,  3 Nov 2020 02:01:20 +0800
Fred Gao <fred.gao@intel.com> wrote:

> Bypass the IGD initialization when -ENODEV returns,
> that should be the case if opregion is not available for IGD
> or within discrete graphics device's option ROM,
> or host/lpc bridge is not found.
> 
> Then use of -ENODEV here means no special device resources found
> which needs special care for VFIO, but we still allow other normal
> device resource access.
> 
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Cc: Xiong Zhang <xiong.y.zhang@intel.com>
> Cc: Hang Yuan <hang.yuan@linux.intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Fred Gao <fred.gao@intel.com>
> ---
>  drivers/vfio/pci/vfio_pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to vfio for-linus branch for v5.10.  Thanks,

Alex

> 
> diff --git a/drivers/vfio/pci/vfio_pci.c b/drivers/vfio/pci/vfio_pci.c
> index f634c81998bb..c88cf9937469 100644
> --- a/drivers/vfio/pci/vfio_pci.c
> +++ b/drivers/vfio/pci/vfio_pci.c
> @@ -341,7 +341,7 @@ static int vfio_pci_enable(struct vfio_pci_device *vdev)
>  	    pdev->vendor == PCI_VENDOR_ID_INTEL &&
>  	    IS_ENABLED(CONFIG_VFIO_PCI_IGD)) {
>  		ret = vfio_pci_igd_init(vdev);
> -		if (ret) {
> +		if (ret && ret != -ENODEV) {
>  			pci_warn(pdev, "Failed to setup Intel IGD regions\n");
>  			goto disable_exit;
>  		}

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
