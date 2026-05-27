Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uF9/J0xAF2qg9wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:04:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247315E9575
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 21:04:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A085089C5E;
	Wed, 27 May 2026 19:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79E3B88C11;
 Wed, 27 May 2026 19:04:41 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_For_CI_only=3A_DC3CO/CMTG?=
 =?utf-8?q?_validation_series?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dibin Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 May 2026 19:04:41 -0000
Message-ID: <177990868149.17309.6587089571688273845@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260527190004.118730-1-dibin.moolakadan.subrahmanian@intel.com>
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
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,patchwork.freedesktop.org:url]
X-Rspamd-Queue-Id: 247315E9575
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

== Series Details ==

Series: For CI only: DC3CO/CMTG validation series
URL   : https://patchwork.freedesktop.org/series/167407/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/167407/revisions/1/mbox/ not applied
Applying: drm/i915/cmtg: Enable CMTG
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_display_irq.c
M	drivers/gpu/drm/i915/display/intel_display_power.c
M	drivers/gpu/drm/i915/display/intel_display_power.h
M	drivers/gpu/drm/i915/display/intel_display_types.h
M	drivers/gpu/drm/i915/display/intel_vrr.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_vrr.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_types.h
Auto-merging drivers/gpu/drm/i915/display/intel_display_power.h
Auto-merging drivers/gpu/drm/i915/display/intel_display_power.c
Auto-merging drivers/gpu/drm/i915/display/intel_display_irq.c
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
Applying: drm/i915/display: Remove TGL DC3CO support
Applying: drm/i915/display: Switch DC3CO enable from standalone bit to DC level encoding
Applying: drm/i915/display: Use FIELD_PREP() for DC state enable bits
Applying: drm/i915/display: Add DC3CO DC_STATE enable/disable support
Applying: drm/i915/display: Add DC3CO support check
Applying: drm/i915/display: Add HAS_DC3CO() macro
Applying: drm/i915/display: Add DC3CO eligibility computation
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/display/intel_display_power.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0008 drm/i915/display: Add DC3CO eligibility computation
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


