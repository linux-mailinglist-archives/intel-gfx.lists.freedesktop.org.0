Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 988D98BA4A8
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 02:41:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91BF4112773;
	Fri,  3 May 2024 00:41:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="PmsBayAs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
 [209.85.214.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DC5B112772
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 00:41:25 +0000 (UTC)
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-1ed41eb3382so277975ad.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2024 17:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1714696885; x=1715301685;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Ag+GJVh/sQYDPGeOkIngGB4bIRPX939JLId/QM0OSvU=;
 b=PmsBayAsaojD3C1JEmj97ASYMkTPZbivCI26PNDwADfDXXrFCziiH5Z4CNrVo9q6I5
 q1QUf3VxUMvVv8d7yOQhDcdP0FqqpQKbH6xU6OSGAO5Mn6CN/MkGnNsu8AlY3U8ezhPj
 /9AZxpJwsHBLVUvyegZtpY4Kwt78j8xe30Gvo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714696885; x=1715301685;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Ag+GJVh/sQYDPGeOkIngGB4bIRPX939JLId/QM0OSvU=;
 b=GnNn9KlyStct0HDddRLvvOLvX4xPdh+F8XX3s7v2zBBzFi3YThM0g3+W4ubSNRhXvz
 ob0f9ZPTtkxaaDQWB6o1VSl1xkJmjGYGSuIIcRDXjYOgZMk8QP4bNrj3nSnnrQidTMPU
 9ziRt6gqFryChJY8F0y0Xnf+NYoMs4iaRFZQ7w0VBTRuSSM4YZIO2qJ0ur2PG4opqqU7
 O9uKuIiK8ZW466E8g1uELvKeBdOU7tIH2x28xOZhfUhv25zEwv5y7AQRijii6bxDMYom
 YCrBIIDJQT2WBhZaNX076b8UryTVlbcZTkeG9rtW8zL4AFzQYiwlKR1joh6Hdf5mi4ws
 p17A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXOzFI9kV/Ch6wwCec7KTvj4KcCE91UkCco3rKQ9xZwH6r1vw+zsVWty34gQuQGhrgTpYfWs0zulMfCZoOZPwX5Iameav9G7Ng8dysmQE5y
X-Gm-Message-State: AOJu0YySM+AldExQt2M92i1YuW2QfvNTCOPm0obH6BQ07N07tZD3Buou
 +pN/2rEx1VUU5Ksy2v5xnhUQKSTOoUeJw1jMzgtvkHgPMUWkbG5Rc/BNuD1k5g==
X-Google-Smtp-Source: AGHT+IGVw+PoNIInYTycTHxfqWIBoyYdGBoTX5SvKBDwlvlFcv6C6IZTK45dYCllqIK8OWMFfs/z6Q==
X-Received: by 2002:a17:902:f648:b0:1e4:19e3:56cb with SMTP id
 m8-20020a170902f64800b001e419e356cbmr1772102plg.12.1714696885501; 
 Thu, 02 May 2024 17:41:25 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 f2-20020a170902ce8200b001ecf865a019sm1958663plg.224.2024.05.02.17.41.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 May 2024 17:41:25 -0700 (PDT)
Date: Thu, 2 May 2024 17:41:23 -0700
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
Message-ID: <202405021736.574A688@keescook>
References: <20240502222252.work.690-kees@kernel.org>
 <20240502223341.1835070-5-keescook@chromium.org>
 <20240502224250.GM2118490@ZenIV> <202405021548.040579B1C@keescook>
 <20240502231228.GN2118490@ZenIV> <202405021620.C8115568@keescook>
 <20240502234152.GP2118490@ZenIV> <202405021708.267B02842@keescook>
 <20240503001445.GR2118490@ZenIV>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240503001445.GR2118490@ZenIV>
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

On Fri, May 03, 2024 at 01:14:45AM +0100, Al Viro wrote:
> On Thu, May 02, 2024 at 05:10:18PM -0700, Kees Cook wrote:
> 
> > But anyway, there needs to be a general "oops I hit 0"-aware form of
> > get_file(), and it seems like it should just be get_file() itself...
> 
> ... which brings back the question of what's the sane damage mitigation
> for that.  Adding arseloads of never-exercised failure exits is generally
> a bad idea - it's asking for bitrot and making the thing harder to review
> in future.

Linus seems to prefer best-effort error recovery to sprinkling BUG()s
around.  But if that's really the solution, then how about get_file()
switching to to use inc_not_zero and BUG on 0?

-- 
Kees Cook
