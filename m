Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDAC6D8426
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 18:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659EF10E189;
	Wed,  5 Apr 2023 16:54:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6E310E189
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 16:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680713679;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=7oq6EGlBnkOylLqaxEYM/Gk/HlPbQ+uLWsUc2iC2TOw=;
 b=MGYs08OSnwpMPC8fu5caxVtG2tX5D7CBOlZ+n20LgaHRbkYHEELOQFolZccAP/81wUYBV2
 FYvdqbMwzZeOPOPtLrNYP0pgrG69L9+ykZvBXx1mO/puL+bsKReoqpub1wCs0nsmWZOwmT
 CM7P7cLlAksl8SEnYu55R/n3lJEo1xU=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-73-71s9lj2PPr-oe3Q-ydz33A-1; Wed, 05 Apr 2023 12:54:37 -0400
X-MC-Unique: 71s9lj2PPr-oe3Q-ydz33A-1
Received: by mail-wr1-f72.google.com with SMTP id
 h18-20020adfa4d2000000b002cea098a651so4520467wrb.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 09:54:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680713676;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7oq6EGlBnkOylLqaxEYM/Gk/HlPbQ+uLWsUc2iC2TOw=;
 b=z02Fgu3ruRqbbpGVj6bXF6brP8cFiVtvnCM6Wlz6qer32FFjmCgDTeJC47fKEg3XIl
 NNf0B6V/96T2J0zZVVW9nChLP4hLFn49DGvv1rMS3RMIXVYLppDm7YNt247qpvbIbiN5
 aSr77qiZXWADp3Y5ZhAKMaTADp06Sh2piYlpVZz0IEs+JKKCQxpAxw2f0y3xmj1xnSuJ
 l2ctOzO5uFKsA2R/8Dws4Pg9/CAWZXEF2xqgFnb9+Zt+16WnD6ccesO0j+bnAL0TKjNu
 Lauz/jWkfrAnaZtS8tNW2EBqaO1IoaZIUiGoaJXxwyRPMUmqKQBuwvZkd6r0LfMU6OFc
 DEOw==
X-Gm-Message-State: AAQBX9fvtPqVmCmcjCKMHIC3nNoSLpRb04k8EEfmJYuMfrhhcqvrxAkr
 I0lKpa/RhJFszyqkmqh07w+M49wJdeukDUF7vjqUYkaCDvmyXJ4dCsNrwZ7bF4B2cbYgwDcVl9f
 E6VtpsXhghCUTcUZiIhXO1rhSLjSq14yTedvW
X-Received: by 2002:a5d:4904:0:b0:2e4:b9a3:4419 with SMTP id
 x4-20020a5d4904000000b002e4b9a34419mr4760600wrq.51.1680713676256; 
 Wed, 05 Apr 2023 09:54:36 -0700 (PDT)
X-Google-Smtp-Source: AKy350YsWV1NZsm9PL9d146nk9+8BMVfIjYv3w+AWqlIEM2c8h5CeLBmJjgyrxOtEe+CW3pyVVa0sQ==
X-Received: by 2002:a5d:4904:0:b0:2e4:b9a3:4419 with SMTP id
 x4-20020a5d4904000000b002e4b9a34419mr4760585wrq.51.1680713675983; 
 Wed, 05 Apr 2023 09:54:35 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 u17-20020adfed51000000b002c6e8af1037sm15332930wro.104.2023.04.05.09.54.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 09:54:34 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel@ffwll.ch>, Thomas Zimmermann <tzimmermann@suse.de>
In-Reply-To: <ZC2beu/9inolwIlr@phenom.ffwll.local>
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
Date: Wed, 05 Apr 2023 18:54:33 +0200
Message-ID: <87bkk29smu.fsf@minerva.mail-host-address-is-not-set>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel@ffwll.ch> writes:

> On Wed, Apr 05, 2023 at 04:32:19PM +0200, Thomas Zimmermann wrote:

[...]

>> > > > 	/*
>> > > > 	 * WARNING: Apparently we must kick fbdev drivers before vgacon,
>> > > > 	 * otherwise the vga fbdev driver falls over.
>> > > > 	 */
>> > > > 	ret = vga_remove_vgacon(pdev);
>> > 
>> > This isn't enough, we also nuke stuff that's mapping the vga fb range.

Ah, also need aperture_detach_devices(VGA_FB_PHYS_BASE, VGA_FB_PHYS_SIZE) then.

[...]

>> int aperture_remove_legacy_vga_devices(struct pci_dev *pdev)
>> {
>> 	aperture_detach_devices(VGA_FB_PHYS_BASE, VGA_FB_PHYS_SIZE);
>> 
>> 	return vga_remove_vgacon(pdev);
>> }
>> 
>> And that can be called from gma500 and the pci aperture helper.
>
> But you still pass a pci_dev to that helper. Which just doesn't make any
> sense to me (assuming your entire point is that this isn't just a normal
> pci device but some special legacy vga thing), but if we go with (void)
> then there's more refactoring to do because the vga_remove_vgacon also
> wants a pdev.
>
> All so that we don't call aperture_detach_devices() on a bunch of pci
> bars, which apparently is not problem for any other driver, but absolutely
> is a huge problem for gma500 somehow.
>
> I don't understand why.
>

Yeah, agreed that if vga_remove_vgacon() isn't enough and another helper
is needed then starts to get a little silly. Maybe one option is to add a
3rd param to aperture_remove_conflicting_pci_devices() and skip the logic
to iterate over PCI bars and call aperture_remove_conflicting_devices() ?

> Consider this me throwing in the towel. If you&Javier are convinced this
> makes sense please type it up and merge it, but I'm not going to type
> something that just doesn't make sense to me.

Honestly, I would just go with the double drm_aperture_remove_*() helper
calls (your original patch) unless that causes real issues. There is no
point on blocking all your series just for this IMO.

Then latter if Thomas has strong opinions can send a follow-up patch for
the gma500 driver and the aperture helpers.

> -Daniel
>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

