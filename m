Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGMxIuHk5WlkpAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:33:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A3F42830E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 10:33:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934EE10E13A;
	Mon, 20 Apr 2026 08:33:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="cvYzRWIc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA45A10E112;
 Mon, 20 Apr 2026 08:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1776674005;
 bh=TZSZ3QzavpGQCMKaDwWJb6p/9aZGmtm1MdSbP6yEPtQ=;
 h=From:To:Cc:Subject:Date:From;
 b=cvYzRWIcrVcEOqIG+K0mc4cihEqKmwkU/+DmvcGlhoBAxmFTO9NAAYDnZ+3awywE3
 gqb3cVglRVrzAqqtFp8CVouzMT9VXi9VFJpsKs/EVnp2bs057rpOoBW8Mu15LRtfiB
 5cEnGv9bUwuw0JAg73XwKqrvdK2u+tja9HsDFXTrpGXVC5CuLkhR6meMKTnT5z2Qjl
 MhyrhmRoWs+fDN+VfX1u9yESWyO7CL2m+DE+KKy+iGqg8ouWhT81VryLZam5h4V/qP
 O1gMuukUyihnwzSgYhR4mMkxucENUPFbo7+S2ghldEZ1uhcY6z+SnXcbNTvh92XZDn
 mR2x71CN4aUNg==
From: Maarten Lankhorst <dev@lankhorst.se>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH 0/4] drm/doc: Remove obsolete RFC docs related to i915.
Date: Mon, 20 Apr 2026 10:33:18 +0200
Message-ID: <20260420083318.92038-6-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:dkim,lankhorst.se:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 60A3F42830E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

I believe small_bar has been implemented, as is gem_lmem.

xe has implemented GuC submission and VM_BIND, but realistically
this will never happen for i915.

Either way, those RFC's are completed, and can be removed.

Maarten Lankhorst (4):
  drm/doc/rfc: Remove i915_gem_lmem.rst
  drm/doc/rfc: Remove i915_vm_bind.
  drm/doc/rfc: Remove i915_small_bar rfc.
  drm/doc/rfc: Remove i915_scheduler item.

 Documentation/gpu/rfc/i915_gem_lmem.rst  |  22 --
 Documentation/gpu/rfc/i915_scheduler.rst | 152 ------------
 Documentation/gpu/rfc/i915_small_bar.h   | 189 ---------------
 Documentation/gpu/rfc/i915_small_bar.rst |  47 ----
 Documentation/gpu/rfc/i915_vm_bind.h     | 290 -----------------------
 Documentation/gpu/rfc/i915_vm_bind.rst   | 245 -------------------
 Documentation/gpu/rfc/index.rst          |  18 +-
 7 files changed, 1 insertion(+), 962 deletions(-)
 delete mode 100644 Documentation/gpu/rfc/i915_gem_lmem.rst
 delete mode 100644 Documentation/gpu/rfc/i915_scheduler.rst
 delete mode 100644 Documentation/gpu/rfc/i915_small_bar.h
 delete mode 100644 Documentation/gpu/rfc/i915_small_bar.rst
 delete mode 100644 Documentation/gpu/rfc/i915_vm_bind.h
 delete mode 100644 Documentation/gpu/rfc/i915_vm_bind.rst

-- 
2.53.0

