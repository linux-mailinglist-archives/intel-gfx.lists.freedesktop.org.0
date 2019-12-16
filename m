Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 273EE120250
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 11:27:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AFD96E488;
	Mon, 16 Dec 2019 10:27:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4CA6E487;
 Mon, 16 Dec 2019 10:27:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 02:27:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="217125383"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 16 Dec 2019 02:27:18 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 47B535C0AF5; Mon, 16 Dec 2019 12:27:07 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191212102924.1194130-1-chris@chris-wilson.co.uk>
References: <20191212102924.1194130-1-chris@chris-wilson.co.uk>
Date: Mon, 16 Dec 2019 12:27:07 +0200
Message-ID: <878sncr2f8.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Rename gem_exec_parse and
 gem_exec_parse_blt
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The cmdparser tests are tied to the generation, so rename the tests to
> indicate that and remove the ambiguity that they are more generic tests.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  tests/Makefile.sources                                 | 8 ++++----
>  tests/i915/{gem_exec_parse.c => gen7_exec_parse.c}     | 0
>  tests/i915/{gem_exec_parse_blt.c => gen9_exec_parse.c} | 0
>  tests/intel-ci/blacklist.txt                           | 2 +-
>  tests/meson.build                                      | 4 ++--
>  5 files changed, 7 insertions(+), 7 deletions(-)
>  rename tests/i915/{gem_exec_parse.c => gen7_exec_parse.c} (100%)
>  rename tests/i915/{gem_exec_parse_blt.c => gen9_exec_parse.c} (100%)
>
> diff --git a/tests/Makefile.sources b/tests/Makefile.sources
> index 2893f9bc0..806eb02d0 100644
> --- a/tests/Makefile.sources
> +++ b/tests/Makefile.sources
> @@ -241,11 +241,11 @@ gem_exec_parallel_SOURCES = i915/gem_exec_parallel.c
>  TESTS_progs += gem_exec_params
>  gem_exec_params_SOURCES = i915/gem_exec_params.c
>  
> -TESTS_progs += gem_exec_parse
> -gem_exec_parse_SOURCES = i915/gem_exec_parse.c
> +TESTS_progs += gen7_exec_parse
> +gen7_exec_parse_SOURCES = i915/gen7_exec_parse.c
>  
> -TESTS_progs += gem_exec_parse_blt
> -gem_exec_parse_blt_SOURCES = i915/gem_exec_parse_blt.c
> +TESTS_progs += gen9_exec_parse
> +gen9_exec_parse_SOURCES = i915/gen9_exec_parse.c
>  
>  TESTS_progs += gem_exec_reloc
>  gem_exec_reloc_SOURCES = i915/gem_exec_reloc.c
> diff --git a/tests/i915/gem_exec_parse.c b/tests/i915/gen7_exec_parse.c
> similarity index 100%
> rename from tests/i915/gem_exec_parse.c
> rename to tests/i915/gen7_exec_parse.c
> diff --git a/tests/i915/gem_exec_parse_blt.c b/tests/i915/gen9_exec_parse.c
> similarity index 100%
> rename from tests/i915/gem_exec_parse_blt.c
> rename to tests/i915/gen9_exec_parse.c
> diff --git a/tests/intel-ci/blacklist.txt b/tests/intel-ci/blacklist.txt
> index 4bca1b6c5..a48163c68 100644
> --- a/tests/intel-ci/blacklist.txt
> +++ b/tests/intel-ci/blacklist.txt
> @@ -77,7 +77,7 @@ igt@gem_write_read_ring_switch(@.*)?
>  ###############################################
>  # GEM: Not worth fixing
>  ###############################################
> -igt@gem_exec_parse@.*lri.*
> +igt@gen7_exec_parse@.*lri.*
>  ###############################################
>  # There are no DRRS capable displays in CI lab
>  ###############################################
> diff --git a/tests/meson.build b/tests/meson.build
> index d931cc372..570de5459 100644
> --- a/tests/meson.build
> +++ b/tests/meson.build
> @@ -147,8 +147,8 @@ i915_progs = [
>  	'gem_exec_nop',
>  	'gem_exec_parallel',
>  	'gem_exec_params',
> -	'gem_exec_parse',
> -	'gem_exec_parse_blt',
> +	'gen7_exec_parse',
> +	'gen9_exec_parse',
>  	'gem_exec_reloc',
>  	'gem_exec_reuse',
>  	'gem_exec_schedule',
> -- 
> 2.24.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
