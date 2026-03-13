Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMGzA2RkwWmaSgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 767CF2F763F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 17:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC00D10E514;
	Mon, 23 Mar 2026 16:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=permerror (0-bit key) header.d=gmail.com header.i=@gmail.com header.b="imsx2qSd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2980A10EC00
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 13:23:39 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id
 5614622812f47-467161c4a1cso841591b6e.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2026 06:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773408218; x=1774013018; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+SnZ0lMlFR/eDwLoN2XrBemykJ/zr01c3NEwcnjvW9Y=;
 b=imsx2qSddA5yQ/4jywePgu9aJWpm/joS+9+hBPQK7lJN3NydDHu6yldsJy0yQwa8LS
 3V6zBC+BMQKxe+UFL8RtTQ5G9Mbu7lZyzlvtFCNcASw1Eu+HZgmc8TcUk338mVL3dElH
 75YpGQQeSkP6q8vy7kscYj1ZL6Eu5DXGEmjnaP5Ntixu5Bdsw1GaL2eZ+j40QoludBSG
 wBzBGQ/lFDHALNZ5bBlgcu5MfyIikEp48VT97UQfUCfa1o2nGawcLKu3Q1ZO5xBnYUG7
 UsLNl2xhm5eFplyPsEYyKwwUZOjg3lerJBsqF3MRVzyTSZYjBFkiyWK6rpa4oJyJ+f9c
 iqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773408218; x=1774013018;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=+SnZ0lMlFR/eDwLoN2XrBemykJ/zr01c3NEwcnjvW9Y=;
 b=gmx7w4A7tN4kUf6l3kEkZSuzF+OOZNPo8l3pyd1QqBMIeWeb42dVls2EqQcI1NKg/4
 anFluiveqERN+nrvnZfmfCzXV06FRX6lbnvo5pgRACTArzBskC6aKoEcZx5sb10742Rl
 zMeU/VvR52T8BbxJhY3E9ZClEpcuq6yzP/X/HyOCAtMZF6e/vToqJtOjHAIhu/ow4CLJ
 +CHHTYBJRgBB/Os22XPL7thrsLS+reCQY90Q2tz82ChfnmTdbSDfP/idTeTLI3mGc5V3
 pTYhldrdOR1ivGR7uLQfdgD3JDN577Hf8QjMtImdp7naZmY6yQpxKnFsyFo8zduE0DjT
 3+ew==
X-Forwarded-Encrypted: i=1;
 AJvYcCXuairIKBoTE+OKAldbZNIJAdGpcy52zsAUM9VIT/BOC8FGBKwz2SP1jd2MXdpPyafw3M9ffm5N0OQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yynv6nI8qAKb10XB4J1rmdeYz+d96MG80wIeQzSOGXqfKeCwIjJ
 s/DZCKPnYXP1HIuWW2NNHIdV0APCD5KoP80cNTS/eVmUPw+COqYwTXUL
X-Gm-Gg: ATEYQzwBCBh6n79sE6ONp9XoUJXylnBQF7H/IVHf6rmvEnW0qo2cIiGlQ0fEjB9/HUx
 0F+olT7rqW8eB2k6DQprUfUS86UZx9NLxhoh36QS6KiaKXZQpsdrs2zSBeQKggmdg507uJ9tc8q
 ZTgF2EnltUJDYgtMVyv/OY2Rp5UNKCadfoslGL++3AW8lTHYZTI9lIQy/4SFZ3E9ExNBaeb9IcP
 bGBCFOADAOCb+M+2aFWKzVlA30DmjZGiWFZPAzNuckLjaI3PUtsiyq1tYkxEZbQS8TuQPh8ddyO
 s8h7Q+XnRQSDTwUXBk1S/uFddgB5MYpc+j2PkL7sjRtZGZ+nvaxayckz2b4S4qDIOp6j+l7w+R1
 muiDox+IYmdP6EpOyebiKOGo+1bKTn4f24CBGBiJN/vPJCWCxH0+McQKMZWUISwaG3H+8R6Nw8f
 vCZiseoe9EbppY/54D1ZCx2b3PC5Z4/VtK6uoIj4R+s8A1GNjo
X-Received: by 2002:a05:6808:1508:b0:450:5e3a:6f20 with SMTP id
 5614622812f47-467570a474fmr1594354b6e.10.1773408218179; 
 Fri, 13 Mar 2026 06:23:38 -0700 (PDT)
Received: from frodo (c-98-38-17-99.hsd1.co.comcast.net. [98.38.17.99])
 by smtp.googlemail.com with ESMTPSA id
 5614622812f47-4673434a35csm4795987b6e.20.2026.03.13.06.23.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2026 06:23:37 -0700 (PDT)
