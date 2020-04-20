Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1854F1B1046
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 17:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 373806E5BE;
	Mon, 20 Apr 2020 15:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F6446E5BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 15:34:59 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id p28so6252656vsg.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 08:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Px0HYpKiuFjYgTfvxByPaySJ9c4dWAHCP+jBl1JzULs=;
 b=Khx5+YxADnVhIoCLxhOz+9v+y9QQnTPzpDdxPrOqMgcA0fT1Vq+XHDgdPyHuixTEL3
 wXntUOhrGdNbg3eZhjbm5O6x3ypncLuuIyvk72tByPN0EFibzTG1PFSpKH6+FZ+ureFE
 l53YHz8mMcrBVsuQdTn271ROZOJxmddYsWD83IMx81lon9L23jjekQuoVUGxgX9QBb4J
 WxeouApeIUEeC48s/TeqB5YNPfn/g6uWMaps4a3ozcXCgVQ4IpqIXEm6Ksi0zq52oWJs
 dWMJx7P+juYbG0FFkRv+k0fhSqa3YvqjT/ZeDLTMi3kHqMXjyLbGCb6UzHXvq/9NGyBE
 us6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Px0HYpKiuFjYgTfvxByPaySJ9c4dWAHCP+jBl1JzULs=;
 b=SGl+Q0qGtanmmQJ2aA5fNOWW1EIUopPnpUQoc2xJQdtD2w9eau47vPjqIqH31k9AvK
 mVeMiqsHwh1pz61i2qSlluvc0HgmXgJ/HYlosluTUh/MvGh2v8vCCCXl5AfV8SRh0Pbl
 Yf1bJ/01UlzIhZJNma7vOntHWCDwU0BAX6iA4+yU3FE5vPAM91kumOQD68SBvK+pAkzT
 KKg5sovVq4TKBJsFVR3CLJUFGL53Zl2B0+ZMS6cvw4+XmNvXS+K9vNaoOF+v+oxBlmlv
 TZ22Tpe3NO6v9QRpajSxhDYXiQWgQrkc5tzU5NQBpUcZI0oEmaYDyYmVsfEPBNmMILvi
 rdZw==
X-Gm-Message-State: AGi0PuYlEBGkxAc50P/DMEfwJAMWqsmzeMzWaXeexwKduNxbb1b6gXN/
 mkaMcw6zr/PPYpKW+BkhFqHVw557XwYnwHnutkI=
X-Google-Smtp-Source: APiQypLWc8kvDoUIY6RX+VLfdvH0s0DIYL8xDLWxm8enfBxIwPDwBOngTmHvpYfA0jb0DMM97TVreql+gDfSZds/iWo=
X-Received: by 2002:a67:2e45:: with SMTP id u66mr12065358vsu.178.1587396898557; 
 Mon, 20 Apr 2020 08:34:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200420125356.26614-1-chris@chris-wilson.co.uk>
 <20200420125356.26614-2-chris@chris-wilson.co.uk>
In-Reply-To: <20200420125356.26614-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 20 Apr 2020 16:34:32 +0100
Message-ID: <CAM0jSHOnYemz_h+TWB5UW8phEMQG3mW-z4x5t7M65W7wWyUOkw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Move the late
 flush_submission in retire to the end
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

On Mon, 20 Apr 2020 at 13:54, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Avoid flushing the submission queue (of others) under the client's
> timeline lock, but instead move it to the end so that we may catch more.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/1066
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
