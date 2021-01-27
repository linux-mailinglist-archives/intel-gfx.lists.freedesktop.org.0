Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE062306023
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 16:49:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54FF06E84F;
	Wed, 27 Jan 2021 15:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com
 [IPv6:2607:f8b0:4864:20::82c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 128626E84F
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 15:49:08 +0000 (UTC)
Received: by mail-qt1-x82c.google.com with SMTP id l23so1650611qtq.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jan 2021 07:49:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m6nbB3WI7G9AY3N2NOEDRTqMfzfEHKLVRYtgdARSCZM=;
 b=j1HqanwMw5Fr7zSnbo0YuD+3MWrU3aZHEP80VvNeC+gDjIADFd5zJWWPc9Gf80WDM7
 WHGw/Je/VON6xTJvjfUBJDBnX/F0UH9onzyXWpD/rqzAHgDfxjyWEYtibBJZpIccVzcp
 zt39Te4nMR+pWA1eeKCAldP0DWA9pKP5xA6KW6uv+jIni0e9yjXujvck0jKBq9l9Yrwy
 JzJg9n/c3ATsk1D9Vd/C3LkDGT69TY4XZ/NvQJ6fIoC08kgCBrcyz+VLklxJ4pYU21AI
 bWoAr30pSpr5dXJLfTXbonnQh1IaSJ5XMWW7I3Y/5YoTG3JetT6swHdJybi9P2jWpJmu
 IGqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m6nbB3WI7G9AY3N2NOEDRTqMfzfEHKLVRYtgdARSCZM=;
 b=cdMAYDB8BbSL3OEAcNoieT7lfCK2mHRFWxwWMMFNT8RpDXTKkLStXhnOM7DIxFdwrZ
 j5vSFnT+AfXLLhhsAR3m6GN0G1cWygps2mfjCEStSIe45Ym/cOlBaqVxNIMqU5xdql+b
 tXfvO2RjlGp6dW/gm3rIOPKZUhyR38bt+PEk6y3QNl33KcUCnWPIvFIs9eJTklx+GTDH
 aBg2QOFdgQpttia53q78wkJEFnkhKYJAnU50DMiTYtzjExq/UaHgJF2EaFD2J+pq6uoo
 vaToTni2w1rOuhQ5JxrVLU4FdQH6ye30pnFvSlw9KhrgqVauxnVoad55YGYUinHWC95K
 MR7A==
X-Gm-Message-State: AOAM5301so0U32NuMEO5TOJmh3HXS0rRaXvG5jsljF9ohrozBnMInNxY
 qMc4XOzEdwN08jSz1kvt9ZHxG1yjnErki3jXu44=
X-Google-Smtp-Source: ABdhPJyY9S4uSeIm8+FWV1ReFFcjEQAjkK456dUB3Z0vev3UAXDxLd2bRQ5ABTQfCYGAGWMpZbApuPjrvI4UBdZT3sY=
X-Received: by 2002:ac8:c8c:: with SMTP id n12mr10030569qti.339.1611762547285; 
 Wed, 27 Jan 2021 07:49:07 -0800 (PST)
MIME-Version: 1.0
References: <20210125141803.14378-1-chris@chris-wilson.co.uk>
 <20210125141803.14378-2-chris@chris-wilson.co.uk>
In-Reply-To: <20210125141803.14378-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 27 Jan 2021 15:48:41 +0000
Message-ID: <CAM0jSHM1DgO5ggNUa+yx_9UCqVBSumeu4XgS0EWBun3-E+Trhg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/selftests: Use a coherent map
 to setup scratch batch buffers
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
> Instead of manipulating the object's cache domain, just use the device
> coherent map to write the batch buffer.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
