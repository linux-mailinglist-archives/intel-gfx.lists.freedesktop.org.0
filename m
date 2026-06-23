Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nPepKimPOmoZAAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 15:50:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F30526B7988
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 15:50:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CCD10EA98;
	Tue, 23 Jun 2026 13:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86D9710E24A;
 Tue, 23 Jun 2026 13:50:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/i915=3A_Clean_up_GPIO?=
 =?utf-8?q?_pin_stuff?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2026 13:50:30 -0000
Message-ID: <178222263054.106260.15618930660526400244@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260623125111.6632-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20260623125111.6632-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:replyto,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,emeril.freedesktop.org:from_mime,6beec6c84f66:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F30526B7988

== Series Details ==

Series: drm/i915: Clean up GPIO pin stuff
URL   : https://patchwork.freedesktop.org/series/169024/
State : failure

== Summary ==

Error: make failed
  DESCEND objtool
  INSTALL libsubcmd_headers
  LD [M]  drivers/gpu/drm/i915/i915.o
  CC [M]  drivers/gpu/drm/i915/gvt/edid.o
drivers/gpu/drm/i915/gvt/edid.c: In function ‘cnp_get_port_from_gmbus0’:
drivers/gpu/drm/i915/gvt/edid.c:93:28: error: ‘GMBUS_PIN_1_BXT’ undeclared (first use in this function); did you mean ‘GMBUS_PIN_10_TC2’?
   93 |         if (port_select == GMBUS_PIN_1_BXT)
      |                            ^~~~~~~~~~~~~~~
      |                            GMBUS_PIN_10_TC2
drivers/gpu/drm/i915/gvt/edid.c:93:28: note: each undeclared identifier is reported only once for each function it appears in
drivers/gpu/drm/i915/gvt/edid.c:95:33: error: ‘GMBUS_PIN_2_BXT’ undeclared (first use in this function); did you mean ‘GMBUS_PIN_DPB’?
   95 |         else if (port_select == GMBUS_PIN_2_BXT)
      |                                 ^~~~~~~~~~~~~~~
      |                                 GMBUS_PIN_DPB
drivers/gpu/drm/i915/gvt/edid.c:97:33: error: ‘GMBUS_PIN_3_BXT’ undeclared (first use in this function); did you mean ‘GMBUS_PIN_13_TC5’?
   97 |         else if (port_select == GMBUS_PIN_3_BXT)
      |                                 ^~~~~~~~~~~~~~~
      |                                 GMBUS_PIN_13_TC5
drivers/gpu/drm/i915/gvt/edid.c:99:33: error: ‘GMBUS_PIN_4_CNP’ undeclared (first use in this function); did you mean ‘GMBUS_PIN_DPC’?
   99 |         else if (port_select == GMBUS_PIN_4_CNP)
      |                                 ^~~~~~~~~~~~~~~
      |                                 GMBUS_PIN_DPC
drivers/gpu/drm/i915/gvt/edid.c: In function ‘bxt_get_port_from_gmbus0’:
drivers/gpu/drm/i915/gvt/edid.c:109:28: error: ‘GMBUS_PIN_1_BXT’ undeclared (first use in this function); did you mean ‘GMBUS_PIN_10_TC2’?
  109 |         if (port_select == GMBUS_PIN_1_BXT)
      |                            ^~~~~~~~~~~~~~~
      |                            GMBUS_PIN_10_TC2
drivers/gpu/drm/i915/gvt/edid.c:111:33: error: ‘GMBUS_PIN_2_BXT’ undeclared (first use in this function); did you mean ‘GMBUS_PIN_DPB’?
  111 |         else if (port_select == GMBUS_PIN_2_BXT)
      |                                 ^~~~~~~~~~~~~~~
      |                                 GMBUS_PIN_DPB
drivers/gpu/drm/i915/gvt/edid.c:113:33: error: ‘GMBUS_PIN_3_BXT’ undeclared (first use in this function); did you mean ‘GMBUS_PIN_13_TC5’?
  113 |         else if (port_select == GMBUS_PIN_3_BXT)
      |                                 ^~~~~~~~~~~~~~~
      |                                 GMBUS_PIN_13_TC5
make[6]: *** [scripts/Makefile.build:289: drivers/gpu/drm/i915/gvt/edid.o] Error 1
make[5]: *** [scripts/Makefile.build:548: drivers/gpu/drm/i915] Error 2
make[4]: *** [scripts/Makefile.build:548: drivers/gpu/drm] Error 2
make[3]: *** [scripts/Makefile.build:548: drivers/gpu] Error 2
make[2]: *** [scripts/Makefile.build:548: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2144: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


