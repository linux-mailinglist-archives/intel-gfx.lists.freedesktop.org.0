Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DABF193208
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 21:44:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C59E46E1E0;
	Wed, 25 Mar 2020 20:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FC836E1E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2020 20:44:51 +0000 (UTC)
IronPort-SDR: Dzvw2eMYMFXbm7MCDcH7KM9Djr1xc4Ac/IisH7mkte8bIkDXOcZjlAmFbCasECoOWDjsHVB0FP
 /XRDtnEnbkaQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2020 13:44:50 -0700
IronPort-SDR: soq9SkwT5aGh+Ik9sLU5knVYBxmo7lIqAkZ7skuotvBtAUVQXO3jNfN3D5+bs+J04LxtSnp+bg
 WulFPYbPEwFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,305,1580803200"; d="scan'208";a="282259178"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.251.139.88])
 by fmsmga002.fm.intel.com with ESMTP; 25 Mar 2020 13:44:50 -0700
Date: Wed, 25 Mar 2020 13:44:50 -0700
Message-ID: <87a744tb99.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <37f21906-12dd-efbf-6e49-64bd19bf5e23@intel.com>
References: <98393a3bbd2652886d895e1c3250e43c6e0f1a24.1585160174.git.ashutosh.dixit@intel.com>	<37f21906-12dd-efbf-6e49-64bd19bf5e23@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL/10.8 EasyPG/1.0.0 Emacs/26
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Do not clear pollin for
 small user read buffers
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

On Wed, 25 Mar 2020 12:25:59 -0700, Lionel Landwerlin wrote:
>
> On 25/03/2020 20:20, Ashutosh Dixit wrote:
> > It is wrong to block the user thread in the next poll when OA data is
> > already available which could not fit in the user buffer provided in
> > the previous read. In several cases the exact user buffer size is not
> > known. Blocking user space in poll can lead to data loss when the
> > buffer size used is smaller than the available data.
> >
> > This change fixes this issue and allows user space to read all OA data
> > even when using a buffer size smaller than the available data using
> > multiple non-blocking reads rather than staying blocked in poll till
> > the next timer interrupt.
>
> Looks like you found a pretty important issue.
>
> Can you write an IGT test case so that we don't run into it again?

OK I'll see if I can come up with an IGT.

Thanks!
--
Ashutosh
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
