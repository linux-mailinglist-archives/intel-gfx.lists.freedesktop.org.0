Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0218BA37A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 00:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2C711271D;
	Thu,  2 May 2024 22:52:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="M8W2UUrh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163D011271C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 22:52:23 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id
 d2e1a72fcca58-6f074520c8cso8093513b3a.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2024 15:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1714690342; x=1715295142;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CaFsfP7DKpgQNfEAphXpGxTTBp7ycaxayFvxorBszwQ=;
 b=M8W2UUrh72KGcgRNY9GrseNc8mYJ6nBy9G7+KTdmtRj3QO3TkhTU9TkdkOiUC9Tmtm
 G4SIH7+/i5rXjzymplPDTcSeyAWsrtHv6SALqVf2GPftSpohTmJ1m1djGpXCVa7HjNIr
 L8Cj13gZWIaLBDj6yfnFqlUocil46KxUj+ueg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714690342; x=1715295142;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CaFsfP7DKpgQNfEAphXpGxTTBp7ycaxayFvxorBszwQ=;
 b=Kg6Cnej7wgXPMW1qWhh/RhJu0pKnhIC5deQIw0FruaI06+g4qr4g9nBXM885bmltb9
 Y0kJQ1OF2o8nZd2GI3WShpBdIGWw34SSlXBGBYSTJHUWW1Dt3bj4nsWg/WcVcQiumtwd
 giOar+TwM15O3/rXLTCI7kDcypyEnCcx9eXmi/gpiseEutyWlzm+GtKa3aZBtsDnKtTv
 /TvtVfbrxX8HFrrnVcvC4u7aDs4rx34UXRRxTAE6wZaqf7dvdwXiBmKZIT8FOvxfSaA0
 mpylp/DR5xo06gj3+7NI9pBvgDP1NaVqakG74sbvhRHwuipp6mNr1Hg3mjHLKMOFPGdk
 Cl1Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCXKo5NEQ8GD7L1hnviWT2bTpsDNhxOC/2FBCnMUIratIgZYmv//TuHDsh4PZTVemsvAs714UimxCCoHj/nC8r1HsIft5gSNZPUnzNQoAEb+
X-Gm-Message-State: AOJu0YxhX8m10yagDoYVbnaOa0rllYMGqXZOFGjElql24izTgREx2E1W
 AiKEDmUqdhMgK+EpZ01XOxtg8JcfGwmKF/ZoAqPjMsCthc6zjK9SJ8Atwsl16Q==
X-Google-Smtp-Source: AGHT+IF6DEKM5OKMglZmn4Z71ee5/EXabaGMMWGKP6YJ9ZMYVLGTNQcbbL5IuYd27jIZQ8XL5S2yPQ==
X-Received: by 2002:a05:6a20:e687:b0:1a9:8836:ae37 with SMTP id
 mz7-20020a056a20e68700b001a98836ae37mr1313878pzb.12.1714690342568; 
 Thu, 02 May 2024 15:52:22 -0700 (PDT)
Received: from www.outflux.net ([198.0.35.241])
 by smtp.gmail.com with ESMTPSA id
 iz14-20020a170902ef8e00b001eac94472f6sm1877632plb.93.2024.05.02.15.52.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 May 2024 15:52:21 -0700 (PDT)
Date: Thu, 2 May 2024 15:52:21 -0700
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
Message-ID: <202405021548.040579B1C@keescook>
References: <20240502222252.work.690-kees@kernel.org>
 <20240502223341.1835070-5-keescook@chromium.org>
 <20240502224250.GM2118490@ZenIV>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240502224250.GM2118490@ZenIV>
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

On Thu, May 02, 2024 at 11:42:50PM +0100, Al Viro wrote:
> On Thu, May 02, 2024 at 03:33:40PM -0700, Kees Cook wrote:
> > Underflow of f_count needs to be more carefully detected than it
> > currently is. The results of get_file() should be checked, but the
> > first step is detection. Redefine f_count from atomic_long_t to
> > refcount_long_t.
> 
> 	It is used on fairly hot paths.  What's more, it's not
> at all obvious what the hell would right semantics be.

I think we've put performance concerns between refcount_t and atomic_t
to rest long ago. If there is a real workload where it's a problem,
let's find it! :)

As for semantics, what do you mean? Detecting dec-below-zero means we
catch underflow, and detected inc-from-zero means we catch resurrection
attempts. In both cases we avoid double-free, but we have already lost
to a potential dangling reference to a freed struct file. But just
letting f_count go bad seems dangerous.

-- 
Kees Cook
