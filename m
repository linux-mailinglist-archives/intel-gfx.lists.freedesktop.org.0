Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A77A61BC9A0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 20:44:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3D36E98F;
	Tue, 28 Apr 2020 18:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com
 [IPv6:2607:f8b0:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 515A06E98F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 18:44:26 +0000 (UTC)
Received: by mail-pg1-x544.google.com with SMTP id q124so685894pgq.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 11:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sQbmiTRaRbJvDbfgIy/IEq3uDHamC8h97Ccpeu6KXrs=;
 b=iB7WRIUfrvDKeRQ1tdA5XPMkNdZvrmz+xVNaXs/Tv3Lmy28nNPVV6omAnws0CX3gLN
 IlruKH/vQSkZSd6981K3O2HyokhJOx7bNNLA80lkjQK6qzg/FDMYdRNbTyd38P5/4Oqr
 sfEZNew/ufwtsAUHmrJkThZFjBtvJEMJfAEsvUdeOafxVZx2GQHKBThL6XONa634pPyt
 azCpRk2b9p9bhJXSxc0hAS0f+VTi6+brCEVBQOvRWCstmtUfpONhj8wotZvsllI+oNCe
 9d2Ovn+AnVk/yIOC671qLfS8WQSpNRpFZ8i/dCm+H3jtHmGQH0gMFzkidQ+fojKXiTgw
 +gFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sQbmiTRaRbJvDbfgIy/IEq3uDHamC8h97Ccpeu6KXrs=;
 b=d73ypGQmYB00FNsf/sBMOe7KalJLQgqBb1hYap9oMfXKQVH33NAft0SnZ0151eY35l
 NClJRJy2lI0t251YjA8qFoZSP0wnTCsMlKQ5HjNPYR7piYvNwVX0PgQWwlbd6NUpEtES
 /Z5phCf2YJkOd33vrele8NooEkx0vhOEMnHjRuYzN9XMevJ3AZzY40NkwkEDgrUG0dH4
 +Z9O/slPwKiks37DmTaN4FRH9XxuFQW7RU7pZI1cVXUp0kXkNGSTCOhyRF45kFRgIVw3
 oHxIBfHyfEiRao3ScVr8JyUKhpsrlQeoBJgTaULEEbxtp8mG5u3r3f5y/48/yWoeF8Nz
 ltZg==
X-Gm-Message-State: AGi0PuYQpOuQekwWVKU9gdRzMu58/lz4CzlbxekCah06Ujp/cGQgLyAA
 6Y05V2FflAnZuDsOLuOvCkgHs6iopbKF2gEraFomcBon
X-Google-Smtp-Source: APiQypJPXFGJ30Qgci5nzIRuXgqY+6FwEPS+k723GtNghnf1I+19V5TbrXyoJTpxabglhN+Z7XMGZmRAMrJecQYAnqQ=
X-Received: by 2002:a63:cc:: with SMTP id 195mr28937517pga.373.1588099465879; 
 Tue, 28 Apr 2020 11:44:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200428114307.5153-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200428114307.5153-1-chris@chris-wilson.co.uk>
From: Alexei Podtelezhnikov <apodtele@gmail.com>
Date: Tue, 28 Apr 2020 14:44:13 -0400
Message-ID: <CAJU=AjWyX_zV4PaFNYxzCVz2svsKW3UHr9-R7aqajmj97ZHwcw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Tweak the tolerance for
 clock ticks to 12.5%
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 28, 2020 at 7:43 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Give a small bump for our tolerance on comparing the expected vs
> measured clock ticks/time from 10% to 12.5% to accommodate a bad result
> on Sandybridge that was off by 10.3%. Hopefully, that is the worst we
> will see.
> -                       if (10 * time < 9 * ktime_to_ns(dt) ||
> -                           10 * time > 11 * ktime_to_ns(dt)) {
> +                       if (10 * time < 8 * ktime_to_ns(dt) ||
> +                           8 * time > 10 * ktime_to_ns(dt)) {

This is actually -25%/+20% and you could have used 5:4. If your goal
is to cover 10.3% in either direction just barely, use 8:9.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
