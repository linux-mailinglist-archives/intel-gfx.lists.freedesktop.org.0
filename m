Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66973306064
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 17:00:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59876E852;
	Wed, 27 Jan 2021 16:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F60F6E852
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 16:00:32 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id e17so1726223qto.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 08:00:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tV/Mjb8M/8QfFYlo4BMS1lzGo77fv5sChH+8e2CMl9Q=;
 b=g/1x9f5Se/50YYRS1gfK1e1R5zZNhMnHYjC8EZUrve5owRM0Z3ZhH/PQPgEmKK/8c3
 gg+5dKeTazjr39ltAZh526POvBEx5kTsO15Ry+9G8zNc/XqmhVrZbJ8CfBYldZI+BCIc
 jnCgwwP6Db3KlEc1/tt1JYe/TZtG8lTTLJ3Lvkfb5nsq2/QHpoW6IdwkQw+YWNvir38F
 rQtAElhVTL1XE8dO9vJe/Pqf8ue8FPR4TLyWZPnOh46MEbz3m2oanceXwRApnpGi2uxG
 Q0nb4/PVaC6UDItQVqycLzoaGGPKP8Fhe39cLWDNnNFpGaHseHqckVbg9MNJXLy4oVBB
 7TLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tV/Mjb8M/8QfFYlo4BMS1lzGo77fv5sChH+8e2CMl9Q=;
 b=qEh+Tlv0aEOG8pPJ8ULbwd804Ei+1AMic/Vz5aM9JFcy//ilVK+wgKjb6pvchZI/ST
 CoIetu0eEM8ixVIPJkL17jmyccE+/HIflhC0GpOQMkwwEECn5RoGpLfCqjFNvweUi4Jo
 67xEJYtMqWOHdEV9TNJrhVXMJoe7EuOagN/pXB7d+N+si3e9oux6139rQD3oZsB++Rh9
 YaRZq3Mm+cv7M+ILGh/xhp5fujDH/Tg7g5yRLocccllkBdKJZP2YGWvuw/sk0yZ86y9H
 9IIzpgV8O/GHWyI6pmFY+8YvkBRuO2FHdjaqp/TUilOJjH7vMzgY811uZ1ALaV6+nS7T
 1yiQ==
X-Gm-Message-State: AOAM530Yh8Ko75PiUhBvL0e8T3VURWlJ7kZS4DLV4YSEPrX/tYJHwgEV
 IrG3yXcFK1JWMUhsHEoQCgdx0RWfVxSZ52TCxMoNyXv584k=
X-Google-Smtp-Source: ABdhPJxTFzjYlW7E4lN6IBiPI0j3LZrAZ02c32MRWW5KouJ0Rv3znoFSyKQ45KVLiq5RwInKg35nOCxZvetldjhVzH4=
X-Received: by 2002:ac8:76d5:: with SMTP id q21mr10250467qtr.341.1611763231279; 
 Wed, 27 Jan 2021 08:00:31 -0800 (PST)
MIME-Version: 1.0
References: <20210125141803.14378-1-chris@chris-wilson.co.uk>
 <20210125141803.14378-3-chris@chris-wilson.co.uk>
In-Reply-To: <20210125141803.14378-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 27 Jan 2021 16:00:05 +0000
Message-ID: <CAM0jSHNNov0cJCgj1vEUbJ9=FAEPRuYJB4xQomScZcH_uL9Spw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915/selftests: Replace the
 unbounded set-domain with an explicit wait
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 25 Jan 2021 at 14:18, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> After running client_blt, we flush the object by changing its domain.
> This causes us to wait forever instead of an bounded wait suitable for
> the selftest timeout. So do an explicit wait with a suitable timeout --
> which in turn means we have to limit the size of the object/blit to run
> within reason.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
