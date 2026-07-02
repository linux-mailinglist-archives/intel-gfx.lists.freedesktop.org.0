Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AZsIGe60RmqwbwsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 20:58:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA79E6FC5BA
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 20:58:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eCUGKmoI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6D210E358;
	Thu,  2 Jul 2026 18:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B849110E1A6;
 Thu,  2 Jul 2026 18:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783018729; x=1814554729;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dM1qHjZoMcHwM/c/sIZAxACSR324IUA3ap7X1Hy+TzA=;
 b=eCUGKmoIOKw8EcgMfKsC8DMO4GUsdAnelOH+farswDcnwQTYSPIdy1Vu
 7U4eLpl/+WTvgl7UuVD6BpY673hyNPxnBiyEWR4527J+eVhJUa0AQ3qVO
 btkxpQE1obkF0IWqJpH6w9CEds6IAPk7pbkyo9hx2rc0zDPRZ09jYZUjA
 vTjxrHIM0ZfKbFKkCa1NuzuVfUlWXFc4xw7HmvPL2VGboDupXD7j1YHBl
 PgHPopiUOabSSbOC3QM+z+bSCKFFTTRm3LoC7lIZ0x8DZ4tPvlEpJI4VE
 /mSChhskmwhlN8ZMwtd4KYvI60Se0P0IuyzUZTGLUZHOQU26Ma8ZJQ7+U A==;
X-CSE-ConnectionGUID: SraE50i0SbOAn16VpnNZkA==
X-CSE-MsgGUID: Bs/olIMZQwWIcTt3rtYnVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="71300024"
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="71300024"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 11:58:48 -0700
X-CSE-ConnectionGUID: 1nVIpUpjRtWoECwPOsuLhA==
X-CSE-MsgGUID: ONCrzk2ITU2p0NqB54izKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,144,1779174000"; d="scan'208";a="251862150"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP; 02 Jul 2026 11:58:46 -0700
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v10 0/8] Vswing / Pre-emphasis Override
Date: Thu,  2 Jul 2026 20:58:31 +0200
Message-ID: <20260702185839.4042397-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DA79E6FC5BA

Next version of [1]. v5 of IGT part is at [2].

Previous approach of deconstifying predefined tables wasn't a good idea.
In order to follow Suraj's and Jani's comments, patch introducing this
change has been dropped.

Also, instead of adding new if-ladder into intel_ddi_buf_trans_get(),
one from intel_ddi_buf_trans_init() has been re-used. This required
adding new vfunc into intel_encoder.

This series still does not enable LT.

Tested by loading xe with custom VBT#57 on PTL. Same for i915 on EHL.

Custom VBT#57 from PTL decoded by [2]:

