Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 659DB7A1C5F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 12:36:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952FF10E61D;
	Fri, 15 Sep 2023 10:36:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FF4710E60E;
 Fri, 15 Sep 2023 10:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694774169; x=1726310169;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bBHWr4tqgCLk4o6tJIVZsZrUfgRQ/FayZXHNvdgAP9E=;
 b=XuTXuyGaXif7GiVkPKZG3ZGTVaA5z3+H39VTJJfnjv2ZuQN4UcMlA8w1
 XaJCBkI1kpmHyunLZzrQ8AJy7h5oFeHNNpxwcUr1G+K0867ILU3RLKGCA
 UdOs3fQIwmPj63JbHIg2zyGv1MQEcBJkCO9zgaH/aiAQtm6faaiGlrDFT
 ducAgH8L4UkEvYA9Tr9uKFH/ZehCBUtOBt8TsoK4/7atRHi1xsTGU4V+m
 rFw5bZ/mqFe2S/jexV0bOFNtfwh/8FccEk/7ywJLZsVQakgaLR7zkBIBx
 RTMIMAHV41NfcHNwaT2VQp6OPd2gzBOYCznwcgv+BZZ8UFSO/Su3zolNa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="379136773"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="379136773"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 03:36:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="1075753884"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="1075753884"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 03:36:08 -0700
