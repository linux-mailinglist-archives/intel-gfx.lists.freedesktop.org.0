Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0ACD1DC77
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 11:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C035810E59C;
	Wed, 14 Jan 2026 10:02:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AXMlMVXa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEEF210E59C;
 Wed, 14 Jan 2026 10:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768384955; x=1799920955;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Ltoi6d1y9hMQX7O/QunwiUXIEnec+Q4Y6102/vWTIfA=;
 b=AXMlMVXaUNuROYGx2ngmI4oaKNZ0dVNBeMUv3Ge/Ve1/O3915aJhNuMw
 YvGcCtvXdJZnmTw+jHe5R+udNg5ov78OjPI3SJcPZQatZh/SWMxyokGRq
 myYfuTEsvKuqAwDBd2ND4zpsWYH8gmmTS6kX97uzYkduuYvHNBwCZE/J5
 pK958OgCtf0FiWHr/J0QRQU2/+/O19m1k17KZbwRshyr7R1RGJqwG25fb
 DUu9b/fS053ncQ1uZbU4dsEDYsFjUzMzngAqm7VZCh9YYCcD3vdSsny4u
 N7emuIl7J9RKF3wVNb1LAOKnXQWsY0DveVvwAHVKaK5Hwe4vZa23D70Bh w==;
X-CSE-ConnectionGUID: 84kgNpWcTMSMoQm+n9LeAw==
X-CSE-MsgGUID: yfTTY1KJS8iqsFNeDJ3BWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="68686821"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="68686821"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 02:02:29 -0800
X-CSE-ConnectionGUID: Vxejt5gNQ8WSYM8vJY/F4g==
X-CSE-MsgGUID: 6DNflADcSWegW0spQ7GREQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="209143741"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.77])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 02:02:27 -0800
Date: Wed, 14 Jan 2026 11:02:24 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [RFC i-g-t] Extend lsgpu output with data from discrete GPU
 upstream bridge
Message-ID: <6o6jfwyzqbolkk5mwqfjmuzyoupjoj54lhrviwdney55m7e65o@itibavtjtbpi>
References: <24219669.6Emhk5qWAg@jkrzyszt-mobl2.ger.corp.intel.com>
 <3c6q6qy233qap2w6tibmjrsckkmnjqhsmrucf37z5uip3prgfb@qflifrueyydx>
 <14378338.RDIVbhacDa@jkrzyszt-mobl2.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <14378338.RDIVbhacDa@jkrzyszt-mobl2.ger.corp.intel.com>
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

