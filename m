Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 080DD7C70A3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 16:47:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06BE210E032;
	Thu, 12 Oct 2023 14:47:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F92510E032;
 Thu, 12 Oct 2023 14:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697122042; x=1728658042;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T69T0QpvEKRVpy6CgXdqIp8ItPOlBiID8c+31qFS/5U=;
 b=AzjWXDFYUmZSnQxH8j/5lLEUjnJy0HjAjvjU9eSTV+/GBsKyuMtJbF+f
 G4Bsg0HMPjvE2VubLBc0TDgG2xBh9+qr0s8RZmOEXOxk8LL1lfrFO1V1h
 0du4OePnenpbe8/cAfXSUfH1lwvQo2Bsgsy/txFzOl+zc4E6ptzTSiyiG
 CyCvZ6mtuEgNzmhVeyB36C/AF3BdZ1LyqQgwMtW1Wjjpr4uDi4AfEnVRN
 nagPKi26EHOT5bE6aDNTXGsmmGY2tX/CKC2ruetkPFPGiRjI1HOGlVp4r
 MJjQbmcDQZscQvrSjJSiAEXF3Fs+PB+rlMyA5jiJFzLwogaePTNNtEad7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="451433629"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="451433629"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:47:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="704203577"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="704203577"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:47:21 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.15.38])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 194E25807A3;
 Thu, 12 Oct 2023 07:47:19 -0700 (PDT)
Date: Thu, 12 Oct 2023 16:47:17 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20231012164717.1f068aaa@maurocar-mobl2>
In-Reply-To: <20231011141734.590321-17-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
 <20231011141734.590321-17-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 04/11] lib/kunit: Fix misplaced
 igt_kunit() doc
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 11 Oct 2023 16:17:39 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> When igt_kunit() was converted to a helper and wrapped with a new function
> promoted to take the name and role of the library API, related
> documentation was left unchanged and still placed in front the demoted
> function.  Update that documentation and move it to where it now belongs.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Reviewed-by: Mauro Carvaho Chehab <mchehab@kernel.org>

> ---
>  lib/igt_kmod.c | 17 ++++++++---------
>  1 file changed, 8 insertions(+), 9 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index df0e650d49..426ae5b26f 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -762,15 +762,6 @@ static void *modprobe_task(void *arg)
>  	return NULL;
>  }
>  
> -/**
> - * igt_kunit:
> - * @module_name: the name of the module
> - * @opts: options to load the module
> - *
> - * Loads the test module, parses its (k)tap dmesg output, then unloads it
> - *
> - * Returns: IGT default codes
> - */
>  static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  {
>  	struct modprobe_data modprobe = { tst->kmod, opts, 0, };
> @@ -849,6 +840,14 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  	igt_skip_on_f(ret, "KTAP parser failed\n");
>  }
>  
> +/**
> + * igt_kunit:
> + * @module_name: the name of the module
> + * @name: the name of subtest, if different from that derived from module name
> + * @opts: options to load the module
> + *
> + * Loads the test module, parses its (k)tap dmesg output, then unloads it
> + */
>  void igt_kunit(const char *module_name, const char *name, const char *opts)
>  {
>  	struct igt_ktest tst = { .kmsg = -1, };
