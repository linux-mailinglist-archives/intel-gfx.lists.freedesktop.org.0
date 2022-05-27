Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6A55359AF
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 08:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADB4510ED01;
	Fri, 27 May 2022 06:54:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5609F10ED01
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 06:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653634458; x=1685170458;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gXTDpzKAz9MGcZYlOztgNjphLN1ETusXwk21AmDnGn4=;
 b=H4YMWkmralJi+3njFvtDtAI5RhOVunvBHx1MAjCwG9IbSl9Ahkwu+LCZ
 rjBTI/fUzrA1y0y2VMVS0wllw6NpTGetMYu7BnxihjH3JE8+fjNeeKbZ/
 NnYaRT5M3Y8XuyLALwGp3lg8+cg+CD/XUjTXisLVi8vbTYNSfBKlD/VVx
 8wWdYTZncj4eI4t7RlmzeccmMEvOaB8mp7pUWM6WDkncJpOnycvPIGsp3
 uRO9r8TFs4EmJtWKxMxNoQCn4rgSvur2k5R3iB963QSzzyU3JdTX5ureD
 cRbyN5+4zqXdMgU8ol8CpmXM1ueAAaahI4h/MSZ2N3zJF5lbH3NpqvmC6 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="274406049"
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="274406049"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 23:54:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,254,1647327600"; d="scan'208";a="603713923"
Received: from kbojarow-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.27.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2022 23:54:16 -0700
Date: Fri, 27 May 2022 08:54:14 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YpB1lk5SFeUIH4+d@zkempczy-mobl2>
References: <20220323174638.11017-1-zbigniew.kempczynski@intel.com>
 <20220331171602.y7dhjumsmmisu3h5@ldmartin-desk2>
 <20220406153632.zpc7dnrqje2dkftk@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220406153632.zpc7dnrqje2dkftk@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH] [topic/core-for-CI] Revert "drm/i915/dg2:
 Add relocation exception"
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

On Wed, Apr 06, 2022 at 08:36:32AM -0700, Lucas De Marchi wrote:
> On Thu, Mar 31, 2022 at 10:16:02AM -0700, Lucas De Marchi wrote:
> > On Wed, Mar 23, 2022 at 06:46:38PM +0100, Zbigniew Kempczyński wrote:
> > > This reverts commit 904ebf2ba89edaeba5c7c10540e43dba63541dc6.
> > > 
> > > Failures on dg2 tests were caused by invalid alignment when local memory
> > > was in use. Changes which adopt alignment according to gen were already
> > > merged in IGT so lets revert relocation temporary enabler for dg2. Keeping
> > > it is a little bit problematic for IGT because on premerge we would see
> > > results with kernel which supports relocation. To see no-relocation
> > > results we need to send disabler (like this revert), point IGT with
> > > "Test-with" tag what is cumbersome and time consuming so lets do this
> > > permanently. If we will see some failures they need to be fixed instead
> > > of keeping relocation enabler.
> > > 
> > > Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Cc: Dave Airlie <airlied@redhat.com>
> > > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > > Cc: Jason Ekstrand <jason@jlekstrand.net>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > 
> > thanks. I double checked BAT and things seem to be equivalent now
> > without that hack. I removed it from topic/core-for-CI.
> > 
> > How are we with the igt tests executed in full run?
> 
> ping?
> 
> Also, we still have this exception for ADL-P, ADL-S and RKL. Should we
> go ahead and try removing them?
> 
> Lucas De Marchi

Yes, please drop ADL*/RKL patch in core-for-CI. 

--
Zbigniew
