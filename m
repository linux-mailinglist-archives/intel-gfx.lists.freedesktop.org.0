Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8F3360850
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 13:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775BD6EA37;
	Thu, 15 Apr 2021 11:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1689F6E1B4;
 Thu, 15 Apr 2021 11:34:07 +0000 (UTC)
IronPort-SDR: +6O8Hysu4SsyC0JHIKkG/6VjkL8YetSw+yGbvY9V2QFQKt7isKHaxgjfVpWlZPfgx1euvrTZOT
 bymf64suEtew==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="174330941"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="174330941"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 04:34:05 -0700
IronPort-SDR: UObVYiMqUmP6GvKLV3xdnaTswwe/gEneFGHhX5AFPsPr+abEft1grOxUuhCtpM18FNVSUf6Obp
 l9900DgweOnA==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="425149144"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.19.111])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 04:34:03 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>
Date: Thu, 15 Apr 2021 13:34:00 +0200
Message-ID: <5786760.lOV4Wx5bFT@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <0bb651d1757d3f73239d7adfbb358ea8c71df923.camel@linux.intel.com>
References: <20210409085704.40233-1-janusz.krzysztofik@linux.intel.com>
 <0bb651d1757d3f73239d7adfbb358ea8c71df923.camel@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH] tests/gem_userptr_blits: Check for
 banned mmap-offset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On czwartek, 15 kwietnia 2021 11:47:29 CEST Marcin Bernatowicz wrote:
> On Fri, 2021-04-09 at 10:57 +0200, Janusz Krzysztofik wrote:
> > Support for mmap-offset to userptr has been obsoleted, then related
> > lockdep splat reported issues are not going to be resolved other than
> > still banning mmap-offset to userptr attempts.
> > 
> > Replace "mmap-offset-invalidate-*" and "readonly-mmap-unsync"
> > subtests
> > which now skip with a negative "mmap-offset-banned" that fails if a
> > mmap-offset attempt to a userptr object doesn't return ENODEV.  Also,
> > remove mmap-offset to userptr dependent processing paths from other
> > subtest bodies and drop obsolete subtest variants.
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com
...
> LGTM,
> Reviewed-by: Marcin Bernatowicz <marcin.bernatowicz@linux.intel.com>

Thank you Marcin, pushed.

Janusz




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
