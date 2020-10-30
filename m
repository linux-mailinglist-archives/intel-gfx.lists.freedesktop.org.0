Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AB52A06C2
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 14:50:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42DF6E9BA;
	Fri, 30 Oct 2020 13:50:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 537CE6E9BA
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 13:50:15 +0000 (UTC)
IronPort-SDR: q6C9Nm1ya7WknNbnXViMmMdVcG6QLw2UR3ohhH+csA+l5FqS+yct+d3Jq90XUol8F1RWJVkCAY
 OOQCok8gG0Sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="166020969"
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="166020969"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 06:50:14 -0700
IronPort-SDR: gePcNNnwiQ7zr8wuS0BdKEDCwqVvs8wNpublrTWHuXkKAnZq05mtgTrufVCUzVgEJgEsGsRD9t
 rKYx9Rmsx6Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="425349095"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 30 Oct 2020 06:50:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Oct 2020 15:50:11 +0200
Date: Fri, 30 Oct 2020 15:50:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201030135011.GI6112@intel.com>
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
 <20201028213323.5423-18-ville.syrjala@linux.intel.com>
 <20201028221657.lizjycr7kxwl274n@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201028221657.lizjycr7kxwl274n@ldmartin-desk1>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 17/19] drm/i915: Enable hpd logic only
 for ports that are present
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 28, 2020 at 03:16:57PM -0700, Lucas De Marchi wrote:
> On Wed, Oct 28, 2020 at 11:33:21PM +0200, Ville Syrj=E4l=E4 wrote:
> >From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> >Let's enable the hardware hpd logic only for the ports we
> >can actually use.
> >
> >In theory this may save some miniscule amounts of power,
> >and more importantly it eliminates a lot if platform specific
> >codepaths since the generic thing can now deal with any
> >combination of ports being present on each SKU.
> >
> >v2: Deal with DG1
> >
> >Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> =

> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

While applying I noticed that I fumbled the dg1 changes slightly.
icp_ddi_hotplug_enables() was missing the HPD_PORT_D stuff.
I fixed that up and pushed the lot.

Thanks for the review.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
