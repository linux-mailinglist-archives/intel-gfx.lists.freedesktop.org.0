Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA377C030C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 19:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09C010E3B4;
	Tue, 10 Oct 2023 17:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E0E10E3B1;
 Tue, 10 Oct 2023 17:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696960514; x=1728496514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vFF/Yucxvn0uJlqfUmSeX2z3Dj2TQJAuluy2Q5WRTZI=;
 b=fAxVufFEFqwPXIsVp/q6C1/nhDxaMoalrxXyvqO/45QNgsQrz0kf+ap1
 lnpk5IImGefrKhz8Jr1mmCLeG6q4vuN+X2nkKuexmgOgzYYWKGLYMtN1Q
 rlh7/qzVTJvmU8N9VPk0g7yvQbLBugjyLvnXc4Mq0aNBsstIc5m1wPHT5
 ltUNg7gWV4RaywJ9Cz+Vva8WdOAmk9XL1x2vljBFgVJz4maLDWMhTTB6g
 yWR45cSQvjiVSPlZKeK2ZQAKIXwROq5AvY39rZrb1JQ1r2jKX1fTQcBDx
 R2ED0iNfDcUEcdDUyzuPV4KZ5tKHWJs7lZmveyf/CM+TRKse/CnpTnPdd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="383342792"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="383342792"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 10:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="869795888"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="869795888"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.213.0.39])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 10:54:47 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
Date: Tue, 10 Oct 2023 19:54:45 +0200
Message-ID: <1999837.PIDvDuAF1L@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231010153357.480aa553@maurocar-mobl2>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
 <20231009122750.519112-17-janusz.krzysztofik@linux.intel.com>
 <20231010153357.480aa553@maurocar-mobl2>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 04/11] lib/kunit: Parse KTAP report
 from the main process thread
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

Hi Mauro,

Thanks for review.

