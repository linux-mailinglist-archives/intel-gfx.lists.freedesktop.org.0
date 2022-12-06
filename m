Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8586439D0
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 01:12:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 378A010E2C7;
	Tue,  6 Dec 2022 00:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa31.google.com (mail-vk1-xa31.google.com
 [IPv6:2607:f8b0:4864:20::a31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65B410E2C0
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 00:12:14 +0000 (UTC)
Received: by mail-vk1-xa31.google.com with SMTP id r3so1468327vkq.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Dec 2022 16:12:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=kb16mhFNurMjnvNSm0ZZbWFLojjsMmnpwgy1aPEmtFc=;
 b=QKyA5R3Loii+cUj8Ssc/CF501gwH1CbYM8ZJIZW2UTV9xiYuphX64m4ftdCuItmNZv
 mU565vyLTTUMgmPcOy5hJbr2d+gEEco9B52iu8bNTqbRsuS/rMthjKOwht6kmjwPsPzY
 7GpZHcxDyv0j7gh0hDAe5o1sDMyqRFA7a6Zk+JOQf5995lxZZ9uW5BWQxC5YkwAZCgJi
 er2jdd7WK0XbUN+H7HROc8qewPSwGRlPljygCtJC8kcUrUn6d4d3KIW9lBX55OP/eYIp
 OoGjfWGhoDC6ZK0P8WPLnX3b9iMqgqI+UvIthwCHeObXtEjHNd5555hZrNjZdDqZ3GrR
 354A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kb16mhFNurMjnvNSm0ZZbWFLojjsMmnpwgy1aPEmtFc=;
 b=uHDjqQYCN6FYIzaBC5ZVkhYVFTLpAoNNRoyvSaPDuJvu11IVBxCj3R2ELaZ5PjQ24N
 7nl6wX4ZCE3XrU8QDg+Ft+EIdd+xGgLPCNs7kjh1sUcn1Ihvf09LvW1wGY/CdnXFCqkx
 cqEdWh3XMKKhgxwL9XHKrh/Bapm3ZxAH5xDBVgeTZoF/d+F3zThn7JJEX7vdZQZ0q/vw
 IWgA7g8CMevD3u2pSmW+Gjat3waDYXPVeFfZkuSKVUxjG+AUk750neWVPe9+dHC/b2SG
 BBJFMvZ6Ta9PClgrd16LhxBa6V1t5xSWS61gf6yQgkEvdxMY6v0jE+beXDfTUP0kmNWp
 9bjw==
X-Gm-Message-State: ANoB5plrJdS6dpaoejwvRWQlJdDJb6xmV/lD/82dW+cEaS7ITcndk+Wa
 BTW5JtrucRkQvE2n6a2nrrw/gnCONNSql3fAORuxeMWe
X-Google-Smtp-Source: AA0mqf43xcI9S4YYJ0QPsY3xvQNY/F5pVHvYosXzjTSXD+hKr6XkVC7j3DbIKDfsr6eMVnBphSmz+gx2DcN+2XSeYK0=
X-Received: by 2002:a1f:2a49:0:b0:3bc:61cb:e4fa with SMTP id
 q70-20020a1f2a49000000b003bc61cbe4famr36568349vkq.15.1670285533327; Mon, 05
 Dec 2022 16:12:13 -0800 (PST)
MIME-Version: 1.0
References: <20221205161005.222274-1-jim.cromie@gmail.com>
 <167025709804.24405.11128648795170347079@emeril.freedesktop.org>
In-Reply-To: <167025709804.24405.11128648795170347079@emeril.freedesktop.org>
From: jim.cromie@gmail.com
Date: Mon, 5 Dec 2022 17:11:47 -0700
Message-ID: <CAJfuBxyPtDeJQrgAi1Riqf0VGvcmev71UD=M5EEBULpPjBq-Cg@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBE?=
	=?utf-8?q?RM_-_avoid_regression_in_-rc=2C_fix_comment?=
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

On Mon, Dec 5, 2022 at 9:18 AM Patchwork
<patchwork@emeril.freedesktop.org> wrote:
>
> == Series Details ==
>
> Series: DRM - avoid regression in -rc, fix comment
> URL   : https://patchwork.freedesktop.org/series/111631/
> State : failure
>
> == Summary ==
>
> Error: patch https://patchwork.freedesktop.org/api/1.0/series/111631/revisions/1/mbox/ not applied

whats the right upstream to avoid  misapplies ?
