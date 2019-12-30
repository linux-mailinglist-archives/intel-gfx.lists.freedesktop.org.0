Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9568712CFDE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 13:02:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D50789B20;
	Mon, 30 Dec 2019 12:02:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B71C789B20
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 12:02:20 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id x18so20791412vsq.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 04:02:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PHMqwgmuwpIaLRJoic1uQvAoSgOoumoj6A0iMkUiPXE=;
 b=HPRgyfqTi96b6f0rM9OI2Ek5Gd+nQ8bdg0d7oMUj6ViUvdS8bKEkakv98dNsf5zv3g
 dncscBnz7Gs4n2byJQAAf7tWkniBEHKyeGGydpL81WfpIv3ubxjqSPnGcw1XGhxcC4iu
 FUt2vblFLrDadVrexj7Ch6QA6iMFeH/heT2/NfIRUT7gvo5DPDO1HFnimBEkmg30DAfj
 BoAmspAGUGpPpG1ZCvJzVbX3fwLDfGfn4rfYkNLenD1rHMhyjoFM6EHIO//gp6+us7PM
 ZypH8QALq3mLcxYiinua6Ou1WXcaeGCJj4z2bn+8+F//QJ7kaYWJFZX0LQ6Z3uScYiWp
 DRmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PHMqwgmuwpIaLRJoic1uQvAoSgOoumoj6A0iMkUiPXE=;
 b=Hr3W6XhEG2z3K9U6yryjTj+D/bzkN01zxNlpnrb2pcgXF8C4FFvNOmsXaERIn2ZKVd
 E7Zh+ylr5gXwO442A6dexKQtTJafC0aNRBZq3AvebY0sFqOZ3+g+cyR18mqC7HMdCkFi
 OYkdAb66FsX+1fcn9tOpGs1PQMrBF331UAvnLf5EpVDatNkwwuKFe7J6U37JPbfr2zLE
 ZEHJCvkcRmK656fR0UNfCk+Ve4RcK129z+P+z8We2GmNNxLtEgd1QTGu0vLuaiFsyzjI
 rQBglK324GztQmGCKfZKvJvFk5NnnhEcrn1ruSp8uZEthDMPmXiRHvOqOmzq+If3qtSJ
 Uq5g==
X-Gm-Message-State: APjAAAVhIaTVKCUCvGZBAXstJu2rLC595iXxT1D03f+bvN53UxnUhSN4
 serfH6KPvF0JZU0K/4a50TLlegyGN+Mmh2Tx990=
X-Google-Smtp-Source: APXvYqydjsoIOmBAohQMFTpiOR0nKeeWBA679Al9yoIypLfvQDrLy+XRvd30YjHdIR4laGivK1XlU2vUc9DA7Ls52N0=
X-Received: by 2002:a67:3187:: with SMTP id x129mr30938460vsx.23.1577707339735; 
 Mon, 30 Dec 2019 04:02:19 -0800 (PST)
MIME-Version: 1.0
References: <20191221144917.1040662-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191221144917.1040662-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 Dec 2019 12:01:53 +0000
Message-ID: <CAM0jSHP6SjcWTnGFDtPews+3z4-ocy43Mgp==JafXuD0OpFu_w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drn/i915: Break up long
 i915_buddy_free_list() with a cond_resched()
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

On Sat, 21 Dec 2019 at 14:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> In the selftests, we may feed very long lists of blocks to be freed on
> culmination of the tests. This coupled with kasan and other
> malloc-tracing can make the kmem_cache_free() operation time consuming,
> and doing many of time trigger soft lockup warnings. Break the list up
> with a cond_resched().
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
