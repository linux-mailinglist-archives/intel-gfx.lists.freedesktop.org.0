Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E1BA12D01
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 21:53:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 184D710E7DE;
	Wed, 15 Jan 2025 20:53:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="Jxi+qKPc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
 [209.85.217.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06AD10E7E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 20:53:04 +0000 (UTC)
Received: by mail-vs1-f49.google.com with SMTP id
 ada2fe7eead31-4afe7429d37so25435137.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 12:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1736974324; x=1737579124;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wpDHiR0bXsDBwMbTlH1GqxYsn52KOd85vJTdbko6Ftk=;
 b=Jxi+qKPcvjop8a+6h4X0y2ZtvMdPya197eb8T7F/76iZ9SWxapzyFQ9HSZyQMKgCQ/
 FvpyS+OrZmpUJhE67LDEN8B3B5kxrS4Zt0Kba1LjI58pi7To/+z3N6R8VHoMuGM9SVb2
 m6o+VaZt6yO97pnXaauCsRnEEgHf4tn3kMgXx0BAX8GhOOrfgyIvbbX2plY7SqYKWsCi
 b4/RbALXLWAc5EY/DORDXVCtEgY/12Xu55ohfOAQ0JTmE+6ZHEYO/QixHVoz4GX28A9I
 wcGUi2lJMWzQhAw72cWYVGJqbYVOOKhCmi3yrichdl9PwVSPdf4gq4pcZx4eSULW+5iP
 3k1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736974324; x=1737579124;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wpDHiR0bXsDBwMbTlH1GqxYsn52KOd85vJTdbko6Ftk=;
 b=OALM7zz6nyNS70YDGtgetqI3Y0IhmidZ9TGNWbt1FQbSUL6FQoqvveOJfHLjNwIjDv
 3ISktT39NHq0wAqgmv2pfvRHAJ5jbDAevzu6As26VBvnm0SoL54T7SrhNxufNXD8eNo5
 kfRwFuyKRY20dd+iyjL1r3yOBBUwlzVns7qav4jhqLkEzKzKoSVSNMs0bwK5GnGVnpGK
 mOWrZFcLcUEZrugsDFRSh+AwsFrML9kTR4gje3bnVoMrkRgzpSxNYTZYZ2yHxC71tDKA
 JfSpasI6W2Lj+x4lRtK2iTlNSuduP7OxxgtlJHoao4AmiuT7+tcI4Rmh6pGuDiNqM/JX
 cYFg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFzlCbxF083VAZLrG8OEZjQXGt4W2uQvqfNv3vpC84TKNU8kUrytbaDdu8nTqn9Bvqj7UdIPACixE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YySXhdfX4IBG5jGXCtp+6/mNufwhn9BYB6eYD5VaXR/DziRfeDR
 OUa3WCeyGGBvwF1ZjXuejnojUn5c3XV0JueFtU9T0VjUJoW90xOyXSdhUdWTfXF/t8D7F8OhhZY
 mrddUE0C+snqqg+C19UJLfSLV8ejCYYWJnpxm
X-Gm-Gg: ASbGncsrTNQ2jqMK6/CZV9LCUZ+8lmUGRFzk1JsSd2V6OWsv1qII64Tn+wrFJYfntBd
 ehDorv+OoRLvgomzDKHYxnIghn0AcGzHk98scgBMSVBgNdiQekbrC8HgjeLAf0RogI2gn
X-Google-Smtp-Source: AGHT+IHGJFSTuM3b37+opctt2tHn7VfsuBf4+beVaoaeJuq2++z1RLzVhsDuXLrd9Ee3ASMK9Iz4XTd2JqH50R6dmnc=
X-Received: by 2002:a05:6102:b06:b0:4af:adf8:523f with SMTP id
 ada2fe7eead31-4b3d0f97294mr22811598137.9.1736974323734; Wed, 15 Jan 2025
 12:52:03 -0800 (PST)
MIME-Version: 1.0
References: <20250115093135.3288234-1-kirill.shutemov@linux.intel.com>
 <20250115093135.3288234-10-kirill.shutemov@linux.intel.com>
In-Reply-To: <20250115093135.3288234-10-kirill.shutemov@linux.intel.com>
From: Yu Zhao <yuzhao@google.com>
Date: Wed, 15 Jan 2025 13:51:27 -0700
X-Gm-Features: AbW1kvYv76oC6MvIVQyrimg9-wYM-36QWhw54pvoHz-UApVxWVH0m4ZuWq7_GXQ
Message-ID: <CAOUHufbet0=S=9e06jMeoSPef3GzoFm2V-k_NJYbdq2yJe6LRA@mail.gmail.com>
Subject: Re: [PATCHv2 09/11] mm: Remove PG_reclaim
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
> Nobody sets the flag anymore.
>
> Remove the PG_reclaim, making PG_readhead exclusive user of the page
> flag bit.
>
> Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>

Acked-by: Yu Zhao <yuzhao@google.com>
