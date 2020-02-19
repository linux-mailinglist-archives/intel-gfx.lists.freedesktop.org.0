Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E80164DDA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 19:44:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036FD887C7;
	Wed, 19 Feb 2020 18:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F1196E854
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 18:44:12 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id e18so1416926ljn.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8NwJt47g6ZVghyJ2x+geBD9QazWa4mFogCy59yNBdog=;
 b=qjVmjlDd1RwqXqKiRCwVhDSKmOIpe7kTRCa0euXyQvWxcuv0F/BQMxiRQuVBVOEiR7
 DSljbyqzQPdV8U+QYKBEL7YjrTLGCc1h5z1rCaAQZprDKdhurtNEWiyA5Bk5uw1Ra7j+
 MR9VseoG+Fhx8yTSHgJRBydL4OrcMMO/GgscjBh2tItHj2S+amAoYYko3XiWRzIp4aeX
 L9dPJlrG5DtVFIRg5CuW1U3FWyOQ9s8ZKOhBhuevLFSAcBi+50SiOG9LUMIBNX4RSNIo
 qQ8h0kV8zPHuiShc3aWOMmIEa2R4hwiEbznnGGRXyqSWmfgYi77zGAsQ0gjydk94NVXw
 nkGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8NwJt47g6ZVghyJ2x+geBD9QazWa4mFogCy59yNBdog=;
 b=SRTsiAhxhGa+tfP6HbTPWnKuD2zBumOU+S2HazUOZFnM9T5T2CcW+btmTI8DDgajlL
 ywNbGyn6MS9z1gGsVdV6ea3YOPKmFPMvJ/SIUX1kUbCXbFrraGXIZMubdNBlDSHYQjV2
 TVGqQjy22Yj8hjdTCd9NIKgRS0ckOy3MrTVgcm5HKR0kmp6dJhQDguIcJABBimYuBzHh
 or6vS3ccn3s7fgS8H3yXKp1msIWPFMscAAJ5T5zu/5GOiFnbxg0lSABg1oQZd2yQNIKS
 bFb6DoCDsQB08yAueGNkvazYHfcfpxiUh1lyN11fR2yxgDZKsKeEU8qACA8fVrGhs51N
 kiZw==
X-Gm-Message-State: APjAAAVlLRqHesXeOi3pQd5+2B9owtKBaBeYgE36oHqF3f5l3BfMZKgg
 J1yjJir0BHar0eARua6MaXPy4AuruC8yjHa2gc8UHA==
X-Google-Smtp-Source: APXvYqxex1J6HbiXzjBbVXAnw5JvZEu/RHb3b8EuwIcDRBJeSIOIuhFpybr6M1I3az08ILJyJEgrZiqn8VxJdLsgWFM=
X-Received: by 2002:a05:651c:327:: with SMTP id
 b7mr15300073ljp.22.1582137850461; 
 Wed, 19 Feb 2020 10:44:10 -0800 (PST)
MIME-Version: 1.0
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-12-daniel.vetter@ffwll.ch>
In-Reply-To: <20200219102122.1607365-12-daniel.vetter@ffwll.ch>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 19 Feb 2020 10:43:59 -0800
Message-ID: <CADaigPVtF76FM3Ft=hAfqqkYUMAdV8_xGQzefVHSj2aVRk3QTA@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 11/52] drm/v3d: Use drmm_add_final_kfree
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 19, 2020 at 2:21 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> With this we can drop the final kfree from the release function.
>
> I also noticed that the unwind code is wrong, after drm_dev_init the
> drm_device owns the v3d allocation, so the kfree(v3d) is a double-free.
> Reorder the setup to fix this issue.
>
> After a bit more prep in drivers and drm core v3d should be able to
> switch over to devm_drm_dev_init, which should clean this up further.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Eric Anholt <eric@anholt.net>

Acked-by: Eric Anholt <eric@anholt.net>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
