Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2E514EF27
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 16:07:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E4716E9B5;
	Fri, 31 Jan 2020 15:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B7E6E9B5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 15:07:48 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 07:07:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="233447977"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 31 Jan 2020 07:07:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 31 Jan 2020 17:07:43 +0200
Date: Fri, 31 Jan 2020 17:07:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200131150743.GR13686@intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
 <20200120174728.21095-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120174728.21095-3-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 02/17] drm/i915: Move linetime wms into the
 crtc state
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 20, 2020 at 07:47:12PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The linetime watermarks really have very little in common with the
> plane watermarks. It looks to be cleaner to simply track them in
> the crtc_state and program them from the normal modeset/fastset
> paths.
> =

> The only dark cloud comes from the fact that the register is
> still supposedly single buffered. So in theory it might still
> need some form of two stage programming. Note that even though
> HSW/BDWhave two stage programming we never computed any special
> intermediate values for the linetime watermarks, and on SKL+
> we don't even have the two stage stuff plugged in since everything
> else is double buffered. So let's assume it's all fine and
> continue doing what we've been doing.
> =

> Actually on HSW/BDW the value should not even change without
> a full modeset since it doesn't account for pfit downscaling.
> Thus only fastboot might be affected. But on SKL+ the pfit
> scaling factor is take into consideration so the value may
> change during any fastset.
> =

> As a bonus we'll plug this thing into the state
> checker/dump now.
> =

> v2: Rebase due to bigjoiner prep
> v2: Only compute ips linetime for IPS capable pipes.
>     Bspec says the register values is ignored for other
>     pipes, but in fact it can't even be written so the
>     state checker becomes unhappy if we don't compute
>     it as zero.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Extracted Stan's r-b from the trybot list (whoops) and pushed the lot:
https://lists.freedesktop.org/archives/intel-gfx-trybot/2020-January/086561=
.html

Thanks for the reviews.

As Imre pointed out there some further docs/function naming improvements
should probably be done to make the thing a bit less confusing. I'll
look at that as a followup.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
