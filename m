Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F215748DED6
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 21:24:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3BB10E2CA;
	Thu, 13 Jan 2022 20:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD1E810E12A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jan 2022 20:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642105439; x=1673641439;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VqLI5uwKuK5t8LrctpSrf42TV3Yp1qXJ4zhKYQgVxTs=;
 b=CjzSAJsbSnUDMfQOcvDydmScieYQ2g30vpQafhssbwxr3SuNCsLwZfys
 snAuJXoTDXzOiW+3F9J0zdY8p31OYYEOyFOERLb/J2y342kXbiAhR8uSS
 X7TdFufDAATAISmjLsmkqm08sQowPXVwKkv4aGaiyxMM9MJeKn7oU40zw
 Uy6F6zjEhid5mTfexiQFVfj6QHzEPDSKYEbPjq91PbCgR/A/cVvIQpkEH
 7Yp6EP0U51X94fEzqF8g1EmjLPn+wjsoQ7VfbGOmfELT1HpV2sDne1EFE
 wGbTxFKLRCgkGVdj8UowODUO5KuIavSwWDUIYwlIYxF0EMrCb5i0VOW7t A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="224796326"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="224796326"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:23:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="670634185"
Received: from cdaffron-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.32.51])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 12:23:53 -0800
Date: Thu, 13 Jan 2022 15:23:52 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YeCKWPO1JeTEDcTJ@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
 <Yd9LFygL5q43ziNW@intel.com> <8735lr7et4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8735lr7et4.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 00/11] Start cleaning up register
 definitions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 13, 2022 at 06:58:47PM +0200, Jani Nikula wrote:
> On Wed, 12 Jan 2022, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > I understand that I'm late to the fun here, but I got myself wondering if
> > we couldn't separated the registers in a "regs" directory
> > and find some way to organize them in IP blocks matching the hw...
> >
> > mainly thinking about 2 cases:
> >
> > 1. searching for registers usages...
> > 2. the idea of having some sort of auto generation from spec...
> 
> At least to me it's more important to split these between display and
> gt, and I'd prefer not to have them in the same directory.

yeap, it makes sense...

> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
