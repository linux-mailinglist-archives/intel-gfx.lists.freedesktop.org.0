Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1BC3976C2
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 17:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A31566E970;
	Tue,  1 Jun 2021 15:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com
 [IPv6:2607:f8b0:4864:20::e2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C73C96E970;
 Tue,  1 Jun 2021 15:32:07 +0000 (UTC)
Received: by mail-vs1-xe2b.google.com with SMTP id x2so7948741vss.3;
 Tue, 01 Jun 2021 08:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d/JiYYhFUO04t8CGV6jIQdwSg5PSkQH6BUVjJ3YfIh4=;
 b=FJi/AQpbfzIFBLaSRITA+QlCyoO2xWP8WhJoU4ft2ynZE/Dbk7qnDUfXx11UyG5xe5
 Y6ImEWjTWo/s4dpEgJu7iT8ZbBBGGzbYS6d/qI51ArFbvkvt2LDL3b4darSWy+U/xGI4
 WjSA61mqSVT2KjgEfzE2eiAKnrxntf7QD5ECWq1GcRFMPVns/U22whNi1iJMAnVCxXRS
 TKaip/C+efrj1dPElBxwnsRuV20xEaPwgNMyabyCkRF3E0zHj6rTalt9BmLPIN+U46Qr
 Q20UI3HLBW6bsAT/5xJ09OJl7tzPJNX8R2gWtwjQDyvb+QNsE8PrrM59bZkvC70gwj5C
 rEzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d/JiYYhFUO04t8CGV6jIQdwSg5PSkQH6BUVjJ3YfIh4=;
 b=SPwOBGGiglQBkZ4VAFuw/J3HEMKTYGa/iGbB5uCSnJctWyHmh3WTQfZSHNKFpoklxg
 NrV9VBpc60il7IdBq70UjwfrpUsBZrY3sZnUKGGtMqdH4D2oow2e9S8QluHJ/RNbaKs4
 EsIcdrpR1lx8vA5SA0eykrkQfewc+VklVh3+R5lcPp519GYmIb5wOS9t8g+nNyAf+OSm
 qqoALBdnh1u/xB36iGNcx7EKIBgOgNfvIn+xyQm1GLK5n7cIS4ig8NODQ5ehsO7P5+bm
 pc0YctGLa/+32qjZvNGvt5Kd9daCM46g3GRptMCIjxTuNY4jcmN7qpaU6zVLav2RhYhk
 23NQ==
X-Gm-Message-State: AOAM532Bd5/tfXPCCfAvVhHAcGg6HcD53fs5sRwzTS17xvuWboFHEvxD
 dKRBo/d2FsuFHJmwPN4wEtC9H9k8xtOxcJ5pp4Y=
X-Google-Smtp-Source: ABdhPJygFw5MiS1g73bRd4O7g/mZExW7EW6JfpfcXXtw6r0DVbwtj6PkcKaKP6eU1Ea4ttgCb6bapVSygv6iWUWd0Go=
X-Received: by 2002:a67:878a:: with SMTP id j132mr19228098vsd.18.1622561527002; 
 Tue, 01 Jun 2021 08:32:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210421204804.589962-1-hdegoede@redhat.com>
 <20210421204804.589962-3-hdegoede@redhat.com>
In-Reply-To: <20210421204804.589962-3-hdegoede@redhat.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 1 Jun 2021 16:31:55 +0100
Message-ID: <CACvgo50onXuRvtXySYNHJZshSkmX8ukcMitNJAKC4dEMPTyXYw@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/9] drm: Add privacy-screen class (v2)
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
Cc: ML dri-devel <dri-devel@lists.freedesktop.org>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Mark Gross <mgross@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Sebastien Bacher <seb128@ubuntu.com>, David Airlie <airlied@linux.ie>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, platform-driver-x86@vger.kernel.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Mark Pearson <markpearson@lenovo.com>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Hans,

What happened with this series, did it fall through the cracks?

On Wed, 21 Apr 2021 at 21:48, Hans de Goede <hdegoede@redhat.com> wrote:

> --- /dev/null
> +++ b/drivers/gpu/drm/drm_privacy_screen.c

> +#include "drm_internal.h"

I think we don't need this include, do we?


> --- /dev/null
> +++ b/include/drm/drm_privacy_screen_consumer.h

> +#include <drm/drm_connector.h>

Ditto

> --- /dev/null
> +++ b/include/drm/drm_privacy_screen_driver.h

> +#include <drm/drm_connector.h>

Ditto

I like how you avoided leaking any DRM details within the new code,
modulo the includes above. With above tweaks, the series is:
Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>

Theoretically one could also remove the `depends on DRM` from patch
8/9 but I'm not sure how much that saves us.

HTH
-Emil
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
