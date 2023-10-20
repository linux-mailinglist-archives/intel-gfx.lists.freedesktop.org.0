Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5962C7D0898
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 08:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03EBA10E586;
	Fri, 20 Oct 2023 06:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E9D10E586
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 06:38:32 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id
 41be03b00d2f7-5b837dc2855so373669a12.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 23:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697783912; x=1698388712; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=pLRoW9jAKi/zShczX++iKwv+OCE/bnBUGbYPeEkwNf8=;
 b=ZE5JiXgZ44zvRw7G8ZRFUSY61Wztdx4NL2EwbJ5cRJzR6X39AF8iC4TeNkuPgmPC8j
 ZV34r85qtLg8M6Yf66mqxao+bM3t5dhohVL/nPGJtF/JeLJ4x6UYlrbGq//BX0olnpfE
 Wy10NazB+UYG1+0eQ0hiWUmdqzL5fTUwNs5aCydkPsmCsKD7+Aehn2y01V/VVXjquEix
 Y4d+Si3wbp/2bUBbb7nNIUgg5Xr8YElUH/c3nBQlS+ZOCU1WxPYoCen4KXw9KtIrqLBD
 yZ+PS2DV8HWSF+FdZU48uU3ulANS+9tPBFL0vu+wMAEHNsWh0ME/p0LdHqPdvhRlvP5j
 ZJlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697783912; x=1698388712;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=pLRoW9jAKi/zShczX++iKwv+OCE/bnBUGbYPeEkwNf8=;
 b=Q9kN1c07f4m4PN+WsAPVs6sF3XaAYx5ePlIOp/lTD3ut1hInUQ/RYYjSGpNOOo8JUY
 hz9YeMuuhjNTu7DBHQi96vu+jiq0mMEaYeCdxcviPJBEtHU9HA+2KhM29iCz7tltxnh8
 BakgRoAn7ngGDbu3yC4aIUh+BaSDWAHBQBYZ75q0BAyLhzHUl0k8+dzjbxhQ0siON71E
 ASrN/1qqKm7m0BVgrSuTSa4wM1T+CWEwli5E201Nyikmt1zS2E4HmNx7sL5tK7uTQhx0
 QlQWIheDkzfFKi+sdOlW9fxHQM8FzAuXdCGo7TKHEcQYyissP3zac+uXj4AE/gUBGlGW
 wsHA==
X-Gm-Message-State: AOJu0YxfaNVSxqJM98SW65jjYOSYGuolp6GdF1OmU0y5gIg1Ef/2mG4D
 KCil9mCKU6A7XWnKfnqZbjZ2jqHLHCuq7Kx9SUw=
X-Google-Smtp-Source: AGHT+IEq7C/Wb6kf1NafC3EZVd5YkDgWbLEZu89qDLik8TywVd/5x77EuLGEJdqwGHdlwlG8mkvKtj4avp0As5QslN8=
X-Received: by 2002:a05:6a20:841e:b0:17a:e981:7fe4 with SMTP id
 c30-20020a056a20841e00b0017ae9817fe4mr6764168pzd.16.1697783912231; Thu, 19
 Oct 2023 23:38:32 -0700 (PDT)
MIME-Version: 1.0
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
From: Lorenzo Stoakes <lstoakes@gmail.com>
Date: Fri, 20 Oct 2023 07:38:20 +0100
Message-ID: <CAA5enKZntFwvLxD4z83301vH+OE8qCx08cDAaY3GQxAMYbbCDQ@mail.gmail.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] Regression on linux-next (next-20231016)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 20 Oct 2023 at 06:52, Borah, Chaitanya Kumar
<chaitanya.kumar.borah@intel.com> wrote:
>
> Hello Lorenzo,
>
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
>
> This mail is regarding a regression we are seeing in our CI runs[1] on linux-next repository.
>

Thanks for reporting :) It is reassuring that this has been picked up
from multiple sources.

[snip]

> We didn't see the issue on next-20231018. Is there a fix already available for this? If not, could you please check why this patch causes the regression and if we can find a solution for it soon?

This is because I submitted a fix on Monday [0] which has now been
taken into the weds revision of -next which resolves this issue
altogether, so this regression -> not regression is expected and
intentional.

Apologies for the noise!

[0]:https://lore.kernel.org/all/c9eb4cc6-7db4-4c2b-838d-43a0b319a4f0@lucifer.local/

Thanks, Lorenzo
