Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB51BD13296
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jan 2026 15:33:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B5F610E3F9;
	Mon, 12 Jan 2026 14:33:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=bootlin.com header.i=@bootlin.com header.b="qp0HG9w4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EAD910E3F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jan 2026 14:33:39 +0000 (UTC)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
 by smtpout-02.galae.net (Postfix) with ESMTPS id 1E9091A27E8;
 Mon, 12 Jan 2026 14:33:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
 by smtpout-01.galae.net (Postfix) with ESMTPS id E4A3A606FA;
 Mon, 12 Jan 2026 14:33:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id C1DCE103C8CD8; Mon, 12 Jan 2026 15:33:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
 t=1768228417; h=from:subject:date:message-id:to:cc:mime-version:content-type:
 content-transfer-encoding:content-language:in-reply-to:references;
 bh=vUsHsd6iI9gfWfhxHISHMHDt1TYwC1KmcSDZd8Ln0Fw=;
 b=qp0HG9w4vW4HhGWWkhrBaiKwMvto4WHPde/0eZmsHgm8p62Lc4lP6qb/x57ks/qV3xEcfG
 OQnugq3l3QVv94nE/iY/mJ/9bW6YqHrCc4eQvVkQyivYHXfjfFP1sTmXKCFnQjZHgYKwW0
 nV8ahGOgt6UIWAmZR4I+R+B18kl6vnIYCMpjh3eOdUL/deW5i8oMCR2D+OoWTMLQzdEQf2
 7KoCp6GAdrnyFIoDiA8RENnA++k2gbBSPrSbynBcoEQ6PRUl7497Y3y9WH+OBrXqdPOwmm
 SGCcZM4kwPStSqE91O9mfuIk91ezcxCv9Gp7LEfL/Y75dvCqUNsxVdVtoOddtQ==
Message-ID: <f222ced2-7147-42d2-8151-496708f41fb8@bootlin.com>
Date: Mon, 12 Jan 2026 15:33:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/13] drm/vkms: Remove drm_colorop_pipeline_destroy()
 from vkms_destroy()
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, amd-gfx@lists.freedesktop.org
Cc: harry.wentland@amd.com, jani.nikula@linux.intel.com, mwen@igalia.com,
 contact@emersion.fr, alex.hung@amd.com, daniels@collabora.com,
 uma.shankar@intel.com, suraj.kandpal@intel.com, nfraprado@collabora.com,
 ville.syrjala@linux.intel.com, matthew.d.roper@intel.com
References: <20260109081728.478844-1-chaitanya.kumar.borah@intel.com>
 <20260109081728.478844-12-chaitanya.kumar.borah@intel.com>
From: Louis Chauvet <louis.chauvet@bootlin.com>
Content-Language: en-US
In-Reply-To: <20260109081728.478844-12-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
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



On 1/9/26 09:17, Chaitanya Kumar Borah wrote:
> Now that colorops are cleaned from drm_mode_config_cleanup(), remove
> drm_colorop_pipeline_destroy() from  vkms_destroy().
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>

> ---
>   drivers/gpu/drm/vkms/vkms_drv.c | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
> index 434c295f44ba..95020765c4c2 100644
> --- a/drivers/gpu/drm/vkms/vkms_drv.c
> +++ b/drivers/gpu/drm/vkms/vkms_drv.c
> @@ -259,7 +259,6 @@ void vkms_destroy(struct vkms_config *config)
>   
>   	fdev = config->dev->faux_dev;
>   
> -	drm_colorop_pipeline_destroy(&config->dev->drm);
>   	drm_dev_unregister(&config->dev->drm);
>   	drm_atomic_helper_shutdown(&config->dev->drm);
>   	devres_release_group(&fdev->dev, NULL);

