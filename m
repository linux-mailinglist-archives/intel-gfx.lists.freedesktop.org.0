Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC06513DD7
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Apr 2022 23:48:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3F4B10E770;
	Thu, 28 Apr 2022 21:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99DF710E770
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 21:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1651182497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1SdrNUtS00bHB3h5RBXA34wN9KxMmUCAGBI0InI/QLI=;
 b=NHcYCvi8cOCtCeYa39bHjE4TC+H2l99wZEY+6z0CqTrxtIqezE2eIM/vB25mdG0VFC4U/u
 kVNU0MD6s+45MDgi46Gj2EaPaqXu5Hvy7+YYWUaB1sj4RxmtoyXZA7vssMKuTdMDiaHiQg
 xLEkemPjHU1ypSLwRGZHVzwJyFe7hfY=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-371-QpREO-rQN2aZBUini0OhOg-1; Thu, 28 Apr 2022 17:48:16 -0400
X-MC-Unique: QpREO-rQN2aZBUini0OhOg-1
Received: by mail-io1-f70.google.com with SMTP id
 k3-20020a6bba03000000b00657cc832f3aso670938iof.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Apr 2022 14:48:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=1SdrNUtS00bHB3h5RBXA34wN9KxMmUCAGBI0InI/QLI=;
 b=UQ0HWUCN4R+djONYE8sxoeXixQIRGnM3Z/dhdTdGA6eoiGRQi0/1XZe6b98P9ph+h9
 zrEXNK/yfih+T9zkimfSh3uq6Q65HXtqyNJF26sbR6LT6zvkQ5ljiFgX8kUCnnZEHN3R
 oC0K9ghq0xi+5FOD+d+pxPPiiJ3LoHWXCAu5xR4sNw3R/6j8E6NizaE1MTckcF6Q749m
 tvc6idCu/4ji8EcJHMRm3M4kgluIa63EVXUS3dY88wF4HzpyJPnNkI7CCytUl03ZL2M6
 Sfki2hD2+ipgYOvYzJHys1DpPb/lDTLV7wkrgt5j1lm0l9XegSoxR8kMBWhz9DJhYgbk
 N3wg==
X-Gm-Message-State: AOAM532xQLnT1TW5sqDgLCZHbxMH4OYF92bH9t1VQvTaPtoIhXPtP7T3
 A1JKB+i1npyUEoh6ZKcQucxO3ctT7Div3Nc9HSX6zSRG2IXoRWk63PBuPMzBOY3WPhz7M/50JXw
 PfvOTebFVZ7YK8DPJHK5rTz3P8OZp
X-Received: by 2002:a05:6638:345b:b0:32b:171c:e98a with SMTP id
 q27-20020a056638345b00b0032b171ce98amr4549691jav.157.1651182495331; 
 Thu, 28 Apr 2022 14:48:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyjWEjABWS84Q9IEOknOfcwKa7uQkrtX6It6lUsltV6rvcUb5+kUzsUYdaq615uXDOqxRj+Dg==
X-Received: by 2002:a05:6638:345b:b0:32b:171c:e98a with SMTP id
 q27-20020a056638345b00b0032b171ce98amr4549684jav.157.1651182495127; 
 Thu, 28 Apr 2022 14:48:15 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 v18-20020a056e0213d200b002cbed258dcfsm42754ilj.0.2022.04.28.14.48.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Apr 2022 14:48:14 -0700 (PDT)
Date: Thu, 28 Apr 2022 15:48:13 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20220428154813.7cef50d0.alex.williamson@redhat.com>
In-Reply-To: <20220428153558.4b13fa27.alex.williamson@redhat.com>
References: <c5cf6773-e7a2-8ba8-4cde-0bb14007bc6b@intel.com>
 <87zgk8tf3l.fsf@intel.com>
 <a0800c9b-71da-1cad-1dd4-78c0910ac266@intel.com>
 <20220426115258.GJ2125828@nvidia.com>
 <20220428153558.4b13fa27.alex.williamson@redhat.com>
Organization: Red Hat
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PULL] gvt-next
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 28 Apr 2022 15:35:58 -0600
Alex Williamson <alex.williamson@redhat.com> wrote:

> On Tue, 26 Apr 2022 08:52:58 -0300
> Jason Gunthorpe <jgg@nvidia.com> wrote:
> 
> > On Tue, Apr 26, 2022 at 08:42:25AM +0000, Wang, Zhi A wrote:  
> > > On 4/26/22 8:37 AM, Jani Nikula wrote:    
> > > > On Tue, 26 Apr 2022, "Wang, Zhi A" <zhi.a.wang@intel.com> wrote:    
> > > >> Hi folks:
> > > >>
> > > >> Here is the pull of gvt-next which fixs the compilation error when i915 debug
> > > >> is open after the GVT-g refactor patches.
> > > >>
> > > >> Thanks so much for the efforts.    
> > > > 
> > > > Pulled, thanks.
> > > > 
> > > > BR,
> > > > Jani.
> > > >     
> > > Thanks, looks good now. :)    
> > 
> > Great! Thanks everyone!
> > 
> > Alex, can you pull this to VFIO now too? The top commit should be:  
> 
> I see a gvt-next-2022-04-29 tag adding the following fixes:
> 
> 419f8299ddad i915/gvt: Fix NULL pointer dereference in init_mmio_block_handlers
> 5b95b9d58fb0 drm/i915/gvt: Fix the compiling error when CONFIG_DRM_I915_DEBUG_RUNTIME_PM=n
> fa630c304b93 drm/i915/gvt: Make intel_gvt_match_device() static
> 
> I'm expecting that's my new merge target once a pull request is
> completed for that.  Please keep me cc'd.  Thanks,

