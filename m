Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 256571E80D4
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 16:49:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C6626E921;
	Fri, 29 May 2020 14:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com
 [IPv6:2607:f8b0:4864:20::1044])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C1E56E922
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 14:49:18 +0000 (UTC)
Received: by mail-pj1-x1044.google.com with SMTP id k2so1420652pjs.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 07:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IteRcXXajwbtNBJuddDZT526vs0ZDhNnSpFmn8yamV0=;
 b=N2lJ9F/4/3HpzR/J93sxrFdqGlVz2QNhGMFIycNuy00m6veP+w2xnnditHihQIFXnL
 XCqnug4fq5fbhUlWxzOjXXHpHuSdsRGl38B/e6pOTxpS3O0ArAhFReLuF1TrhT95SEC1
 m9Mxjr53v0I0p+Z26i7nqIoQoQyWYIDSUoGm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IteRcXXajwbtNBJuddDZT526vs0ZDhNnSpFmn8yamV0=;
 b=A+gXSRuRMSNVPiS0J5W7tGF5Ri/8KpsIJeR0J/c+0d6M9hKA5KhOTbl7aSolheySuV
 4X29QJYiI9R27a8MoV4ukkRKCce0Vr10Xw6k9VZdlLoge3yj83z+0uWpbowUugxfMM3B
 jWjBqbeo/P74YB1LWshiadB3IVZt8VL2PYicjd/HERD01BXhMq6wOv/cFn5L9DRGdzy1
 sFANwXpKiuub8Bl96zv94EKjNg9FT38DRKg949dBksOrp5k1R9Pn0l+Nn50WsV/NXxuZ
 O0wpI2XIYlha0iS0CXONGsjtxMUkwivz1JqMh55yhfbTIJxQyACGczS0zL2Cs8C830Gs
 jOzg==
X-Gm-Message-State: AOAM533cNqHBn4X70I9L5xeRW1Y2gLMKw36gogcuiJZz/7PgbnzV9W2w
 MhRmvfqTnx0XjOKjmHohxNz07Q==
X-Google-Smtp-Source: ABdhPJzFHib1KyRD9/QyczMF6fwrQXT/kFQagYx7n1WCZ6zEYqL92DxL1gm98yo73HrZ3ypBekLGug==
X-Received: by 2002:a17:902:ab8b:: with SMTP id
 f11mr9427824plr.145.1590763757769; 
 Fri, 29 May 2020 07:49:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w185sm1049497pfw.145.2020.05.29.07.49.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 07:49:16 -0700 (PDT)
Date: Fri, 29 May 2020 07:49:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <202005290748.043EFFA3F@keescook>
References: <20200529074108.16928-1-mcgrof@kernel.org>
 <20200529074108.16928-7-mcgrof@kernel.org>
 <202005290121.C78B4AC@keescook>
 <20200529114912.GC11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529114912.GC11244@42.do-not-panic.com>
Subject: Re: [Intel-gfx] [PATCH 06/13] ocfs2: use new sysctl subdir helper
 register_sysctl_subdir()
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
Cc: jack@suse.cz, rafael@kernel.org, airlied@linux.ie, benh@kernel.crashing.org,
 amir73il@gmail.com, clemens@ladisch.de, dri-devel@lists.freedesktop.org,
 joseph.qi@linux.alibaba.com, sfr@canb.auug.org.au, mark@fasheh.com,
 rdna@fb.com, yzaikin@google.com, arnd@arndb.de,
 intel-gfx@lists.freedesktop.org, julia.lawall@lip6.fr, jlbec@evilplan.org,
 nixiaoming@huawei.com, vbabka@suse.cz, axboe@kernel.dk, tytso@mit.edu,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 ebiederm@xmission.com, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, ocfs2-devel@oss.oracle.com,
 viro@zeniv.linux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 29, 2020 at 11:49:12AM +0000, Luis Chamberlain wrote:
> Yikes, sense, you're right. Nope, I left the random config tests to
> 0day. Will fix, thanks!

Yeah, I do the same for randconfig, but I always do an "allmodconfig"
build before sending stuff. It's a good smoke test.

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
