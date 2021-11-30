Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB3C4636D3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 15:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C99F6E922;
	Tue, 30 Nov 2021 14:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A809E6E911;
 Tue, 30 Nov 2021 14:35:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="223453512"
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="223453512"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 06:35:06 -0800
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="512207455"
Received: from hekner-mobl5.ger.corp.intel.com (HELO [10.249.254.206])
 ([10.249.254.206])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 06:35:03 -0800
Message-ID: <29d096c91d720fbe5d410124580a02b663155b56.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org,  dri-devel@lists.freedesktop.org
Date: Tue, 30 Nov 2021 15:35:01 +0100
In-Reply-To: <2551da4d-2e51-cc24-7d4a-84ae00a1547c@amd.com>
References: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
 <20211130121936.586031-2-thomas.hellstrom@linux.intel.com>
 <c7502701-e85c-39f0-c249-702d029faa9e@linux.intel.com>
 <b440cfbc-2b9a-1aa2-76d6-17337f835777@linux.intel.com>
 <52a7cf8c-59c7-fec0-2274-d19bdc505314@amd.com>
 <57df8b0b-1d65-155f-a9a6-8073bbd4f28f@linux.intel.com>
 <2551da4d-2e51-cc24-7d4a-84ae00a1547c@amd.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-2.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC PATCH 1/2] dma-fence: Avoid establishing a
 locking order between fence classes
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
Cc: linaro-mm-sig@lists.linaro.org, matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2021-11-30 at 14:26 +0100, Christian König wrote:
> Am 30.11.21 um 13:56 schrieb Thomas Hellström:
> > 
> > On 11/30/21 13:42, Christian König wrote:
> > > Am 30.11.21 um 13:31 schrieb Thomas Hellström:
> > > > [SNIP]
> > > > > Other than that, I didn't investigate the nesting fails
> > > > > enough to 
> > > > > say I can accurately review this. :)
> > > > 
> > > > Basically the problem is that within enable_signaling() which
> > > > is 
> > > > called with the dma_fence lock held, we take the dma_fence lock
> > > > of 
> > > > another fence. If that other fence is a dma_fence_array, or a 
> > > > dma_fence_chain which in turn tries to lock a dma_fence_array
> > > > we hit 
> > > > a splat.
> > > 
> > > Yeah, I already thought that you constructed something like that.
> > > 
> > > You get the splat because what you do here is illegal, you can't
> > > mix 
> > > dma_fence_array and dma_fence_chain like this or you can end up
> > > in a 
> > > stack corruption.
> > 
> > Hmm. Ok, so what is the stack corruption, is it that the 
> > enable_signaling() will end up with endless recursion? If so,
> > wouldn't 
> > it be more usable we break that recursion chain and allow a more 
> > general use?
> 
> The problem is that this is not easily possible for dma_fence_array 
> containers. Just imagine that you drop the last reference to the 
> containing fences during dma_fence_array destruction if any of the 
> contained fences is another container you can easily run into
> recursion 
> and with that stack corruption.

Indeed, that would require some deeper surgery.

> 
> That's one of the major reasons I came up with the dma_fence_chain 
> container. This one you can chain any number of elements together 
> without running into any recursion.
> 
> > Also what are the mixing rules between these? Never use a 
> > dma-fence-chain as one of the array fences and never use a 
> > dma-fence-array as a dma-fence-chain fence?
> 
> You can't add any other container to a dma_fence_array, neither other
> dma_fence_array instances nor dma_fence_chain instances.
> 
> IIRC at least technically a dma_fence_chain can contain a 
> dma_fence_array if you absolutely need that, but Daniel, Jason and I 
> already had the same discussion a while back and came to the
> conclusion 
> to avoid that as well if possible.

Yes, this is actually the use-case. But what I can't easily guarantee
is that that dma_fence_chain isn't fed into a dma_fence_array somewhere
else. How do you typically avoid that?

Meanwhile I guess I need to take a different approach in the driver to
avoid this altogether.

/Thomas


> 
> Regards,
> Christian.
> 
> > 
> > /Thomas
> > 
> > 
> > 
> > 
> > > 
> > > Regards,
> > > Christian.
> > > 
> > > > 
> > > > But I'll update the commit message with a typical splat.
> > > > 
> > > > /Thomas
> > > 
> 


