Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65069314106
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 21:55:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F73A6E9FB;
	Mon,  8 Feb 2021 20:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D11C6E9FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 20:55:32 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id s3so20622517edi.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Feb 2021 12:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2R5cIzIXet9GM6dz4SIcwXdp+qiJPCxayFqnXxYjxjw=;
 b=uduEefrEvrM0g2Ug2r6s0muEflS4MfZe2rT9RP1nXv/VFIGgWs75iwG9+7enYg55s7
 gTOSubSmlfK2tGI4JDeqLHHozyVNHzVL7swRjiybMU1Sbmyx94kYXSpmJiJq6fHCdjUO
 ISSWHG+QX/Sw/7HuItjxNBDgxFljq7ZbfCZ17vsr1UxPohjAbDZyOOrXSQ42FfYzDtQ/
 CPH3KQQXRqQ68lwdfIx6A9odcL7215uWXkXPF/U7NAYjhvwo8XzIiV6pAwg4OauM61yR
 4mUdCkNwzB3ZjPidngVXP181LRHqdfUmxhD0RG1wsMz4jWuX4wtyfZCECK9nMc5gjnnm
 +Z5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2R5cIzIXet9GM6dz4SIcwXdp+qiJPCxayFqnXxYjxjw=;
 b=O8JVzaRM9+AUiw8gT499Tc5TBcZI4Oz4e5d+EqTrdYHJeAIpMrSOPYtodSBkKLghwd
 yY94Tbyo1rL0qfKQNCtle4jBtqlfbJs/ZQOLaFOaV1c0YS2lT4DoQp6PbhyAGRjpSbYr
 zidX+YST2pABk977UXNhG2F0Yf6Plf+Fd5YdsP1UwUtFirbsNZ2UNyAwlP8VQm8WEeVd
 zPAC2laFOwDUMggu/USteEIID1c9OpY8WnBHwcS5sZ5aB+x8idaZ12ajQkjfBOfMnVJl
 GBvQ9sXaHPlJvdhqGTJuV6tQcn8tLCFGss4w/uEs3jc9q+k+WBaFaflrxhlE0C4jfAwx
 w2MQ==
X-Gm-Message-State: AOAM531tCAdLGdwkFA1T5QdEYsp+XXn9jAL1k73KUhOPt8bwfkb4Fv1i
 VHbP9n3endW6i30vOz6G0iQX3FymBtcIGX9itFw=
X-Google-Smtp-Source: ABdhPJzKSrqUoI2XKkjCWjmHnyCD2h/LiI39Cwke9hmSrYgf1xQc4lUGFTqa2HsycW0ydauEL8+TyhdHO9hBoODtj3s=
X-Received: by 2002:a05:6402:702:: with SMTP id
 w2mr19524378edx.78.1612817730957; 
 Mon, 08 Feb 2021 12:55:30 -0800 (PST)
MIME-Version: 1.0
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-30-chris@chris-wilson.co.uk>
In-Reply-To: <20210208105236.28498-30-chris@chris-wilson.co.uk>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 9 Feb 2021 06:55:19 +1000
Message-ID: <CAPM=9tzVb=eN84xSY+_q8Cgv7dwidCyh9kr7N411YmM+NhLbNQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 30/31] drm/i915: Support secure dispatch on
 gen6/gen7
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

On Mon, 8 Feb 2021 at 20:53, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Re-enable secure dispatch for gen6/gen7, primarily to workaround the
> command parser and overly zealous command validation on Haswell. For
> example this prevents making accurate measurements using a journal for
> store results from the GPU without CPU intervention.

There's 31 patches in this series, and I can't find any 00/31 or
justification for any of this work.

I see patches like this which seem to undo work done for security
reasons under CVE patches with no oversight.

Again, the GT team is not doing the right thing here, stop focusing on
individual pieces of Chris's work, push back for high level
architectural reviews and I want them on the list in public.

All I want from the GT team in the next pull request is dma_resv
locking work and restoring the hangcheck timers that seems like a
regression that Chris found acceptable and nobody has pushed back on.

For like the 500th time, if you want DG1 and stuff in the tree, stop
this shit already, real reviewers, high-level architectural reviews,
NAK the bullshit in public on the list.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
