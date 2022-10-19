Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BFE604C8F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 18:00:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDFC710EB0D;
	Wed, 19 Oct 2022 16:00:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6174110EB0D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 16:00:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BAFB1B824FB
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 16:00:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F6D8C433D7
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 16:00:38 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="Sg5XoR9S"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105; 
 t=1666195236;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nNzvlU70nw4rqKuSJovye7xjA2+PL6G2DOoL//8MS1I=;
 b=Sg5XoR9SZf9kqoHfXvFCLbln523UJP/fn+XQcXPOq1MkE5iEunVr0WozzkIl3Ec9pyp4Rv
 7uozcLBAmbFoEKp7sKwYunv+P1UxWBrhnfLfbuHgna4KmxP1hxAD2Ya6qK60j1OjuOegOy
 JjoWUFGm/GNqJNUC6WhIDK9Zzha8GPU=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 471cb188
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <Intel-gfx@lists.freedesktop.org>;
 Wed, 19 Oct 2022 16:00:36 +0000 (UTC)
Received: by mail-vs1-f43.google.com with SMTP id d187so18119437vsd.6
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 09:00:35 -0700 (PDT)
X-Gm-Message-State: ACrzQf2MyN4lHoVfRRzl1QXNa/S2ei53561gxKwdrdbk9f+jx3iKWsFT
 QeGSLJJfJ3wjEEQ1a8o60AA6lKWtuRFtwFSmeUY=
X-Google-Smtp-Source: AMsMyM6b/YJgi6USG8LH8vMe6J9vASXMpCJH4606sy6PXGqGmt1lk48xRVAUHMrkTvw4CMm4uK4AZEkwAmmjhkSlnvw=
X-Received: by 2002:a67:ed9a:0:b0:3a7:718a:7321 with SMTP id
 d26-20020a67ed9a000000b003a7718a7321mr3539909vsp.55.1666195234956; Wed, 19
 Oct 2022 09:00:34 -0700 (PDT)
MIME-Version: 1.0
References: <0029af41-bf24-9972-10ac-f52e1bdcbf08@linux.intel.com>
In-Reply-To: <0029af41-bf24-9972-10ac-f52e1bdcbf08@linux.intel.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 19 Oct 2022 10:00:23 -0600
X-Gmail-Original-Message-ID: <CAHmME9o25v0kZUV-7qEY=6XXAyOA7q0sG8gpQfxHgr3sSVdsWw@mail.gmail.com>
Message-ID: <CAHmME9o25v0kZUV-7qEY=6XXAyOA7q0sG8gpQfxHgr3sSVdsWw@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] signal: break out of wait loops on kthread_stop()
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 19, 2022 at 7:31 AM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> Hi,
>
> A question regarding a7c01fa93aeb ("signal: break out of wait loops on
> kthread_stop()") if I may.
>
> We have a bunch code in i915, possibly limited to self tests (ie debug
> builds) but still important for our flows, which spawn kernel threads
> and exercises parts of the driver.
>
> Problem we are hitting with this patch is that code did not really need
> to be signal aware until now. Well to say that more accurately - we were
> able to test the code which is normally executed from userspace, so is
> signal aware, but not worry about -ERESTARTSYS or -EINTR within the test
> cases itself.
>
> For example threads which exercise an internal API for a while until the
> parent calls kthread_stop. Now those tests can hit unexpected errors.
>
> Question is how to best approach working around this change. It is of
> course technically possible to rework our code in more than one way,
> although with some cost and impact already felt due reduced pass rates
> in our automated test suites.
>
> Maybe an opt out kthread flag from this new behavior? Would that be
> acceptable as a quick fix? Or any other comments?

You can opt out by running `clear_tsk_thread_flag(current,
TIF_NOTIFY_SIGNAL);` at the top of your kthread. But you should really
fix your code instead. Were I your reviewer, I wouldn't merge code
that took the lazy path like that. However, that should work, if you
do opt for the quick fix.

Jason
