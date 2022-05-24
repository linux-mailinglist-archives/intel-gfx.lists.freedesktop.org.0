Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 693C2532E93
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 18:07:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EB7C10E277;
	Tue, 24 May 2022 16:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D3510E277
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 16:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1653408473;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AjP5JPsp4sTeptQO7etKphezL1GL7XatlC7yllc+qq4=;
 b=YYHo6JPzLGip/zkzRKXd3un8eklLqA+u4PQ0G5pcNG+Wrc0MTPOXx33YBliU2TcdtMta8I
 Tu1aAh2PsWC+J8Mx8ogFWEHOVXTKgjXkL1Ou9udD4K2HOLkmJQah8hIspLPOp9R+C44BD6
 BWhMr/00Hr8uLE+834GahK+4dVnJtQU=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-650-oiYbI32pNL-WNCBzI3Q6HA-1; Tue, 24 May 2022 12:07:48 -0400
X-MC-Unique: oiYbI32pNL-WNCBzI3Q6HA-1
Received: by mail-il1-f199.google.com with SMTP id
 q6-20020a056e0215c600b002c2c4091914so11042034ilu.14
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 May 2022 09:07:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=AjP5JPsp4sTeptQO7etKphezL1GL7XatlC7yllc+qq4=;
 b=PAAZd6vUI2TG8a3arH9lILMjxHQo2e5/QGMmL1oIQinJFvXFFPkf9zzcxWLLl+bINW
 TjKr1avCGMF/xBwsa5bOaoj0c5Br1YifeaT252HPwM3vABpGgGOud4HSlQhNfjPpBbCz
 yh5arxh7N8OYbxHtdj1Krstf0U9w2MeXCFmTcVf8VQ+dGEheh6s0G6c01QbsTkXt/+9B
 VK4TJgHEkGFYqOGvWcTvYF/WIaAn3XM2TJCx3hMkkCWFMlz7XT22Tx8OEyZV+GUqY6fV
 BqYEhoKk3aEliQtqhwQxietGabOdCnbFwuocg760Wy85lJZb5+s+JN/+qOpU0PzEMd7+
 ug8w==
X-Gm-Message-State: AOAM533mr2e712erpQpA17c2eYfgGTZjAmvz1iRhrhWme2xDYeDUPAFH
 WUEtD7E4YYycQrm8179HumPi5yUmFzj3vfhJxYO/tKrREiX4AVvntUzu3cgAaBsRTsOcGQYaiEr
 o/mqCfPKWV/LJdv8DDh7GQPMCEK+Y
X-Received: by 2002:a05:6e02:170a:b0:2d1:3f8b:ad75 with SMTP id
 u10-20020a056e02170a00b002d13f8bad75mr13606332ill.135.1653408467263; 
 Tue, 24 May 2022 09:07:47 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyDXCFqahhgZhF13j/01JuWAI9TkKwryMIBDz+Ojod8ivP2jLD7vfDSwtL6uq0vKB4eb0olaw==
X-Received: by 2002:a05:6e02:170a:b0:2d1:3f8b:ad75 with SMTP id
 u10-20020a056e02170a00b002d13f8bad75mr13606312ill.135.1653408467062; 
 Tue, 24 May 2022 09:07:47 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 m15-20020a056e021c2f00b002cde6e352d5sm4628333ilh.31.2022.05.24.09.07.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 09:07:46 -0700 (PDT)
Date: Tue, 24 May 2022 10:07:45 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Matthew Rosato <mjrosato@linux.ibm.com>
Message-ID: <20220524100745.006a3635.alex.williamson@redhat.com>
In-Reply-To: <20220519183311.582380-1-mjrosato@linux.ibm.com>
References: <20220519183311.582380-1-mjrosato@linux.ibm.com>
Organization: Red Hat
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 0/1] vfio: remove
 VFIO_GROUP_NOTIFY_SET_KVM
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
Cc: jjherne@linux.ibm.com, akrowiak@linux.ibm.com, kvm@vger.kernel.org,
 hch@infradead.org, linux-s390@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, pasic@linux.ibm.com,
 jgg@nvidia.com, borntraeger@linux.ibm.com, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 19 May 2022 14:33:10 -0400
Matthew Rosato <mjrosato@linux.ibm.com> wrote:

> As discussed in this thread:
> 
> https://lore.kernel.org/kvm/20220516172734.GE1343366@nvidia.com/
> 
> Let's remove VFIO_GROUP_NOTIFY_SET_KVM and instead assume the association
> has already been established prior to device_open.  For the types today
> that need a KVM (GVT, vfio-ap) these will fail if a KVM is not found.
> Looking ahead, vfio-pci-zdev will optionally want the KVM association
> (enable hardware assists) but it will not be a hard requirement (still
> want to allow other, non-KVM userspace usage). 
> 
> This is built on top of vfio-next and tested with s390x-pci
> (zdev-kvm series) and vfio-ap (GVT changes are compile-tested only)
> 
> Changes for v3:
> - merge branches under if (device->open_count == 1) (Kevin)
> - move device->open_count-- out from group_rwsem (Kevin)
> - drop null KVM check (Christoph)
> - remove extra kvm_{get,put}_kvm from vfio_ap_ops, it was already getting
>   a reference (Jason)
> - Add comment about kvm reference in vfio.h (Jason)
> - Return -EINVAL if !kvm for vfio-ap (Tony)
> 
> Changes for v2:
> - gvt no longer needs release_work, get rid of it (Christoph)
> - a few compile fixes for gvt
> - update commit to mention fixes gvt oops (Jason)
> - s/down_write/down_read/ in a few spots (Jason)
> - avoid kvm build dependency by holding group read lock over device
>   open/close and put the onus on the driver to obtain a reference if
>   it will actually use the kvm pointer.  Document the requirement,
>   use lockdep_assert to ensure lock is held during register_notifer;
>   today all callers are from driver open_device. 
> 
> Matthew Rosato (1):
>   vfio: remove VFIO_GROUP_NOTIFY_SET_KVM
> 
>  drivers/gpu/drm/i915/gvt/gtt.c        |  4 +-
>  drivers/gpu/drm/i915/gvt/gvt.h        |  3 -
>  drivers/gpu/drm/i915/gvt/kvmgt.c      | 82 ++++++--------------------
>  drivers/s390/crypto/vfio_ap_ops.c     | 35 ++---------
>  drivers/s390/crypto/vfio_ap_private.h |  3 -
>  drivers/vfio/vfio.c                   | 83 ++++++++++-----------------
>  include/linux/vfio.h                  |  6 +-
>  7 files changed, 57 insertions(+), 159 deletions(-)

Applied to vfio next branch for v5.19.  Thanks,

Alex

