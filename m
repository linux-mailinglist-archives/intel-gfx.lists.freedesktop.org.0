Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA153B1A8D
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 14:55:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F006E8D9;
	Wed, 23 Jun 2021 12:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C226E8D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 12:55:40 +0000 (UTC)
IronPort-SDR: VIzt3sY5xiWxatbAwgDVYH2zYIwsavZinz8BsKdGZFy/ZQ3Qj96qeOVz9RY5Poe2+C0hFqyR5l
 41BhkE/goqOw==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="292880441"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="292880441"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 05:55:40 -0700
IronPort-SDR: hE/vuA5zVkB5bB9KF6BJJMVPDdJHT4w1fOJy7mVkngjJOIHpF6iWRyi5xD2oQoCN0sMWvdEQjR
 WBSPms8xFVyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="444947250"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 23 Jun 2021 05:55:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Jun 2021 15:55:37 +0300
Date: Wed, 23 Jun 2021 15:55:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YNMvSVlVCIB7+gz3@intel.com>
References: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
 <20210608073603.2408-14-ville.syrjala@linux.intel.com>
 <87y2b7uzh7.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y2b7uzh7.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 13/17] drm/i915: Deduplicate icl DP HBR2
 vs. eDP HBR3 table
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

On Fri, Jun 18, 2021 at 03:30:28PM +0300, Jani Nikula wrote:
> On Tue, 08 Jun 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > The icl combo phy DP HBR2 is identical to the eDP HBR3 table.
> > Get rid of one redundant copy.
> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Pushed up to here. Thanks for the reviews.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
