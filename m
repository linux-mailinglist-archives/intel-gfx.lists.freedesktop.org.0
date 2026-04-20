Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kH/cJ0WJ5mlHxwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:15:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2028F4339AE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 22:15:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B6AB10E201;
	Mon, 20 Apr 2026 20:14:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4447F10E201;
 Mon, 20 Apr 2026 20:14:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm=3A_handle_IRQ=5FHPD_e?=
 =?utf-8?q?vents_correctly_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Apr 2026 20:14:58 -0000
Message-ID: <177671609827.478721.7373776983793102724@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260420-hpd-irq-events-v2-0-402ffe27e9e9@oss.qualcomm.com>
In-Reply-To: <20260420-hpd-irq-events-v2-0-402ffe27e9e9@oss.qualcomm.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 2028F4339AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

== Series Details ==

Series: drm: handle IRQ_HPD events correctly (rev2)
URL   : https://patchwork.freedesktop.org/series/164957/
State : failure

== Summary ==

Error: make failed
  CALL    scripts/checksyscalls.sh
  DESCEND objtool
  INSTALL libsubcmd_headers
  CC [M]  drivers/usb/typec/mux/nb7vpq904m.o
In file included from drivers/usb/typec/mux/nb7vpq904m.c:14:
./include/drm/bridge/aux-bridge.h:52:1: error: expected identifier or ‘(’ before ‘{’ token
   52 | {
      | ^
./include/drm/bridge/aux-bridge.h:49:20: warning: ‘drm_aux_hpd_bridge_notify_extra’ used but never defined
   49 | static inline void drm_aux_hpd_bridge_notify_extra(struct device *dev,
      |                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
make[6]: *** [scripts/Makefile.build:289: drivers/usb/typec/mux/nb7vpq904m.o] Error 1
make[5]: *** [scripts/Makefile.build:549: drivers/usb/typec/mux] Error 2
make[4]: *** [scripts/Makefile.build:549: drivers/usb/typec] Error 2
make[3]: *** [scripts/Makefile.build:549: drivers/usb] Error 2
make[2]: *** [scripts/Makefile.build:549: drivers] Error 2
make[1]: *** [/home/kbuild2/kernel/Makefile:2105: .] Error 2
make: *** [Makefile:248: __sub-make] Error 2
Build failed, no error log produced


