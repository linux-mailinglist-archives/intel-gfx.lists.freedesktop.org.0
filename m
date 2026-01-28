Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APJ3HTMlemlk3QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 16:03:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28FC4A3736
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 16:03:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E66210E6F2;
	Wed, 28 Jan 2026 15:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA99D10E6E4;
 Wed, 28 Jan 2026 15:02:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_LGCI=2EVerificationFailed=3A_failure_for_drm/i915/gem=3A?=
 =?utf-8?q?_Fix_memory_leak_in_i915=5Fgem=5Fdo=5Fexecbuffer=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zilin Guan" <zilin@seu.edu.cn>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jan 2026 15:02:57 -0000
Message-ID: <176961257795.200694.7705945672914486587@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260126152718.276013-1-zilin@seu.edu.cn>
In-Reply-To: <20260126152718.276013-1-zilin@seu.edu.cn>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RSPAMD_URIBL_FAIL(0.00)[lists.freedesktop.org:query timed out];
	TO_DN_SOME(0.00)[];
	ASN_FAIL(0.00)[177.210.252.131.asn.rspamd.com:query timed out];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	R_DKIM_NA(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[i915-ci-infra.lists.freedesktop.org:query timed out,intel-gfx.lists.freedesktop.org:query timed out,zilin.seu.edu.cn:query timed out];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[seu.edu.cn:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:replyto,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: 28FC4A3736
X-Rspamd-Action: no action

== Series Details ==

Series: drm/i915/gem: Fix memory leak in i915_gem_do_execbuffer()
URL   : https://patchwork.freedesktop.org/series/160768/
State : failure

== Summary ==

Address 'zilin@seu.edu.cn' is not on the allowlist, which prevents CI from being triggered for this patch.
If you want Intel GFX CI to accept this address, please contact the script maintainers at i915-ci-infra@lists.freedesktop.org.
Exception occurred during validation, bailing out!


