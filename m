Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E98D52E0B6F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 15:09:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 765026E886;
	Tue, 22 Dec 2020 14:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2b.google.com (mail-qv1-xf2b.google.com
 [IPv6:2607:f8b0:4864:20::f2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B0BE6E886
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 14:09:06 +0000 (UTC)
Received: by mail-qv1-xf2b.google.com with SMTP id l14so6014701qvh.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 06:09:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tVxJjWYf0DM24s58TTuF50FbutyejxXCq6zlwctO1zI=;
 b=JrVzFMQT5zShmh8B9Q8V0rlacO/kMBm6efxQZc3mong6VNaVVw0GiKOj/rB4xIr2Vi
 OmU6TlQvm1xUqHsbjkVieCocvo/8W/6fdBZxs/gFpL/T9wFJEaSCGZeNqw0VtYsQ6OsL
 getvtPs65ROWQN0N6ZA0w8sdkswRbZ6SaNa3vzegp0tidbqPDRMTtQWvSqWE4ABO533f
 gb5wdMwHGnztKJClJVZ9dBa4lUxf1ipA5cQrLcD67Qhxxy/bypS/OY1Y42x6YyCzjmrc
 qx4t7WRkqcWkxrnNqPTmsa7tjsMHIYjZcHDWG3DYwFEXHRA1CQIppY5JgUCfGoEpg8Kz
 QPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tVxJjWYf0DM24s58TTuF50FbutyejxXCq6zlwctO1zI=;
 b=IidIEAqVPNOByPs5nIs+eIp2K0o7hIwHM+AnkK+ht55W0+yB63xnbZYiULoPr8OWlb
 9ydbPrQ9dOYIo8nIEI1UDJd5EiUgNF/dhjT2Dk7S7QiCUiEfCw3T2R6pZaNuWLftPBB6
 QBCkOqIiZ6mU1oA3xW4gV4nq+lmQh9Q1bpD0fFRpRQVEqi0VO3uLLqIKELRGZFMc2PKn
 oz2PEbRPD0uYUqsyVkAYgX7OZQUtL/b/USLpvHbu3Y22xwLaz05eri50EmI48gljH8fd
 +58/yZZ+fksE3Z+gVumQevOR30L7tGW2yLScbdMzbWDTC/bKGKaUuUhK4JpM+0sV2ygS
 9eOQ==
X-Gm-Message-State: AOAM532FiQH4uuJFU3GyGZrk2RoZWeofVpgTs1ymkoUPfzMse6XvQHFB
 3GIdF4Vjs5dNaD6RUJM9yke3eNkmKnGq3s0XX7IBPiFT
X-Google-Smtp-Source: ABdhPJxuMxrFFQqL1DmHYI1LGGjRp2ccjnF8LEeO7nOdyIqn+YxKPPDZ0LC7uO4gzGvrZlVOP1hVqo4jTfdRo5u9mVA=
X-Received: by 2002:ad4:5be1:: with SMTP id k1mr22164570qvc.48.1608646145515; 
 Tue, 22 Dec 2020 06:09:05 -0800 (PST)
MIME-Version: 1.0
References: <20201222113536.3775-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201222113536.3775-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 22 Dec 2020 14:08:39 +0000
Message-ID: <CAM0jSHPgoqM5TNC8DwdSu68fjjghEL46Wv2aC0HQP1iET7LAkQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/selftests: Kick timeslice
 until selftest yields
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 22 Dec 2020 at 11:35, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Keep on kicking the timeslice in case on the first retirement, it did
> not stay idle. This may happen when using semaphore yields.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
