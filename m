Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9290B25312A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 16:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA0E36E144;
	Wed, 26 Aug 2020 14:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com
 [IPv6:2607:f8b0:4864:20::843])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 760AE6E144
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 14:24:31 +0000 (UTC)
Received: by mail-qt1-x843.google.com with SMTP id e5so1479874qth.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 07:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cmpxchg-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zlwE58oTu+f+CX5TRYYwuWXiyc0+G6WkfNqbI/+jdSY=;
 b=cO+CBnh7nK5+bWxbN/rwQcj2H4qISpWSCtom8J3NYKwbjjXE4VHyCPU6l4SYsLNQmS
 /WI/E5HAG6u+MoAcxZo9egIz5wDe5DDX4DfqLRODmFk9MExnxgPzPF23yCNm1kB3cvoV
 JoRLPo24DnMgbfUAXBvkX2DO0dxWBYMNrm5mIDfNk6jWm/45g4hZat1hwqysM8GfOXFX
 0R9ZwQfqa5GixPcfpxcCrt6oIcNXd+0bZ32ZYNKsPrbRA29tlAUFbv+RobCsikP15Xj7
 ssAysz8PU4hvGQHGShDiRr1e+3BKKvfW+PrqfNf1IzlNtqHYDXkI1vnfAQh1X9s1Ugev
 bVmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zlwE58oTu+f+CX5TRYYwuWXiyc0+G6WkfNqbI/+jdSY=;
 b=sCHaw8I3hrGlzpBDU6gnHs6MfehxIO8kijDudx/pyz5K5WQ37N5cMXX/E9SVDHP1uy
 Abl4l+q2jeMpsxyn81830+KwtK4g/NRDiExQjxVrVBZSHyB9MQEu3JAXxD6QT66fnb5o
 vIAHB9njW0QaFwCwogZkdAARLe0bpbfz8ArHu3KasFCJNvhAi9vnvDshtNJuLycAJDnZ
 xSsYHXakXdYtzgU8XlRXLb7YFQ4729oV4Vg7yqClwpyO69DA20DLnnGtn9EFyjVfGCXh
 24oKSh7gBMmlqAiGZ6wsqwsnFVJ9T0IP4/CO6Ev9aydPQsKChScw+QSjdrj2csltgv4F
 Nm3A==
X-Gm-Message-State: AOAM531v5hIW1gBtFj03/QATlYrWGqOz13Om1EfzzICu2PG0PVF0Y4sf
 I8Q/JoqocPVhylzDTjBbI4NzpQ==
X-Google-Smtp-Source: ABdhPJzBytYswWR/8B2VHm5Q2Kp/UY/Co8p03yrx9NKrzlbYv6CmqwA0aRiqdMFNUUKDmEF2RxDrxg==
X-Received: by 2002:ac8:47c8:: with SMTP id d8mr13412483qtr.32.1598451870688; 
 Wed, 26 Aug 2020 07:24:30 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::1:f646])
 by smtp.gmail.com with ESMTPSA id l1sm2016291qtp.96.2020.08.26.07.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 07:24:29 -0700 (PDT)
Date: Wed, 26 Aug 2020 10:23:15 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200826142315.GB988805@cmpxchg.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <20200819184850.24779-4-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819184850.24779-4-willy@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 3/8] mm: Optimise madvise WILLNEED
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
Cc: William Kucharski <william.kucharski@oracle.com>,
 intel-gfx@lists.freedesktop.org, Hugh Dickins <hughd@google.com>,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, Matthew Auld <matthew.auld@intel.com>,
 Huang Ying <ying.huang@intel.com>, cgroups@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 19, 2020 at 07:48:45PM +0100, Matthew Wilcox (Oracle) wrote:
> Instead of calling find_get_entry() for every page index, use an XArray
> iterator to skip over NULL entries, and avoid calling get_page(),
> because we only want the swap entries.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

Acked-by: Johannes Weiner <hannes@cmpxchg.org>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
