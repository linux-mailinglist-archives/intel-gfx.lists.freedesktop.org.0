Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 944FB4D04DB
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 18:04:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8379489FA5;
	Mon,  7 Mar 2022 17:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3341889FA5;
 Mon,  7 Mar 2022 17:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646672660; x=1678208660;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=w8/iFetsG5QwrkpeDQGj5pFYqYmVEps8sf5T+gWT5WA=;
 b=PKiMPqm7v1+1sCtCCVYgYAwEMb4xmkvrFlMe4kerbbp/+AwfMFG0lvrh
 SqQPM9XoQlxP5r1OPSryzPacL/YwsPt2B8BDiXx4L4PE+qyxA6DfDEx/c
 Z5wtOYxnqTlkrijmP6T46rPMjgKQYfMy/AsB0F0BohQ1u78LN6UaYVjqd
 P08rSnBeCQX2fJZOhOGvJaehcqUILnlTygMf0+mEPHXVS9McjKufzUmJW
 M/0hJKIIkYOBqknzbGkciCzPPBO0doe4D9tBcJ+Fg2bWrTrl8BzsE96E0
 Q3ARX4z6RiM3UhYCB1Cj9VDXVW2jLnIGKOBhMKWi1EAgC8tfp+XDRAzr5 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="340879860"
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="340879860"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 09:04:19 -0800
X-IronPort-AV: E=Sophos;i="5.90,162,1643702400"; d="scan'208";a="553237702"
Received: from jmamzax-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.26.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 09:04:18 -0800
Date: Mon, 7 Mar 2022 18:04:15 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <YiY7D30u+c+l1qq1@kamilkon-DESK1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
References: <20220307082643.380066-1-janusz.krzysztofik@linux.intel.com>
 <YiYHUju3mA6wNTGr@kamilkon-DESK1>
 <21668843.hxa6pUQ8Du@jkrzyszt-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <21668843.hxa6pUQ8Du@jkrzyszt-mobl1.ger.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 i-g-t] lib/intel_mmio: Fix mmapped
 resources not unmapped on fini
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,

