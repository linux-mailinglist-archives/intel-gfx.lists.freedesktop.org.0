Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D5C3066C4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 22:51:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E34AB89A75;
	Wed, 27 Jan 2021 21:51:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F0E89A75;
 Wed, 27 Jan 2021 21:51:54 +0000 (UTC)
IronPort-SDR: rLMBSMZy7FrcHJcrYrzl0VX9Jpz9m6UHM5QcwaZ4NN9i16H3Qz5j9DwavyCBQmF9ASqknRoUHv
 J80XC8lnnmrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="179357107"
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="179357107"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 13:51:45 -0800
IronPort-SDR: qdhVik5hP5coM6khuz6liH/6umyGRhPjZWhkkVIN1PPhhDH5NijjDrxjznhTjKKQhG5a24Emhw
 wRB9Vp08Uu0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="362588174"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 27 Jan 2021 13:51:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Jan 2021 23:51:40 +0200
Date: Wed, 27 Jan 2021 23:51:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <YBHgbAlTH3SF50KD@intel.com>
References: <20210127140822.GA711686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127140822.GA711686@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PULL] drm-intel-next
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 27, 2021 at 09:08:22AM -0500, Rodrigo Vivi wrote:
> Hi Dave and Daniel,
> =

> Hopefully this is the last pull request towards 5.12.
> =

> Please notice this contains a drm/framebuffer change needed for
> supporting clear color support for TGL Render Decompression.
> =

> Here goes drm-intel-next-2021-01-27:
> =

...
> - Async flips for all ilk+ platforms (Ville)

Not quite yet. Still missing one rb so couldn't push the full thing.
So still limited to skl+ I'm afraid.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
