Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOmYCNDR12mrTAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 18:20:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 905DC3CD953
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 18:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8265B10E00A;
	Thu,  9 Apr 2026 16:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B822110E00A;
 Thu,  9 Apr 2026 16:20:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Add_new_general_DRM_prope?=
 =?utf-8?q?rty_=22color_format=22_=28rev9=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Apr 2026 16:20:28 -0000
Message-ID: <177575162873.447267.17378149374032445255@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260409-color-format-v12-0-ce84e1817a27@collabora.com>
In-Reply-To: <20260409-color-format-v12-0-ce84e1817a27@collabora.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[patchwork.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:replyto]
X-Rspamd-Queue-Id: 905DC3CD953
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

== Series Details ==

Series: Add new general DRM property "color format" (rev9)
URL   : https://patchwork.freedesktop.org/series/157910/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/157910/revisions/9/mbox/ not applied
Applying: drm/amd/display: Remove unnecessary SIGNAL_TYPE_HDMI_TYPE_A check
Applying: drm/display: hdmi-state-helper: Use default case for unsupported formats
Applying: drm: Add new general DRM property "color format"
Applying: drm/bridge: Act on the DRM color format property
Applying: drm/atomic-helper: Add HDMI bridge output bus formats helper
Applying: drm/display: hdmi-state-helper: Act on color format DRM property
Applying: drm/display: hdmi-state-helper: Try subsampling in mode_valid
Applying: drm/amdgpu: Implement "color format" DRM property
Applying: drm/i915/hdmi: Add YCBCR444 handling for sink formats
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_hdmi.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_hdmi.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/display/intel_hdmi.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0009 drm/i915/hdmi: Add YCBCR444 handling for sink formats
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