Dnia 2022-03-07 at 16:06:10 +0100, Janusz Krzysztofik napisał(a):
> Hi Kamil,
> 
> On Monday, 7 March 2022 14:23:30 CET Kamil Konieczny wrote:
> > Hi Janusz,
> > 
> > Dnia 2022-03-07 at 09:26:43 +0100, Janusz Krzysztofik napisał(a):
> > > Commit 5f3cfa485eb4 ("lib: Use safe wrappers around libpciaccess
> > > initialization functions") took care of not leaking memory allocated by
> > > pci_system_init() but didn't take care of users potentially attempting to
> > > reinitialize global data maintained by libpciaccess.  For example,
> > > intel_register_access_init() mmaps device's PCI BAR0 resource with
> > > pci_device_map_range() but intel_register_access_fini() doesn't unmap it
> > > and next call to intel_register_access_init() fails on attempt to mmap it
> > > again.
> > > 
> > > Fix it, and also provide intel_mmio_unmap_*() counterparts to public
> > > functions intel_mmio_use_pci_bar() and intel_mmio_use_dump_file().
> > > 
> > > v2: apply last minute fixes, cached but unfortunately not committed before
> > >     sending
> > > v3: use .pci_device_id field content as an indicator of arg initialization
> > >     via intel_register_access_init(),
> > >   - improve checks of argument initialization status,
> > >   - shorten warning messages (Kamil),
> > >   - don't fill .mmio_size field until initialization succeeds (Kamil)
> > > 
> > > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> > > ---
> > >  lib/intel_io.h   |  4 +++
> > >  lib/intel_mmio.c | 64 +++++++++++++++++++++++++++++++++++++++++++++---
> > >  2 files changed, 65 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/lib/intel_io.h b/lib/intel_io.h
> > > index 1cfe4fb6b9..ea2649d9bc 100644
> > > --- a/lib/intel_io.h
> > > +++ b/lib/intel_io.h
> > > @@ -49,6 +49,8 @@ struct intel_register_map {
> > >  
> > >  struct intel_mmio_data {
> > >  	void *igt_mmio;
> > > +	size_t mmio_size;
> > > +	struct pci_device *dev;
> > >  	struct intel_register_map map;
> > >  	uint32_t pci_device_id;
> > >  	int key;
> > > @@ -57,7 +59,9 @@ struct intel_mmio_data {
> > >  
> > >  void intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data,
> > >  			    struct pci_device *pci_dev);
> > > +void intel_mmio_unmap_pci_bar(struct intel_mmio_data *mmio_data);
> > >  void intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file);
> > > +void intel_mmio_unmap_dump_file(struct intel_mmio_data *mmio_data);
> > >  
> > >  int intel_register_access_init(struct intel_mmio_data *mmio_data,
> > >  			       struct pci_device *pci_dev, int safe, int fd);
> > > diff --git a/lib/intel_mmio.c b/lib/intel_mmio.c
> > > index 667a69f5aa..d6ce0ee3ea 100644
> > > --- a/lib/intel_mmio.c
> > > +++ b/lib/intel_mmio.c
> > > @@ -82,6 +82,8 @@ void *igt_global_mmio;
> > >   * Sets also up mmio_data->igt_mmio to point at the data contained
> > >   * in @file. This allows the same code to get reused for dumping and decoding
> > >   * from running hardware as from register dumps.
> > > + *
> > > + * Users are expected to call intel_mmio_unmap_dump_file() after use.
> > >   */
> > >  void
> > >  intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
> > > @@ -99,11 +101,32 @@ intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
> > >  	igt_fail_on_f(mmio_data->igt_mmio == MAP_FAILED,
> > >  		      "Couldn't mmap %s\n", file);
> > >  
> > > +	mmio_data->mmio_size = st.st_size;
> > >  	igt_global_mmio = mmio_data->igt_mmio;
> > >  
> > >  	close(fd);
> > >  }
> > >  
> > > +/**
> > > + * intel_mmio_unmap_dump_file:
> > > + * @mmio_data:  mmio structure for IO operations
> > > + *
> > > + * Unmaps a dump file mmapped with intel_mmio_use_dump_file()
> > > + */
> > > +void intel_mmio_unmap_dump_file(struct intel_mmio_data *mmio_data)
> > > +{
> > > +	if (igt_warn_on_f(mmio_data->dev,
> > > +			  "test bug: arg initialized with intel_mmio_use_pci_bar()\n"))
> > > +		return;
> > 
> > Please add a global description about this kind of errors, this
> > one is for using unmap when mmio was mmap-ed from other mmap
> > type.
> 
> Can you please be more specific in what you mean by "global description of 
> this kind of errors"?  A more detailed warning?  A comment?  If the latter 
> then how would you like me to make it global?

Yes, I was thinking about comment at begin of file, but maybe
it is better to change warning message like below.

> 
> If you just don't like the reference to intel_mmio_use_pci_bar() here then 
> would you be satisfied with something like "test bug: arg initialized by a 
> method other than intel_mmio_use_dump_file()\n"?

Yes, this sounds good.

> 
> > > +	if (igt_warn_on_f(!mmio_data->mmio_size,
> > > +			  "test bug: arg not initialized\n"))
> > > +		return;
> > 
> > Can we replace this with one check igt_global_mmio != NULL ?
> > Something like:
> > 
> > 	if (igt_warn_on_f(!igt_global_mmio,
> > 			  "mmio regs not mmap-ed\n"))
> > 		return;
> > 
> > Or should we add this before all other checks in unmap functions
> > and keep this additional check ?
> 
> Why igt_global_mmio again?  I still think this global variable is broken and 
> users should just use the structure they pass to intel_mmio_use_*() or 
> intel_register_access_init(), then introducing another a dependency on it with 
> this patch doesn't make sense to me.  If you think the opposite then please 
> explain why.

Good point, maybe in next series you will remove this global
var ?

> 
> > > +
> > > +	igt_global_mmio = NULL;
> > > +	igt_debug_on(munmap(mmio_data->igt_mmio, mmio_data->mmio_size) < 0);
> > > +	mmio_data->mmio_size = 0;
> > > +}
> > > +
> > >  /**
> > >   * intel_mmio_use_pci_bar:
> > >   * @mmio_data:  mmio structure for IO operations
> > > @@ -112,6 +135,8 @@ intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
> > >   * Fill a mmio_data stucture with igt_mmio to point at the mmio bar.
> > >   *
> > >   * @pci_dev can be obtained from intel_get_pci_device().
> > > + *
> > > + * Users are expected to call intel_mmio_unmap_pci_bar() after use.
> > >   */
> > >  void
> > >  intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data, struct pci_device *pci_dev)
> > > @@ -141,10 +166,34 @@ intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data, struct pci_device *pci
> > >  				      PCI_DEV_MAP_FLAG_WRITABLE,
> > >  				      &mmio_data->igt_mmio);
> > >  
> > > -	igt_global_mmio = mmio_data->igt_mmio;
> > > -
> > >  	igt_fail_on_f(error != 0,
> > >  		      "Couldn't map MMIO region\n");
> > > +
> > > +	mmio_data->mmio_size = mmio_size;
> > > +	mmio_data->dev = pci_dev;
> > > +	igt_global_mmio = mmio_data->igt_mmio;
> 
> To be consequent with what I said above, in next version of the patch I'm 
> going to not touch the assignment of mmio_data->igt_mmio to the out of scope 
> and depreciated igt_global_mmio, leaving it as broken as it already is.

