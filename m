Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDF21B239D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 12:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D35F6E902;
	Tue, 21 Apr 2020 10:09:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99ED06E902
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 10:09:36 +0000 (UTC)
IronPort-SDR: UzS0mebmBkgQ+MZE69CsbcW1r8VvNBnx0TLxfSFv/+fRFNYK0DdP+T3yruVgecsSVu7Os1N+GU
 gkDxW0m+YxAw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 03:09:36 -0700
IronPort-SDR: Egp4JjgjD5Nuq1Qv14Bj9FxJgMHQplPN5OHAVElbvlQUiVjdFigpVIntuAp22+gfJz/2V1z6Yt
 tbmWYp3ViOJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="456708880"
Received: from plaxmina-desktop.iind.intel.com ([10.145.162.62])
 by fmsmga006.fm.intel.com with ESMTP; 21 Apr 2020 03:09:34 -0700
Date: Tue, 21 Apr 2020 15:31:08 +0530
From: "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200421100108.GB436@plaxmina-desktop.iind.intel.com>
References: <20200406112800.23762-1-pankaj.laxminarayan.bharadiya@intel.com>
 <87d081z16r.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d081z16r.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 00/18] Prefer drm_WARN* over WARN*
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

On Tue, Apr 21, 2020 at 11:35:08AM +0300, Jani Nikula wrote:
> On Mon, 06 Apr 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> > Now we have struct drm_device specific drm_WARN* macros which include
> > device information in the backtrace, so we know what device the
> > warnings originate from.
> >
> > This series converts WARN* with drm_WARN* where struct drm_device
> > pointer can be extracted.
> 
> I think I pushed all the patches that I didn't comment on separately,
> and that still applied.

Thank you Jani. Will rework on pending patches and resubmit.

Thanks,
Pankaj

> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
