Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SlZWBgluw2ldqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:09:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B96531FD23
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0CF010E783;
	Wed, 25 Mar 2026 05:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1589910E1DF;
 Wed, 25 Mar 2026 05:09:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Enable_Pipe_writeback_=28?=
 =?utf-8?q?rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Mar 2026 05:09:25 -0000
Message-ID: <177441536506.394589.8702170790335495895@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260325045916.984243-1-suraj.kandpal@intel.com>
In-Reply-To: <20260325045916.984243-1-suraj.kandpal@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:replyto,patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: 2B96531FD23
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

== Series Details ==

Series: Enable Pipe writeback (rev2)
URL   : https://patchwork.freedesktop.org/series/152104/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/152104/revisions/2/mbox/ not applied
Applying: drm: writeback: rename drm_writeback_connector_init_with_encoder()
Applying: drm: writeback: Refactor drm_writeback_connector structure
Applying: drm/i915/writeback: Add writeback registers
Applying: drm/i915/writeback: Add some preliminary writeback definitions
Applying: drm/i915/writeback: Init writeback connector
Applying: drm/i915/writeback: Add function to get modes
Applying: drm/i915/writeback: Add hook to check modes
Applying: drm/i915/writeback: Define encoder->get_hw_state
Applying: drm/i915/writeback: Fill encoder->get_config
Applying: drm/i915/writeback: Add private structure for writeback job
Applying: drm/i915/writeback: Define function for prepare and cleanup hooks
Applying: drm/i915/writeback: Define compute_config for writeback
Applying: drm/i915/writeback: Define function for connector function detect
Applying: drm/i915/writeback: Define function to destroy writeback connector
Applying: drm/i915/writeback: Add connector atomic check
Applying: drm/i915/writeback: Add writeback to xe Makefile
Applying: drm/i915/writeback: Add the enable sequence from writeback
Applying: drm/i915/writeback: Define writeback frame capture function
Applying: drm/{i915/xe}/writeback: Add a writeback helper to get ggtt address
Applying: drm/i915/writeback: Configure WD_STRIDE reg
Applying: drm/i915/writeback: Configure WD_SURF register
Applying: drm/i915/writeback: Enable writeback interrupts
Applying: drm/i915/writeback: Initialize writeback encoder.
Applying: drm/i915/writeback: Define the disable sequence for writeback
Applying: drm/i915/writeback: Make exception for writeback connector
Applying: drm/i915/writeback: Modify state verify function
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_display.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0026 drm/i915/writeback: Modify state verify function
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


