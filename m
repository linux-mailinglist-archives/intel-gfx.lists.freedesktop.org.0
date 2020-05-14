Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 760561D280D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 08:42:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7AA6EAB1;
	Thu, 14 May 2020 06:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BD5F6E2E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 06:42:26 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id z72so21480563wmc.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 23:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jx7qglq93rWDanidzQRtYPLYgQThofsEoYOfwLqQhc0=;
 b=vJsbUxRyyUlKCO7bodkCSLhazXXcrW2rlT5uXYdav7sHNPuukNCjoJCjKYeLd4pwiN
 RTDxD+R035RfhEmet5tCdwUlSGIoDOwduimQl3Yo7W5BWTOWWEoKrAq66TB6kpAkvMMF
 V1ot/YnQjf6tcXeZZs2OlGDvcAHRdlZQIs3J2/rLuUO4Pr8AlUfB5HA8jlTPItg32H7J
 Nd/TbIbnjVt6Fli8avZGrxwopAjLJobBOwhovnZ1gLgfUU8SzG1MEujiO2cOKDcS0Fwi
 wMEr5jmrHVK1GoT0hEZ2dtyL+9AK12VyyQqUIgiqDarMc+MoEhEg+PsEgQSO+OfrDmNa
 LgkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jx7qglq93rWDanidzQRtYPLYgQThofsEoYOfwLqQhc0=;
 b=ESX51zlc29DRbQGxHG+vDBgnqLhbZm+Y24o2jmYbJ4r47O6RloUOAYmT86MY3VPcdM
 +JTNAL3hbk7Yx8Y1osT7Ls7CLk4QaPcbUdSOP60yhsg9PQYQ7IRNpKuYuRG+YS6xE1rl
 n7fz2C+4aAIJk01r01d88kcVXYCUkV69IhA2qzmIh6hU3ouqigjILDZ/r6xKJ12v0AuI
 DWVeTaFS0ln51kE99caRiP21tAJKlNUinYMaKYYLcLcx0khzuZazfpdbsA05SHUw/6yM
 HyO62VuzPJByB56FX9P95FTBSeEWsvA/h0SH8gDfRojNNrBnWYspzQf0YS67ihitIlXD
 fLqA==
X-Gm-Message-State: AGi0PubWXMGaDfBc5Ype7LkqM0byHjl/PBC4B/V1CpZstdCchhWCcUJz
 QziXpvFTkpeneH+lwzWbPDayetF0lvFqAzfCRNEKKg==
X-Google-Smtp-Source: APiQypLH364lYxNqugtZIJWLLbIKFfVxH1Let0bIRxUi5KBU+tIytLWGafmeWA+xyDd9uh1HVWhThY+2FWEvWMxEX3Q=
X-Received: by 2002:a1c:2d02:: with SMTP id t2mr46616464wmt.98.1589438544740; 
 Wed, 13 May 2020 23:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200408162403.3616785-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20200408162403.3616785-1-daniel.vetter@ffwll.ch>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 14 May 2020 07:40:47 +0100
Message-ID: <CAPj87rMJNwp0t4B0KxH7J_2__4eT7+ZJeG-=_juLSDhPc2hLHQ@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH] drm: avoid spurious EBUSY due to
 nonblocking atomic modesets
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
Cc: Daniel Stone <daniels@collabora.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable@vger.kernel.org, DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Pekka Paalanen <pekka.paalanen@collabora.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 8 Apr 2020 at 17:24, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> Resending because last attempt failed CI and meanwhile the results are
> lost :-/

Did anything happen with this?

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
