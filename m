Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE04B19DCE8
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 19:38:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FC046EC46;
	Fri,  3 Apr 2020 17:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33BD36EC46
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 17:38:31 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id i20so7790997ljn.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 10:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WsrsFiKg7jVVt1Tbaxi6CC/RoosWjYVkuHWUujI563w=;
 b=qABK0gXUX6ZTzn4oECzA9zh8hXnY77GS9AQBQktfc8QGDA4INnUGc28T6z2RYE8wHX
 MMowC5p5+fYv7Ajt/0LOlyB39PH9WcLqIv0Jrm8VN1Y7YEe48W9oO0vCgKsEtXb2t71t
 5FFu98bcqLhQUgWBo+k3UdIvlN9JUBxkaWyMF82NLsXUkIWCRetJL9tGc9JO8yJQ/shi
 qidy+kzB8Y2gxbleHJUPQp3W+dHv0lL7aSA5xbdlom4pnmnwkv+ePdiAmNJJC5m8sdAV
 QOYTVVaA4rhES2Z2q1vnPqnQFnms/wSMSuZK67SSDuS6Z4HTtMDqNXAamRwX+HSQhwPR
 L7aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WsrsFiKg7jVVt1Tbaxi6CC/RoosWjYVkuHWUujI563w=;
 b=HyplcAfyHZ5TAmuARmXmM9r+c2iJijcTMt4gCqrPdoCVe5kVu/x2dhi6RCqa9tIPnr
 s4cx/IXhPUu002I0aG4tWX40ZpQd0ZV4LY8DbQSdMFHdDH4GatYI+3n559y0qBgqSAtq
 9Dj6+oRSud6d8QMbQbXeqlCJq1sOXhA8ha/IyQ+gdvps57ZVn4I7E9U0M7jGRz2xVkAS
 jlmJFeX8YKo6Z49sXeyG1o/ZIqZ8WXR+JEUAjsPusRnvVjIQWV2vx8y2si7Bp9ZWZXQX
 Wn3xkAzBtFNikR7oz5DH0QxMcEPuWKhn5gEzBIfSM657q2M2Ajp/1btTKT/HfvIyV01h
 EDXA==
X-Gm-Message-State: AGi0PuYHOKYA7TPNde6CKHSc4tJd2oJ5Pyo4nV90J/zjyofKYmbGdzjT
 pNvkZCC5jy2NCbKBBjxCg6fo/MlZBeC0iWWeEOWDCg==
X-Google-Smtp-Source: APiQypKXIqVIcpTrFGvJFoRoTzzDHgU4I3JDzA2lShg2tyVTc7uy3d/7vV+uZpfhn6fmtouA2E+y05bEq4pmvGAqR10=
X-Received: by 2002:a2e:a176:: with SMTP id u22mr5590302ljl.84.1585935509629; 
 Fri, 03 Apr 2020 10:38:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-13-daniel.vetter@ffwll.ch>
In-Reply-To: <20200403135828.2542770-13-daniel.vetter@ffwll.ch>
From: Eric Anholt <eric@anholt.net>
Date: Fri, 3 Apr 2020 10:38:18 -0700
Message-ID: <CADaigPVUGfkwczp7v3LLA2hPkT28+Zs0b-3Z47BEkyq_nAsrkg@mail.gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 12/44] drm/v3d: Use devm_drm_dev_alloc
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

On Fri, Apr 3, 2020 at 6:58 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> Also allows us to simplify the unroll code since the drm_dev_put
> disappears.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>

Acked-by: Eric Anholt <eric@anholt.net>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