On Tue, Jan 13, 2026 at 11:53:11AM +0100, Janusz Krzysztofik wrote:
> Hi Zbigniew,
> 
> Thanks for your comments.
> 
> On Monday, 12 January 2026 17:45:23 CET Zbigniew Kempczyński wrote:
> > On Thu, Jan 08, 2026 at 07:29:27PM +0100, Janusz Krzysztofik wrote:
> > > Hi,
> > > 
> > > Before I submit patches, I'd like you to have a look at the below provided 
> > > example of proposed output from a modified lsgpu tool and share your comments.
> > > 
> > > Users complain about PCIe link bandwith of their Intel discrete GPU devices 
> > > limited to 2.5 GT/s x1, unable to utilize capabilities of their motherboards, 
> > > see https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753.  So far 
> > > Intel has provided the following explanation:
> > > https://www.intel.com/content/www/us/en/support/articles/000094587/graphics.html
> > > 
> > > That's not true.  While PCI devices associated directly with Intel discrete 
> > > GPUs provide fake data about link speed and width capabilities and status, 
> > > their upstream PCIe bridges report correct, actual values of those link 
> > > bandwidth attributes.
> > 
> > Last time I was looking at this, and I have some doubts:
> > 
> > Examining PCIe link chain for BMG, in my case device is
> > 
> > 0000:03:00.0 -> ../../../devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0
> > 
> > LnkCap looks like this:
> > 
> > # lspci -vv -s 0000:00:01.0 | egrep '^[0-9]|LnkCap'
> > 00:01.0 PCI bridge: Intel Corporation Device a70d (rev 01) (prog-if 00 [Normal decode])
> >                 LnkCap: Port #2, Speed 32GT/s, Width x16, ASPM L1, Exit Latency L1 <16us
> >                 LnkCap2: Supported Link Speeds: 2.5-32GT/s, Crosslink- Retimer+ 2Retimers+ DRS-
> > # lspci -vv -s 0000:01:00.0 | egrep '^[0-9]|LnkCap'
> > 01:00.0 PCI bridge: Intel Corporation Device e2ff (rev 01) (prog-if 00 [Normal decode])
> >                 LnkCap: Port #0, Speed 16GT/s, Width x8, ASPM L1, Exit Latency L1 <32us
> >                 LnkCap2: Supported Link Speeds: 2.5-16GT/s, Crosslink- Retimer+ 2Retimers+ DRS+
> > # lspci -vv -s 0000:02:01.0 | egrep '^[0-9]|LnkCap'
> > 02:01.0 PCI bridge: Intel Corporation Device e2f0 (prog-if 00 [Normal decode])
> >                 LnkCap: Port #8, Speed 2.5GT/s, Width x1, ASPM L1, Exit Latency L1 <1us
> >                 LnkCap2: Supported Link Speeds: 2.5GT/s, Crosslink- Retimer+ 2Retimers+ DRS-
> > # lspci -vv -s 0000:03:00.0 | egrep '^[0-9]|LnkCap'
> > 03:00.0 VGA compatible controller: Intel Corporation Device e20b (prog-if 00 [VGA controller])
> >                 LnkCap: Port #0, Speed 2.5GT/s, Width x1, ASPM L0s L1, Exit Latency L0s <64ns, L1 <1us
> >                 LnkCap2: Supported Link Speeds: 2.5GT/s, Crosslink- Retimer- 2Retimers- DRS-
> > 
> > What is real link speed/width here? 32GT/s? 16GT/s? 2.5GT/s? Even if we
> > put 16GT/s here or even 32GT/s (why not, it is in the chain) we still
> > really don't know what is the real link speed/width on the GPU side.
> 
> You've focused on link capabilities, while there is also information on link 
> status available.  If you grep your lspci output with '^[0-9]|LnkCap|LnkSta' 
> then you will also see current link status, compared to its capabilities.

You're right, LnkSta for root port shows 16GT/s whereas LnkCap shows
32GT/s. So it seems upstream bridge port link works at 16GT/s and
downstream/endpoint shows 2.5GT/s.

> 
> > We will provide then two different values - lspci will show one value,
> > lsgpu another.  
> 
> No, I proposed to omit those fake link bandwidth attributes associated with 
> the device itself from the output of lsgpu, and complement it with a view of 
> the device's PCIe upstream bridge, with its correct link speed and size info.
> 
> > I don't know is it possible to alter sysfs values to real
> > link speed/width (assuming it is a lie now) but imo real fix should go
> > to sysfs side, not to userspace apps which just read what kernel provides.
> 
> Those values are exposed in sysfs only via /sys/bus/pci/<slot>/device/config.  
> Its content is provided by the linux kernel PCI layer as a copy of the 
> device's PCI config space read directly from hardware.  I don't think PCI 
> subsystem maintainers will like your idea.  Since the issue is Intel GPU 
> specific, it needs to be addressed in an Intel specific piece of software, 
> if not in hardware.  Neither i915 nor Xe KMDs can do anything about that.

Problem I see now with 2.5GT/s x1 is regular user will run lspci
(I would do so) and wonder what's wrong in the configuration link
(BIOS settings/etc) wasting time to investigate it before creating
report. Unless luckily google'ing will show lspci doesn't show
proper values.

> 
> My first approach was to limit the corrective actions to extending the now 
> misleading information provided by customer support with a explanation of 
> where to look for actual values and a promise that those values, provided by 
> the device's upstream bridge, correctly describe the device's link status.
> 
> The idea of teaching our lsgpu utility how to show current link status 
> correctly addresses the lack of such tool on the Linux side, compared to 
> Windows with its GPU-Z or HWiNFO user space tools which can do that (Windows 
> Device Manager still provides the same fake info as lspci).

So it seems this is only thing we can do now. We can't change lspci nor
(likely) sysfs. Does anyone have another idea?

--
Zbigniew

