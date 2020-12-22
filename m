Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF712E0B85
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 15:15:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F3826E3DF;
	Tue, 22 Dec 2020 14:15:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546276E3DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 14:15:13 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id f26so10295443qka.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 06:15:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B5kfp+5BWoWfHdazucv0uQW3G5a+/0UcGZiUrwOkvMk=;
 b=fcFPY52Gnd8fw8LZjxrkXtUw6jlhpsmozDSAb0nA1DbCJGXWzc1ZYT4jfVxu4d13ge
 mlV/gK/8XQwOOfbaJGWK0hMyJmyxJyqz8+mnWjlgw9Yb5524pcbbgB1Mj6JmYWnXufWB
 9O8gvNZ45Ix0cb/HI25EcWm6ySHZleDDHAKAXMg+2MH586D6glrLfJ4TKpUFczHmW36+
 f/1yUGUnDXIp6atkspV7D6LM9XuHDOl8AlL2mVr7Qy2RYckMbGD6HcoJr9x5aEEyNRKy
 JHE3ovzShxNj6Yjs2GahWfJWf4ngnQ+JYT05JkykpgmBtlVLWlEBN02GStmpF4J2CDNa
 /5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B5kfp+5BWoWfHdazucv0uQW3G5a+/0UcGZiUrwOkvMk=;
 b=KBoisrm7kfFfmcN2hqkAuAof9BNzoEj3ujbKR53eWdbaNvvtlk7zCjnzQHrw8tnsmm
 wBfrBLLZyZn28XHikE1yhBLwiNk7G42E70iNdDg9B9YY+YK3qa/id9rPKuSMmXFEaLnu
 4SzdCSJAvujh4bU5TwPF2H5RxzmC18QPAI+xYJ72IfTtO8hHC22EdpUnonmKFnUFtmpb
 LgItYky08vMJl7s5TWSpP/doKoUxkRsBNWGGBf4fOnRU8rFSR+Wnls/D1Ie+HqwyPjNg
 s7FsFIo8qo/yu/JclV3FUljITrygMEX/rBSX4Ee+pknrk1XhiwgCpU/Hbf2BQgBg41/7
 iI9w==
X-Gm-Message-State: AOAM531+Zf1aMnnoaCX6cVfhC2f8zuB+quWVelXkNMr9kY+XtxXFO3N8
 80j36inIBbshtLJjnUmJvXk82VXFtHpzWYIUr0O7hsdp
X-Google-Smtp-Source: ABdhPJxaAfnYwYqNv7lQA7VEvxK8I2DhY+k62js4S+QBb8GNFstssY998viBqmQb9NVoizTY5T3f/7ykZwF5rkJlp6E=
X-Received: by 2002:a37:a8c4:: with SMTP id
 r187mr21357058qke.481.1608646512495; 
 Tue, 22 Dec 2020 06:15:12 -0800 (PST)
MIME-Version: 1.0
References: <20201222113536.3775-1-chris@chris-wilson.co.uk>
 <20201222113536.3775-2-chris@chris-wilson.co.uk>
In-Reply-To: <20201222113536.3775-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 22 Dec 2020 14:14:46 +0000
Message-ID: <CAM0jSHO-E1xOyhw6gw-0ZFy7ZJrWjRN_Qf8hr97n_zENASwCFA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/selftests: Flush the
 preemption request before waiting
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
> Make sure that the request has been submitted to HW before we begin our
> wait. This reduces our reliance on the semaphore yield interrupt driving
> the preemption request.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
