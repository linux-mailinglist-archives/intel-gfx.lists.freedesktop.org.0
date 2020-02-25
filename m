Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5576A16BF6B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 12:15:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAA8C6EA91;
	Tue, 25 Feb 2020 11:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com
 [IPv6:2607:f8b0:4864:20::a42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 343246EA91
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 11:15:48 +0000 (UTC)
Received: by mail-vk1-xa42.google.com with SMTP id w67so3393061vkf.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 03:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aMtQ3pHp1xucuYJZG57dvLV5RZBiN+sE4qCLKwfsYLU=;
 b=YAJdnzjMj3TSy4oTHurXxB8/SI/2d2v2qkdWWs2rXS75YgOd40sFbOO3dqgxjHYWBS
 cIIiFaJmUSwAatrwnZvZz+vkftvTi1Q6deimhp6vQPktkX+0pcTAKpPV+nZe46HUHKgw
 S5LxQzI2gPhc2IHtjHJeGMK4IS4s472I4YFVFXe+itFuzv7LTc3CNnqwrQUXHJpa5FAq
 CYOvipvCUbxSF/1uubVcgetyOAAGnTxcyWyWUBe8FrVULwH+31bxpuDfprNqv7lOGyq9
 c+vPaFcIMZ6O1+kEIPvVG50lHqxEfn+JyiCQ6JZqSGFxFfXBZClb2+6Im4SCeENwET6s
 tFpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aMtQ3pHp1xucuYJZG57dvLV5RZBiN+sE4qCLKwfsYLU=;
 b=ogXg0AcQ3ZEBNecz497y3Cv1+pPjq1qk+GVQzOePnBtLgIylkC+NR1yMwocoeXes9L
 FQNrG8BzUUsYfDCAegKa0UECcZu2YCAU8RpNLXC6vGs88+uIvvBSztFNLUoKCJw8IbAv
 PfXu2EZJJDhK1/qfoCBXIVaUdENN/PIe2tX9GGL9SUkMXMcbLOWXLD3lmbJ0BIN/bQjm
 00yMDeRjwpqgspUziSSzUq481ZHeTwVLnpEhVqYhR3FX9sBcWM669Obzj08fJmPvaN0c
 POYnGEgaqjsfSOSIkGXbGVBPobNjpB1dKQoF8ELloTKVXdT4SWiz+KHnk3hwJ4bhu5QV
 mGOQ==
X-Gm-Message-State: APjAAAW5CFgPZbEA25NHKAaopPtzziMjlxCeA0z0OBTg8EPUhxg9rs/k
 tbMb7RWjKgUiVlwXZ5dsCpgZyql+0MJykdR77tmb0Q==
X-Google-Smtp-Source: APXvYqyfgueqtYkXQLZUvDxI+aC+2C6ykOIUuERGxtBesnnFsY0/+1+K8PqFMW79yGaYphkiJ3ZgL+sZSod1KmYdavg=
X-Received: by 2002:a1f:604e:: with SMTP id u75mr24880276vkb.78.1582629347170; 
 Tue, 25 Feb 2020 03:15:47 -0800 (PST)
MIME-Version: 1.0
References: <20200225082233.274530-1-chris@chris-wilson.co.uk>
 <20200225082233.274530-4-chris@chris-wilson.co.uk>
In-Reply-To: <20200225082233.274530-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 Feb 2020 11:15:20 +0000
Message-ID: <CAM0jSHM+jVAM6+SAjZb0Hs_nE3W8SApF5LbGJQgOEBLvCTOHMA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/gem: Cleanup shadow batch
 after I915_EXEC_SECURE
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

On Tue, 25 Feb 2020 at 08:23, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Tidy up after a call to eb_parse() if a later bind fails.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
