Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A03C1E7802
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 10:15:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CC916E89D;
	Fri, 29 May 2020 08:15:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com
 [IPv6:2607:f8b0:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0FE76E89D
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 08:15:11 +0000 (UTC)
Received: by mail-pg1-x542.google.com with SMTP id w20so1066555pga.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 01:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vO7oMyHAmtFgCk2sYz6KxFOeu6MNzidQmmJ2G/1pEM0=;
 b=F0HxDleJOoUvcttpU1UIgZwwGo1qsAu0SBmow0w21SBCMiqJuBybCtCeetr2YSSb4u
 +fkjyKNAyrdR6LI67eZ9RazJfkaoRWRSfWH45gbXJFqdNmob97+GWbiwux22WJi7UR4k
 7hajvHhSt2gRzwMsACsyTc1hVkQyehLvyrnLw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vO7oMyHAmtFgCk2sYz6KxFOeu6MNzidQmmJ2G/1pEM0=;
 b=QtfhwVp+uK516A6NWn5ELJFdmzkkQzQpfWnlO91lcdBPyO7TSfK5t5xVhqqYPpTeyl
 0a0vH50o4nNdXnLcglZmnB3eJlRqP1fOinQcfa8VfdGbA94GHvuSmb0kSAwHD0wTiGdg
 WvdfkZoDnmCNxqUXhjrd3Oedw2pGKqBrx4trWK/R3OruyGYG/k3HiTNSglFUagSJ8oAy
 JfRB+X2sM7D5R/XVqdqE2U+sDkuyechJ724tMuvS8liCvSxpS75FI+eElIu7S+WU40jD
 8nFemE90H/DMabLbWFSAVZN8NAPBO1LGzfAP29DLLK3pxDuERXp42UhKQ6iXF2VK81Qq
 buHQ==
X-Gm-Message-State: AOAM530hbLEO6q65m8zo97mGAhSiI5/+dMJF72pLkiQWN70NUC8r3n+C
 vHGiOfi4txIyWJpuwpDVGNghcA==
X-Google-Smtp-Source: ABdhPJyNTEBK6lvlRch0b3eSKkfLXX3ub632bw+/rFINA2CK9LgJdaFmN+AJlEWxtJSWAZIJVMFXUQ==
X-Received: by 2002:a62:1e84:: with SMTP id e126mr7611560pfe.67.1590740111285; 
 Fri, 29 May 2020 01:15:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k194sm253258pfd.26.2020.05.29.01.15.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 01:15:10 -0700 (PDT)
Date: Fri, 29 May 2020 01:15:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Message-ID: <202005290115.487C95B@keescook>
References: <20200529074108.16928-1-mcgrof@kernel.org>
 <20200529074108.16928-13-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529074108.16928-13-mcgrof@kernel.org>
Subject: Re: [Intel-gfx] [PATCH 12/13] sysctl: add helper to register empty
 subdir
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

On Fri, May 29, 2020 at 07:41:07AM +0000, Luis Chamberlain wrote:
> The way to create a subdirectory from the base set of directories
> is a bit obscure, so provide a helper which makes this clear, and
> also helps remove boiler plate code required to do this work.
> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
