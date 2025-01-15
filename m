Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4BCA12CE7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 21:44:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7221310E51F;
	Wed, 15 Jan 2025 20:44:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="L3LspjsH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
 [209.85.222.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FDDD10E51F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 20:44:48 +0000 (UTC)
Received: by mail-ua1-f41.google.com with SMTP id
 a1e0cc1a2514c-85bc7d126b2so75331241.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 12:44:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1736973827; x=1737578627;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DmN+bSaJrXFtcRNihUwnk0h3safybjPC3LRXiDGWxb8=;
 b=L3LspjsHvUQDJ/VfWO9WcRMsap1kQULNHmuVNS/C6GoWKPRI3t84TPbJwyS06SKFCL
 0WmmFSsM+4YevNY+mUTx54AU8zNmcWDlbuD4ucGApW8/ApLsPrUjsr5YS0fVNfTKwZ34
 a5pA9l3N9X01RsnIuK69kfXG3Q6Z768FxNI3az5+WZOwDFBCAy/1xHxof85n3tZdqP7C
 8FqkoMXb/CVq9Dy8Ifil+iH2cXiOlpzmB5lysYeLsmbcDtvblLLSTbqFTpMArc13RHeT
 sN3+Wak5VdDa7gQAj0VUubd1+4FLwyvwECWyAity4XV9WH5mjg8zl/npkLvGB2KzvMku
 aGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736973827; x=1737578627;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DmN+bSaJrXFtcRNihUwnk0h3safybjPC3LRXiDGWxb8=;
 b=oL86xmgKQm390bZTyeRuXOSDOSIDHVH+kqsiKv8kkzsRG0gPnDVHhzLz+51yG25VPu
 kUBDZBmbMdSAx8PejMXj01buANqEu93SVu2zsuSoOE8bz/Mlp0rqSwj4BN89gJpsrUG0
 TWKJ8owbdtV+c7NeEiFLUiUOIoB9Ix6+muBLOUkWKZThJv9P1o7J+SRtiACVneSTvNNo
 f8wDzQuWWSQHAW/QYnJ0BTSVD1UQeG/3s8Vkq8tVktwqU1/8lPhWo+TudhAgaodEz0Wq
 xyeJXWtn/7ow9OQ3sxdlDx1mTc5JMCESLHJOOtPn894cqJF1o8fTwqCK0f4Su/+WxFSB
 p6Iw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUDYrBvsh1eeYwTp5VSCBaab3/y5gnEhUgVeuhLNMJH1//wwURMnclcfnPUS3TEPOf41Wr595QPJEA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwGVhsE/DsfgivLwFf6/3mONXfWHzqkE/GOOds9mrjJhQrtLWmH
 OeLhBiF8e72zHpQloSjq7VulkBhPH/ML9xDU1Z0EvcRL+ngxudjyaGkLL7vFh6qqfZdld1+2gPW
 HTsMPZJKw3l7AggXuq+3yDmP3EilSIdFm2Y48
X-Gm-Gg: ASbGnctJjr5qG/Rj1rGiz5rU/0mCdK9fPqcyBCxyu9MNjid5PzYrMg0/SvXXarQLt7l
 T1u1O/FyA7/eE3qqLlDBeYAzdexcGxO7XcfIbjR9UbcqyZyGDijI7FmNPEqrF+L3SYR7w
X-Google-Smtp-Source: AGHT+IGi0hs5f6CvB2IN226MXTm0Ra44UaWAgyGn2Hb2ZqR78sF/nuVzUSwuhQqEnx/3viOFB5AlpGvLLyrmeG3geiE=
X-Received: by 2002:a05:6102:26c7:b0:4b1:1a24:e19c with SMTP id
 ada2fe7eead31-4b3d0d9f91emr28490986137.7.1736973827247; Wed, 15 Jan 2025
 12:43:47 -0800 (PST)
MIME-Version: 1.0
References: <20250115093135.3288234-1-kirill.shutemov@linux.intel.com>
 <20250115093135.3288234-6-kirill.shutemov@linux.intel.com>
In-Reply-To: <20250115093135.3288234-6-kirill.shutemov@linux.intel.com>
From: Yu Zhao <yuzhao@google.com>
Date: Wed, 15 Jan 2025 13:43:10 -0700
X-Gm-Features: AbW1kvZhKsd-4bholfmYoUBqn5JymeZ06XAaCDHVg7uCmb3oxbCKX29QDQ6N-Rk
Message-ID: <CAOUHufa1vRhiwCNvVa+ztcrFix9keAgbV0E7BxFN9VKAZ+7Z5A@mail.gmail.com>
Subject: Re: [PATCHv2 05/11] mm/truncate: Use folio_set_dropbehind() instead
 of deactivate_file_folio()
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
> The recently introduced PG_dropbehind allows for freeing folios
> immediately after writeback. Unlike PG_reclaim, it does not need vmscan
> to be involved to get the folio freed.
>
> The new flag allows to replace whole deactivate_file_folio() machinery
> with simple folio_set_dropbehind().
>
> Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>

Acked-by: Yu Zhao <yuzhao@google.com>
