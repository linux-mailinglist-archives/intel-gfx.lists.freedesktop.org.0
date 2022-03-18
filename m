Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706764DD752
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 10:48:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7138B10E78F;
	Fri, 18 Mar 2022 09:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89EE310E78F
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 09:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647596891; x=1679132891;
 h=message-id:subject:from:to:date:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=W7cTGfA50vzE3wS1UiQMk2bDgfdS/HbR013JM+oxe1o=;
 b=Fz9ZHyJqM9JZRiDHH1Now5jEdcbnBTiFxSbEeCNGd8txhnmV1ORw9WmX
 pivd8JHxfNm5b7lQpHStpUIgTu9ZCgEGT96V7Yg6THlAq6TqJ4qP2eXeE
 sPI7Kn2EbgOxbTmXRAlRCbpOD0VcwG1doAwBWV2ksYdon0VjkrNC9zW7a
 MCEoe7XCWKn1M24TFGWVlutFelWkm8xMJFgTpgrliH6Xa8TNiEOyOmwaH
 2SJC0VizzAWe9r5dDqKOQ8s5l1TxL71bi3LhwGNaJK2xIowLtFDZQKTZ9
 p0HwDBhU46e893nkrqalIBu+lAvlxtA78fFHQ92LPy5T6OawNrR7zrXxl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="256830689"
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="256830689"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 02:48:11 -0700
X-IronPort-AV: E=Sophos;i="5.90,191,1643702400"; d="scan'208";a="784172016"
Received: from mjjackso-mobl2.amr.corp.intel.com (HELO [10.249.254.72])
 ([10.249.254.72])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 02:48:09 -0700
Message-ID: <ddd7af8f57320a7e2a84b3fdb94e3050eae81857.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>, "Auld, Matthew"
 <matthew.auld@intel.com>,  "C, Ramalingam" <ramalingam.c@intel.com>,
 "Vetter, Daniel" <daniel.vetter@intel.com>
Date: Fri, 18 Mar 2022 10:48:06 +0100
In-Reply-To: <d874ba08a65e4468baae737d826a85a5@intel.com>
References: <162c1566-87c6-072f-d340-1693f6a71aea@linux.intel.com>
 <164750662822.7267.9355161518284202141@jlahtine-mobl.ger.corp.intel.com>
 <9eb06b576948707f9a0527b07b58b9640821bf19.camel@linux.intel.com>
 <d874ba08a65e4468baae737d826a85a5@intel.com>
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

Hi,

On Thu, 2022-03-17 at 18:21 +0000, Bloomfield, Jon wrote:
> +@Vetter, Daniel
> 
> Let's not start re-inventing this on the fly again. That's how we got
> into trouble in the past. The SAS/Whitepaper does currently require
> the SMEM+LMEM placement for mappable, for good reasons.

Just to avoid any misunderstandings here:

We have two hard requirements from Arch that clash, main problem is
compressed bos can't be captured on error with current designs.

From an engineering point of view we can do little more than list
options available to resolve this and whether they are hard or not so
hard to implemement. But IMHO Arch needs to agree on what's got to
give.

Thanks,
Thomas


> 
> We cannot 'always migrate to mappable in the fault handler'. Or at
> least, this is not as trivial as it is to write in a sentence due to
> the need to spill out other active objects, and all the usual
> challenges with context synchronization etc. It is possible, perhaps
> with a lot of care, but it is challenging to guarantee, easy to
> break, and not needed for 99.9% of software. We are trying to
> simplify our driver stack.
> 
> If we need a special mechanism for debug, we should devise a special
> mechanism, not throw out the general LMEM+SMEM requirement. Are there
> any identified first-class clients that require such access, or is it
> only debugging tools?
> 
> If only debug, then why can't the tool use a copy engine submission
> to access the data in place? Or perhaps a bespoke ioctl to access
> this via the KMD (and kmd submitted copy-engine BB)?
> 
> Thanks,
> 
> Jon
> 
> > -----Original Message-----
> > From: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> > Sent: Thursday, March 17, 2022 2:35 AM
> > To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Bloomfield,
> > Jon
> > <jon.bloomfield@intel.com>; Intel Graphics Development <intel-
> > gfx@lists.freedesktop.org>; Auld, Matthew <matthew.auld@intel.com>;
> > C,
> > Ramalingam <ramalingam.c@intel.com>
> > Subject: Re: Small bar recovery vs compressed content on DG2
> > 
> > On Thu, 2022-03-17 at 10:43 +0200, Joonas Lahtinen wrote:
> > > Quoting Thomas Hellström (2022-03-16 09:25:16)
> > > > Hi!
> > > > 
> > > > Do we somehow need to clarify in the headers the semantics for
> > > > this?
> > > > 
> > > >  From my understanding when discussing the CCS migration series
> > > > with
> > > > Ram, the kernel will never do any resolving (compressing /
> > > > decompressing) migrations or evictions which basically implies
> > > > the
> > > > following:
> > > > 
> > > > *) Compressed data must have LMEM only placement, otherwise the
> > GPU
> > > > would read garbage if accessing from SMEM.
> > > 
> > > This has always been the case, so it should be documented in the
> > > uAPI
> > > headers and kerneldocs.
> > > 
> > > > *) Compressed data can't be assumed to be mappable by the CPU,
> > > > because
> > > > in order to ensure that on small BAR, the placement needs to be
> > > > LMEM+SMEM.
> > > 
> > > Not strictly true, as we could always migrate to the mappable
> > > region
> > > in
> > > the CPU fault handler. Will need the same set of tricks as with
> > > limited
> > > mappable GGTT in past.
> > 
> > In addition to Matt's reply:
> > 
> > Yes, if there is sufficient space. I'm not sure we want to
> > complicate
> > this to migrate only part of the buffer to mappable on a fault
> > basis?
> > Otherwise this is likely to fail.
> > 
> > One option is to allow cpu-mapping from SYSTEM like TTM is doing
> > for
> > evicted buffers, even if SYSTEM is not in the placement list, and
> > then
> > migrate back to LMEM for gpu access.
> > 
> > But can user-space even interpret the compressed data when CPU-
> > mapping?
> > without access to the CCS metadata?
> > 
> > > 
> > > > *) Neither can compressed data be part of a CAPTURE buffer,
> > > > because
> > > > that
> > > > requires the data to be CPU-mappable.
> > > 
> > > Especially this will be too big of a limitation which we can't
> > > really
> > > afford
> > > when it comes to debugging.
> > 
> > Same here WRT user-space interpretation.
> > 
> > This will become especially tricky on small BAR, because either we
> > need
> > to fit all compressed buffers in the mappable portion, or be able
> > to
> > blit the contents of the capture buffers from within the fence
> > signalling critical section, which will require a lot of work I
> > guess.
> > 
> > /Thomas
> > 
> > 
> > > 
> > > Regards, Joonas
> > > 
> > > > Are we (and user-mode drivers) OK with these restrictions, or
> > > > do we
> > > > need
> > > > to rethink?
> > > > 
> > > > Thanks,
> > > > 
> > > > Thomas
> > > > 
> > > > 
> > 
> 


