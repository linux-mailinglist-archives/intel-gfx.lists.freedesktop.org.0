Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIDODTU4G2o+AQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2026 21:19:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 834C8613004
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2026 21:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21090112983;
	Sat, 30 May 2026 19:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 208CE10E03D;
 Sat, 30 May 2026 19:19:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_drm=3A_Improve_logic_behi?=
 =?utf-8?q?nd_damage_handling_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 30 May 2026 19:19:13 -0000
Message-ID: <178016875312.27450.15574048065371335337@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260530185716.65688-1-tzimmermann@suse.de>
In-Reply-To: <20260530185716.65688-1-tzimmermann@suse.de>
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
	NEURAL_HAM(-0.00)[-0.995];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[patchwork.freedesktop.org:url,lists.freedesktop.org:replyto]
X-Rspamd-Queue-Id: 834C8613004
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

== Series Details ==

Series: drm: Improve logic behind damage handling (rev3)
URL   : https://patchwork.freedesktop.org/series/166107/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/166107/revisions/3/mbox/ not applied
Applying: drm/damage-helper: Do not alter damage clips on modeset, but ignore them
Applying: drm/atomic-helpers: Evaluate plane damage after atomic_check
Applying: drm/ingenic: Remove calls to drm_atomic_helper_check_plane_damage()
Applying: drm/appletbdrm: Allocate request/response buffers in begin_fb_access
Applying: drm/atomic_helper: Do not evaluate plane damage before atomic_check
Applying: drm/damage-helper: Test src coord in drm_atomic_helper_check_plane_damage()
Applying: drm/damage-helper: Remove old state from drm_atomic_helper_damage_iter_init()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/hyperv/hyperv_drm_modeset.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/hyperv/hyperv_drm_modeset.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/hyperv/hyperv_drm_modeset.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 drm/damage-helper: Remove old state from drm_atomic_helper_damage_iter_init()
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


