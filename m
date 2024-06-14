Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCEC909007
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 18:22:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7942610EDDA;
	Fri, 14 Jun 2024 16:22:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="ff+8QQz6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA28A10EDD7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 16:22:04 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id
 4fb4d7f45d1cf-57c75464e77so2845916a12.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1718382122; x=1718986922;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=307WA05poQdKSmwHQchgPVIxFWT4GF9NFWhPoKqw/Q0=;
 b=ff+8QQz69kMaMgsX7x+VK/YwtjPLQrSaNASEbaxrIOL4LwKss8ZjExHe4KJNE65xrZ
 RD214PwOyFmAgRu31TnA9OFLBFbK1eukINuUVNjNLhA68/S12pdTgtVDx8dphE/+ZY6t
 I8Tm9KV/efuwSmPmLG2FE5z2ebt45PZqLG4Vc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718382122; x=1718986922;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=307WA05poQdKSmwHQchgPVIxFWT4GF9NFWhPoKqw/Q0=;
 b=puUIv4S+94ij2mOWwMFPca/heAPbfOrdx+W5AnKVAfKrVuC2ph6dSWoZcWBradduvF
 IXB4S/DsUtpfs5SrGOV8r5TzveqaORIe+Zsx+p895RNm6WdISmeMoEA3j8gVHwEk8msr
 NytG5jG8L2JDVYGTZxUgVAILnioqP9vRlFDalYKLt0Iumhu+EezI4BdAqZ9g8e2Rg/Z2
 jn8yf9JJwku4T5JxL8tuziIXNPpojwpFD22Yoh2CT2ZYNPJFK1GhGz/E0FsbVYTcPp3o
 QZ7WXxXvjqv2JxjqlePkJZyjYUQiZSnJ7I56XoOuKJzLzSoi8ZkwBegC3eVoWNwIBp/i
 HhMw==
X-Forwarded-Encrypted: i=1;
 AJvYcCU3obhr6ZS5OiXgzqhcwx62cGrQIs1PFqlmChHvC8gpD5W1t1EeBBGjeKJaQOY1cy97rfLhDeYyEZ3OiBIRgtcdXaV2480+mW3uJjGDCcr/
X-Gm-Message-State: AOJu0Ywj8DzLgcNL1IAeYrh9wGn4WJCZY8qJmePrYp+6sGa4kjPt2Ulx
 rQKihds9YXO+PYdaaHWBekf6BRGbBRoaf29CU5WosMAoyv5t5z1BlmsRJXEifuupgn7N6Xr5nSI
 O+9H9Bg==
X-Google-Smtp-Source: AGHT+IG72Oow9dwl4BwrnH8cZJsf3SaXIVoBYw1ZBaFzadda7kE+Hxyvl1rMLEjWSdf84D8t4NHIrQ==
X-Received: by 2002:a50:d742:0:b0:57c:75a1:2a14 with SMTP id
 4fb4d7f45d1cf-57cbd681bbamr2213400a12.12.1718382122600; 
 Fri, 14 Jun 2024 09:22:02 -0700 (PDT)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com.
 [209.85.208.48]) by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-57cb72ce067sm2488110a12.9.2024.06.14.09.22.01
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jun 2024 09:22:02 -0700 (PDT)
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-57cc1c00ba6so1070961a12.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:22:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVaUGLxH/Oj23J2Wp6NeRdyGdV8ZZ1c6vz/+csmQntZeZMTz/uWV+ekPV39Mm3JiFu9wP1AsgTX3uCqldH5FkqoOr8rOYljdJGwfnzc9frb
X-Received: by 2002:a05:6402:520d:b0:57c:c166:ba6 with SMTP id
 4fb4d7f45d1cf-57cc1660fc5mr2095600a12.19.1718382121390; Fri, 14 Jun 2024
 09:22:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjQv_CSPzhjOMoOjGO3FmuHe5hzm6Ds69zZSFPa4PeuCA@mail.gmail.com>
 <ZmrTZozoi0t/tuva@duo.ucw.cz>
 <CAHk-=wjqHL7KjOWYBVKFewcKPWL7CJxddWfJnvL3AfOqfR8vMg@mail.gmail.com>
 <ZmwHGviv/6J6FQLf@duo.ucw.cz>
In-Reply-To: <ZmwHGviv/6J6FQLf@duo.ucw.cz>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 14 Jun 2024 09:21:44 -0700
X-Gmail-Original-Message-ID: <CAHk-=wigB-wVK+4=NuYJxoKLnoUXB52J5WU2hpKj2de6vGuY7g@mail.gmail.com>
Message-ID: <CAHk-=wigB-wVK+4=NuYJxoKLnoUXB52J5WU2hpKj2de6vGuY7g@mail.gmail.com>
Subject: Re: Linux 6.10-rc1
To: Pavel Machek <pavel@ucw.cz>, Dave Airlie <airlied@gmail.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

On Fri, 14 Jun 2024 at 02:02, Pavel Machek <pavel@ucw.cz> wrote:
>
> If I can get at least basic metric on the gpu (%idle? which process
> use how much time?), it might be feasible. Is there tool similar for
> top?

Let's bring in the actual gpu people.. Dave/Jani/others - does any of
this sound familiar? Pavel says things have gotten much slower in
6.10: "something was very wrong with the performance, likely to do
with graphics"

To bisect it, he'd need some way to judge it reasonably well and
without too much of a bias.

See

   https://lore.kernel.org/all/ZmrTZozoi0t%2Ftuva@duo.ucw.cz/

for the original report.

Thinkpad X220 - which I assume means old intel integrated GPU - at
least one listing I found for that thing is  i5-2430M, with "Intel=C2=AE HD
Graphics 3000".

                  Linus
