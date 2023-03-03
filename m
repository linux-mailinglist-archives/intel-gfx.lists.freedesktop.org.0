Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECC76A9A2E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Mar 2023 16:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0978710E6A8;
	Fri,  3 Mar 2023 15:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 579 seconds by postgrey-1.36 at gabe;
 Fri, 03 Mar 2023 15:05:43 UTC
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org
 [IPv6:2001:67c:2050:0:465::202])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F9B10E650;
 Fri,  3 Mar 2023 15:05:43 +0000 (UTC)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [10.196.197.2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4PSrdC1nvVz9sWm;
 Fri,  3 Mar 2023 15:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org;
 s=mail20150812; t=1677855359;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DvYXQYOVZsp7/up4g6uoyddDLFi4Xaa5+N19yUjNy+c=;
 b=rhvaHeefq1ll4FIJsng9qb9+TyX0DtvDO1OEWtjAILyx+LAFwpMmRjsbBoueDh0gOPi7n0
 I8vK8cQrnvFJE/5Do0/b/kz/kFXhPaykAg9yJZIzQHkbu79hcnycJqq8yoFyg77MvEBPp7
 N72BfpFfis8f4fIkRYb5dfctAmb2N9kRoUygLwXfoqALC7fnc/7cyZCWeLA3CgrtOV+Hsn
 zTbD/m0jQVeDXNMAzdLCC5DBx1XTp60K2kxhdDhuzGbCV5QRgTPlo/W9cmINfqUYO6h39B
 xlAtfYgGqfc1k9pjB2kQqMMKadhs9ZfniK1B9n7Fc0mmb101DLHXwyrSX3Qkzw==
Message-ID: <da7e9be8-4a80-7166-d6f8-20f3acf8bf9c@mailbox.org>
Date: Fri, 3 Mar 2023 15:55:56 +0100
MIME-Version: 1.0
To: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-graphics-maintainer@vmware.com
References: <20230303071659.1213074-1-Amaranath.Somalapuram@amd.com>
Content-Language: en-CA
From: =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel.daenzer@mailbox.org>
In-Reply-To: <20230303071659.1213074-1-Amaranath.Somalapuram@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: o14rz3dkf4t9hit9trfzw9gcrhfbtkqk
X-MBO-RS-ID: 9e9a7b30180685b8231
Subject: Re: [Intel-gfx] [PATCH] Change the meaning of the fields in the
 ttm_place structure from pfn to bytes
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
Cc: alexander.deucher@amd.com, arunpravin.paneerselvam@amd.com,
 christian.koenig@amd.com, arvind.yadav@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 3/3/23 08:16, Somalapuram Amaranath wrote:
> Change the ttm_place structure member fpfn, lpfn, mem_type to
> res_start, res_end, res_type.
> Change the unsigned to u64.
> Fix the dependence in all the DRM drivers and
> clean up PAGE_SHIFT operation.
> 
> Signed-off-by: Somalapuram Amaranath <Amaranath.Somalapuram@amd.com>
> 
> [...]
> 
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
> index 44367f03316f..5b5104e724e3 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c
> @@ -131,11 +131,12 @@ static int amdgpu_gtt_mgr_new(struct ttm_resource_manager *man,
>  		goto err_free;
>  	}
>  
> -	if (place->lpfn) {
> +	if (place->res_end) {
>  		spin_lock(&mgr->lock);
>  		r = drm_mm_insert_node_in_range(&mgr->mm, &node->mm_nodes[0],
> -						num_pages, tbo->page_alignment,
> -						0, place->fpfn, place->lpfn,
> +						num_pages, tbo->page_alignment,	0,
> +						place->res_start << PAGE_SHIFT,
> +						place->res_end << PAGE_SHIFT,
>  						DRM_MM_INSERT_BEST);

This should be >> or no shift instead of <<, shouldn't it? Multiplying a value in bytes by the page size doesn't make sense.


I didn't check the rest of the patch in detail, but it's easy introduce subtle regressions with this kind of change. It'll require a lot of review & testing scrutiny.


-- 
Earthling Michel Dänzer            |                  https://redhat.com
Libre software enthusiast          |         Mesa and Xwayland developer

