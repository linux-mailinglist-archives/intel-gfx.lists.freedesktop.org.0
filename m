Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2523135CD66
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 18:37:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ADF589DEC;
	Mon, 12 Apr 2021 16:37:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C89889DEC
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 16:37:03 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id a4so13632160wrr.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 09:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Hn1jkdSMbiHFhC217RD5V15xVqY7Z/IxbW7epuIvfuA=;
 b=ChsiF5MjK4r13FoZQSNDU9DxbxRVpHuJPicuUY0yqEe7TQvyNo57QDfQkv3oPzj0Rz
 4r0zsR3EnLvIg8v4kn7O4Kwn3tkasth9AwkOySImVrPEFBUvmVryVihgiuu5W34cV9a5
 KgoGKXqU7d6P2i/fHZprsai5V2KUqAX5A9TQQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Hn1jkdSMbiHFhC217RD5V15xVqY7Z/IxbW7epuIvfuA=;
 b=XYQG0j2ExtZ3H7gyIr6JYYrSxJanVwWg/Ows4WpX92agUjVmAtxC6DJq70XtSwOTfp
 1NZwA9nbmStmguXruU6FVAO5f3s/Fqda/OqK158/TcthcxIfw4o4M9NpHLtKDYit2cxC
 +B7/ymxNzdC1XUAbOiN3+ckiXv8Ma6UH9HJtdwiLqHV8cYESQF/k+MiwR2QExGTHslR3
 FLuVABuWNjcLmLdOiT0+FwzlGXRzWHMzPx95CKqYFNOXrImwJhDP/2pQPL5dY0VaBdFL
 YD7Tsju4DfTmpmJ8ZNg+oczC0VhzdbH+KP/zrxlceH2scNNYVSGIMiLys7MUjrfIoldU
 mJFw==
X-Gm-Message-State: AOAM533luSBbZcmY6i7jj50ZbydgldJUHm4Rcj+0n7V8WVwkqcPQlhO9
 e7Dss/1yYZIPNE2v22zgVcywYA==
X-Google-Smtp-Source: ABdhPJxICcL4cgvgxh5LVfH2gmHVfijmlbEKGcrNaDqMIgAxnXszmjeui7GjULR8Q9jdsCBLUw6yNw==
X-Received: by 2002:adf:f14b:: with SMTP id y11mr31567129wro.79.1618245422028; 
 Mon, 12 Apr 2021 09:37:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l24sm16033921wmc.4.2021.04.12.09.37.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Apr 2021 09:37:01 -0700 (PDT)
Date: Mon, 12 Apr 2021 18:36:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YHR3K3INvlpjGyXq@phenom.ffwll.local>
References: <20210412090526.30547-1-matthew.auld@intel.com>
 <20210412090526.30547-19-matthew.auld@intel.com>
 <YHRkixaDBaf5cgkJ@phenom.ffwll.local> <87lf9nijao.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lf9nijao.fsf@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 18/19] drm/i915/gtt: map the PD up front
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Matthew Auld <matthew.auld@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 12, 2021 at 07:01:19PM +0300, Jani Nikula wrote:
> On Mon, 12 Apr 2021, Daniel Vetter <daniel@ffwll.ch> wrote:
> > And that's some serious wtf. Yes we've done some compile-time type
> > casting automagic between i915_priv and dev in the past, and I think even
> > that was bad taste. But it was justified with that we have these
> > everywhere (especially in the mmio macros), and it would be a terrible
> > flag day.
> 
> FWIW, we had the dev_priv/dev macro trickery for a while to not have
> that flag day conversion, until everything used i915 or &i915->drm. But
> we got rid of it afterwards.

Yay, and yes that was the plan to avoid the flag day. And not as a great
coding pattern that everyone should imitate ...
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
