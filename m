Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TF0YDZ68VWrjsAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 06:35:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A55A6750E51
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 06:35:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 331E810EBE1;
	Tue, 14 Jul 2026 04:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A5A410E681;
 Tue, 14 Jul 2026 04:35:39 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_Refactor_drm=5Fwriteback?=
 =?utf-8?q?=5Fconnector_structure_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2026 04:35:39 -0000
Message-ID: <178400373949.186930.3937263715939031051@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260714042805.77934-1-suraj.kandpal@intel.com>
In-Reply-To: <20260714042805.77934-1-suraj.kandpal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A55A6750E51

== Series Details ==

Series: Refactor drm_writeback_connector structure (rev7)
URL   : https://patchwork.freedesktop.org/series/152760/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/152760/revisions/7/mbox/ not applied
Applying: drm: writeback: Refactor drm_writeback_connector structure
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
M	drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
M	drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
M	drivers/gpu/drm/arm/malidp_mw.c
M	drivers/gpu/drm/drm_writeback.c
M	drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
M	drivers/gpu/drm/vc4/vc4_txp.c
M	include/drm/drm_writeback.h
Falling back to patching base and 3-way merge...
Auto-merging include/drm/drm_writeback.h
CONFLICT (content): Merge conflict in include/drm/drm_writeback.h
Auto-merging drivers/gpu/drm/vc4/vc4_txp.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/vc4/vc4_txp.c
Auto-merging drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
Auto-merging drivers/gpu/drm/drm_writeback.c
Auto-merging drivers/gpu/drm/arm/malidp_mw.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/arm/malidp_mw.c
Auto-merging drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
Auto-merging drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
Auto-merging drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm: writeback: Refactor drm_writeback_connector structure
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


