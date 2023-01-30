Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 896D66816EE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 17:51:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D270E10E0A2;
	Mon, 30 Jan 2023 16:51:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97CD710E0A2;
 Mon, 30 Jan 2023 16:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675097515; x=1706633515;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9fJuAhMug3j7rMlGsYZxJTXFiECVq4l2Zuk7vHeHZ6Y=;
 b=VRwmx6laeMvl5JHArxNAe9r9yC0grJ7R4n8fJdgpyPO5MgAOoLfjIJS+
 Rt9OHk9W7JfhpL0kqK6NHHFlGv5aKqnomJv5pK5I72XgHF5pEquTPBhbZ
 osvIuQLG36CMf1XJU7HLdVdsnT1vlkeCdqs5VTJAZIkakw9jHwAfYpUMK
 JppBFfZJgOxg9tjbe5R8sjm7kc66bM/3ZvjZ6V4lOTBsOllXcaZBcY6i1
 Wp6r+ixwAdU8tH3a/Mqna3uWKmDAG6v4EHRXA87xEIY7DltsTEc5ShEa7
 M78n+/7Wn3l3ChsV0I/Xq5Yl52UKdg7HzFDIw7pApAl3gC4J6/spmXd3N A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="325305896"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="325305896"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 08:51:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="788088543"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="788088543"
Received: from abanka-mobl.ger.corp.intel.com (HELO localhost) ([10.213.3.236])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 08:51:53 -0800
Date: Mon, 30 Jan 2023 17:51:50 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Message-ID: <20230130165150.g27kknrh7yy45flq@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
 <20230127111241.3624629-7-tvrtko.ursulin@linux.intel.com>
 <20230127161727.oeyjjbt32jn27zgj@kamilkon-desk1>
 <aa70698a-040d-aa8b-6a01-9d11ac4759bc@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aa70698a-040d-aa8b-6a01-9d11ac4759bc@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 6/6] lib/igt_device_scan:
 Improve Intel discrete GPU selection
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

On 2023-01-30 at 11:04:07 +0000, Tvrtko Ursulin wrote:
> 
> On 27/01/2023 16:17, Kamil Konieczny wrote:
> > Hi Tvrtko,
> > 
> > On 2023-01-27 at 11:12:41 +0000, Tvrtko Ursulin wrote:
> > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > 
> > > Now that DRM subsystem can contain PCI cards with the vendor set to Intel
> > > but they are not Intel GPUs, we need a better selection logic than looking
> > > at the vendor. Use the driver name instead.
> > > 
> > > Caveat that the driver key was on a blacklist so far, and although I can't
> > > imagine it can be slow to probe, this is something to double check.
> > > 
> > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> > > Cc: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
> > 
> > Please send this as separate patch, not in this series.
> 
> Yeah I was lazy and wanting to save time so okay.
> 

Well maybe next time, I already merged your series without 5/6,
that one were merged some time ago.

Regards,
Kamil

> > > ---
> > >   lib/igt_device_scan.c | 7 +++++--
> > >   1 file changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> > > index ed128d24dd10..8b767eed202d 100644
> > > --- a/lib/igt_device_scan.c
> > > +++ b/lib/igt_device_scan.c
> > > @@ -237,6 +237,7 @@ struct igt_device {
> > >   	char *vendor;
> > >   	char *device;
> > >   	char *pci_slot_name;
> > > +	char *driver;
> > >   	int gpu_index; /* For more than one GPU with same vendor and device. */
> > >   	char *codename; /* For grouping by codename */
> > > @@ -440,7 +441,6 @@ static bool is_on_blacklist(const char *what)
> > >   				      "resource3", "resource4", "resource5",
> > >   				      "resource0_wc", "resource1_wc", "resource2_wc",
> > >   				      "resource3_wc", "resource4_wc", "resource5_wc",
> > > -				      "driver",
> > >   				      "uevent", NULL};
> > >   	const char *key;
> > >   	int i = 0;
> > > @@ -662,6 +662,8 @@ static struct igt_device *igt_device_new_from_udev(struct udev_device *dev)
> > >   		get_pci_vendor_device(idev, &vendor, &device);
> > >   		idev->codename = __pci_codename(vendor, device);
> > >   		idev->dev_type = __pci_devtype(vendor, device, idev->pci_slot_name);
> > > +		idev->driver = strdup_nullsafe(get_attr(idev, "driver"));
> > > +		igt_assert(idev->driver);
> > >   	}
> > >   	return idev;
> > > @@ -776,7 +778,7 @@ static bool __find_first_i915_card(struct igt_device_card *card, bool discrete)
> > >   	igt_list_for_each_entry(dev, &igt_devs.all, link) {
> > > -		if (!is_pci_subsystem(dev) || !is_vendor_matched(dev, "intel"))
> > > +		if (!is_pci_subsystem(dev) || strcmp(dev->driver, "i915"))
> > 
> > Put the comment here why it can be problematic to relay on driver name.
> 
> Function name being __find_first_*i915*_card is IMO enough so it feels any
> comment to the same effect would be redundant.
> 
> Hm if anything igt_device_find_integrated_card should be renamed..
> 
> Regards,
> 
> Tvrtko
> 
> > 
> > Regards,
> > Kamil
> > 
> > >   			continue;
> > >   		cmp = strncmp(dev->pci_slot_name, INTEGRATED_I915_GPU_PCI_ID,
> > > @@ -1023,6 +1025,7 @@ static void igt_device_free(struct igt_device *dev)
> > >   	free(dev->drm_render);
> > >   	free(dev->vendor);
> > >   	free(dev->device);
> > > +	free(dev->driver);
> > >   	free(dev->pci_slot_name);
> > >   	g_hash_table_destroy(dev->attrs_ht);
> > >   	g_hash_table_destroy(dev->props_ht);
> > > -- 
> > > 2.34.1
> > > 
