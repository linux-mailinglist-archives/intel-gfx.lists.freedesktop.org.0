Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oElPDae2fGm7OQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 14:48:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 754E7BB548
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 14:48:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97ABC10E9E1;
	Fri, 30 Jan 2026 13:48:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A9uGUAE9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49A2810E11C;
 Fri, 30 Jan 2026 13:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769780900; x=1801316900;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CSxdz/3px0oprcrq2SLCbtoE5fxV6Kf2g7sTqmwLEsA=;
 b=A9uGUAE9yUnB8sgULGzVVGHiwfmhrNYU/LUz+s94iAmR6NP9SkVNCZZU
 3ZG3fGnILl34hoH6kWTjcizSOjGzRKM/7bQ+uZqH6WnPZWonDPWQwsRIq
 tvE875g8oBQwlJkl8h86y5MbPvXBjEGT56g+GROTtdRblBxUIlG64ncdn
 OQCJXmVCH8kazmasdP0gmFTi2+g9Iy/4xj3rg1PcXdn97fIVYwxaMuuZ1
 4sBiT/KpXJnN8yF/ZBbk4rlN4GxSokos2HIHNqzNvqtpczbjZuo1eZR4q
 F5uoiuHjV1HlTMbsAAt0O6tl6MKkpJtQYmc8pNIFBYE940fEWLhIVnxcG g==;
X-CSE-ConnectionGUID: NzBSPdvwT0aq/Me7FLwanQ==
X-CSE-MsgGUID: IMcJ882kT/CRCGCaFpi3pA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70940212"
X-IronPort-AV: E=Sophos;i="6.21,263,1763452800"; d="scan'208";a="70940212"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 05:48:19 -0800
X-CSE-ConnectionGUID: dVTgkDRbR7iNRVqkG7kYZw==
X-CSE-MsgGUID: liXDqo/yTNCc3IkiEGYXRw==
X-ExtLoop1: 1
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.83])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 05:48:16 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 1/6] lib/igt_device_scan: Don't print fake link
 bandwidth attributes
Date: Fri, 30 Jan 2026 14:48:13 +0100
Message-ID: <2762841.Isy0gbHreE@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <reh3pf5mdecfzaxftaucazxifjpg5nhusryzgwettt5rtks4ok@yh5lh6vbelf3>
References: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
 <20260127100123.114516-9-janusz.krzysztofik@linux.intel.com>
 <reh3pf5mdecfzaxftaucazxifjpg5nhusryzgwettt5rtks4ok@yh5lh6vbelf3>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,gitlab.freedesktop.org:url,jkrzyszt-mobl2.ger.corp.intel.com:mid]
X-Rspamd-Queue-Id: 754E7BB548
X-Rspamd-Action: no action

Hi Krzysztof,

Thanks for looking at this.

On Friday, 30 January 2026 13:53:02 CET Krzysztof Karas wrote:
> Hi Janusz,
> 
> the code looks good, I am wondering if "fake" is appropriate
> word for the descriptions below:
> in a way the values are correct, but wrongly reported - they
> belong to pci x1 bridge of the GPU. Maybe adding a short
> sentence that the values reported always belong to pci x1
> instead of the fastest active bridge would complete the message?
> What do you think?

If the GPU device was a real PCIe endpoint with link bandwith limited to 
2.5GT/s, 1x (max_link_speed, max_link_width), as reported, then that would be 
the actually possible maximum bandwidth of the GPU to CPU link, I believe, not 
that of the bridge upstream port.  Since Intel declares the link bandwidth of 
the bridge upstream port should be referred to as correctly describing the 
actual GPU to CPU link bandwidth then my understanding is that the values 
reported by the GPU should be disregarded as not true (then fake).  I'm open 
to calling those values with another word but fake, as long as that word 
reflects their non truth status.

Thanks,
Janusz

> 
> On 2026-01-27 at 10:54:18 +0100, Janusz Krzysztofik wrote:
> > Users of Intel discrete graphics adapters are confused with fake
> > information on PCIe link bandwidth (speed and size) of their GPU devices
> > reported by tools like lspci or lsgpu.  That fake information is
> > unfortunately provided by hardware, Linux PCI subsystem just exposes it
> > untouched to upper layers, including userspace via sysfs, and userspace
> > tools just report those fake values.
> > 
> > While we can't do much about the kernel side or general purpose userspace
> > tools like lspci, we can try to address the issue with our lsgpu utility.
> > 
> > Correct link bandwidth attributes of a discrete GPU card can be obtained
> > from the kernel by looking not at the PCI device of the GPU itself, only
> > at a PCIe upstream port of the card's PCI bridge.  For integrity with
> > content of the sysfs and with output from the other tools, we are not
> > going to replace the fake information with that from the bridge upstream
> > port, only show that port and its attributes themselves while listing
> > devices.
> > 
> > Since the tool uses our udev based igt_device_scan library for identifying
> > GPU devices and printing their properties and attributes, modifications
> > that we need apply to that library.
> > 
> > As a first step, exclude the fake data from being printed.
> > 
> > v2: Keep dump_props_and_attrs() generic: hand over decision on omitting
> >     link attributes to the caller, and implementation of the check to a
> >     helper (Sebastian).
> > 
> > Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
> > Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  lib/igt_device_scan.c | 17 +++++++++++++++--
> >  1 file changed, 15 insertions(+), 2 deletions(-)
> > 
> > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> > index abd8ca209e..7ae64375b5 100644
> > --- a/lib/igt_device_scan.c
> > +++ b/lib/igt_device_scan.c
> > @@ -602,7 +602,15 @@ static inline void _print_key_value(const char *k, 
const char *v)
> >  	printf("%-32s: %s\n", k, v);
> >  }
> >  
> > -static void dump_props_and_attrs(const struct igt_device *dev)
> > +static bool is_link_attr(const char *name)
> > +{
> > +	return !strcmp(name, "max_link_speed") ||
> > +	       !strcmp(name, "max_link_width") ||
> > +	       !strcmp(name, "current_link_speed") ||
> > +	       !strcmp(name, "current_link_width");
> > +}
> > +
> > +static void dump_props_and_attrs(const struct igt_device *dev, bool 
omit_link)
> >  {
> >  	struct igt_map_entry *entry;
> >  
> > @@ -613,6 +621,10 @@ static void dump_props_and_attrs(const struct 
igt_device *dev)
> >  
> >  	printf("\n[attributes]\n");
> >  	igt_map_foreach(dev->attrs_map, entry) {
> > +		/* omit link bandwidth attributes if requested */
> > +		if (omit_link && is_link_attr(entry->key))
> > +			continue;
> > +
> >  		_print_key_value((char *)entry->key, (char *)entry->data);
> >  	}
> >  	printf("\n");
> > @@ -1366,7 +1378,8 @@ igt_devs_print_detail(struct igt_list_head *view,
> >  			_print_key_value("codename", dev->codename);
> >  		}
> >  
> > -		dump_props_and_attrs(dev);
> > +		/* omit fake link bandwidth attributes if a discrete card 
*/
> > +		dump_props_and_attrs(dev, dev->dev_type == 
DEVTYPE_DISCRETE);
> >  	}
> >  }
> >  
> 
> 




