Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WA3WN/NV4Wl5rwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 23:34:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 707A9414F73
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 23:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F3F10E277;
	Thu, 16 Apr 2026 21:34:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63FB110E277;
 Thu, 16 Apr 2026 21:34:40 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_series_starting_with_=5Bv?=
 =?utf-8?q?11=2C01/20=5D_gpu=3A_nova-core=3A_gsp=3A_Return_GspStaticInfo_fro?=
 =?utf-8?q?m_boot=28=29_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Joel Fernandes" <joelagnelf@nvidia.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Apr 2026 21:34:40 -0000
Message-ID: <177637528039.470241.4765983384922356200@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260415210548.3776595-1-joelagnelf@nvidia.com>
In-Reply-To: <20260415210548.3776595-1-joelagnelf@nvidia.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:replyto,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 707A9414F73
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

== Series Details ==

Series: series starting with [v11,01/20] gpu: nova-core: gsp: Return GspStaticInfo from boot() (rev2)
URL   : https://patchwork.freedesktop.org/series/164945/
State : failure

== Summary ==

Error: patch https://patchwork.freedesktop.org/api/1.0/series/164945/revisions/2/mbox/ not applied
Applying: gpu: nova-core: gsp: Return GspStaticInfo from boot()
Applying: gpu: nova-core: gsp: Extract usable FB region from GSP
Applying: gpu: nova-core: gsp: Expose total physical VRAM end from FB region info
Applying: gpu: nova-core: mm: Add support to use PRAMIN windows to write to VRAM
Applying: docs: gpu: nova-core: Document the PRAMIN aperture mechanism
Applying: gpu: nova-core: mm: Add common memory management types
Applying: gpu: nova-core: mm: Add TLB flush support
Using index info to reconstruct a base tree...
A	drivers/gpu/nova-core/mm/tlb.rs
Falling back to patching base and 3-way merge...
CONFLICT (modify/delete): drivers/gpu/nova-core/mm/tlb.rs deleted in HEAD and modified in gpu: nova-core: mm: Add TLB flush support. Version gpu: nova-core: mm: Add TLB flush support of drivers/gpu/nova-core/mm/tlb.rs left in tree.
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0007 gpu: nova-core: mm: Add TLB flush support
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
Build failed, no error log produced


