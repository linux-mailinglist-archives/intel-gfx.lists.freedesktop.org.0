Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B022351523
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 15:27:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 792D06ECA6;
	Thu,  1 Apr 2021 13:27:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A01366ECA4;
 Thu,  1 Apr 2021 13:27:53 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id g20so2160259qkk.1;
 Thu, 01 Apr 2021 06:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=12p0pU65VHbwHgOEGofB+0ySU8WAwLmf83M+kSYrtys=;
 b=E+tUFlg1vp9LPyTSRl7RzkO8TqlvoFiK2+VQ6bX6uUKy3TMiwhdI43R97fxEHdgITF
 MpQSUFJV09Udb1HcUD809dFxPrEBpBxfhGAH8ONaNJg6kKqPbVcHlqvucjkQE5EONC5s
 wcRNiwvajRvk1wMAD4kPJOvV0vr9IsST+yRjIvgv2iu5ENYjnWAbG2beAm7153oqW8v3
 9P/C3l2GvyzZb7h09NqwgVfNlkSruqK0qxbh1MMeU8fzx5fQ7ARlBja/2AJBMDFIcoQf
 YQ5M/3Z7Ztqy4xvDnZwusE6Ke/xoPtRGDNDbU0Q/jTV+P2btTRWFSQCzMGDYmARBUxa1
 UFxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=12p0pU65VHbwHgOEGofB+0ySU8WAwLmf83M+kSYrtys=;
 b=Es9KhiM0LzX3PuSdoip/DY+P/YZz7VdSvlSixY/6xjUxK8cvE1IbVIAwDO4gfWIPVi
 3siK+QihdhQnbkIaWEZPzk0U8v0Uvbnb0PL9TK/RaEdYMqQryEhUk7WimxZpoJxj8QQp
 Vt2uDTHpBZvqxO3uab1zN3lAwWCPaXXpY9xywnwsBhqA3qPLY0GZJBP3bcv0I423aZb0
 pgBZi53Cuy/+TYdBumUZ7mMP+kbw1tQGczq8BvJfCzFisL7dX9m5obizP1OMD42H9CgN
 8Gy5AkMHopnaQlB4KDUC/J9sCoNiNpoVgOT9azrh4iTJHaTY1m63AMTVNHX3F9RzCEOJ
 XyHA==
X-Gm-Message-State: AOAM530MnIQawmA3nbTeJUvHmrMXnRLoy5zyAnU9R0+yoFrchTAowxyS
 KxFwAmmrs+9V5M+2Pzx5d0c5S9FXObBLvjADT5u1JLvx860=
X-Google-Smtp-Source: ABdhPJwSs5YeJjvkZwGu+uRoVhaSXY/4D4YpwN4kFFY9ccO/Gziah/sbaIqc40nnEFM+JAqtQwrx7vUDpobdCfvqy3g=
X-Received: by 2002:a37:58c5:: with SMTP id m188mr8073860qkb.327.1617283672815; 
 Thu, 01 Apr 2021 06:27:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210322141150.2166562-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20210322141150.2166562-1-tvrtko.ursulin@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 1 Apr 2021 14:27:26 +0100
Message-ID: <CAM0jSHPSeMs1NA6-7WGRw2533UJNxfnouBk1Kyb2LRTkcsDATA@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] scripts/trace.pl: Remove
 the tool
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 22 Mar 2021 at 14:12, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Tool has been broken for a while after changes to tracepoint format an

format and?

> behaviour. Although I have patches somewhere to mostly fix it, it seems
> that it has outlived its usefulness and could be deleted just as well.
>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Acked-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
