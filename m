Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJv6HRo1eml+4gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 17:11:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C48D1A53A7
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 17:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8286610E731;
	Wed, 28 Jan 2026 16:11:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IgmEirAa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DD7E10E728;
 Wed, 28 Jan 2026 16:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769616662; x=1801152662;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dglD2tqWP6Gx+EOOXxz7LiZDSjZktuShKDF/XLpMIuI=;
 b=IgmEirAaYeNYxaT8etRwqGnm0aHR8pnWKSBpBrmkf7WqFDuFXpavXchP
 dYifJMGyVj7AJFlHohgKkmjO7/GE6YfB3W6k3ZDjWHGv7wBebk8rNcDw8
 nYHmBXTb4QpZ7Ma16jckRhuYpZCsvoNYf48GVz1i/msfUBiZO9VFL5nDc
 oN8xbyVjQ4IJdJUWOHkRssn3KnIqzwn+Lmk1LoXYRBFVigZKaUJyg0Zn3
 RucefRCzmCoZjwoej1U2tN2GG3Jcr++tFr6YV0Vd3H4Lpscmtbdpk0sL4
 Tgu8dWRhW8hYkVwB1TLAu5iEMyuIsC/w+NdhBfhC/S3sHQLijUegO9AVq A==;
X-CSE-ConnectionGUID: T79+wAH8Ss+fafaIdOqiqQ==
X-CSE-MsgGUID: kiPNyCp9TwWp3LpVp25qeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="82262407"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="82262407"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 08:11:01 -0800
X-CSE-ConnectionGUID: NWNHiCQdR6e7WBcqVeVeIQ==
X-CSE-MsgGUID: 8o6tTXs2Sd+QL8Is+yEbxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="208546935"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.210])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 08:10:58 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v3 0/6] lsgpu: Report upstream port link bandwidth
Date: Wed, 28 Jan 2026 17:08:58 +0100
Message-ID: <20260128161041.225652-8-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.52.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim]
X-Rspamd-Queue-Id: C48D1A53A7
X-Rspamd-Action: no action

Users of Intel discrete graphics adapters are confused with fake
information on PCIe link bandwidth (speed and size) of their GPU devices
reported by tools like lspci or lsgpu.  That fake information is
unfortunately provided by hardware, Linux PCI subsystem just exposes it
untouched to upper layers, including userspace via sysfs, and userspace
tools just report those fake values.

While we can't do much about the kernel side or general purpose userspace
tools like lspci, we can try to address the issue with our lsgpu utility.

Correct link bandwidth attributes of a discrete GPU card can be obtained
from the kernel by looking not at the PCI device of the GPU itself, only
at a PCIe upstream port of the card's PCI bridge.  For integrity with
content of the sysfs and with output from the other tools, we are not
going to replace the fake information with that from the bridge upstream
port, only show that port and its attributes themselves while listing
devices.

Since the tool uses our udev based igt_device_scan library for identifying
GPU devices and printing their properties and attributes, modifications
that we need apply to that library.

v3: Fix incorrect use of ffs(),
  - fix bridge link attribute printing suppressed with DEVTYPE_DISCRETE,
  - in commit description, elaborate more on reasons for using libpci.
v2: Keep dump_props_and_attrs() generic: hand over decision on omitting
    link attributes to the caller, and implementation of the check to a
    helper (Sebastian),
  - drop unclear GET_REG_MASK macro (Sebastian),
  - reuse no longer needed variable containing PCI_HEADER_TYPE for storing
    PCI_EXP_FLAGS_TYPE,
  - maintain a single instance of struct pci_access throughout processing
    of the whole udev device list (Sebastian),
  - hand over detection of AER attributes to a helper,
  - merge a formerly separate patch "lib/igt_device_scan: Don't print
    bridge not applicable attributes" into "lib/igt_device_scan: Print GPU
    upstream port parent/child relations" (Sebastian),
  - allocate memory to local attributes of a bridge for safety (Sebastian),
  - no need for DEVTYPE_BRIDGE, just skip attributes if NULL.

Janusz Krzysztofik (6):
  lib/igt_device_scan: Don't print fake link bandwidth attributes
  lib/igt_device_scan: Split out reusable part of update_or_add_parent
  lib/igt_device_scan: Include PCIe bridge upstream port if available
  lib/igt_device_scan: List PCIe bridge ports after their children
  lib/igt_device_scan: Omit AER statistics data from attributes
  lib/igt_device_scan: Print GPU upstream port parent/child relations

 lib/igt_device_scan.c | 201 +++++++++++++++++++++++++++++++++++-------
 lib/meson.build       |   2 +
 meson.build           |   1 +
 3 files changed, 172 insertions(+), 32 deletions(-)

-- 
2.52.0

