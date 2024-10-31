Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 693E69B7E3A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 16:21:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D1EC10E12C;
	Thu, 31 Oct 2024 15:21:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b="2MkmxrEE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D1B10E12C
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:21:46 +0000 (UTC)
Received: by mail-io1-f41.google.com with SMTP id
 ca18e2360f4ac-83aacecc8efso63855239f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 08:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1730388106; x=1730992906;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=h6DRLiaAF06vSTpnmWA/JzrGwHB4JSnoNRs6CjLzTOo=;
 b=2MkmxrEELTdUansICuSR6lRPjn1is2KuLnaMVUoGQqU85pIX03BMrvGYk064INYJGo
 zT1Jrh24NA6S9F/hm4HOdthuUdeFFaSmT5FiIcU2l/DanT8E0KMc1WTgWev5jm1ik37q
 1ue7NyDgHXl4WBNu/cWTMrJfHn99PKfEzHd4OF3bMzIcqp8x5AXTpbCqjo1eCYjD5/JJ
 fjMH1IBrADrv0abYQgAAtWuIrcwLvE1oqzcgN3igOz85eft0bL7jQs+zhk8mZpXf28SL
 hybx4o18k+g6Xsy6plfBBkTPeQhDV2uK/QfRzzRNBwQrk0F6cdK5HUyvSwcH8YHxuPbO
 Yk2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730388106; x=1730992906;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=h6DRLiaAF06vSTpnmWA/JzrGwHB4JSnoNRs6CjLzTOo=;
 b=pnnLf1scP1q19tpqvcwHqV23zSqwujN3nm3AqkH1t2oR/1VwAhT+HGKB3QoFvt3LqD
 sx3gk9wJhDzXE0vQm87voQ5l15x1oDLjZpnd/pgjIC5SIXi6lEjLBRJOB5kAF/VJef4t
 6VHT2CayLBfJ0ct44bg9TOvOAOhIlJW7tcaNceOp2Hmu6obHAzLdADqXWRPxlXGshCVS
 9ng4MZi+HbwBXJWmQJJbj3D4bUZflCCscO34uZN8mek8jCMBsdQDcBn3DJz+QqpuO5P/
 GapFQCjze0OOowPztqx47/lEzAtalkQayeuxP5ZRJft7q0lr+qK+R5xuTOSJthme9dF3
 dj2g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVoSR7u9vZQhVvwaLGOpHuYaqmOdMVHQ4X1mldCgQCBQSWecw0JAukoeC5Xc579PFIk/gHUHMF0O7Q=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxLKk1Cai164amI76Tn1itlafnGtt2VGMcx0wTkAYq0e5TlPNao
 BgpBBNU1adcwSRY5hfxoDhJEMXQr59407Sixy4/vm2VcrwlC41m5tzMERJKjIdU=
X-Google-Smtp-Source: AGHT+IGGUaCMfX5oSCNwHpwRyR3bCSWZZozym4dVHbPqPiHULcwzzh+N6aXDrwQ+xURGyI+4gG/rGw==
X-Received: by 2002:a92:4b0b:0:b0:3a0:abd0:122 with SMTP id
 e9e14a558f8ab-3a6aff502e2mr2996645ab.8.1730388105857; 
 Thu, 31 Oct 2024 08:21:45 -0700 (PDT)
Received: from [192.168.1.116] ([96.43.243.2])
 by smtp.gmail.com with ESMTPSA id
 8926c6da1cb9f-4de049a43efsm332466173.128.2024.10.31.08.21.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Oct 2024 08:21:45 -0700 (PDT)
Message-ID: <878a0ef4-2870-49a8-83dd-ede33b513c40@kernel.dk>
Date: Thu, 31 Oct 2024 09:21:43 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v2 05/19] io_uring: Remove redundant hrtimer's
 callback function setup
To: Nam Cao <namcao@linutronix.de>,
 Anna-Maria Behnsen <anna-maria@linutronix.de>,
 Frederic Weisbecker <frederic@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Kees Cook <kees@kernel.org>,
 linux-kernel@vger.kernel.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, x86@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, John Stultz <jstultz@google.com>,
 Oliver Hartkopp <socketcan@hartkopp.net>
References: <cover.1730386209.git.namcao@linutronix.de>
 <07b28dfd5691478a2d250f379c8b90dd37f9bb9a.1730386209.git.namcao@linutronix.de>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <07b28dfd5691478a2d250f379c8b90dd37f9bb9a.1730386209.git.namcao@linutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

On 10/31/24 9:14 AM, Nam Cao wrote:
> The IORING_OP_TIMEOUT command uses hrtimer underneath. The timer's callback
> function is setup in io_timeout(), and then the callback function is setup
> again when the timer is rearmed.
> 
> Since the callback function is the same for both cases, the latter setup is
> redundant, therefore remove it.
> 
> Signed-off-by: Nam Cao <namcao@linutronix.de>
> Cc: Jens Axboe <axboe@kernel.dk>
> ---
>  io_uring/timeout.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/io_uring/timeout.c b/io_uring/timeout.c
> index 9973876d91b0..2ffe5e1dc68a 100644
> --- a/io_uring/timeout.c
> +++ b/io_uring/timeout.c
> @@ -76,7 +76,6 @@ static void io_timeout_complete(struct io_kiocb *req, struct io_tw_state *ts)
>  			/* re-arm timer */
>  			spin_lock_irq(&ctx->timeout_lock);
>  			list_add(&timeout->list, ctx->timeout_list.prev);
> -			data->timer.function = io_timeout_fn;
>  			hrtimer_start(&data->timer, timespec64_to_ktime(data->ts), data->mode);
>  			spin_unlock_irq(&ctx->timeout_lock);
>  			return;

Should be fine, io_timeout_complete() is only used for non-linked
timeouts.

Reviewed-by: Jens Axboe <axboe@kernel.dk:

-- 
Jens Axboe
