Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1404926C67F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 19:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F4D6E9E4;
	Wed, 16 Sep 2020 17:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF176E9E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 17:52:24 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id e23so4573162vsk.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 10:52:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rKxwigTRWNQRFUHPPAXm1pqMOs9FwG+JGsUZ+7LSvI0=;
 b=o3luQOkgqt1rBgQn6Dn3hj3lHrrRmPMrNrfGOXXUTR6LBZCTimP1JU65EoEZnUURMP
 PG0/wJx2pjSWnQ9v64adA25xhBMtDqsRwJQMEQgxd5/P0zz/5nXMT4xGEVR3OH6KNmHp
 k6eQVh6EFHyHkXtt+8IrP5ThVas+T/KXeJU2xLt4HDECePtH6MPrcOKh2bgOCqSF74Dt
 fOefXXjxMqtVpe7pgQCqcNiN9gI8N/sxtZKfBaSgcYlTfwUSeuTcPkY2TI1hrq82jzxU
 Ky24MnpS4mEoOeOIjirGTPT+4rkcwqc+jzyqHYdUFrZ1paGQAVs4G+3R1zur6vaVNV4G
 8Z1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rKxwigTRWNQRFUHPPAXm1pqMOs9FwG+JGsUZ+7LSvI0=;
 b=hfazU+pjOGvr8iMP8E6fZwNxEF7qcvkZlBuEkE9UdHasEQQpQ8nAJJilvvZQrAQa7/
 5hKPQQFqwSp8UhMR/HB/8C3mbdAhse3OtEqY3XAtEDOTNWC7iL0kVSJkr90ySwbZG/NN
 PVNetIey4l9M7LDmo73UB78dCYAjoe/4qpqAza24BcLyecd7aTdq6i36plgDQSwgi+xh
 nPIDSL748AxzycNQURHc90Ma4xOUexH1AXYVSyB4ntvZYGYSHK0Zt95ZGTzibxd7Bh6o
 FpV0fQ3xYLyY4Exof1cWYVGew3cJf3AmMFSXL4ZIHkNYoAnx2EYe2y91f4qpwHovj8aW
 iIXw==
X-Gm-Message-State: AOAM530b+tjcco7z2zyomE8kzu2p8EGvBefOb6IwG5HSj1o70jx9+Cob
 nKL8b9ZklhAdLTBNpe28Wl5Ej/ktPvGuo58jNIxM9KHrJtYjnw==
X-Google-Smtp-Source: ABdhPJxSU0nR3qMhkdNjcRgXZfSTcLMSK+5V/2y+BynAQOijHnsrkuxWBMQqjYpwUoXSH54cth6iDc79JywUdRmT3F8=
X-Received: by 2002:a67:7cd2:: with SMTP id x201mr15670438vsc.9.1600278743358; 
 Wed, 16 Sep 2020 10:52:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200916090059.3189-1-chris@chris-wilson.co.uk>
 <20200916090059.3189-3-chris@chris-wilson.co.uk>
In-Reply-To: <20200916090059.3189-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 16 Sep 2020 18:51:57 +0100
Message-ID: <CAM0jSHMWs7OUFt5ELvg6-OanTnPS8KA0MhQa01J6vV1180UC5Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Reduce GPU error capture
 mutex hold time
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

On Wed, 16 Sep 2020 at 10:01, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Shrink the hold time for the error capture mutex to just around the
> acquire/release of the PTE used for reading back the object via the
> Global GTT. For platforms that do not need the GGTT read back, we can
> skip the mutex entirely and allow concurrent error capture. Where we do
> use the GGTT, by restricting the hold time around the slow readback and
> compression, we are more resilient against softlockups (khungtaskd) as
> the heartbeat may well also trigger an error while the first is on
> going, and this allows the heartbeat reset to skip past the capture and
> not be stalled.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
