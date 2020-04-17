Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EAD1ADFBC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 16:25:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0046EC25;
	Fri, 17 Apr 2020 14:25:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96DC66EC23
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 14:25:43 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id r4so1184263pgg.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 07:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=L6cWP5WK6ujku9y43wjaNC6S0VeElTh4yenPv8t29Ak=;
 b=gKw5eoYUIpd77RsZ9EA4/OBI5it3b4QtTk5w0WNiaVsQlhU0AvTC99Kwb6pyQrnZwb
 8mkxqNjg6VEOZTZqnkLOebZlO/n/v5mMNjfkBB1cGO3Fx7O3pVDrmTfYyuyYufQ9ccR3
 RtPWKLjDzCOGMUWt9saeSwmpszseuFa+iiXqlLA7QMz5NdgXvU//k288EsKe0YfAzi6u
 dvmxk+qgp7K7fE2PnVT7fvqSgeWduMN7B1pblLGgZqKs3H1NpzAxQ5FN/ffFSwvnE0Dr
 z0qCKxdTOrenMDSXdIXvCN19QGBDvsZe/1e/6pTgbuMcknn8YL4CeODkrzae32Dl8ywr
 FA6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=L6cWP5WK6ujku9y43wjaNC6S0VeElTh4yenPv8t29Ak=;
 b=D3ngvUXFx6XeQ9UidNE7sAbzduopB2uZs+ij22UU+RAUBYGqZhrDmJSrr5PqjaxsHN
 V0vDzkOV/EdLg5+5VzgTEe5+QA5zYpyGJawZTSxLyJqh6pl0JLbAhnSerMF7g4AOll4K
 6M4X7KuVbfaiGeOn7x/+a79GOBtbHCZ6n35OiIAX+6RTJ1Z4A8q2XsK/U01wZkA1HXMx
 Peh3O7q5DKIM0RCGPRCmjOnb3+M/dsRUwVuQ9OzunCvlWgt8ozBtLLAa27IgI4+dyMC0
 oVTFjDCKjchElSxrBbxLrZFfV20DHRDiygRt8ZB3kZuCzK/U8KjGiKQl+cIZ1gWxmpMm
 fnag==
X-Gm-Message-State: AGi0PubP97MV1RwG/FNHcj/g6Dv+jIAFB4XqfgO30A3C5fawBpW58fla
 Bt3VaAd4K0g5rEcj9nyyE1fB+2oZCpGEzA==
X-Google-Smtp-Source: APiQypLk3UKQ7IlVU68RBsk4YcfumTB0+HNr5I6KmasWP50lwGXPB60OmHhJAmy9VXUBKXWGkLn5iw==
X-Received: by 2002:a63:1662:: with SMTP id 34mr3312317pgw.117.1587133542614; 
 Fri, 17 Apr 2020 07:25:42 -0700 (PDT)
Received: from [192.168.1.188] ([66.219.217.145])
 by smtp.gmail.com with ESMTPSA id r18sm579944pfg.120.2020.04.17.07.25.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Apr 2020 07:25:41 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20200416053158.586887-1-hch@lst.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <8d314bc3-ea59-684d-2d34-20b152a36f4f@kernel.dk>
Date: Fri, 17 Apr 2020 08:25:38 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200416053158.586887-1-hch@lst.de>
Content-Language: en-US
Subject: Re: [Intel-gfx] improve use_mm / unuse_mm v2
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
Cc: Felipe Balbi <balbi@kernel.org>, amd-gfx@lists.freedesktop.org,
 "Michael S. Tsirkin" <mst@redhat.com>, Felix Kuehling <Felix.Kuehling@amd.com>,
 linux-usb@vger.kernel.org, io-uring@vger.kernel.org,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>, intel-gfx@lists.freedesktop.org,
 Alex Deucher <alexander.deucher@amd.com>, intel-gvt-dev@lists.freedesktop.org,
 Jason Wang <jasowang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 4/15/20 11:31 PM, Christoph Hellwig wrote:
> Hi all,
> 
> this series improves the use_mm / unuse_mm interface by better
> documenting the assumptions, and my taking the set_fs manipulations
> spread over the callers into the core API.
> 
> Changes since v1:
>  - drop a few patches
>  - fix a comment typo
>  - cover the newly merged use_mm/unuse_mm caller in vfio

You can add my reviewed-by/tested-by to the patches, passes the
io_uring regression tests.

-- 
Jens Axboe

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
