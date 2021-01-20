Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E13182FCF36
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 12:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BDF86E048;
	Wed, 20 Jan 2021 11:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78FF96E048;
 Wed, 20 Jan 2021 11:57:17 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id r9so16017221qtp.11;
 Wed, 20 Jan 2021 03:57:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KfQp5F/Tu8+haH/VCYZeOj5mSxmnYiSpentqR30r6zQ=;
 b=HfHEZqUgvS97V6R3UAaaeltPM277B24HOrs/dhiHGEX+om5Lld2ikZ7kDuNSq6JRof
 IJ114ZQ4qrAaxQ618CmceCVyQzh4UVTIKpGbq5Hc62YlnRKJNjDns/5PFsNRzYDxomEV
 4h8Gkg/lOajOwQU2iVafhwZOItLsq6c4lhh1jO60cAdQs/4JFU4wnm57Q/R1b/68vOLr
 yD4YZoE0wjHOWk3iKFdUiUqWIxLDhL/O9509qSaiQsgT1yNAAG/J1JA08zwJPlMhtYIl
 zTs5PKYjM9BI4N4a0NRkK+N71rptJMa1XJegJwHv94Y7kho5QG4kgBeufzO8c8YfGHIH
 3ibg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KfQp5F/Tu8+haH/VCYZeOj5mSxmnYiSpentqR30r6zQ=;
 b=oNXK+Re5KpBdJiNplndIynjKQyBfZ/puipmaZQuaP4oBjXRSs0BcKPkM4MJyxXbdWK
 7EXbbRj6Qh0TpExkQ6mBzLGUyOanfRwxJGJfnKylMyG3fZwObz10xJTAcL5BHkgC7q0n
 PQsyleZGfwYSEXG2rMv6UWeghzHl6etm/VrPm9YroZLypwseVBye0CUsaHHSIfIfAqTY
 RYRKtzvG1i2FVkWy6yMmbjiitxWrQWyabtMubKQtyDPiuZT2BCeFwm04AFfLQKdNEAoR
 e9sY5gAMAKVSzq9pBIRQiCKKE3kqmbDSbDVFE9Hfjw7skVK8R5IjDZdFXavagxoYeM+j
 ElNA==
X-Gm-Message-State: AOAM531kwxTkpWsZibVMUh0+Xx9S8Mth3vvcZ4gMfpJxTQUOuMepZXHH
 DQGuStCdPwMe2WyRtSTh6yVhUOPnObeKBUXRC/ifSOnmGLc=
X-Google-Smtp-Source: ABdhPJzJxmuO2jaEmIuhxvw8K4JShMC+mBwcVHD0rRXzxlOaNnNVswhguHEaaWXslgquNDnYaOT2Gu3dLqgzUuAXRbw=
X-Received: by 2002:ac8:721a:: with SMTP id a26mr8573622qtp.223.1611143836539; 
 Wed, 20 Jan 2021 03:57:16 -0800 (PST)
MIME-Version: 1.0
References: <20210120111115.846341-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210120111115.846341-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 20 Jan 2021 11:56:49 +0000
Message-ID: <CAM0jSHPRYJRD0MHhHHmbgyLN+Os_tJw5ZQa8X+jmsEQhWOkZzA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/2] i915/gem_create: Check wrap
 condition for -1
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 20 Jan 2021 at 11:11, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Check that we correctly reject an object size that will intentionally
> wrap upon aligning to a page.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
