Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E7AB1EFC10
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 17:01:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F09D56E928;
	Fri,  5 Jun 2020 15:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa41.google.com (mail-vk1-xa41.google.com
 [IPv6:2607:f8b0:4864:20::a41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1084E6E928
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 15:01:17 +0000 (UTC)
Received: by mail-vk1-xa41.google.com with SMTP id f126so2281113vkb.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Jun 2020 08:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8vYFm2QDzjUbmIjiRfspNZIEL4G9pOcx/FG/kwbSbqQ=;
 b=uKHVMZ4g0kFPaBte5i1tzCwGMSG2U8MiJPQRrWG0tGgB5NpgkxTKHBx3sHF0q6dXS3
 zqL2ry254zTQr3NHpv86XwT9oMDM/KDg+9roYI4/MRexiQPnXuIVulvGRW0KTz5MuPsi
 FuFBi1fWHKTiMU/h4nG4qZg+DYhPvOQjPLratfSmhsCb7r603cw7zH3wpMLhymCYnk65
 PUuFxMNNNPrJtgqWXzOJAVkfjKrdvy87byYVpKP2bgadzQ0m8zLc/IluDHqNkHNjHrKX
 S8jLGuDIv+QwRpVcXYlryexLRDvWUTMcVdlu/topuTZdZFhROn0Gm6dcSi5346parkMN
 RY1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8vYFm2QDzjUbmIjiRfspNZIEL4G9pOcx/FG/kwbSbqQ=;
 b=bkGHDjvmt+nFCcHpCny3MJD9vQ7mUL51mnSiamlNTHDfO5Ox+tCz7nl+rpls8NCghh
 vephUL6iBVoKhgP97Q4KV0HdbEG/ht70H64eYamKJSVOwDshTRbe97mQjCZHbOvzIVXP
 LID/wNHupiVGSIq2dGJO64LJxnJ5piYkNzucb1qIM8IEuz1Ruthfpj/MNGvs+3/PpL8t
 NoqtXZ4d4zF3DgSqMK8ltkIyNR1RZUU06s4w67i9F7Jsc7LSeXu2zPXqNxIU1jEUYaxo
 omEs+CgSAUpVJtcqMBssQbPDTT2S2i5LCwHXt0+ESrwIJlXcQzluoV3VeIRV6k20mG6u
 9AUQ==
X-Gm-Message-State: AOAM532pmjNaeenEN6q7zt+p9oyjZJbzblZqO+axqaW8UEi9ASU1AsOD
 1CtlUBWGpTmK4RELCLIoV3pPMQy3dh3ToW+KuIhyrn27
X-Google-Smtp-Source: ABdhPJwUBehbpZoFHdU1CTYQq0asnvfn5NHe16c1qEgtt1024aZbz0IN+MOILhnBafyHkH01BZxtbbw0cUJ/1nnzEiw=
X-Received: by 2002:a1f:1c81:: with SMTP id c123mr7631030vkc.14.1591369276088; 
 Fri, 05 Jun 2020 08:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200605105646.24300-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200605105646.24300-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 5 Jun 2020 16:00:49 +0100
Message-ID: <CAM0jSHOEBC9AWEzx2rgRZ3u221PTB4U-p36G3+XSeCwZzXXfpA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Discard a misplaced GGTT vma
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

On Fri, 5 Jun 2020 at 11:56, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Across the many users of the GGTT vma (internal objects, mmapings,
> display etc), we may end up with conflicting requirements for the
> placement. Currently, we try to resolve the conflict by unbinding the
> vma and rebinding it to match the new constraints; over time we will end
> up with a GGTT that matches the most strict constraints over all
> concurrent users. However, this causes a problem if the vma is currently
> in use as we must wait until it is idle before moving it. But there is
> no restriction on the number of views we may use (apart from the limited
> size of the GGTT itself), and so if the active vma does not meet our
> requirements, try and build a new one!
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Heebie-jeebies aside,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
