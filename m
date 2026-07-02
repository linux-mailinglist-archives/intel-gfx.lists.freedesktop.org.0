Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5os/K9kLRmodIQsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:57:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3109B6F3F5F
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 08:57:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VGZQ0C+w;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2222210E461;
	Thu,  2 Jul 2026 06:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7317610E459;
 Thu,  2 Jul 2026 06:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782975445; x=1814511445;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Wby2xh2SHoZaRyG4RXixcOB6t/4d0RxplKwjCtFpIlg=;
 b=VGZQ0C+wsCdcAqpbhfnU4up3/L49pyNtbnZ5XsdWbV0FHwZ7g4S+U/r0
 QXH0yj4J8C1LYHAauEb7JRsu5SVhOpu83k0JpsBpRfIIIVuXtZ/RekU0w
 efzSB0AJEjXa01kvLzCpEmNpMv8mik5hK5OygvYRZuS7qs+2HRvWePj2+
 6bf/Nn9c0l4Zhq5f24e4Vcr/u0AZ8R/oqDFd9KK38JAo26wPryq5BaHAT
 zt7MPNDJGTQ15dX1N0NN9bkA5LoEDGr+hpSkYBxonPNbpI9amptESUign
 rckA6xkKXuiz54jgaPp7yajOF12hWwdVanUBe24xC2YDzcrOQEVf/auZj w==;
X-CSE-ConnectionGUID: grjFhF5QTe2eF0SyJuVjtw==
X-CSE-MsgGUID: RgrJe5MITiaFii/xWaTLWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83587982"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83587982"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 23:57:17 -0700
X-CSE-ConnectionGUID: LFUnjvcbT2eLuPNfyIMqAw==
X-CSE-MsgGUID: 6WTj3a7CTOO/Llzf0h6IQw==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.199])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 23:57:11 -0700
Date: Thu, 2 Jul 2026 09:57:08 +0300
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Subject: [PULL] drm-intel-fixes
Message-ID: <akYLxDea3kEyHqJA@jlahtine-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3109B6F3F5F

Hi Dave & Sima,

Here goes drm-intel-fixes PR towards v5.2-rc2.

One near-NULL deref fix for GFP_ATOMIC OOM, couple of HDCP robustness
fixes and two input validation fixes for BIOS data and EDID.

Noteworthy, all of the bugs were reported with help from AI-assisted
static analysis. And there are more on the mailing list.

Regards, Joonas

***

drm-intel-fixes-2026-07-02:

- Input validation fixes for BIOS and EDID (Jani)
- Fix HDCP code buffer overflow and seq_num_v monotonic increase check (Jani)
- Fix near-NULL deref in i915_active during GFP_ATOMIC exhaustion (Joonas)

The following changes since commit dc59e4fea9d83f03bad6bddf3fa2e52491777482:

  Linux 7.2-rc1 (2026-06-28 12:01:31 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/i915/kernel.git tags/drm-intel-fixes-2026-07-02

for you to fetch changes up to 2084503f2d087bf956198e7f6eb25b03a7049cb2:

  drm/i915/bios: range check LFP Data Block panel_type2 (2026-07-01 09:12:33 +0300)

----------------------------------------------------------------
- Input validation fixes for BIOS and EDID (Jani)
- Fix HDCP code buffer overflow and seq_num_v monotonic increase check (Jani)
- Fix near-NULL deref in i915_active during GFP_ATOMIC exhaustion (Joonas)

----------------------------------------------------------------
Jani Nikula (4):
      drm/i915/hdcp: check streams[] bounds before overflow
      drm/i915/hdcp: require monotonically increasing seq_num_v
      drm/i915/vrr: require valid min/max vfreq for VRR
      drm/i915/bios: range check LFP Data Block panel_type2

Joonas Lahtinen (1):
      drm/i915: Return NULL on error in active_instance

 drivers/gpu/drm/i915/display/intel_bios.c | 36 ++++++++++++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_hdcp.c | 12 +++++++----
 drivers/gpu/drm/i915/display/intel_vrr.c  |  4 ++++
 drivers/gpu/drm/i915/i915_active.c        |  7 +++++-
 4 files changed, 46 insertions(+), 13 deletions(-)
