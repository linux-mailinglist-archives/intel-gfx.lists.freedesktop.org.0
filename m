Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1gIfB+PTRGoQ1goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 10:46:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF616EB3D1
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 10:46:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A2D410E371;
	Wed,  1 Jul 2026 08:46:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF72910E371;
 Wed,  1 Jul 2026 08:46:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Fix_LT_PHY_related_SSC_wr?=
 =?utf-8?q?ites?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 01 Jul 2026 08:46:22 -0000
Message-ID: <178289558271.135894.623081244742398277@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260701075737.1285909-1-suraj.kandpal@intel.com>
In-Reply-To: <20260701075737.1285909-1-suraj.kandpal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:replyto,lists.freedesktop.org:from_smtp,6beec6c84f66:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,patchwork.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4EF616EB3D1

== Series Details ==

Series: Fix LT PHY related SSC writes
URL   : https://patchwork.freedesktop.org/series/169563/
State : failure

== Summary ==

Error: make failed
  DESCEND objtool
  CC [M]  drivers/gpu/drm/i915/display/intel_lt_phy.o
drivers/gpu/drm/i915/display/intel_lt_phy.c: In function ‘intel_lt_phy_dump_hw_state’:
drivers/gpu/drm/i915/display/intel_lt_phy.c:2177:75: error: format ‘%d’ expects argument of type ‘int’, but argument 4 has type ‘const char *’ [-Werror=format=]
 2177 |         drm_printf(p, "lt_phy_pll_hw_state: lane count: %d, ssc enabled: %d, tbt mode: %d\n",
      |                                                                          ~^
      |                                                                           |
      |                                                                           int
      |                                                                          %s
 2178 |                    hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
      |                                          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
      |                                          |
      |                                          const char *
drivers/gpu/drm/i915/display/intel_lt_phy.c:2177:89: error: format ‘%d’ expects argument of type ‘int’, but argument 5 has type ‘const char *’ [-Werror=format=]
 2177 |         drm_printf(p, "lt_phy_pll_hw_state: lane count: %d, ssc enabled: %d, tbt mode: %d\n",
      |                                                                                        ~^
      |                                                                                         |
      |                                                                                         int
      |                                                                                        %s
 2178 |                    hw_state->lane_count, str_yes_no(hw_state->ssc_enabled),
 2179 |                    str_yes_no(hw_state->tbt_mode));
      |                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~                                        
      |                    |
      |                    const char *
cc1: all warnings being treated as errors
make[6]: *** [scripts/Makefile.build:289: drivers/gpu/drm/i915/display/intel_lt_phy.o] Error 1
make[5]: *** [scripts/Makefile.build:549: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:549: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:549: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:549: drivers] Error 2
make[1]: *** [/home/kbuild/kernel/Makefile:2184: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


