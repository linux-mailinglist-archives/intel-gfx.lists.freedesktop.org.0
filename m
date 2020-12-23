Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D44652E1F99
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Dec 2020 17:50:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8859D89B0B;
	Wed, 23 Dec 2020 16:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 291D58990D
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 16:49:57 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id s6so35454qvn.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Dec 2020 08:49:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hjzm4c6h62lRgbZOfHyFf8vo/QCOnheqW2l5mxlGsk0=;
 b=U8nVB0MMYBiL2C4AJ935LX5P6GplcgeUDPIJzcoMQPXbhRWLkFtKiElbRxWdtA5vYn
 +DoTuITOforvKZk4PQ09D7P80K0W6UItU1NdGLpsLzuRZGJeyRW8DcUmoI6+Z0pOIbmP
 2Q7BNjNtixkws7+CVTDXSXddjeJcF53jDviqlU0zeovf4VQ7YmidZYRqulwzuZrnPxtA
 qc8MVFjtpK7xXVbSGQM+nyj3zw7MVYO0W+wPTbZLrEP0ALJNyYeu4NffNs3hIQLU6Tmp
 qfsF1kt4k5Mtt8Vo7IIY4nRRKPjxm5VXiGFu1S5Ymo22bHBx6TP3nQcWY1GJPPP+MSFR
 qvhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hjzm4c6h62lRgbZOfHyFf8vo/QCOnheqW2l5mxlGsk0=;
 b=SzST6lSMQEkl9Yv6gAkXVOx/M90bqNv0rp5V9EWRaBJGzjGdwmTOPfMnu2wKolcmvY
 nT0rOybAyAX0eOb7fLLaQe59m0qgTEW2rZS90cs+ODBMW/y5ih+MXqxoG6fyZJ3gOzBo
 b0VVamtdExjT3shtuGDRTFx92N5EOCiMufBaMvzw+V6GagmS5NTSr0N2gKBp0WNEwE5H
 dsvs6TokjtVtSlp8rgzctoSJ6pwRdazeXniSyDfNs/2Mb3J34JrRuEkLY4vx97TGa9Pa
 ODK09gVrW+caS8vEgFk+MuXJHuDCHNfiDW3eSyT5IYcIAGls4H7S0evV7qAiEPrCFFsa
 wxjA==
X-Gm-Message-State: AOAM532CxZLT8Y1V4NuyN+K+7v7/JPFObDO05/m8ojlzIGXEvUWq0PAs
 bGlJTu/sXyECm3b/itQ/xf52464MlxfaBqXi+gJ5Q+1J
X-Google-Smtp-Source: ABdhPJwv9u0D/sUpkyGPqgg+mJXrzA8gT37SJPbNnmjRuNQXmV5jwukzDrH5pC5z91GSoa6zH4AxaiMokOSmxyoE9ds=
X-Received: by 2002:ad4:5be1:: with SMTP id k1mr27721432qvc.48.1608742196197; 
 Wed, 23 Dec 2020 08:49:56 -0800 (PST)
MIME-Version: 1.0
References: <20201223154509.14155-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201223154509.14155-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 23 Dec 2020 16:49:30 +0000
Message-ID: <CAM0jSHO+z9rUsWoF=8wh6PHQdqtULY+1Bp63SpK0VEdadoeBEw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Remove redundant
 live_context for eviction
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

On Wed, 23 Dec 2020 at 15:45, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We just need the context image from the logical state to force eviction
> of many contexts, so simplify by avoiding the GEM context container.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
