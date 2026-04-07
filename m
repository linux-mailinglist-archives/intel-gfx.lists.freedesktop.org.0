Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOjhKeQn1WnB1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A0D3B14F4
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:50:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5188610E467;
	Tue,  7 Apr 2026 15:50:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NMNxa1To";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E3610E466;
 Tue,  7 Apr 2026 15:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775577057; x=1807113057;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SojDzAhA116fSnx7JZ9t3NeEW67hvXmcdEM5g6blhI8=;
 b=NMNxa1ToqviNwf5lfC3uOWozMHij6MFzVR3aqTEM9uwXxBBz4rVbONDu
 TQLABRly5edFqPT8wPGrFviQmuc4vGPHPduBFmTtRUDWAYeL3kBPLD3R3
 rEXcrG4hST/NjsVdmqHwcMI2/Mh8FrDIiulkA4BeE9ffPPitJJzkq4QE2
 9IJZkDz0KPstH6XMeEFeGLg1l2sJSeI7vcJ6OZSwek6jeluBCLukzkkaZ
 We38uEFIHMtvtjxz7W7WVGFr8luZ+R81XWJLwUPiZdxNjn7/0+5jxmx6Z
 yUKeRUmurt/y0J/lZV1M6cluYiQIw0jhgWSrI0tClTTTkd+pjlcipdhi7 g==;
X-CSE-ConnectionGUID: NgfG290bTE6LIrSU2i21aw==
X-CSE-MsgGUID: lCYgIQUET2SfwPbPrJO8lA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="101999053"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="101999053"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:50:57 -0700
X-CSE-ConnectionGUID: Gee4OO7DTq2LZCprimd1Tw==
X-CSE-MsgGUID: Y2p/rpJHSnWPYChrwqzXkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="221633622"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:50:56 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 00/12] drm/i915/fb: Prep work for more generic remapping
 support
Date: Tue,  7 Apr 2026 18:50:41 +0300
Message-ID: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: F0A0D3B14F4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

I had a quick look at implementing tile64/Ys support.
https://github.com/vsyrjala/linux.git remap_tile_ys_64
is the result.

I think I want the whole generic remap thing from there
even if we don't end up adding the actual tile64/Ys support.
So here is an extract of some prep work from that branch,
though I didn't include the generic remap thing itself yet.

Ville Syrjälä (12):
  drm/i915/fb: Nuke intel_tile_row_size()
  drm/i915/fb: Make intel_fb_needs_pot_stride_remap() static
  drm/i915/fb: Reject per-plane remapping with DPT
  drm/xe/fb: Use the correct gtt view for remapped FBs
  drm/xe/fb: Remove weird VMA end alignemnt
  drm/xe/fb: Extract xe_dpt_size()
  drm/i915/vma: Add helpers to check GTT view type
  drm/xe/fb: Use i915_gtt_view_is_*()
  drm/i915/fb: Use i915_gtt_view_is_*()
  drm/i915/selftests: Eliminate duplicate vma size check
  drm/i915/selftests:  Use i915_gtt_view_is_*()
  drm/i915/fb: Use intel_fb_needs_pot_stride_remap() in
    intel_fb_view_init()

 drivers/gpu/drm/i915/display/intel_fb.c    | 42 ++++++++++-----------
 drivers/gpu/drm/i915/display/intel_fb.h    |  2 -
 drivers/gpu/drm/i915/i915_gtt_view_types.h | 15 ++++++++
 drivers/gpu/drm/i915/selftests/i915_vma.c  | 33 ++++++-----------
 drivers/gpu/drm/xe/display/xe_fb_pin.c     | 43 ++++++++++++----------
 5 files changed, 72 insertions(+), 63 deletions(-)

-- 
2.52.0

