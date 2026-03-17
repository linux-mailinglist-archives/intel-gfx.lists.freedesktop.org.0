Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGRfGx/RuWnMOAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 23:09:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF672B2F19
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2026 23:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D499210E1C6;
	Tue, 17 Mar 2026 22:09:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="KaX8m85O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dy1-f201.google.com (mail-dy1-f201.google.com
 [74.125.82.201])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BD3710E1C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 22:09:31 +0000 (UTC)
Received: by mail-dy1-f201.google.com with SMTP id
 5a478bee46e88-2bdf75bc88fso5687337eec.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2026 15:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1773785371; x=1774390171;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=uIAN5vdsbZd5f2zOoV460Vevj8GFJfqQqiklZn/mOn0=;
 b=KaX8m85OP+Pm1l/TB7Vx5V+p40my5AubO/kyjfM7Vj6g0z5mRYzA2auttDHvm2xN7g
 azEwA23DCgUMKopkkUMztHHhqAwj4YuSSxAVPhb7MFPTczK8iVwv7WYzgdgm+xSDZG9O
 BP2HQalkqu9mHlgNLVwpKKQBVz0vX0eQqfHPYvlFO8etIPvk/k20Pf5bUXiZJRhIChyP
 rJSR//srhagXKSVjOPPBBIv16lEgAZGoYB8kfQDZQP4pnvsMo+Xm6K2u/69LViLCPdTD
 Qm/lEnyf2NfXonjVP0HBptdptZHqfW4ki77t98nwXo+cj3arPhrwk+a0GzWsxi+RQ3DU
 bXzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773785371; x=1774390171;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=uIAN5vdsbZd5f2zOoV460Vevj8GFJfqQqiklZn/mOn0=;
 b=ayAoRPU1IO3hUc8xEZhaBKvGREOmK7eK8DMGbCzyC/t3m147LQj0nZeuG30Xiz41y4
 n46BTZaP+JRAWuWDSIaS4blg8cAgDfRmEjT1wpBnVNDjRwQfrPurK+4SdOV262zNJxse
 /bXDgLc2RuThZ70KQTfjhURORqp69Q0akaKMrBucUsJtohDHA476enb9sIjEWG4k+mKg
 hEMG+R6TmZXEGFTWdsjFi+xebBuCzw+GOCshaQX0c06RCLh0cCeqI86MNMoI0E3OEf6P
 zIclBEpG7AXbMxWEeO4M4lzLlmKx49LPZxK/PqfMtd9VoXdK1abFqGq/2T8eLLQRMvCi
 4CRg==
X-Gm-Message-State: AOJu0YzswRVTeHEADEAYH4aGL5lK/v1T17ZTdBJUk4wcKQhewPTsz83N
 km6sToIKwVwHKV/VHFtMgjjG4eLjDHrAJe4pnSdIci/5cprtjR6VWEDF6epT+NmM24xnhD1AqCG
 7mlFg3SqRh7iZXOCH/4J+ppFMdWaptoPNVDDgrG5nhHqa9mhsUgLzegzH3fsQzsp0pfisOxmm8t
 KrrGTqPrDCraJzl9CbYnePUNV94U9kg9KCOZb//X+TT475Kvru7WtLZGv5lwY=
X-Received: from dybb24.prod.google.com ([2002:a05:693c:6098:b0:2c0:ccba:438b])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7300:5722:b0:2b0:52cc:fe69 with SMTP id
 5a478bee46e88-2c0e4f79789mr617612eec.5.1773785369435; 
 Tue, 17 Mar 2026 15:09:29 -0700 (PDT)
Date: Tue, 17 Mar 2026 15:09:01 -0700
Mime-Version: 1.0
X-Mailer: git-send-email 2.53.0.851.ga537e3e6e9-goog
Message-ID: <20260317220908.130968-1-jdsultan@google.com>
Subject: [PATCH v4 0/2] Enable seamless boot (fastboot) for PTL
From: Juasheem Sultan <jdsultan@google.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Manasi Navare <navaremanasi@google.com>, Drew Davenport <ddavenport@google.com>,
 Sean Paul <seanpaul@google.com>, Samuel Jacob <samjaco@google.com>, 
 Rajat Jain <rajatja@google.com>, Juasheem Sultan <jdsultan@google.com>
Content-Type: text/plain; charset="UTF-8"
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
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jdsultan@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CAF672B2F19
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is the fourth version of a series of patches meant to add
support for seamless framebuffer handoff within the Xe driver. 
It was tested on Panther Lake platforms.

The goal of this series is to achieve a flicker-free transition from
the bootloader (BIOS/UEFI) to the kernel driver by strictly adhering
to the hardware state established by the firmware.

With this version, I've taken the feedback that the last version was
doing too broad of a copy of the hardware crtc state into the new 
atomic state. Rather than that, we are now instead sanitizing the 
clock values and pll state. 

The BIOS appears to set a slightly different clock than the ideal value
calculated by the driver. If these are within a small tolerance of each
other then we adopt the BIOS clock values. 

The pll state that the driver reads has bytes 4 to 8 programmed to 0
in non-ssc registers. The state read from the hardware doesn't have 
this, so we adopt the hardware state if they match without those bytes.

---
Changes since v1
- v2 Complete rewrite of the code
- v3 Resending due to failure of patches to send
- v4 Switched from complete state copy to clock sanitization

Juasheem Sultan (2):
  drm/xe/display: Fix reading the framebuffer from stolen memory
  drm/i915/display: Sync state to BIOS for seamless handoff

 drivers/gpu/drm/i915/display/intel_display.c  | 67 +++++++++++++++++++
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 22 +++++-
 2 files changed, 88 insertions(+), 1 deletion(-)

-- 
2.53.0.851.ga537e3e6e9-goog

