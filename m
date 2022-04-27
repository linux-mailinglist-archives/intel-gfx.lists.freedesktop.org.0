Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3748511682
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 13:58:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B566410E346;
	Wed, 27 Apr 2022 11:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE21510E02A
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 11:58:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651060729; x=1682596729;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fdj7S+bKtIboo5XqxHp2xZTZfstAHT2U8JqKnmio9S0=;
 b=bKuDlE+JK0Kv0b69xTOID2mdysiSWKUcYDr/2XE/K1YE9H/DccxXshWr
 kyRxEHHVqPuxBqir4ZgFVPP0aQKUf9Nx2v0cqLFNq5F6U/6wNBTq9Wze1
 sf4yxORu6/iKuE7XV0CvKix6Fot5RikS//T5yq9hXGl5mamiW34Tv6TXg
 BEVC2INGbp0Sw+vJr8jR5XFb3VdOZhWi2lru4WloMkGW5YFjktL2jm9Ax
 nHiZWqGWxCPI6tD0JFjtcf3vzov70ceWjWV6L03SYx5NKfKDrl+5GVwlx
 2iYrFUTVnGsmZxOvdw96VPCcEE7oS9oOhyAJR+1+tkdiYlWqHRBcZFSO0 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="247835009"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="247835009"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 04:58:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="596243255"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga001.jf.intel.com with SMTP; 27 Apr 2022 04:58:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Apr 2022 14:58:46 +0300
Date: Wed, 27 Apr 2022 14:58:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Message-ID: <Ymkv9sCuA9SwUIvj@intel.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <Ymg2uBjovjgVAyC5@intel.com>
 <DM6PR11MB317721EBFA40865B0898F40ABAFA9@DM6PR11MB3177.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM6PR11MB317721EBFA40865B0898F40ABAFA9@DM6PR11MB3177.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 27, 2022 at 02:58:09AM +0000, Murthy, Arun R wrote:
> > On Tue, Apr 26, 2022 at 05:34:07PM +0530, Arun R Murthy wrote:
> > > Starting from Gen12 Async Flip is supported on linear buffers.
> > 
> > It's supported earlier than that. But IIRC there was some kind of GTT
> > alignment vs. async flip vs. FBC restriction that we weren't handling.
> > 
> Should I enable it for earlier Gen also, or is it fine to keep it with starting Gen 12.
> The only restriction that I see in Bspec is that during async flip changes
> to stride, pixel format, compression, FBC etc is not allowed and I see
> this is already taken care of. Am I missing anything?

There is that GTT alignment restriction that should be mentioned
somewhere. Can't quite remember where it was, maybe in PLANE_SURF.

But I guess the bigger question is what is the actual use case for
this?

-- 
Ville Syrjälä
Intel