Oops, I see the new pull request for this tag came in while I was
writing this.  I'll keep an eye for it to be merged.  Thanks,

Alex

> > commit 5e9ae5c47052e28a31fb4f55a6e735c28d4c3948
> > Author: Zhi Wang <zhi.wang.linux@gmail.com>
> > Date:   Mon Apr 25 18:03:31 2022 -0400
> > 
> >     drm/i915/gvt: Add missing symbol export.
> >     
> >     When CONFIG_DRM_I915_DEBUG_RUNTIME and CONFIG_DRM_I915_DEBUG_PM
> >     are enabled, two more extra symols in i915 are required to be
> >     exported.
> >     
> >     Cc: Jani Nikula <jani.nikula@intel.com>
> >     Signed-off-by: Zhi Wang <zhi.a.wang@intel.com>
> >     Link: http://patchwork.freedesktop.org/patch/msgid/20220425220331.24865-1-zhi.a.wang@intel.com
> >     Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> > 
> > Which was picked up here:
> > 
> > https://cgit.freedesktop.org/drm-intel/commit/?h=drm-intel-next&id=f08699ec5bd924be4c9572e21fd0a806d3fb34c2
> > 
> > It will have these commits:
> > 
> > 5e9ae5c47052e2 drm/i915/gvt: Add missing symbol export.
> > 2917f53113be3b vfio/mdev: Remove mdev drvdata
> > 2aa72ec97ce9eb vfio/mdev: Use the driver core to create the 'remove' file
> > 6b42f491e17ce1 vfio/mdev: Remove mdev_parent_ops
> > e6486939d8ea22 vfio/mdev: Remove mdev_parent_ops dev_attr_groups
> > 6c7f98b334a32d vfio/mdev: Remove vfio_mdev.c
> > cba619cb0d4d66 drm/i915/gvt: merge gvt.c into kvmgvt.c
> > 978cf586ac35f3 drm/i915/gvt: convert to use vfio_register_emulated_iommu_dev
> > 0e09f4066ad11b drm/i915/gvt: remove kvmgt_guest_{init,exit}
> > 7f11e6893ff01b drm/i915/gvt: pass a struct intel_vgpu to the vfio read/write helpers
> > 4456641232e2c1 drm/i915/gvt: streamline intel_vgpu_create
> > 37e4bdbd5bad71 drm/i915/gvt: remove the extra vfio_device refcounting for dmabufs
> > 5f8f3fe67cd908 drm/i915/gvt: remove struct intel_gvt_mpt
> > 91879bbaf8890f drm/i915/gvt: devirtualize dma_pin_guest_page
> > 8398eee85fd009 drm/i915/gvt: devirtualize ->dma_{,un}map_guest_page
> > 4c2baaaf764bfb drm/i915/gvt: devirtualize ->{enable,disable}_page_track
> > 4050dab5981cd4 drm/i915/gvt: devirtualize ->gfn_to_mfn
> > bd73b4b193d450 drm/i915/gvt: devirtualize ->is_valid_gfn
> > b3bece34956f86 drm/i915/gvt: devirtualize ->inject_msi
> > 4c705ad0d784fd drm/i915/gvt: devirtualize ->detach_vgpu
> > f9399b0e4a9555 drm/i915/gvt: devirtualize ->set_edid and ->set_opregion
> > fe902f0ce686e8 drm/i915/gvt: devirtualize ->{get,put}_vfio_device
> > e3d7640eeeb306 drm/i915/gvt: devirtualize ->{read,write}_gpa
> > 3c340d05868d98 drm/i915/gvt: remove vgpu->handle
> > 10ddb96295f3bd drm/i915/gvt: merge struct kvmgt_guest_info into strut intel_vgpu
> > 62980cacc37f58 drm/i915/gvt: merge struct kvmgt_vdev into struct intel_vgpu
> > 3cbac24c2cdbfe drm/i915/gvt: remove the unused from_virt_to_mfn op
> > c977092a997708 drm/i915/gvt: remove the map_gfn_to_mfn and set_trap_area ops
> > 675e5c4a33e20c drm/i915/gvt: remove intel_gvt_ops
> > 8b750bf744181c drm/i915/gvt: move the gvt code into kvmgt.ko
> > f49fc35799fa63 drm/i915/gvt: rename intel_vgpu_ops to intel_vgpu_mdev_ops
> > 367748066eeb37 drm/i915/gvt: remove enum hypervisor_type
> > a85749e12d66c2 drm/i915/gvt: remove module refcounting in intel_gvt_{,un}register_hypervisor
> > 7f0cf30187cdb1 drm/i915/gvt: better align the Makefile with i915 Makefile
> > de5d437ae8696a drm/i915/gvt: fix trace TRACE_INCLUDE_PATH
> > 1672991412dfef i915/gvt: Use the initial HW state snapshot saved in i915
> > 66e7a8063381cb i915/gvt: Save the initial HW state snapshot in i915
> > e0f74ed4634d6d i915/gvt: Separate the MMIO tracking table from GVT-g
> > 
> > Thanks,
> > Jason
> >   
> 

