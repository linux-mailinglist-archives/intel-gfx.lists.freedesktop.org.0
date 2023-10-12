Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5CD7C6692
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 09:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C565C10E424;
	Thu, 12 Oct 2023 07:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0EF910E424;
 Thu, 12 Oct 2023 07:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697096541; x=1728632541;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=LLGV73iEAy7j4yNqHNJj1UQ1No+eA8+X3ep7gxBkavk=;
 b=abKtrwEpoV07pou1Zd2O+mphlh3+TM17yYepGkcXMRUOdxZcj7/mhleI
 0YDwo1X6rcRzLa2v8aSWzg0xKwBGrlTTa6Vxt7GX2E8/VSUllmIEoLPmh
 mk/68teyxUF60wv44IQSz3GdZg9zWMQw3YiBLseGodrD257aZfNmUsXoP
 wM0h9S9MBkEQNCPh7X3xZBLK3uXMTRj3DC2IyaQu7uaAhKl8BSoH5OmS9
 jHxb/1rRxRU02WxvBS00BQE46fRFOYWTA6naiaEGSABGSeHs9UQDQIi8C
 3d9zkjOORpEt2VEmR+yyonexW5xWeT7ilkDsAbJFC6vOLpkaDg0tq6ywa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="365130894"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="365130894"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 00:42:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="747785160"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="747785160"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga007-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2023 00:42:18 -0700
Date: Thu, 12 Oct 2023 09:41:59 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231012074159.c4w67nj7klkbdiei@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
 <20231011141734.590321-14-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231011141734.590321-14-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 01/11] lib/ktap: Improve TODO
 workaround description
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,
On 2023-10-11 at 16:17:36 +0200, Janusz Krzysztofik wrote:
> A workaround was implemented in IGT KTAP parser so it could accepted KTAP
> reports with missing top level KTAP version and test suite plan headers.
> While the issue has been fixed by a kernel side commit c95e7c05c139
> ("kunit: Report the count of test suites in a module"), included in the
> mainline kernel since v6.6-rc1, we still need to keep that workaround in
> place to preserve IGT compatibility with LTS kernel version 6.1 as long as
> it is used by major Linux distributions.
> 
> Update the comment with a reference to the kernel side fix and a
> clarification on why we need to keep the workaround in place.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_ktap.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index 5eac102417..3df4d6950d 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -91,9 +91,16 @@ int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap)
>  				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]KTAP%*[ ]version%*[ ]%u %n",
>  				       &n, &len) == 1 && len == strlen(buf))) {
>  		/*
> -		 * TODO: drop the following workaround as soon as
> -		 * kernel side issue of missing lines with top level
> -		 * KTAP version and test suite plan is fixed.
> +		 * TODO: drop the following workaround, which addresses a kernel
> +		 * side issue of missing lines that provide top level KTAP
> +		 * version and test suite plan, as soon as no longer needed.
> +		 *
> +		 * The issue has been fixed in v6.6-rc1, commit c95e7c05c139
> +		 * ("kunit: Report the count of test suites in a module"),
> +		 * but we still need this workaround for as long as LTS kernel
> +		 * version 6.1, with DRM selftests already converted to Kunit,
> +		 * but without that missing Kunit headers issue fixed, is used
> +		 * by major Linux distributions.
>  		 */
>  		if (ktap->expect == KTAP_START) {
>  			ktap->suite_count = 1;
> -- 
> 2.42.0
> 
