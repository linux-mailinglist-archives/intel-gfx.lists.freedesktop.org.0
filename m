Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EFF14D314
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 23:28:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0C526F8A7;
	Wed, 29 Jan 2020 22:28:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A986F8A7;
 Wed, 29 Jan 2020 22:28:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 14:28:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,379,1574150400"; d="scan'208";a="277639761"
Received: from relo-linux-2.fm.intel.com (HELO [10.1.27.125]) ([10.1.27.125])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jan 2020 14:28:21 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200129222456.1503424-1-chris@chris-wilson.co.uk>
From: Antonio Argenziano <antonio.argenziano@intel.com>
Message-ID: <1205063d-ae84-11c3-a5ad-f50a9f5adcc3@intel.com>
Date: Wed, 29 Jan 2020 14:28:21 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20200129222456.1503424-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_reloc: Add SIGINT
 injection
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 29/01/20 14:24, Chris Wilson wrote:
> Do a pass over gem_exec_reloc where we inject lots of SIGINTs.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Antonio Argenziano <antonio.argenziano@intel.com>

LGTM.

Reviewed-by: Antonio Argenziano <antonio.argenziano@intel.com>

> ---
>   tests/i915/gem_exec_reloc.c | 13 +++++++++----
>   1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/tests/i915/gem_exec_reloc.c b/tests/i915/gem_exec_reloc.c
> index bc904a0ae..1aa03fba3 100644
> --- a/tests/i915/gem_exec_reloc.c
> +++ b/tests/i915/gem_exec_reloc.c
> @@ -379,7 +379,8 @@ static bool has_64b_reloc(int fd)
>   
>   #define NORELOC 1
>   #define ACTIVE 2
> -#define HANG 4
> +#define INTERRUPTIBLE 4
> +#define HANG 8
>   static void basic_reloc(int fd, unsigned before, unsigned after, unsigned flags)
>   {
>   #define OBJSZ 8192
> @@ -735,6 +736,7 @@ igt_main
>   		{ "", 0 , true},
>   		{ "-noreloc", NORELOC, true },
>   		{ "-active", ACTIVE, true },
> +		{ "-interruptible", ACTIVE | INTERRUPTIBLE },
>   		{ "-hang", ACTIVE | HANG },
>   		{ },
>   	}, *f;
> @@ -762,14 +764,17 @@ igt_main
>   					      f->name) {
>   					if ((m->before | m->after) & I915_GEM_DOMAIN_WC)
>   						igt_require(gem_mmap__has_wc(fd));
> -					basic_reloc(fd, m->before, m->after, f->flags);
> +					igt_while_interruptible(f->flags & INTERRUPTIBLE)
> +						basic_reloc(fd, m->before, m->after, f->flags);
>   				}
>   			}
>   
>   			if (!(f->flags & NORELOC)) {
>   				igt_subtest_f("%srange%s",
> -					      f->basic ? "basic-" : "", f->name)
> -					basic_range(fd, f->flags);
> +					      f->basic ? "basic-" : "", f->name) {
> +					igt_while_interruptible(f->flags & INTERRUPTIBLE)
> +						basic_range(fd, f->flags);
> +				}
>   			}
>   
>   			igt_fixture {
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
