Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F33274F7B6F
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 11:19:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F5BD10E0F5;
	Thu,  7 Apr 2022 09:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com
 [IPv6:2a00:1450:4864:20::644])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 400D010E162
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 09:19:36 +0000 (UTC)
Received: by mail-ej1-x644.google.com with SMTP id l7so4111229ejn.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Apr 2022 02:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=tl9nBOnLqqP1/acS+yYHjDz2pgRvrY9cqBHbFKj8Fnc=;
 b=CBDEbkCCAkqWcu7rwSRxHuzvDQzAI6q2gOWepIQXIDBbJj5cPNZbu6U8yOAL3lfJYR
 xhKFp5hUopFdDtyiwJfVkQdRMsq1huLcJV7GkTRXOLg8M8+oumKCgOrVEZHJFOeZaqug
 QaS7Fun7MTS/4JRgL7uvADTsO+5Y9rvnLTgKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=tl9nBOnLqqP1/acS+yYHjDz2pgRvrY9cqBHbFKj8Fnc=;
 b=1mJpdEd7sjemlZlByBORNWzkD4p4zBF0e71fJ4bkR1vm/ejNfSRN/LTxk/IGhjPhtc
 zGnNpg0rYmBSOFEuYc6zNRTaIyRIRao8U5OYodnzxSgPfkr6uuqWw5vkaVWr6MYTLHgh
 RVnTqssiis1eCXH5BebqB/XAlCILs/W0AcEC/EFvBLa+67PvEkAl83gDXkyiOCg8EAnx
 RqSNhvNBCk3n9KwQIeo9TJdYOcsQYoBSqamR/cKrymkPwG89Lxg/lm3sHfeBUdCN11q6
 rAlrzrrILTg1Go2xA+fPQ6pRwMcWfOtLeTSn++tAZ/nWaECwbO8u8ScS0vwJVCjapFkz
 SqzQ==
X-Gm-Message-State: AOAM532zQkXJ/7oes1cW3Xd9X/14AvAJKvHgNmErR04PFWjYrpGED+dv
 xGKUEyNuKQiML9mqAFNpXcGlnA==
X-Google-Smtp-Source: ABdhPJzUgJqDlmh4A5Ht8QOIfc1rzltJqxuNxKdfx/yt4VDI386e+Hs+rpvAXO7SRwNbW/OkTGfw7g==
X-Received: by 2002:a17:907:6e16:b0:6e4:de0d:d93 with SMTP id
 sd22-20020a1709076e1600b006e4de0d0d93mr12253676ejc.29.1649323174807; 
 Thu, 07 Apr 2022 02:19:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 r19-20020a17090638d300b006d6e4fc047bsm7585498ejd.11.2022.04.07.02.19.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Apr 2022 02:19:34 -0700 (PDT)
Date: Thu, 7 Apr 2022 11:19:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <Yk6spNv/zSCB2ewe@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <ckoenig.leichtzumerken@gmail.com>, 
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
 Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>,
 linux-kernel@vger.kernel.org
References: <20220407085946.744568-1-christian.koenig@amd.com>
 <20220407085946.744568-16-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220407085946.744568-16-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 15/15] seqlock: drop seqcount_ww_mutex_t
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
Cc: Boqun Feng <boqun.feng@gmail.com>, Peter Zijlstra <peterz@infradead.org>,
 daniel.vetter@ffwll.ch, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Ingo Molnar <mingo@redhat.com>,
 Waiman Long <longman@redhat.com>, Will Deacon <will@kernel.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 07, 2022 at 10:59:46AM +0200, Christian K�nig wrote:
> Daniel pointed out that this series removes the last user of
> seqcount_ww_mutex_t, so let's drop this.
> 
> Signed-off-by: Christian K�nig <christian.koenig@amd.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Waiman Long <longman@redhat.com>
> Cc: Boqun Feng <boqun.feng@gmail.com>
> Cc: linux-kernel@vger.kernel.org

Yeah I don't think we'll ever need this again, ww_mutex aren't common and
the ww_mutex+seqlock thing wasn't the brighest idea.

Peter/Ingo, assuming you agree, can you ack this for merging through
drm-misc, or want to pick this up later on when the last user disappeared
in Linus' tree?

Cheers, Daniel

> ---
>  include/linux/seqlock.h | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/include/linux/seqlock.h b/include/linux/seqlock.h
> index 37ded6b8fee6..3926e9027947 100644
> --- a/include/linux/seqlock.h
> +++ b/include/linux/seqlock.h
> @@ -17,7 +17,6 @@
>  #include <linux/kcsan-checks.h>
>  #include <linux/lockdep.h>
>  #include <linux/mutex.h>
> -#include <linux/ww_mutex.h>
>  #include <linux/preempt.h>
>  #include <linux/spinlock.h>
>  
> @@ -164,7 +163,7 @@ static inline void seqcount_lockdep_reader_access(const seqcount_t *s)
>   * static initializer or init function. This enables lockdep to validate
>   * that the write side critical section is properly serialized.
>   *
> - * LOCKNAME:	raw_spinlock, spinlock, rwlock, mutex, or ww_mutex.
> + * LOCKNAME:	raw_spinlock, spinlock, rwlock or mutex
>   */
>  
>  /*
> @@ -184,7 +183,6 @@ static inline void seqcount_lockdep_reader_access(const seqcount_t *s)
>  #define seqcount_spinlock_init(s, lock)		seqcount_LOCKNAME_init(s, lock, spinlock)
>  #define seqcount_rwlock_init(s, lock)		seqcount_LOCKNAME_init(s, lock, rwlock)
>  #define seqcount_mutex_init(s, lock)		seqcount_LOCKNAME_init(s, lock, mutex)
> -#define seqcount_ww_mutex_init(s, lock)		seqcount_LOCKNAME_init(s, lock, ww_mutex)
>  
>  /*
>   * SEQCOUNT_LOCKNAME()	- Instantiate seqcount_LOCKNAME_t and helpers
> @@ -277,7 +275,6 @@ SEQCOUNT_LOCKNAME(raw_spinlock, raw_spinlock_t,  false,    s->lock,        raw_s
>  SEQCOUNT_LOCKNAME(spinlock,     spinlock_t,      __SEQ_RT, s->lock,        spin,     spin_lock(s->lock))
>  SEQCOUNT_LOCKNAME(rwlock,       rwlock_t,        __SEQ_RT, s->lock,        read,     read_lock(s->lock))
>  SEQCOUNT_LOCKNAME(mutex,        struct mutex,    true,     s->lock,        mutex,    mutex_lock(s->lock))
> -SEQCOUNT_LOCKNAME(ww_mutex,     struct ww_mutex, true,     &s->lock->base, ww_mutex, ww_mutex_lock(s->lock, NULL))
>  
>  /*
>   * SEQCNT_LOCKNAME_ZERO - static initializer for seqcount_LOCKNAME_t
> @@ -304,8 +301,7 @@ SEQCOUNT_LOCKNAME(ww_mutex,     struct ww_mutex, true,     &s->lock->base, ww_mu
>  	__seqprop_case((s),	raw_spinlock,	prop),			\
>  	__seqprop_case((s),	spinlock,	prop),			\
>  	__seqprop_case((s),	rwlock,		prop),			\
> -	__seqprop_case((s),	mutex,		prop),			\
> -	__seqprop_case((s),	ww_mutex,	prop))
> +	__seqprop_case((s),	mutex,		prop))
>  
>  #define seqprop_ptr(s)			__seqprop(s, ptr)
>  #define seqprop_sequence(s)		__seqprop(s, sequence)
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
