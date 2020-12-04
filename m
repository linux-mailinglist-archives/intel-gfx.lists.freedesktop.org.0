Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9892CE9A2
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 09:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A05EB6E13C;
	Fri,  4 Dec 2020 08:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C8256E135
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 08:32:36 +0000 (UTC)
IronPort-SDR: 3CQdwcwe1yFVvHPlpGOLBhIn6hkEX+P4D2J+J8cx4NZGOdnLCbck5jODdQ45pxhw3qGqRMWKUC
 gZiyJnH6BaeQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="169840833"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="169840833"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 00:32:35 -0800
IronPort-SDR: 0zLC0RlL6j4COljRcCgQpvRV5UwwS24H5o+HHF4g9lYwJkntquB1VQ+KvByeVJUI1KfD5peguy
 nFRBRzt9XS7A==
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="362110811"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 00:32:32 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 13:48:44 +0530
Message-Id: <20201204081845.26528-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Display glitches fixes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TGL chrome-OS platform has observed display glitches while
display brightness is being changed rapidly.
It creates a scenario where brightness is being changed simultaneously
with display flips updates in different threads.

Brightness update requires pps_lock, current pps_lock implementation
requires to get AUX power domain, which triggers DC3CO disallow/allow
sequence being async with display flips.

This triggers a race between dc3co exit delay and display flip,
and potentially causing a display glitch due to some display register
being programmed before completing dc3co exit delay.
Exactly which register programming causing this glitch is still
being work in progressed.

This patch adds a optimization to avoid unnecessary "DC off"
power well enable/disable(D3CO disallow/allow) noise around
brightness update.

This patch helps to remove the display glitch in case of simultaneous
brightness update and display flips.

Anshuman Gupta (1):
  drm/i915/dp: optimize pps_lock wherever required

 drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++++--
 1 file changed, 45 insertions(+), 2 deletions(-)

-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
