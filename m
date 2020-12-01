Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E52F2CAE11
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 22:11:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7474D6E02B;
	Tue,  1 Dec 2020 21:11:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ED8B6E02B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 21:10:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23182158-1500050 for multiple; Tue, 01 Dec 2020 21:10:46 +0000
MIME-Version: 1.0
In-Reply-To: <20201201205021.GD2849269@ideak-desk.fi.intel.com>
References: <20201123182631.1740781-1-imre.deak@intel.com>
 <20201123182631.1740781-2-imre.deak@intel.com>
 <160682607520.4024.5213539229190522123@build.alporthouse.com>
 <20201201205021.GD2849269@ideak-desk.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Imre Deak <imre.deak@intel.com>
Date: Tue, 01 Dec 2020 21:10:46 +0000
Message-ID: <160685704629.19969.3005909283019006262@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Add Clear Color support
 for TGL Render Decompression
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
Cc: Nanley G Chery <nanley.g.chery@intel.com>,
 Rafael Antognolli <rafael.antognolli@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 Ville Syrjala <ville.syrjala@intel.com>,
 Shashank Sharma <shashank.sharma@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Imre Deak (2020-12-01 20:50:21)
> On Tue, Dec 01, 2020 at 12:34:35PM +0000, Chris Wilson wrote:
> > There's also the matter of coherency. Is the object coherent for reads
> > from the CPU? -- in most cases it will not be, but you should check
> > obj->cache_coherency to see if the read requires a preceding
> > cache_clflush_range() / drm_clflush_virt_range().
> 
> Ok, at this point for the TGL-only modifier, we could then just
> warn_on(!bo_cache_coherent_for_read) due to HAS_LLC.

Stupid question, is the same path required for dg1?

That makes everything more difficult as the struct pages are gone.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
