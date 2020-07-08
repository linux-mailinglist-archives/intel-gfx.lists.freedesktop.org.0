Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C09218E01
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 19:13:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3044789F2D;
	Wed,  8 Jul 2020 17:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D4C189F2D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 17:13:37 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id x205so4676450vsc.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 10:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zVwKwbqMx2/PHDv8no+Zw9+FZ/yekuluqpFPQJFYg5A=;
 b=GQ9FPWfFRz+23lX7sYA4kkPSHRuTAuxXHT2CPB3lHX/koMrO0ZPTvq76a30tZI4sr7
 sYdcQFOBS1LPzcXhl6J2MLNeZmDyPmcJ30KxFA1vJV9CvtCMRMzYOPrFUJcfKycUv7DF
 UXb0jKz3uUBEkGtIqzW6KiSA7QT//QZWd3OFBIAtPf2mB21Usm7sID6yrcZobXdcu/q3
 GMDDf8ZSTnn5bmfgcUi4mFrR6jWoihZIgoMVMdG9rwWRlJ+uDA5sIo8NA8NCAPIOq9Bp
 E51HUIu0B5wL2X0sAnQ8X+rqOKXXYzGU6oKosIZzi34sIQWlHD7UiiC33ahjRLfTCJL/
 hOiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zVwKwbqMx2/PHDv8no+Zw9+FZ/yekuluqpFPQJFYg5A=;
 b=TKsmI8rhMp9NCxQmGbOVvHudUjxGL8ARWDkPGN2krpN+T5SmIh518GpvDsWyUerqXn
 piOKZ9g0uuNZK3t0g3snsCvElwAhzBmOBaXZG4t8ZiHNL9zsw9hZ0QvSb1y3OUNxcSiC
 ndKch2if8XOJuEu8/zLUTPGdGoqQiLrMtStxloRNGrwgnf8nTeryYNBIAWls6KoHAhkc
 3cd7JFiStCScOush8Nqkq2znzr+raxW8Pd7lo0w/5/A40OP2sR4bVtQCZoabUvWkUbms
 cAIB2E/PSQYl2HlHbjoaEagXC/TpuRLDutgS/enW2SQ08klpdO8s1Sv1M9qBc5NFbaGp
 50SQ==
X-Gm-Message-State: AOAM5303/PO8Wv9cBLOTS3gZqjvjinrIKdXjvpzURVUlHhxbfh+TGwdH
 qNWafbQL1fOhLY8mVoZeEIZPObEfZyMqQz81nhUQFWom
X-Google-Smtp-Source: ABdhPJyvYJ5mu8CdTpbvaJS008TDXWQUdHKv7pFk7drcrq5vrEdG9KTyVp1GY1U+b8tVZgpRpuI/vyghKlnjzS2qa5U=
X-Received: by 2002:a67:79d6:: with SMTP id u205mr7441821vsc.178.1594228416425; 
 Wed, 08 Jul 2020 10:13:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200708134742.727-1-chris@chris-wilson.co.uk>
 <20200708134742.727-4-chris@chris-wilson.co.uk>
In-Reply-To: <20200708134742.727-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 8 Jul 2020 18:13:10 +0100
Message-ID: <CAM0jSHP=v_O5mZZ=tRChuZyis9kDVh2UEYitCH6AuV4ZKrjXew@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gem: Unpin idle contexts from
 kswapd reclaim
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

On Wed, 8 Jul 2020 at 14:48, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We removed retiring requests from the shrinker in order to decouple the
> mutexes from reclaim in preparation for unravelling the struct_mutex.
> The impact of not retiring is that we are much less agressive in making
> global objects available for shrinking, as such objects remain pinned
> until they are flushed by a heartbeat pulse following the last retired
> request along their timeline. In order to ensure that pulse occurs in
> time for memory reclamation, we should kick it from kswapd.
>
> The catch is that we have added some flush_work() into the retirement
> phase (to ensure that we reach a global idle in a timely manner), but
> these flush_work() are not eligible (i.e do not belong to WQ_MEM_RELCAIM)
> for use from inside kswapd. To avoid flushing those workqueues, we teach
> the retirer not to do so unless we are actually waiting, and only do the
> plain retire from inside the shrinker.
>
> Note that for execlists, we already retire completed contexts as they
> are scheduled out, so it should not be keeping global state
> unnecessarily pinned. The legacy ringbuffer however...
>
> References: 9e9539800dd4 ("drm/i915: Remove waiting & retiring from shrinker paths")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
