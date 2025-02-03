Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 932D2A2ACF0
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 16:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3776910E8B1;
	Thu,  6 Feb 2025 15:46:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="i09HP9fD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D93010E548
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 19:23:20 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-5d3d14336f0so7443911a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 Feb 2025 11:23:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738610598; x=1739215398; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=RDFXv1F5Ks9LCWQoNvJmEupSyk0aucGYvgHW1w2j/sM=;
 b=i09HP9fDiXHjKN5Wp8D9dZEoF3fTIvafZxTJLqhRjIzJ/e/VJnhKoVsBMi5ZHKfCyP
 Oz6AfmR8lpAW9trKYB6HGMSPJkFWttCN1pckdqbrQ+azSIKB5d5+5rbA+hxdg4z2jsqp
 4eGh6o41OvotFdzQamw9xJ44TQMY1Eus2UD2hezUbICodQm4c2Jobja/2Lua1YIe04Ph
 V9TA6CFi7FooUPn7W69DEtQAqYuQwuDmNHlerjEcVZHykk7CeWr5qTdRcl86T4supmny
 +8U3bRpUd4YcVi1iLiCD51plIcu7/QC+7jLbb3tUxSdHVwoOD1aR/CUJgItsGRTX6vx9
 o09A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738610598; x=1739215398;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RDFXv1F5Ks9LCWQoNvJmEupSyk0aucGYvgHW1w2j/sM=;
 b=b2LcfRS9MlT/HGNcxeyLjJlSHdjhcEtxaQtQo6XkrdzeP/jP2Oo8ujnrRUacNq4Slq
 Mus8BvtKzKoj7MXQaS7DpqsUthyTF3qFWNypc7z9MPdba1b+OZCRuYdtTXWDnvTfe2WK
 KoYanalfKw+mUMxzcaxi201fDsRomTdXd/0sFC7pRJ3MrNULUBDqNJElgaIWbMF9jPtZ
 FrAF3axryk6hnz+6K4hsNXd7M3vSpJxTYXs9ox+bH9mPf3TOBTNG8kTh0G5yLCARgVFy
 iwPTePaPdr1VjGp0Tn2Dc1m0i4sWI+XxXFPHZBcWobxxoV8apXnEllWzOk1RiHPl8d8M
 lbYQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVyj0l8JHIyG0bRypwShGSNAJ8bduNDfynClaCxW6LVpOOCBTzntd4zWzYL1pNmPu7orUOtGAH8mFA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx3ZDJvT6nUWydJhUiZgC8zu2kHlAG04JHpCIvvSoLfSkZAhf7C
 ZGIYRzRfMlvQ48YIOeSSfQ52b79QwB7kzZMSjJtIiDsT/yud5W9VvxeFgvkGWuvB2nfU1YRx2KB
 TAQV5m2Lni0pWLIrcI80JU47L3Po=
X-Gm-Gg: ASbGncsOP0Cqwu43VdqFxXsIL+aQ3IaKS+1udRCOmeDX75CSFHZJVKW45/eao/b2+lC
 AUejQP5iRlARj3chxqbmFIqHheAy/gM9JBQw7Q0iPTXveyhw48jGHw45DeUDWEW6Ryfn9Ar4=
X-Google-Smtp-Source: AGHT+IEYt+RS4nPclH5WXXjLRmq1WCNXZslhmWAX2Lei07l7NVa+K3GfS4WPsttonT3lvcR+jg3QGIJquw1G4gDT5AA=
X-Received: by 2002:a05:6402:2390:b0:5dc:72e1:63ee with SMTP id
 4fb4d7f45d1cf-5dc72e1647cmr16326070a12.6.1738610598400; Mon, 03 Feb 2025
 11:23:18 -0800 (PST)
MIME-Version: 1.0
References: <20250131001806.92349-1-vishal.moola@gmail.com>
 <20250131001806.92349-2-vishal.moola@gmail.com>
 <Z5x3GQAzN3S-plD9@infradead.org>
In-Reply-To: <Z5x3GQAzN3S-plD9@infradead.org>
From: Vishal Moola <vishal.moola@gmail.com>
Date: Mon, 3 Feb 2025 11:23:07 -0800
X-Gm-Features: AWEUYZkX3o6SMugA9aoozPCgNgPCXrMAXYJeYiZLUbTCFY8OHuBfzWm38XDwmC4
Message-ID: <CAOzc2pwCOfniCESzhNg9WE73YXQL7516Fya4Rrwij4CfWSt+Lg@mail.gmail.com>
Subject: Re: [PATCH 1/2] mm/vmalloc: Introduce vmap_file()
To: Christoph Hellwig <hch@infradead.org>
Cc: akpm@linux-foundation.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, urezki@gmail.com, 
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Thu, 06 Feb 2025 15:46:02 +0000
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

On Thu, Jan 30, 2025 at 11:09=E2=80=AFPM Christoph Hellwig <hch@infradead.o=
rg> wrote:
>
> On Thu, Jan 30, 2025 at 04:18:05PM -0800, Vishal Moola (Oracle) wrote:
> > +     rcu_read_lock();
> > +     xas_for_each(&xas, folio, last) {
>
> This only maps folios currently in the page cache, which makes it
> usefull for everything except ramfs-style purely in-memory file systems.
> I.e. for the shmem use case in the second patch it fails to swap in
> swapped out tmpfs folios.

Ah, I see. I can drop that patch then. Its primary purpose was to provide a
user for vmap_file(). As you've pointed out, that won't work with tmpfs or
anon pages. I'll hold off on a v2 until there are better usecases for
vmap_file().

> > +EXPORT_SYMBOL(vmap_file);
>
> EXPORT_SYMBOL_GPL for any advances vmalloc-layer functionality, please.

Ok, I'll keep that in mind in the future.