From: Jim Cromie <jim.cromie@gmail.com>
To: airlied@gmail.com, simona@ffwll.ch, jbaron@akamai.com,
 gregkh@linuxfoundation.org, Shuah Khan <shuah@kernel.org>,
 Jim Cromie <jim.cromie@gmail.com>, linux-kernel@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Cc: mripard@kernel.org, tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 christian.koenig@amd.com, matthew.auld@intel.com,
 arunpravin.paneerselvam@amd.com, louis.chauvet@bootlin.com,
 skhan@linuxfoundation.org, pmladek@suse.com, ukaszb@chromium.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [PATCH v11 20/65] selftests-dyndbg: add a dynamic_debug run_tests
 target
Date: Fri, 13 Mar 2026 07:19:45 -0600
Message-ID: <20260313132103.2529746-21-jim.cromie@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260313132103.2529746-1-jim.cromie@gmail.com>
References: <20260313132103.2529746-1-jim.cromie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 23 Mar 2026 16:03:24 +0000
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
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[242];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona@ffwll.ch,m:jbaron@akamai.com,m:gregkh@linuxfoundation.org,m:shuah@kernel.org,m:jim.cromie@gmail.com,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:mripard@kernel.org,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,m:christian.koenig@amd.com,m:matthew.auld@intel.com,m:arunpravin.paneerselvam@amd.com,m:louis.chauvet@bootlin.com,m:skhan@linuxfoundation.org,m:pmladek@suse.com,m:ukaszb@chromium.org,m:dri-devel@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,m:jimcromie@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch,akamai.com,linuxfoundation.org,kernel.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jimcromie@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gandalf:email,dyndbg_selftest.sh:url]
X-Rspamd-Queue-Id: 767CF2F763F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add a selftest script for dynamic-debug.  The config requires
CONFIG_TEST_DYNAMIC_DEBUG=m and CONFIG_TEST_DYNAMIC_DEBUG_SUBMOD=m,
which tacitly requires either CONFIG_DYNAMIC_DEBUG=y or
CONFIG_DYNAMIC_DEBUG_CORE=y

ATM this has just basic_tests(), which modify pr_debug() flags in the
builtin params module.  This means they're available to manipulate and
observe the effects in "cat control".

This is backported from another feature branch; the support-fns (thx
Lukas) have unused features at the moment, they'll get used shortly.

The script enables simple virtme-ng testing:

   [jimc@gandalf b0-ftrace]$ vrun_t
   virtme-ng 1.32+115.g07b109d
   doing: vng --name v6.14-rc4-60-gd5f48427de0c \
	  --user root -v -p 4 -a dynamic_debug.verbose=3 V=1 \
	  -- ../tools/testing/selftests/dynamic_debug/dyndbg_selftest.sh
   virtme: waiting for virtiofsd to start
   ..

And add dynamic_debug to TARGETS, so `make run_tests` sees it properly
For the impatient, set TARGETS explicitly:

  [root@v6 selftests]# make TARGETS=dynamic_debug run_tests
  make[1]: Nothing to be done for 'all'.
  TAP version 13
  1..1
  # timeout set to 45
  # selftests: dynamic_debug: dyndbg_selftest.sh
  # # BASIC_TESTS    95.422122] dyndbg: query 0: 0"=_" mod:*
  ...

NOTES

check KCONFIG_CONFIG to avoid silly fails

Several tests are dependent upon config choices. Lets avoid failing
where that is noise.

The KCONFIG_CONFIG var exists to convey the config-file around.  If
the var names a file, read it and extract the relevant CONFIG items,
and use them to skip the dependent tests, thus avoiding the fails that
would follow, and the disruption to whatever CI is running these
selftests.

If the envar doesn't name a config-file, ".config" is assumed.

CONFIG_DYNAMIC_DEBUG=y:

basic-tests() and comma-terminator-tests() test for the presence of
the builtin pr_debugs in module/main.c, which I deemed stable and
therefore safe to count.  That said, the test fails if only
CONFIG_DYNAMIC_DEBUG_CORE=y is set.  It could be rewritten to test
against test-dynamic-debug.ko, but that just trades one config
dependence for another.

CONFIG_TEST_DYNAMIC_DEBUG=m

As written, test_percent_splitting() modprobes test_dynamic_debug,
enables several classes, and counts them.  It could be re-written to
work for the builtin module also, but builtin test modules are not a
common or desirable build/config.

