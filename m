Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBE5327988
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 09:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA97E6E50B;
	Mon,  1 Mar 2021 08:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD586E50B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Mar 2021 08:44:17 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id n4so12153324wmq.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Mar 2021 00:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=casXV986YYPpP/xVweHLp0D+mMI8e5v7nph9gP3C210=;
 b=KwubmRjBCacpJEoQ8nI/i0O6N0bT0UF+rjnwIHXkRjuHaOxDxcAX0+0VI97PkXE4F8
 p7b3CKJDuNdeBcyWyvkGT1jJBXYzz0SpeF3EyRCUj7ZrYmituxGo0H3ApF/wvLI4V94g
 6t027mMCenAmki/gYvyzyzx95eC0WzyShZCyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=casXV986YYPpP/xVweHLp0D+mMI8e5v7nph9gP3C210=;
 b=TmU+vTNjb5X5p0d37csddctn9EZ+cd7dUhdbvUeRC4V+E9MVyXFdQvPIiwDTGc8ali
 sD9Z5E81MxUsO+X3UL0RmXQ0Ba4xz24AMzZjcNwkKxH3Lm0zDC9tYN+0hgM+06QlHXqS
 ZSuvpYlkHOMwqg+ZfmBWMJSUZza7i3HgWEGikwj5CniEa2HSIwc3wA3WWa8tP767fYJ9
 m3aZOLbV0PCT69pDrSlWZ7AC6ryIJLSkSHBGXE5m8RwduJW0WNWHGn/RdMKj7JcVG0K1
 irE8ZmvCN2rJ6hJAmAyGrSiFgJitP8myYGgePFE7LoeZoutDM27srpYvTzyzUZsUMKPa
 JKAA==
X-Gm-Message-State: AOAM532Q1f4val5saDM4kNeYeBiaHV/5c9NlyKi2BRa3TGbh/Y1KA2RW
 7WBxR3TF9MYp4ijSSfRmvur6Sg==
X-Google-Smtp-Source: ABdhPJw127V6ng7xDem45/zMMy84q21yO4BFfknDh2GJ/IHtBlg9Nbdd5BlIUoB8hUto+ypMIgI5XA==
X-Received: by 2002:a05:600c:2248:: with SMTP id
 a8mr14413003wmm.167.1614588256291; 
 Mon, 01 Mar 2021 00:44:16 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l22sm25045665wrb.4.2021.03.01.00.44.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 00:44:15 -0800 (PST)
Date: Mon, 1 Mar 2021 09:44:13 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <YDypXb3M1uVBxcyH@phenom.ffwll.local>
Mail-Followup-To: Christoph Hellwig <hch@lst.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Peter Zijlstra <peterz@infradead.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org
References: <20210301083320.943079-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301083320.943079-1-hch@lst.de>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] add remap_pfn_range_notrack instead of reinventing
 it in i915
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, linux-mm@kvack.org,
 dri-devel@lists.freedesktop.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 01, 2021 at 09:33:18AM +0100, Christoph Hellwig wrote:
> Hi all,
> 
> i915 has some reason to want to avoid the track_pfn_remap overhead in
> remap_pfn_range.  Add a function to the core VM to do just that rather
> than reinventing the functionality poorly in the driver.

It's not _notrack it's "rely on the tracking established by the struct
io_mapping". Exporting a _notrack version to drivers sounds like not
something we want to ever do. So I think you want a helper which takes the
io_mapping, and not something that encourages drivers to go full stupid.

> Note that the remap_io_sg path does get exercises when using Xorg on my
> Thinkpad X1, so this should be considered lightly tested, I've not
> managed to hit the remap_io_mapping path at all.

Needs an older machine and old userspace. intel-gfx CI should still check
whether it's all ok.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
