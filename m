Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CE8D05896
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 19:29:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4CB310E7AF;
	Thu,  8 Jan 2026 18:29:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JVNm/8EK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DDC210E377;
 Thu,  8 Jan 2026 18:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767896971; x=1799432971;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WG+n5vq/aDeVCgoOf5gt8For6mIIevmbhGvSFQDLGCs=;
 b=JVNm/8EK/xZb0bjxuaXz8WrOXPXNDXmcDtxa2gSUdxA5yVJDaWCikD2m
 0lzN79JiM8b64eZwWk+c6xMsAoEvew0QDxg5WaVKufnfdCTWONB68xJrY
 cPzD+fNMER9kreDsKfyTSzRNlFHGePf33gdMw07HcQH0SczkMC/kehPmg
 C+3L0WpKaNAX7Rx3c7FE6Kx7y09pNCV2uzlXDr7nFw/bpHrRD/4NkiVRl
 +nlq2b0KNjlW4T0ODZvo12oqq1vgXc2h1HSB96Pyb7Hyh1BQYmNtlW1k9
 mrPmsCmZGlN0NCIPm5Pzg/KDeLO2VhNgoL/mAHAZNd8vgLJlXiy+xZk35 A==;
X-CSE-ConnectionGUID: i7jbdvH2Tn6YBl91hyFC5A==
X-CSE-MsgGUID: xohS3q8pTMCcjoyXmpfK8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="73138359"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="73138359"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 10:29:31 -0800
X-CSE-ConnectionGUID: xaHfVR8qS6u7vUFjOyxtpA==
X-CSE-MsgGUID: O6SfldpbRaygI6fD5lhJqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="240760225"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.114])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 10:29:30 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: [RFC i-g-t] Extend lsgpu output with data from discrete GPU upstream
 bridge
Date: Thu, 08 Jan 2026 19:29:27 +0100
Message-ID: <24219669.6Emhk5qWAg@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi,

Before I submit patches, I'd like you to have a look at the below provided 
example of proposed output from a modified lsgpu tool and share your comments.

Users complain about PCIe link bandwith of their Intel discrete GPU devices 
limited to 2.5 GT/s x1, unable to utilize capabilities of their motherboards, 
see https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753.  So far 
Intel has provided the following explanation:
https://www.intel.com/content/www/us/en/support/articles/000094587/graphics.html

That's not true.  While PCI devices associated directly with Intel discrete 
GPUs provide fake data about link speed and width capabilities and status, 
their upstream PCIe bridges report correct, actual values of those link 
bandwidth attributes.

While users may use lspci tool to examine bridge devices manually themselves, 
there is an idea of extending our lsgpu tool with support for printing that 
data.  In order for the tool to show correct link bandwidth of a discrete GPU, 
we need to identify its PCIe upstream bridge and get that information from 
that bridge.  For consistency with lspci output, we are not going to replace 
silently the fake data with those obtained from the bridge, only omit that 
data from our list of the GPU PCI device attributes, and complement the 
printout with more or less complete information about the bridge itself.

Please have a look at the example output provided below and share your 
comments, if any.

$ sudo ./build/tools/lsgpu -s
sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/card0
    subsystem       : drm
    drm card        : /dev/dri/card0
    parent          : sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0

sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/renderD128
    subsystem       : drm
    drm render      : /dev/dri/renderD128
    parent          : sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0

sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0
    subsystem       : pci
    drm card        : /dev/dri/card0
    drm render      : /dev/dri/renderD128
    vendor          : 8086
    device          : 56A0
    codename        : dg2
    bridge          : sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0

sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0
    subsystem       : pci
    vendor          : 8086
    device          : 4FA0

$ sudo ./build/tools/lsgpu -p
========== drm:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/card0 ==========

[properties]
DEVPATH                         : /devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/card0
ID_PATH_TAG                     : pci-0000_03_00_0
CURRENT_TAGS                    : :seat:uaccess:master-of-seat:
TAGS                            : :seat:uaccess:master-of-seat:
MINOR                           : 0
DEVNAME                         : /dev/dri/card0
ID_PATH                         : pci-0000:03:00.0
SUBSYSTEM                       : drm
DEVTYPE                         : drm_minor
DEVLINKS                        : /dev/dri/by-path/pci-0000:03:00.0-card
ID_FOR_SEAT                     : drm-pci-0000_03_00_0
USEC_INITIALIZED                : 7056426
MAJOR                           : 226

[attributes]
gt_cur_freq_mhz                 : 600
gt_act_freq_mhz                 : 0
subsystem                       : drm
gt_max_freq_mhz                 : 2400
gt_RP1_freq_mhz                 : 600
gt_RPn_freq_mhz                 : 300
device                          : 0000:03:00.0
gt_boost_freq_mhz               : 2400
gt_RP0_freq_mhz                 : 2400
error                           : No error state collected
gt_min_freq_mhz                 : 300
dev                             : 226:0

