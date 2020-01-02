Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B172A12E4DA
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 11:16:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A32889296;
	Thu,  2 Jan 2020 10:16:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DB4389296
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 10:16:18 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id x123so25093783vsc.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jan 2020 02:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZqXB56Jd2rDcw8Vnb+fF75z2OPJcYLWItOS/aciY4c8=;
 b=HZF6+LwQVtNdoLHbUWTtnuD2+Gwd8Xqoe1coPihI9/bnjo1jIcNBrv7zILWewpq5c9
 Pc+NXhPpvWkRd3s5hkGNr7NZ1HJGgOJmyT+KZZY5zZmch0IE2XB51uDgObSteJChHlvc
 Qg3dnTdKhFfHk9PCm77N1BPtvXhhY6Vcv7ko8aj/Gj4hwQkjcLO8BqiUWUnLXKJbDNJs
 gFoKwe5gGZ1/QT8U+Dla8NdweE4Y0h+diZeSxYLoyMNo8qVac6uwRBP0i3kenzqVEpy5
 U3i8NJbsjOy2oYfsX5LITNHSpUQeAmzqxKs6TNsztffj9EXNYVvrX3cF2qrrhODze77E
 uhPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZqXB56Jd2rDcw8Vnb+fF75z2OPJcYLWItOS/aciY4c8=;
 b=iv6Rs/Y57jmsAzcunbXw84N+9EOF+coNrdqI9GRoKJIQwf3VI19Rv/T21BI5GKFkue
 62rLVPPCh8u57YM5OVIBiJ6qwamvRkNqtaUyLrPxFbCXRIQwVDb40yOjd9sWX+/S3EZY
 mhUMGskAYMaOBMEQ9VsP/h79GdPHSNPNdHGZLnDxAF1xs0AiM+CZW9d74x+Ol7ostgs4
 5osuIoL7Gpnz1ZprCz9TbFHg56Fot/a4Xmv9wTrTkqlHcjP1EEfazy3TI5pwqDdXl4T5
 4aCBIG44x7TMYHkNM1pYh9WW32K1VTtuzHwQHsIcV+sAYJcUssUfgLxZknSRgqRLPcry
 T48Q==
X-Gm-Message-State: APjAAAVHOe3GMya0UZu/vFqfchjZI4IrCxYyv04XZlt6RfGgvD6iQBgK
 1Hyrr/Y688mqqeqCzyobiuLwCy2UiLxRizJVEBc=
X-Google-Smtp-Source: APXvYqwJc66DjRUD+Ieiz5Fu0KsaeT8Vus7GW/gbebV/rzO+euDD0Qti0CwOM+qxNHXBXHofB5mX1xiBkJzZLW9RUQo=
X-Received: by 2002:a67:15c7:: with SMTP id 190mr44710562vsv.178.1577960177571; 
 Thu, 02 Jan 2020 02:16:17 -0800 (PST)
MIME-Version: 1.0
References: <20200101220736.1073007-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200101220736.1073007-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 2 Jan 2020 10:15:52 +0000
Message-ID: <CAM0jSHPovNjuw6JKYzTLGq_gqG_C=Mep2vCJBdLsRu0S_2_u1g@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Single page objects are
 naturally contiguous
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

On Wed, 1 Jan 2020 at 22:08, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Small objects that only occupy a single page are naturally contiguous,
> so mark them as such and allow them the special abilities that come with
> it.
>
> A more thorough treatment would extend i915_gem_object_pin_map() to
> support discontiguous lmem objects, following the example of
> ioremap_prot() and use get_vm_area() + remap_io_sg().
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
