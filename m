Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id my5zA25LKGr0BgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 19:20:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39525662DD2
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 19:20:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b=Z2TLadlI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FE910E4B8;
	Tue,  9 Jun 2026 17:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D813210E4DA;
 Tue,  9 Jun 2026 17:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=u+fdBhaDHSz20LrSRHPxKFOMo3T9YyaeNrfvBmDkBAA=; b=Z2TLadlIMiI4vkTzxe5a5eSp2w
 GfTT9RY5/eMYJooqsRIXASSWp+gLF7/87Epbv1lZCV8TFktjQzvxfGmFPmjpBJXm/YJMwSb/K4e4N
 0/vCo179s4d3MHVb/KXFuLfHSk+obHx6wXtKkWdXGWNxMe4DLy1lcuCMk1ttDIZSqdS41woMjSRyq
 4Oa7Ps/rC8ozD4aNpfZVdDHKjv7fS0m5MGA2exrVoe+mSIyLTODE+CXSBkbEFqDM3wJckvRdwO74i
 JMzIxJ4GKYZK0BIAavRrS2PznbU/LRmlldl07J+RFvYAgIEz3Ntd3UoAXpbihfvfLLznEA2473hKc
 dpQQsthw==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=localhost.localdomain) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1wX07z-00F5FG-F1; Tue, 09 Jun 2026 19:20:39 +0200
From: John Harrison <John.Harrison@Igalia.com>
To: dri-devel@lists.freedesktop.org
Cc: Melissa Wen <mwen@igalia.com>, Suraj Kandpal <suraj.kandpal@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Alex Hung <alex.hung@amd.com>,
 Harry Wentland <harry.wentland@amd.com>, kernel-dev@igalia.com,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Subject: [RFC PATCH 0/8] Convert colorop pipelines to use proper lists
Date: Tue,  9 Jun 2026 10:19:33 -0700
Message-ID: <20260609171941.169104-1-John.Harrison@Igalia.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.99 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:email,igalia.com:email,Igalia.com:mid,Igalia.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39525662DD2

As pointed out by Jani, colorop pipelines are using a locally coded
list system based on a 'next' pointer rather than official kernel list
structures:
https://lore.kernel.org/dri-devel/4452e675c4853faf665b520a8932a960946206bb@intel.com/

This patch set fixes that up.

The result is a little odd. There is no pipeline object as such -
pipelines are just a sequence of colorop objects and defined by
whatever arbitrary colorop object happens to be first in the sequence.
Therefore, there is no clear place to put the list head object. It has
to go inside the first colorop in the pipe. Which means there is a
list head inside *every* colorop object, regardless of whether it is
the head of a pipeline or not. Most of them are just empty lists.

Hence this set is being posted as an RFC - is the end result actually
better than the current version? Outside of open coding vs using
kernel helpers when iterating the list, probably the biggest advantage
is being able to assert that any given colorop is the head of a
pipeline rather than somewhere in the middle (or not in a pipeline at
all). It should not be possible to pass a non-head colorop into a
function that works on pipelines, but extra sanity checks are
generally a good thing.

Signed-off-by: John Harrison <John.Harrison@Igalia.com>
CC: Melissa Wen <mwen@igalia.com>
CC: Suraj Kandpal <suraj.kandpal@intel.com>
CC: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>
CC: Alex Hung <alex.hung@amd.com>
CC: Harry Wentland <harry.wentland@amd.com>
CC: kernel-dev@igalia.com
CC: intel-xe@lists.freedesktop.org
CC: intel-gfx@lists.freedesktop.org
CC: amd-gfx@lists.freedesktop.org
CC: dri-devel@lists.freedesktop.org

John Harrison (8):
  drm/colorop: Reduce scope of colorop helpers
  drm/colorop: Create pipelines via 'add to pipeline' instead of 'set
    next'
  drm/i915/colorop: Update to new pipeline API
  drm/amd/colorop: Update to new pipeline API
  drm/vkms/colorop: Update to new pipeline API
  drm/colorop: Remove old add-next API as no longer used
  drm/colorop: Convert pipline 'next' pointer to a list
  drm/colorop: Check that requested colorop is the root of a pipeline

 .../amd/display/amdgpu_dm/amdgpu_dm_color.c   | 60 ++++++++++---------
 .../amd/display/amdgpu_dm/amdgpu_dm_colorop.c | 16 ++---
 drivers/gpu/drm/drm_atomic.c                  | 15 ++++-
 drivers/gpu/drm/drm_atomic_uapi.c             | 30 +++++++---
 drivers/gpu/drm/drm_colorop.c                 | 29 +++++----
 .../drm/i915/display/intel_color_pipeline.c   | 14 ++---
 drivers/gpu/drm/i915/display/intel_plane.c    | 14 +++--
 drivers/gpu/drm/vkms/vkms_colorop.c           |  8 ++-
 drivers/gpu/drm/vkms/vkms_composer.c          |  9 +--
 include/drm/drm_colorop.h                     | 40 +++++--------
 10 files changed, 135 insertions(+), 100 deletions(-)

-- 
2.43.0

