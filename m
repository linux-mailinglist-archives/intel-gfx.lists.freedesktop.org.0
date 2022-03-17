Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F154DC2EF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 10:35:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2130210E09F;
	Thu, 17 Mar 2022 09:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2487310E09F
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 09:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647509715; x=1679045715;
 h=message-id:subject:from:to:date:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aMa7o/1DL9gusDW3DU5cCNyVNr8D52zOoOTXd2wD0K8=;
 b=QhWYncZslrTB8NeuQp47EcgYHn+ULslPeftlw6n6HeqO7EU0CUDj6Dpw
 KKMCEZrluwYCbx6wBaPa3m2YH+d7zNmpTnHT9XGXxOupluhj08svf5fQU
 +2xzCTwHDmlevlPv5Val0YAGWBxtrT8OPuGt5QiFuXszxFWMZgt3IgG6b
 Ci2DgMnOQjvnbzw2S9JgtUu1XY5WQWjl2/LpFC3BjxHuWh3XjWJiHkRze
 UffZlMtif+pO2ScIH+L9BoN8yxttTMbnQFHJdXm1JuDnL5HZ+EyNFwqGE
 0y86I1lqwjieMHgv4Ru+oLaiyYscFkyKKm+N0UXkt0Zl/yuDpMTf0mlbU w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="343260080"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="343260080"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 02:35:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="714970514"
Received: from flayounx-mobl1.ger.corp.intel.com (HELO [10.249.254.178])
 ([10.249.254.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 02:35:12 -0700
Message-ID: <9eb06b576948707f9a0527b07b58b9640821bf19.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Bloomfield, Jon"
 <jon.bloomfield@intel.com>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>, 
 Ramalingam C <ramalingam.c@intel.com>
Date: Thu, 17 Mar 2022 10:35:10 +0100
In-Reply-To: <164750662822.7267.9355161518284202141@jlahtine-mobl.ger.corp.intel.com>
References: <162c1566-87c6-072f-d340-1693f6a71aea@linux.intel.com>
 <164750662822.7267.9355161518284202141@jlahtine-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] Small bar recovery vs compressed content on DG2
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

On Thu, 2022-03-17 at 10:43 +0200, Joonas Lahtinen wrote:
> Quoting Thomas Hellström (2022-03-16 09:25:16)
> > Hi!
> > 
> > Do we somehow need to clarify in the headers the semantics for
> > this?
> > 
> >  From my understanding when discussing the CCS migration series
> > with 
> > Ram, the kernel will never do any resolving (compressing / 
> > decompressing) migrations or evictions which basically implies the 
> > following:
> > 
> > *) Compressed data must have LMEM only placement, otherwise the GPU
> > would read garbage if accessing from SMEM.
> 
> This has always been the case, so it should be documented in the uAPI
> headers and kerneldocs.
> 
> > *) Compressed data can't be assumed to be mappable by the CPU,
> > because 
> > in order to ensure that on small BAR, the placement needs to be
> > LMEM+SMEM.
> 
> Not strictly true, as we could always migrate to the mappable region
> in
> the CPU fault handler. Will need the same set of tricks as with
> limited
> mappable GGTT in past.

In addition to Matt's reply:

Yes, if there is sufficient space. I'm not sure we want to complicate
this to migrate only part of the buffer to mappable on a fault basis?
Otherwise this is likely to fail.

One option is to allow cpu-mapping from SYSTEM like TTM is doing for
evicted buffers, even if SYSTEM is not in the placement list, and then
migrate back to LMEM for gpu access.

But can user-space even interpret the compressed data when CPU-mapping?
without access to the CCS metadata?

> 
> > *) Neither can compressed data be part of a CAPTURE buffer, because
> > that 
> > requires the data to be CPU-mappable.
> 
> Especially this will be too big of a limitation which we can't really
> afford
> when it comes to debugging.

Same here WRT user-space interpretation. 

This will become especially tricky on small BAR, because either we need
to fit all compressed buffers in the mappable portion, or be able to
blit the contents of the capture buffers from within the fence
signalling critical section, which will require a lot of work I guess.

/Thomas


> 
> Regards, Joonas
> 
> > Are we (and user-mode drivers) OK with these restrictions, or do we
> > need 
> > to rethink?
> > 
> > Thanks,
> > 
> > Thomas
> > 
> > 


