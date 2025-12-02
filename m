Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F20C9D0A4
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 22:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0131E10E6D4;
	Tue,  2 Dec 2025 21:18:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Tam4mmsB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com
 [209.85.128.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F40110E6AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Dec 2025 21:18:31 +0000 (UTC)
Received: by mail-yw1-f175.google.com with SMTP id
 00721157ae682-7866bca6765so51201617b3.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Dec 2025 13:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764710310; x=1765315110; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FYhGqDRGCK+cJn0UnOIQPro7GrvnzPHTnrrQsLBmDCo=;
 b=Tam4mmsBOAq86AI2Y/O1he6wiY35EOpR+ZBhkFoxEbDlg1hIPKKBZVGNV7NRCX26Vh
 OoqfeAZ10dqmKwpFlrRkPlc/S5SamiIoBLdTbk33HoiRzwXz9vP462N6RXdMyJKoU1U3
 uNuq2/b90TqjXNXRhdk9NewfeGLwpNGGNa20I+31IkNsXiaW/DnoGPW49HcUYrv0NVMd
 8tdemg4FegZ0Hpn07j4wOMR5YFn9fP/JQNHH+W8Rw4Qvo/vhbAJzulZ5jNc5iCpTze8p
 BjJkFm2GBSIcdI3JdlfLPPdhLjC0nKLLwoeb7FMbvpMFaX+5Ku1tl1GUJbU25QyvT4J1
 +gaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764710310; x=1765315110;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=FYhGqDRGCK+cJn0UnOIQPro7GrvnzPHTnrrQsLBmDCo=;
 b=PNl2/GnLaOOSIQ6an8RjbIS9R/VWpcU9iSK8FZZudxJCgzvx1QqAYW1nEk4a9kNUNK
 8U9yGb99/gS4frSxOmm4nNa5Kdj+7+B7brSQ8IKJ1AT8lvUOdTMOlWa4xAUOBHE9S3Zt
 SpksZK9tmDBRLEUhM5E4C7HLmCD9SZU8RYnsC6+YfShism20BO19FCkD6nt4wtPkWscO
 ONZEy4QZ7tm37uunIbOtHtrB9fcDlfcGisgLqbozyX2sO8exCSs8Z8403CGRAh+z6Bce
 Cx9PtIu6R00J2OT2Yydd6cksxTSidMNd130rv9GzTXqkN2RxTsKJPFB6sQOMAN0n9qsb
 2IWA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWAhm7eYALKPdCftazt+Uy4MXyNoy77oBOpxvYPRntk7+Sylz2jUzLHpvQhJzpeIcqCZL93WJmGi/A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx2pDJdhg44mICeyFlNPzZm0VjI1a+zJ4cWsoxdn3z6KWDgcYBP
 gAlCSMX7bi3lzN609xLm10+z0FMYJpCrIWMSYSWeeeZ7wA8X2EhJH+Ka
X-Gm-Gg: ASbGnctOHhfIv2t+rxTOjH0jI6Rc1BTfmLJhj3aHaVKBs+B8EC1/UxUka7lq5T6tV0d
 FEfOyqZcrKb5pf2yzUkaLryduUy86Q9DMdPR66LM9W6pb6vkVpyKirkf1RI4o3ILMtHNZcthRYd
 88/tR0xxEsXvXGriAW19tP6t8Mdb2oi3+9Mi+2QnQnvY4jkglraEj3anBXJPGgyDHg9VWSYNRix
 XgOujIcTetCJ0/A7IMBLncY/rJj+XvBI2IOKh/FZTQxAwkcL/g3bmCfv6vVPVJMJBnM9DZgzh9Z
 OmdTPskWiaV5kgKj9T0tGtqhGVxoeRU0diwuC6fy0F3GgJHIvBJ6Bu19O5TgEFXUJe/nUvRWzP8
 3EkF5EbKl+jgVQKw/vOVYYU8+VtIG5IHmWMNhYJAGsuhSLzjq7W56Xa/2ZLdsIXIxro6jIHiNrv
 Q633kzwzY=
X-Google-Smtp-Source: AGHT+IEHsQzpfTBjBHA4dtIeH7oiiPcnL1uTXbBAuV28ldULX2+K4VUyMpGMegei8EdtYuGbElbA8Q==
X-Received: by 2002:a05:690c:6f13:b0:786:7aaa:a070 with SMTP id
 00721157ae682-78c0beeaf33mr40397b3.10.1764710310027; 
 Tue, 02 Dec 2025 13:18:30 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:3422:8bf9:97bc:b085])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78ad100e937sm67330467b3.27.2025.12.02.13.18.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Dec 2025 13:18:29 -0800 (PST)
Date: Tue, 2 Dec 2025 16:18:29 -0500
From: Yury Norov <yury.norov@gmail.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Petr Pavlu <petr.pavlu@suse.com>,
 Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-modules@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] kernel.h: drop STACK_MAGIC macro
Message-ID: <aS9XpaiGXn2upVKB@yury>
References: <20251129195304.204082-1-yury.norov@gmail.com>
 <20251129195304.204082-2-yury.norov@gmail.com>
 <d854dadd78a43f589399e967def37a0eda3655c2@intel.com>
 <3m64k5fagw7hp2duo43t5fldyn6argdjripx3nn6onxbr6xu6w@iwiepyn5krf6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3m64k5fagw7hp2duo43t5fldyn6argdjripx3nn6onxbr6xu6w@iwiepyn5krf6>
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

On Tue, Dec 02, 2025 at 09:58:19PM +0100, Andi Shyti wrote:
> Hi Jani,
> 
> On Mon, Dec 01, 2025 at 09:46:47AM +0200, Jani Nikula wrote:
> > On Sat, 29 Nov 2025, "Yury Norov (NVIDIA)" <yury.norov@gmail.com> wrote:
> > > The macro is only used by i915. Move it to a local header and drop from
> > > the kernel.h.
> > >
> > > Signed-off-by: Yury Norov (NVIDIA) <yury.norov@gmail.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_utils.h | 2 ++
> > >  include/linux/kernel.h            | 2 --
> > >  2 files changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> > > index a0c892e4c40d..6c197e968305 100644
> > > --- a/drivers/gpu/drm/i915/i915_utils.h
> > > +++ b/drivers/gpu/drm/i915/i915_utils.h
> > 
> > i915_utils.h is on a diet itself. STACK_MAGIC is only used in selftests,
> > please put this in i915_selftest.h.
> > 
> > I guess also need to include that from gt/selftest_ring_submission.c,
> > the only one that uses STACK_MAGIC but doesn't include i915_selftest.h.
> 
> Doing this cleanups is a bit out of the scope of this patch.
> Given that the patch itself has quite a good consensus, let move
> it forward and I can take care of the i915 cleanup once it gets
> merged.

I'm already testing it in my tree:

https://github.com/norov/linux/tree/sm1

If everything is fine, I'll submit v2 with this change, otherwise will
schedule it for future improvements.
