Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D4C2F1DFB
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jan 2021 19:28:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7858A89D1D;
	Mon, 11 Jan 2021 18:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5DCE89D1D
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jan 2021 18:28:50 +0000 (UTC)
IronPort-SDR: 3SXsPNgH46k6BE3+n9YpE+pyQB7Na453g7Mbzkm9VX2QBVr20yodQEbA/QFiMzJ9Lwy4kbwKUl
 9bp2cXgLMPyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="164994817"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="164994817"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 10:28:49 -0800
IronPort-SDR: g+1IEO2p0ByabU5dFT58Umhcj72I5LPYltmx7jZBYXrWtImg0chulumHScQErcqhJY2ID1lwXx
 Y6pF62Ho5gtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="388927339"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 11 Jan 2021 10:28:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Jan 2021 20:28:45 +0200
Date: Mon, 11 Jan 2021 20:28:45 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <X/yY3Tvk8gq+Eg8W@intel.com>
References: <20210107182026.24848-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210107182026.24848-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Try to use fast+narrow link
 on eDP again and fall back to the old max strategy on failure
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
Cc: Matteo Iervasi <matteoiervasi@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>, Albert Astals Cid <aacid@kde.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Emanuele Panigati <ilpanich@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 07, 2021 at 08:20:25PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Some new eDP panels don't like to operate at the max parameters, and
> instead we need to go for an optimal confiugration. That unfortunately
> doesn't work with older eDP panels which are generally only guaranteed
> to work at the max parameters.
> =

> To solve these two conflicting requirements let's start with the optimal
> setup, and if that fails we start again with the max parameters. The
> downside is probably an extra modeset when we switch strategies but
> I don't see a good way to avoid that.
> =

> For a bit of history we first tried to go for the fast+narrow in
> commit 7769db588384 ("drm/i915/dp: optimize eDP 1.4+ link config
> fast and narrow"). but that had to be reverted due to regression
> on older panels in commit f11cb1c19ad0 ("drm/i915/dp: revert back
> to max link rate and lane count on eDP"). So now we try to get
> the best of both worlds by using both strategies.

Pushed. Fingers crossed for no regressions...

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
