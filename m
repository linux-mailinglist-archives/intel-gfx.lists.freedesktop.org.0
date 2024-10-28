Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D22639B35B5
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 17:05:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EBB410E096;
	Mon, 28 Oct 2024 16:05:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="L+ZOKeib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com
 [209.85.215.202])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 844B510E096
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 16:05:43 +0000 (UTC)
Received: by mail-pg1-f202.google.com with SMTP id
 41be03b00d2f7-7db4c1a55f5so4048375a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 09:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1730131543; x=1730736343;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=B3ie5ifufASI9G1WuRdLsyt/LowS1PCrH+CXnaSQRWk=;
 b=L+ZOKeibSIzKvaWy2iAdwVaCy/N6a5Svw48Q3MzFbJ5nt/du3YwpeSodxGbVc2qrYJ
 sgixLTgta/WBZn3ws2jYI8kXWF8kmgibqdJhCRer4YdRAvbLKPgUYTae9upmsWnW2cgz
 g7KAicq8HlrWPOek34VSNX22Vihos1Lr3wKW6/AnASlyX1nR5YnWXVGs5xuWwCDDEdxP
 amdrts2u7g2Up/6ZJ8d6X0EvQbLK7mKI0x3EUEtFwSCer+Lsvym8Kku9dQ/ZflzfxHVX
 VwYEsSip7Ye7sK1e6o/MfmpKthYo/T73p/dv+DMGo1i1iSK0PzYjVNVilF3pKa+GUnqF
 zamg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1730131543; x=1730736343;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=B3ie5ifufASI9G1WuRdLsyt/LowS1PCrH+CXnaSQRWk=;
 b=Txr9g1fOrrMM7i724O+NrW4DhDpLkDfYCcroVE++J0tub7Jr8bjRu8U2k39CdguRa3
 HfvlMNblEiG0ArHeC1RKMR/crVOxTsTXZijlSJkTsiJiNjXCUcE1SUFN8o/7ntndD7EU
 johu1V63U6j32nhRx6hO0nliYc7QjGL52KNKQdtiJWll4iekgeWZnHnm0cUC6ciWsZYT
 fW3cY92rL82e/epNLDOTbjGhgLeS9ESYS24br77cu/qVFklK4GS9QT8vbO+VoesgZoEH
 E8nSO2Y+ighUWK9g2q3YpERzyH25+i+Ujv7epFYt2ZHri7TUYXKUFRZ8vh/zNvVnA4N7
 RQAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXt7c7ft55GtpQNBx0bFvqXeZwIeurfttAYQAdb7575+xpHtdP/ks4Wn6Lj5mvtGxN1CqqOqokp3pE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx/1xGPEIL5/2v1UW4tE3cNQLGk5LAQeylBxltznFz1b0EYtlG6
 KYAmRYu6yZw5XWJ8+gz7Wtqqf74G5T7MusCUZ21b0Q1JhJvh4p1MHpSHfZowReYjlrKSeqzhyn6
 RDw==
X-Google-Smtp-Source: AGHT+IEkBL9DoH8uTQuOjkre99PEFXZckOFmK9CscV/GJCoHB/bdQSJL+dlAtt1G6F8MmFhv2zGn+OlwJG4=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:9d:3983:ac13:c240])
 (user=seanjc job=sendgmr) by 2002:a63:155a:0:b0:7ea:6ca8:bec5 with SMTP id
 41be03b00d2f7-7edd7c5054emr16022a12.7.1730131542804; Mon, 28 Oct 2024
 09:05:42 -0700 (PDT)
Date: Mon, 28 Oct 2024 09:05:41 -0700
In-Reply-To: <cover.1729864615.git.namcao@linutronix.de>
Mime-Version: 1.0
References: <cover.1729864615.git.namcao@linutronix.de>
Message-ID: <Zx-2VV9rRnHOgtvG@google.com>
Subject: Re: [PATCH 00/21] hrtimers: Switch to new hrtimer interface functions
 (1/5)
From: Sean Christopherson <seanjc@google.com>
To: Nam Cao <namcao@linutronix.de>
Cc: Anna-Maria Behnsen <anna-maria@linutronix.de>,
 Frederic Weisbecker <frederic@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Kees Cook <kees@kernel.org>, 
 linux-kernel@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, Paolo Bonzini <pbonzini@redhat.com>,
 x86@kernel.org, 
 Jakub Kicinski <kuba@kernel.org>, Oliver Hartkopp <socketcan@hartkopp.net>,
 Kalle Valo <kvalo@kernel.org>, 
 Jens Axboe <axboe@kernel.dk>, Christian Brauner <brauner@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, John Stultz <jstultz@google.com>
Content-Type: text/plain; charset="us-ascii"
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

On Mon, Oct 28, 2024, Nam Cao wrote:
> This is the first part of a 5-part series (split for convenience). All 5
> parts are:
> 
> Part 1: https://lore.kernel.org/lkml/cover.1729864615.git.namcao@linutronix.de
> Part 2: https://lore.kernel.org/lkml/cover.1729864823.git.namcao@linutronix.de
> Part 3: https://lore.kernel.org/lkml/cover.1729865232.git.namcao@linutronix.de
> Part 4: https://lore.kernel.org/lkml/cover.1729865485.git.namcao@linutronix.de
> Part 5: https://lore.kernel.org/lkml/cover.1729865740.git.namcao@linutronix.de

How do y'all anticipate landing these patches?  Is the plan/desire to get acks
from subsystems?  Land the new helpers and then let subsystems grab their relevant
patches?  Option C?
