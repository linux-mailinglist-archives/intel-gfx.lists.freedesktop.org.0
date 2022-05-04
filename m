Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A63B8519C1E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 11:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 093E51120A2;
	Wed,  4 May 2022 09:43:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEC3112085
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 09:43:56 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id l18so1792986ejc.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 May 2022 02:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gBeVPtDIH5IEZROpcgMlW3pMSAwMvaE1la8ipSYktWY=;
 b=MshcPwT2wdo1XSXMMFYk6fGGLv0S/7DZm3+2HE96F51OUZt5pTaNzvwldV692cDkmk
 rH/eHP9RA1YGuL66F9kiWjsJkYalNw0yvY7lJO2eSXSB9J//TztRyCMAY0MpUGeMxumu
 bmX5z03z5FfDK7n4z+adz8bUeD2vpJXI7IMSc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gBeVPtDIH5IEZROpcgMlW3pMSAwMvaE1la8ipSYktWY=;
 b=i9xOuu0986rhbFwgpSVXzt9cbOUPdyZIt6lfAzpy6DW4Iyh4eZvixF19RK92pyxzba
 WGtTEBszQU54PTsDTPqpzDJi+mPZ8YXdD/J9MJ0iINR1n/2k6CSZuXDpMqCslINflVCH
 /VH56ycMuj/nrD8jzg60ehWrk51SxdLmeNzgGONeL2DU3FPCv2g3uVv23MKTfE3MuCrw
 bXxEKiTOe8Ud27M9adeVkXy0vI4ECAe6B1vUYzt+W6KttLRr/hXoU33Cg2zShmDTCEmz
 Hjfyfg6VOyTK6Irg0EYv3MtEqzZ86IusjkyoEvs/kS6TH8H6V+3K8Ivy+Bmike44HxyW
 PnXQ==
X-Gm-Message-State: AOAM530VJsQz1l6h+eItjD58yMBbX+hsuVyhUXgSNbm+Me403epMu9Vf
 dGK0fVGWSDktIe5QXusUur8vLw==
X-Google-Smtp-Source: ABdhPJzT1P+Y1g1ACCAdmZOHhfLDhn1jNjWGgIQCj+9418N+y7vFB/gKdkcCOgP4nEyGGWHYtRB93Q==
X-Received: by 2002:a17:907:969f:b0:6f3:dede:f2d2 with SMTP id
 hd31-20020a170907969f00b006f3dedef2d2mr19163382ejc.511.1651657434904; 
 Wed, 04 May 2022 02:43:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 jy28-20020a170907763c00b006f3ef214e53sm5437866ejc.185.2022.05.04.02.43.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 May 2022 02:43:54 -0700 (PDT)
Date: Wed, 4 May 2022 11:43:52 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <YnJK2En3AeNVpbwG@phenom.ffwll.local>
References: <20220502054219.2083162-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220502054219.2083162-1-suraj.kandpal@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 0/3] i915 private writeback framework
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 02, 2022 at 11:12:16AM +0530, Suraj Kandpal wrote:
> A patch series was floated in the drm mailing list which aimed to change
> the drm_connector and drm_encoder fields to pointer in the
> drm_connector_writeback structure, this received a huge pushback from
> the community but since i915 expects each connector present in the
> drm_device list to be a intel_connector but drm_writeback framework.
> [1] https://patchwork.kernel.org/project/dri-devel/patch/20220202081702.22119-1-suraj.kandpal@intel.com/
> [2] https://patchwork.kernel.org/project/dri-devel/patch/20220202085429.22261-6-suraj.kandpal@intel.com/
> This forces us to use a drm_connector which is not embedded in
> intel_connector the current drm_writeback framework becomes very
> unfeasible to us as it would mean a lot of checks at a lot of places
> to take into account the above issue.Since no one had an issue with
> encoder field being changed into a pointer it was decided to break the
> connector and encoder pointer changes into two different series.The
> encoder field changes is currently being worked upon by Abhinav Kumar
> [3]https://patchwork.kernel.org/project/dri-devel/list/?series=633565
> In the meantime for i915 to start using the writeback functionality we
> came up with a interim solution to own writeback pipeline bypassing one
> provided by drm which is what these patches do.
> Note: these are temp patches till we figure out how we can either change
> drm core writeback to work with our intel_connector structure or find a
> different solution which allows us to work with the current

I'm assuming this is just fyi to keep development moving and not being
planned for merging?
-Daniel

> 
> Suraj Kandpal (3):
>   drm/i915: Creating writeback pipeline to bypass drm_writeback
>     framework
>   drm/i915: Define WD trancoder for i915
>   drm/i915: Enabling WD Transcoder
> 
>  drivers/gpu/drm/i915/Makefile                 |   2 +
>  drivers/gpu/drm/i915/display/intel_acpi.c     |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  89 +-
>  drivers/gpu/drm/i915/display/intel_display.h  |  15 +
>  .../drm/i915/display/intel_display_types.h    |  18 +
>  drivers/gpu/drm/i915/display/intel_dpll.c     |   3 +
>  drivers/gpu/drm/i915/display/intel_opregion.c |   3 +
>  .../gpu/drm/i915/display/intel_wb_connector.c | 296 ++++++
>  .../gpu/drm/i915/display/intel_wb_connector.h |  99 ++
>  drivers/gpu/drm/i915/display/intel_wd.c       | 978 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_wd.h       |  82 ++
>  drivers/gpu/drm/i915/i915_drv.h               |   5 +
>  drivers/gpu/drm/i915/i915_irq.c               |   8 +-
>  drivers/gpu/drm/i915/i915_pci.c               |   7 +-
>  drivers/gpu/drm/i915/i915_reg.h               | 139 +++
>  15 files changed, 1742 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h
> 
> -- 
> 2.35.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
