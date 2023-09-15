Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A9C7A1DA5
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 13:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 810DA10E17F;
	Fri, 15 Sep 2023 11:45:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A76010E17D;
 Fri, 15 Sep 2023 11:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694778331; x=1726314331;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2581N/nU3shDX0qiF0OsFKfE1nVzFOQ1n0zAN+hvlPc=;
 b=Uj7z+7FyW0FpO1RYRoCEHdarHIvVUo2SkwphZtY6/gC/kPk8YOil4aZk
 cscfcE+36YstEqI0I+mXLhViYykpy0opnHfB0YkwLNS9bFzBdmtnxNnV1
 g/0idYN0EyfvZWxXe0bzupXyMxi6By0lHFCvLb4xdGiHT0ycUCwQgeN9T
 iGYqUbWnqAXdq32de855oqbbipOEnP7rErps4CrPgdzNEKQPXiEUH3yK/
 H9x4JhrDyqdJvNUOdKF3ENH+gFRW3AjkFdvdt2xEpcrOZG3W1lCvj+eNz
 iHPSu8g7hsdKpC7gQdLM6VZAtnD7lpx1y0Fw/hikbIOG/EwoVSoZdOLQp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="443291191"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="443291191"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 04:45:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="991820877"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="991820877"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 04:45:29 -0700