Block 57 min size 2 less than block size 1154
BDB block 57 (1154 bytes, min 2 bytes) - Vswing Preemph:
        Number of vswing tables: 6
        Number of columns: 3
        Number of rows: 16
        PHY type: Cx0
        Vswing Table #1 (C10: DP 1.4 RBR/HBR; C20: UNUSED):
                Preset #01: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #03: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #04: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #05: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #06: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #07: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #08: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #09: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #10: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #11: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #13: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #14: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #15: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #16: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
        Vswing Table #2 (C10: DP 1.4 HBR2/HBR3; C20: UNUSED):
                Preset #01: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #03: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #04: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #05: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #06: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #07: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #08: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #09: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #10: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #11: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #13: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #14: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #15: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #16: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
        Vswing Table #3 (C10: eDP non-HBR3; C20: UNUSED):
                Preset #01: vswing: 0x0000001a, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x00000021, pre-cursor: 0x00000000, post-cursor: 0x00000006
                Preset #03: vswing: 0x00000026, pre-cursor: 0x00000000, post-cursor: 0x0000000b
                Preset #04: vswing: 0x0000002b, pre-cursor: 0x00000000, post-cursor: 0x00000013
                Preset #05: vswing: 0x00000027, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #06: vswing: 0x0000002d, pre-cursor: 0x00000000, post-cursor: 0x00000007
                Preset #07: vswing: 0x0000002e, pre-cursor: 0x00000000, post-cursor: 0x0000000d
                Preset #08: vswing: 0x0000002e, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #09: vswing: 0x00000037, pre-cursor: 0x00000000, post-cursor: 0x00000007
                Preset #10: vswing: 0x0000003e, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #11: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #13: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #14: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #15: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #16: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
        Vswing Table #4 (C10: eDP HBR3; C20: UNUSED):
                Preset #01: vswing: 0x0000001a, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x00000021, pre-cursor: 0x00000000, post-cursor: 0x00000006
                Preset #03: vswing: 0x00000026, pre-cursor: 0x00000000, post-cursor: 0x0000000b
                Preset #04: vswing: 0x0000002b, pre-cursor: 0x00000000, post-cursor: 0x00000013
                Preset #05: vswing: 0x00000027, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #06: vswing: 0x0000002d, pre-cursor: 0x00000000, post-cursor: 0x00000007
                Preset #07: vswing: 0x0000002e, pre-cursor: 0x00000000, post-cursor: 0x0000000d
                Preset #08: vswing: 0x0000002e, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #09: vswing: 0x00000037, pre-cursor: 0x00000000, post-cursor: 0x00000007
                Preset #10: vswing: 0x0000003e, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #11: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #13: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #14: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #15: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #16: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
        Vswing Table #5 (C10: UNUSED; C20: DP 1.4):
                Preset #01: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #03: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #04: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #05: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #06: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #07: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #08: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #09: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #10: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #11: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #13: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #14: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #15: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #16: vswing: 0x00000000, pre-cursor: 0x00000000, post-cursor: 0x00000000
        Vswing Table #6 (C10: UNUSED; C20: DP 2.X):
                Preset #01: vswing: 0x00000030, pre-cursor: 0x00000000, post-cursor: 0x00000000
                Preset #02: vswing: 0x0000002b, pre-cursor: 0x00000000, post-cursor: 0x00000005
                Preset #03: vswing: 0x00000028, pre-cursor: 0x00000000, post-cursor: 0x00000008
                Preset #04: vswing: 0x00000025, pre-cursor: 0x00000000, post-cursor: 0x0000000b
                Preset #05: vswing: 0x00000021, pre-cursor: 0x00000000, post-cursor: 0x0000000f
                Preset #06: vswing: 0x0000002e, pre-cursor: 0x00000002, post-cursor: 0x00000000
                Preset #07: vswing: 0x0000002a, pre-cursor: 0x00000002, post-cursor: 0x00000004
                Preset #08: vswing: 0x00000026, pre-cursor: 0x00000002, post-cursor: 0x00000008
                Preset #09: vswing: 0x00000023, pre-cursor: 0x00000002, post-cursor: 0x0000000b
                Preset #10: vswing: 0x00000021, pre-cursor: 0x00000002, post-cursor: 0x0000000d
                Preset #11: vswing: 0x0000002c, pre-cursor: 0x00000004, post-cursor: 0x00000000
                Preset #12: vswing: 0x00000028, pre-cursor: 0x00000004, post-cursor: 0x00000004
                Preset #13: vswing: 0x00000025, pre-cursor: 0x00000004, post-cursor: 0x00000007
                Preset #14: vswing: 0x00000021, pre-cursor: 0x00000004, post-cursor: 0x0000000b
                Preset #15: vswing: 0x00000028, pre-cursor: 0x00000008, post-cursor: 0x00000000
                Preset #16: vswing: 0x0000001e, pre-cursor: 0x00000002, post-cursor: 0x00000002

Custom VBT#57 from EHL decoded by [2]:

Block 57 min size 2 less than block size 1322
BDB block 57 (1322 bytes, min 2 bytes) - Vswing Preemph:
        Warning: purpose of tables varies between EHL & JSL
        Number of vswing tables: 3
        Number of columns: 11
        Number of rows: 10
        PHY type: Combo
        Vswing Table #1 (High Vswing eDP/DP upto HBR3):
          V0-P0:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V0-P1:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V0-P2:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V0-P3:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V1-P0:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V1-P1:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V1-P2:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V2-P0:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V2-P1:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V3-P0:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
        Vswing Table #2 (Low Vswing eDP upto HBR2):
          V0-P0:
            dw2_swing_sel:      0x0000000a, dw7_n_scalar:       0x00000033, dw4_cursor_coeff:   0x0000003f,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V0-P1:
            dw2_swing_sel:      0x0000000a, dw7_n_scalar:       0x00000047, dw4_cursor_coeff:   0x00000038,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000007, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V0-P2:
            dw2_swing_sel:      0x0000000c, dw7_n_scalar:       0x00000064, dw4_cursor_coeff:   0x00000033,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x0000000c, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V0-P3:
            dw2_swing_sel:      0x00000006, dw7_n_scalar:       0x0000007f, dw4_cursor_coeff:   0x0000002f,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000010, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V1-P0:
            dw2_swing_sel:      0x0000000a, dw7_n_scalar:       0x00000046, dw4_cursor_coeff:   0x0000003f,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V1-P1:
            dw2_swing_sel:      0x0000000c, dw7_n_scalar:       0x00000064, dw4_cursor_coeff:   0x00000037,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000008, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V1-P2:
            dw2_swing_sel:      0x00000006, dw7_n_scalar:       0x0000007f, dw4_cursor_coeff:   0x00000032,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x0000000d, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V2-P0:
            dw2_swing_sel:      0x0000000c, dw7_n_scalar:       0x00000061, dw4_cursor_coeff:   0x0000003f,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V2-P1:
            dw2_swing_sel:      0x00000006, dw7_n_scalar:       0x0000007f, dw4_cursor_coeff:   0x00000037,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000008, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V3-P0:
            dw2_swing_sel:      0x00000006, dw7_n_scalar:       0x0000007f, dw4_cursor_coeff:   0x0000003f,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
        Vswing Table #3 (Low Vswing eDP upto HBR3):
          V0-P0:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V0-P1:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V0-P2:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V0-P3:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V1-P0:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V1-P1:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V1-P2:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V2-P0:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V2-P1:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000
          V3-P0:
            dw2_swing_sel:      0x00000000, dw7_n_scalar:       0x00000000, dw4_cursor_coeff:   0x00000000,
            dw4_post_cursor_2:  0x00000000, dw4_post_cursor_1:  0x00000000, rcomp_scalar:       0x00000000,
            rterm_select:       0x00000000, tap3_disable:       0x00000000, tap2_disable:       0x00000000,
            cursor_program:     0x00000000, coeff_polarity:     0x00000000

