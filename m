Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3149DA2ACF1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 16:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE1F10E8B4;
	Thu,  6 Feb 2025 15:46:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bpfcw9WQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFA6610E010
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 18:53:45 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id
 4fb4d7f45d1cf-5d0ac27b412so6013377a12.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Feb 2025 10:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738608824; x=1739213624; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=V45orYruD99ZGljVryaLEniUB/JJelA3I5hj+yh3ILs=;
 b=bpfcw9WQ4qr2cL+fKjxAtEfBMOpKKzPj0n2DrRRs6XbD5uWhG+RYZZXfBymP1Tosk0
 61AnwGTOYSvG9WPn00RJ7+k7GZv34CjEq1p/jLG8Ck45DSTRm3NPZFlfSxp3dmphIHPC
 gX43RMTvH5WB736mV+l/89fGOpGeEmGqQdLuXnzd0gRnvhLitoyRKdckbaVv1yNFb/jT
 Qm6KRuOEZOlUROtNqCQLvfXeTc4PUk8KvJyXLi2zJvCbJ1BVQi+uXNHvf1CuoD6ZosK8
 ijmPM4SQ+nhYX/Tf6YjMoDk5ZNZg32jZf1Y23e1vWpqhFMhA8W52T+T0VlhDh11wiHkH
 vx3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738608824; x=1739213624;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=V45orYruD99ZGljVryaLEniUB/JJelA3I5hj+yh3ILs=;
 b=h4LfBHMcM/WMw47VCTIYZO9ir0saEHisOGw6GdlBE2lE6B2kg6gfzCZ1LSLu/AUGkP
 z31NkxDLL11eqCzV1Wx7ZWpV/XHu5R3vKSE3WlTGrUHQa/N3vWKKtb9MhqxGfqXNTthk
 TrXf/MWIFPED0qP+D7Nfa+3C8dD8l6P9a8eP4QP8Go4mGgjnsR6HgQgjHnrmFu0ACuyy
 HUl+q2sRW/2vPag9hJqm/B52gzzk9RcxFami+aoT+h+V66vTgDDSETEwqM+FQ3dZj/DI
 S9KdVGSMsR7j1ST9AWKQdSW9pgMhMLXxDBfujQmfuzmwxybaOzR4SsCTEYcTWju95sLU
 G4xQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU24lc8HXgf5HVz9eRWyd8ythg73SyCwGjJoACI1yPqT/VbwRWuTC7cCKx7C96bOfI33M8oOQz7RFc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxpH0UGzIIELKhjlIMDADPyZ9k4UHM0fb1c+Ncv0lGN0YYrl9bo
 XzAUgfrFL6kW93HTGgozpKkND9fVto8FCeFliDavA8/uQpD3qaL3SWsfMpadTj6/heWHcqJg+sz
 6/yaRHLs06rIF+kgkXmGWK/FUKH8=
X-Gm-Gg: ASbGnctpIXfooqLzGQ3yzPyIqwJLgeqW9jmzRvc6m3eAfr3gJvYLHe5TMCUMNMZhBuG
 UYokOP/Ssne7xpEO3F0yXS4lFM2w6z1Wscvds+YnvjH75gFXPw/lgRt7XJEh5CQn/sVmNKAk=
X-Google-Smtp-Source: AGHT+IF95caPTmXSHw+ZnuWO6ClkTBoAkbTbyf2uJM36DwW9BUz4Zoj9UJGfUtgpjHYOwF5cBpgNY5soNE1vVAgyjS4=
X-Received: by 2002:a05:6402:a001:b0:5dc:88dd:38b3 with SMTP id
 4fb4d7f45d1cf-5dc88dd3af0mr10516798a12.12.1738608824094; Mon, 03 Feb 2025
 10:53:44 -0800 (PST)
MIME-Version: 1.0
References: <20250131001806.92349-1-vishal.moola@gmail.com>
 <20250130164836.1163f66bede77ec4bcc9d4b9@linux-foundation.org>
In-Reply-To: <20250130164836.1163f66bede77ec4bcc9d4b9@linux-foundation.org>
From: Vishal Moola <vishal.moola@gmail.com>
Date: Mon, 3 Feb 2025 10:53:32 -0800
X-Gm-Features: AWEUYZkvEN5prL1F_CZmkbE0FLPWU535lcJANzU1EwMBGd12_iUZqYIrGpcIM-U
Message-ID: <CAOzc2pyKFJKxkTs989rMzRaMSwR+EBXDiCB-2xBRTiu=Y8FLvw@mail.gmail.com>
Subject: Re: [PATCH 0/2] vmalloc: Introduce vmap_file()
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org, hch@infradead.org, 
 urezki@gmail.com, intel-gfx@lists.freedesktop.org, 
 Matthew Wilcox <willy@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 06 Feb 2025 15:46:02 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 30, 2025 at 4:48=E2=80=AFPM Andrew Morton <akpm@linux-foundatio=
n.org> wrote:
>
> On Thu, 30 Jan 2025 16:18:04 -0800 "Vishal Moola (Oracle)" <vishal.moola@=
gmail.com> wrote:
>
> > Currently, users have to call vmap() or vmap_pfn() to map pages to
> > kernel virtual space. vmap() requires the page references, and
> > vmap_pfn() requires page pfns. If we have a file but no page references=
,
> > we have to do extra work to map them.
> >
> > Create a function, vmap_file(), to map a specified range of a given
> > file to kernel virtual space. Also convert a user that benefits from
> > vmap_file().
> >
>
> Seems like a pretty specialized thing.  Have you identified any other
> potential users of vmap_file()?  I couldn't see any.
>
> If drm is likely to remain the only user of this, perhaps we should
> leave the code down in drivers/gpu/drm for now?

This function is generally useful for file-systems that use the pagecache.
I simply chose to highlight the most obvious user that benefits from it (an=
d
so that the function is introduced with a user).

I haven't identified any other specific users of vmap_file() myself. I know
Matthew has some other ideas for it; I've cc-ed him so he can chime in.

>
> Also, the amount of copy-n-pasting from vmap() into vmap_file() is
> undesirable - code size, maintenance overhead, etc.

I wasn't particularly a fan of it either, but I couldn't find a more readab=
le
way to do this (without reorganizing multiple other functions). Aside from
the initial flags checks, the rest of the function is slightly different fr=
om
vmap(), so calling existing functions won't suffice.

I considered passing more arguments through to vmap(), but I think that
would make the code more confusing, especially because the 2 functions
have some different usage prerequisites.