On Tuesday, 10 October 2023 15:33:57 CEST Mauro Carvalho Chehab wrote:
> On Mon,  9 Oct 2023 14:27:55 +0200
> Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:
>=20
> > There was an attempt to parse KTAP reports in the background while a ku=
nit
> > test module is loading.  However, since dynamic sub-subtests can be
> > executed only from the main thread, that attempt was not quite successf=
ul,
> > as IGT results from all executed kunit test cases were generated only
> > after loading of kunit test module completed.
> >=20
> > Now that the parser maintains its state and we can call it separately f=
or
> > each input line of a KTAP report, it is perfectly possible to call the
> > parser from the main thread while the module is loading in the backgrou=
nd,
> > and convert results from kunit test cases immediately to results of IGT
> > dynamic sub-subtests by running an igt_dynamic() section for each result
> > as soon as returned by the parser.
> >=20
> > Drop igt_ktap_parser() thread and execute igt_dynamic() for each kunit
> > result obtained from igt_ktap_parse() called from the main thread.
> >=20
> > Also, drop no longer needed functions from igt_ktap soruces.
> >=20
> > v3: Fix ktap structure not freed on lseek error,
> >   - fix initial SIGCHLD handler not restored,
> >   - fix missing handling of potential errors returned by sigaction,
> >   - fix potential race of read() vs. ptherad_kill(), use robust mutex f=
or
> >     synchronization with modprobe thread,
> >   - fix potentially illegal use of igt_assert() called outside of
> >     dynamic sub-subtest section,
> >   - fix unsupported exit code potentially passed to igt_fail(),
> >   - no need to fail a dynamic sub-subtest on potential KTAP parser error
> >     after a valid result from the parser has been processed,
> >   - fix trailing newlines missing from error messages,
> >   - add more debug statements,
> >   - integrate common code around kunit_result_free() into it.
> > v2: Interrupt blocking read() on modprobe failure.
> >=20
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org> # v2
> > ---
> >  lib/igt_kmod.c | 261 +++++++++++++++++++----
> >  lib/igt_ktap.c | 568 -------------------------------------------------
> >  lib/igt_ktap.h |  22 --
> >  3 files changed, 222 insertions(+), 629 deletions(-)
> >=20
> > diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> > index 426ae5b26f..7bca4cdaab 100644
> > --- a/lib/igt_kmod.c
> > +++ b/lib/igt_kmod.c
> > @@ -1,5 +1,5 @@
> >  /*
> > - * Copyright =A9 2016 Intel Corporation
> > + * Copyright =A9 2016-2023 Intel Corporation
> >   *
> >   * Permission is hereby granted, free of charge, to any person obtaini=
ng a
> >   * copy of this software and associated documentation files (the "Soft=
ware"),
> > @@ -26,7 +26,12 @@
> >  #include <errno.h>
> >  #include <fcntl.h>
> >  #include <pthread.h>
> > +#include <stdlib.h>
> > +#include <string.h>
> >  #include <sys/utsname.h>
> > +#include <unistd.h>
> > +
> > +#include "assembler/brw_compat.h"	/* [un]likely() */
> > =20
> >  #include "igt_aux.h"
> >  #include "igt_core.h"
> > @@ -748,9 +753,12 @@ void igt_kselftest_get_tests(struct kmod_module *k=
mod,
> >  }
> > =20
> >  struct modprobe_data {
> > +	pthread_t parent;
> >  	struct kmod_module *kmod;
> >  	const char *opts;
> >  	int err;
> > +	pthread_mutex_t lock;
> > +	pthread_t thread;
> >  };
> > =20
> >  static void *modprobe_task(void *arg)
> > @@ -759,16 +767,132 @@ static void *modprobe_task(void *arg)
> > =20
> >  	data->err =3D modprobe(data->kmod, data->opts);
> > =20
> > +	if (igt_debug_on(data->err)) {
> > +		int err;
> > +
> > +		while (err =3D pthread_mutex_trylock(&data->lock),
> > +		       err && !igt_debug_on(err !=3D EBUSY))
> > +			igt_debug_on(pthread_kill(data->parent, SIGCHLD));
>=20
> I guess you need here an "igt_debug_on_once", as it doesn't make
> sense to have a (potentially) endless loop here printing error
> messages.

Right.  Since we don't have igt_debug_on_once() implemented, I'll open code=
=20
that improvement.

Thanks,
Janusz

>=20
> the other changes LGTM.
>=20
> > +	} else {
> > +		/* let main thread use mutex to detect modprobe completion */
> > +		igt_debug_on(pthread_mutex_lock(&data->lock));
> > +	}
> > +
> >  	return NULL;
> >  }
> > =20
> > +static void kunit_sigchld_handler(int signal)
> > +{
> > +	return;
> > +}
> > +
> > +static int kunit_kmsg_result_get(struct igt_list_head *results,
> > +				 struct modprobe_data *modprobe,
> > +				 int fd, struct igt_ktap_results *ktap)
> > +{
> > +	struct sigaction sigchld =3D { .sa_handler =3D kunit_sigchld_handler,=
 },
> > +			 *saved;
> > +	char record[BUF_LEN + 1], *buf;
> > +	unsigned long taints;
> > +	int ret;
> > +
> > +	do {
> > +		int err;
> > +
> > +		if (igt_debug_on(igt_kernel_tainted(&taints)))
> > +			return -ENOTRECOVERABLE;
> > +
> > +		err =3D igt_debug_on(sigaction(SIGCHLD, &sigchld, saved));
> > +		if (err =3D=3D -1)
> > +			return -errno;
> > +		else if (unlikely(err))
> > +			return err;
> > +
> > +		err =3D pthread_mutex_lock(&modprobe->lock);
> > +		switch (err) {
> > +		case EOWNERDEAD:
> > +			/* leave the mutex unrecoverable */
> > +			igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
> > +			__attribute__ ((fallthrough));
> > +		case ENOTRECOVERABLE:
> > +			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> > +			if (igt_debug_on(modprobe->err))
> > +				return modprobe->err;
> > +			break;
> > +		case 0:
> > +			break;
> > +		default:
> > +			igt_debug("pthread_mutex_lock() error: %d\n", err);
> > +			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> > +			return -err;
> > +		}
> > +
> > +		ret =3D read(fd, record, BUF_LEN);
> > +
> > +		if (!err) {
> > +			igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
> > +			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> > +		}
> > +
> > +		if (igt_debug_on(!ret))
> > +			return -ENODATA;
> > +		if (igt_debug_on(ret =3D=3D -1))
> > +			return -errno;
> > +		if (unlikely(igt_debug_on(ret < 0)))
> > +			break;
> > +
> > +		/* skip kmsg continuation lines */
> > +		if (igt_debug_on(*record =3D=3D ' '))
> > +			continue;
> > +
> > +		/* NULL-terminate the record */
> > +		record[ret] =3D '\0';
> > +
> > +		/* detect start of log message, continue if not found */
> > +		buf =3D strchrnul(record, ';');
> > +		if (igt_debug_on(*buf =3D=3D '\0'))
> > +			continue;
> > +		buf++;
> > +
> > +		ret =3D igt_ktap_parse(buf, ktap);
> > +		if (!ret || igt_debug_on(ret !=3D -EINPROGRESS))
> > +			break;
> > +	} while (igt_list_empty(results));
> > +
> > +	return ret;
> > +}
> > +
> > +static void kunit_result_free(struct igt_ktap_result **r,
> > +			      char **suite_name, char **case_name)
> > +{
> > +	if (!*r)
> > +		return;
> > +
> > +	igt_list_del(&(*r)->link);
> > +
> > +	if ((*r)->suite_name !=3D *suite_name) {
> > +		free(*suite_name);
> > +		*suite_name =3D (*r)->suite_name;
> > +	}
> > +
> > +	if ((*r)->case_name !=3D *case_name) {
> > +		free(*case_name);
> > +		*case_name =3D (*r)->case_name;
> > +	}
> > +
> > +	free((*r)->msg);
> > +	free(*r);
> > +	*r =3D NULL;
> > +}
> > +
> >  static void __igt_kunit(struct igt_ktest *tst, const char *opts)
> >  {
> > -	struct modprobe_data modprobe =3D { tst->kmod, opts, 0, };
> > -	struct kmod_module *kunit_kmod;
> > -	bool is_builtin;
> > -	struct ktap_test_results *results;
> > -	pthread_t modprobe_thread;
> > +	struct modprobe_data modprobe =3D { pthread_self(), tst->kmod, opts, =
0, };
> > +	char *suite_name =3D NULL, *case_name =3D NULL;
> > +	struct igt_ktap_result *r, *rn;
> > +	struct igt_ktap_results *ktap;
> > +	pthread_mutexattr_t attr;
> > +	IGT_LIST_HEAD(results);
> >  	unsigned long taints;
> >  	int flags, ret;
> > =20
> > @@ -780,60 +904,119 @@ static void __igt_kunit(struct igt_ktest *tst, c=
onst char *opts)
> > =20
> >  	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
> > =20
> > -	igt_skip_on(kmod_module_new_from_name(kmod_ctx(), "kunit", &kunit_kmo=
d));
> > -	is_builtin =3D kmod_module_get_initstate(kunit_kmod) =3D=3D KMOD_MODU=
LE_BUILTIN;
> > -	kmod_module_unref(kunit_kmod);
> > +	igt_skip_on(pthread_mutexattr_init(&attr));
> > +	igt_skip_on(pthread_mutexattr_setrobust(&attr, PTHREAD_MUTEX_ROBUST));
> > +	igt_skip_on(pthread_mutex_init(&modprobe.lock, &attr));
> > =20
> > -	results =3D ktap_parser_start(tst->kmsg, is_builtin);
> > +	ktap =3D igt_ktap_alloc(&results);
> > +	igt_require(ktap);
> > =20
> > -	if (igt_debug_on(pthread_create(&modprobe_thread, NULL,
> > +	if (igt_debug_on(pthread_create(&modprobe.thread, NULL,
> >  					modprobe_task, &modprobe))) {
> > -		ktap_parser_cancel();
> > -		igt_ignore_warn(ktap_parser_stop());
> > +		igt_ktap_free(ktap);
> >  		igt_skip("Failed to create a modprobe thread\n");
> >  	}
> > =20
> > -	while (READ_ONCE(results->still_running) || !igt_list_empty(&results-=
>list))
> > -	{
> > -		struct ktap_test_results_element *result;
> > -
> > -		if (!pthread_tryjoin_np(modprobe_thread, NULL) && modprobe.err) {
> > -			ktap_parser_cancel();
> > +	do {
> > +		ret =3D kunit_kmsg_result_get(&results, &modprobe,
> > +					    tst->kmsg, ktap);
> > +		if (igt_debug_on(ret && ret !=3D -EINPROGRESS))
> >  			break;
> > -		}
> > =20
> > -		if (igt_kernel_tainted(&taints)) {
> > -			ktap_parser_cancel();
> > -			pthread_cancel(modprobe_thread);
> > +		if (igt_debug_on(igt_list_empty(&results)))
> >  			break;
> > -		}
> > =20
> > -		pthread_mutex_lock(&results->mutex);
> > -		if (igt_list_empty(&results->list)) {
> > -			pthread_mutex_unlock(&results->mutex);
> > -			continue;
> > -		}
> > +		r =3D igt_list_first_entry(&results, r, link);
> > =20
> > -		result =3D igt_list_first_entry(&results->list, result, link);
> > +		igt_dynamic_f("%s-%s", r->suite_name, r->case_name) {
> > +			if (r->code =3D=3D IGT_EXIT_INVALID) {
> > +				/* parametrized test case, get actual result */
> > +				kunit_result_free(&r, &suite_name, &case_name);
> > =20
> > -		igt_list_del(&result->link);
> > -		pthread_mutex_unlock(&results->mutex);
> > +				igt_assert(igt_list_empty(&results));
> > =20
> > -		igt_dynamic(result->test_name) {
> > -			igt_assert(READ_ONCE(result->passed));
> > +				ret =3D kunit_kmsg_result_get(&results, &modprobe,
> > +							    tst->kmsg, ktap);
> > +				if (ret !=3D -EINPROGRESS)
> > +					igt_fail_on(ret);
> > +
> > +				igt_fail_on(igt_list_empty(&results));
> > +
> > +				r =3D igt_list_first_entry(&results, r, link);
> > +
> > +				igt_fail_on_f(strcmp(r->suite_name, suite_name),
> > +					      "suite_name expected: %s, got: %s\n",
> > +					      suite_name, r->suite_name);
> > +				igt_fail_on_f(strcmp(r->case_name, case_name),
> > +					      "case_name expected: %s, got: %s\n",
> > +					      case_name, r->case_name);
> > +			}
> > =20
> > -			if (!pthread_tryjoin_np(modprobe_thread, NULL))
> > +			igt_assert_neq(r->code, IGT_EXIT_INVALID);
> > +
> > +			if (r->msg && *r->msg) {
> > +				igt_skip_on_f(r->code =3D=3D IGT_EXIT_SKIP,
> > +					      "%s\n", r->msg);
> > +				igt_fail_on_f(r->code =3D=3D IGT_EXIT_FAILURE,
> > +					      "%s\n", r->msg);
> > +				igt_abort_on_f(r->code =3D=3D IGT_EXIT_ABORT,
> > +					      "%s\n", r->msg);
> > +			} else {
> > +				igt_skip_on(r->code =3D=3D IGT_EXIT_SKIP);
> > +				igt_fail_on(r->code =3D=3D IGT_EXIT_FAILURE);
> > +				if (r->code =3D=3D IGT_EXIT_ABORT)
> > +					igt_fail(r->code);
> > +			}
> > +			igt_assert_eq(r->code, IGT_EXIT_SUCCESS);
> > +
> > +			switch (pthread_mutex_lock(&modprobe.lock)) {
> > +			case 0:
> > +				igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
> > +				break;
> > +			case EOWNERDEAD:
> > +				/* leave the mutex unrecoverable */
> > +				igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
> > +				__attribute__ ((fallthrough));
> > +			case ENOTRECOVERABLE:
> >  				igt_assert_eq(modprobe.err, 0);
> > +				break;
> > +			default:
> > +				igt_debug("pthread_mutex_lock() failed\n");
> > +				break;
> > +			}
> > =20
> >  			igt_assert_eq(igt_kernel_tainted(&taints), 0);
> >  		}
> > =20
> > -		free(result);
> > +		kunit_result_free(&r, &suite_name, &case_name);
> > +
> > +	} while (ret =3D=3D -EINPROGRESS);
> > +
> > +	igt_list_for_each_entry_safe(r, rn, &results, link)
> > +		kunit_result_free(&r, &suite_name, &case_name);
> > +
> > +	free(case_name);
> > +	free(suite_name);
> > +
> > +	switch (pthread_mutex_lock(&modprobe.lock)) {
> > +	case 0:
> > +		igt_debug_on(pthread_cancel(modprobe.thread));
> > +		igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
> > +		igt_debug_on(pthread_join(modprobe.thread, NULL));
> > +		break;
> > +	case EOWNERDEAD:
> > +		/* leave the mutex unrecoverable */
> > +		igt_debug_on(pthread_mutex_unlock(&modprobe.lock));
> > +		break;
> > +	case ENOTRECOVERABLE:
> > +		break;
> > +	default:
> > +		igt_debug("pthread_mutex_lock() failed\n");
> > +		igt_debug_on(pthread_join(modprobe.thread, NULL));
> > +		break;
> >  	}
> > =20
> > -	pthread_join(modprobe_thread, NULL);
> > -
> > -	ret =3D ktap_parser_stop();
> > +	igt_ktap_free(ktap);
> > =20
> >  	igt_skip_on(modprobe.err);
> >  	igt_skip_on(igt_kernel_tainted(&taints));
> > diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> > index 5eac102417..53a6c63288 100644
> > --- a/lib/igt_ktap.c
> > +++ b/lib/igt_ktap.c
> > @@ -4,17 +4,11 @@
> >   * Copyright =A9 2023 Intel Corporation
> >   */
> > =20
> > -#include <ctype.h>
> > -#include <limits.h>
> > -#include <libkmod.h>
> > -#include <pthread.h>
> >  #include <errno.h>
> >  #include <stdio.h>
> >  #include <stdlib.h>
> >  #include <string.h>
> > -#include <unistd.h>
> > =20
> > -#include "igt_aux.h"
> >  #include "igt_core.h"
> >  #include "igt_ktap.h"
> >  #include "igt_list.h"
> > @@ -312,565 +306,3 @@ void igt_ktap_free(struct igt_ktap_results *ktap)
> >  {
> >  	free(ktap);
> >  }
> > -
> > -#define DELIMITER "-"
> > -
> > -struct ktap_parser_args {
> > -	int fd;
> > -	bool is_builtin;
> > -	int ret;
> > -} ktap_args;
> > -
> > -static struct ktap_test_results results;
> > -
> > -static int log_to_end(enum igt_log_level level, int fd,
> > -		      char *record, const char *format, ...) __attribute__((format(p=
rintf, 4, 5)));
> > -
> > -/**
> > - * log_to_end:
> > - * @level: #igt_log_level
> > - * @record: record to store the read data
> > - * @format: format string
> > - * @...: optional arguments used in the format string
> > - *
> > - * This is an altered version of the generic structured logging helper=
 function
> > - * igt_log capable of reading to the end of a given line.
> > - *
> > - * Returns: 0 for success, or -2 if there's an error reading from the =
file
> > - */
> > -static int log_to_end(enum igt_log_level level, int fd,
> > -		      char *record, const char *format, ...)
> > -{
> > -	va_list args;
> > -	const char *lend;
> > -
> > -	/* Cutoff after newline character, in order to not display garbage */
> > -	char *cutoff =3D strchr(record, '\n');
> > -	if (cutoff) {
> > -		if (cutoff - record < BUF_LEN)
> > -			cutoff[1] =3D '\0';
> > -	}
> > -
> > -	va_start(args, format);
> > -	igt_vlog(IGT_LOG_DOMAIN, level, format, args);
> > -	va_end(args);
> > -
> > -	lend =3D strchrnul(record, '\n');
> > -	while (*lend =3D=3D '\0') {
> > -		igt_log(IGT_LOG_DOMAIN, level, "%s", record);
> > -
> > -		if (read(fd, record, BUF_LEN) < 0) {
> > -			if (errno =3D=3D EPIPE)
> > -				igt_warn("kmsg truncated: too many messages. You may want to incre=
ase log_buf_len in kmcdline\n");
> > -			else
> > -				igt_warn("an error occurred while reading kmsg: %m\n");
> > -
> > -			return -2;
> > -		}
> > -
> > -		lend =3D strchrnul(record, '\n');
> > -	}
> > -	return 0;
> > -}
> > -
> > -/**
> > - * lookup_value:
> > - * @haystack: the string to search in
> > - * @needle: the string to search for
> > - *
> > - * Returns: the value of the needle in the haystack, or -1 if not foun=
d.
> > - */
> > -static long lookup_value(const char *haystack, const char *needle)
> > -{
> > -	const char *needle_rptr;
> > -	char *needle_end;
> > -	long num;
> > -
> > -	needle_rptr =3D strcasestr(haystack, needle);
> > -
> > -	if (needle_rptr =3D=3D NULL)
> > -		return -1;
> > -
> > -	/* Skip search string and whitespaces after it */
> > -	needle_rptr +=3D strlen(needle);
> > -
> > -	num =3D strtol(needle_rptr, &needle_end, 10);
> > -
> > -	if (needle_rptr =3D=3D needle_end)
> > -		return -1;
> > -
> > -	if (num =3D=3D LONG_MIN || num =3D=3D LONG_MAX)
> > -		return 0;
> > -
> > -	return num > 0 ? num : 0;
> > -}
> > -
> > -/**
> > - * tap_version_present:
> > - * @record: buffer with tap data
> > - * @print_info: whether tap version should be printed or not
> > - *
> > - * Returns:
> > - * 0 if not found
> > - * 1 if found
> > - */
> > -static int tap_version_present(char* record, bool print_info)
> > -{
> > -	/*
> > -	 * "(K)TAP version XX" should be the first line on all (sub)tests as =
per
> > -	 * https://kernel.org/doc/html/latest/dev-tools/ktap.html#version-lin=
es
> > -	 *
> > -	 * but actually isn't, as it currently depends on the KUnit module
> > -	 * being built-in, so we can't rely on it every time
> > -	 */
> > -	const char *version_rptr =3D strcasestr(record, "TAP version ");
> > -	char *cutoff;
> > -
> > -	if (version_rptr =3D=3D NULL)
> > -		return 0;
> > -
> > -	/* Cutoff after newline character, in order to not display garbage */
> > -	cutoff =3D strchr(version_rptr, '\n');
> > -	if (cutoff)
> > -		cutoff[0] =3D '\0';
> > -
> > -	if (print_info)
> > -		igt_info("%s\n", version_rptr);
> > -
> > -	return 1;
> > -}
> > -
> > -/**
> > - * find_next_tap_subtest:
> > - * @fd: file descriptor
> > - * @record: buffer used to read fd
> > - * @is_builtin: whether KUnit is built-in or not
> > - *
> > - * Returns:
> > - * 0 if there's missing information
> > - * -1 if not found
> > - * -2 if there are problems while reading the file.
> > - * any other value corresponds to the amount of cases of the next (sub=
)test
> > - */
> > -static int find_next_tap_subtest(int fd, char *record, char *test_name=
, bool is_builtin)
> > -{
> > -	const char *test_lookup_str, *subtest_lookup_str, *name_rptr;
> > -	long test_count;
> > -	char *cutoff;
> > -
> > -	test_name[0] =3D '\0';
> > -	test_name[BUF_LEN] =3D '\0';
> > -
> > -	test_lookup_str =3D " subtest: ";
> > -	subtest_lookup_str =3D " test: ";
> > -
> > -	if (!tap_version_present(record, true))
> > -		return -1;
> > -
> > -	if (is_builtin) {
> > -		if (read(fd, record, BUF_LEN) < 0) {
> > -			if (errno =3D=3D EPIPE)
> > -				igt_warn("kmsg truncated: too many messages. You may want to incre=
ase log_buf_len in kmcdline\n");
> > -			else
> > -				igt_warn("an error occurred while reading kmsg: %m\n");
> > -
> > -			return -2;
> > -		}
> > -	}
> > -
> > -	name_rptr =3D strcasestr(record, test_lookup_str);
> > -	if (name_rptr !=3D NULL) {
> > -		name_rptr +=3D strlen(test_lookup_str);
> > -	} else {
> > -		name_rptr =3D strcasestr(record, subtest_lookup_str);
> > -		if (name_rptr !=3D NULL)
> > -			name_rptr +=3D strlen(subtest_lookup_str);
> > -	}
> > -
> > -	if (name_rptr =3D=3D NULL) {
> > -		if (!is_builtin)
> > -			/* We've probably found nothing */
> > -			return -1;
> > -		igt_info("Missing test name\n");
> > -	} else {
> > -		strncpy(test_name, name_rptr, BUF_LEN);
> > -		/* Cutoff after newline character, in order to not display garbage */
> > -		cutoff =3D strchr(test_name, '\n');
> > -		if (cutoff)
> > -			cutoff[0] =3D '\0';
> > -
> > -		if (read(fd, record, BUF_LEN) < 0) {
> > -			if (errno =3D=3D EPIPE)
> > -				igt_warn("kmsg truncated: too many messages. You may want to incre=
ase log_buf_len in kmcdline\n");
> > -			else
> > -				igt_warn("unknown error reading kmsg (%m)\n");
> > -
> > -			return -2;
> > -		}
> > -
> > -		/* Now we can be sure we found tests */
> > -		if (!is_builtin)
> > -			igt_info("KUnit is not built-in, skipping version check...\n");
> > -	}
> > -
> > -	/*
> > -	 * Total test count will almost always appear as 0..N at the beginning
> > -	 * of a run, so we use it to reliably identify a new run
> > -	 */
> > -	test_count =3D lookup_value(record, "..");
> > -
> > -	if (test_count <=3D 0) {
> > -		igt_info("Missing test count\n");
> > -		if (test_name[0] =3D=3D '\0')
> > -			return 0;
> > -		if (log_to_end(IGT_LOG_INFO, fd, record,
> > -				"Running some tests in: %s\n",
> > -				test_name) < 0)
> > -			return -2;
> > -		return 0;
> > -	} else if (test_name[0] =3D=3D '\0') {
> > -		igt_info("Running %ld tests...\n", test_count);
> > -		return 0;
> > -	}
> > -
> > -	if (log_to_end(IGT_LOG_INFO, fd, record,
> > -			"Executing %ld tests in: %s\n",
> > -			test_count, test_name) < 0)
> > -		return -2;
> > -
> > -	return test_count;
> > -}
> > -
> > -/**
> > - * parse_kmsg_for_tap:
> > - * @fd: file descriptor
> > - * @record: buffer used to read fd
> > - * @test_name: buffer to store the test name
> > - *
> > - * Returns:
> > - * 1 if no results were found
> > - * 0 if a test succeded
> > - * -1 if a test failed
> > - * -2 if there are problems reading the file
> > - */
> > -static int parse_kmsg_for_tap(int fd, char *record, char *test_name)
> > -{
> > -	const char *lstart, *ok_lookup_str, *nok_lookup_str,
> > -	      *ok_rptr, *nok_rptr, *comment_start, *value_parse_start;
> > -	char *test_name_end;
> > -
> > -	ok_lookup_str =3D "ok ";
> > -	nok_lookup_str =3D "not ok ";
> > -
> > -	lstart =3D strchrnul(record, ';');
> > -
> > -	if (*lstart =3D=3D '\0') {
> > -		igt_warn("kmsg truncated: output malformed (%m)\n");
> > -		return -2;
> > -	}
> > -
> > -	lstart++;
> > -	while (isspace(*lstart))
> > -		lstart++;
> > -
> > -	nok_rptr =3D strstr(lstart, nok_lookup_str);
> > -	if (nok_rptr !=3D NULL) {
> > -		nok_rptr +=3D strlen(nok_lookup_str);
> > -		while (isdigit(*nok_rptr) || isspace(*nok_rptr) || *nok_rptr =3D=3D =
'-')
> > -			nok_rptr++;
> > -		test_name_end =3D strncpy(test_name, nok_rptr, BUF_LEN);
> > -		while (!isspace(*test_name_end))
> > -			test_name_end++;
> > -		*test_name_end =3D '\0';
> > -		if (log_to_end(IGT_LOG_WARN, fd, record,
> > -			       "%s", lstart) < 0)
> > -			return -2;
> > -		return -1;
> > -	}
> > -
> > -	comment_start =3D strchrnul(lstart, '#');
> > -
> > -	/* Check if we're still in a subtest */
> > -	if (*comment_start !=3D '\0') {
> > -		comment_start++;
> > -		value_parse_start =3D comment_start;
> > -
> > -		if (lookup_value(value_parse_start, "fail: ") > 0) {
> > -			if (log_to_end(IGT_LOG_WARN, fd, record,
> > -				       "%s", lstart) < 0)
> > -				return -2;
> > -			return -1;
> > -		}
> > -	}
> > -
> > -	ok_rptr =3D strstr(lstart, ok_lookup_str);
> > -	if (ok_rptr !=3D NULL) {
> > -		ok_rptr +=3D strlen(ok_lookup_str);
> > -		while (isdigit(*ok_rptr) || isspace(*ok_rptr) || *ok_rptr =3D=3D '-')
> > -			ok_rptr++;
> > -		test_name_end =3D strncpy(test_name, ok_rptr, BUF_LEN);
> > -		while (!isspace(*test_name_end))
> > -			test_name_end++;
> > -		*test_name_end =3D '\0';
> > -		return 0;
> > -	}
> > -
> > -	return 1;
> > -}
> > -
> > -/**
> > - * parse_tap_level:
> > - * @fd: file descriptor
> > - * @base_test_name: test_name from upper recursion level
> > - * @test_count: test_count of this level
> > - * @failed_tests: top level failed_tests pointer
> > - * @found_tests: top level found_tests pointer
> > - * @is_builtin: whether the KUnit module is built-in or not
> > - *
> > - * Returns:
> > - * 0 if succeded
> > - * -1 if error occurred
> > - */
> > -__maybe_unused
> > -static int parse_tap_level(int fd, char *base_test_name, int test_coun=
t, bool *failed_tests,
> > -			   bool *found_tests, bool is_builtin)
> > -{
> > -	char record[BUF_LEN + 1];
> > -	struct ktap_test_results_element *r;
> > -	int internal_test_count;
> > -	char test_name[BUF_LEN + 1];
> > -	char base_test_name_for_next_level[BUF_LEN + 1];
> > -
> > -	for (int i =3D 0; i < test_count; i++) {
> > -		if (read(fd, record, BUF_LEN) < 0) {
> > -			if (errno =3D=3D EPIPE)
> > -				igt_warn("kmsg truncated: too many messages. You may want to incre=
ase log_buf_len in kmcdline\n");
> > -			else
> > -				igt_warn("error reading kmsg (%m)\n");
> > -
> > -			return -1;
> > -		}
> > -
> > -		/* Sublevel found */
> > -		if (tap_version_present(record, false))
> > -		{
> > -			internal_test_count =3D find_next_tap_subtest(fd, record, test_name,
> > -								    is_builtin);
> > -			switch (internal_test_count) {
> > -			case -2:
> > -				/* No more data to read */
> > -				return -1;
> > -			case -1:
> > -				/* No test found */
> > -				return -1;
> > -			case 0:
> > -				/* Tests found, but they're missing info */
> > -				*found_tests =3D true;
> > -				return -1;
> > -			default:
> > -				*found_tests =3D true;
> > -
> > -				memcpy(base_test_name_for_next_level, base_test_name, BUF_LEN);
> > -				if (strlen(base_test_name_for_next_level) < BUF_LEN - 1 &&
> > -				    base_test_name_for_next_level[0])
> > -					strncat(base_test_name_for_next_level, DELIMITER,
> > -						BUF_LEN - strlen(base_test_name_for_next_level));
> > -				memcpy(base_test_name_for_next_level + strlen(base_test_name_for_n=
ext_level),
> > -				       test_name, BUF_LEN - strlen(base_test_name_for_next_level));
> > -
> > -				if (parse_tap_level(fd, base_test_name_for_next_level,
> > -						    internal_test_count, failed_tests, found_tests,
> > -						    is_builtin) =3D=3D -1)
> > -					return -1;
> > -				break;
> > -			}
> > -		}
> > -
> > -		switch (parse_kmsg_for_tap(fd, record, test_name)) {
> > -		case -2:
> > -			return -1;
> > -		case -1:
> > -			*failed_tests =3D true;
> > -
> > -			r =3D malloc(sizeof(*r));
> > -
> > -			memcpy(r->test_name, base_test_name, BUF_LEN);
> > -			if (strlen(r->test_name) < BUF_LEN - 1)
> > -				if (r->test_name[0])
> > -					strncat(r->test_name, DELIMITER,
> > -						BUF_LEN - strlen(r->test_name));
> > -			memcpy(r->test_name + strlen(r->test_name), test_name,
> > -			       BUF_LEN - strlen(r->test_name));
> > -			r->test_name[BUF_LEN] =3D '\0';
> > -
> > -			r->passed =3D false;
> > -
> > -			pthread_mutex_lock(&results.mutex);
> > -			igt_list_add_tail(&r->link, &results.list);
> > -			pthread_mutex_unlock(&results.mutex);
> > -
> > -			test_name[0] =3D '\0';
> > -			break;
> > -		case 0:
> > -			r =3D malloc(sizeof(*r));
> > -
> > -			memcpy(r->test_name, base_test_name, BUF_LEN);
> > -			if (strlen(r->test_name) < BUF_LEN - 1)
> > -				if (r->test_name[0])
> > -					strncat(r->test_name, DELIMITER,
> > -						BUF_LEN - strlen(r->test_name));
> > -			memcpy(r->test_name + strlen(r->test_name), test_name,
> > -			       BUF_LEN - strlen(r->test_name));
> > -			r->test_name[BUF_LEN] =3D '\0';
> > -
> > -			r->passed =3D true;
> > -
> > -			pthread_mutex_lock(&results.mutex);
> > -			igt_list_add_tail(&r->link, &results.list);
> > -			pthread_mutex_unlock(&results.mutex);
> > -
> > -			test_name[0] =3D '\0';
> > -			break;
> > -		default:
> > -			break;
> > -		}
> > -	}
> > -	return 0;
> > -}
> > -
> > -/**
> > - * igt_ktap_parser:
> > - *
> > - * This function parses the output of a ktap script and passes it to m=
ain thread.
> > - */
> > -void *igt_ktap_parser(void *unused)
> > -{
> > -	char record[BUF_LEN + 1], *buf, *suite_name =3D NULL, *case_name =3D =
NULL;
> > -	struct igt_ktap_results *ktap =3D NULL;
> > -	int fd =3D ktap_args.fd;
> > -	IGT_LIST_HEAD(list);
> > -	int err;
> > -
> > -	ktap =3D igt_ktap_alloc(&list);
> > -	if (igt_debug_on(!ktap))
> > -		goto igt_ktap_parser_end;
> > -
> > -	while (err =3D read(fd, record, BUF_LEN), err > 0) {
> > -		struct igt_ktap_result *r, *rn;
> > -
> > -		/* skip kmsg continuation lines */
> > -		if (igt_debug_on(*record =3D=3D ' '))
> > -			continue;
> > -
> > -		/* NULL-terminate the record */
> > -		record[err] =3D '\0';
> > -
> > -		/* detect start of log message, continue if not found */
> > -		buf =3D strchrnul(record, ';');
> > -		if (igt_debug_on(*buf =3D=3D '\0'))
> > -			continue;
> > -		buf++;
> > -
> > -		err =3D igt_ktap_parse(buf, ktap);
> > -
> > -		/* parsing error */
> > -		if (err && err !=3D -EINPROGRESS)
> > -			goto igt_ktap_parser_end;
> > -
> > -		igt_list_for_each_entry_safe(r, rn, &list, link) {
> > -			struct ktap_test_results_element *result =3D NULL;
> > -			int code =3D r->code;
> > -
> > -			if (code !=3D IGT_EXIT_INVALID)
> > -				result =3D calloc(1, sizeof(*result));
> > -
> > -			if (result) {
> > -				snprintf(result->test_name, sizeof(result->test_name),
> > -					 "%s-%s", r->suite_name, r->case_name);
> > -
> > -				if (code =3D=3D IGT_EXIT_SUCCESS)
> > -					result->passed =3D true;
> > -			}
> > -
> > -			igt_list_del(&r->link);
> > -			if (r->suite_name !=3D suite_name) {
> > -				free(suite_name);
> > -				suite_name =3D r->suite_name;
> > -			}
> > -			if (r->case_name !=3D case_name) {
> > -				free(case_name);
> > -				case_name =3D r->case_name;
> > -			}
> > -			free(r->msg);
> > -			free(r);
> > -
> > -			/*
> > -			 * no extra result record expected on start
> > -			 * of parametrized test case -- skip it
> > -			 */
> > -			if (code =3D=3D IGT_EXIT_INVALID)
> > -				continue;
> > -
> > -			if (!result) {
> > -				err =3D -ENOMEM;
> > -				goto igt_ktap_parser_end;
> > -			}
> > -
> > -			pthread_mutex_lock(&results.mutex);
> > -			igt_list_add_tail(&result->link, &results.list);
> > -			pthread_mutex_unlock(&results.mutex);
> > -		}
> > -
> > -		/* end of KTAP report */
> > -		if (!err)
> > -			goto igt_ktap_parser_end;
> > -	}
> > -
> > -	if (err < 0) {
> > -		if (errno =3D=3D EPIPE)
> > -			igt_warn("kmsg truncated: too many messages. You may want to increa=
se log_buf_len in kmcdline\n");
> > -		else
> > -			igt_warn("error reading kmsg (%m)\n");
> > -	}
> > -
> > -igt_ktap_parser_end:
> > -	free(suite_name);
> > -	free(case_name);
> > -
> > -	if (!err)
> > -		ktap_args.ret =3D IGT_EXIT_SUCCESS;
> > -
> > -	results.still_running =3D false;
> > -
> > -	if (ktap)
> > -		igt_ktap_free(ktap);
> > -
> > -	return NULL;
> > -}
> > -
> > -static pthread_t ktap_parser_thread;
> > -
> > -struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
> > -{
> > -	IGT_INIT_LIST_HEAD(&results.list);
> > -	pthread_mutex_init(&results.mutex, NULL);
> > -	results.still_running =3D true;
> > -
> > -	ktap_args.fd =3D fd;
> > -	ktap_args.is_builtin =3D is_builtin;
> > -	ktap_args.ret =3D IGT_EXIT_FAILURE;
> > -	pthread_create(&ktap_parser_thread, NULL, igt_ktap_parser, NULL);
> > -
> > -	return &results;
> > -}
> > -
> > -void ktap_parser_cancel(void)
> > -{
> > -	pthread_cancel(ktap_parser_thread);
> > -}
> > -
> > -int ktap_parser_stop(void)
> > -{
> > -	pthread_join(ktap_parser_thread, NULL);
> > -	return ktap_args.ret;
> > -}
> > diff --git a/lib/igt_ktap.h b/lib/igt_ktap.h
> > index 6f8da3eab6..c422636bfc 100644
> > --- a/lib/igt_ktap.h
> > +++ b/lib/igt_ktap.h
> > @@ -27,8 +27,6 @@
> > =20
> >  #define BUF_LEN 4096
> > =20
> > -#include <pthread.h>
> > -
> >  #include "igt_list.h"
> > =20
> >  struct igt_ktap_result {
> > @@ -45,24 +43,4 @@ struct igt_ktap_results *igt_ktap_alloc(struct igt_l=
ist_head *results);
> >  int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap);
> >  void igt_ktap_free(struct igt_ktap_results *ktap);
> > =20
> > -void *igt_ktap_parser(void *unused);
> > -
> > -typedef struct ktap_test_results_element {
> > -	char test_name[BUF_LEN + 1];
> > -	bool passed;
> > -	struct igt_list_head link;
> > -} ktap_test_results_element;
> > -
> > -struct ktap_test_results {
> > -	struct igt_list_head list;
> > -	pthread_mutex_t mutex;
> > -	bool still_running;
> > -};
> > -
> > -
> > -
> > -struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin);
> > -void ktap_parser_cancel(void);
> > -int ktap_parser_stop(void);
> > -
> >  #endif /* IGT_KTAP_H */
>=20




