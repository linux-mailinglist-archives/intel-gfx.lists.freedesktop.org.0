Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C6143D60A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 23:53:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA1B66E02C;
	Wed, 27 Oct 2021 21:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0AE96E02A
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 21:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=Ob9CTAl9egmQbkHWcQguZ1xV1uwgWPBUE91I5VVu7d0=; b=t/3V5t6C0G+CSXlmiikH2vSybp
 iQt0Vc/R/fbJ0NL7JjXJdNK+h0ChXPKAlGbC+t4YdHiz2npwBzlpsWQrRbVUQiYXCEcU7U4jzvxDt
 d9sylFHdEGsIHf27l5TsZAUHcLK0R8tkqarH/R9C/wbTIHkkSNu1deadJ/LKbdrB5Nz3zVxQflgNn
 NIjsvAShuX2vXH+GCSQ6BDcl85ObV6dKS+1TBem2rkvTuD0+2TGet+qnCRxD5NuzGkJY1amTTZFh6
 gA2sau7Z1MnLKlnHhOUcJaLezFJa4Chtw5C/aaYKFP6wjPlejcx+XfIX5MGwRtrwG4U0dPcVR8WZm
 lRQNnUPQ==;
Received: from [2601:1c0:6280:3f0::aa0b]
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfqrB-006Kae-E9
 for intel-gfx@lists.freedesktop.org; Wed, 27 Oct 2021 21:53:13 +0000
To: intel-gfx@lists.freedesktop.org
References: <20211027205302.19222-1-rdunlap@infradead.org>
 <163537007922.4635.1940416126881565312@emeril.freedesktop.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <f1cc7cab-d7a0-f38b-02d5-bdc35602d5d4@infradead.org>
Date: Wed, 27 Oct 2021 14:53:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <163537007922.4635.1940416126881565312@emeril.freedesktop.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBp?=
 =?utf-8?q?915/gem/dmabuf=3A_add_=3Casm/smp=2Eh=3E_to_fix_build_error?=
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

On 10/27/21 2:27 PM, Patchwork wrote:
> == Series Details ==
> 
> Series: i915/gem/dmabuf: add <asm/smp.h> to fix build error
> URL   : https://patchwork.freedesktop.org/series/96360/
> State : failure
> 
> == Summary ==
> 
> Applying: i915/gem/dmabuf: add <asm/smp.h> to fix build error
> error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c).
> error: could not build fake ancestor
> hint: Use 'git am --show-current-patch=diff' to see the failed patch
> Patch failed at 0001 i915/gem/dmabuf: add <asm/smp.h> to fix build error
> When you have resolved this problem, run "git am --continue".
> If you prefer to skip this patch, run "git am --skip" instead.
> To restore the original branch and stop patching, run "git am --abort".

Hi Patchwork,

I am not using git, therefore there is no ancestor information.

This patch applies to linux-next-20211027 (today where I am).
Can I just say
sha1: ae5179317e79

from:

commit ae5179317e79 (HEAD, tag: next-20211027, origin/master, origin/HEAD)
Author: Stephen Rothwell <sfr@canb.auug.org.au>
Date:   Wed Oct 27 21:40:16 2021 +1100

     Add linux-next specific files for 20211027
     
     Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>



Where is the format of the sha1: documented?


I will gladly just report this build error and let someone
else fix it.

Good day.

-- 
~Randy