Received: from maurocar-mobl2 (unknown [10.252.9.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id C4AEA580DC7;
 Fri, 15 Sep 2023 03:36:06 -0700 (PDT)
Date: Fri, 15 Sep 2023 12:36:04 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230915123604.7478e37c@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-20-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-20-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 01/17] lib/kunit: Drop
 unused file stream
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

On Fri,  8 Sep 2023 14:32:35 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> In the process of reviewing patches that introduced kunit support, I asked
> once if we could use line buffered input instead of explicitly looking for
> newlines in KTAP data.  While my idea was wrong because reading raw data
> from /dev/kmsg already returns full log records that always end with a
> newline, conversion of /dev/kmsg file descriptor to a file stream with
> freopen() was added to the code.  However, that file stream has never been
> used for line buffered input.  While the file stream is passed to
> functions that actually read the data, there it is converted back to a
> file descriptor with fileno() and the data is read with read().
> 
> Drop the unnecessary conversions and teach functions to accept and process
> just the file descriptor of /dev/kmsg.

LGTM.

Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c | 12 +---------
>  lib/igt_ktap.c | 62 +++++++++++++++++++++++---------------------------
>  lib/igt_ktap.h |  2 +-
>  3 files changed, 31 insertions(+), 45 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 6205871791..97667a896f 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -758,7 +758,6 @@ static void __igt_kunit(const char *module_name, const char *opts)
>  {
>  	struct igt_ktest tst;
>  	struct kmod_module *kunit_kmod;
> -	FILE *f;
>  	bool is_builtin;
>  	int ret;
>  	struct ktap_test_results *results;
> @@ -774,7 +773,6 @@ static void __igt_kunit(const char *module_name, const char *opts)
>  
>  	if (igt_ktest_begin(&tst) != 0) {
>  		igt_warn("Unable to begin ktest for %s\n", module_name);
> -
>  		igt_ktest_fini(&tst);
>  		igt_fail(IGT_EXIT_ABORT);
>  	}
> @@ -791,14 +789,6 @@ static void __igt_kunit(const char *module_name, const char *opts)
>  		goto unload;
>  	}
>  
> -	f = fdopen(tst.kmsg, "r");
> -
> -	if (f == NULL) {
> -		igt_warn("Could not turn /dev/kmsg file descriptor into a FILE pointer\n");
> -		fail = true;
> -		goto unload;
> -	}
> -
>  	/* The KUnit module is required for running any KUnit tests */
>  	ret = igt_kmod_load("kunit", NULL);
>  	if (ret) {
> @@ -814,7 +804,7 @@ static void __igt_kunit(const char *module_name, const char *opts)
>  
>  	is_builtin = kmod_module_get_initstate(kunit_kmod) == KMOD_MODULE_BUILTIN;
>  
> -	results = ktap_parser_start(f, is_builtin);
> +	results = ktap_parser_start(tst.kmsg, is_builtin);
>  
>  	ret = igt_kmod_load(module_name, opts);
>  	if (ret) {
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index ecdcb8d83d..123a40d183 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -16,7 +16,7 @@
>  #define DELIMITER "-"
>  
>  struct ktap_parser_args {
> -	FILE *fp;
> +	int fd;
>  	bool is_builtin;
>  	volatile bool is_running;
>  	int ret;
> @@ -24,7 +24,7 @@ struct ktap_parser_args {
>  
>  static struct ktap_test_results results;
>  
> -static int log_to_end(enum igt_log_level level, FILE *f,
> +static int log_to_end(enum igt_log_level level, int fd,
>  		      char *record, const char *format, ...) __attribute__((format(printf, 4, 5)));
>  
>  /**
> @@ -39,12 +39,11 @@ static int log_to_end(enum igt_log_level level, FILE *f,
>   *
>   * Returns: 0 for success, or -2 if there's an error reading from the file
>   */
> -static int log_to_end(enum igt_log_level level, FILE *f,
> +static int log_to_end(enum igt_log_level level, int fd,
>  		      char *record, const char *format, ...)
>  {
>  	va_list args;
>  	const char *lend;
> -	int f_fd = fileno(f);
>  
>  	/* Cutoff after newline character, in order to not display garbage */
>  	char *cutoff = strchr(record, '\n');
> @@ -61,7 +60,7 @@ static int log_to_end(enum igt_log_level level, FILE *f,
>  	while (*lend == '\0') {
>  		igt_log(IGT_LOG_DOMAIN, level, "%s", record);
>  
> -		while (read(f_fd, record, BUF_LEN) < 0) {
> +		while (read(fd, record, BUF_LEN) < 0) {
>  			if (!READ_ONCE(ktap_args.is_running)) {
>  				igt_warn("ktap parser stopped\n");
>  				return -2;
> @@ -157,8 +156,8 @@ static int tap_version_present(char* record, bool print_info)
>  
>  /**
>   * find_next_tap_subtest:
> - * @fp: FILE pointer
> - * @record: buffer used to read fp
> + * @fd: file descriptor
> + * @record: buffer used to read fd
>   * @is_builtin: whether KUnit is built-in or not
>   *
>   * Returns:
> @@ -167,11 +166,10 @@ static int tap_version_present(char* record, bool print_info)
>   * -2 if there are problems while reading the file.
>   * any other value corresponds to the amount of cases of the next (sub)test
>   */
> -static int find_next_tap_subtest(FILE *fp, char *record, char *test_name, bool is_builtin)
> +static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_builtin)
>  {
>  	const char *test_lookup_str, *subtest_lookup_str, *name_rptr;
>  	long test_count;
> -	int fp_fd = fileno(fp);
>  	char *cutoff;
>  
>  	test_name[0] = '\0';
> @@ -184,7 +182,7 @@ static int find_next_tap_subtest(FILE *fp, char *record, char *test_name, bool i
>  		return -1;
>  
>  	if (is_builtin) {
> -		while (read(fp_fd, record, BUF_LEN) < 0) {
> +		while (read(fd, record, BUF_LEN) < 0) {
>  			if (!READ_ONCE(ktap_args.is_running)) {
>  				igt_warn("ktap parser stopped\n");
>  				return -2;
> @@ -228,7 +226,7 @@ static int find_next_tap_subtest(FILE *fp, char *record, char *test_name, bool i
>  		if (cutoff)
>  			cutoff[0] = '\0';
>  
> -		while (read(fp_fd, record, BUF_LEN) < 0) {
> +		while (read(fd, record, BUF_LEN) < 0) {
>  			if (!READ_ONCE(ktap_args.is_running)) {
>  				igt_warn("ktap parser stopped\n");
>  				return -2;
> @@ -265,7 +263,7 @@ static int find_next_tap_subtest(FILE *fp, char *record, char *test_name, bool i
>  		igt_info("Missing test count\n");
>  		if (test_name[0] == '\0')
>  			return 0;
> -		if (log_to_end(IGT_LOG_INFO, fp, record,
> +		if (log_to_end(IGT_LOG_INFO, fd, record,
>  				"Running some tests in: %s\n",
>  				test_name) < 0)
>  			return -2;
> @@ -275,7 +273,7 @@ static int find_next_tap_subtest(FILE *fp, char *record, char *test_name, bool i
>  		return 0;
>  	}
>  
> -	if (log_to_end(IGT_LOG_INFO, fp, record,
> +	if (log_to_end(IGT_LOG_INFO, fd, record,
>  			"Executing %ld tests in: %s\n",
>  			test_count, test_name) < 0)
>  		return -2;
> @@ -285,8 +283,8 @@ static int find_next_tap_subtest(FILE *fp, char *record, char *test_name, bool i
>  
>  /**
>   * parse_kmsg_for_tap:
> - * @fp: FILE pointer
> - * @record: buffer used to read fp
> + * @fd: file descriptor
> + * @record: buffer used to read fd
>   * @test_name: buffer to store the test name
>   *
>   * Returns:
> @@ -295,7 +293,7 @@ static int find_next_tap_subtest(FILE *fp, char *record, char *test_name, bool i
>   * -1 if a test failed
>   * -2 if there are problems reading the file
>   */
> -static int parse_kmsg_for_tap(FILE *fp, char *record, char *test_name)
> +static int parse_kmsg_for_tap(int fd, char *record, char *test_name)
>  {
>  	const char *lstart, *ok_lookup_str, *nok_lookup_str,
>  	      *ok_rptr, *nok_rptr, *comment_start, *value_parse_start;
> @@ -324,7 +322,7 @@ static int parse_kmsg_for_tap(FILE *fp, char *record, char *test_name)
>  		while (!isspace(*test_name_end))
>  			test_name_end++;
>  		*test_name_end = '\0';
> -		if (log_to_end(IGT_LOG_WARN, fp, record,
> +		if (log_to_end(IGT_LOG_WARN, fd, record,
>  			       "%s", lstart) < 0)
>  			return -2;
>  		return -1;
> @@ -338,7 +336,7 @@ static int parse_kmsg_for_tap(FILE *fp, char *record, char *test_name)
>  		value_parse_start = comment_start;
>  
>  		if (lookup_value(value_parse_start, "fail: ") > 0) {
> -			if (log_to_end(IGT_LOG_WARN, fp, record,
> +			if (log_to_end(IGT_LOG_WARN, fd, record,
>  				       "%s", lstart) < 0)
>  				return -2;
>  			return -1;
> @@ -362,7 +360,7 @@ static int parse_kmsg_for_tap(FILE *fp, char *record, char *test_name)
>  
>  /**
>   * parse_tap_level:
> - * @fp: FILE pointer
> + * @fd: file descriptor
>   * @base_test_name: test_name from upper recursion level
>   * @test_count: test_count of this level
>   * @failed_tests: top level failed_tests pointer
> @@ -373,10 +371,9 @@ static int parse_kmsg_for_tap(FILE *fp, char *record, char *test_name)
>   * 0 if succeded
>   * -1 if error occurred
>   */
> -static int parse_tap_level(FILE *fp, char *base_test_name, int test_count, bool *failed_tests,
> +static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *failed_tests,
>  			   bool *found_tests, bool is_builtin)
>  {
> -	int fp_fd = fileno(fp);
>  	char record[BUF_LEN + 1];
>  	struct ktap_test_results_element *r, *temp;
>  	int internal_test_count;
> @@ -384,7 +381,7 @@ static int parse_tap_level(FILE *fp, char *base_test_name, int test_count, bool
>  	char base_test_name_for_next_level[BUF_LEN + 1];
>  
>  	for (int i = 0; i < test_count; i++) {
> -		while (read(fp_fd, record, BUF_LEN) < 0) {
> +		while (read(fd, record, BUF_LEN) < 0) {
>  			if (!READ_ONCE(ktap_args.is_running)) {
>  				igt_warn("ktap parser stopped\n");
>  				return -1;
> @@ -409,7 +406,7 @@ static int parse_tap_level(FILE *fp, char *base_test_name, int test_count, bool
>  		/* Sublevel found */
>  		if (tap_version_present(record, false))
>  		{
> -			internal_test_count = find_next_tap_subtest(fp, record, test_name,
> +			internal_test_count = find_next_tap_subtest(fd, record, test_name,
>  								    is_builtin);
>  			switch (internal_test_count) {
>  			case -2:
> @@ -433,7 +430,7 @@ static int parse_tap_level(FILE *fp, char *base_test_name, int test_count, bool
>  				memcpy(base_test_name_for_next_level + strlen(base_test_name_for_next_level),
>  				       test_name, BUF_LEN - strlen(base_test_name_for_next_level));
>  
> -				if (parse_tap_level(fp, base_test_name_for_next_level,
> +				if (parse_tap_level(fd, base_test_name_for_next_level,
>  						    internal_test_count, failed_tests, found_tests,
>  						    is_builtin) == -1)
>  					return -1;
> @@ -441,7 +438,7 @@ static int parse_tap_level(FILE *fp, char *base_test_name, int test_count, bool
>  			}
>  		}
>  
> -		switch (parse_kmsg_for_tap(fp, record, test_name)) {
> +		switch (parse_kmsg_for_tap(fd, record, test_name)) {
>  		case -2:
>  			return -1;
>  		case -1:
> @@ -516,8 +513,7 @@ static int parse_tap_level(FILE *fp, char *base_test_name, int test_count, bool
>   */
>  void *igt_ktap_parser(void *unused)
>  {
> -	FILE *fp = ktap_args.fp;
> -	int fp_fd = fileno(fp);
> +	int fd = ktap_args.fd;
>  	char record[BUF_LEN + 1];
>  	bool is_builtin = ktap_args.is_builtin;
>  	char test_name[BUF_LEN + 1];
> @@ -534,7 +530,7 @@ igt_ktap_parser_start:
>  	test_name[0] = '\0';
>  	test_name[BUF_LEN] = '\0';
>  
> -	while (read(fp_fd, record, BUF_LEN) < 0) {
> +	while (read(fd, record, BUF_LEN) < 0) {
>  		if (!READ_ONCE(ktap_args.is_running)) {
>  			igt_warn("ktap parser stopped\n");
>  			goto igt_ktap_parser_end;
> @@ -553,7 +549,7 @@ igt_ktap_parser_start:
>  		}
>  	}
>  
> -	test_count = find_next_tap_subtest(fp, record, test_name, is_builtin);
> +	test_count = find_next_tap_subtest(fd, record, test_name, is_builtin);
>  
>  	switch (test_count) {
>  	case -2:
> @@ -569,7 +565,7 @@ igt_ktap_parser_start:
>  	default:
>  		found_tests = true;
>  
> -		if (parse_tap_level(fp, test_name, test_count, &failed_tests, &found_tests,
> +		if (parse_tap_level(fd, test_name, test_count, &failed_tests, &found_tests,
>  				    is_builtin) == -1)
>  			goto igt_ktap_parser_end;
>  
> @@ -578,7 +574,7 @@ igt_ktap_parser_start:
>  
>  	/* Parse topmost level */
>  	test_name[0] = '\0';
> -	parse_tap_level(fp, test_name, test_count, &failed_tests, &found_tests, is_builtin);
> +	parse_tap_level(fd, test_name, test_count, &failed_tests, &found_tests, is_builtin);
>  
>  igt_ktap_parser_end:
>  	results.still_running = false;
> @@ -593,13 +589,13 @@ igt_ktap_parser_end:
>  
>  static pthread_t ktap_parser_thread;
>  
> -struct ktap_test_results *ktap_parser_start(FILE *fp, bool is_builtin)
> +struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
>  {
>  	results.head = NULL;
>  	pthread_mutex_init(&results.mutex, NULL);
>  	results.still_running = true;
>  
> -	ktap_args.fp = fp;
> +	ktap_args.fd = fd;
>  	ktap_args.is_builtin = is_builtin;
>  	ktap_args.is_running = true;
>  	pthread_create(&ktap_parser_thread, NULL, igt_ktap_parser, NULL);
> diff --git a/lib/igt_ktap.h b/lib/igt_ktap.h
> index 34fe095720..ea57c2bb9b 100644
> --- a/lib/igt_ktap.h
> +++ b/lib/igt_ktap.h
> @@ -44,7 +44,7 @@ struct ktap_test_results {
>  
>  
>  
> -struct ktap_test_results *ktap_parser_start(FILE *fp, bool is_builtin);
> +struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin);
>  int ktap_parser_stop(void);
>  
>  #endif /* IGT_KTAP_H */
