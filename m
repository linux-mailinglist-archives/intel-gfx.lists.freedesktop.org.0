Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 570A71EE4C3
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 14:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4646E362;
	Thu,  4 Jun 2020 12:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 642AC6E362
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 12:49:33 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id t132so3169926vst.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 04 Jun 2020 05:49:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KRCKW22jGJXpiGTfxNFryfjV09TVuR49BCdrg+kzKSs=;
 b=jGxXTXNxtcxMZCU3ZgcyRR9lhInTA6F+l74x0UgKzd1tyyfX8pODOMVi+sGMYy1ks5
 SN/MhWKfILXn7Krn89cKbfdmxp8JwoKnBq6aobhTrKWK5EmqJXiYBkL5JBMu80eB9H9Y
 Aj8dwWV8MG1Tgeba1+MK5jqYhqjIoCDVtAQ1PZUIkaq58If/x4ZRP3xpRRqD2mJyMytf
 IziWrIGgABIvh4RTWB0aCD2FQ6pe2rX1uqLKWXn0fIiW43MTYN64hjsLWvWotaO8zC6y
 FDqiPhwICzD4sJEY3NUnZEvkNUnRWdi48XVvQtdPC36+A5lZ6jkjDVc1mTvov77oaRwg
 x9Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KRCKW22jGJXpiGTfxNFryfjV09TVuR49BCdrg+kzKSs=;
 b=qYNyIte3v2A5e0566UOQK/7m8D89HaHjNe3HDp8E0+AXfA/tIEX3YOij9C/Te8zFko
 OYMkLRekwI3Nde49Il1mSWzZcPrUz7UFoZ5hi89rM4rNHwQF+qc0yd9bGZkArh+ydKvo
 zC3TypnNNlKQLa/hzXJHj0Ihoo+93O+cEdq0NAkQNzR96JgA2H+vGLeoCnOOsI11ala8
 34mu/aXMDsqbMNo0HqoXhiS3NIoytBH0rjYWAnO6XTdJLMFR4jB63pr4IwYwWjFAueHU
 zDD0OEQr0cUaafHOJIJ+Z9LSp6CmC5UX4PqtMZ8/0OZ655Q65gJvFW5/l9KUaNqpXR4Z
 gYKw==
X-Gm-Message-State: AOAM531KtJsKzqtOmqomo5dFYJDOasZ4V/xyQLvp7xvlMJiI+mg2/V2x
 EKlMWyo9tnQUhLpN7A2CwUjcd/uZRrhUzzt3A+U=
X-Google-Smtp-Source: ABdhPJzy8CCE66+QBQ7uIw03YT/wr/1RhI6XEIvXmFGSp5lblGxJdzPsXVdK2+BwBcoGwEJvISl7AiqHZN/XnycgyvA=
X-Received: by 2002:a67:2703:: with SMTP id n3mr2968383vsn.178.1591274972452; 
 Thu, 04 Jun 2020 05:49:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200604103751.18816-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200604103751.18816-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 4 Jun 2020 13:49:06 +0100
Message-ID: <CAM0jSHNe5ssL2tzyg6b7g0zdeypPSy_krYY3bPdRRP6O7-OQRg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 01/22] drm/i915/gem: Mark the buffer pool as
 active for the cmdparser
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

On Thu, 4 Jun 2020 at 11:38, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If the execbuf is interrupted after building the cmdparser pipeline, and
> before we commit to submitting the request to HW, we would attempt to
> clean up the cmdparser early. While we held active references to the vma
> being parsed and constructed, we did not hold an active reference for
> the buffer pool itself. The result was that an interrupted execbuf could
> still have run the cmdparser pipeline, but since the buffer pool was
> idle, its target vma could have been recycled.
>
> Note this problem only occurs if the cmdparser is running async due to
> pipelined waits on busy fences, and the execbuf is interrupted.
>
> Fixes: 686c7c35abc2 ("drm/i915/gem: Asynchronous cmdparser")
> Fixes: 16e87459673a ("drm/i915/gt: Move the batch buffer pool from the engine to the gt")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
