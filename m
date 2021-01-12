Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B58122F36AF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 18:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D007899D4;
	Tue, 12 Jan 2021 17:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com
 [IPv6:2607:f8b0:4864:20::f34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A924A899D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 17:11:47 +0000 (UTC)
Received: by mail-qv1-xf34.google.com with SMTP id a13so1229661qvv.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 09:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5gndC+B3IAwhKGnAjBNuv8xi/Lj2vWra3PYIIgGgSoA=;
 b=iebGyPyksqn3jNJuki9QZWSkc34RmM8d09BBDYTibnkeVDsKnK1cMdNSdti3Rg6FeM
 Pw79rvOACB0x+mh7OTS9r2M63+FvH1NNTf1J3BUoUoATG6TEhewxJaCcFnyDJb4xEyKp
 BIXH87CTViKTJyh5W5u/HiUZKjgYw/Cu7s/tVZjlwgAJWFxJH/zIWyPlZ0hDVmso6Twk
 nAToo93GpuPL/8NKVy+VhCvGQ4XenTiyRneGpl/HfLQihlVTCAdillOPWh8HZGn69RMK
 gNAVI38QXiRnawQOSvNNA6I6o5I/iEhz/wBGLQouMvZBGOuXDeRALgbwaN9liVk1mHA4
 lwlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5gndC+B3IAwhKGnAjBNuv8xi/Lj2vWra3PYIIgGgSoA=;
 b=bn4VfSQVie3eEO/5NwVy1KA6Kn8cPbEJbyLtjZXIiRt+t6tqeiyl9CsVvZ1Qz/3Gws
 QXqjvXLJNTl9owxyVOmee+dxEpJt69xLqC8FU4WR572yKIMh2TLIVea2OhrCqNL5EwGH
 C7LPd8D6BhSOKncdkH9ECX0l/Z5bbCnYNxZZZB2pcrzb97lGbVrfWSfkAkek3GH8QMhl
 bfQI5s4ymbp70GpfRF6aQPBWzH/6sMLTKtfhlh3bXGZAbNhlmU5S+6bQzzJTw7K6NVHJ
 lw3uRQXBrYQf0kqk/OPdodtIX44Vc8Tn8cPFdRa7wD3Fn12QfVnIudCAqZVhZLQGlNzm
 iArQ==
X-Gm-Message-State: AOAM5302F+vdw2hAcoRC73hYNhlpJeTn9gapHSVW2A6ztvefbxj02snc
 sbVZLF+yoRiAMQ2pLs8+opCmI9XMmGemrNCz6LE=
X-Google-Smtp-Source: ABdhPJzCmtsvHbonbIqi8gxL9Um8OZAyVds4S+RuifQqI346HJaykpB2q1CEAb7D8C+c4LuBi2SzDTFT4zDv7ftDQ/I=
X-Received: by 2002:ad4:5904:: with SMTP id ez4mr408091qvb.30.1610471506813;
 Tue, 12 Jan 2021 09:11:46 -0800 (PST)
MIME-Version: 1.0
References: <20210112170429.27619-1-jani.nikula@intel.com>
In-Reply-To: <20210112170429.27619-1-jani.nikula@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 12 Jan 2021 17:11:21 +0000
Message-ID: <CAM0jSHPZyDKhLihizZZodF8nyn5N443FvKtcrJ7HxY2VEQWxYw@mail.gmail.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/region: make intel_region_map
 static
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

On Tue, 12 Jan 2021 at 17:05, Jani Nikula <jani.nikula@intel.com> wrote:
>
> There are no users outside of intel_memory_region.c.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
