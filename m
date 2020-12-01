Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8068F2CA210
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 13:05:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C1266E4FB;
	Tue,  1 Dec 2020 12:05:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FBE66E4DD;
 Tue,  1 Dec 2020 12:05:08 +0000 (UTC)
IronPort-SDR: 507T64TTDkOwRPXQ1fVCS6NaXY3PHsNgzdWNbtzuza6c9cJwBzzoGoc6QVODPK/alfG9bqELm9
 H0DOUE/CY54Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="172029157"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="172029157"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 04:05:04 -0800
IronPort-SDR: Xuxp6ebtBehzvYJ8Ak+c74hyfkUmtOVz9HSGx4vXJFQ2p9L5jkPCx3igOuYW3y1M9byrRPjRAW
 zU9f3xwc0Iew==
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="481073569"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 04:05:00 -0800
Date: Tue, 1 Dec 2020 14:04:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Chery, Nanley G" <nanley.g.chery@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201201120456.GC2849269@ideak-desk.fi.intel.com>
References: <20201123182631.1740781-1-imre.deak@intel.com>
 <20201127143100.GB2144692@ideak-desk.fi.intel.com>
 <20201127151920.GI401619@phenom.ffwll.local>
 <20201127180604.GA2169344@ideak-desk.fi.intel.com>
 <0048c10f7b8047b18934e730ae57386c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0048c10f7b8047b18934e730ae57386c@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/framebuffer: Format modifier for
 Intel Gen 12 render compression with Clear Color
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
Reply-To: imre.deak@intel.com
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>, "Kondapally,
 Kalyan" <kalyan.kondapally@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nanley,

thanks for the review.

+Ville, Chris.

On Tue, Dec 01, 2020 at 02:18:26AM +0200, Chery, Nanley G wrote:
> Hi Imre,
>  
> I have a question and a couple comments:
> 
> Is the map of the clear color address creating a new synchronization
> point between the GPU and CPU? If so, I wonder how this will impact
> performance.

The kmap to read the clear value is not adding any sync overhead if
that's what you mean. But the clear value must be in place before we
read it out and that should be guaranteed by the flush we do anyway to wait
for the render result (even considering the explicit L3/RT flush, depth
stall the spec requires for fast clears).

However now that you mention: atm the kmap/readout happens after the
explicit but before the implicit fence-wait. I think it should happen
after the implicit fence-wait.

Ville, Chris, could you confirm the above and also that the above flush
is enough to ensure the CPU read is coherent?

> There was some talk of asynchronously updating the clear color
> register a while back. 

Couldn't find anything with a quick search, do you have a pointer? Just
before the flip we must wait for the render results anyway, as we do
now, so not sure how it could be optimized.

> We probably don't have to update the header, but we noticed in our
> testing that the clear color prefers an alignment greater than 64B.
> Unfortunately, I can't find any bspec note about this. As long as the
> buffer creators are aware though, I think we should be fine. I don't
> know if this is the best forum to bring it up, but I thought I'd
> share.

Yes, would be good to clarify this and get it also to the spec. Then the
driver should also check the alignment of the 3rd FB plane.

> Seems like the upper converted clear color is untested due to the lack
> of RGBX16 support. I suppose that if there are any issues there, they
> can be fixed later...

Yes, a 64bpp RC-CC subtest in IGT is missing, should be easy to add
that.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