========== drm:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/renderD128 ==========

[properties]
DEVPATH                         : /devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/renderD128
ID_PATH                         : pci-0000:03:00.0
MINOR                           : 128
DEVNAME                         : /dev/dri/renderD128
ID_PATH_TAG                     : pci-0000_03_00_0
SUBSYSTEM                       : drm
DEVTYPE                         : drm_minor
DEVLINKS                        : /dev/dri/by-path/pci-0000:03:00.0-render
USEC_INITIALIZED                : 7057304
MAJOR                           : 226

[attributes]
subsystem                       : drm
dev                             : 226:128
device                          : 0000:03:00.0

========== pci:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0 ==========
card device                     : /dev/dri/card0
render device                   : /dev/dri/renderD128
codename                        : dg2

[properties]
PCI_ID                          : 8086:56A0
DEVPATH                         : /devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0
ID_PCI_INTERFACE_FROM_DATABASE  : VGA controller
ID_PATH_TAG                     : pci-0000_03_00_0
PCI_CLASS                       : 30000
ID_PCI_CLASS_FROM_DATABASE      : Display controller
ID_PCI_SUBCLASS_FROM_DATABASE   : VGA compatible controller
PCI_SUBSYS_ID                   : 8086:1029
MODALIAS                        : pci:v00008086d000056A0sv00008086sd00001029bc03sc00i00
PCI_SLOT_NAME                   : 0000:03:00.0
USEC_INITIALIZED                : 7056140
DRIVER                          : i915
ID_PATH                         : pci-0000:03:00.0
SUBSYSTEM                       : pci

[attributes]
consistent_dma_mask_bits        : 46
power_state                     : D0
class                           : 0x030000
subsystem                       : pci
iommu_group                     : 17
enable                          : 1
subsystem_vendor                : 0x8086
reset_method                    : flr bus
vendor                          : 0x8086
boot_vga                        : 1
resource2_resize                : 0000000000007f00
subsystem_device                : 0x1029
driver                          : i915
iommu                           : dmar0
d3cold_allowed                  : 1
local_cpulist                   : 0-23
ari_enabled                     : 1
numa_node                       : -1
dma_mask_bits                   : 46
irq                             : 124
driver_override                 : (null)
device                          : 0x56a0
local_cpus                      : ffffff
revision                        : 0x08
msi_bus                         : 1
broken_parity_status            : 0
devspec                         : 

========== pci:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==========

[properties]
PCI_ID                          : 8086:4FA0
DEVPATH                         : /devices/pci0000:00/0000:00:01.0/0000:01:00.0
ID_PCI_INTERFACE_FROM_DATABASE  : Normal decode
ID_PATH_TAG                     : pci-0000_01_00_0
PCI_CLASS                       : 60400
ID_PCI_CLASS_FROM_DATABASE      : Bridge
ID_PCI_SUBCLASS_FROM_DATABASE   : PCI bridge
PCI_SUBSYS_ID                   : 0000:0000
MODALIAS                        : pci:v00008086d00004FA0sv00000000sd00000000bc06sc04i00
PCI_SLOT_NAME                   : 0000:01:00.0
USEC_INITIALIZED                : 7055925
DRIVER                          : pcieport
ID_PATH                         : pci-0000:01:00.0
SUBSYSTEM                       : pci

[attributes]
firmware_node                   : device:04
irq                             : 16
iommu_group                     : 14
reset_method                    : bus
device                          : 0x4fa0
d3cold_allowed                  : 1
broken_parity_status            : 0
consistent_dma_mask_bits        : 32
numa_node                       : -1
local_cpus                      : ffffff
subsystem                       : pci
iommu                           : dmar0
enable                          : 1
subsystem_vendor                : 0x0000
secondary_bus_number            : 2
current_link_speed              : 16.0 GT/s PCIe
max_link_width                  : 16
vendor                          : 0x8086
max_link_speed                  : 16.0 GT/s PCIe
msi_bus                         : 1
current_link_width              : 16
dma_mask_bits                   : 32
driver_override                 : (null)
ari_enabled                     : 0
class                           : 0x060400
local_cpulist                   : 0-23
revision                        : 0x01
subordinate_bus_number          : 4
subsystem_device                : 0x0000
driver                          : pcieport
devspec                         : 
power_state                     : D0


A few AER related attributes that provide error statistics in the form of 
hard to format lists of multiple key-values pairs each have been omitted form 
the printout.

Thanks,
Janusz


