Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D758D4117BC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 17:02:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF3186E528;
	Mon, 20 Sep 2021 15:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7DD6E527;
 Mon, 20 Sep 2021 15:02:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="202647709"
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="202647709"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 08:02:28 -0700
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="548820723"
Received: from msgunjal-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.254.154])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 08:02:24 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YUSUb+JP+e0f+00G@hirez.programming.kicks-ass.net>
References: <96ab9cf1-250a-8f34-51ec-4a7f66a87b39@linux.intel.com>
 <a7e5d99d-39c4-6d27-3029-4689a2a1a17a@linux.intel.com>
 <YTtznr85mg5xXouP@hirez.programming.kicks-ass.net>
 <e8a7754e-23e7-0250-5718-101a56d008f0@linux.intel.com>
 <YUBGPdDDjKlxAuXJ@hirez.programming.kicks-ass.net>
 <205e1591-343b-fb77-cfca-9c16af1484bd@linux.intel.com>
 <YUCpfrbfPSZvD3Xl@phenom.ffwll.local>
 <a374d768-213e-58e7-d281-1c46d1c0c105@linux.intel.com>
 <YUNGaztoBrTzEuEG@hirez.programming.kicks-ass.net>
 <YUSUb+JP+e0f+00G@hirez.programming.kicks-ass.net>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
 Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-kernel@vger.kernel.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <163215014127.5950.11970655278841631448@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 20 Sep 2021 18:02:21 +0300
Subject: Re: [Intel-gfx] [PATCH v2] kernel/locking: Add context to
 ww_mutex_trylock.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Peter Zijlstra (2021-09-17 16:13:19)
> On Thu, Sep 16, 2021 at 03:28:11PM +0200, Peter Zijlstra wrote:
> > On Thu, Sep 16, 2021 at 03:00:39PM +0200, Maarten Lankhorst wrote:
> >=20
> > > > For merge logistics, can we pls have a stable branch? I expect that=
 the
> > > > i915 patches will be ready for 5.16.
> > > >
> > > > Or send it in for -rc2 so that the interface change doesn't cause n=
eedless
> > > > conflicts, whatever you think is best.
> >=20
> > > Yeah, some central branch drm could pull from, would make upstreaming=
 patches that depends on it easier. :)
> >=20
> > I think I'll make tip/locking/wwmutex and include that in
> > tip/locking/core, let me have a poke.
>=20
> This is now so. Enjoy!

This is now merged to drm-intel-gt-next.

Regards, Joonas
