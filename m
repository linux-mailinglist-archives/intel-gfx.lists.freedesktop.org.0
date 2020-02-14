Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4779C15D848
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 14:20:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DFA6F924;
	Fri, 14 Feb 2020 13:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x943.google.com (mail-ua1-x943.google.com
 [IPv6:2607:f8b0:4864:20::943])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F6B6F924
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 13:20:15 +0000 (UTC)
Received: by mail-ua1-x943.google.com with SMTP id y23so3560303ual.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 05:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mRgMBJInkZOSTwTk4nDSosuUAJBtDimhOBwk4khwz2o=;
 b=ueuDuydmxYNqWDgNvsOAVbUY7X9OCI/cpmtlACLgsn6SpmXTNvKxQy6hslzAnMlbxf
 zaOS5ZbuTLEPTuwflc/r7ConrM5vPUhsv0oRrQlej1wMg+0F8sVpdeRaJfGlEdHEfdCt
 tnPoce6OXF9UxKc3YoD64ySsxi2X8GFQz0ScCLVWj481rLBttkxIPvz3vgaKNtJuuyLh
 eLeV5I8jt8mw/DPsUOfHxOzszzjn6QBxdeCS/hOe+BJFxIB7SdI4Pk/ENap4FdLab3W2
 +wrL0Ky2/AZoNCXdGW594joKK5r9v3aVnwcIexDsmYRPPCX1njGYQ/ugD8Epcq/CjOU7
 PKQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mRgMBJInkZOSTwTk4nDSosuUAJBtDimhOBwk4khwz2o=;
 b=Ei9+UnMW3Fa/xOxroOTE4Rl0g1pVaEwfbZGflG9Cc/mdzVWb2c/TbclVib8JCfoHZJ
 0aN2YnwEl8Fp20U0YU/LFowvUnmHgnn3fRH6oImp5pWnfCh4w6QTDMjL/dr00ADIBDMW
 oS8C/6+A7s7WpbPKglbTyw0y5nLaS8zomywsMARA6D8dkFLJuFUQW8KkxUp498KwMyQv
 S1cPpQ2lFtbJ0P7DkYFs9m4ZzspzHkjqoH9M7L67r3iNaKuO9UErjlJxqEmaIeO38DP2
 usjZ6d8lMZVcr6SBfHyzfW0h9Nu07h8+Xn5i0HWGYsVzY9q1sD438tIZEXRsNmYG7P9y
 y24w==
X-Gm-Message-State: APjAAAX0mr3aLpIS5VinLahIXjM6jTE5Btns3s14q3SL08JJts34oxPG
 nV6k8mE45efZ9E2+BAOCUSPV2L84tcFjyeRRgX4=
X-Google-Smtp-Source: APXvYqwteWBARGqDmMfFHMQDu4ikmVMlIX95yQWYMxFlhM/aspyA0q37DJ+Zf/d5ZbVEO0rp2qM8SbqmS1BgcsmeuaE=
X-Received: by 2002:ab0:1c0e:: with SMTP id a14mr1378109uaj.141.1581686414626; 
 Fri, 14 Feb 2020 05:20:14 -0800 (PST)
MIME-Version: 1.0
References: <20200214120659.3888735-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200214120659.3888735-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 14 Feb 2020 13:19:48 +0000
Message-ID: <CAM0jSHOd9cLFqKhRfWJxHeDyWmAORLeaoXtau3oRa5-5+DbQNw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Check for the error
 interrupt before we wait!
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

On Fri, 14 Feb 2020 at 12:07, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Sometimes the error interrupt can fire even before we have seen the
> request go active -- in which case, we end up waiting until the timeout
> as the request is already completed. Double check for this case!
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
