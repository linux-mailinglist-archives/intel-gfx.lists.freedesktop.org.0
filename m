Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FA81CD614
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 12:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669BD892A4;
	Mon, 11 May 2020 10:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1250E892A4
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 10:12:07 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id k12so17382738wmj.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 03:12:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=AxDN71QWVlIvPR/Qe9BjED7lK/KCTSrcSC7GeFvMB4Y=;
 b=b+tSFMrvsOVBFnenMDfROizokqqsnSkXcglzgocb+51zy42IXbNcvm5CHNupiOZMBs
 ANqitFhidqbalpsVfp+bA/q0JND5ePnK4K7dgxr1Y+0WOZLuIknw/CLde/AY7WU+iUoV
 fDLkN/x1hi73cW3Lol0SnEsnc+wQwS//RVi7k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=AxDN71QWVlIvPR/Qe9BjED7lK/KCTSrcSC7GeFvMB4Y=;
 b=jhy5GRAh8VZENGi5g+HL2pO7tQU/eRF3/bkYpEW/7VvOsa7mEHCKiZxZPfen5BEB5l
 HEMs22sHEV6xP41K33ZygPJcBt9qXn2bmj9aK6U6NSZg5bcBqI3Rp5426EZJYDiHxWTG
 G3qU/g2iDBzlLW0kKi2CFpzqgts2seF3u8LW6nTKb3H6WyvzMEKDekoDzAhYEwzD/CG4
 xQtVcGSrrz6GTXeLv/Bf2Q7EIWuHtqVSnr/5vL6vQ0Uv89jhj0p1W2kg81qYUpKbLTyS
 Aefxi63tA3NLas0fok8x2Q8tZW7JCp1ZVMF4Mr49HOv1WiQEi9x2G0VzYLAlRA34ZNPh
 mrJg==
X-Gm-Message-State: AGi0PuYspdrVWX8W1HmXsFNuaoKr49kp14IilTPrY037D2zN74sbFXFf
 jTtZCNSvWDyp2AHaXfHAze02eg==
X-Google-Smtp-Source: APiQypJduS5g8MSJy/JNzf+Alo7zIfVFjEdcgIp2nM0k6p91EvBmHQ+tR8aq272pVf8oIkv+vmiJPw==
X-Received: by 2002:a05:600c:230e:: with SMTP id
 14mr2914697wmo.45.1589191925721; 
 Mon, 11 May 2020 03:12:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a10sm18015507wrp.0.2020.05.11.03.12.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 03:12:05 -0700 (PDT)
Date: Mon, 11 May 2020 12:12:02 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200511101202.GB206103@phenom.ffwll.local>
Mail-Followup-To: Chris Wilson <chris@chris-wilson.co.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
 <20200511091142.208787-2-daniel.vetter@ffwll.ch>
 <158919006380.1729.6928823811672806738@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158919006380.1729.6928823811672806738@build.alporthouse.com>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/3] dma-fence: use default wait function
 for mock fences
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 11, 2020 at 10:41:03AM +0100, Chris Wilson wrote:
> Quoting Daniel Vetter (2020-05-11 10:11:41)
> > No need to micro-optmize when we're waiting in a mocked object ...
> 
> It's setting up the expected return values for the test.

Drat, I suspect something like that but didn't spot it. Kinda wondering
whether we should maybe lift the -ETIME special case to the generic
version. But that's not really a safe thing to do there, drivers might
actually use it for funny stuff.

Anyway motivation is that I'm pondering some extensions of dma_fence_wait
and removing as many of the ->wait hooks as possible would have helped.
But there's some nastier stuff like the legacy nouvea and radeon ones.
-Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
