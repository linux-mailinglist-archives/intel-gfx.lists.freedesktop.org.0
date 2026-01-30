Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sN/HKgG3fGm7OQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 14:49:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17163BB568
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 14:49:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A432810E146;
	Fri, 30 Jan 2026 13:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n8AMt4c/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21EA410E0B7;
 Fri, 30 Jan 2026 13:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769780991; x=1801316991;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q4o6CmsDePCGGmgeL2EewxzfibSe5d+HQ8rdud317qI=;
 b=n8AMt4c/l4S4n9ttyZ/50TQL+7o7l8x7KTig4Ne/EaJWjQhtPknC8Ain
 tEjKW3ueeGuWHlv/NGow2tKK5a0ReXLu48e9/GuXoe1/qUAOa14uWCIrj
 XGzvSjFwTCNC1yTzDgoX2AcZIJBlfiVjjFzIaA/PRSEjMyyf6EC4+uBkI
 vk3VOI0Si4jvgF/zALECccQWgJKaVsskhoZjQyeVhPXIxikyJ5vQ6RjDi
 Z/cOzHzLioQnVzj9uek4/5fckgroF0zSRg91pMnXvu0RJ9DOICEaMsoud
 dLBiuJKKuIx7Y8eu54Tbjc3GcnE9gHyAPYJ/kW8KfM+ObBb+v8fdpYRrC w==;
X-CSE-ConnectionGUID: 6rU6BzO8SnmAL3Ug9wxYoQ==
X-CSE-MsgGUID: mGoDaOppR56rrjStSfFiwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="82139871"
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="82139871"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 05:49:50 -0800
X-CSE-ConnectionGUID: c3A+jh+fTSu2vqtte1KUQg==
X-CSE-MsgGUID: oKRx5FErSDKoJhS1qGtiyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="240123544"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.83])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 05:49:47 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 2/6] lib/igt_device_scan: Split out reusable part
 of update_or_add_parent
Date: Fri, 30 Jan 2026 14:49:44 +0100
Message-ID: <8046332.lvqk35OSZv@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <yv43qczs55sghgbvhdz5jyan6upf7sgcckaslnli33jbz2m4kz@jypceu4xi5ig>
References: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
 <20260127100123.114516-10-janusz.krzysztofik@linux.intel.com>
 <yv43qczs55sghgbvhdz5jyan6upf7sgcckaslnli33jbz2m4kz@jypceu4xi5ig>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,jkrzyszt-mobl2.ger.corp.intel.com:mid]
X-Rspamd-Queue-Id: 17163BB568
X-Rspamd-Action: no action

Hi Krzysztof,

On Friday, 30 January 2026 14:36:46 CET Krzysztof Karas wrote:
> Hi Janusz,
> 
> >  #define RETRIES_GET_PARENT 5
> Now that you excluded the "parent" word from names in function
> below, so it's only implicitly operating on parent devices, you
> could change this name to RETRIES_GET_DEVICE.

OK.

Thanks,
Janusz

> 
> Rest of the code looks good to me:
> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
> 
> > -/* For each drm igt_device add or update its parent igt_device to the array.
> > - * As card/render drm devices mostly have same parent (vkms is an exception)
> > - * link to it and update corresponding drm_card / drm_render fields.
> > - */
> > -static void update_or_add_parent(struct udev *udev,
> > -				 struct udev_device *dev,
> > -				 struct igt_device *idev,
> > -				 bool limit_attrs)
> > +
> > +static struct igt_device *find_or_add_igt_device(struct udev *udev,
> > +						 struct udev_device *dev,
> > +						 bool limit_attrs)
> >  {
> > -	struct udev_device *parent_dev;
> > -	struct igt_device *parent_idev;
> > -	const char *subsystem, *syspath, *devname;
> >  	int retries = RETRIES_GET_PARENT;
> > +	const char *subsystem, *syspath;
> > +	struct igt_device *idev;
> >  
> > -	/*
> > -	 * Get parent for drm node. It caches parent in udev device
> > -	 * and will be destroyed along with the node.
> > -	 */
> > -	parent_dev = udev_device_get_parent(dev);
> > -	igt_assert(parent_dev);
> > -
> > -	subsystem = udev_device_get_subsystem(parent_dev);
> > -	syspath = udev_device_get_syspath(parent_dev);
> > +	subsystem = udev_device_get_subsystem(dev);
> > +	syspath = udev_device_get_syspath(dev);
> >  
> > -	parent_idev = igt_device_find(subsystem, syspath);
> > -	while (!parent_idev && retries--) {
> > +	idev = igt_device_find(subsystem, syspath);
> > +	while (!idev && retries--) {
> >  		/*
> >  		 * Don't care about previous parent_dev, it is tracked
> >  		 * by the child node. There's very rare race when driver module
> > @@ -951,15 +939,41 @@ static void update_or_add_parent(struct udev *udev,
> >  		 * only udev_device_new*() will scan sys directory and
> >  		 * return fresh udev device.
> >  		 */
> > -		parent_dev = udev_device_new_from_syspath(udev, syspath);
> > -		parent_idev = igt_device_new_from_udev(parent_dev, limit_attrs);
> > -		udev_device_unref(parent_dev);
> > +		dev = udev_device_new_from_syspath(udev, syspath);
> > +		idev = igt_device_new_from_udev(dev, limit_attrs);
> > +		udev_device_unref(dev);
> >  
> > -		if (parent_idev)
> > -			igt_list_add_tail(&parent_idev->link, &igt_devs.all);
> > +		if (idev)
> > +			igt_list_add_tail(&idev->link, &igt_devs.all);
> >  		else
> >  			usleep(100000); /* arbitrary, 100ms should be enough */
> >  	}
> > +
> > +	return idev;
> > +}
> > +
> > +/*
> > + * For each drm igt_device add or update its parent igt_device to the array.
> > + * As card/render drm devices mostly have same parent (vkms is an exception)
> > + * link to it and update corresponding drm_card / drm_render fields.
> > + */
> > +static void update_or_add_parent(struct udev *udev,
> > +				 struct udev_device *dev,
> > +				 struct igt_device *idev,
> > +				 bool limit_attrs)
> > +{
> > +	struct udev_device *parent_dev;
> > +	struct igt_device *parent_idev;
> > +	const char *devname;
> > +
> > +	/*
> > +	 * Get parent for drm node. It caches parent in udev device
> > +	 * and will be destroyed along with the node.
> > +	 */
> > +	parent_dev = udev_device_get_parent(dev);
> > +	igt_assert(parent_dev);
> > +
> > +	parent_idev = find_or_add_igt_device(udev, parent_dev, limit_attrs);
> >  	igt_assert(parent_idev);
> >  
> >  	devname = udev_device_get_devnode(dev);
> 
> 




