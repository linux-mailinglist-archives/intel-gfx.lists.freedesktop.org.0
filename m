Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B098BA3E5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 01:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB5A112735;
	Thu,  2 May 2024 23:21:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="cMCXYtdt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CBC6112735
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 23:21:14 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id
 d2e1a72fcca58-6f28bb6d747so7256509b3a.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2024 16:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1714692074; x=1715296874;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Yb4bKEByKdlz4UZjReMUHUSYQEXXrh5q/y+c7lUVAhc=;
 b=cMCXYtdt6Y5Fd0KMVe1LYV5ff0lwqS1YVxQAVzx4ele4HY+W0EqZbr94+V3P3IgyVF
 9Xl+oBOE2Lhw0fVkgstUhhVwnwJlpv/UHFA1Ai1TGbmgHIscLkQvqASBNWTmrJGRAI5K
 kS2Cy8Eq0OX9h9KfmMJuRloJhx6i3SqPGeDVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714692074; x=1715296874;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Yb4bKEByKdlz4UZjReMUHUSYQEXXrh5q/y+c7lUVAhc=;
 b=uzkp4nZDtLjRW0TSomjFyO8gQqtyRBehf5/rju2iK3ePQ+5nEaW/MxQwg35kQDAFrX
 qq2ALs76VQdpf5061+ml79jgIUA6s8GR7vEx4tR8zz2S68WjXbp5JFL9bJvBadVXKAsP
 994i4xhiOnjJDTDkSHI/eTapewA5l0pjdAwSOV0fN3IJnnQdykCBQn8RowZc1SEqwd68
 YQjPM/tAHPrq7Zfk+RE0gJC0X5e/+/D4VdwR1RZsBumru/QNy7rIb1dpmfH1Ei66JEpu
 2mGs87C56RgG3RSsP7cpqyv28hIAsFvqX1wGh6ybDyXO3MVz94i4JxBgi5JGoXeFTQsb
 GpNQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV105+F+HL8Xdm9iMFF4Mi5CEy8kl2DxYUfkbSo3L8Gw33zqh+kC4/Ybsx0b9KDBjRc2rVu7PRpbBtV4buEjsfspJHEwn1d3LQhBss3qKSC
X-Gm-Message-State: AOJu0Yz2wJdiF8oNJ7dys/TgO507ZRBq5+N9gJ3wDNgiCDjbAfWkiZA6
 K2yuTmHg8P4l49M3KKnAT5vexccs45H5SObzdlLMnqZkmXO5RBa3T+7Hh1tXpA==
X-Google-Smtp-Source: AGHT+IErA5BfNjNMgVipEBvX/O4/Zlw4xwfnpXOv3ZrPWth9wG6pzC2gQkNN14O91XqQe1Da/qOaqw==
X-Received: by 2002:a05:6a20:7f96:b0:1a9:b2ee:5f72 with SMTP id
 d22-20020a056a207f9600b001a9b2ee5f72mr1455527pzj.36.1714692074451; 
 Thu, 02 May 2024 16:21:14 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 ls30-20020a056a00741e00b006f4123491d2sm1821750pfb.108.2024.05.02.16.21.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 May 2024 16:21:13 -0700 (PDT)
Date: Thu, 2 May 2024 16:21:13 -0700
From: Kees Cook <keescook@chromium.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 linux-fsdevel@vger.kernel.org, Zack Rusin <zack.rusin@broadcom.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Will Deacon <will@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Kent Overstreet <kent.overstreet@linux.dev>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>, Nicolas Schier <nicolas@fjasle.eu>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kbuild@vger.kernel.org,
 linux-hardening@vger.kernel.org
Subject: Re: [PATCH 5/5] fs: Convert struct file::f_count to refcount_long_t
Message-ID: <202405021620.C8115568@keescook>
References: <20240502222252.work.690-kees@kernel.org>
 <20240502223341.1835070-5-keescook@chromium.org>
 <20240502224250.GM2118490@ZenIV> <202405021548.040579B1C@keescook>
 <20240502231228.GN2118490@ZenIV>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240502231228.GN2118490@ZenIV>
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

On Fri, May 03, 2024 at 12:12:28AM +0100, Al Viro wrote:
> On Thu, May 02, 2024 at 03:52:21PM -0700, Kees Cook wrote:
> 
> > As for semantics, what do you mean? Detecting dec-below-zero means we
> > catch underflow, and detected inc-from-zero means we catch resurrection
> > attempts. In both cases we avoid double-free, but we have already lost
> > to a potential dangling reference to a freed struct file. But just
> > letting f_count go bad seems dangerous.
> 
> Detected inc-from-zero can also mean an RCU lookup detecting a descriptor
> in the middle of getting closed.  And it's more subtle than that, actually,
> thanks to SLAB_TYPESAFE_BY_RCU for struct file.

But isn't that already handled by __get_file_rcu()? i.e. shouldn't it be
impossible for a simple get_file() to ever see a 0 f_count under normal
conditions?

-- 
Kees Cook