If it is not used anywhere then ok.

> > > +}
> > > +
> > > +/**
> > > + * intel_mmio_unmap_pci_bar:
> > > + * @mmio_data:  mmio structure for IO operations
> > > + *
> > > + * Unmaps a PCI BAR region mmapped with intel_mmio_use_pci_bar()
> > > + */
> > > +void intel_mmio_unmap_pci_bar(struct intel_mmio_data *mmio_data)
> > > +{
> > > +	if (igt_warn_on_f(mmio_data->pci_device_id,
> > > +			  "test bug: arg initialized with intel_register_access_init()\n"))
> 
> Similarly to the case of intel_mmio_unmap_dump_file(), I can change the 
> message to "test bug: arg initialized with a method other than 
> intel_mmio_use_pci_bar()\n" if that's what you prefer.
> 
> > > +		return;
> > > +	if (igt_warn_on_f(!mmio_data->dev,
> > > +			  "test bug: arg not initialized with intel_mmio_use_pci_bar()\n"))
> > > +		return;
> > > +
> > > +	igt_global_mmio = NULL;
> > > +	igt_debug_on(pci_device_unmap_range(mmio_data->dev,
> > > +					    mmio_data->igt_mmio, mmio_data->mmio_size) < 0);
> > > +	mmio_data->dev = NULL;
> > > +	mmio_data->mmio_size = 0;
> > >  }
> > >  
> > >  static void
> > > @@ -166,6 +215,8 @@ release_forcewake_lock(int fd)
> > >   * It also initializes mmio_data->igt_mmio like intel_mmio_use_pci_bar().
> > >   *
> > >   * @pci_dev can be obtained from intel_get_pci_device().
> > > + *
> > > + * Users are expected to call intel_register_access_fini() after use.
> > >   */
> > >  int
> > >  intel_register_access_init(struct intel_mmio_data *mmio_data, struct pci_device *pci_dev, int safe, int fd)
> > > @@ -222,8 +273,15 @@ int intel_register_access_needs_fakewake(struct intel_mmio_data *mmio_data)
> > >  void
> > >  intel_register_access_fini(struct intel_mmio_data *mmio_data)
> > >  {
> > > -	if (mmio_data->key && intel_register_access_needs_wake(mmio_data))
> > > +	if (igt_warn_on_f(!mmio_data->pci_device_id,
> > > +			  "test bug: arg not initialized with intel_register_access_init()\n"))
> > > +		return;
> > > +
> > > +	if (intel_register_access_needs_wake(mmio_data))
> 
> As mmio_data->key is no longer used since v3 as an indication of mmio_data 
> having been initialized by intel_register_access_init() or not, the original 
> (potentially broken) condition:
> 
> 	if (mmio_data->key && intel_register_access_needs_wake(mmio_data))
> 
> should be not touched by this patch as out of scope but its original form 
> preserved.  I'm going to restore it in next version of the patch.

ok

> 
> > >  		release_forcewake_lock(mmio_data->key);
> > > +
> > > +	mmio_data->pci_device_id = 0;
> > 
> > Here we should check other conditions so no warn triggers in unmap_pci_bar
> > or make the messages generic (and document it in comments at beggining)
> > or maybe make helper with no checks for unmap_pci_bar.
> 
> Why? I can't see any potential scenario where mmio_data->pci_device_id is not 
> 0 but mmio_data->dev is NULL.  If you can see one then please tell me more 
> about it.

Yes, you are right, I overlooked that.

> 
> Thanks,
> Janusz
> 
> 
> > > +	intel_mmio_unmap_pci_bar(mmio_data);
> > >  }
> > >  
> > >  /**

Regards,
Kamil
