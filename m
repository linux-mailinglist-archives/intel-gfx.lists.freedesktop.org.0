Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9A7B3050A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 22:24:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31EF710E397;
	Thu, 21 Aug 2025 20:24:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="DggB5Lys";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
 [209.85.221.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECABC10E397
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 20:24:47 +0000 (UTC)
Received: by mail-vk1-f179.google.com with SMTP id
 71dfb90a1353d-53b17534eeeso554933e0c.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google; t=1755807886; x=1756412686;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=6aeG3+zXNcZH2d1Z1/su6zkQOg7Uc4j3Xw+oqie+iPw=;
 b=DggB5LysdHzKnNcc4Bsb0g2TFp1S2uVATvQS4yf0cb1kYPOBuHm99pJ+2D9UoJWkex
 rzFjXhH80PfRm7hZOXdQ+XQyX+EVgX3tGnbKTsNlHHGePQCssJKD0+XopzsIbHB6PIJT
 vvwwd6ST3pLDhKWWQu1gsFhkmxzYUz1JuBvKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755807886; x=1756412686;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6aeG3+zXNcZH2d1Z1/su6zkQOg7Uc4j3Xw+oqie+iPw=;
 b=A8NV2vYYx5xiZHspjN7uU+VBHBnR96N7xTsb2MaYn/5ZiphVBcROlzsAteiwL+cA41
 HTVu6bMwpBy+K0LvdkE/VIM98aNRxZirIlXllDgbI4bosx88MzjpBPgp1ldLJ15k8A+8
 x9dXmuF23/wlB4ZPgUHPxCw/jS1qpEQPiq225yBjGJa6IjZKBTRtLo2VH1eh07axLrux
 QbUZxBLlPYPdcPluSCVzZCm3+iTYSvIZdgkzi41AFks7+YlOp7od+D4E78BhNMpwqmd4
 nnGudbShzZ63ySk9q46QJWaQ3p5WPFnt3TH50t5Jk/ACOnjZx0N7f19xPoDpXOaKteP8
 6jBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVNBq2nNWs7NbA4X7QFAJAxOwehp13AVV9mr7ANrT8wyjpJGBdFgqMQqb72vDe2tp2fn+35LDROJ3c=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy9WzCJCQLocsF98HrOIdqmcM0X4nVhiNOHZ3KC+815gnDcJxkF
 UT1vRSwx1kpS1PZyHaVmJfyN/kBIhsa8+HfpzPvR3o+E+Gky16q0ZIi25cjb41gBshFzLvngsaF
 W3Z7+fWA=
X-Gm-Gg: ASbGncsrzTb11pkKKHAYMLA3ONcJ9aSHFwu8Njx12mrRLVrc1XhIg6OXF9ULq8bVQOz
 XKR6FWioE80qOL9PhOJjZuNOBEmTx/uVdbQ68feKgjSBDzqUmFNwUdudSETT+VV9O6nxBMMyjgO
 tvJKeIkuNreF4d2XZR9ieq5xUFWceHXNTXfCvUm44j2Wshm6OXRArgAV7CqgIK9ww93at8RRJy7
 Jt+wiWGVaIY0luAnSly65jHtCU2K+0BVd6l2M4Ka4useirtjg1MWSKBCa6cM8h+mCtO8GJL5q6E
 YYDriPT/NBM49wjQKarfmRfp8So09ANTQNXT5ZrwoKGQ984YYB5//DJmhe2vWk8dwkFTiX2mnzT
 w7g8zNoUseXZLjKmiPv2ecaMzBwMvdtCEc5HDQiVHEI58eOYk6+giUjIxn1fbL3m1tFC0d1ACmy
 buxgy27PxBOdo=
X-Google-Smtp-Source: AGHT+IG4Wqx9TWq2h0imW8k7/r08QHyy9M5xfuyiV6HrThfy3k2jQHf4QXLSAVHJ2YoP6WptjRjCfg==
X-Received: by 2002:a05:6102:3e1b:b0:4e5:8b76:44c5 with SMTP id
 ada2fe7eead31-51d0edcc3afmr172454137.22.1755807886556; 
 Thu, 21 Aug 2025 13:24:46 -0700 (PDT)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com.
 [209.85.221.171]) by smtp.gmail.com with ESMTPSA id
 ada2fe7eead31-5127cff2c48sm4200418137.4.2025.08.21.13.24.45
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Aug 2025 13:24:45 -0700 (PDT)
Received: by mail-vk1-f171.google.com with SMTP id
 71dfb90a1353d-53b174ac3e5so531260e0c.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 13:24:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1;
 AJvYcCVmrrLfkMYPcfhGR0FwLJ9Lu+rB/7EAWhJETMVCa1D1w2HX3sXnNOxdStdF5NVfm1hbEFFWER7hr84=@lists.freedesktop.org
