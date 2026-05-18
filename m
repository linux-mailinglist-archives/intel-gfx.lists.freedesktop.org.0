Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGCoNPY6C2qWEwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 18:14:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEF9570AF1
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 18:14:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5362C10E5D9;
	Mon, 18 May 2026 16:14:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YNpc7kPx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60DB210E5D9;
 Mon, 18 May 2026 16:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779120882; x=1810656882;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=bUexSb1yegxjRiPwypenR2xiTr2R7r9J7au1fp09hgE=;
 b=YNpc7kPx8suJPI8dxBK5lUIHNX5KQIZrTYyNtWQyAIoO4mEjOej035Yr
 xms5QhWRLc5y2VZekdfYA8yjnjM48Ghhk65bt0jLeOJZkDWnRD4oLJDHA
 QVYXOmYhmuUr7fx1XxhLIr3lr6lOBntUXaQiWeyZDsZNeP3LIrS4M+R37
 QqTE00b6XFzWvOiD/GQ8pXFmvAHkPjTvdssYTt6PrdVcBLKxSVopa4YY/
 7tJ3jB5dW9P4dJT73htXSwrF6Px8d0iphadPwT9uvocLmTfmkh8P94Uik
 8cW2Pb5qACA1yCHbjuWvl85J9cZsptA1MGttwCC7vz/0XY6tFudbaKRB4 A==;
X-CSE-ConnectionGUID: TSpBpWH6T5aWZiHOz09P1g==
X-CSE-MsgGUID: lPBZwzE4SayKq0loXhLhqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="91370621"
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="91370621"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 09:14:42 -0700
X-CSE-ConnectionGUID: iKw5FOx9QS+wOtcJ2nCtCA==
X-CSE-MsgGUID: K9tg67nNTCGhMsKU8CHJcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,242,1770624000"; d="scan'208";a="235219014"
Received: from aherrold-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.133])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 09:14:37 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v4 0/5] drm/i915/bw: Split bandwidth params into platform-
 and display-IP-specific structs
Date: Mon, 18 May 2026 13:13:59 -0300
Message-Id: <20260518-separate-platform-from-diplay-ip-specific-bw-params-v4-0-918528006549@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6XOzQrCMAzA8VeRno107dYNT76HeOhHqgG3lnZMh
 +zd7bwoHvX4DyG/PFjGRJjZfvNgCSfKFIYS9XbD7EUPZwRypZngQvGad5Ax6qRHhHjVow+pB59
 CD45Kz0ARckRLniyYG6yrfQbVGG80V1waZOVyTOjp/lKPp9IXymNI8+uJqVqn/3lTBRyEtI3UX
 rfO8AMNI153NvRs9SbxNpqq+s0QxcBWCWs6pYTT34b8NOrfDFkM1bWidcqjRPtpLMvyBAEvZr6
 +AQAA
X-Change-ID: 20260408-separate-platform-from-diplay-ip-specific-bw-params-65bfba0603be
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>
X-Mailer: b4 0.15-dev
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: CEEF9570AF1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some of the parameters of used in display bandwidth calculations are
tied to the platform and are orthogonal to the display IP.  After talking
with the hardware team, we now have the information (and Bspec has been
updated) that the members deprogbwlimit and derating of struct
intel_sa_info are such platform-specific ones.

With that, we are now able to make the driver code more aligned with the
hardware by splitting structs intel_sa_info into two different structs:
one that is platform-specific and another that is display-IP-specific.

That change also allows us to simplify how we select the parameters for
the calculation.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
Changes in v4:
- Minor updates to fix issues captured by CI; see changelog in
  individual patches for details.
- Link to v3: https://patch.msgid.link/20260514-separate-platform-from-diplay-ip-specific-bw-params-v3-0-68727d6fe3ec@intel.com

Changes in v3:
- Incorporated review feedback; see each individual patch for details.
- Link to v2: https://patch.msgid.link/20260511-separate-platform-from-diplay-ip-specific-bw-params-v2-0-e762cb8662da@intel.com

Changes in v2:
- Incorporated review feedback; see each individual patch for details.
- Link to v1: https://patch.msgid.link/20260408-separate-platform-from-diplay-ip-specific-bw-params-v1-0-23c53afa7db0@intel.com

---
Gustavo Sousa (5):
      drm/i915/bw: Don't call intel_dram_info() too early
      drm/i915/bw: Extract platform-specific parameters
      drm/i915/bw: Deduplicate intel_sa_info instances
      drm/i915/bw: Rename struct intel_sa_info to intel_display_bw_params
      drm/i915/bw: Extract get_display_bw_params()

 drivers/gpu/drm/i915/display/intel_bw.c | 205 ++++++++++++++++++++------------
 1 file changed, 128 insertions(+), 77 deletions(-)
---
base-commit: f05be6b9858836632ce6b4839e1bda3a470278b9
change-id: 20260408-separate-platform-from-diplay-ip-specific-bw-params-65bfba0603be

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

