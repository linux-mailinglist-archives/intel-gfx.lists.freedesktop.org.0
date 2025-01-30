Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09067A23528
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 21:39:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6F510E9CB;
	Thu, 30 Jan 2025 20:39:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="USTpPeW/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2D210E9CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2025 20:39:33 +0000 (UTC)
Received: by mail-ej1-f53.google.com with SMTP id
 a640c23a62f3a-ab2aea81cd8so233825066b.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2025 12:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1738269572; x=1738874372;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Zjc/ukGYviU6e9aVM8L8Zjtty0hNQpOZXKBc9NxwJp0=;
 b=USTpPeW/z94sM1TSi4YH1YyxHNlvi/Lr0i/FT8e6dP8szhZAkDmPaKQS5vNh5Ix/bF
 PtySFbu2vjKkUKj0hchPPyLHNUMDdv5hKmOHunnrOCP9t3+hOTQwnPIHPcWlSTjq8t2z
 0F6x3BfqspwHfdp0npFbrUpouu/vSLVoQ0Wwy1bbRPAkrU7NWXmEE5dOGh4skcrp+jwy
 EdbAhVK+j8Y5hP1gpx79r9/wglI4yhroi8+uAhM7PC6Etf0F8IAJei7UaOo9K1T/jolA
 dxonL/sNgyZZM4iKwc2UHnoAtL3KTbmrXJzYSjiYMdfMf1ISbZXtmCdu/AIVuJYkNKi3
 rk0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738269572; x=1738874372;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Zjc/ukGYviU6e9aVM8L8Zjtty0hNQpOZXKBc9NxwJp0=;
 b=jfPJZgqnL+gRm98lcQu+8P7QJVgdW7rSZOLM7/uX6uZm/yDN7aVZ/REMJYMPROGxCS
 0tyAD3CfRq3JMrx9XMn3YGWgARdHFbuiLgx9rd3dgchAnu7cug/wVRYpaodBx6RXpwJe
 WbOyN/i4L0IhFEKQxOlU+14l2NufLnvN6yw2YlTPb2DPrLwfIBn0ftCC/MRYz5wKKuKf
 dF920un34Sa4+Ypkrdr1wZWSuEZaiV4p/llLwJWdxeClu+Ryx/PNRlRQBL6Mt9SrQC7t
 RYPQc1WmooZQIjWFpmEh6K79SRdHuRUhVicQTV4o50RuFgstksSBzXT4B9iiUOh7Bxjo
 Sfgg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0niSB5/dG4Dz4OKXjRvAqQFJpLmOpeAQS6I5D03EJZaVjMpQQivRuhigqtw5ES6AuGc2tjTpSiBs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxpCO2NuhhJZyiGM1ozkzWpavxIrVk1Ha5r4MQNBtZfNPYjk3Or
 XnPdKlZ1CmP4I9CO87Jmotft4yPQSMlSaEjWVs0gr+IkfQ5mQnoLkT5PgmXmTpoxKUdropb3jl0
 mKsV5A+OP0CyTUwKiMJB65j+RXWfzGV/RKLNJ
X-Gm-Gg: ASbGncv80falHqKNrz7YrRURYTe7gInOxrnAKQwLkvAGy2CnrLqtcDfc7MzZoA8CgxQ
 Q2Km7GNlxNBegeMvPeTcXw4TTQauEpRCcyDpUFwZzv2I8dUGJCJxynDPosutw6pIKYyD/t7TsTM
 mGWt8pybDmVD1xpUIHtPmJxuyokCOkkQ==
X-Google-Smtp-Source: AGHT+IGrgFfO/K+h4P6zJOggzHtL/MGdhzkU7jyuReGUYiXkVzMuxOLtpvutFaZEw44utsgnrxP3JQA41Hof3U2VRwU=
X-Received: by 2002:a17:906:f74a:b0:ab6:d688:257c with SMTP id
 a640c23a62f3a-ab6d68826e5mr639571966b.43.1738269571901; Thu, 30 Jan 2025
 12:39:31 -0800 (PST)
MIME-Version: 1.0
References: <20250130100050.1868208-1-kirill.shutemov@linux.intel.com>
 <20250130100050.1868208-12-kirill.shutemov@linux.intel.com>
In-Reply-To: <20250130100050.1868208-12-kirill.shutemov@linux.intel.com>
From: Yu Zhao <yuzhao@google.com>
Date: Thu, 30 Jan 2025 13:38:55 -0700
X-Gm-Features: AWEUYZk2YQUyps1dQbKiaYF6w_rV2K1IgcShMby4WAMvmMJrPU_zLRbp4lsvUNA
Message-ID: <CAOUHufa9VWCsVyAdgtdJ-5cgCUkot+tdD9huU1NAAmDSKzi6tQ@mail.gmail.com>
Subject: Re: [PATCHv3 11/11] mm: Rename PG_dropbehind to PG_reclaim
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

On Thu, Jan 30, 2025 at 3:01=E2=80=AFAM Kirill A. Shutemov
<kirill.shutemov@linux.intel.com> wrote:
>
> Now as PG_reclaim is gone, its name can be reclaimed for better
> use :)
>
> Rename PG_dropbehind to PG_reclaim and rename all helpers around it.
>
> Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>

Acked-by: Yu Zhao <yuzhao@google.com>
