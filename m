Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A13C930607B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 17:04:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 976706E851;
	Wed, 27 Jan 2021 16:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 118CB6E851
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 16:04:17 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id l14so1286875qvp.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 08:04:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/6IybU0tDR6dlSHbVYlGikgIAm0fXau79VuQlFVKHpU=;
 b=pF9hQ2xSAeME1KpcgrJPvwipub8noAeZC8XaW0XdKucvbiAw9Liz8hto1cxE3e48EO
 b8MaSga68SCubOVgP+SNlt4G1hKsPWXai09ZuTykFVfuYRtPg8u7X1wKmWoH2ppYfc/1
 m1hKgebBQXkExNg+jUSPM39NvbHzaALScRkSEEf50yJ7103tZsvnU9O6a/3q39JSNGV0
 odCIeM11DuK9vxILEgBa0c9zygOURVYbJD88SoubF6bK1v9vKai90e+8aaWmszBIzyAd
 eu5oiHC4s6aV2n+FgQ3NiyluixSsZYRPxIE+4izxzZal96y7E8EgCzYOBTLq5UM5Vn2q
 0FUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/6IybU0tDR6dlSHbVYlGikgIAm0fXau79VuQlFVKHpU=;
 b=I+GpwEDdgW9F6aMj2qtHf02mNfzrkvSbpCE4VDoKr0WRcIvqdzgRvGehbyiztDeyOU
 +CxJxn1QdIW8nb1c9HmyVIO7ykXinkych4aza8xb44dzLHpXFC6gZ6MGdyVEUM1643Vx
 QJcOC1xVsihLG+hKrItN6KKxFxmjf1lyqnXDgtdexwX7RFsKieM0mUDfTZ0iUgdNQGzM
 jiBAJec2O3S9kzRQzFL7kfqMls/LSCtXn5RSrfkrBvKgedF0uVFRYtjCtMtB82I8OY/q
 WCGlJ6RTStLzMhqYTHgu6KgUWCfuYoiQqloV19IGqO+R5QJqFXG6l1o5pc2LwIXe0cjM
 mWDQ==
X-Gm-Message-State: AOAM531KkcqYJGVkuFgSJUyYsM7gv18R07QIlyJD0GhfOjmFRVmUuiKy
 jDs1hHXeRHVkd3TR5brY2SftrL2dctyWngcowuKtV6HvaM0=
X-Google-Smtp-Source: ABdhPJyMb+5BGdZIhsrE3nYawrAK87eyfKF/pOLdsFyVyb0PMRtpcrH6sakimzZFua/dUeGKUSRg+1PzJuyLDPofh2I=
X-Received: by 2002:a0c:a789:: with SMTP id v9mr10924383qva.41.1611763456191; 
 Wed, 27 Jan 2021 08:04:16 -0800 (PST)
MIME-Version: 1.0
References: <20210125141803.14378-1-chris@chris-wilson.co.uk>
 <20210125141803.14378-4-chris@chris-wilson.co.uk>
In-Reply-To: <20210125141803.14378-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 27 Jan 2021 16:03:49 +0000
Message-ID: <CAM0jSHNmo23crrpohN0hMPnoAH0joW6BHW98v+Lor_5tw7c5Tw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915/selftests: Remove redundant
 set-to-gtt-domain
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

On Mon, 25 Jan 2021 at 14:18, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since the vma's backing store is flushed upon first creation, remove the
> manual calls to set-to-gtt-domain.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
