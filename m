Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LNtLLZR5mkDuwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 18:17:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4793D42F46D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 18:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD9AA10E6E4;
	Mon, 20 Apr 2026 16:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4012810E6E4;
 Mon, 20 Apr 2026 16:17:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915/dp=3A_Ignore_HPD?=
 =?utf-8?q?_when_in_DPLL_enable/disable_cycle?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2026 16:17:55 -0000
Message-ID: <177670187525.477004.6306710314973721580@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260417080118.2352283-1-suraj.kandpal@intel.com>
In-Reply-To: <20260417080118.2352283-1-suraj.kandpal@intel.com>
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: 4793D42F46D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

== Series Details ==

Series: drm/i915/dp: Ignore HPD when in DPLL enable/disable cycle
URL   : https://patchwork.freedesktop.org/series/165052/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/gpu/drm/i915/display/intel_dp.o
drivers/gpu/drm/i915/display/intel_dp.c: In function ‘intel_dp_hpd_pulse’:
drivers/gpu/drm/i915/display/intel_dp.c:6893:76: error: macro "drm_dbg_kms" requires 3 arguments, but only 1 given
 6893 |                 drm_dbg_kms("Ignoring HPD since DPLL is getting disabled\n");
      |                                                                            ^
In file included from drivers/gpu/drm/i915/display/intel_dp.c:50:
./include/drm/drm_print.h:652: note: macro "drm_dbg_kms" defined here
  652 | #define drm_dbg_kms(drm, fmt, ...)                                      \
      | 
drivers/gpu/drm/i915/display/intel_dp.c:6893:17: error: ‘drm_dbg_kms’ undeclared (first use in this function)
 6893 |                 drm_dbg_kms("Ignoring HPD since DPLL is getting disabled\n");
      |                 ^~~~~~~~~~~
drivers/gpu/drm/i915/display/intel_dp.c:6893:17: note: each undeclared identifier is reported only once for each function it appears in
make[6]: *** [scripts/Makefile.build:289: drivers/gpu/drm/i915/display/intel_dp.o] Error 1
make[5]: *** [scripts/Makefile.build:549: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:549: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:549: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:549: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2105: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


