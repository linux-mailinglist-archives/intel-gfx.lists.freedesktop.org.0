Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C162A40E4
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 10:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 496A76E85A;
	Tue,  3 Nov 2020 09:58:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDFB06E85A
 for <Intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 09:58:32 +0000 (UTC)
IronPort-SDR: hcaEySASonghpw5IWeqyxnoa8TnZ2h92tISTnyle5GthWzqZ9+AkxFt4DMz9Kwh2Y9Qs7/KjBX
 MdOU/1X6tldA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="230656685"
X-IronPort-AV: E=Sophos;i="5.77,447,1596524400"; d="scan'208";a="230656685"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 01:58:32 -0800
IronPort-SDR: qXZ3CdVSYmts5JPldn4hVxPQrAnAqM0Gp50/FrVIsGpM55HmGd9I+qH+0dA28fc+ZNECT9313p
 hjOw5WMKj6fQ==
X-IronPort-AV: E=Sophos;i="5.77,447,1596524400"; d="scan'208";a="528363463"
Received: from stevenro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.23.13])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 01:58:28 -0800
MIME-Version: 1.0
In-Reply-To: <99a0d1eb-7fde-dff4-225f-92b68fbf7620@linux.intel.com>
References: <20200927063437.13988-1-baolu.lu@linux.intel.com>
 <e999e371-6d36-ffea-542f-a5f4b230b0ed@linux.intel.com>
 <c2af9a9d-1cae-b8f7-a0b3-880574060a23@linux.intel.com>
 <8bac9e91-36a0-c1d6-a887-4d60567ac75a@linux.intel.com>
 <3f5694f3-62f9-cc2b-1c2b-f9e99a4788c1@linux.intel.com>
 <1ce5b94a-38b3-548e-3b1a-a68390b93953@linux.intel.com>
 <82dab98e-0761-8946-c31c-92f19a0615b4@linux.intel.com>
 <99a0d1eb-7fde-dff4-225f-92b68fbf7620@linux.intel.com>
To: Christoph Hellwig <hch@infradead.org>,
 David Woodhouse <dwmw2@infradead.org>, Joerg Roedel <joro@8bytes.org>,
 Lu Baolu <baolu.lu@linux.intel.com>, Tom Murphy <murphyt7@tcd.ie>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <160439750572.8460.14782978404889004150@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Tue, 03 Nov 2020 11:58:26 +0200
Subject: Re: [Intel-gfx] [PATCH v4 0/7] Convert the intel iommu driver to
 the dma-iommu api
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
Cc: Intel-gfx@lists.freedesktop.org, Ashok Raj <ashok.raj@intel.com>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-11-03 11:14:32)
> 
> 
> On 03/11/2020 02:53, Lu Baolu wrote:
> > On 11/2/20 7:52 PM, Tvrtko Ursulin wrote:
> >>
> >> On 02/11/2020 02:00, Lu Baolu wrote:
> >>> Hi Tvrtko,
> >>> On 10/12/20 4:44 PM, Tvrtko Ursulin wrote:
> >>>>
> >>>> On 29/09/2020 01:11, Lu Baolu wrote:

<SNIP>

> >>>> FYI we have merged the required i915 patches to out tree last week 
> >>>> or so. I *think* this means they will go into 5.11. So the i915 
> >>>> specific workaround patch will not be needed in Intel IOMMU.
> >>>
> >>> Do you mind telling me what's the status of this fix patch? I tried this
> >>> series on v5.10-rc1 with the graphic quirk patch dropped. I am still
> >>> seeing dma faults from graphic device.
> >>
> >> Hmm back then I thought i915 fixes for this would land in 5.11 so I 
> >> will stick with that. :) (See my quoted text a paragraph above yours.)
> > 
> > What size are those fixes? I am considering pushing this series for
> > v5.11. Is it possible to get some acks for those patches and let them
> > go to Linus through iommu tree?
> 
> For 5.10 you mean? They feel a bit too large for comfort to go via a 
> non-i915/drm tree. These are the two patches required:
> 
> https://cgit.freedesktop.org/drm-intel/commit/?h=drm-intel-gt-next&id=8a473dbadccfc6206150de3db3223c40785da348
> https://cgit.freedesktop.org/drm-intel/commit/?h=drm-intel-gt-next&id=934941ed5a3070a7833c688c9b1d71484fc01a68
> 
> I'll copy Joonas as our maintainer - how does the idea of taking the 
> above two patches through the iommu tree sound to you?

Hi Lu,

The patches have already been merged into our tree and are heading
towards 5.11, so I don't think we should merge them elsewhere. DRM
subsystem had the feature freeze for 5.10 at the time of 5.9-rc5
and only drm-intel-fixes pull requests are sent after that.

The patches seem to target to eliminate need for a previously used
workaround. To me it seems more appropriate for the patches to follow
the regular process as new feature for 5.11 to make sure the changes
get validated as part of linux-next.

Would that work for you? We intend to send the feature pull requests
to DRM for 5.11 in the upcoming weeks.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
