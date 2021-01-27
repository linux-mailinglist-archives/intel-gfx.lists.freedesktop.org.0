Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C930D306094
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 17:08:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1139F6E0D4;
	Wed, 27 Jan 2021 16:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6FA56E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 16:08:11 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id d15so1713975qtw.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 08:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KXRndS+Ig/28J6cmPDTeMGaMZyWAoGi+SCnrrvdeb0o=;
 b=j8YjlvtWVJt0lh2C+h/ECosdFTm/b/u9V7ZvL3S3ra3Md81PP04rBx3IJAKhWMxE5m
 hB5LwE/JpxahAcc61n0wsht7eDhbGCEEhuCXxeCCFZMJQWYBAMUZEM4CmgsWt8Hx26Bc
 w4xShFUaY7tiqDZcnX/u8EKEMvh7Ew5BaZKwT1oGSqf3+JbvSiicF4Xn2kfM9ZSt8Dzx
 g2Qg8dCToMfd1ZuQe7xA5rEvQZPn0Z4QlAgNx3nws25ABP8CbumnX8k3lf0gtPhfeFRE
 gdPVkxkz/4ypulPHusyjGv3Sof2NaveYs07jeV0UrUHIxFXnys9wIGva4jvUlHOnNg0l
 Tb6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KXRndS+Ig/28J6cmPDTeMGaMZyWAoGi+SCnrrvdeb0o=;
 b=o5OwFTgWppbaYCeX9uC29nf1vXeDOhsTHXxGwvalKZikTvBmY7g2hRmuycPrVLDh90
 GBJbijz2VR2d3ARXsf2DQXBSoaH6KJk2UGLVnE4w6sFvZlqEHJSrUUWj3WeURxXuktR8
 Eu9vUQGSd89M1L8n1tfQ4vlIgQKyI/oHWWuSJ1ihXRzbzXB2Y2cm3pdTCBL0lPK6ljNm
 Vqi2DUNU+wNkQtijVZdGmhbnEutHK9QJY6c6huvUccf5iF3qVjvbXA4P6WQFbAjyRxWI
 j7Yv+dfgA2OJnncbHnA70IuNAWPd6sL2tAkmqwLvPbInMBKbISh4eUJXzYTok9uEF87e
 NYCg==
X-Gm-Message-State: AOAM530MIXHjJzDYUC5HxZp1DK5wR7pOjU02lyWT9EXjQkXHKvkO7CBU
 r/X7ppbCG90lAnYL5CpqSvPD2oGwJLq1M1Vin4retppwuH0=
X-Google-Smtp-Source: ABdhPJyIhtFJiNyNYVFrcJw8NZ5f7GLW6+fIbS7J2BbY19kJx+B3WkHgtRfDcCh1rNZcdbniM9Xf6CUaO5FKe2cOGbE=
X-Received: by 2002:a05:622a:183:: with SMTP id
 s3mr6127318qtw.223.1611763690838; 
 Wed, 27 Jan 2021 08:08:10 -0800 (PST)
MIME-Version: 1.0
References: <20210125141803.14378-1-chris@chris-wilson.co.uk>
 <20210125141803.14378-7-chris@chris-wilson.co.uk>
In-Reply-To: <20210125141803.14378-7-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 27 Jan 2021 16:07:44 +0000
Message-ID: <CAM0jSHO1sBVzCZWvuh54=uwQKJOdxj1ae8m0Re4dHEYy9OQsAA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/selftests: Remove redundant
 set-to-gtt-domain before batch submission
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
> In construction the rpcs_query batch we know that it is device coherent
> and ready for execution, the set-to-gtt-domain here is redudant.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
