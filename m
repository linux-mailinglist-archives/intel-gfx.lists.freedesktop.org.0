Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9F4342625
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 20:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0259E6EA99;
	Fri, 19 Mar 2021 19:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D9DD6EA99
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 19:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616181998;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iaEleN4vhj/UbF6WKsnMkPmeWsyI2Knns1LkBS7Hd7E=;
 b=CLM0Nqoes0wcE47W7rEbCMz3PXGAhkP/Nn9qDiJuXNhQ2mlwpJE5OASn0I/ew038LDm5Zd
 cWGpL82m3T3Vr1oas1tt2KiZFRKdTq5ga7MBCcZgx8nQyUreAHnqJu7pW5HvFDx0Bk67iO
 EgeDkojMQOBh86TH3R24PvqMSZdbQTM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-248-H9XcRUofNdGA8ve4FGp19A-1; Fri, 19 Mar 2021 15:26:36 -0400
X-MC-Unique: H9XcRUofNdGA8ve4FGp19A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8BC048189CE;
 Fri, 19 Mar 2021 19:26:35 +0000 (UTC)
Received: from omen.home.shazbot.org (ovpn-112-120.phx2.redhat.com
 [10.3.112.120])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2D46019CB1;
 Fri, 19 Mar 2021 19:26:35 +0000 (UTC)
Date: Fri, 19 Mar 2021 13:26:34 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Fred Gao <fred.gao@intel.com>
Message-ID: <20210319132634.5af398b9@omen.home.shazbot.org>
In-Reply-To: <20210302130220.9349-1-fred.gao@intel.com>
References: <20210208170253.29968-1-fred.gao@intel.com>
 <20210302130220.9349-1-fred.gao@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: Re: [Intel-gfx] [PATCH v4] vfio/pci: Add support for opregion v2.1+
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

On Tue,  2 Mar 2021 21:02:20 +0800
Fred Gao <fred.gao@intel.com> wrote:

> Before opregion version 2.0 VBT data is stored in opregion mailbox #4,
> However, When VBT data exceeds 6KB size and cannot be within mailbox #4
> starting from opregion v2.0+, Extended VBT region, next to opregion, is
> used to hold the VBT data, so the total size will be opregion size plus
> extended VBT region size.
> 
> since opregion v2.0 with physical host VBT address should not be
> practically available for end user, it is not supported.
> 
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Signed-off-by: Swee Yee Fonn <swee.yee.fonn@intel.com>
> Signed-off-by: Fred Gao <fred.gao@intel.com>
> ---
>  drivers/vfio/pci/vfio_pci_igd.c | 49 +++++++++++++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 
> diff --git a/drivers/vfio/pci/vfio_pci_igd.c b/drivers/vfio/pci/vfio_pci_igd.c
> index 53d97f459252..4edb8afcdbfc 100644
> --- a/drivers/vfio/pci/vfio_pci_igd.c
> +++ b/drivers/vfio/pci/vfio_pci_igd.c
> @@ -21,6 +21,10 @@
>  #define OPREGION_SIZE		(8 * 1024)
>  #define OPREGION_PCI_ADDR	0xfc
>  
> +#define OPREGION_RVDA		0x3ba
> +#define OPREGION_RVDS		0x3c2
> +#define OPREGION_VERSION	0x16
> +
>  static size_t vfio_pci_igd_rw(struct vfio_pci_device *vdev, char __user *buf,
>  			      size_t count, loff_t *ppos, bool iswrite)
>  {
> @@ -58,6 +62,7 @@ static int vfio_pci_igd_opregion_init(struct vfio_pci_device *vdev)
>  	u32 addr, size;
>  	void *base;
>  	int ret;
> +	u16 version;
>  
>  	ret = pci_read_config_dword(vdev->pdev, OPREGION_PCI_ADDR, &addr);
>  	if (ret)
> @@ -83,6 +88,50 @@ static int vfio_pci_igd_opregion_init(struct vfio_pci_device *vdev)
>  
>  	size *= 1024; /* In KB */
>  
> +	/*
> +	 * Support opregion v2.1+
> +	 * When VBT data exceeds 6KB size and cannot be within mailbox #4

s/#4/#4, then the/

> +	 * Extended VBT region, next to opregion, is used to hold the VBT data.
> +	 * RVDA (Relative Address of VBT Data from Opregion Base) and RVDS
> +	 * (VBT Data Size) from opregion structure member are used to hold the
> +	 * address from region base and size of VBT data while RVDA/RVDS
> +	 * are not defined before opregion 2.0.
> +	 *
> +	 * opregion 2.0: rvda is the physical VBT address.

Let's expand the comment to include why this is a problem to support
(virtualization of this register would be required in userspace) and why
we're choosing not to manipulate this into a 2.1+ table, which I think
is both the practical lack of v2.0 tables in use and any implicit
dependencies software may have on the OpRegion version.

> +	 *
> +	 * opregion 2.1+: rvda is unsigned, relative offset from
> +	 * opregion base, and should never point within opregion.

And for our purposes must exactly follow the base opregion to avoid
exposing unknown host memory to userspace, ie. provide a more
descriptive justification for the 2nd error condition below.

> +	 */
> +	version = le16_to_cpu(*(__le16 *)(base + OPREGION_VERSION));
> +	if (version >= 0x0200) {
> +		u64 rvda;
> +		u32 rvds;
> +
> +		rvda = le64_to_cpu(*(__le64 *)(base + OPREGION_RVDA));
> +		rvds = le32_to_cpu(*(__le32 *)(base + OPREGION_RVDS));
> +		if (rvda && rvds) {
> +			/* no support for opregion v2.0 with physical VBT address */
> +			if (version == 0x0200) {
> +				memunmap(base);
> +				pci_err(vdev->pdev,
> +					"IGD passthrough does not support opregion\n"
> +					"version 0x%x with physical rvda 0x%llx\n", version, rvda);


Why do we need a new line midway through this log message?

s/passthrough/assignment/

In testing the version you include the leading zero, do you also want
that leading zero in the printed version, ie. %04x?

If we get to this code, we already know that both rvda and rvds are
non-zero, why is it useful to print the rvda value in this error
message?  For example, we could print:

 "IGD assignment does not support opregion version 0x%04x with an extended VBT region"

> +				return -EINVAL;
> +			}
> +
> +			if ((u32)rvda != size) {

What allows us to assume rvda is a 32bit value given that it's a 64bit
register?  It seems safer not to include this cast.

> +				memunmap(base);
> +				pci_err(vdev->pdev,
> +					"Extended VBT does not follow opregion !\n"
> +					"opregion version 0x%x:rvda 0x%llx\n", version, rvda);

Again I'm not sure about the usefulness of printing the rvda value on
its own.  Without knowing the size value it seems meaningless.  Like
above, get rid of the mid-error new line and random space if you keep
the exclamation point.

> +				return -EINVAL;
> +			}
> +
> +			/* region size for opregion v2.0+: opregion and VBT size */
> +			size += rvds;

RVDS is defined as size in bytes, not in kilobytes like the base
opregion size, right?  Let's include that clarification in the comment
since the spec is private.  Thanks,

Alex


> +		}
> +	}
> +
>  	if (size != OPREGION_SIZE) {
>  		memunmap(base);
>  		base = memremap(addr, size, MEMREMAP_WB);

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
