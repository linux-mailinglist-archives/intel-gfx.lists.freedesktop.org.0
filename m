Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6775B168E12
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 10:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C81F6E578;
	Sat, 22 Feb 2020 09:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B526E578
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 09:48:45 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id q81so4264943oig.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 01:48:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cmbG+49dwq/UKXs2qkLYicIDlg+fkXHU5U0KkF7+hVs=;
 b=T0GlGoX1pDwnWm9cs2beArG904MrxBjwGZysbcb1OLV2mcrwkjnabv+10PfeX2OJC9
 I0ox3HKFHNObK54nFyRarj3Nt/3N0doBFxjJTY9ME/oIGR2EbShb5Z22vm5V6zhH3JWo
 jdW1OYf6r4HBjtbwFhXonD4Xapk1DvfAvfoSE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cmbG+49dwq/UKXs2qkLYicIDlg+fkXHU5U0KkF7+hVs=;
 b=Mh+tBjYQziTHjkq3sOQNt4Og/0s+zpKHhow0osdYEkfvHYH7iC0KAginOaweZ9r9WQ
 8FBboQJ88zUyto6QBL99kZQbshBWHGdiH9kTSqyf5YSEkCCuBdL2mJxrHGtp03SCeuO9
 EHzoAvDpbrNrPOucM9v8kNJiT4l7qEobhh1cwULRJklwhFU/uBsmRobEOZlFWJLokGlp
 sUaqcBCeNMKSo1E9NpT05qOLJ2hl20wKIu+3P6JHuTJZWqsRcRCIYgSs9KtxHCFFfCus
 lhnmd/CKIAPPFKH/VVwx//4Yph/Zg4rdZy9YTK61nLxLeoO6Ul2Dmjv77DL/blYmKwXD
 kuBw==
X-Gm-Message-State: APjAAAW3xe9Rr3s0fFRcETX/JHr3h0xA/R/kXsj4eEmoDF4WQx75Eb0y
 US30MIjuWVPKtEakrkmFuf9/RB590FRBuSf6oYBrFQ==
X-Google-Smtp-Source: APXvYqyjVrWhS17dh73Cj6QlWpQMlNY6kRGXdK0JFvHvP1jDKiEfgRhx0ijFQQuOq9m2Tt/g63LrNE3qc7NsRndH9FI=
X-Received: by 2002:a05:6808:319:: with SMTP id
 i25mr5655242oie.128.1582364925216; 
 Sat, 22 Feb 2020 01:48:45 -0800 (PST)
MIME-Version: 1.0
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <20200221210319.2245170-3-daniel.vetter@ffwll.ch>
 <158232098048.7320.8539611385294752480@skylake-alporthouse-com>
In-Reply-To: <158232098048.7320.8539611385294752480@skylake-alporthouse-com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 22 Feb 2020 10:48:33 +0100
Message-ID: <CAKMK7uHoQM=mK1tMkw3-+v_O6qbmAjrObQXjzYn2154zwQi5qA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 02/51] drm/i915: Don't clear drvdata in
 ->release
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 21, 2020 at 10:36 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Daniel Vetter (2020-02-21 21:02:30)
> > For two reasons:
> >
> > - The driver core clears this already for us after we're unloaded in
> >   __device_release_driver().
>
> Even if we abort before loading?
>
> History notes that i915_pci_remove was called with a stale pointer on
> error.

So even if there's a bug we still have the problem that clearing the
pci_drvdata in our drm_driver->release hook is way too late. You could
already have bound a new driver to the underlying device. So if driver
core doesn't clear drvdata on bind failure and we need to clear this
ourselves, then this line here could actually clear the drvdata of the
next driver instance bound to the pci device. Not that that's ever
going to happen outside of very contrived testing.

But looking at really_probe() in base/dd.c we do clear drvdata on
failure. So no idea how/why that stale drvdata came to be. Anyway
that's kinda why I cc'ed Greg, so he could confirm that this is
correct.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
