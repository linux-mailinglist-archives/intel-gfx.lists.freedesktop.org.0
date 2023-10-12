Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BFC87C7095
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 16:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52D1A10E4E8;
	Thu, 12 Oct 2023 14:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C72A310E043;
 Thu, 12 Oct 2023 14:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697121947; x=1728657947;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UNSpsPuDKxnkPdix+mAavfV52NhtTFCo7Zj/8UNRwtk=;
 b=FRcElIwJxv9LqAPHSyg7YVBAPZm5yLD+O2f1WLC1fZXjZodsbpW1Edhp
 s9bASIa8zJnyF1jzW5PxrbXltJCv8SbmQxnAH05Bi4TvymIZYlRLQxTuQ
 55K0ZmV/nxONxsxVggdRDOZ8wa72jdRzAnwtgCYzVhItDxcVnWcIjTUYS
 nH9k59VyebMGTT76X4j7hvNbIBpzOiFBQr9SC7oNKwa/+jz6tunjAS9b9
 kka+8hyiV2efSj9XXkZNx1/tHK00tt+H1y4WM87zljGf+iFfrVaV6ZdJl
 tewSSElYZ+xnLNxzPEk3x6iJb0BUqnpNbwNTq45cgZjcLg8fmNPeVRdi6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="415986940"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="415986940"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:45:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="758059089"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="758059089"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 07:45:38 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.15.38])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id EBB3E5807A3;
 Thu, 12 Oct 2023 07:45:36 -0700 (PDT)
Date: Thu, 12 Oct 2023 16:45:34 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20231012164534.574aa0d3@maurocar-mobl2>
In-Reply-To: <20231011141734.590321-14-janusz.krzysztofik@linux.intel.com>
References: <20231011141734.590321-13-janusz.krzysztofik@linux.intel.com>
 <20231011141734.590321-14-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 11 Oct 2023 16:17:36 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

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

Reviewed-by: Mauro Carvaho Chehab <mchehab@kernel.org>

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
