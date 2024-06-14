Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C679090F5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 19:05:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBF510E238;
	Fri, 14 Jun 2024 17:05:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="aEOwAX/6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
 [209.85.218.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C836510EDF3
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 17:05:01 +0000 (UTC)
Received: by mail-ej1-f45.google.com with SMTP id
 a640c23a62f3a-a6e43dad8ecso438271766b.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 10:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1718384699; x=1718989499;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=qzYNeCAQeD4+6NsX8RjP39JkkbQ+pGWaSkdyTn1CwzA=;
 b=aEOwAX/6t9Ihf6lsqRUZ7c4eiylkIkPDG5J285FagvOvfMX34fl8CGjlkHdU81hyhf
 QoQcsQZGTISwjeKlPPZzWKtYD9MWeZQz0tGzByPgaQGAGdwlCYrnR08+gLSKs7aUjtCn
 sd/woSo3nXCG4SKslQtN9OLdl4qU7M4Qf/b5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718384699; x=1718989499;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=qzYNeCAQeD4+6NsX8RjP39JkkbQ+pGWaSkdyTn1CwzA=;
 b=L0ZnltEXHYCtg+qTjOHrSmkHZqH36/rJ6zGYe8PhbHX1eac9sWC+C+uOhXsA0W7mSI
 4b9tSWbOB0mNDS4a0nkNzWZHooD4em64HTz0smLM7dCDqnJcpW24/bufsd03HXhYz0xF
 6aZCWlkslLVwiWAFFmCd/4McrV1djm1j/UDfsNPVNL95YYTMRD3p9vfEJvL+KhDVI40o
 SRN+FWrtdgrQakyU/CVZjDynO5PtfQxJ/u5z0AX7lM+8o8qvZ7cWFPbr+KKlBMXOLpmG
 zC34pwWFDCl1zCEuogtIQJiKxBpUlouHsVpY9+3vU4UjTlYcH0hZYY4mb+XZHgIWD/9n
 yo1Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZC+6XZKQ+xY2EB445iN+m8Icf47hUMn4rF2VK3QdEX4uciQsNSXNcH9K1622M9UWvI6xFGVe8kp6+39CS6n4Sm1y4PaELXMqHLdgd8eqb
X-Gm-Message-State: AOJu0YzWCrGyRhHFbHfeSKdn+uOZPFkoAtGQsxJfDmLEhh+t/H+lB5K9
 xapJeq+Yu2FCHNS1KA90LmlyRL4O9ajYYmkxxUb+7lCgS/7cW86UqV7Ojaq7S3JUyOWvOq8yPwL
 tnLNeYw==
X-Google-Smtp-Source: AGHT+IGcLx2u2uc1Qw8+lp5cwQxeC42OEqUg1ZWdbFEywChwuwZOIjWmgsopYNP5uUkZVkG9IefjMQ==
X-Received: by 2002:a17:906:5951:b0:a6f:564e:d80c with SMTP id
 a640c23a62f3a-a6f564edc87mr406490866b.25.1718384699674; 
 Fri, 14 Jun 2024 10:04:59 -0700 (PDT)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com.
 [209.85.208.41]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a6f6006887esm132290166b.20.2024.06.14.10.04.58
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jun 2024 10:04:58 -0700 (PDT)
Received: by mail-ed1-f41.google.com with SMTP id
 4fb4d7f45d1cf-57cc7e85b4bso663651a12.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 10:04:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVAmMkKEh+MvIpmcZx/ok3lTiP+SBFU4BypSnOFASg+EypBWj6ujNsJ3B3tpvfVLQLGNidtJSE2Skcojq+xrqGAh8dxqUliBRVE7CgRigIB
X-Received: by 2002:a05:6402:174b:b0:57c:bec1:ff4b with SMTP id
 4fb4d7f45d1cf-57cbec1ffeamr2002152a12.10.1718384698458; Fri, 14 Jun 2024
 10:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjQv_CSPzhjOMoOjGO3FmuHe5hzm6Ds69zZSFPa4PeuCA@mail.gmail.com>
 <ZmrTZozoi0t/tuva@duo.ucw.cz>
 <CAHk-=wjqHL7KjOWYBVKFewcKPWL7CJxddWfJnvL3AfOqfR8vMg@mail.gmail.com>
 <ZmwHGviv/6J6FQLf@duo.ucw.cz>
 <CAHk-=wigB-wVK+4=NuYJxoKLnoUXB52J5WU2hpKj2de6vGuY7g@mail.gmail.com>
In-Reply-To: <CAHk-=wigB-wVK+4=NuYJxoKLnoUXB52J5WU2hpKj2de6vGuY7g@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 14 Jun 2024 10:04:41 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjcdUUip96PnfC+iRjAwPHn3XKsgcohk1ad5VcckCFVKA@mail.gmail.com>
Message-ID: <CAHk-=wjcdUUip96PnfC+iRjAwPHn3XKsgcohk1ad5VcckCFVKA@mail.gmail.com>
Subject: Re: Linux 6.10-rc1
To: Pavel Machek <pavel@ucw.cz>, Dave Airlie <airlied@gmail.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, Rafael Wysocki <rafael@kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
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

On Fri, 14 Jun 2024 at 09:21, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Let's bring in the actual gpu people.. Dave/Jani/others - does any of
> this sound familiar? Pavel says things have gotten much slower in
> 6.10: "something was very wrong with the performance, likely to do
> with graphics"

Actually, maybe it's not graphics at all. Rafael just sent me a pull
request that fixes a "turbo is disabled at boot, but magically enabled
at runtime by firmware" issue.

The 6.10-rc1 kernel would notice that turbo was disabled, and stopped
noticing that it magically got re-enabled.

Pavel, that was with a very different laptop, but who knows... That
would match the "laptop is much slower" thing.

So current -git might be worth checking.

                Linus
