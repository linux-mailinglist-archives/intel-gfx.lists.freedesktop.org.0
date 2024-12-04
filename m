Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C989E3904
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 12:39:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C776910E200;
	Wed,  4 Dec 2024 11:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 343A910E200;
 Wed,  4 Dec 2024 11:39:03 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tInie-00000002dTg-1JnS; Wed, 04 Dec 2024 13:39:00 +0200
Message-ID: <af860d5b9de4a1ded8fc655a3fd44a83ebb40eb6.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>, 
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Date: Wed, 04 Dec 2024 13:38:59 +0200
In-Reply-To: <20241204060601.1813514-1-chaitanya.kumar.borah@intel.com>
References: <20241204060601.1813514-1-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=4.0.1-pre1
Subject: Re: [core-for-CI] nvme-pci: don't use dma_alloc_noncontiguous with
 0 merge boundary
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

Hi Chaitanya,

On Wed, 2024-12-04 at 11:36 +0530, Chaitanya Kumar Borah wrote:
> From: Christoph Hellwig <hch@lst.de>
>=20
> Only call into nvme_alloc_host_mem_single which uses
> dma_alloc_noncontiguous when there is non-null dma merge boundary.
> Without this we'll call into dma_alloc_noncontiguous for device using
> dma-direct, which can work fine as long as the preferred size is below th=
e
> MAX_ORDER of the page allocator, but blows up with a warning if it is
> too large.
>=20
> Fixes: 63a5c7a4b4c4 ("nvme-pci: use dma_alloc_noncontigous if possible")
> Reported-by: Leon Romanovsky <leon@kernel.org>
> Reported-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13227
> Link: https://lore.kernel.org/linux-nvme/39a67024-2926-4a20-8feb-77dd64ab=
7c39@kernel.dk/T/#mfef47937b20e33aa3cc63a3af930f8a9f9baf8c2
> ---
>  drivers/nvme/host/pci.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 4c644bb7f069..778f124c2e21 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2172,6 +2172,7 @@ static int nvme_alloc_host_mem_multi(struct nvme_de=
v *dev, u64 preferred,
> =20
>  static int nvme_alloc_host_mem(struct nvme_dev *dev, u64 min, u64 prefer=
red)
>  {
> +	unsigned long dma_merge_moundary =3D dma_get_merge_boundary(dev->dev);
>  	u64 min_chunk =3D min_t(u64, preferred, PAGE_SIZE * MAX_ORDER_NR_PAGES)=
;
>  	u64 hmminds =3D max_t(u32, dev->ctrl.hmminds * 4096, PAGE_SIZE * 2);
>  	u64 chunk_size;
> @@ -2180,7 +2181,7 @@ static int nvme_alloc_host_mem(struct nvme_dev *dev=
, u64 min, u64 preferred)
>  	 * If there is an IOMMU that can merge pages, try a virtually
>  	 * non-contiguous allocation for a single segment first.
>  	 */
> -	if (!(PAGE_SIZE & dma_get_merge_boundary(dev->dev))) {
> +	if (dma_merge_moundary && (PAGE_SIZE & dma_merge_moundary) =3D=3D 0) {
>  		if (!nvme_alloc_host_mem_single(dev, preferred))
>  			return 0;
>  	}

This looks sane and has already been reviewed in the linux-nvme mailing
list.  So, FWIW, you have my:

Acked-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
