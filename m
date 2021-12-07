Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 703CE46C23F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 19:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C6922A69A;
	Tue,  7 Dec 2021 18:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E344C2A692
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 18:00:57 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id v11so31150808wrw.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Dec 2021 10:00:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EiqCUuFTOaRo/tgqA8xrWt+e2aBMmPmV9HZAaRZzi4M=;
 b=kekxCseiQnZE6ia9fYpLM+7iu/W5j8U/WQfwvIVBhJ+42/oP/hEwc9gvf+dE8z40sv
 P5gGhhPxcX62fMTxjI+sPPLmKasfvD4Ss3RXBtT6n9vaqm5J8w+KmxSXtWe3ulzsAYcB
 WlF3lK33QmLCmkiKXj7Rtie64WHrWPSPQVFoE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EiqCUuFTOaRo/tgqA8xrWt+e2aBMmPmV9HZAaRZzi4M=;
 b=hB70AY0yxTvUy/IILSmEruTSzg1rPN/wcpL/NSbCx+jiz6ge5IW8RshThl0J4VbrfP
 1tiTaWGpiifZbZq19jn0nCwQ17EzPmT8dNN49UFg6kJ/7iZip1BeOkZKWuRTLqhFvO7n
 D+5rUefrVVBnctYhVsNUE7f7PABrEcvfOcbdruXz6GqzS3KXgQprVenz321ex4eRRwPn
 vVGBukN3cDsxGedUHARW3Y7sXaYHs9wBUjug9pKXSnp/mXsXxLKT6ug1x1h7bjXRrKUF
 B9ugYI/W+ZEf3VYCHiaalUb3tKZ5wrMvF1ARLiOKxSpWunKaFyDNlWMETT3z6m4aj+eC
 GGrQ==
X-Gm-Message-State: AOAM533Rrm1Fr5oHYGePX+DEnAK1+1pfGVA0XNXiKCITDBksbT+I+5Qb
 FWcIX6FMft79eHiVi+eY+GxEFw==
X-Google-Smtp-Source: ABdhPJxs13h8PDN0IJpRCM/ovsIzx2QPwiUR5h4o2Srl/9wc0WxW37VcSFAv+1p3EPlTK2OsYY/nrQ==
X-Received: by 2002:a5d:4901:: with SMTP id x1mr51613404wrq.473.1638900056427; 
 Tue, 07 Dec 2021 10:00:56 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u13sm3800483wmq.14.2021.12.07.10.00.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 10:00:56 -0800 (PST)
Date: Tue, 7 Dec 2021 19:00:54 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Message-ID: <Ya+hVmHuON31uCtG@phenom.ffwll.local>
References: <20211118165914.pckik75emivsilek@linutronix.de>
 <YZfK8LDcGzQEchel@phenom.ffwll.local>
 <20211130163309.kvw6kbuzwurnqlt7@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211130163309.kvw6kbuzwurnqlt7@linutronix.de>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't disable interrupts and
 pretend a lock as been acquired in __timeline_mark_lock().
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Peter Zijlstra <peterz@infradead.org>, dri-devel@lists.freedesktop.org,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 30, 2021 at 05:33:09PM +0100, Sebastian Andrzej Siewior wrote:
> On 2021-11-19 17:04:00 [+0100], Daniel Vetter wrote:
> > Yeah if we can simplify this with reverts then I'm all for this.
> > 
> > Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > 
> > I've asked drm/i915 maintainers to check&merge.
> 
> Thanks. Should I repost my queue (excluding this one) or should wait
> until this one has been taken care?

No idea, Tvrtko (check latest MAINTAINERS) and Joonas need to take care of
this. Holler again if it's falling through the cracks.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