BR,
Michał

[1] https://lore.kernel.org/intel-gfx/20260626234246.2446451-1-michal.grzelak@intel.com/
[2] https://lore.kernel.org/igt-dev/20260702182619.3973788-1-michal.grzelak@intel.com/

---
Changelog:
v9->v10
- drop deconstifying default tables (Suraj, Jani)
- add separate non-const field for `entries` caching
- cache `entries` into const field after data is overwritten (Jani)
- call dedicated VS/PE-O vfunc

v8->v9 
- init vspeo before using it
- deconstify intel_ddi_buf_trans_entry in separate commit

v7->v8
- remove comments (Suraj)
- add check for LT (Suraj)

v6->v7
- parse VBT#57 before blocks dependant on child device list (Jani)
- expand VS/PE-O acronym in debug logging (Jani)
- handle VS/PE-O's VBT details in intel_bios_* functions (Jani)
- remove vspeo's cast to (void *) (Jani)
- check devdata->vspeo if VS/PE-O was requested
- call encoder->get_buf_trans() once (Jani)
- return NULL from intel_bios_get_* when using default (Jani)
- validate VS/PE-O in intel_bios.c (Jani)
- inline *_get_vspeo_buf_trans()
- remove temporarily LT

v5->v6
- check if devdata is not NULL
- add Bspec (Suraj)
- remove drm_WARN_ONCE (Suraj)
- pass default VS/PE tables to LT's BIOS accessor (Suraj)
- set txswing & _level from default VS/PE tables (Suraj)
- add helper checking if VS/PE-O has been allocated (Suraj)

v4->v5
- set devdata->vspeo->num_entries in intel_bios.c
- add if-ladder instead of function pointer
- blend index computation with table parsing
- remove WARN and debug messages
- remove enums entirely
- add spaces around operators (Suraj)
- remove spaces after type casting (Suraj)
- remove INTEL_DISPLAY_STATE_WARN (Suraj)
- change funcs prefix from snps_ to mtl_ (Suraj)

v3->v4
- add Bspec (Suraj)
- remove unnecessary init of VS/PE-O metadata (Suraj)
- add helper for computing number of rows (Suraj)
- fix num_rows's type (Jani, Suraj)
- declare num_rows (Suraj)
- change debug message when requesting VS/PE-O (Suraj)
- stick to solely changing VBT data into current structures (Jani)
- move iterator declaration to declaration block (Suraj)

v2->v3
- remove unnecessary braces from if block (Suraj)
- return -EINVAL instead of -1 (Suraj)



Michał Grzelak (8):
  drm/i915/bios: search for VBT #57 by default
  drm/i915/bios: store VBT #57's metadata in intel_vbt_data
  drm/i915/bios: print VS/PE-O port info
  drm/i915/bios: de/allocate VS/PE-O buffers for each port
  drm/i915/buf_trans: add vfunc for VS/PE-O
  drm/i915: override Snps's VS/PE when requested
  drm/i915: override Combo's VS/PE when requested
  drm/i915/bios: remove VS/PE-O warning

 drivers/gpu/drm/i915/display/intel_bios.c     | 287 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_bios.h     |  14 +
 .../drm/i915/display/intel_ddi_buf_trans.c    |  86 +++++-
 .../gpu/drm/i915/display/intel_display_core.h |   7 +
 .../drm/i915/display/intel_display_types.h    |   3 +
 5 files changed, 383 insertions(+), 14 deletions(-)

-- 
2.45.2

