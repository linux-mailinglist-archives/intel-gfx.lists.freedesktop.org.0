Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cvUONRBwRWrkAAsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 21:52:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B0E6F11E0
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 21:52:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639DD10E23D;
	Wed,  1 Jul 2026 19:52:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B486610E20F;
 Wed,  1 Jul 2026 19:52:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_tracing=3A_Move_trace=5Fp?=
 =?utf-8?q?rintk=2Eh_out_of_kernel=2Eh?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Steven Rostedt" <rostedt@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 01 Jul 2026 19:52:44 -0000
Message-ID: <178293556473.139541.3524224686218654676@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260621093430.264983361@kernel.org>
In-Reply-To: <20260621093430.264983361@kernel.org>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[patchwork.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 04B0E6F11E0

== Series Details ==

Series: tracing: Move trace_printk.h out of kernel.h
URL   : https://patchwork.freedesktop.org/series/169614/
State : failure

== Summary ==

Error: make failed
  DESCEND objtool
  CC      kernel/rcu/tree.o
In file included from kernel/rcu/tree.c:70:
kernel/rcu/tree_stall.h: In function ‘rcu_stall_kick_kthreads’:
kernel/rcu/rcu.h:337:17: error: implicit declaration of function ‘ftrace_dump’; did you mean ‘ftrace_bug’? [-Werror=implicit-function-declaration]
  337 |                 ftrace_dump(oops_dump_mode); \
      |                 ^~~~~~~~~~~
kernel/rcu/tree_stall.h:238:17: note: in expansion of macro ‘rcu_ftrace_dump’
  238 |                 rcu_ftrace_dump(DUMP_ALL);
      |                 ^~~~~~~~~~~~~~~
kernel/rcu/tree_stall.h:238:33: error: ‘DUMP_ALL’ undeclared (first use in this function)
  238 |                 rcu_ftrace_dump(DUMP_ALL);
      |                                 ^~~~~~~~
kernel/rcu/rcu.h:337:29: note: in definition of macro ‘rcu_ftrace_dump’
  337 |                 ftrace_dump(oops_dump_mode); \
      |                             ^~~~~~~~~~~~~~
kernel/rcu/tree_stall.h:238:33: note: each undeclared identifier is reported only once for each function it appears in
  238 |                 rcu_ftrace_dump(DUMP_ALL);
      |                                 ^~~~~~~~
kernel/rcu/rcu.h:337:29: note: in definition of macro ‘rcu_ftrace_dump’
  337 |                 ftrace_dump(oops_dump_mode); \
      |                             ^~~~~~~~~~~~~~
kernel/rcu/tree_stall.h: In function ‘check_cpu_stall’:
kernel/rcu/tree_stall.h:859:41: error: ‘DUMP_ALL’ undeclared (first use in this function)
  859 |                         rcu_ftrace_dump(DUMP_ALL);
      |                                         ^~~~~~~~
kernel/rcu/rcu.h:337:29: note: in definition of macro ‘rcu_ftrace_dump’
  337 |                 ftrace_dump(oops_dump_mode); \
      |                             ^~~~~~~~~~~~~~
cc1: some warnings being treated as errors
make[4]: *** [scripts/Makefile.build:289: kernel/rcu/tree.o] Error 1
make[3]: *** [scripts/Makefile.build:549: kernel/rcu] Error 2
make[2]: *** [scripts/Makefile.build:549: kernel] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2189: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


