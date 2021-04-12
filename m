Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A4435D1B3
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 22:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A51AB89C83;
	Mon, 12 Apr 2021 20:05:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15BB789C83
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 20:05:12 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id b26so4759473pfr.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 13:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=b0X8UQmzynZRI2M2txUleBEJT6AR9mJ+eoj3Z51kuHU=;
 b=nBtlU4Rb7o9zyMaVMcSZGyXsI0l6Ob3HXSHGVpZvkZ3zFgFWq0/NJEElLOMw3Xlpb2
 BjuO1oEuyXqCOp9M/gjo0vbh0WW/7R40IVD8qvTRe1FAnjajizUZ2DY7mTpCNSTbpJRn
 ZXMw+N7p6I+Ytjhg6Wu8mP0bQn2Gm2/02mwlU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=b0X8UQmzynZRI2M2txUleBEJT6AR9mJ+eoj3Z51kuHU=;
 b=nPMhanmdO509yQrFl4QLwIRkAKIliCmCa6lT7qM4eVHHLWJa9iF8vO+MDhgJwpoGQz
 P+NoDUQXg2o7EKi6i0V59eZiCNMiAaRfrdEXJS3IArh6MnvZBlPD2VFOP/wfOBOaOBGc
 WojuSv4yxkZqTSokW8rKMJTc8FBtgLt0TA/9gO5XgK36tTZjwxKGUnLLTRtbQM8n8bNe
 i1bGq9hqM8qKYqQmPSs+aPVS5qr9bTmJX4X72Q4NEsed0UEMhQWA7ACEUgkJsr76fwYt
 RRWODUU34/rKEJJYLLyEwFdEQFmhRD/NsI/+Zgqhd/bHtIXIEJ46P3Mu6yxPGAzM4P6S
 y9jQ==
X-Gm-Message-State: AOAM5321zGNGeVGyG84aofiHkpKquoPlbv60AB4TDxqYLIExbSMUW8ZT
 tvqYoXYIqYThwTf88FWGcdwbgQ==
X-Google-Smtp-Source: ABdhPJwszblN5Q3JOfsPdSz5uCW7RjGtWmnvwb5YU5xE0BVn8qVibyaZZS0RNX4nGehCNkiv9jdepg==
X-Received: by 2002:a65:4985:: with SMTP id r5mr28411591pgs.65.1618257911612; 
 Mon, 12 Apr 2021 13:05:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t23sm244439pju.15.2021.04.12.13.05.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Apr 2021 13:05:10 -0700 (PDT)
Date: Mon, 12 Apr 2021 13:05:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <202104121302.57D7EF8@keescook>
References: <20210412080012.357146277@infradead.org>
 <20210412080611.769864829@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412080611.769864829@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 4/7] mm: Introduce verify_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk,
 linux-mm@kvack.org, boris.ostrovsky@oracle.com, hch@lst.de,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 12, 2021 at 10:00:16AM +0200, Peter Zijlstra wrote:
> +struct vpr_data {
> +	int (*fn)(pte_t pte, unsigned long addr, void *data);
> +	void *data;
> +};

Eeerg. This is likely to become an attack target itself. Stored function
pointer with stored (3rd) argument.

This doesn't seem needed: only DRM uses it, and that's for error
reporting. I'd rather plumb back errors in a way to not have to add
another place in the kernel where we do func+arg stored calling.

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
