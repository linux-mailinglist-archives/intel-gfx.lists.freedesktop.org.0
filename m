Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7215FC2FF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 11:22:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C3510E06D;
	Wed, 12 Oct 2022 09:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AC1310E06D
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 09:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665566524; x=1697102524;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zMQUzBpHeysrPjPMs84o7X0uvkwZYYi/fV55+u4yK50=;
 b=ZJYqiWRfJN/RTwst5EwO/e+tlGcv53v6wJYEvWkTnXPEsjv7U++I6IEf
 W2OVzik2ELbQ/z9yjgJNVpLDPGke8gFH4qbTVdIkR0QokW0HtFmuxtnzl
 D5P9DRs2NPnz+UP8ADjSGcO0MQmTc04OcihX9PdomulrV3UBQP743jlpY
 qxssAjhgvyLgkygTg5++uyVRaR1u1bZZlBP3r9SXy2zfdilp1nGhRmB6O
 Q5kJwkGTYfQjUzaI9gdWxROLecI7v+kKeoeU5C1Uy7iRVY5W0IkBLScpI
 8RaZOWTadu+E3WhOMt/9S9Lv43/JciYZYjTpnfjyl4yBGCQ8KAnBXDDBR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="306373652"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="306373652"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 02:22:03 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="752066144"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="752066144"
Received: from ashyti-mobl2.igk.intel.com (HELO intel.com) ([172.28.182.106])
 by orsmga004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2022 02:22:02 -0700
Date: Wed, 12 Oct 2022 11:21:59 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <Y0aHNzVct7jHFrTz@ashyti-mobl2.lan>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221012083402.1069940-1-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
 autosuspend control 'on'
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anshuman,

On Wed, Oct 12, 2022 at 02:04:02PM +0530, Anshuman Gupta wrote:
> DGFX platforms has lmem and cpu can access the lmem objects
> via mmap and i915 internal i915_gem_object_pin_map() for
> i915 own usages. Both of these methods has pre-requisite
> requirement to keep GFX PCI endpoint in D0 for a supported
> iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)
> 
> Both DG1/DG2 have a hardware bug that violates the PCIe specs
> and support the iomem read write transaction over PCIe bus despite
> endpoint is D3 state.
> Due to above H/W bug, we had never observed any issue with i915 runtime
> PM versus lmem access.
> But this issue becomes visible when PCIe gfx endpoint's upstream
> bridge enters to D3, at this point any lmem read/write access will be
> returned as unsupported request. But again this issue is not observed
> on every platform because it has been observed on few host machines
> DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver.
> which really disables the PCIe  power savings and leaves the bridge
> at D0 state.
> 
> Till we fix all issues related to runtime PM, we need
> to keep autosupend control to 'on' on all discrete platforms with lmem.

if it's only DG1 and DG2... why do we need to do it for every
platform?

Besides... is this a hack, workaround, permanent solution?

Andi
