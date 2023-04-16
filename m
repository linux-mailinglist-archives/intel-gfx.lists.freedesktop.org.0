Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D3A6E35F4
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Apr 2023 09:59:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8EA510E2CE;
	Sun, 16 Apr 2023 07:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B29D510E25E
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Apr 2023 07:58:54 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id
 4fb4d7f45d1cf-504d149839bso616500a12.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Apr 2023 00:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1681631932; x=1684223932;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Pi4LPZudUdSoCu6KWlPIQF+AbKkt6/8uc15eezFygLc=;
 b=gbaZCiFMGCe9loT30w7umP+CThUXjdVCEFxcRwI+N4fbyxQnNz+xwoGwm5mgVOdu4T
 0pJglngxJ/TBDuzi0RrtYA5Z1DhQCluhT4KEv2B/LE+/OgkFxjxZW2EDT3yLOuiideIh
 Pbl/s9xnH9h1rnUzbHIB86dLG8OOcdaCzJOHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681631932; x=1684223932;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Pi4LPZudUdSoCu6KWlPIQF+AbKkt6/8uc15eezFygLc=;
 b=WnuBvvb7dfweZeK6VB14L9y8/PZVCU88576vqyFekgBvRG2zFvR8WFRCZ7ZNw4gcwN
 PKGshwL0597lkuQMwdBJj0/cRXFA9B769BWInc63Xqihv/vwH6mAV69EPaBqn0Hnxpc0
 F7IsJD2VLiAAuNCC1MTxOhjxqiuA5KqIaqqkA1KW4nBpskZeKWdxKRefMD4c+fO2Nh8z
 6Py21bNM8nSKUnM6EfV/eA8BwMk04BmWivPE9gqzPw8GwFyfZtdMX/2WH+VrL8ljK6OF
 cp1by8IKQ9UbxL4j6NW4ywMEVYdL5fHmfqLiqSNt2kasewJKLyjs8yKEG4q99doTmdsQ
 bCcw==
X-Gm-Message-State: AAQBX9dIDdyGrY/q4S660lXvYf3bZMn0LaGgqAHYPzHh/KF0TYQsNkMZ
 Sm0Fw+IdapeRlghd13I7JAPsMQ==
X-Google-Smtp-Source: AKy350bGuHVE6drEP2IMOElAil6tvl9C8/Gdd1sqZMHmULsjuwzXyNFK0kGZyhHfzLj0CpCrxIeamw==
X-Received: by 2002:a05:6402:5253:b0:502:92d:4f50 with SMTP id
 t19-20020a056402525300b00502092d4f50mr7819327edd.1.1681631932504; 
 Sun, 16 Apr 2023 00:58:52 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 j23-20020aa7de97000000b0050432d2b443sm4307664edv.48.2023.04.16.00.58.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Apr 2023 00:58:52 -0700 (PDT)
Date: Sun, 16 Apr 2023 09:58:50 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: broonie@kernel.org
Message-ID: <ZDuqut+8BKjMXblJ@phenom.ffwll.local>
Mail-Followup-To: broonie@kernel.org,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20230414125913.851920-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230414125913.851920-1-broonie@kernel.org>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm-misc tree with
 the mm-stable tree
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 14, 2023 at 01:59:12PM +0100, broonie@kernel.org wrote:
> Hi all,
> 
> Today's linux-next merge of the drm-misc tree got a conflict in:
> 
>   drivers/gpu/drm/ttm/ttm_pool.c
> 
> between commit:
> 
>   23baf831a32c0 ("mm, treewide: redefine MAX_ORDER sanely")
> 
> from the mm-stable tree and commit:
> 
>   56e51681246e5 ("drm/ttm: revert "Reduce the number of used allocation orders for TTM pages"")
> 
> from the drm-misc tree.
> 
> I fixed it up (see below) and can carry the fix as necessary. This
> is now fixed as far as linux-next is concerned, but any non trivial
> conflicts should be mentioned to your upstream maintainer when your tree
> is submitted for merging.  You may also want to consider cooperating
> with the maintainer of the conflicting tree to minimise any particularly
> complex conflicts.
> 
> 
> diff --cc drivers/gpu/drm/ttm/ttm_pool.c
> index 4db3982057be8,dfce896c4baeb..0000000000000
> --- a/drivers/gpu/drm/ttm/ttm_pool.c
> +++ b/drivers/gpu/drm/ttm/ttm_pool.c
> 
> [Just the version in mm]

Note there was a ppc compile fail, which is why we pushed the ttm revert.
That /should/ be fixed now, but would be good if you can confirm?

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
