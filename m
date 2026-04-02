Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LLcK0DOzmlXqQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 22:14:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8352038DE28
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 22:14:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C214710F33F;
	Thu,  2 Apr 2026 20:14:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="UUmingpm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A0110F28B;
 Thu,  2 Apr 2026 20:14:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 2BC8A42BAD;
 Thu,  2 Apr 2026 20:14:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9F6FC116C6;
 Thu,  2 Apr 2026 20:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1775160892;
 bh=HNTeodBqDVGRGqH73B5AhKGxKZ8pTeccNAxLgIKy6X8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UUmingpm59+E+zJvRBvxXziPXDTybVJowAXF6BtM8uE2u64oB1chE5JsseklIn4sD
 DVhwxYXn+n7jg0pzkRmNx9+JfbprGgcC25Q4mvBvOI/S9MvaEugP5dl+DP83sStRMs
 4c7WJgXedQkWXu8C6eRUFY/ym/kQTi9yReZRGrMTWShgJEhZ08Da5hddghrwR6qhFH
 YhTCHBqOLFW09Nmmw4rLZnaswqXLtUFuaxE2nsVWQMu3pQmdtSwD+LpxlcJ6hP6P9j
 7pxYxs01fxKWMKBoEPkPtZ2YWzRikvBFz+XxB0k5og5R8Qe0ZZPLEfGtLlO+Vn9BSm
 1z2zNy0umzhpw==
Date: Thu, 2 Apr 2026 15:14:50 -0500
From: Rob Herring <robh@kernel.org>
To: Jim Cromie <jim.cromie@gmail.com>
Cc: linux-kernel@vger.kernel.org, airlied@gmail.com, simona@ffwll.ch,
 jbaron@akamai.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: Re: [PATCH v12 68/69] accel/ethosu: call DRM_CLASSMAP_USE
Message-ID: <20260402201450.GA966967-robh@kernel.org>
References: <20260326185413.1205870-1-jim.cromie@gmail.com>
 <20260326185413.1205870-69-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260326185413.1205870-69-jim.cromie@gmail.com>
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,suse.de,linux.intel.com,intel.com,amd.com,bootlin.com,suse.com,chromium.org,lists.freedesktop.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 8352038DE28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 26, 2026 at 12:54:12PM -0600, Jim Cromie wrote:
> ethosu.ko has several drm*dbg() calls, it must call DRM_CLASSMAP_USE
> to tell dynamic-debug what classmap enables them.
> Also include drm/drm_print.h explicitly.
> 
> Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
> ---

Didn't I ack this already? It is up to you to add tags when you send a 
new version.

Or did it change? I can't tell as there is no changelog here.

>  drivers/accel/ethosu/ethosu_drv.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/accel/ethosu/ethosu_drv.c b/drivers/accel/ethosu/ethosu_drv.c
> index 9992193d7338..a0b8cb81a359 100644
> --- a/drivers/accel/ethosu/ethosu_drv.c
> +++ b/drivers/accel/ethosu/ethosu_drv.c
> @@ -17,12 +17,15 @@
>  #include <drm/drm_gem.h>
>  #include <drm/drm_accel.h>
>  #include <drm/ethosu_accel.h>
> +#include <drm/drm_print.h>
>  
>  #include "ethosu_drv.h"
>  #include "ethosu_device.h"
>  #include "ethosu_gem.h"
>  #include "ethosu_job.h"
>  
> +DRM_CLASSMAP_USE(drm_debug_classes);
> +
>  static int ethosu_ioctl_dev_query(struct drm_device *ddev, void *data,
>  				  struct drm_file *file)
>  {
> -- 
> 2.53.0
> 
