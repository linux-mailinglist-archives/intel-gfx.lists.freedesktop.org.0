Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACBHFj2vhGk14QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:54:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6B6F4497
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 15:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6798710E8F3;
	Thu,  5 Feb 2026 14:54:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UYIYUUaE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB2910E227;
 Thu,  5 Feb 2026 14:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770303289; x=1801839289;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QY88kpnNO/vwz9qvGSaY6OPX6wd5eXzHYD+rY0duRuQ=;
 b=UYIYUUaEgz/o0N15HRtdiKWXIHqtLzcxQj+4LPR+BeMCkr4ZnLYfq7WG
 lV1VY4ZDuZvmsPMkaT7FrYGRFKhtsQjoRPmAhPpCPZhrQiCHbhj3XiVgf
 kMnPWg5EYw0MhlN1OeyYtz8dzLQY/lJbpxzyFFagW+FnjhntflHXKezMI
 eq/i9/J2dhZ0fKldWeVU0qBgqAByKfn4+pPwNr4Wd3KJzj2bpl37HAz/n
 /yqHRBXxPmcIi1lh6NHICSiGwXlZQNXCMRyc/0s38LjKrID2wJ71pSeo/
 Fb4DjTJG6SMXSiwFghzy6kOJlzXBteZEL8py7zkarihs3VCymfF9XdOgy Q==;
X-CSE-ConnectionGUID: q9RqSZhOQ2yun14CpeSzCw==
X-CSE-MsgGUID: WmtxXl0zS82j5x7Su8M4Cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="89083588"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89083588"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:54:49 -0800
X-CSE-ConnectionGUID: afkCjJYITDOzTm9o3tMG+w==
X-CSE-MsgGUID: wwOKus6XQ62B4RScCTRGaw==
X-ExtLoop1: 1
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.76])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 06:54:45 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: [PATCH i-g-t v5 0/6] lsgpu: Report upstream port link bandwidth
Date: Thu,  5 Feb 2026 15:51:49 +0100
Message-ID: <20260205145427.1338534-8-janusz.krzysztofik@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9E6B6F4497
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

v5: Address PCI_HEADER_TYPE_MASK missing from <linux/pci_regs.h> in CI,
  - add libpci to docker files.
v4: Also change RETRIES_GET_PARENT to RETRIES_GET_DEVICE for consistency
    with renamed variables (Krzysztof),
  - replace 0x7f constant with PCI_HEADER_TYPE_MASK symbol (Krzysztof),
  - free already allocated numeric codename before replacing (Sebastian),
  - visually separate bridge specific updates of attributes already
    populated by find_or_add_igt_device from bridge specific attribute
    assignments.
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

Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: Krzysztof Karas <krzysztof.karas@intel.com>

Janusz Krzysztofik (6):
  lib/igt_device_scan: Don't print fake link bandwidth attributes
  lib/igt_device_scan: Split out reusable part of update_or_add_parent
  lib/igt_device_scan: Include PCIe bridge upstream port if available
  lib/igt_device_scan: List PCIe bridge ports after their children
  lib/igt_device_scan: Omit AER statistics data from attributes
  lib/igt_device_scan: Print GPU upstream port parent/child relations

 Dockerfile.build-debian-arm64   |   1 +
 Dockerfile.build-debian-armhf   |   1 +
 Dockerfile.build-debian-minimal |   1 +
 Dockerfile.build-fedora         |   1 +
 lib/igt_device_scan.c           | 211 +++++++++++++++++++++++++++-----
 lib/meson.build                 |   2 +
 meson.build                     |   1 +
 7 files changed, 185 insertions(+), 33 deletions(-)

-- 
2.52.0

