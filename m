Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DFC2FA427
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 16:08:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C026E155;
	Mon, 18 Jan 2021 15:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBED86E155
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 15:08:18 +0000 (UTC)
IronPort-SDR: N7NbQ1uU6l3MR0gQn3HrMaTmlAt7AUin6Lk1NwE1srq/QGQMfVcIb8KXpWsylcd6Q7rVF8q4YM
 od2FTWAWQjng==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="165903705"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="165903705"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 07:08:15 -0800
IronPort-SDR: qWLIIe1/kKeZVfNXUA8MaWxffokLoilMmc0uJPz8meF75Wy4CDfCUwJ66F0lhRE3P4oeaZYiWG
 zk236Q8a6RAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="406244705"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 18 Jan 2021 07:08:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Jan 2021 17:08:10 +0200
Date: Mon, 18 Jan 2021 17:08:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <YAWkWvaa0pgqyJ9p@intel.com>
References: <20210114092236.20477-1-shawn.c.lee@intel.com>
 <20210118022753.8798-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210118022753.8798-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: support two CSC module on
 gen11 and later
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 18, 2021 at 10:27:53AM +0800, Lee Shawn C wrote:
> There are two CSC on pipeline on gen11 and later platform.
> User space application is allowed to enable CTM and RGB
> to YCbCr coversion at the same time now.
> =

> v2: check csc capability in {}_color_check function.
> v3: can't support two CSC at the same time in {ivb,glk}_color_check.
> =

> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Shankar Uma <uma.shankar@intel.com>
> =

> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>

Thanks. Appled to drm-intel-next.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
