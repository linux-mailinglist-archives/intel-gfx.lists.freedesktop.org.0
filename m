Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B15C19DD79
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 20:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBFA96EC5B;
	Fri,  3 Apr 2020 18:06:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A826EC5B;
 Fri,  3 Apr 2020 18:06:35 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id 184so5535276vsu.3;
 Fri, 03 Apr 2020 11:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MnDlRMDaSvBy+n1HYH3D8hxL9f47mHQwn0PuETiUs1o=;
 b=VwZ3DyiUoAckgp9YMySsD2R37fNMsYi4qLHXtVQS4ibLS8QIvhqRHD5/go6Ja5TT3Y
 tvC6726g98UoYkf9p1AO5xMBssBEzayKDjPLl/QhScPNHWDcR3MBL5tMwX5T0ZIqJOm7
 PI5EkthkJloSFYWT1ZzwtpiEGEfFdrgQUWze2AyOU7WyXTWXaopoxrvDprtQailVVLLj
 imz0ca8Lvu+fBAmLmrAABTsjw6WjfaqT1fif1PIfH0zpTZTWTAPlU9W7KB47PSpLZ1pN
 wynVVSxsz8ZJWx23FSJ67MFQd3481jiPohYiebAQesCxLW9E+3WsZYdr9wTmdDtTmBQS
 uMgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MnDlRMDaSvBy+n1HYH3D8hxL9f47mHQwn0PuETiUs1o=;
 b=BapHQG6VSEH9nbPEMUic8G6saQ/fYjzH2ZBfG0bDKcu5CcZrC6RGTjNRBElbCB/5Jo
 ld+680g2Njqs8pT6WhRqP5ibA9Hp/55wRnNm9B9unES5VVaglagPi+AnM/MPo/ujqXZT
 +Ulc9Kpepvr2GhpIRfaxTOaK9FOpNJx86DVKxEdSgaSBDIG4cDEtbm2yufd+Bni+7fS0
 aTrcJqZA8RPvntMKmqMT5ZCRC9ndl11V6UhIAXIz59bnoI6x0OC3Q9VEKf61OPNgpG7g
 qggR60B+DPYWS/tfuGFvbGAwlcAaEu6UQen6VhrMX9apSc2BoNMyL1eAM6Ghrctxul49
 tubA==
X-Gm-Message-State: AGi0PuaYI9Mg+aOEesTRFZtSh1rATaHtfEuxReKBNYXMHZp2vMmsNNn9
 /CWXeNLonKC4ZqFxbklXhHll8NWy0k7WRFo12YAiT+o8
X-Google-Smtp-Source: APiQypI+2tatAqPTR1XCa1POk1jaZdVJPxJSTurKY74BPRgS4vXFwaFfq36vV+WW9j76NyNYBk+bNBreMhFrs1QZQ0I=
X-Received: by 2002:a05:6102:185:: with SMTP id
 r5mr8026932vsq.164.1585937194604; 
 Fri, 03 Apr 2020 11:06:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200403132414.920346-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403132414.920346-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 3 Apr 2020 19:06:08 +0100
Message-ID: <CAM0jSHOriXeP6ZoG5JX_BYsy2aFRyt_u5gB6jrZmEo4cf98PEA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Bump estimates for
 object overhead
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 3 Apr 2020 at 14:24, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We are dramatically underestimating the overhead for an active object
> and its inodes.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Acked-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