> 
> Thanks,
> Janusz
> 
> > 
> > --
> > Zbigniew
> > 
> > > 
> > > While users may use lspci tool to examine bridge devices manually themselves, 
> > > there is an idea of extending our lsgpu tool with support for printing that 
> > > data.  In order for the tool to show correct link bandwidth of a discrete GPU, 
> > > we need to identify its PCIe upstream bridge and get that information from 
> > > that bridge.  For consistency with lspci output, we are not going to replace 
> > > silently the fake data with those obtained from the bridge, only omit that 
> > > data from our list of the GPU PCI device attributes, and complement the 
> > > printout with more or less complete information about the bridge itself.
> > > 
> > > Please have a look at the example output provided below and share your 
> > > comments, if any.
> > > 
> > > $ sudo ./build/tools/lsgpu -s
> > > sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/card0
> > >     subsystem       : drm
> > >     drm card        : /dev/dri/card0
> > >     parent          : sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0
> > > 
> > > sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/renderD128
> > >     subsystem       : drm
> > >     drm render      : /dev/dri/renderD128
> > >     parent          : sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0
> > > 
> > > sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0
> > >     subsystem       : pci
> > >     drm card        : /dev/dri/card0
> > >     drm render      : /dev/dri/renderD128
> > >     vendor          : 8086
> > >     device          : 56A0
> > >     codename        : dg2
> > >     bridge          : sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0
> > > 
> > > sys:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0
> > >     subsystem       : pci
> > >     vendor          : 8086
> > >     device          : 4FA0
> > > 
> > > $ sudo ./build/tools/lsgpu -p
> > > ========== drm:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/card0 ==========
> > > 
> > > [properties]
> > > DEVPATH                         : /devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/card0
> > > ID_PATH_TAG                     : pci-0000_03_00_0
> > > CURRENT_TAGS                    : :seat:uaccess:master-of-seat:
> > > TAGS                            : :seat:uaccess:master-of-seat:
> > > MINOR                           : 0
> > > DEVNAME                         : /dev/dri/card0
> > > ID_PATH                         : pci-0000:03:00.0
> > > SUBSYSTEM                       : drm
> > > DEVTYPE                         : drm_minor
> > > DEVLINKS                        : /dev/dri/by-path/pci-0000:03:00.0-card
> > > ID_FOR_SEAT                     : drm-pci-0000_03_00_0
> > > USEC_INITIALIZED                : 7056426
> > > MAJOR                           : 226
> > > 
> > > [attributes]
> > > gt_cur_freq_mhz                 : 600
> > > gt_act_freq_mhz                 : 0
> > > subsystem                       : drm
> > > gt_max_freq_mhz                 : 2400
> > > gt_RP1_freq_mhz                 : 600
> > > gt_RPn_freq_mhz                 : 300
> > > device                          : 0000:03:00.0
> > > gt_boost_freq_mhz               : 2400
> > > gt_RP0_freq_mhz                 : 2400
> > > error                           : No error state collected
> > > gt_min_freq_mhz                 : 300
> > > dev                             : 226:0
> > > 
> > > ========== drm:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/renderD128 ==========
> > > 
> > > [properties]
> > > DEVPATH                         : /devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0/drm/renderD128
> > > ID_PATH                         : pci-0000:03:00.0
> > > MINOR                           : 128
> > > DEVNAME                         : /dev/dri/renderD128
> > > ID_PATH_TAG                     : pci-0000_03_00_0
> > > SUBSYSTEM                       : drm
> > > DEVTYPE                         : drm_minor
> > > DEVLINKS                        : /dev/dri/by-path/pci-0000:03:00.0-render
> > > USEC_INITIALIZED                : 7057304
> > > MAJOR                           : 226
> > > 
> > > [attributes]
> > > subsystem                       : drm
> > > dev                             : 226:128
> > > device                          : 0000:03:00.0
> > > 
> > > ========== pci:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0 ==========
> > > card device                     : /dev/dri/card0
> > > render device                   : /dev/dri/renderD128
> > > codename                        : dg2
> > > 
> > > [properties]
> > > PCI_ID                          : 8086:56A0
> > > DEVPATH                         : /devices/pci0000:00/0000:00:01.0/0000:01:00.0/0000:02:01.0/0000:03:00.0
> > > ID_PCI_INTERFACE_FROM_DATABASE  : VGA controller
> > > ID_PATH_TAG                     : pci-0000_03_00_0
> > > PCI_CLASS                       : 30000
> > > ID_PCI_CLASS_FROM_DATABASE      : Display controller
> > > ID_PCI_SUBCLASS_FROM_DATABASE   : VGA compatible controller
> > > PCI_SUBSYS_ID                   : 8086:1029
> > > MODALIAS                        : pci:v00008086d000056A0sv00008086sd00001029bc03sc00i00
> > > PCI_SLOT_NAME                   : 0000:03:00.0
> > > USEC_INITIALIZED                : 7056140
> > > DRIVER                          : i915
> > > ID_PATH                         : pci-0000:03:00.0
> > > SUBSYSTEM                       : pci
> > > 
> > > [attributes]
> > > consistent_dma_mask_bits        : 46
> > > power_state                     : D0
> > > class                           : 0x030000
> > > subsystem                       : pci
> > > iommu_group                     : 17
> > > enable                          : 1
> > > subsystem_vendor                : 0x8086
> > > reset_method                    : flr bus
> > > vendor                          : 0x8086
> > > boot_vga                        : 1
> > > resource2_resize                : 0000000000007f00
> > > subsystem_device                : 0x1029
> > > driver                          : i915
> > > iommu                           : dmar0
> > > d3cold_allowed                  : 1
> > > local_cpulist                   : 0-23
> > > ari_enabled                     : 1
> > > numa_node                       : -1
> > > dma_mask_bits                   : 46
> > > irq                             : 124
> > > driver_override                 : (null)
> > > device                          : 0x56a0
> > > local_cpus                      : ffffff
> > > revision                        : 0x08
> > > msi_bus                         : 1
> > > broken_parity_status            : 0
> > > devspec                         : 
> > > 
> > > ========== pci:/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0 ==========
> > > 
> > > [properties]
> > > PCI_ID                          : 8086:4FA0
> > > DEVPATH                         : /devices/pci0000:00/0000:00:01.0/0000:01:00.0
> > > ID_PCI_INTERFACE_FROM_DATABASE  : Normal decode
> > > ID_PATH_TAG                     : pci-0000_01_00_0
> > > PCI_CLASS                       : 60400
> > > ID_PCI_CLASS_FROM_DATABASE      : Bridge
> > > ID_PCI_SUBCLASS_FROM_DATABASE   : PCI bridge
> > > PCI_SUBSYS_ID                   : 0000:0000
> > > MODALIAS                        : pci:v00008086d00004FA0sv00000000sd00000000bc06sc04i00
> > > PCI_SLOT_NAME                   : 0000:01:00.0
> > > USEC_INITIALIZED                : 7055925
> > > DRIVER                          : pcieport
> > > ID_PATH                         : pci-0000:01:00.0
> > > SUBSYSTEM                       : pci
> > > 
> > > [attributes]
> > > firmware_node                   : device:04
> > > irq                             : 16
> > > iommu_group                     : 14
> > > reset_method                    : bus
> > > device                          : 0x4fa0
> > > d3cold_allowed                  : 1
> > > broken_parity_status            : 0
> > > consistent_dma_mask_bits        : 32
> > > numa_node                       : -1
> > > local_cpus                      : ffffff
> > > subsystem                       : pci
> > > iommu                           : dmar0
> > > enable                          : 1
> > > subsystem_vendor                : 0x0000
> > > secondary_bus_number            : 2
> > > current_link_speed              : 16.0 GT/s PCIe
> > > max_link_width                  : 16
> > > vendor                          : 0x8086
> > > max_link_speed                  : 16.0 GT/s PCIe
> > > msi_bus                         : 1
> > > current_link_width              : 16
> > > dma_mask_bits                   : 32
> > > driver_override                 : (null)
> > > ari_enabled                     : 0
> > > class                           : 0x060400
> > > local_cpulist                   : 0-23
> > > revision                        : 0x01
> > > subordinate_bus_number          : 4
> > > subsystem_device                : 0x0000
> > > driver                          : pcieport
> > > devspec                         : 
> > > power_state                     : D0
> > > 
> > > 
> > > A few AER related attributes that provide error statistics in the form of 
> > > hard to format lists of multiple key-values pairs each have been omitted form 
> > > the printout.
> > > 
> > > Thanks,
> > > Janusz
> > > 
> > > 
> > 
> 
> 
> 
> 
