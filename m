Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9EA78D7DF
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 19:51:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01A010E56A;
	Wed, 30 Aug 2023 17:51:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 698EA10E56A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 17:51:16 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id
 41be03b00d2f7-564cd28d48dso78073a12.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 10:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693417876; x=1694022676; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=mWxHZBHe+McomQO2YHa9mxYrBp2VqVWidmsS0Hpwi+s=;
 b=IKGO1ElYKXNqQmiVJ05+RZhgmEGJaoiKGE8b6sB6bXd3LlksulDEjv8yO2KT39ge2f
 DiO+KN6v5ORA4t2rydqOc6FKcLb0fUENxnB6UjYGwtrRDGx8wNGMGtlYqIHeECpExDOi
 60Kpq5x0TVpp91MXyB92aRjGviv2O7xN36h9mG15Oz+T2syj+E/FtlaWIqpqW1SycHzn
 ustDlDV1Y7Cl6DOFbj6/mMgT7+i5lDUCDijXkDayvZJZTBVqzf5/hhrmpPI3N1PSxGnk
 V9CwAqqWD6S66HDDxkAst3jo/6Z2pqNQMbrhErUJBgi86+eMnZON+y3PorcoqQ0P94vu
 H50w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693417876; x=1694022676;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=mWxHZBHe+McomQO2YHa9mxYrBp2VqVWidmsS0Hpwi+s=;
 b=MTajn0gxhnPlYWNKlBuGuKUQrDBL39BlZjcZ6WAqOZSjmj+VWwRM7dhXj+ynSzRo3r
 uCDr240KQNMEKh8FrL2mAjxzIrYK2WVLFT6hOriunYHGtK2nnmyhS24EJp3uHV3qbB6v
 NjXc8Dca20yWLnUFptfrXCJAitQGdzweKqIm9T3NckdCGrJGNymIOCPb9RVbTD8al/3T
 putrlDHBIXxpx3B/VG3boggP1zfSgCaeH4T92gp9Z9SPxqe1gbX+fOdaDbDEnmaLu+Wa
 OTFN+ZF54i8x7xfNdfr5r6fWQLnLMzS4AqJ09aboGK9rmLeKSTYjXAxDKOEgTocKCg8K
 yFGg==
X-Gm-Message-State: AOJu0YwCQ0SQMFjEO4zkEh1CTXZzyPxskFJZq2F9r54C3TVxsCQ/UHRJ
 Kx547nMIxaV57N4ugyc8vzU=
X-Google-Smtp-Source: AGHT+IFOnDLb75qnIk8shTUqbVkDhI7QMBhXtBxk+doHCAIlVlzWjbe70pnsbZITl3aGZjTkxhiRNA==
X-Received: by 2002:a17:90b:196:b0:268:81c6:a01f with SMTP id
 t22-20020a17090b019600b0026881c6a01fmr2926973pjs.26.1693417875803; 
 Wed, 30 Aug 2023 10:51:15 -0700 (PDT)
Received: from localhost (dhcp-72-235-13-41.hawaiiantel.net. [72.235.13.41])
 by smtp.gmail.com with ESMTPSA id
 nh5-20020a17090b364500b0026b0b4ed7b1sm1525450pjb.15.2023.08.30.10.51.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Aug 2023 10:51:15 -0700 (PDT)
Date: Wed, 30 Aug 2023 07:51:13 -1000
From: Tejun Heo <tj@kernel.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <ZO-BkaGuVCgdr3wc@slm.duckdns.org>
References: <f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.com>
Subject: Re: [Intel-gfx] WQ_UNBOUND warning since recent workqueue
 refactoring
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
Cc: intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

(cc'ing i915 folks)

On Wed, Aug 30, 2023 at 04:57:42PM +0200, Heiner Kallweit wrote:
> Recently I started to see the following warning on linux-next and presumably
> this may be related to the refactoring of the workqueue core code.
> 
> [   56.900223] workqueue: output_poll_execute [drm_kms_helper] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
> [   56.923226] workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
> [   97.860430] workqueue: output_poll_execute [drm_kms_helper] hogged CPU for >10000us 8 times, consider switching to WQ_UNBOUND
> [   97.884453] workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 8 times, consider switching to WQ_UNBOUND
> 
> Adding WQ_UNBOUND to these queues didn't change the behavior.

That should have made them go away as the code path isn't active at all for
WQ_UNBOUND workqueues. Can you please double check?

> Maybe relevant: I run the affected system headless.

i915 folks, workqueue recently added debug warnings which trigger when a
per-cpu work item hogs the CPU for too long - 10ms in this case. This is
problematic because such work item can stall other per-cpu work items.

* Is it expected for the above two work functions to occupy the CPU for over
  10ms repeatedly?

* If so, can we make them use an unbound workqueue instead?

Thanks.

-- 
tejun
