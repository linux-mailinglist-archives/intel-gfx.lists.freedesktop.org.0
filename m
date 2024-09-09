Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE7B971A3E
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 15:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A052D10E38D;
	Mon,  9 Sep 2024 13:02:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="Z7sCffeO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
 [209.85.218.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 241B110E38D
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 13:02:53 +0000 (UTC)
Received: by mail-ej1-f52.google.com with SMTP id
 a640c23a62f3a-a8d64b27c45so70267666b.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Sep 2024 06:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1725886971; x=1726491771; darn=lists.freedesktop.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=7mMqU87htuX/vKBzsNQkDBJ4RpNR7Zr8uFLI9xAQvGQ=;
 b=Z7sCffeOstMn3E0RvT+bG3AnB0HewPF4ylcheotPD5ccIVHQNOXmrcXxAmeeFkfZwx
 2sygjNfs9a/zzq7ZN9l9JFCxU2RYJ91vYwV4nLp2NmWaXzgalDg29kEU2SfhPkZb+xAb
 p/uEin+hrP22d2FkFweAYZLPr2IFxLv17Y1jxIpy31qRyfzDzFjz7Et7uWodUzXCPZDB
 hfub65hBeYVzhkdN5zJqECrZ6LPMvSz+T2thK5GeqdtPVlwlnSkItGiPKOAN4KgrBBcv
 IWh9m9daAomaEWV8Uia7BTKDgjQrWgEIUFQdgRLCzmP5ucprm4aC82ayj01bzsglyxM2
 zsQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725886971; x=1726491771;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7mMqU87htuX/vKBzsNQkDBJ4RpNR7Zr8uFLI9xAQvGQ=;
 b=O2A7Tqg90PORJHOP2lf2GWcmo8FcT1rCfmPwJJ4GkJHgrHlsQbZ7mIyTQcWFZO5Auo
 rFs7gSNmRNRT5GK/4ccqo8FnJbXvLiDZ7yIGIAUGwoGqnn7iBmw+TT/ErNj9OGHW782H
 ypJFx8OT8TpyDeXQR+ljKPOY9aB9aq9XVyy79sS9DXy06NiT+GN/E5CHY5K6N1A8N52O
 lSBsiff7zb1GLeMAzqydbqm+52At+cwJ+pcc0Rz4nhx5OLx3PGo355vFpe3e+zW0Ka2U
 kCKVLGNwFSxZYXq7G+NjT/mvD3F/GjpEsfB3Mzb0EWOOWKqxlWaIxcODOAyOntAGtWRM
 hptQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWgGbTWK9mTSHoZ2ZPKy0lIkML2P47UjKL9HVmmq4Dxo2yCAmxq/qaHfsoKldvEAYa+S+aaFxnLRBA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxEwMZI0qoDZfkEXtB02CuT5Zdkm3MVjgtLTuO5aWQJXiaL9Qkl
 YNh3RRufE+Qv52ZWptGiNC8otvri8V2qh6da398+valc/dMDSajVORpHhrWY8Y8=
X-Google-Smtp-Source: AGHT+IGBCWEcHjOnjDa3tv0OU9sQsIWi0rYKMo1x8pgZwqnvO0g9WWezq8axRIpo3yitGDVIG7HaOA==
X-Received: by 2002:a17:907:368a:b0:a86:8953:e1fe with SMTP id
 a640c23a62f3a-a8a8884be2cmr906103366b.47.1725886971281; 
 Mon, 09 Sep 2024 06:02:51 -0700 (PDT)
Received: from pathway.suse.cz ([176.114.240.50])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a8d25d54abbsm337715666b.203.2024.09.09.06.02.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2024 06:02:51 -0700 (PDT)
Date: Mon, 9 Sep 2024 15:02:49 +0200
From: Petr Mladek <pmladek@suse.com>
To: Uros Bizjak <ubizjak@gmail.com>
Cc: x86@kernel.org, linux-crypto@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-fscrypt@vger.kernel.org, linux-scsi@vger.kernel.org,
 bpf@vger.kernel.org, linux-kselftest@vger.kernel.org,
 kunit-dev@googlegroups.com, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH RESEND v2 16/19] lib/test_scanf: Include
 <linux/prandom.h> instead of <linux/random.h>
Message-ID: <Zt7x-dJF6RzEByBO@pathway.suse.cz>
References: <20240909075641.258968-1-ubizjak@gmail.com>
 <20240909075641.258968-17-ubizjak@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240909075641.258968-17-ubizjak@gmail.com>
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

On Mon 2024-09-09 09:53:59, Uros Bizjak wrote:
> Substitute the inclusion of <linux/random.h> header with
> <linux/prandom.h> to allow the removal of legacy inclusion
> of <linux/prandom.h> from <linux/random.h>.
> 
> Signed-off-by: Uros Bizjak <ubizjak@gmail.com>

I have just acked v1 and missed that there already is v2.
Just for record:

Acked-by: Petr Mladek <pmladek@suse.com>

Best Regards,
Petr