Received: from maurocar-mobl2 (unknown [10.252.9.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 0F623580DC7;
 Fri, 15 Sep 2023 04:45:27 -0700 (PDT)
Date: Fri, 15 Sep 2023 13:45:25 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230915134525.25073868@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-32-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-32-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 13/17] lib/ktap:
 Reimplement KTAP parser
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
 Isabella Basso <isabbasso@riseup.net>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri,  8 Sep 2023 14:32:47 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Current implementation of KTAP parser suffers from several issues:
> - in most cases, kernel messages that are not part of KTAP output but
>   happen to appear in between break the parser,
> - results from parametrized test cases, not preceded with a "1..N" test
>   plan, break the parser,
> - skips are not supported, reported as success,
> - IGT results from all 3 kunit test nesting levels, i.e., from
>   parametrized subtests (should those were fixed to work correctly), test
>   cases and test suites, are reported individually as if all those items
>   were executed sequentially, all at the same level of nesting, which can
>   be confusing to igt_runner,
> - the parser is not only parsing the data, but also handles data input
>   from a /dev/kmsg like source, which is integrated into it, making it
>   hard if not impossible to feed KTAP data from different sources,
>   including mock sources,
> - since the parser has been designed for running it in a separate thread,
>   it's not possible to use igt_skip() nor igt_fail() and friends
>   immediately when a result is available, only pass it to the main thread
>   over a buffer.  As a consequence, it is virtually impossible to
>   synchronize IGT output with KTAP output.
>=20
> Fixing the existing parser occurred more complicated than re-implementing
> it from scratch.  This patch provides a new implementation.
>=20
> Only results from kunit test cases are reported as results of IGT dynamic
> sub-subtests.  Results from individual parametrized subtests have been
> considered problematic since many of them provide multi-word descriptions
> in place of single-word subtest names.  If a parametrized test case fails
> then full KTAP output from its subtests, potentially mixed with
> accompanying kernel messages, is available in dmesg for analysis so users
> can still find out which individual subtests succeeded and which failed.
>=20
> Results from test suites level are also omitted in faith that IGT can
> handle aggregation of results from individual kunit test cases reported as
> IGT dynamic sub-subtests and report those aggregated results correctly as
> results from an IGT dynamic subtest.  That 1:1 mapping of kunit test
> suites to IGT dynamic subtests now works perfectly for modules that
> provide only one test suite, which is the case for all kunit test modules
> now existing under drivers/gpu/drm, and the most common case among all
> kunit test modules in the whole kernel tree.
>=20
> New igt_ktap functions can be called directly from igt_kunit subtest body,
> but for this patch, the old igt_ktap_parser() function that runs in a
> separate thread has been preserved, only modified to use the new
> implementation and translate results from those new functions to legacy
> format.  Unlike the former implementation, translation of kunit names to
> IGT names is handled outside the parser itself, though for now it is still
> performed inside the legacy igt_ktap_parser() function.
>=20
> For better readability of the patch, no longer used functions have been
> left untouched, only tagged with __maybe_unused to shut up compiler
> warnings / errors.  Kunit library functions will be modified to use the
> new igt_ktap interface, and those old ktap functions removed by follow-
> up patches.
>=20
> A test with example subtests that feed igt_ktap_parse() function with some
> example data and verifies correctness of their parsing is also provided.
>=20
> v2: Fix incorrect and missing includes in the test source file,
>   - add license and copyright clauses to the test source file.
>=20
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  lib/igt_ktap.c              | 422 ++++++++++++++++++++++++++++++++----
>  lib/igt_ktap.h              |  15 ++
>  lib/tests/igt_ktap_parser.c | 246 +++++++++++++++++++++
>  lib/tests/meson.build       |   1 +
>  4 files changed, 645 insertions(+), 39 deletions(-)
>  create mode 100644 lib/tests/igt_ktap_parser.c
>=20
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index 5e9967f980..d46a2433e5 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: MIT
>  /*
>   * Copyright =C2=A9 2023 Isabella Basso do Amaral <isabbasso@riseup.net>
> + * Copyright =C2=A9 2023 Intel Corporation
>   */
> =20
>  #include <ctype.h>
> @@ -8,12 +9,310 @@
>  #include <libkmod.h>
>  #include <pthread.h>
>  #include <errno.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <unistd.h>
> =20
>  #include "igt_aux.h"
>  #include "igt_core.h"
>  #include "igt_ktap.h"
>  #include "igt_list.h"
> =20
> +enum ktap_phase {
> +	KTAP_START,
> +	SUITE_COUNT,
> +	SUITE_START,
> +	SUITE_NAME,
> +	CASE_COUNT,
> +	CASE_NAME,
> +	SUB_RESULT,
> +	CASE_RESULT,
> +	SUITE_RESULT,
> +};
> +
> +struct igt_ktap_results {
> +	enum ktap_phase expect;
> +	unsigned int suite_count;
> +	unsigned int suite_last;
> +	char *suite_name;
> +	unsigned int case_count;
> +	unsigned int case_last;
> +	char *case_name;
> +	unsigned int sub_last;
> +	struct igt_list_head *results;
> +};
> +
> +/**
> + * igt_ktap_parse:
> + *
> + * This function parses a line of text for KTAP report data
> + * and passes results back to IGT kunit layer.
> + */
> +int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap)
> +{
> +	char *suite_name =3D NULL, *case_name =3D NULL, *msg =3D NULL;
> +	struct igt_ktap_result *result;
> +	int code =3D IGT_EXIT_INVALID;
> +	unsigned int n, len;
> +	char s[2];
> +
> +	/* KTAP report header */
> +	if (igt_debug_on(sscanf(buf, "KTAP%*[ ]version%*[ ]%u %n",
> +				&n, &len) =3D=3D 1 && len =3D=3D strlen(buf))) {
> +		if (igt_debug_on(ktap->expect !=3D KTAP_START))
> +			return -EPROTO;
> +
> +		ktap->suite_count =3D 0;
> +		ktap->expect =3D SUITE_COUNT;
> +
> +	/* malformed TAP test plan? */
> +	} else if (len =3D 0,
> +		   igt_debug_on(sscanf(buf, " 1..%1[ ]", s) =3D=3D 1)) {
> +		return -EINPROGRESS;
> +
> +	/* valid test plan of a KTAP report */
> +	} else if (igt_debug_on(sscanf(buf, "1..%u %n", &n, &len) =3D=3D 1 &&
> +				len =3D=3D strlen(buf))) {
> +		if (igt_debug_on(ktap->expect !=3D SUITE_COUNT))
> +			return -EPROTO;
> +
> +		if (!n)
> +			return 0;
> +
> +		ktap->suite_count =3D n;
> +		ktap->suite_last =3D 0;
> +		ktap->suite_name =3D NULL;
> +		ktap->expect =3D SUITE_START;
> +
> +	/* KTAP test suite header */
> +	} else if (len =3D 0,
> +		   igt_debug_on(sscanf(buf,
> +				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]KTAP%*[ ]version%*[ ]%u %n",
> +				       &n, &len) =3D=3D 1 && len =3D=3D strlen(buf))) {
> +		/*
> +		 * TODO: drop the following workaround as soon as
> +		 * kernel side issue of missing lines with top level
> +		 * KTAP version and test suite plan is fixed.
> +		 */
> +		if (ktap->expect =3D=3D KTAP_START) {
> +			ktap->suite_count =3D 1;
> +			ktap->suite_last =3D 0;
> +			ktap->suite_name =3D NULL;
> +			ktap->expect =3D SUITE_START;
> +		}
> +
> +		if (igt_debug_on(ktap->expect !=3D SUITE_START))
> +			return -EPROTO;
> +
> +		ktap->expect =3D SUITE_NAME;
> +
> +	/* KTAP test suite name */
> +	} else if (len =3D 0,
> +		   igt_debug_on(sscanf(buf,
> +				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]#%*[ ]Subtest:%*[ ]%ms %n",
> +				       &suite_name, &len) =3D=3D 1 && len =3D=3D strlen(buf))) {
> +		if (igt_debug_on(ktap->expect !=3D SUITE_NAME))
> +			return -EPROTO;
> +
> +		ktap->suite_name =3D suite_name;
> +		suite_name =3D NULL;
> +		ktap->case_count =3D 0;
> +		ktap->expect =3D CASE_COUNT;
> +
> +	/* valid test plan of a KTAP test suite */
> +	} else if (len =3D 0, free(suite_name), suite_name =3D NULL,
> +		   igt_debug_on(sscanf(buf,
> +				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]1..%u %n",
> +				       &n, &len) =3D=3D 1 && len =3D=3D strlen(buf))) {
> +		if (igt_debug_on(ktap->expect !=3D CASE_COUNT))
> +			return -EPROTO;
> +
> +		if (n) {
> +			ktap->case_count =3D n;
> +			ktap->case_last =3D 0;
> +			ktap->case_name =3D NULL;
> +			ktap->expect =3D CASE_RESULT;
> +		} else {
> +			ktap->expect =3D SUITE_RESULT;
> +		}
> +
> +	/* KTAP parametrized test case header */
> +	} else if (len =3D 0,
> +		   igt_debug_on(sscanf(buf,
> +				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]KTAP%*[ ]ver=
sion%*[ ]%u %n",
> +				       &n, &len) =3D=3D 1 && len =3D=3D strlen(buf))) {
> +		if (igt_debug_on(ktap->expect !=3D CASE_RESULT))
> +			return -EPROTO;
> +
> +		ktap->sub_last =3D 0;
> +		ktap->expect =3D CASE_NAME;
> +
> +	/* KTAP parametrized test case name */
> +	} else if (len =3D 0,
> +		   igt_debug_on(sscanf(buf,
> +				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]#%*[ ]Subtes=
t:%*[ ]%ms %n",
> +				       &case_name, &len) =3D=3D 1 && len =3D=3D strlen(buf))) {
> +		if (igt_debug_on(ktap->expect !=3D CASE_NAME))
> +			return -EPROTO;
> +
> +		n =3D ktap->case_last + 1;
> +		ktap->expect =3D SUB_RESULT;
> +
> +	/* KTAP parametrized subtest result */
> +	} else if (len =3D 0, free(case_name), case_name =3D NULL,
> +		   igt_debug_on(sscanf(buf,
> +				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]ok%*[ ]%u%*[=
 ]%*[^#\n]%1[#\n]",
> +				       &n, s) =3D=3D 2) ||
> +		   igt_debug_on(sscanf(buf,
> +				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]%*1[ ]not%*1[ ]ok%=
*[ ]%u%*[ ]%*[^#\n]%1[#\n]",
> +				       &n, s) =3D=3D 2)) {
> +		/* at lease one result of a parametrised subtest expected */
> +		if (igt_debug_on(ktap->expect =3D=3D SUB_RESULT &&
> +				 ktap->sub_last =3D=3D 0))
> +			ktap->expect =3D CASE_RESULT;
> +
> +		if (igt_debug_on(ktap->expect !=3D CASE_RESULT) ||
> +		    igt_debug_on(n !=3D ++ktap->sub_last))
> +			return -EPROTO;
> +
> +	/* KTAP test case skip result */
> +	} else if ((igt_debug_on(sscanf(buf,
> +					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]ok%*[ ]%u%*[ ]%ms%*[ ]#%*[ ]SKIP %n",
> +					&n, &case_name, &len) =3D=3D 2 &&
> +				 len =3D=3D strlen(buf))) ||
> +		   (len =3D 0, free(case_name), case_name =3D NULL,
> +		    igt_debug_on(sscanf(buf,
> +					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]ok%*[ ]%u%*[ ]%ms%*[ ]#%*[ ]SKIP%*[ ]%m[^\=
n]",
> +					&n, &case_name, &msg) =3D=3D 3))) {
> +		code =3D IGT_EXIT_SKIP;
> +
> +	/* KTAP test case pass result */
> +	} else if ((free(case_name), case_name =3D NULL, free(msg), msg =3D NUL=
L,
> +		    igt_debug_on(sscanf(buf,
> +					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]ok%*[ ]%u%*[ ]%ms %n",
> +					&n, &case_name, &len) =3D=3D 2 &&
> +				 len =3D=3D strlen(buf))) ||
> +		   (len =3D 0, free(case_name), case_name =3D NULL,
> +		    igt_debug_on(sscanf(buf,
> +					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]ok%*[ ]%u%*[ ]%ms%*[ ]#%*[ ]%m[^\n]",
> +					&n, &case_name, &msg) =3D=3D 3))) {
> +		code =3D IGT_EXIT_SUCCESS;
> +
> +	/* KTAP test case fail result */
> +	} else if ((free(case_name), case_name =3D NULL, free(msg), msg =3D NUL=
L,
> +		    igt_debug_on(sscanf(buf,
> +					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]not%*1[ ]ok%*[ ]%u%*[ ]%ms %n",
> +					&n, &case_name, &len) =3D=3D 2 &&
> +				 len =3D=3D strlen(buf))) ||
> +		   (len =3D 0, free(case_name), case_name =3D NULL,
> +		    igt_debug_on(sscanf(buf,
> +					"%*1[ ]%*1[ ]%*1[ ]%*1[ ]not%*1[ ]ok%*[ ]%u%*[ ]%ms%*[ ]#%*[ ]%m[^\=
n]",
> +					&n, &case_name, &msg) =3D=3D 3))) {
> +		code =3D IGT_EXIT_FAILURE;
> +
> +	/* KTAP test suite result */
> +	} else if ((free(case_name), free(msg),
> +		    igt_debug_on(sscanf(buf, "ok%*[ ]%u%*[ ]%ms %n",
> +					&n, &suite_name, &len) =3D=3D 2 &&
> +				 len =3D=3D strlen(buf))) ||
> +		   (len =3D 0, free(suite_name), suite_name =3D NULL,
> +		    igt_debug_on(sscanf(buf, "ok%*[ ]%u%*[ ]%ms%*[ ]%1[#]",
> +					&n, &suite_name, s) =3D=3D 3)) ||
> +		   (free(suite_name), suite_name =3D NULL,
> +		    igt_debug_on(sscanf(buf,
> +					"not%*[ ]ok%*[ ]%u%*[ ]%ms %n",
> +					&n, &suite_name, &len) =3D=3D 2 &&
> +				 len =3D=3D strlen(buf))) ||
> +		   (len =3D 0, free(suite_name), suite_name =3D NULL,
> +		    igt_debug_on(sscanf(buf,
> +					"not%*[ ]ok%*[ ]%u%*[ ]%ms%*[ ]%1[#]",
> +					&n, &suite_name, s) =3D=3D 3))) {
> +		if (igt_debug_on(ktap->expect !=3D SUITE_RESULT) ||
> +		    igt_debug_on(strcmp(suite_name, ktap->suite_name)) ||
> +		    igt_debug_on(n !=3D ++ktap->suite_last) ||
> +		    igt_debug_on(n > ktap->suite_count)) {
> +			free(suite_name);
> +			return -EPROTO;
> +		}
> +		free(suite_name);
> +
> +		/* last test suite? */
> +		if (igt_debug_on(n =3D=3D ktap->suite_count))
> +			return 0;
> +
> +		ktap->suite_name =3D NULL;
> +		ktap->expect =3D SUITE_START;
> +
> +	} else {
> +		return -EINPROGRESS;
> +	}
> +
> +	/* neither a test case name nor result */
> +	if (ktap->expect !=3D SUB_RESULT && code =3D=3D IGT_EXIT_INVALID)
> +		return -EINPROGRESS;
> +
> +	if (igt_debug_on(ktap->expect =3D=3D SUB_RESULT &&
> +			 code !=3D IGT_EXIT_INVALID) ||
> +	    igt_debug_on(code !=3D IGT_EXIT_INVALID &&
> +			 ktap->expect !=3D CASE_RESULT) ||
> +	    igt_debug_on(!ktap->suite_name) || igt_debug_on(!case_name) ||
> +	    igt_debug_on(ktap->expect =3D=3D CASE_RESULT && ktap->case_name &&
> +			 strcmp(case_name, ktap->case_name)) ||
> +	    igt_debug_on(n > ktap->case_count) ||
> +	    igt_debug_on(n !=3D (ktap->expect =3D=3D SUB_RESULT ?
> +			       ktap->case_last + 1: ++ktap->case_last))) {
> +		free(case_name);
> +		free(msg);
> +		return -EPROTO;
> +	}
> +
> +	if (ktap->expect =3D=3D SUB_RESULT) {
> +		/* KTAP parametrized test case name */
> +		ktap->case_name =3D case_name;
> +
> +	} else {
> +		/* KTAP test case result */
> +		ktap->case_name =3D NULL;
> +
> +		/* last test case in a suite */
> +		if (n =3D=3D ktap->case_count)
> +			ktap->expect =3D SUITE_RESULT;
> +	}
> +
> +	if (igt_debug_on((result =3D calloc(1, sizeof(*result)), !result))) {
> +		free(case_name);
> +		free(msg);
> +		return -ENOMEM;
> +	}
> +
> +	result->suite_name =3D ktap->suite_name;
> +	result->case_name =3D case_name;
> +	result->code =3D code;
> +	result->msg =3D msg;
> +	igt_list_add_tail(&result->link, ktap->results);
> +
> +	return -EINPROGRESS;
> +}
> +
> +struct igt_ktap_results *igt_ktap_alloc(struct igt_list_head *results)
> +{
> +	struct igt_ktap_results *ktap =3D calloc(1, sizeof(*ktap));
> +
> +	if (!ktap)
> +		return NULL;
> +
> +	ktap->expect =3D KTAP_START;
> +	ktap->results =3D results;
> +
> +	return ktap;
> +}
> +
> +void igt_ktap_free(struct igt_ktap_results *ktap)
> +{
> +	free(ktap);
> +}
> +
>  #define DELIMITER "-"
> =20
>  struct ktap_parser_args {
> @@ -332,6 +631,7 @@ static int parse_kmsg_for_tap(int fd, char *record, c=
har *test_name)
>   * 0 if succeded
>   * -1 if error occurred
>   */
> +__maybe_unused
>  static int parse_tap_level(int fd, char *base_test_name, int test_count,=
 bool *failed_tests,
>  			   bool *found_tests, bool is_builtin)
>  {
> @@ -445,62 +745,106 @@ static int parse_tap_level(int fd, char *base_test=
_name, int test_count, bool *f
>   */
>  void *igt_ktap_parser(void *unused)
>  {
> +	char record[BUF_LEN + 1], *buf, *suite_name =3D NULL, *case_name =3D NU=
LL;
> +	struct igt_ktap_results *ktap =3D NULL;
>  	int fd =3D ktap_args.fd;
> -	char record[BUF_LEN + 1];
> -	bool is_builtin =3D ktap_args.is_builtin;
> -	char test_name[BUF_LEN + 1];
> -	bool failed_tests, found_tests;
> -	int test_count;
> +	IGT_LIST_HEAD(list);
> +	int err;
> =20
> -	failed_tests =3D false;
> -	found_tests =3D false;
> +	ktap =3D igt_ktap_alloc(&list);
> +	if (igt_debug_on(!ktap))
> +		goto igt_ktap_parser_end;
> =20
> -igt_ktap_parser_start:
> -	test_name[0] =3D '\0';
> -	test_name[BUF_LEN] =3D '\0';
> +	while (err =3D read(fd, record, BUF_LEN), err > 0) {
> +		struct igt_ktap_result *r, *rn;
> =20
> -	if (read(fd, record, BUF_LEN) < 0) {
> -		if (errno =3D=3D EPIPE)
> -			igt_warn("kmsg truncated: too many messages. You may want to increase=
 log_buf_len in kmcdline\n");
> -		else if (errno !=3D EINTR)
> -			igt_warn("error reading kmsg (%m)\n");
> +		/* skip kmsg continuation lines */
> +		if (igt_debug_on(*record =3D=3D ' '))
> +			continue;
> =20
> -		goto igt_ktap_parser_end;
> -	}
> +		/* NULL-terminate the record */
> +		record[err] =3D '\0';
> =20
> -	test_count =3D find_next_tap_subtest(fd, record, test_name, is_builtin);
> +		/* detect start of log message, continue if not found */
> +		buf =3D strchrnul(record, ';');
> +		if (igt_debug_on(*buf =3D=3D '\0'))
> +			continue;
> +		buf++;
> =20
> -	switch (test_count) {
> -	case -2:
> -		/* Problems while reading the file */
> -		goto igt_ktap_parser_end;
> -	case -1:
> -		/* No test found */
> -		goto igt_ktap_parser_start;
> -	case 0:
> -		/* Tests found, but they're missing info */
> -		found_tests =3D true;
> -		goto igt_ktap_parser_end;
> -	default:
> -		found_tests =3D true;
> +		err =3D igt_ktap_parse(buf, ktap);
> =20
> -		if (parse_tap_level(fd, test_name, test_count, &failed_tests, &found_t=
ests,
> -				    is_builtin) =3D=3D -1)
> +		/* parsing error */
> +		if (err && err !=3D -EINPROGRESS)
>  			goto igt_ktap_parser_end;
> =20
> -		break;
> +		igt_list_for_each_entry_safe(r, rn, &list, link) {
> +			struct ktap_test_results_element *result =3D NULL;
> +			int code =3D r->code;
> +
> +			if (code !=3D IGT_EXIT_INVALID)
> +				result =3D calloc(1, sizeof(*result));
> +
> +			if (result) {
> +				snprintf(result->test_name, sizeof(result->test_name),
> +					 "%s-%s", r->suite_name, r->case_name);
> +
> +				if (code =3D=3D IGT_EXIT_SUCCESS)
> +					result->passed =3D true;
> +			}
> +
> +			igt_list_del(&r->link);
> +			if (r->suite_name !=3D suite_name) {
> +				free(suite_name);
> +				suite_name =3D r->suite_name;
> +			}
> +			if (r->case_name !=3D case_name) {
> +				free(case_name);
> +				case_name =3D r->case_name;
> +			}
> +			free(r->msg);
> +			free(r);
> +
> +			/*
> +			 * no extra result record expected on start
> +			 * of parametrized test case -- skip it
> +			 */
> +			if (code =3D=3D IGT_EXIT_INVALID)
> +				continue;
> +
> +			if (!result) {
> +				err =3D -ENOMEM;
> +				goto igt_ktap_parser_end;
> +			}
> +
> +			pthread_mutex_lock(&results.mutex);
> +			igt_list_add_tail(&result->link, &results.list);
> +			pthread_mutex_unlock(&results.mutex);
> +		}
> +
> +		/* end of KTAP report */
> +		if (!err)
> +			goto igt_ktap_parser_end;
>  	}
> =20
> -	/* Parse topmost level */
> -	test_name[0] =3D '\0';
> -	parse_tap_level(fd, test_name, test_count, &failed_tests, &found_tests,=
 is_builtin);
> +	if (err < 0) {
> +		if (errno =3D=3D EPIPE)
> +			igt_warn("kmsg truncated: too many messages. You may want to increase=
 log_buf_len in kmcdline\n");
> +		else if (errno !=3D EINTR)
> +			igt_warn("error reading kmsg (%m)\n");
> +	}
> =20
>  igt_ktap_parser_end:
> -	results.still_running =3D false;
> +	free(suite_name);
> +	free(case_name);
> =20
> -	if (found_tests && !failed_tests)
> +	if (!err)
>  		ktap_args.ret =3D IGT_EXIT_SUCCESS;
> =20
> +	results.still_running =3D false;
> +
> +	if (ktap)
> +		igt_ktap_free(ktap);
> +
>  	return NULL;
>  }
> =20
> diff --git a/lib/igt_ktap.h b/lib/igt_ktap.h
> index b4d7a6dbc7..6f8da3eab6 100644
> --- a/lib/igt_ktap.h
> +++ b/lib/igt_ktap.h
> @@ -1,5 +1,6 @@
>  /*
>   * Copyright =C2=A9 2022 Isabella Basso do Amaral <isabbasso@riseup.net>
> + * Copyright =C2=A9 2023 Intel Corporation
>   *
>   * Permission is hereby granted, free of charge, to any person obtaining=
 a
>   * copy of this software and associated documentation files (the "Softwa=
re"),
> @@ -30,6 +31,20 @@
> =20
>  #include "igt_list.h"
> =20
> +struct igt_ktap_result {
> +	struct igt_list_head link;
> +	char *suite_name;
> +	char *case_name;
> +	char *msg;
> +	int code;
> +};
> +
> +struct igt_ktap_results;
> +
> +struct igt_ktap_results *igt_ktap_alloc(struct igt_list_head *results);
> +int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap);
> +void igt_ktap_free(struct igt_ktap_results *ktap);
> +
>  void *igt_ktap_parser(void *unused);
> =20
>  typedef struct ktap_test_results_element {
> diff --git a/lib/tests/igt_ktap_parser.c b/lib/tests/igt_ktap_parser.c
> new file mode 100644
> index 0000000000..6357bdf6a5
> --- /dev/null
> +++ b/lib/tests/igt_ktap_parser.c
> @@ -0,0 +1,246 @@
> +// SPDX-License-Identifier: MIT
> +/*
> +* Copyright =C2=A9 2023 Intel Corporation
> +*/
> +
> +#include <errno.h>
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +
> +#include "igt_core.h"
> +#include "igt_ktap.h"
> +#include "igt_list.h"
> +
> +static void ktap_list(void)
> +{
> +	struct igt_ktap_result *result, *rn;
> +	struct igt_ktap_results *ktap;
> +	int suite =3D 1, test =3D 1;
> +	IGT_LIST_HEAD(results);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +
> +	igt_assert_eq(igt_ktap_parse("KTAP version 1\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("1..3\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRES=
S);
> +	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite_1\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    1..3\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    ok 1 test_case_1 # SKIP\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    ok 2 test_case_2 # SKIP\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    ok 3 test_case_3 # SKIP\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("ok 1 test_suite_1\n", ktap), -EINPROGRESS=
);
> +	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRES=
S);
> +	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite_2\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    1..1\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    ok 1 test_case_1 # SKIP\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("ok 2 test_suite_2\n", ktap), -EINPROGRESS=
);
> +	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRES=
S);
> +	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite_3\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    1..4\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    ok 1 test_case_1 # SKIP\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    ok 2 test_case_2 # SKIP\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    ok 3 test_case_3 # SKIP\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    ok 4 test_case_4 # SKIP\n", ktap), -E=
INPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("ok 3 test_suite_3\n", ktap), 0);
> +
> +	igt_ktap_free(ktap);
> +
> +	igt_assert_eq(igt_list_length(&results), 8);
> +
> +	igt_list_for_each_entry_safe(result, rn, &results, link) {
> +		char *case_name, *suite_name;
> +
> +		igt_list_del(&result->link);
> +
> +		igt_assert_lt(0, asprintf(&case_name, "test_case_%u", test));
> +		igt_assert_lt(0, asprintf(&suite_name, "test_suite_%u", suite));
> +
> +		igt_assert(result->case_name);
> +		igt_assert_eq(strcmp(result->case_name, case_name), 0);
> +		free(result->case_name);
> +		free(case_name);
> +
> +		igt_assert(result->suite_name);
> +		igt_assert_eq(strcmp(result->suite_name, suite_name), 0);
> +		free(suite_name);
> +
> +		igt_assert(!result->msg);
> +		igt_assert_eq(result->code, IGT_EXIT_SKIP);
> +
> +		if ((suite =3D=3D 1 && test < 3) || (suite =3D=3D 3 && test < 4)) {
> +			test++;
> +		} else {
> +			free(result->suite_name);
> +			suite++;
> +			test =3D 1;
> +		}
> +
> +		free(result);
> +	}
> +}
> +
> +static void ktap_results(void)
> +{
> +	struct igt_ktap_result *result;
> +	struct igt_ktap_results *ktap;
> +	char *suite_name, *case_name;
> +	IGT_LIST_HEAD(results);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +
> +	igt_assert_eq(igt_ktap_parse("KTAP version 1\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("1..1\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRES=
S);
> +	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite\n", ktap), -EIN=
PROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    1..1\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("        KTAP version 1\n", ktap), -EINPRO=
GRESS);
> +	igt_assert_eq(igt_ktap_parse("        # Subtest: test_case\n", ktap), -=
EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("        ok 1 parameter 1\n", ktap), -EINP=
ROGRESS);
> +	igt_assert_eq(igt_ktap_parse("        ok 2 parameter 2 # a comment\n", =
ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("        ok 3 parameter 3 # SKIP\n", ktap)=
, -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("        ok 4 parameter 4 # SKIP with a me=
ssage\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("        not ok 5 parameter 5\n", ktap), -=
EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("        not ok 6 parameter 6 # failure me=
ssage\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    ok 1 test_case\n", ktap), -EINPROGRES=
S);
> +	igt_assert_eq(igt_ktap_parse("not ok 1 test_suite\n", ktap), 0);
> +
> +	igt_ktap_free(ktap);
> +
> +	igt_assert_eq(igt_list_length(&results), 2);
> +
> +	result =3D igt_list_first_entry(&results, result, link);
> +	igt_list_del(&result->link);
> +	igt_assert_eq(strcmp(result->suite_name, "test_suite"), 0);
> +	igt_assert_eq(strcmp(result->case_name, "test_case"), 0);
> +	igt_assert_eq(result->code, IGT_EXIT_INVALID);
> +	igt_assert(!result->msg);
> +	free(result->msg);
> +	suite_name =3D result->suite_name;
> +	case_name =3D result->case_name;
> +	free(result);
> +
> +	result =3D igt_list_first_entry(&results, result, link);
> +	igt_list_del(&result->link);
> +	igt_assert_eq(strcmp(result->suite_name, suite_name), 0);
> +	igt_assert_eq(strcmp(result->case_name, case_name), 0);
> +	igt_assert_neq(result->code, IGT_EXIT_INVALID);
> +	free(result->msg);
> +	free(suite_name);
> +	free(case_name);
> +	free(result);
> +}
> +
> +static void ktap_success(void)
> +{
> +	struct igt_ktap_result *result;
> +	struct igt_ktap_results *ktap;
> +	IGT_LIST_HEAD(results);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +
> +	igt_assert_eq(igt_ktap_parse("KTAP version 1\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("1..1\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRES=
S);
> +	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite\n", ktap), -EIN=
PROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    1..1\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("        KTAP version 1\n", ktap), -EINPRO=
GRESS);
> +	igt_assert(igt_list_empty(&results));
> +
> +	igt_assert_eq(igt_ktap_parse("        # Subtest: test_case\n", ktap), -=
EINPROGRESS);
> +	igt_assert_eq(igt_list_length(&results), 1);
> +
> +	igt_assert_eq(igt_ktap_parse("        ok 1 parameter # SKIP\n", ktap), =
-EINPROGRESS);
> +	igt_assert_eq(igt_list_length(&results), 1);
> +
> +	igt_assert_eq(igt_ktap_parse("    ok 1 test_case\n", ktap), -EINPROGRES=
S);
> +	igt_assert_eq(igt_list_length(&results), 2);
> +
> +	igt_assert_eq(igt_ktap_parse("not ok 1 test_suite\n", ktap), 0);
> +	igt_assert_eq(igt_list_length(&results), 2);
> +
> +	igt_ktap_free(ktap);
> +
> +	result =3D igt_list_last_entry(&results, result, link);
> +	igt_list_del(&result->link);
> +	igt_assert_eq(result->code, IGT_EXIT_SUCCESS);
> +	free(result->msg);
> +	free(result);
> +
> +	result =3D igt_list_last_entry(&results, result, link);
> +	igt_list_del(&result->link);
> +	free(result->suite_name);
> +	free(result->case_name);
> +	free(result->msg);
> +	free(result);
> +}
> +
> +static void ktap_top_version(void)
> +{
> +	struct igt_ktap_results *ktap;
> +	IGT_LIST_HEAD(results);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +	igt_assert_eq(igt_ktap_parse("1..1\n", ktap), -EPROTO);
> +	igt_ktap_free(ktap);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +	/* TODO: change to -EPROTO as soon as related workaround is dropped */
> +	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRES=
S);
> +	igt_ktap_free(ktap);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite\n", ktap), -EPR=
OTO);
> +	igt_ktap_free(ktap);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +	igt_assert_eq(igt_ktap_parse("    1..1\n", ktap), -EPROTO);
> +	igt_ktap_free(ktap);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +	igt_assert_eq(igt_ktap_parse("        KTAP version 1\n", ktap), -EPROTO=
);
> +	igt_ktap_free(ktap);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +	igt_assert_eq(igt_ktap_parse("        # Subtest: test_case\n", ktap), -=
EPROTO);
> +	igt_ktap_free(ktap);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +	igt_assert_eq(igt_ktap_parse("        ok 1 parameter 1\n", ktap), -EPRO=
TO);
> +	igt_ktap_free(ktap);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +	igt_assert_eq(igt_ktap_parse("    ok 1 test_case\n", ktap), -EPROTO);
> +	igt_ktap_free(ktap);
> +
> +	ktap =3D igt_ktap_alloc(&results);
> +	igt_require(ktap);
> +	igt_assert_eq(igt_ktap_parse("ok 1 test_suite\n", ktap), -EPROTO);
> +	igt_ktap_free(ktap);
> +}
> +
> +igt_main
> +{
> +	igt_subtest("list")
> +		ktap_list();
> +
> +	igt_subtest("results")
> +		ktap_results();
> +
> +	igt_subtest("success")
> +		ktap_success();
> +
> +	igt_subtest("top-ktap-version")
> +		ktap_top_version();
> +}
> diff --git a/lib/tests/meson.build b/lib/tests/meson.build
> index 7a52a7876e..fa3d81de6c 100644
> --- a/lib/tests/meson.build
> +++ b/lib/tests/meson.build
> @@ -10,6 +10,7 @@ lib_tests =3D [
>  	'igt_exit_handler',
>  	'igt_fork',
>  	'igt_fork_helper',
> +        'igt_ktap_parser',
>  	'igt_list_only',
>  	'igt_invalid_subtest_name',
>  	'igt_nesting',