Co-developed-by: Łukasz Bartosik <ukaszb@chromium.org>
Signed-off-by: Łukasz Bartosik <ukaszb@chromium.org>
Signed-off-by: Jim Cromie <jim.cromie@gmail.com>
---
 MAINTAINERS                                   |   1 +
 tools/testing/selftests/Makefile              |   1 +
 .../testing/selftests/dynamic_debug/Makefile  |   9 +
 tools/testing/selftests/dynamic_debug/config  |   7 +
 .../dynamic_debug/dyndbg_selftest.sh          | 257 ++++++++++++++++++
 5 files changed, 275 insertions(+)
 create mode 100644 tools/testing/selftests/dynamic_debug/Makefile
 create mode 100644 tools/testing/selftests/dynamic_debug/config
 create mode 100755 tools/testing/selftests/dynamic_debug/dyndbg_selftest.sh

diff --git a/MAINTAINERS b/MAINTAINERS
index 35c1edb67551..af1d3f246962 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9047,6 +9047,7 @@ S:	Maintained
 F:	include/linux/dynamic_debug.h
 F:	lib/dynamic_debug.c
 F:	lib/test_dynamic_debug.c
+F:	tools/testing/selftests/dynamic_debug/*
 
 DYNAMIC INTERRUPT MODERATION
 M:	Tal Gilboa <talgi@nvidia.com>
diff --git a/tools/testing/selftests/Makefile b/tools/testing/selftests/Makefile
index 450f13ba4cca..e4fc4dd80cf9 100644
--- a/tools/testing/selftests/Makefile
+++ b/tools/testing/selftests/Makefile
@@ -27,6 +27,7 @@ TARGETS += drivers/net/team
 TARGETS += drivers/net/virtio_net
 TARGETS += drivers/platform/x86/intel/ifs
 TARGETS += dt
+TARGETS += dynamic_debug
 TARGETS += efivarfs
 TARGETS += exec
 TARGETS += fchmodat2
diff --git a/tools/testing/selftests/dynamic_debug/Makefile b/tools/testing/selftests/dynamic_debug/Makefile
new file mode 100644
index 000000000000..6d06fa7f1040
--- /dev/null
+++ b/tools/testing/selftests/dynamic_debug/Makefile
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# borrowed from Makefile for user memory selftests
+
+# No binaries, but make sure arg-less "make" doesn't trigger "run_tests"
+all:
+
+TEST_PROGS := dyndbg_selftest.sh
+
+include ../lib.mk
diff --git a/tools/testing/selftests/dynamic_debug/config b/tools/testing/selftests/dynamic_debug/config
new file mode 100644
index 000000000000..0f906ff53908
--- /dev/null
+++ b/tools/testing/selftests/dynamic_debug/config
@@ -0,0 +1,7 @@
+
+# basic tests ref the builtin params module
+CONFIG_DYNAMIC_DEBUG=m
+
+# more testing is possible with these
+# CONFIG_TEST_DYNAMIC_DEBUG=m
+# CONFIG_TEST_DYNAMIC_DEBUG_SUBMOD=m
diff --git a/tools/testing/selftests/dynamic_debug/dyndbg_selftest.sh b/tools/testing/selftests/dynamic_debug/dyndbg_selftest.sh
new file mode 100755
index 000000000000..465fad3f392c
--- /dev/null
+++ b/tools/testing/selftests/dynamic_debug/dyndbg_selftest.sh
@@ -0,0 +1,257 @@
+#!/bin/bash
+# SPDX-License-Identifier: GPL-2.0-only
+
+V=${V:=0}  # invoke as V=1 $0  for global verbose
+RED="\033[0;31m"
+GREEN="\033[0;32m"
+YELLOW="\033[0;33m"
+BLUE="\033[0;34m"
+MAGENTA="\033[0;35m"
+CYAN="\033[0;36m"
+NC="\033[0;0m"
+error_msg=""
+
+[ -e /proc/dynamic_debug/control ] || {
+    echo -e "${RED}: this test requires CONFIG_DYNAMIC_DEBUG=y ${NC}"
+    exit 0 # nothing to test here, no good reason to fail.
+}
+
+# need info to avoid failures due to untestable configs
+
+[ -f "$KCONFIG_CONFIG" ] || KCONFIG_CONFIG=".config"
+if [ -f "$KCONFIG_CONFIG" ]; then
+    echo "# consulting KCONFIG_CONFIG: $KCONFIG_CONFIG"
+    grep -q "CONFIG_DYNAMIC_DEBUG=y" $KCONFIG_CONFIG ; LACK_DD_BUILTIN=$?
+    grep -q "CONFIG_TEST_DYNAMIC_DEBUG=m" $KCONFIG_CONFIG ; LACK_TMOD=$?
+    grep -q "CONFIG_TEST_DYNAMIC_DEBUG_SUBMOD=m" $KCONFIG_CONFIG ; LACK_TMOD_SUBMOD=$?
+    if [ $V -eq 1 ]; then
+	echo LACK_DD_BUILTIN: $LACK_DD_BUILTIN
+	echo LACK_TMOD: $LACK_TMOD
+	echo LACK_TMOD_SUBMOD: $LACK_TMOD_SUBMOD
+    fi
+else
+    LACK_DD_BUILTIN=0
+    LACK_TMOD=0
+    LACK_TMOD_SUBMOD=0
+fi
+
+function vx () {
+    echo $1 > /sys/module/dynamic_debug/parameters/verbose
+}
+
+function ddgrep () {
+    grep $1 /proc/dynamic_debug/control
+}
+
+function doprints () {
+    cat /sys/module/test_dynamic_debug/parameters/do_prints
+}
+
+function ddcmd () {
+    exp_exit_code=0
+    num_args=$#
+    if [ "${@:$#}" = "pass" ]; then
+	num_args=$#-1
+    elif [ "${@:$#}" = "fail" ]; then
+        num_args=$#-1
+	exp_exit_code=1
+    fi
+    args=${@:1:$num_args}
+    output=$((echo "$args" > /proc/dynamic_debug/control) 2>&1)
+    exit_code=$?
+    error_msg=$(echo $output | cut -d ":" -f 5 | sed -e 's/^[[:space:]]*//')
+    handle_exit_code $BASH_LINENO $FUNCNAME $exit_code $exp_exit_code
+}
+
+function handle_exit_code() {
+    local exp_exit_code=0
+    [ $# == 4 ] && exp_exit_code=$4
+    if [ $3 -ne $exp_exit_code ]; then
+        echo -e "${RED}: $BASH_SOURCE:$1 $2() expected to exit with code $exp_exit_code"
+	[ $3 == 1 ] && echo "Error: '$error_msg'"
+        exit
+    fi
+}
+
+# $1 - pattern to match, pattern in $1 is enclosed by spaces for a match ""\s$1\s"
+# $2 - number of times the pattern passed in $1 is expected to match
+# $3 - optional can be set either to "-r" or "-v"
+#       "-r" means relaxed matching in this case pattern provided in $1 is passed
+#       as is without enclosing it with spaces
+#       "-v" prints matching lines
+# $4 - optional when $3 is set to "-r" then $4 can be used to pass "-v"
+function check_match_ct {
+    pattern="\s$1\s"
+    exp_cnt=0
+
+    [ "$3" == "-r" ] && pattern="$1"
+    let cnt=$(ddgrep "$pattern" | wc -l)
+    if [ $V -eq 1 ] || [ "$3" == "-v" ] || [ "$4" == "-v" ]; then
+        echo -ne "${BLUE}" && ddgrep $pattern && echo -ne "${NC}"
+    fi
+    [ $# -gt 1 ] && exp_cnt=$2
+    if [ $cnt -ne $exp_cnt ]; then
+        echo -e "${RED}: $BASH_SOURCE:$BASH_LINENO check failed expected $exp_cnt on $1, got $cnt"
+        exit
+    else
+        echo ": $cnt matches on $1"
+    fi
+}
+
+# $1 - trace instance name
+# #2 - if > 0 then directory is expected to exist, if <= 0 then otherwise
+# $3 - "-v" for verbose
+function check_trace_instance_dir {
+    if [ -e /sys/kernel/tracing/instances/$1 ]; then
+        if [ "$3" == "-v" ] ; then
+            echo "ls -l /sys/kernel/tracing/instances/$1: "
+            ls -l /sys/kernel/tracing/instances/$1
+        fi
+	if [ $2 -le 0 ]; then
+            echo -e "${RED}: $BASH_SOURCE:$BASH_LINENO error trace instance \
+		    '/sys/kernel/tracing/instances/$1' does exist"
+	    exit
+	fi
+    else
+	if [ $2 -gt 0 ]; then
+            echo -e "${RED}: $BASH_SOURCE:$BASH_LINENO error trace instance \
+		    '/sys/kernel/tracing/instances/$1' does not exist"
+	    exit
+        fi
+    fi
+}
+
+function tmark {
+    echo $* > /sys/kernel/tracing/trace_marker
+}
+
+# $1 - trace instance name
+# $2 - line number
+# $3 - if > 0 then the instance is expected to be opened, otherwise
+# the instance is expected to be closed
+function check_trace_instance {
+    output=$(tail -n9 /proc/dynamic_debug/control | grep ": Opened trace instances" \
+	    | xargs -n1 | grep $1)
+    if [ "$output" != $1 ] && [ $3 -gt 0 ]; then
+        echo -e "${RED}: $BASH_SOURCE:$2 trace instance $1 is not opened"
+        exit
+    fi
+    if [ "$output" == $1 ] && [ $3 -le 0 ]; then
+        echo -e "${RED}: $BASH_SOURCE:$2 trace instance $1 is not closed"
+        exit
+    fi
+}
+
+function is_trace_instance_opened {
+    check_trace_instance $1 $BASH_LINENO 1
+}
+
+function is_trace_instance_closed {
+    check_trace_instance $1 $BASH_LINENO 0
+}
+
+# $1 - trace instance directory to delete
+# $2 - if > 0 then directory is expected to be deleted successfully, if <= 0 then otherwise
+function del_trace_instance_dir() {
+    exp_exit_code=1
+    [ $2 -gt 0 ] && exp_exit_code=0
+    output=$((rmdir /sys/kernel/debug/tracing/instances/$1) 2>&1)
+    exit_code=$?
+    error_msg=$(echo $output | cut -d ":" -f 3 | sed -e 's/^[[:space:]]*//')
+    handle_exit_code $BASH_LINENO $FUNCNAME $exit_code $exp_exit_code
+}
+
+function error_log_ref {
+    # to show what I got
+    : echo "# error-log-ref: $1"
+    : echo cat \$2
+}
+
+function ifrmmod {
+    lsmod | grep $1 2>&1>/dev/null && rmmod $1
+}
+
+# $1 - text to search for
+function search_trace() {
+    search_trace_name 0 1 $1
+}
+
+# $1 - trace instance name, 0 for global event trace
+# $2 - line number counting from the bottom
+# $3 - text to search for
+function search_trace_name() {
+	if [ "$1" = "0" ]; then
+	    buf=$(cat /sys/kernel/debug/tracing/trace)
+	    line=$(tail -$2 /sys/kernel/debug/tracing/trace | head -1 | sed -e 's/^[[:space:]]*//')
+	else
+	    buf=$(cat /sys/kernel/debug/tracing/instances/$1/trace)
+	    line=$(tail -$2 /sys/kernel/debug/tracing/instances/$1/trace | head -1 | \
+		   sed -e 's/^[[:space:]]*//')
+	fi
+	if [ $2 = 0 ]; then
+	    # whole-buf check
+	    output=$(echo $buf | grep "$3")
+	else
+	    output=$(echo $line | grep "$3")
+	fi
+	if [ "$output" = "" ]; then
+            echo -e "${RED}: $BASH_SOURCE:$BASH_LINENO search for '$3' failed \
+		    in line '$line' or '$buf'"
+	    exit
+	fi
+	if [ $V = 1 ]; then
+	    echo -e "${MAGENTA}: search_trace_name in $1 found: \n$output \nin:${BLUE} $buf ${NC}"
+        fi
+}
+
+# $1 - error message to check
+function check_err_msg() {
+    if [ "$error_msg" != "$1" ]; then
+        echo -e "${RED}: $BASH_SOURCE:$BASH_LINENO error message '$error_msg' \
+		does not match with '$1'"
+        exit
+    fi
+}
+
+function basic_tests {
+    echo -e "${GREEN}# BASIC_TESTS ${NC}"
+    if [ $LACK_DD_BUILTIN -eq 1 ]; then
+	echo "SKIP"
+	return
+    fi
+    ddcmd =_ # zero everything
+    check_match_ct =p 0
+
+    # module params are builtin to handle boot args
+    check_match_ct '\[params\]' 4 -r
+    ddcmd module params +mpf
+    check_match_ct =pmf 4
+
+    # multi-cmd input, newline separated, with embedded comments
+    cat <<"EOF" > /proc/dynamic_debug/control
+      module params =_				# clear params
+      module params +mf				# set flags
+      module params func parse_args +sl		# other flags
+EOF
+    check_match_ct =mf 3
+    check_match_ct =mfsl 1
+    ddcmd =_
+}
+
+tests_list=(
+    basic_tests
+)
+
+# Run tests
+
+ifrmmod test_dynamic_debug_submod
+ifrmmod test_dynamic_debug
+
+for test in "${tests_list[@]}"
+do
+    $test
+    echo ""
+done
+echo -en "${GREEN}# Done on: "
+date
+echo -en "${NC}"
-- 
2.53.0

