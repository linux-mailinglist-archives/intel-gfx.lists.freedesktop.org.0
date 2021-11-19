Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F74457235
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 16:55:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 012006ECF8;
	Fri, 19 Nov 2021 15:55:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76C346ECF3;
 Fri, 19 Nov 2021 15:55:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="214463533"
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="214463533"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 07:55:46 -0800
X-IronPort-AV: E=Sophos;i="5.87,248,1631602800"; d="scan'208";a="605590769"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.185])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 07:55:44 -0800
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1mo6Dq-0005Z4-T5; Fri, 19 Nov 2021 17:54:42 +0200
Date: Fri, 19 Nov 2021 17:54:42 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YZfIwtCEqbqs1dIz@platvala-desk.ger.corp.intel.com>
References: <20211119125945.55056-1-tvrtko.ursulin@linux.intel.com>
 <20211119125945.55056-3-tvrtko.ursulin@linux.intel.com>
 <YZesawet06wfQ1SG@platvala-desk.ger.corp.intel.com>
 <8b1bdb41-fe31-8482-655d-724a6937d2c7@linux.intel.com>
 <YZfFlI/cB2OyXZeE@platvala-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YZfFlI/cB2OyXZeE@platvala-desk.ger.corp.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/6] igt/core: Fix build
 warning
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 19, 2021 at 05:41:08PM +0200, Petri Latvala wrote:
> On Fri, Nov 19, 2021 at 03:34:54PM +0000, Tvrtko Ursulin wrote:
> > On 19/11/2021 13:53, Petri Latvala wrote:
> > > On Fri, Nov 19, 2021 at 12:59:42PM +0000, Tvrtko Ursulin wrote:
> > Okay I wasn't sufficiently focused while trying to fix this. No idea then
> > apart for playing with pragmas.


How's this:

diff --git a/lib/igt_core.c b/lib/igt_core.c
index ec05535c..6a4d0270 100644
--- a/lib/igt_core.c
+++ b/lib/igt_core.c
@@ -2727,6 +2727,8 @@ void igt_log(const char *domain, enum igt_log_level level, const char *format, .
 }
 
 static pthread_key_t __vlog_line_continuation;
+static const bool __dummy_true = true;
+static const bool __dummy_false = false;
 
 igt_constructor {
 	pthread_key_create(&__vlog_line_continuation, NULL);
@@ -2751,6 +2753,7 @@ void igt_vlog(const char *domain, enum igt_log_level level, const char *format,
 	FILE *file;
 	char *line, *formatted_line;
 	char *thread_id;
+	void *line_continuation;
 	const char *program_name;
 	const char *igt_log_level_str[] = {
 		"DEBUG",
@@ -2785,7 +2788,8 @@ void igt_vlog(const char *domain, enum igt_log_level level, const char *format,
 	if (vasprintf(&line, format, args) == -1)
 		return;
 
-	if (pthread_getspecific(__vlog_line_continuation)) {
+	line_continuation = pthread_getspecific(__vlog_line_continuation);
+	if (line_continuation != NULL && *(bool *)line_continuation) {
 		formatted_line = strdup(line);
 		if (!formatted_line)
 			goto out;
@@ -2796,9 +2800,9 @@ void igt_vlog(const char *domain, enum igt_log_level level, const char *format,
 	}
 
 	if (line[strlen(line) - 1] == '\n')
-		pthread_setspecific(__vlog_line_continuation, (void*) false);
+		pthread_setspecific(__vlog_line_continuation, &__dummy_false);
 	else
-		pthread_setspecific(__vlog_line_continuation, (void*) true);
+		pthread_setspecific(__vlog_line_continuation, &__dummy_true);
 
 	/* append log buffer */
 	_igt_log_buffer_append(formatted_line);
diff --git a/lib/igt_thread.c b/lib/igt_thread.c
index 5bdda410..0d7bce80 100644
--- a/lib/igt_thread.c
+++ b/lib/igt_thread.c
@@ -29,6 +29,7 @@
 #include "igt_thread.h"
 
 static pthread_key_t __igt_is_main_thread;
+static const bool __dummy_true = true;
 
 static _Atomic(bool) __thread_failed = false;
 
@@ -65,5 +66,5 @@ bool igt_thread_is_main(void)
 
 igt_constructor {
 	pthread_key_create(&__igt_is_main_thread, NULL);
-	pthread_setspecific(__igt_is_main_thread, (void*) 0x1);
+	pthread_setspecific(__igt_is_main_thread, &__dummy_true);
 }
