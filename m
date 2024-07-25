Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C37993C6E4
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 17:58:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3112310E88B;
	Thu, 25 Jul 2024 15:58:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="ePAFCYAa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BB610E88B
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 15:58:11 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id
 46e09a7af769-7044c085338so5464a34.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 08:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1721923091; x=1722527891; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=dpgn147gAQlCC9it7mH7Kj/P0ycFxQtD+fSctqinntk=;
 b=ePAFCYAaDRIDOG8M9nIjA3fQ54UdMr06Yb1SCvO2qr7rqZ316J66/Btd20eCZfDvY+
 5+CEaXkMS/4ks9h5+dWnYl/Iu2fita4dS5bc02lbqSe231mqmkHSYGE374/LLdh2R2Ly
 dygDaXnTuufJfcKseJF3QE4cNfMs0MurdMHqoPfx8jreyogoUQDdqEpU6ghiCh3LSD3L
 N3Yd3gF+cjQZyw7m6PYT/5Ppol7rvi1mlz0RL10bYkhiWGgwOWB+Sz2+IFX1vltmIXRz
 ZD4GgWKbuk+mfberF4tUYIcTXN3NVyxEI1n118RQyr3cNLxMCId8dJTA0/3GWBZ3FH+y
 He4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721923091; x=1722527891;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dpgn147gAQlCC9it7mH7Kj/P0ycFxQtD+fSctqinntk=;
 b=Q2dn2yAFgq34o6FQilPcuQy2oj+lXRnyFiaPoI0JwczH0o9zy5bunuJfh87RyFcXP3
 EjtVtjhrvpQU+faujICb30iD610jNZf74FgZ6GEJz47BE9oOJgmFPxgN1t+mcN5l6XHT
 bFYCyVdQS1AXV8l3r5zHMCkOUADBM2FZaHKRvWFrs0DA+O+z+CEO7I3LS/8AEKKogJsb
 1T2WlRz+wUQChtIDWhXZpF1ImzS9IqJZ4B6ZnGNnBDyMmBHxGpF6Ib+2sazGyTsWpT53
 Xm8ODKijdHkLvU/m8QKW/4+udaU1X4zq4hxSqXSNAO4ZuOoX0IMwzedP47LfyR8+nn7l
 zf/w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUXpIJFieixW1bhNGANJj3W8Dhozu1zS4IZdxYQSrm5lQG+GNiRszjVDKGevf0lEY2OQbPVgQhgIDEGU8S04RybHEWQ89DmdxKwy7Ufp9Pv
X-Gm-Message-State: AOJu0YyngCfefnjV/RPw17cqSf3uqfkVXRLELLHZ+CzOtLBbYK838vyJ
 kTv+GBk4mkT715edvBfsV+RY7cppqhBh8mOl7X4NqlRmG+MCBA/brQIYHyWMrKM=
X-Google-Smtp-Source: AGHT+IFxJUkfRHLKPH7zdnRP4Bu3LofO4rsPHFS4V7JBQZW33qO7EIwJJbhTgMNB6fvjracolhjDcQ==
X-Received: by 2002:a05:6830:6283:b0:709:32c3:6901 with SMTP id
 46e09a7af769-70932c37244mr3051378a34.10.1721923091074; 
 Thu, 25 Jul 2024 08:58:11 -0700 (PDT)
Received: from localhost ([2603:8080:b800:f700:6751:f2ec:fdb9:323e])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-70930785c80sm337372a34.66.2024.07.25.08.58.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jul 2024 08:58:10 -0700 (PDT)
Date: Thu, 25 Jul 2024 10:58:08 -0500
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Subject: Re: [PATCH] drm/i915: Allow NULL memory region
Message-ID: <a8d2b873-fc98-4f14-9c64-c0bcc097956b@suswa.mountain>
References: <20240712214156.3969584-1-jonathan.cavitt@intel.com>
 <401a092f-f431-474d-82c4-48442b3c70e1@ursulin.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <401a092f-f431-474d-82c4-48442b3c70e1@ursulin.net>
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

On Thu, Jul 25, 2024 at 08:48:35AM +0100, Tvrtko Ursulin wrote:
> 
> Hi,
> 
> On 12/07/2024 22:41, Jonathan Cavitt wrote:
> > Prevent a NULL pointer access in intel_memory_regions_hw_probe.
> 
> For future reference please include some impact assessment in patches tagged
> as fixes. Makes maintainers job, and even anyone's who tries to backport
> stuff to stable at some future date, much easier if it is known how
> important is the fix and in what circumstances can the problem it is fixing
> trigger.
> 

As someone doing backport work, I think this patch is fine.  Everyone
knows the impact of a NULL dereference in probe().

I guess with patches that add NULL dereferences, the trick is
understanding when people are adding NULL checks to make a static
checker happy or when it's a real bug.  But the fault lies with the
people adding NULL checks just to make the tools happy.  Some of these
pointless NULL checks end up in stable, but it's fine, extra NULL checks
never hurt anyone.  If the maintainer wants to be extra safe by adding
NULL checks then who are we to say otherwise.

In other words normal patches shouldn't have to say. "I'm not lying" at
the end.  It should be the pointless patches which say, "I'm doing a
pointless thing.  Don't bother backporting."

Most stable patch backports are done automatically and people have
various tools and scripts to do that.  If the tools don't handle this
patch automatically then they are defective.

regards,
dan carpenter