X-Received: by 2002:a05:6122:1ad2:b0:53c:896e:2870 with SMTP id
 71dfb90a1353d-53c8a40b923mr212315e0c.12.1755807884664; Thu, 21 Aug 2025
 13:24:44 -0700 (PDT)
MIME-Version: 1.0
References: <20250821200701.1329277-1-david@redhat.com>
 <20250821200701.1329277-32-david@redhat.com>
In-Reply-To: <20250821200701.1329277-32-david@redhat.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 21 Aug 2025 16:24:23 -0400
X-Gmail-Original-Message-ID: <CAHk-=wjGzyGPgqKDNXM6_2Puf7OJ+DQAXMg5NgtSASN8De1roQ@mail.gmail.com>
X-Gm-Features: Ac12FXxaZhwn04a0gbwY6rjh9UGLxnRlGOG0Jy0WjRbVAG0UxLDqNy0Wydj0GQk
Message-ID: <CAHk-=wjGzyGPgqKDNXM6_2Puf7OJ+DQAXMg5NgtSASN8De1roQ@mail.gmail.com>
Subject: Re: [PATCH RFC 31/35] crypto: remove nth_page() usage within SG entry
To: David Hildenbrand <david@redhat.com>
Cc: linux-kernel@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>,
 Alexander Potapenko <glider@google.com>, 
 Andrew Morton <akpm@linux-foundation.org>,
 Brendan Jackman <jackmanb@google.com>, 
 Christoph Lameter <cl@gentwo.org>, Dennis Zhou <dennis@kernel.org>,
 Dmitry Vyukov <dvyukov@google.com>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 iommu@lists.linux.dev, io-uring@vger.kernel.org, 
 Jason Gunthorpe <jgg@nvidia.com>, Jens Axboe <axboe@kernel.dk>,
 Johannes Weiner <hannes@cmpxchg.org>, 
 John Hubbard <jhubbard@nvidia.com>, kasan-dev@googlegroups.com,
 kvm@vger.kernel.org, 
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, linux-arm-kernel@axis.com, 
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org, 
 linux-ide@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 linux-mips@vger.kernel.org, linux-mmc@vger.kernel.org, linux-mm@kvack.org, 
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org, 
 linux-scsi@vger.kernel.org, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
 Marco Elver <elver@google.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
 Michal Hocko <mhocko@suse.com>, Mike Rapoport <rppt@kernel.org>,
 Muchun Song <muchun.song@linux.dev>, 
 netdev@vger.kernel.org, Oscar Salvador <osalvador@suse.de>,
 Peter Xu <peterx@redhat.com>, 
 Robin Murphy <robin.murphy@arm.com>, Suren Baghdasaryan <surenb@google.com>,
 Tejun Heo <tj@kernel.org>, 
 virtualization@lists.linux.dev, Vlastimil Babka <vbabka@suse.cz>,
 wireguard@lists.zx2c4.com, x86@kernel.org, Zi Yan <ziy@nvidia.com>
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

On Thu, 21 Aug 2025 at 16:08, David Hildenbrand <david@redhat.com> wrote:
>
> -       page = nth_page(page, offset >> PAGE_SHIFT);
> +       page += offset / PAGE_SIZE;

Please keep the " >> PAGE_SHIFT" form.

Is "offset" unsigned? Yes it is, But I had to look at the source code
to make sure, because it wasn't locally obvious from the patch. And
I'd rather we keep a pattern that is "safe", in that it doesn't
generate strange code if the value might be a 's64' (eg loff_t) on
32-bit architectures.

Because doing a 64-bit shift on x86-32 is like three cycles. Doing a
64-bit signed division by a simple constant is something like ten
strange instructions even if the end result is only 32-bit.

And again - not the case *here*, but just a general "let's keep to one
pattern", and the shift pattern is simply the better choice.

             Linus
