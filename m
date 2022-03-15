Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD024D961E
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 09:25:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7CE10E3B5;
	Tue, 15 Mar 2022 08:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 325 seconds by postgrey-1.36 at gabe;
 Tue, 15 Mar 2022 08:25:06 UTC
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B2F10E467
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 08:25:06 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5ae8f9.dynamic.kabel-deutschland.de
 [95.90.232.249])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C3DAB61EA1928;
 Tue, 15 Mar 2022 09:19:38 +0100 (CET)
Message-ID: <0b9a8cc2-2f34-48c9-7960-727615eb2edb@molgen.mpg.de>
Date: Tue, 15 Mar 2022 09:19:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Arunpravin.PaneerSelvam@amd.com
References: <20220314194049.534471-1-Arunpravin.PaneerSelvam@amd.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20220314194049.534471-1-Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm: Fix a infinite loop condition when
 order becomes 0
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
Cc: intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, alexander.deucher@amd.com,
 christian.koenig@amd.com, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Dear Arunpravin,


Am 14.03.22 um 20:40 schrieb Arunpravin:
> handle a situation in the condition order-- == min_order,
> when order = 0, leading to order = -1, it now won't exit
> the loop. To avoid this problem, added a order check in
> the same condition, (i.e) when order is 0, we return
> -ENOSPC
> 
> Signed-off-by: Arunpravin <Arunpravin.PaneerSelvam@amd.com>

Please use your full name.

> ---
>   drivers/gpu/drm/drm_buddy.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_buddy.c b/drivers/gpu/drm/drm_buddy.c
> index 72f52f293249..5ab66aaf2bbd 100644
> --- a/drivers/gpu/drm/drm_buddy.c
> +++ b/drivers/gpu/drm/drm_buddy.c

In what tree is that file?

> @@ -685,7 +685,7 @@ int drm_buddy_alloc_blocks(struct drm_buddy *mm,
>   			if (!IS_ERR(block))
>   				break;
>   
> -			if (order-- == min_order) {
> +			if (!order || order-- == min_order) {
>   				err = -ENOSPC;
>   				goto err_free;
>   			}

Kind regards,

Paul
