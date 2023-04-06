Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF146D923C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C72110EB3F;
	Thu,  6 Apr 2023 09:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D373110EB40
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680771948;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=2ykhPQtv509Jd5lq9iZLBJbGhGg0HZUUvY7XmspuQb0=;
 b=ZE/FgLys29Sf6YJEe5fnjWP8+wZ7SNWpe2MIt8a0qc79K/ylqtZ43e78q1VVV4sGEXDs8b
 Qf5gwRt7+GN9aS5XIB7Q1oVx4ln4/i2YyOPQaryU06o4PQBw3jeR3lBsjPFMmj32+rXwjm
 WdD+AQ3ZgkXJ1QcrE+skVl0tzXQekgk=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-428-cgoSGk-vOgqXs9bn5p1OIw-1; Thu, 06 Apr 2023 05:05:46 -0400
X-MC-Unique: cgoSGk-vOgqXs9bn5p1OIw-1
Received: by mail-wr1-f70.google.com with SMTP id
 c3-20020adfa303000000b002d5737d3835so4786616wrb.21
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Apr 2023 02:05:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680771945;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=2ykhPQtv509Jd5lq9iZLBJbGhGg0HZUUvY7XmspuQb0=;
 b=jHq7p0Fkdidak8/woHgExxWRKL4zbGl7MacbSipWbonCPmyWJomdHNYqQY7CsQDUXk
 bRBzqJOZ3JzYJe/1tKzuas6AYvhG0LuhH77MAK3HMqro9yZzsCRjHdiHjZo/x3FghZRg
 FVJze2g0Av4CCGDG2mFR1Cyxh9xtZdD6A4mkM+Yo3zhPw8YZdXVgXkn6TzSoJeBg1fnN
 XHgpPNWxvJXgnRwAXjTPOLr2mTO8qwNk8TdrSktfXAJzV10FxF90CoMAu9ZjWpen+Tkc
 dYbFzmFUcXX9yKQ9GwGrfo47sPg0/VWM2LRFJX5j4ThTYIPa8MQLna0HO7qJE5aEX/CJ
 CytA==
X-Gm-Message-State: AAQBX9dfnkAT6YLA4dEHTCmwZ8GAELoBJ54rBcoDxdI6al1GY9AjdKCt
 4ypLgpqrfRilEFcHSCj/QuYEoRqghvr7HFKlD4K75MAqQ96kV4PQkTSnNjlRNM6pyEGAcmgCrYO
 Mop0jmRjFEl3q0piqZ1Njm4VjNLop
X-Received: by 2002:a05:600c:2183:b0:3f0:3d45:9aec with SMTP id
 e3-20020a05600c218300b003f03d459aecmr6518420wme.4.1680771945723; 
 Thu, 06 Apr 2023 02:05:45 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZrvGmFgJCSlceaf+ANiMJN21tX2PikZ0ugl5e+iKVyQwx4n6bhGi4e4RDjBd8NE1G43zH8AA==
X-Received: by 2002:a05:600c:2183:b0:3f0:3d45:9aec with SMTP id
 e3-20020a05600c218300b003f03d459aecmr6518405wme.4.1680771945447; 
 Thu, 06 Apr 2023 02:05:45 -0700 (PDT)
Received: from localhost ([84.78.248.32]) by smtp.gmail.com with ESMTPSA id
 q31-20020a05600c331f00b003ee610d1ce9sm4621096wmp.34.2023.04.06.02.05.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Apr 2023 02:05:45 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter
 <daniel.vetter@ffwll.ch>, DRI Development <dri-devel@lists.freedesktop.org>
In-Reply-To: <f5f9fe8e-9df2-e201-b7f3-be717fa4bdb8@suse.de>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <66f9196e-df2b-19ce-e2ec-15f7a81d63c7@suse.de>
 <87ttxt8kxr.fsf@minerva.mail-host-address-is-not-set>
 <f5f9fe8e-9df2-e201-b7f3-be717fa4bdb8@suse.de>
Date: Thu, 06 Apr 2023 11:05:44 +0200
Message-ID: <87jzyp8jo7.fsf@minerva.mail-host-address-is-not-set>
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thomas Zimmermann <tzimmermann@suse.de> writes:

[...]

>>> +EXPORT_SYMBOL(__aperture_remove_legacy_vga_devices);
>> 
>> I would just call this symbol aperture_remove_legacy_vga_devices() as
>> mentioned, the fact that aperture_remove_conflicting_pci_devices() use it
>> internally is an implementation detail IMO. But it's an exported symbol so
>> the naming should be consistent.
>
> That prefix __ is supposed to indicate that it's not a all-in-one 
> solution. Most of all, it doesn't do sysfb_disable(). The helper is 
> meant to be used as part of a larger function. I tried to outline this 
> in the comment, where I say that drivers should first aquire framebuffer 
> ownership and then call this helper. If naming isn't a showstopper, I'd 
> like to keep the underscores.
>

Sure, I see that we have other symbols exported in DRM that have a __
prefix in their name. So maybe I am the one who was confused on the
meaning of it.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

