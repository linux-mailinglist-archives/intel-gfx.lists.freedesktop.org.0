Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eEp9LmnqAWpHmQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD135105C7
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 16:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2C4210E7A4;
	Mon, 11 May 2026 14:40:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gEg2ZEul";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5640B10E101
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 May 2026 16:24:25 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id
 46e09a7af769-7dbcb45153cso209921a34.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 09 May 2026 09:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778343864; x=1778948664; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=kgw+L8XNnYGvME6rXbV9iC3YSJ8U6lhlX0++8uG2LmQ=;
 b=gEg2ZEulHN6AJ6IvTw+kKDcFUpPeH5DUfo+iO7caFt9DPCRB1UEHbc/Mc6ekbYGvgk
 qGlViM7pnJCl+/maNAyDgxEvcW0fZUpZLkOVhKN2SgzaIMdIkRjuGOa4n85r4Rt5vilM
 MV4S8+BiA8d6vKokkxB9rJxPfBbfQb+MssWRl1tTfig22NSl2e0+ROTMpjxmyiPUKroI
 RSHFtUXkabwxqL4bOhM0Ee2JaEZONSngliyx9d6MwuZNUK5/C0pHEVeYWpOtPzX2n4Vk
 mC6ePJLwIxfKdpDCfaqDNvsw2DmobG1cOY8ChNLNkj4q40hxn372/x5bEIVaT6xBGZwJ
 3jWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778343864; x=1778948664;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=kgw+L8XNnYGvME6rXbV9iC3YSJ8U6lhlX0++8uG2LmQ=;
 b=fK8kOucYZwX9TTWDJr3QW4FGNSdPPjNfI0CIB3Pf/TY4mv1RTdmunRxaIP1OnoLAot
 d/G/xHQKl9rzSfY4sTSX+gkZZWs3Dpy+YMRqfdNlVLgFPv8tpYbHhcXTw4NZlvkrnRU6
 KlJmKKqZ3slf/nPOunRBnwCVq61++hPRH6Tov+a9pCQYKi8GF3BmEKks8VTJKyQUBE7L
 hhrqhQNDlhGKWPfgBEj0Uf8+Z8lD3tLVhDRxGTZDQGNBLS79x7Ej66MsEkbvzdpueKnx
 Oeb2gsJKx9VQiqVMgwUrQhHXx18PuAiFpN5ZXiWJ1ag896U1TfiHXdFRjrHfSb7jZ1pB
 JVfg==
X-Gm-Message-State: AOJu0YyWVKuBzPJdKHyU3IkaiVKEyvtAwl5G7FKAORRIUZCKTY9g/vWk
 qFbVRPet9Ym6rIqrJqW4TVg5RIzYYu8+bnugiDGHWiaAx779sO15pAuukVuzRDjzl+A=
X-Gm-Gg: Acq92OHWqxkQqKNqucShxmjQ5eL80egIRx9z5vPEIsYGwvLU0PPeCS84iRegjjQhaLb
 JE+F4+Cy7V5iBClCA58/xj7KV88Qq+10gw8Up3D3WaNF0si4FMEn6cNJL5kLmm7h19StD360SFc
 GNKuax/l6/HtrWliHy+ANnKHiIVkfyJveih6L9oxKQ93z0kSsfqv5FJPvrFk1MhC6dUM5YyV5WI
 o9POFHmoMyaHp6tKcGy/tERGG8IcEiDiM/WNrT5zCLjXbvFCJv4+Hl7/YNtRqZl9ICMcD4ow0Cg
 ZWdgUoVj/zwDv7fJDAHgauDYcNCX/0/WBIQHsyi1HuVXOE8m2/3nbTdnPFCXwIt3SLfWeJvmCNK
 CFoypboDkwvFxegH5cnNpTjxX/myX8cUyakUMAjLbCGwQUdZwYWIoLyN0lH1QJXq/crA/xFKf65
 3gUitC63HnD3/+Dn2vkW9hAUCF1PXfqljOpqCqNZQWr6GfS4G0kUxXCNT9sQlvEWlu3CX1Pvys5
 NQCI3+2DoCRxAoQAfvyKi5O
X-Received: by 2002:a05:6808:4f65:b0:47c:3d8d:1ff8 with SMTP id
 5614622812f47-48045236867mr5560241b6e.7.1778343864317; 
 Sat, 09 May 2026 09:24:24 -0700 (PDT)
Received: from localhost ([136.49.184.116]) by smtp.gmail.com with ESMTPSA id
 5614622812f47-47c76986404sm16691775b6e.15.2026.05.09.09.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2026 09:24:23 -0700 (PDT)
From: Aaron Esau <aaron1esau@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net,
 mika.kahola@intel.com, stable@vger.kernel.org,
 Aaron Esau <aaron1esau@gmail.com>
Subject: [PATCH 0/3] drm/i915/cx0: fix PLL enable failure handling on Meteor
 Lake
Date: Sat,  9 May 2026 11:24:04 -0500
Message-ID: <20260509162407.510539-1-aaron1esau@gmail.com>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 11 May 2026 14:40:35 +0000
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
X-Rspamd-Queue-Id: 6FD135105C7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DATE_IN_PAST(1.00)[46];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,linux.intel.com,intel.com,ursulin.net,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[aaron1esau@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Meteor Lake with a hybrid Intel/NVIDIA GPU setup, s2idle resume can
leave the CX0 PHY MSGBUS unresponsive. When this happens, the PLL
enable sequence silently fails: register writes via MSGBUS are dropped,
the PLL never locks, but the driver marks it as enabled and proceeds to
drive the pipe.

The root cause of the MSGBUS becoming unresponsive appears to be the
NVIDIA dGPU not participating in S0ix (addressed via the
NVreg_EnableS0ixPowerManagement module parameter). However, the i915
driver should handle PLL enable failures gracefully regardless of the
trigger.

This series:
  1. Fixes intel_cx0_pll_is_enabled() to check the hardware ACK bit,
     not just the driver-set REQUEST bit, so a PLL that failed to lock
     is correctly reported as disabled.
  2. Adds error propagation through the DPLL enable path: changes the
     .enable callback to return int, threads errors through
     _intel_enable_shared_dpll() and intel_dpll_enable(), and checks
     the result in hsw_crtc_enable() and ilk_pch_enable().
  3. Makes the CX0 PLL enable path return -ETIMEDOUT when the PHY
     fails to come out of reset or the PLL fails to lock.

Found on a Lenovo ThinkPad with Intel Ultra 7 155H and NVIDIA RTX 2000
Ada. Kernel traces before each crash:

  i915: Failed to bring PHY A to idle.
  i915: PHY A Read 0c70 failed after 3 retries.
  i915: Timeout waiting for DDI BUF A to get active
  i915: [CRTC:149:pipe A] flip_done timed out

Aaron Esau (3):
  drm/i915/cx0: check PLL ACK bit in intel_cx0_pll_is_enabled()
  drm/i915/dpll: add error propagation to DPLL enable path
  drm/i915/cx0: return errors from CX0 PLL enable on failure

 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 54 ++++++++----
 drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  6 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 10 ++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 87 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |  7 +-
 6 files changed, 117 insertions(+), 49 deletions(-)

-- 
2.54.0

