Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2489B74B72F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jul 2023 21:35:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB3410E030;
	Fri,  7 Jul 2023 19:35:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B7FE10E030
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jul 2023 19:35:16 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-3fbda07675fso55e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Jul 2023 12:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1688758513; x=1691350513;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NjTTuy3pR7yCwxc+ymqk+V4QgNVJ/yG4vdogUTF+H08=;
 b=nmCtPhlm928yluJDW7fvKvZ/+zzYDWY9FE3v70mZ+XNsB2fApZMKLaudto7gm1ZkPY
 tIBUBEtfY9THz82uKOIZKKSy87kT8hPbIkOaKH09qTPPfYTY5RtDgxAKL1XV4o2I3mi5
 zR0RuJ5WTdwSTsu1AK+gJI9GEiFuY9bO7MhN8gwsRkm0icR2oDo1u19AKofExxZM8jtS
 vvaLJg6x0rJIQ+9gjcXWNdGVFC/ZcRJcycmXuoYPLoO1rNJ0Y8l/2rYrG11ELU5m0IPY
 gSrLa6GyW7UNHev4K/72o0DyFnbRPTJB95x075l0qWTISPAgBRdQaL1Us5K3mSv+RAS8
 W8CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688758513; x=1691350513;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NjTTuy3pR7yCwxc+ymqk+V4QgNVJ/yG4vdogUTF+H08=;
 b=iQr8LKX7vz0SOzGgLwEWt0LVaFw66to42Nnoqtu3oxuRQ0mViiEAUsp1YT3tBv/lcw
 fb4JfUUTRNOhpF84CVnWBaD4FlaOfYqMW5N9O8KCjc27r1RQxr4EoGhFqLUi6xWAMthN
 8sz8ZVehcb4aGKinancQEjZArTj/rm+7hxAwEXmqg63ZxzAa+zYXqK6ULj9nzLXPnCGA
 sPbvCyGj5U1M62OeI4otB53W0KtEDpQ41g/x35x5Nk62oCnD0N5gaCPOZrYPZq6ufW65
 i2Vf2Q41boIoVNHZsACALZJzpmikJQ9ABVL0tsb9604j+bEAHmaM6fOvL2Ht735z9Olt
 GqaQ==
X-Gm-Message-State: ABy/qLYIsmo1ENL4VHMTMcEwV2lnjrBE3SdLEpjOV4PYKhampL3luV2E
 CN3Zhr+p2VQeUoxBFTdl7I0xHRqxP8/KA0Jf897IK41GgR6iCBlYMQg=
X-Google-Smtp-Source: APBJJlHoDXrVRzZplAIxqvP5BGfmN0a1MoLsMFcOWAv9R9XEIWj3t/JVPls4FKxp06zmHVe2bjdVm98ZFJcGPedDjsk=
X-Received: by 2002:a05:600c:3c97:b0:3f9:738:4efe with SMTP id
 bg23-20020a05600c3c9700b003f907384efemr4804wmb.1.1688758512599; Fri, 07 Jul
 2023 12:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230614235452.3765265-1-pceballos@google.com>
 <6b49563d-e9e7-ae8e-582e-f4aead06de0a@intel.com>
In-Reply-To: <6b49563d-e9e7-ae8e-582e-f4aead06de0a@intel.com>
From: Pablo Ceballos <pceballos@google.com>
Date: Fri, 7 Jul 2023 12:34:59 -0700
Message-ID: <CAO9JgFx2i=S5P6_ndO85k3GFnggyJW1pXavc1emmSC3yjO8M7A@mail.gmail.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display/lspcon: Increase LSPCON
 mode settle timeout
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
Cc: Sam Ravnborg <sam@ravnborg.org>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 14, 2023 at 9:35=E2=80=AFPM Nautiyal, Ankit K
<ankit.k.nautiyal@intel.com> wrote:
> I was wondering if trying to set LS/PCON mode multiple time will have
> any effect.
>
> Unfortunately I do not have access to machine with Parade LSPCON chip,
> had suggested in yet another git lab issue [2].
>
> I have a patch for this, sent to try-bot, though not sent to intel-gfx
> yet [3].

I tested this patch and it did not resolve the problem. The error log
was repeated multiple times and there were still link training issues
afterwards.

> The timeout value was already increased from 100 ms to 400 ms earlier too=
.
>
> If there is indeed no other way, perhaps need to have this solution.

Yes, can this please be merged?

Regards,
Pablo
