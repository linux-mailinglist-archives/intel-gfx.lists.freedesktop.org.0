Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A92DC292D9D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 20:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124936EA35;
	Mon, 19 Oct 2020 18:35:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06BC6EA35
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 18:35:16 +0000 (UTC)
IronPort-SDR: meysofN1N/jgdzwHBjbbbeQtTBPhHYuDtdb3qHaLgWTFTQ50dUSEiqbUt4LSixDKr98n71riSJ
 qGYe4Jh7vegA==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="166304744"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="166304744"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 11:35:12 -0700
IronPort-SDR: cjG7EmX4D7hD3jifVfPObczLzgt/NSIWIKw7up7eladp1K3Gwf5P+3qCGyJEJltUhSQo3qATa5
 sLpdOsZ17lSA==
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="422266563"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 11:35:12 -0700
Date: Mon, 19 Oct 2020 14:36:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201019183652.GC3149316@intel.com>
References: <20201019175310.GH2616619@intel.com>
 <160313151290.4425.4599710652649306435@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160313151290.4425.4599710652649306435@build.alporthouse.com>
Subject: Re: [Intel-gfx] Fixes that failed cherry-pick to 5.10
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
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 19, 2020 at 07:18:32PM +0100, Chris Wilson wrote:
> Quoting Rodrigo Vivi (2020-10-19 18:53:10)
> > Hi Chris and Ville,
> > 
> > Failed to cherry-pick:
> > 233c1ae3c83f ("drm/i915/gt: Wait for CSB entries on Tigerlake")
> 
> See https://cgit.freedesktop.org/~ickle/linux-2.6/log/?h=dif for the
> dependencies.

Thanks.

And the other one was already there, but dim got confused.
Please disregard that.

> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
