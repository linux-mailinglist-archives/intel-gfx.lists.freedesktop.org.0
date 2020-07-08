Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4022218D28
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 18:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2570B6E55C;
	Wed,  8 Jul 2020 16:41:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFDEB6E55C
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 16:41:05 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id 64so18591634vsl.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 09:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q5bKGKvfnCj67ZvKlHdqt5wQtB7BGnQzHAMzpbag6kY=;
 b=A9BL7USXcbWgSQZPX4/eYPNjox25/UeOWmVTktraXV2xYCVuPhVZHxX2SUfdcZQTso
 1XM5fLI7pSblHCGsRfEpRF70bzuIRBJAeCibvZpfIXsP0698QQXtaUIyA3r+aawR2dxd
 QiCjCiYwz5I5ETrk6cICGv/0v8UfCpAxzlVxaOYB9IikoSVUZg/pUUiX03iY2WRh1pbv
 7oUOprOrAtPTiNDMfzFyUnPfqYmjxWGdPuruovBTVvyxZf+pfK3EjRtKn/ZdPhkiLNHv
 WM5pnTuZavI87xIDElJD2wr3tZ+w8Hmv/TAgajhFX5GxpYXh0VruRdX5mZUlCWyjlgpV
 fpoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q5bKGKvfnCj67ZvKlHdqt5wQtB7BGnQzHAMzpbag6kY=;
 b=NIiZzqMfJTYjbXY4Fchira2FA63rqP4l+zA0THm/LAfDQAoxH/UojBGeh0VWVNkzG3
 MK60r+Lms2a4yEETsBu9rrp8+F94jttVdPTO43m9fgTVNuKMlMqgn5YThRyYnjGPFNoq
 /YO/R9s4BgChJ/2Ghqv9+pwTAFUDSdzQ6OpxuPlKNYytC3HwZWVCnv0W4gPyHtpnDPuT
 81NEaw5RcdxUh9UFWXH3mUzmvUs+ZhB7K6Cq8qKlzampXPuNO4NJfGciqccUwFJvdQVG
 HJo41N/u0Z/8lPbPdZIfC8Z+0eZrrKvMove0/X3cYChs3wKQqqRFKLhOw1qHq60eolKJ
 FrEA==
X-Gm-Message-State: AOAM531tMRtmwbumxlRyZ21MsvODSmi0yWrdDcf6qhOVPPVw7IGA/qlM
 l00IQhre+/0Z/FfIixeTv/qIsx6o2n5wyI0u7Bk=
X-Google-Smtp-Source: ABdhPJzM2QTMprlHmt9tvCiLOd/VthQBNOJSSgvO28x3jOGC2LdvalcaYJEvb1e0qPXTE+HqfuJdrzrpF+KCNAZRBBM=
X-Received: by 2002:a67:f98c:: with SMTP id b12mr4332437vsq.34.1594226464918; 
 Wed, 08 Jul 2020 09:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
 <20200708134742.727-3-chris@chris-wilson.co.uk>
In-Reply-To: <20200708134742.727-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 8 Jul 2020 17:40:38 +0100
Message-ID: <CAM0jSHPcgShxMABCf_35qi00iwcBTvSYYMqnLv2Aa6FPHAsdzQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Remove
 i915_gem_object_get_dirty_page()
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 8 Jul 2020 at 14:48, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Last user removed, remove the convenience function.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
