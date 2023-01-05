Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D00165F673
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 23:09:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD6F10E365;
	Thu,  5 Jan 2023 22:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C95A110E29A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 22:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1672956577;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FHRon4iazglsqJx0za5dkKZ1ECmTBS5D3uCSiao/wBQ=;
 b=UfaX5UpseIUGtu5RP8qjR0f7Bbm2PeiP0jBhECU5KHdaWTu3IX71womENc+lE+Nyw1Xxls
 c1K8PY9VSMYC6Xv1tVD9b024nokR5ZGhT/AOJlfDQrVw4XfWfsZOo7yZ9V2xzlu44PTz7j
 QFzugBAq4FWJIuLJ5R8HBNNzNZjJUzM=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-440-lFYCfo0LMBaT3_ZPUdgCRg-1; Thu, 05 Jan 2023 17:09:33 -0500
X-MC-Unique: lFYCfo0LMBaT3_ZPUdgCRg-1
Received: by mail-io1-f72.google.com with SMTP id
 o22-20020a6b5a16000000b006e2d564944aso11406756iob.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Jan 2023 14:09:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FHRon4iazglsqJx0za5dkKZ1ECmTBS5D3uCSiao/wBQ=;
 b=kKV1s+zwyks+7OcxKsC/mZyG0HORSOJ3rRqHoaJyKp4sb2lPK5OekpfbUU+51W/mvQ
 ryPXJXQy0wL7cVJKMXP35Fyl0vC3wiqbfKSzn5sElNqufODcZlOtA6M1Lrvw0osA6aEa
 O4697YM3w7LrgHi+h1A4QA4sfaJZPTZEe6wMK7NGt6/PXL0y9OwdYgDKp9w4YWSMsPif
 0vIF1FWf3BtbKVgtnkvSbtYqal7AS56P1KBEom/pSLYG9moqPmumsW0bTzWnlCP13Q9k
 WwG8p+RYOeHEg0RHdWkasBTqwJ4yR/TaekSVSZOwDGDWb6Ai0VBbMhiufAuxxOocBeGt
 PKQw==
X-Gm-Message-State: AFqh2kr5yso46ysX/5CRit5begndkr+ttSAxFu9vQ8vDcv8Q1+rVTO5F
 qfYqqK/CxmWgv8zqsRb863lMLUimanRLb1PtNZ7yFBmm6EffHpVsfEnsjgRoFXaG8wLwkBYpDrh
 7KlG34Yc8mX8/89SIZfnj1JNKo8Mi
X-Received: by 2002:a5e:a609:0:b0:6e4:2893:2b33 with SMTP id
 q9-20020a5ea609000000b006e428932b33mr32962727ioi.14.1672956573206; 
 Thu, 05 Jan 2023 14:09:33 -0800 (PST)
X-Google-Smtp-Source: AMrXdXs5yKX/wdLm9HEyg87onxVqgfS0N/eR1/PgmgN9uAH7OlTthfhrG0MhtGAnQyZQ6XYAeeVAMA==
X-Received: by 2002:a5e:a609:0:b0:6e4:2893:2b33 with SMTP id
 q9-20020a5ea609000000b006e428932b33mr32962706ioi.14.1672956572929; 
 Thu, 05 Jan 2023 14:09:32 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 w12-20020a5e970c000000b006e3170eeee4sm13692498ioj.6.2023.01.05.14.09.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Jan 2023 14:09:32 -0800 (PST)
Date: Thu, 5 Jan 2023 15:09:30 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Matthew Rosato <mjrosato@linux.ibm.com>
Message-ID: <20230105150930.6ee65182.alex.williamson@redhat.com>
In-Reply-To: <20220519183311.582380-2-mjrosato@linux.ibm.com>
References: <20220519183311.582380-1-mjrosato@linux.ibm.com>
 <20220519183311.582380-2-mjrosato@linux.ibm.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 1/1] vfio: remove
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
 jgg@nvidia.com, borntraeger@linux.ibm.com, intel-gvt-dev@lists.freedesktop.org,
 Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 19 May 2022 14:33:11 -0400
Matthew Rosato <mjrosato@linux.ibm.com> wrote:

> Rather than relying on a notifier for associating the KVM with
> the group, let's assume that the association has already been
> made prior to device_open.  The first time a device is opened
> associate the group KVM with the device.
> 
> This fixes a user-triggerable oops in GVT.

It seems this has traded an oops for a deadlock, which still exists
today in both GVT-g and vfio-ap.  These are the only vfio drivers that
care about kvm, so they make use of kvm_{get,put}_kvm(), where the
latter is called by their .close_device() callbacks.

.close_device() is called holding the group->group_lock, or at the time
of this commit group->group_rwsem.  The remaining call chain looks like
this:

kvm_put_kvm
 -> kvm_destroy_vm
  -> kvm_destroy_devices
   -> kvm_vfio_destroy
    -> kvm_vfio_file_set_kvm
     -> vfio_file_set_kvm
      -> group->group_lock/group_rwsem

Any suggestions for a fix?  Thanks,

Alex

