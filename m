Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6344B969B46
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 13:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0358910E47B;
	Tue,  3 Sep 2024 11:13:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="YpgCCYut";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A27410E47B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 11:13:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1725361993;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eNaLJCzc8McH6yKUfj3b0fV3lUF+xcAOFhE3bUUfh6Y=;
 b=YpgCCYut7DrJpuTEA/VQVrNVu5cw3suN0TSt9dEsKm2lVjV6ecuMEPA+zgoShhzeufkXpT
 UHeZnoZ2xEtJp/8zgLFtfG6nIgZExvuc1jpqskm+NDc76h8PCmNxDEcAd5NdY0A3x41Q5J
 TM1VOLLkOr+2eUCJssBSGK+ClSzQLOU=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-128-el5i5vMxPAKBDSWHCxjCVw-1; Tue, 03 Sep 2024 07:13:12 -0400
X-MC-Unique: el5i5vMxPAKBDSWHCxjCVw-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-374b385b146so1943040f8f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 04:13:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725361991; x=1725966791;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=eNaLJCzc8McH6yKUfj3b0fV3lUF+xcAOFhE3bUUfh6Y=;
 b=cDUphZ4FJXHcsSGu5CkxfIXQvqXHk0xfnAoOKLVbZNMwaJWm2+oW77dUrTAryJBNaW
 KXynie7cQtsht09vL4NqP0qBVBXO28eCGSuh0O+4KGc5aPBNdDQ/Q0wUIfyksvh0QKgY
 XJnyC4q7HH/NdviRlsQAL+4+SPq1LQtgxSvxvILh7aY+bfl0dj4yAxsrIbq/GPjwCZFN
 g/jhB9ZfhZh3uDUXHZaMj1Ev+JizxASefqgLli204oTBOyR8VT8gAI00AWAIimS+nrn+
 C2mxyShARM1OPr6npJNcCh3bxdSywkBR28PZXHwOmmbXIzsYx1987Vr2p2C6cwqDfT2j
 0NLg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzbQ3bZnj5bOGMS4+2lMOThucsoG7+Kbqn31mqRcNi+X3riZGrrDkJ0I6hqTJZmkup/plLQIf2S28=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzt6IXWOgBIuFKj2LDYwBYGI6FRCbmJdGv0RiTUip+fJ22/QGWL
 JdqaqYLIUTs9kfSQIuOHDVSEQq7Yppg9i7szPR5miz5XWQmQ13J5spzUz7NpvsFqLPs8yukL8zp
 R1EhOYnkZD8oUwd1p6y+N+1e2e7EdVxJK8Yeq6h//Ii011LdpJUgz1MP4+82z5tO+eQ==
X-Received: by 2002:adf:e042:0:b0:374:c8a0:ca8c with SMTP id
 ffacd0b85a97d-376dea47175mr311002f8f.43.1725361990986; 
 Tue, 03 Sep 2024 04:13:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErKuUaZwDVmhsR7doTbtSmBnmM7k053hpSErI0ylM4sAqourCJsbqDohSz+3dvc+wiabrelQ==
X-Received: by 2002:adf:e042:0:b0:374:c8a0:ca8c with SMTP id
 ffacd0b85a97d-376dea47175mr310977f8f.43.1725361990502; 
 Tue, 03 Sep 2024 04:13:10 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42bb6df1066sm167087945e9.18.2024.09.03.04.13.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2024 04:13:10 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, jfalempe@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Alexey Brodkin <abrodkin@synopsys.com>
Subject: Re: [PATCH v3 06/81] drm/arcgpu: Run DRM default client setup
In-Reply-To: <20240830084456.77630-7-tzimmermann@suse.de>
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-7-tzimmermann@suse.de>
Date: Tue, 03 Sep 2024 13:13:09 +0200
Message-ID: <87ed61gfcq.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
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

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Call drm_client_setup_with_fourcc() to run the kernel's default client
> setup for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
>
> v2:
> - use drm_client_setup_with_fourcc()
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Acked-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

