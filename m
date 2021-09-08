Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 323AE403219
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 03:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8140F6E0EA;
	Wed,  8 Sep 2021 01:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5066E0EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 01:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1631063834;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=B+aUWkumDLvpY/5/mDBRU3tfGJdg+HlqTJY6hEbqpWI=;
 b=MWW2TWMg7fA29+XxCGHOFmGADHPVeOODpoxdFYtbxjTJgNAFNzbnt4bXKsH/0dhqrvxnRk
 G2F8OoL+5sfzZkcW70dsbiIV3GpCW85/R5ug0cc8Ee93+1UXxwRAvuA9wt4HHSDER4J+9N
 llLJkylBMTkH9+rnsljLR9ATfSgyFOw=
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com
 [209.85.167.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-246-aPwIwO4aP3KT-HndCOa1kw-1; Tue, 07 Sep 2021 21:17:13 -0400
X-MC-Unique: aPwIwO4aP3KT-HndCOa1kw-1
Received: by mail-oi1-f199.google.com with SMTP id
 x13-20020a54400d0000b029026825ff437cso410438oie.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Sep 2021 18:17:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B+aUWkumDLvpY/5/mDBRU3tfGJdg+HlqTJY6hEbqpWI=;
 b=BScqYjZ5BUmcB4Rmit+x5zi8hhiXYov4evxJwdjADl4UOtOuSMvsAt1hVrcLBE7wX8
 dRv8DpmdYV5iIWL49LbaflUvmmQl8xr8eUSGfANtDqnm1BcUoa17KPxJR9LQKpy56BPk
 5oJPYN5TFvokgI2ZQEdgQVF+XNX8suW66MNn55y3NknKD37ecqox6Rh8bZKyjgP/uW5p
 B0ts/srlZYyK6fY191+JDXpH1iYOY/p/jhuJXrurabgPEEXrZFJNkV8TNU1e9egSESRB
 //tf5bt0e5ETwU1PoEkQ4EcxXe/GewWcXoNNO/SzY/lLg3Z2n0jhXgADcCfZLIkM/A2h
 dDpg==
X-Gm-Message-State: AOAM533lN49iPDhu5YVYhxR5k3235VaCUJ44EOfiBUpX0VWKw8gsEBgA
 mTLjDm4cZ0lcnnm6KpZRK91GOzTkrIv4eeS/Ct/PMwaqNYR6ejNAa9vGFvrBMLMUl7loVnZN972
 3bhM1mDyhfcuijVJjNDRkiWglQjjFatCi4X6OjLD0KrN3
X-Received: by 2002:aca:2216:: with SMTP id b22mr688083oic.163.1631063833080; 
 Tue, 07 Sep 2021 18:17:13 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx0i+PzpJ/wjH0AwwSkxZ8A+cbnJNHz/afSuI0qwCO8J/213TqaiZ4TmkZwRLW2axBE1P8XqREGdvQLJPBlG+A=
X-Received: by 2002:aca:2216:: with SMTP id b22mr688072oic.163.1631063832858; 
 Tue, 07 Sep 2021 18:17:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-3-airlied@gmail.com>
In-Reply-To: <20210908003944.2972024-3-airlied@gmail.com>
From: David Airlie <airlied@redhat.com>
Date: Wed, 8 Sep 2021 11:17:01 +1000
Message-ID: <CAMwc25q05MtC_CUuhF5xxGMXsb9TQLd7b+GvPRm90gzvA69jGg@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Cc: "Development, Intel" <intel-gfx@lists.freedesktop.org>, 
 Jani Nikula <jani.nikula@linux.intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=airlied@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 02/21] drm/i915: make update_wm take a
 dev_priv.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 8, 2021 at 10:39 AM Dave Airlie <airlied@gmail.com> wrote:
>
> From: Dave Airlie <airlied@redhat.com>
>
> The crtc was never being used here.

/me realises I've noobed up the Sob on these,

I've added them to my tree locally and in the branch I posted to the
other thread., if there are comments/no comments I'll add them in a
respin tomorrow.

Dave.

