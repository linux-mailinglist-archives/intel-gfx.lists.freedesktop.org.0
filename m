Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9C2AE27A8
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Jun 2025 08:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF96910E0B8;
	Sat, 21 Jun 2025 06:58:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="m7mFIe0T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 353C610E0B8
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Jun 2025 06:58:26 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id
 af79cd13be357-7d38cfa9773so269295785a.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jun 2025 23:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1750489105; x=1751093905;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bUNdx/2ldmooF+wfGIUFoptMG2S7gkeOO/JL2A6zVvE=;
 b=m7mFIe0TnSCSUWN875T7MGG613sG+CzAgLiQa62ubrd+De3Nlf8q0KQVhOGHNQ/H1W
 ucctCo8DkmMHvTWMeUJ6rlUZHVqxB6EdJQIJvcqKWElUCRqfzVcrjYLmd2jBlEUx7eOH
 ZECmxuI7041+RMuQn+5UWWQNePPzUAFnYW3WcRT17ce19qcVHJfCfjYBbW73MCMTVF4T
 9zG/GIq+W0+qZbQLlqLVibnRHAsnU4Xs2L0+n+PDxnYll3YftU4KhSWE7+eT71E7rSH/
 JvgeinLq9no5bhF5mjhqbyI2ak/TKIbXJOBqbP3FWX1j2tnbLVAytX4OY+lJyKUV7iFm
 6kbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750489105; x=1751093905;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bUNdx/2ldmooF+wfGIUFoptMG2S7gkeOO/JL2A6zVvE=;
 b=IReRXHiFgQMSffQvLqXtN1NAX0BSP1u/TI6Z5NbA6LGGIUokQhEI54H26R3+unatpp
 ZU/NGereWQNt44VbYYzhJswsGqGWc3qFCEAMvhxDgkxOUQ+xIt7SBbDiagnrD/tryBG5
 dQIi+Oo/3Gj8I/0KNDb3VPo6xEeahsacP0aG+6+W8zu4l8aG0gco1U3CJlCdgFbQHp1L
 fOgAkexSUBXZJbA15e0VdJyTdLOJsfcvq+HUO2GiltlXHy2s+uUybf5kwxTSgGDYLGEo
 eJ0XCOUWqNfxVFqH5Idjw25AmRnPc0vKclZB7wxtNvm8xqw6IREX71PHEbVKKXoDDBn2
 YvBg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGXbm+LXvcR0rk6eLYxPl+NBqGvM0l/uLNYBBGMWE6GWZsAyywK1JxZ47XHMomKF6MbfOgCxmicTc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyQkYbab+F8SpChv6/nDVtxL47eWaBHR1Bln40U4aYWYMUGZABP
 5944VjQAgI9oj+PyNCUYX490Zt5LBq7tHuKHWPLhiQJEkJO/WxX9p1bhrMtyYlxEdouIzzthUaC
 KqYvjixiGmKsciOv0hsyQ61fhSEKgxLrDlO2AY620
X-Gm-Gg: ASbGncsHalPCAYVG+m7eWdLBtVvE8jmPYG2jQZD19Y80VIshPabZ8qihO6FG6SxJUG2
 YHyq7e3WCSsOXPxNAEXuoumhqMdBAgv+0rmXKIR70VIz5q1kkaRo2HPB2eKBQjK2Op1JsX8s8oX
 Cwt6I/e2qhhQLOPS6OfIL+px5BAcGGv35ycvi5mqusSA==
X-Google-Smtp-Source: AGHT+IEHz/JR7YYi2lViA2o0Sn5CmXAFfiTDbM+tNqv2elv69zznKvkvAvdBvr86Y6n0SdUPLLuoC5Osau5RVKtSEw4=
X-Received: by 2002:a05:620a:3185:b0:7d0:97b1:bfa with SMTP id
 af79cd13be357-7d3f98c769amr837848985a.8.1750489104823; Fri, 20 Jun 2025
 23:58:24 -0700 (PDT)
MIME-Version: 1.0
References: <20250618-reftrack-dbgfs-v15-0-24fc37ead144@kernel.org>
 <20250619171339.1bf28dc7@kernel.org>
In-Reply-To: <20250619171339.1bf28dc7@kernel.org>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 20 Jun 2025 23:58:14 -0700
X-Gm-Features: AX0GCFsu87MFC7EBTBMwXAysv70gmAeinWhBQnHzTvKtmqPLtPM0HB23PPllhK0
Message-ID: <CANn89iLX9XTk96=mU7pSmNkyFfj0DpMe_mTfOc+TYArLkwYXLg@mail.gmail.com>
Subject: Re: [PATCH v15 0/9] ref_tracker: add ability to register a debugfs
 file for a ref_tracker_dir
To: Jakub Kicinski <kuba@kernel.org>
Cc: Jeff Layton <jlayton@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>, 
 Kuniyuki Iwashima <kuniyu@amazon.com>, Qasim Ijaz <qasdev00@gmail.com>, 
 Nathan Chancellor <nathan@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, 
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Thu, Jun 19, 2025 at 5:13=E2=80=AFPM Jakub Kicinski <kuba@kernel.org> wr=
ote:
>
> On Wed, 18 Jun 2025 10:24:13 -0400 Jeff Layton wrote:
> > For those just joining in, this series adds a new top-level
> > "ref_tracker" debugfs directory, and has each ref_tracker_dir register =
a
> > file in there as part of its initialization. It also adds the ability t=
o
> > register a symlink with a more human-usable name that points to the
> > file, and does some general cleanup of how the ref_tracker object names
> > are handled.
>
> Thanks Jeff!
>
> I'm going to apply this based on v6.16-rc2 and merge to net-next.
> If anyone would like to also pull into their trees the hash will
> be 707bd05be75f. Happy to create a branch if necessary, too.

Nice work Jeff, thanks a lot !
