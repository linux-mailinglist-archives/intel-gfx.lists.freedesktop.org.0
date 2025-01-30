Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB53A25072
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2025 23:57:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F316C10E344;
	Sun,  2 Feb 2025 22:57:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EB0HgMs/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
 [209.85.219.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EDC710E385;
 Thu, 30 Jan 2025 17:40:04 +0000 (UTC)
Received: by mail-qv1-f47.google.com with SMTP id
 6a1803df08f44-6ddcff5a823so7731046d6.0; 
 Thu, 30 Jan 2025 09:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738258803; x=1738863603; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fOyS2SgUQBtaRtcTvGzojZKstYzn/7x6VS/0J+NwWk4=;
 b=EB0HgMs/cytgbSn3U2rDIns4MhQSDSp6Z7iHwvGZ6GnASsJsXlmxNkDmJLBB1G0TB/
 6Dwd7dopNpvrfXt+W7Hrah4D7mU4eKtqxvfqeelBoTyfwrYT2Lb7cHqUPs4AmrCsKP3c
 8ySRJRxPhxNyCjwmzI+Ke8I28FoDx2wbkOPRczz3S18sXNFeY9arC3aYEascjrRQ/7Uv
 VFl58Yrtz2AhnQYlTNde+tJTJbH8tFTWZrq9n1EJ61tSe5LQ6BPP9rbw4vZCvyegnLxO
 MPCjT/WS2WQCCtXGYAW/U6Sr9Nha9hi/tLQQ/jjLH4gdX3VpxXbx7qZtDufmfFz4WMA1
 6AWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738258803; x=1738863603;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fOyS2SgUQBtaRtcTvGzojZKstYzn/7x6VS/0J+NwWk4=;
 b=l+uvLXXbkjNEXGDSi/f50RkGkLWovvc3Hnt1v1ZAX/IvXIh3JIKgnfR8sLTMdumNy9
 AGWkKw3OWd4sYBGdxzHAbVUwc8c6feqOaJjg3WrLSzBVwlL6Q5en8RE4aveTM8B3JNir
 sdU9UT2CMcoW36LUmOHxqfsfLvuP+hhvkPxKHh1W8JM7nfvn3L2S1cXJR2BWGiQjWZ6X
 vGGzTA0Y3iydlai9Kqz6A2djOClxrE6v+uc2Yf38HntX1Vihjuf2NvoN/Lr6FLjnaQMS
 kDPlq/zcOLMclhwflUH4Ia2LzX3wd5kH9suj2lNmXctWffAxrZ69TOPOzKO5zrvwFr6Y
 sExQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVxGylq56QbWny7zfQvl3pW6YgD+/XXolDRZn/bb/kc7XmXp1Kr5Mq0fL5Hic+OtuqRtF9kVtB1tyD5@lists.freedesktop.org,
 AJvYcCXfxe0b6BqwBr0cKPJ5l4c2IkFwhjb2pNN/fZO71R6ojzbZEc2e7DJYATHs/lOF/SEKV3TXgQFhOVQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxvoFCr0Fk3Pv7wWMY6R3SSGRe9UAew3eVAXNIUDIPb5JQdATNu
 tC+/dW9oO5LnbsR4NL8vAfZgLx7ziZ66BIlJlTMbIWqJCGXeWhxSyRgQbUjyfAiTUSC7QgJPrCB
 swM375BY0PHVYXpdHUDDoViksXoU=
X-Gm-Gg: ASbGncvdizLub3bfOvec3vA+aGzi+OWNlUlqcxsZ3ocTpKw9hsunQGeoEld9sMmnloQ
 NQKMnaIeCSOIBIbCQckQqQV1EjoiQrxRociTwwIp2dQDPCbQ80dIyAxSKZNHrzGqHcvwI441mrd
 QWYNZjp1wCJpuBzTfwj5nVlV+Dauuc
X-Google-Smtp-Source: AGHT+IE6pqda5eKDzRAyzpwontPmN7eYd0zcmoX6OYSqt3IrbDhFMaTFRiKg3Ru2dzaKD+7BQ6lfXTG07MedePcTXtg=
X-Received: by 2002:a05:6214:1310:b0:6e1:a51d:e96f with SMTP id
 6a1803df08f44-6e243bef7cemr117873546d6.8.1738258803328; Thu, 30 Jan 2025
 09:40:03 -0800 (PST)
MIME-Version: 1.0
References: <20250130100050.1868208-1-kirill.shutemov@linux.intel.com>
 <20250130100050.1868208-5-kirill.shutemov@linux.intel.com>
In-Reply-To: <20250130100050.1868208-5-kirill.shutemov@linux.intel.com>
From: Nhat Pham <nphamcs@gmail.com>
Date: Thu, 30 Jan 2025 09:39:52 -0800
X-Gm-Features: AWEUYZnhGHhGD14z9UZ4qeG3B1M4JKsk80YTUhLoPK-rRv81OyfD8wOiyVhXCtw
Message-ID: <CAKEwX=POeBSHBXxdNWua5cPJ=7+P6x4qG6gWgN0HnT2K+_ULtQ@mail.gmail.com>
Subject: Re: [PATCHv3 04/11] mm/zswap: Use PG_dropbehind instead of PG_reclaim
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
 Miklos Szeredi <miklos@szeredi.hu>, Oscar Salvador <osalvador@suse.de>, 
 Ran Xiaokai <ran.xiaokai@zte.com.cn>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Simona Vetter <simona@ffwll.ch>, Steven Rostedt <rostedt@goodmis.org>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Vlastimil Babka <vbabka@suse.cz>, 
 Yosry Ahmed <yosryahmed@google.com>, Yu Zhao <yuzhao@google.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-trace-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Sun, 02 Feb 2025 22:57:10 +0000
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

On Thu, Jan 30, 2025 at 2:02=E2=80=AFAM Kirill A. Shutemov
<kirill.shutemov@linux.intel.com> wrote:
>
> The recently introduced PG_dropbehind allows for freeing folios
> immediately after writeback. Unlike PG_reclaim, it does not need vmscan
> to be involved to get the folio freed.

Neat!

>
> Instead of using folio_set_reclaim(), use folio_set_dropbehind() in
> zswap_writeback_entry().
>
> Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> Acked-by: David Hildenbrand <david@redhat.com>
> Acked-by: Yosry Ahmed <yosryahmed@google.com>

Acked-by: Nhat Pham <nphamcs@gmail.com>
