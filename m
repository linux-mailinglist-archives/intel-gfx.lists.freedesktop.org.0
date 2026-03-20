Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIy3AMCCvWk4+gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 18:24:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8164C2DE8E1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2026 18:24:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FB8B10EBA6;
	Fri, 20 Mar 2026 17:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA31610EB1A;
 Fri, 20 Mar 2026 17:24:12 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm/atomic=3A_Rework_init?=
 =?utf-8?q?ial_state_allocation?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maxime Ripard" <mripard@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Mar 2026 17:24:12 -0000
Message-ID: <177402745280.382001.4658920252649485895@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
In-Reply-To: <20260320-drm-mode-config-init-v2-0-c63f1134e76c@kernel.org>
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
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_SPAM(0.00)[0.038];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url,lists.freedesktop.org:replyto]
X-Rspamd-Queue-Id: 8164C2DE8E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

== Series Details ==

Series: drm/atomic: Rework initial state allocation
URL   : https://patchwork.freedesktop.org/series/163608/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/163608/revisions/1/mbox/ not applied
Applying: drm/colorop: Fix typos in the doc
Applying: drm/atomic: Drop drm_private_state.obj assignment from create_state
Applying: drm/mode-config: Mention drm_mode_config_reset() culprits
Applying: drm/colorop: Rename __drm_colorop_state_reset()
Applying: drm/colorop: Create drm_atomic_helper_colorop_create_state()
Applying: drm/atomic-state-helper: Fix __drm_atomic_helper_plane_reset() doc typo
Applying: drm/atomic-state-helper: Rename __drm_atomic_helper_plane_state_reset()
Applying: drm/plane: Add new atomic_create_state callback
Applying: drm/atomic-state-helper: Rename __drm_atomic_helper_crtc_state_reset()
Applying: drm/crtc: Add new atomic_create_state callback
Applying: drm/atomic-state-helper: Rename __drm_atomic_helper_connector_state_reset()
Applying: drm/hdmi: Rename __drm_atomic_helper_connector_hdmi_reset()
Applying: drm/connector: Add new atomic_create_state callback
Applying: drm/mode-config: Create drm_mode_config_create_state()
error: invalid object 100644 253a00f450b0fb1b7eb6ea42b3235fbf9ee78376 for 'drivers/gpu/drm/drm_atomic.c'
error: Repository lacks necessary blobs to fall back on 3-way merge.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0014 drm/mode-config: Create drm_mode_config_create_state()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


