Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE632FBB6B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 16:40:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 434DA89CC4;
	Tue, 19 Jan 2021 15:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B658689CC4
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 15:40:44 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id v126so22165464qkd.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 07:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+l8kN0kLsWK0Hw9tM6N5bECVSBWir3POkP317fj7eA4=;
 b=ofmcAIi9rKOLocbuVHmg5n0UbeXvIAJZ0JKQ921F4aDzNz5xiu8Y3nJe4B0jpietAN
 Hreyo/C481QYeWDRMe0pZmWbUdhzb5Ai9nT5YiLsJ968874uemodbt19A/PeX5Y8ywrs
 zPgrL7dY1pIumQNIIhs3nK70ktzIOOuaq4eqfyMPQ2ZhzrXb/5qT91aQqt7B/4JcYUu8
 5yYf3ko++7Kdc2r2rXbi9NPLQ/TCkXAWVDalQFOejOW0UUk2qKJWtdyVHukPuqfTn+H1
 bcglGfP8hvqm4F8v9+d7G2yiZQCIPPEG4ReOiTJatGzJ8Auqcyb9n9chNWeJnc2TpLeN
 OF4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+l8kN0kLsWK0Hw9tM6N5bECVSBWir3POkP317fj7eA4=;
 b=pHAmutjG0M0jedk8nXOVHzeEaVnU0zp4XAmSmuG0qTRHy2HbxY6B2HXHopbvu1gQUB
 IASU6teRqv85LMjjnxKaZ7hDbcFuUgj/QwH2glkgJL3YVsjY9pCbq2wnjPPHgnyvcVPg
 tF31McIbYt6E/8Ha1h/zMPhGKz4KmUSrcVb+OJ6eg0t23nQ8AC+evR9GKwUSjV/i+uQ+
 H402vQqeg3WRf0FQiYxF8tELaFdCzM2FXagc5HkVc69/7fJJPX9RavXayX4IXWWN81YF
 mtTaAPCNMh3yphpUD9tQFfox2rd/qsK7w+V9PgyaFwxMniOnt9qkWCMHgcQcpGKfY3uY
 nsWA==
X-Gm-Message-State: AOAM531rIjKMVZ2xFJlG+r21TJIYNomeJ3BTZBoV2Z8FKPDr8MKKy2JO
 0IzGc/w1xAnVvpMAkYZf871ACRqWzQ49a7SqbCtXdJunsGw=
X-Google-Smtp-Source: ABdhPJyn7FuIp60ICuctiaFit4YFdEdfxcG9AZYcD7tgRN+1VVS2jqrJ7EQ4mNhw5B0HvHAv9VZ/Uc+PDRwz5vzGNyY=
X-Received: by 2002:a37:418d:: with SMTP id o135mr4962361qka.426.1611070843796; 
 Tue, 19 Jan 2021 07:40:43 -0800 (PST)
MIME-Version: 1.0
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
 <20210119144912.12653-3-chris@chris-wilson.co.uk>
In-Reply-To: <20210119144912.12653-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 19 Jan 2021 15:40:17 +0000
Message-ID: <CAM0jSHNbye-rHdu2HoXC=wC6MmCbidC_PxT8kB0Fc-HcF27A4Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/gem: Move stolen node into GEM
 object union
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

On Tue, 19 Jan 2021 at 14:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
