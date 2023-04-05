Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8CA6D851C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 19:44:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69F3110E1E2;
	Wed,  5 Apr 2023 17:44:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C28710E1E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 17:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680716645;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=1+OOQA9PZQd4PUwJ9BuG68QxiObq/aqDA99CcsUtChQ=;
 b=VEMMGFSeaAa3awyM5TyXFIORvqQDW9ISklIvj+OCddGT6TTqawV/p2XoliwjCSKi/sPPt3
 Xr1yXtdzDbXL9cw07/7I9xCHu4Fh3oQd/aJZdTggipILVlRtBoisDUkWaQeRuw+5gx5apX
 KegnMQ1GC/wPaHIVyEpm32or2nMS1VU=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-354-Zk-kM6GRP_GeIKD7ctmKeA-1; Wed, 05 Apr 2023 13:44:01 -0400
X-MC-Unique: Zk-kM6GRP_GeIKD7ctmKeA-1
Received: by mail-wm1-f71.google.com with SMTP id
 bg33-20020a05600c3ca100b003ef6d684105so15129897wmb.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 10:44:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680716639;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1+OOQA9PZQd4PUwJ9BuG68QxiObq/aqDA99CcsUtChQ=;
 b=IrA8GcMKv+UkhYmI12L8v3PidGqcut6hh1symHTfdzBriI/onaW9Q/uM7Sb3IfDYBb
 UaIZiyi/iC9l5HY012zYEEemgr52Pb4uHPrVnXAWrnI5XpTm1syR/bkO0GBN+0/hkogT
 IcXQJpzxmSZsqa2V7EGowBD4O3mxYi5irzff2V0GfVVdj3wIET+hsEN0fjmSwMUqOeea
 /Ykyr92LgIG2x7+YW9WhU3vXD/eGP5peWNAQc7U1kQ21BcDtS2DvMgB7SGK5QyO0lPFr
 SML2p1CfePhD0taxvOQA2M0MC6E9pXkzwbj0ctU3mnpT8ZwldPPsqLTZFiADsMLcedhS
 V5oQ==
X-Gm-Message-State: AAQBX9esUPzVmceyyAFKKiRAlCU1gL2z+UFC2sZrpuv5MXmD/ICFJ4Q2
 TRcCcS9MqFbntylp03Ps2NaS/CugGsonD4jx+Jkrvr3vunCMHvpYLyiCOr8FTgS31roQqtKDpGE
 sjfEDXxe8M6ttqtksKT/nEH+c5EftTJaOESp9
X-Received: by 2002:a5d:6687:0:b0:2cf:6089:2408 with SMTP id
 l7-20020a5d6687000000b002cf60892408mr2387269wru.0.1680716639463; 
 Wed, 05 Apr 2023 10:43:59 -0700 (PDT)
X-Google-Smtp-Source: AKy350bWGWG/CFxOJpT4iJdtG1Z00et7x2nuFjcUkxrAgqJ6h7Q++2YgYaFAieGG1eAWq6oDMkXL4w==
X-Received: by 2002:a5d:6687:0:b0:2cf:6089:2408 with SMTP id
 l7-20020a5d6687000000b002cf60892408mr2387257wru.0.1680716639182; 
 Wed, 05 Apr 2023 10:43:59 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 o18-20020adfe812000000b002daf0b52598sm15610073wrm.18.2023.04.05.10.43.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 10:43:58 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <CAKMK7uGbPWE5mg2+ojxxEdfknDzmjDr+5n_y-t-nYNzDFE21EA@mail.gmail.com>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <5556a755-01a1-3620-8693-0fc69c6f627d@suse.de>
 <3813a2f5-c74a-4760-34ce-1c88f187c91c@suse.de>
 <ZC04hoHywz0ySzAW@phenom.ffwll.local>
 <3fd03c4c-3be6-e56b-faec-bd67a58cda09@suse.de>
 <ZC1BlNCbXPlmAhj0@phenom.ffwll.local>
 <eee11545-2a78-4556-be82-5178ea09d0d8@suse.de>
 <877cuqd1f8.fsf@minerva.mail-host-address-is-not-set>
 <ZC11J3og4Kc9ta6m@phenom.ffwll.local>
 <242ab20f-affe-b55a-6068-5ea634705cf6@suse.de>
 <ZC2beu/9inolwIlr@phenom.ffwll.local>
 <87bkk29smu.fsf@minerva.mail-host-address-is-not-set>
 <CAKMK7uGbPWE5mg2+ojxxEdfknDzmjDr+5n_y-t-nYNzDFE21EA@mail.gmail.com>
Date: Wed, 05 Apr 2023 19:43:58 +0200
Message-ID: <875yaa9qch.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/gma500: Use
 drm_aperture_remove_conflicting_pci_framebuffers
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel@ffwll.ch> writes:

> On Wed, 5 Apr 2023 at 18:54, Javier Martinez Canillas
> <javierm@redhat.com> wrote:
>>
>> Daniel Vetter <daniel@ffwll.ch> writes:

[...]

>>
>> Yeah, agreed that if vga_remove_vgacon() isn't enough and another helper
>> is needed then starts to get a little silly. Maybe one option is to add a
>> 3rd param to aperture_remove_conflicting_pci_devices() and skip the logic
>> to iterate over PCI bars and call aperture_remove_conflicting_devices() ?
>
> The thing I don't get: Why does this matter for gma500 and not any of
> the other pci devices? Look at your gpu, realize there's a lot more

Yes, I don't know why gma500 is special in that sense but I'm not familiar
with that hardware to have an opinion on this.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

