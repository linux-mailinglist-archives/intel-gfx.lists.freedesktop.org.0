Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEw0Oh+Ec2kDxAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 15:22:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C4976F79
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 15:22:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB2D110EB00;
	Fri, 23 Jan 2026 14:22:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kYo+gN7z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB8810EB02;
 Fri, 23 Jan 2026 14:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769178140; x=1800714140;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qzEUEd5wYPruV9Dx1N3VqliJeI3W3U3vLfAlAcGdyr8=;
 b=kYo+gN7zH4iXeqHgbt5X5KKMBEgb+tzZUHA++/JWdQYsGj2ZCmm3GHv8
 QWwD7W7KFPPxBupi72f/aWCkvKJEFh5bA/9eNGw5FyfBXKz9Lq8jMbGxc
 jA7y80RRptt/P+15N9zRZdTBPL8GqAC0noOUT4Fu72r5eJT9Qo2eaLGnV
 0TfZohflVyvjO+N3awHQhlNvUcc3a9TTZdXb+mL9lhLX6oP7CvGnL0YoC
 TU3OpSnwT4GFcGzFIdgNF2HPEii8MVBdWNujmD9CXdV03fKfkUaJm6bew
 DkTw0Qn2unIIoNvqWscv8JqU4WC4ksxt+zHRyLGDFJoBp8OpblqKwGehn Q==;
X-CSE-ConnectionGUID: mmeOgioCSB+PoM6MHYfzCQ==
X-CSE-MsgGUID: 8IjckzvrS2uc4lplfPNNKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="81542267"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81542267"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 06:22:20 -0800
X-CSE-ConnectionGUID: UvGH7EHnReuVdLZGWiX5Dw==
X-CSE-MsgGUID: 9UltHjhpTyCqphO2Ll1M0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207381348"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.8])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 06:22:17 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t 3/7] lib/igt_device_scan: Include PCIe bridge
 upstream port if available
Date: Fri, 23 Jan 2026 15:22:15 +0100
Message-ID: <2026104.PYKUYFuaPT@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <DFVX25OT5Y4I.1UO45LB0A5M5P@intel.com>
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
 <20260121114656.1970684-12-janusz.krzysztofik@linux.intel.com>
 <DFVX25OT5Y4I.1UO45LB0A5M5P@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	CTE_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,jkrzyszt-mobl2.ger.corp.intel.com:mid]
X-Rspamd-Queue-Id: 57C4976F79
X-Rspamd-Action: no action

Hi Sebastian,

On Friday, 23 January 2026 12:02:30 CET Sebastian Brzezinka wrote:
> Hi Janusz,
> 
> On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
> > Users of Intel discrete graphics adapters are confused with fake
> > information on PCIe link bandwidth (speed and size) of their GPU devices
> > reported by sysfs and userspace tools, including our lsgpu utility.  In
> > order for the lsgpu to show correct link bandwidth information, we need to
> > identify an upstream port of a PCIe bridge that sits on the GPU card and
> > get that information from that port.
> >
> > Since the tool uses our udev based igt_device_scan library for identifying
> > GPU devices and printing their properties and attributes, modifications
> > that we need apply to that library.
> >
> > When scanning for DRM devices and their PCI parents, the lsgpu utility
> > requests collection of all their attributes.  When running in this mode,
> > also try to collect information about upstream ports of PCIe bridges of
> > discrete GPU devices.  Once collected, the lsgpu utility will show that
> > information automatically while listing the devices.
> >
> > While IGT tests are using pciaccess library for processing PCI devices,
> > that library requires careful handling in order to avoid collisions among
> > multiple processes or threads potentially using it.  That protection is
> > implemented in igt_device with help of IGT exit handlers. That requires
> > linking with full igt_core library code, while the lsgpu tool now depends
> > neither on igt_device nor on igt_core.  To keep that independence,
> > implement the new code around libpci.  With that approach, refactoring of
> > IGT use of pciaccess is avoided.
> >
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  lib/igt_device_scan.c | 73 +++++++++++++++++++++++++++++++++++++++++--
> >  lib/meson.build       |  2 ++
> >  meson.build           |  1 +
> >  3 files changed, 74 insertions(+), 2 deletions(-)
> >
> > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> > index d3a2ebe8d2..34c7a8131b 100644
> > --- a/lib/igt_device_scan.c
> > +++ b/lib/igt_device_scan.c
> > @@ -36,6 +36,7 @@
> >  #ifdef __linux__
> >  #include <linux/limits.h>
> >  #endif
> > +#include <pci/pci.h>
> >  #include <sys/stat.h>
> >  #include <sys/time.h>
> >  #include <sys/types.h>
> > @@ -909,6 +910,27 @@ static struct igt_device *igt_device_from_syspath(const char *syspath)
> >  	return NULL;
> >  }
> >  
> > +static bool is_pcie_upstream_bridge(struct pci_dev *dev)
> > +{
> > +	struct pci_cap *pcie;
> > +	uint8_t type, dir;
> > +
> > +	type = pci_read_byte(dev, PCI_HEADER_TYPE) & 0x7f;
> > +	if (type != PCI_HEADER_TYPE_BRIDGE)
> > +		return false;
> > +
> > +	pcie = pci_find_cap(dev, PCI_CAP_ID_EXP, PCI_CAP_NORMAL);
> > +	if (!pcie)
> > +		return false;
> > +
> > +	/* GET_REG_MASK macro borrowed from pciutils' internal bitops.h */
> > +#define GET_REG_MASK(reg, mask) (((reg) & (mask)) / ((mask) & ~((mask) << 1)))
> > +	dir = GET_REG_MASK(pci_read_word(dev, pcie->addr + PCI_EXP_FLAGS), PCI_EXP_FLAGS_TYPE);
> > +#undef GET_REG_MASK
> Instead of copying the macro, we could just use: 
> 	type = ( pci_read_word... & PCI_EXP_FLAGS_TYPE) >> 4. This seems cleaner.

I guess it took you a bit of time to understand how that macro works, so it 
did to me :-).  Then OK, let's use the more clear but correct looking version 
you propose, even if it's not clear to me why they did it that way, less 
clear, more complicated.

> 
> > +
> > +	return dir == PCI_EXP_TYPE_UPSTREAM;
> > +}
> > +
> >  #define RETRIES_GET_PARENT 5
> >  
> >  static struct igt_device *find_or_add_igt_device(struct udev *udev,
> > @@ -948,18 +970,55 @@ static struct igt_device *find_or_add_igt_device(struct udev *udev,
> >  	return idev;
> >  }
> >  
> > +static struct udev_device *get_pcie_upstream_bridge(struct udev *udev,
> > +						    struct udev_device *dev)
> > +{
> > +	struct pci_access *pacc;
> > +
> > +	pacc = pci_alloc();
> > +	pci_init(pacc);
> > +
> I'm not entirely familiar with this pci library, but is it necessary to initialize it
> for every device? It might be more efficient to do it once in scan_drm_devices.

OK, you've got it.

Thanks,
Janusz



