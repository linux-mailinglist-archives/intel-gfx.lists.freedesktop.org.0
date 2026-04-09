Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8P6GIFN812mXOggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:15:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EF93C90E3
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93FA110E781;
	Thu,  9 Apr 2026 10:15:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bsgoejwj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6FE210E74A;
 Thu,  9 Apr 2026 10:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775729744; x=1807265744;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vtP4dpXMWqrSadSgrAgHFT483nqPbCEQY3QAlkVMlNA=;
 b=BsgoejwjlYuoAu2b4iikqHGc4l6YQKsE8s+MoewDQj2D9nbI/4OHEKo7
 SO27ugEqVNM77iiLEv6ShYQTb2UJv9V60XJ+Ysdl1ZjdsW1QTAJWcMt5g
 EXIGAH7YyKShFCK+FEoFq+Ek1BYTDw7ssBXtyf7UwJJc86l2/hEA8Zb5/
 bgP1GNICelXyWlIaPwP6oTrtsX95u/Td++BzshzS3hxWN1Vgxw9Xhb0j2
 KKi2/HHo6NeXeR/eYjR78GC/Vz0qGfQ9Jm+shqRohv3L7qfRfiF5vMMfz
 /DE046hWOc+Z9L5DP4+RSUSQqCINNQlNZ/Kk1nbWo3K6lEKDfdQWfVJD1 w==;
X-CSE-ConnectionGUID: F9O+2r92SrKt3lQKoPG7cw==
X-CSE-MsgGUID: M7+NKSwsQjmgITD0968JoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76610010"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76610010"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:15:44 -0700
X-CSE-ConnectionGUID: ihh2FqsMTmu0uMSchoqfNg==
X-CSE-MsgGUID: P5WwN5x1TuGLwmCRUCpD/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="225567079"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.216])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:15:41 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH v2 0/9] drm/i915/{dp,
 hdmi}: Restructure DP/HDMI sink format handling
Date: Thu,  9 Apr 2026 13:15:30 +0300
Message-ID: <20260409101539.22032-1-ville.syrjala@linux.intel.com>
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.015];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 17EF93C90E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Restructure the DP/HDMI sink format handling. I got inspired to do this
by https://lore.kernel.org/dri-devel/20260324-color-format-v11-8-605559af4fb4@collabora.com/

I envision that after this the aforementioned patch could just
become something like this:

1. s/intel_foo_compute_formats/intel_foo_compute_formats_auto/
2. Add a new intel_foo_compute_formats()

   intel_foo_compute_formats()
   {
        switch (color_format) {
        case YCBCR420:
                return intel_foo_compute_output_format(YCBCR420);
        case RGB:
                return intel_foo_compute_output_format(RGB);
        case AUTO:
                return intel_foo_compute_formats_auto();
        }
   }

v2: A few more updates to the DP mode validation

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Ville Syrjälä (9):
  drm/i915/hdmi: Add missing intel_pfit_mode_valid() for 4:2:0 also
    modes
  drm/i915/hdmi: Restructure the sink/output format selection
  drm/i915/hdmi: Restructure 4:2:0 vs. 4:4:4 mode validation
  drm/i915/dp: Restructure the sink/output format selection
  drm/i915/dp: Validate "4:2:0 also" modes twice
  drm/i915/dp: Require a HDMI sink for YCbCr output via PCON
  drm/i915/dp: Validate sink format in .mode_valid()
  drm/i915/hdmi: Make the RGB fallback for "4:2:0 only" modes the last
    resort
  drm/i915/dp: Make the RGB fallback for "4:2:0 only" modes the last
    resort

 drivers/gpu/drm/i915/display/intel_dp.c   | 250 +++++++++++++---------
 drivers/gpu/drm/i915/display/intel_hdmi.c | 167 +++++++++------
 2 files changed, 254 insertions(+), 163 deletions(-)

-- 
2.52.0

