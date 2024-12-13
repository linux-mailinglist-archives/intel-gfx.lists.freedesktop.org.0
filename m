Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 337409F05F8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 09:05:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C024010EF34;
	Fri, 13 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="Qrny3f+i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5E1E10EF34
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 08:05:51 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-aa1e6ecd353so193820666b.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 00:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1734077150; x=1734681950; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=lgwYE8AkKohlShjZLrwteb4c+nimfkWQZUupQYO5W68=;
 b=Qrny3f+iKFiqDyOb/8dDJ/AFdJ7F8OYMFNw2GC6HVEqTIJM3VTdLX9bGKMBKLoltdF
 hBMonnBwplrMomw1zNZkEKAFP82A+y96HZqfeI4J2ma5ihdgGyAgemaFAWCzqEYfnMJl
 20pO4s+01y4c5jKLudAK1nMmdAf/sbk3fOJTz0cFDVhySSp+ivGX2NJNHMpXTBqUjHuK
 R3GlnQtW/6YLAvvZ2uqq9ZM5U2K0JujaFDgKdF8PKzpiiOi6ma6kJhjgDwUGnSLSIY+S
 XkrEk07Aiug2a76S9/uK/kj5JJFU1ZWFxw2Zjen+9PFLJkUvR4HgHCYs3kUZRzyX707K
 Q7yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734077150; x=1734681950;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lgwYE8AkKohlShjZLrwteb4c+nimfkWQZUupQYO5W68=;
 b=cZvXi8JA34EKNRzOrR1kBCgXCNH7iP4W8rk3LSQVTHfm/EzLzYVcZ/GSPLONr6Epba
 /h8vefY2pE0/seWGumRCgC5iYV+x1J0nFL34g14Ahv6XpPRvvPCM40534X9jH+Bq71iO
 LzfJI0zfD52upiCv6aMBoNJyZu+0tGlACRln3ahD3OIhCy7yWyG/NtlW+stNOxIhl8np
 7z8nQe7bxua4udIG3X2sjBDhtcHeY2/OEz+njtdhCgTYawFPeTQyqBsu8yloJlCMAlqg
 rHSQhjZVImq76WD1rBnYfjuLHpZR51TiDglXBJlTfxv0wrVz0ziT9YGKmbYJx12IRZMB
 UXwg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX2H1kXid2kp75kipTYkbU+/EvBdGjV7zorqeHr41TedwrZjaDBihV3My9PXAjg2QWHdxMRCrl8YXo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxftxXMQFF4+C2sr+LASj00rEDkDdtIme+ty9FMENN8Kpsqzr2H
 lWVwpXflRcUw69LCFWJVa8wvHUse7UfogcngvS7+MeaWkgBCn4gzWZPlXGZR86M=
X-Gm-Gg: ASbGncuarHSs0wSQsHvjL302XeSmtwYtVzzrrfggT8mCL6Sx8I8P5pkJ+mdJUqwmCto
 ffcDZEMF1E71U/dDBIsjuZ19T5PfAsyQgF/UtbFkwFLodPzBNACCFq6oYnPHUXMA6JEhmNAx5a8
 TxHpum7MDGaIOSQJAY0Msaa2WCFNt8NkTy5x/fhZv/j9W0zz1wrv2j3iLmeV1Sefd/o+QPUt9A7
 p7S+joy9722zy2yHmBMEzA08m3yugV+JTsv6UzqVd4XUSHSwB+6KTM+DA==
X-Google-Smtp-Source: AGHT+IEBU3KaEVduDDJFmDiYKp43p4o//mXEFM4u7vCzKG7h47JoeDZ5E1DdrcH3VOsdWE+nfKrYuQ==
X-Received: by 2002:a05:6402:4584:b0:5d0:ea4f:972f with SMTP id
 4fb4d7f45d1cf-5d63c318beemr3590523a12.8.1734077150211; 
 Fri, 13 Dec 2024 00:05:50 -0800 (PST)
Received: from pathway.suse.cz ([176.114.240.50])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-5d3ef026a41sm7507030a12.15.2024.12.13.00.05.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2024 00:05:49 -0800 (PST)
Date: Fri, 13 Dec 2024 09:05:47 +0100
From: Petr Mladek <pmladek@suse.com>
To: Yafang Shao <laoar.shao@gmail.com>
Cc: torvalds@linux-foundation.org, akpm@linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 x86@kernel.org, linux-snps-arc@lists.infradead.org,
 linux-wireless@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, ocfs2-devel@lists.linux.dev,
 Steven Rostedt <rostedt@goodmis.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [PATCH 1/7] vsprintf: Add %pTN to print task name
Message-ID: <Z1vq2-V7vB5KhBR9@pathway.suse.cz>
References: <20241213054610.55843-1-laoar.shao@gmail.com>
 <20241213054610.55843-2-laoar.shao@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241213054610.55843-2-laoar.shao@gmail.com>
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

On Fri 2024-12-13 13:46:04, Yafang Shao wrote:
> Since the task->comm is guaranteed to be NUL-ternimated, we can print it
> directly. Add a new vsnprintf format specifier "%pTN" to print task comm,
> where 'p' represents the task Pointer, 'T' stands for Task, and 'N' denots
> Name. With this abstraction, the user no longer needs to care about
> retrieving task name.

What is the advantage, please?

Honestly, I believe that the meaning of

	printk("%s\n", task->comm);

is much more clear than using a cryptic %pXYZ modifier:

	printk("%pTN\n", task);


The %pXYZ modifiers makes sense only when the formatting of the printed
information needs some processing. But this is a plain string.
IMHO, it is not worth it. In fact, I believe that it is a
counter productive.

Best Regards,
Petr
