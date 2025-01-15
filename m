Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BF2A12D09
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 21:54:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEFB810E7E2;
	Wed, 15 Jan 2025 20:54:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="x73qBOuG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com
 [209.85.222.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D84E410E7E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 20:54:13 +0000 (UTC)
Received: by mail-ua1-f42.google.com with SMTP id
 a1e0cc1a2514c-85b92397fe2so26221241.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 12:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1736974393; x=1737579193;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VdXo8lbXht5SZgkZQ04ipp/CMqgcMbj1MEn0xWqPJMs=;
 b=x73qBOuGeVGv/j/KEnrGoRf6nwkWpeSQUTrjRhBf6aVfUCBaplPqtCCcOZAx4JRE4v
 1d9WHbVS0Ibqyv1cklKbbfSxCyWuyp2ai46kwJLxTyYgnbzoPFbqWWxIThrmByvj2bw0
 L+9FU70S+hAMDgMKiKp3KEDPFWLC8l4prDRweHck8d6OMK6wxKSFiGnqFpmpVTKLAKT2
 1IONzYK/lUd4U6XwYlOiJlIbjXhwDpVq9RgeL6iYAe0AtB1E4oqiP7PKf/mneImiBzy/
 7BygLnB/rYjMULq1EMjrGtbSyRaaWGp1CYK3NUSSuodvj1GT/Owx5eTG/LzXVHowtQ9+
 KTdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736974393; x=1737579193;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VdXo8lbXht5SZgkZQ04ipp/CMqgcMbj1MEn0xWqPJMs=;
 b=g4CPUGpHQnDMpNqf9OrmmxWyxg/51P0iGgDyowPNyCeX8ZS+8TjktLdf1KBssDDoyD
 9ypswL9miBb/S//uf9q6jIE8Gs7+dDLfZg7ZPJ5EelPympFiih5Lqs9JEPrYOoC5W3Vx
 H2PLW9fPYVgzdKKpYAygV7GOpZUYSl3YvQVRGWeFvh0AccnDpV7hzL14u1xksUcFAVKb
 h4OIfpCngnOaj3zZ5sXCU2ej4IolZjQGON9NeWYzh2Erv++MRpyVvA2ySFZ8k/2MOabW
 hxdhC8T3L1VjcJNImywThE5NiZpudeNB1npYUtgX93KTjdfbL71xLeUxY0L/fuS+87Gl
 Wokw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXEeGTMpZsH2zr91Erp3+a8ulgw0Dc0gLUjGPyBeYRq7prKwgLrxYc5YaaixqcuzGmOFD50Dol7vuc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwLIbbHrX9qYldJcXgw1g3jrl1iKSCGmIL7T2TG3yngIGeUED6W
 0YGnLo9zbdtpVoQ2O9ffxwCu/S88vjU11q7KAp1tXkulFMTgKMpUaiATbofPg/nwMLGZkkx5Flp
 QT6kRmEr0AItiTKa2CitH6D0zpiz2A4OG3Xb5
X-Gm-Gg: ASbGncu8okT3vfOH42go7NZ5Ig8zSaWNjzkzt/8MzybrlqtBn1fL8TTTnVyJynBAXSd
 ahvvrot6LEW9xo/mfWZw46LMoVEKCGVdKj8Dc8B/R0gjcqh3RKPGcUkNqlZrji99TpnBv
X-Google-Smtp-Source: AGHT+IE7UsauDDLDB3PU6I85iW+57wTMyoC2RI6ZhjsNUrio1gBO9Rw8foY1mGOBbUURNkj3/A70Nc+YgN9e75p3kqQ=
X-Received: by 2002:a05:6102:ccb:b0:4b6:20a5:776 with SMTP id
 ada2fe7eead31-4b620a50949mr21061479137.17.1736974392789; Wed, 15 Jan 2025
 12:53:12 -0800 (PST)
MIME-Version: 1.0
References: <20250115093135.3288234-1-kirill.shutemov@linux.intel.com>
 <20250115093135.3288234-12-kirill.shutemov@linux.intel.com>
In-Reply-To: <20250115093135.3288234-12-kirill.shutemov@linux.intel.com>
From: Yu Zhao <yuzhao@google.com>
Date: Wed, 15 Jan 2025 13:52:36 -0700
X-Gm-Features: AbW1kvZLvuakft1NqA0r5gmvnmIH6WfLrEQ0-PFFagHKXbdONcPPwciIY5N5R1w
Message-ID: <CAOUHufa8FZY0tQ8Camv7mHN9tWPYLxcpjt5rFTDLg+NwYULOQQ@mail.gmail.com>
Subject: Re: [PATCHv2 11/11] mm: Rename PG_dropbehind to PG_reclaim
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
 "Matthew Wilcox (Oracle)" <willy@infradead.org>, Jens Axboe <axboe@kernel.dk>, 
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Chengming Zhou <chengming.zhou@linux.dev>,
 Christian Brauner <brauner@kernel.org>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Dan Carpenter <dan.carpenter@linaro.org>, 
 David Airlie <airlied@gmail.com>, David Hildenbrand <david@redhat.com>,
 Hao Ge <gehao@kylinos.cn>, 
 Jani Nikula <jani.nikula@linux.intel.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Josef Bacik <josef@toxicpanda.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Miklos Szeredi <miklos@szeredi.hu>, Nhat Pham <nphamcs@gmail.com>, 
 Oscar Salvador <osalvador@suse.de>, Ran Xiaokai <ran.xiaokai@zte.com.cn>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, 
 Steven Rostedt <rostedt@goodmis.org>, Tvrtko Ursulin <tursulin@ursulin.net>, 
 Vlastimil Babka <vbabka@suse.cz>, Yosry Ahmed <yosryahmed@google.com>,
 intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, 
 linux-trace-kernel@vger.kernel.org
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

On Wed, Jan 15, 2025 at 2:32=E2=80=AFAM Kirill A. Shutemov
<kirill.shutemov@linux.intel.com> wrote:
>
> Now as PG_reclaim is gone, its name can be reclaimed for better
> use :)
>
> Rename PG_dropbehind to PG_reclaim and rename all helpers around it.
>
> Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>

Acked-by: Yu Zhao <yuzhao@google.com>
