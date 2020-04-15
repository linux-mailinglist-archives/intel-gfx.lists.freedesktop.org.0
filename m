Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 715091A99F3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 12:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A77206E946;
	Wed, 15 Apr 2020 10:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 495566E945;
 Wed, 15 Apr 2020 10:08:56 +0000 (UTC)
IronPort-SDR: INM6xAk0FHi8W3rHWzWjgcbTAJgAJV2c6hiG/d4bUbV+G4BOe6N86oirioSKPgMFB9gZD6Hn6l
 bsbu5VcNi87Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 03:08:55 -0700
IronPort-SDR: w7R8TuPWiYiDt5MsdG3EG2SAGMGa+GVC6NJnKsEguCmf6KnN/EKb7Fu0XcDwV4G+nLIFQ4IjaM
 UHJEdnxKSfSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="332455169"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga001.jf.intel.com with ESMTP; 15 Apr 2020 03:08:52 -0700
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1jOeyR-0007u7-7p; Wed, 15 Apr 2020 13:08:51 +0300
Date: Wed, 15 Apr 2020 13:08:51 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Maxime Ripard <maxime@cerno.tech>
Message-ID: <20200415100851.GS9497@platvala-desk.ger.corp.intel.com>
References: <20191022005910.siuiwfikmr76qpg3@smtp.gmail.com>
 <20200415094649.2tgelyotjliao2dk@gilmour.lan>
 <0kwho152-gzRe09N-ECBh9KepTGX-b_MU8X-TtBnTdWAQP9o5ni7tOVqGn9LK2U2ormexeYvS8U1uVcBMY5Lv-Le4z0dnnMnRaSbb29xjqo=@emersion.fr>
 <20200415100618.dffhwxhctgarqleq@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415100618.dffhwxhctgarqleq@gilmour.lan>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v7 i-g-t 2/4] kms_writeback: Add initial
 writeback tests
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
Cc: Brian Starkey <rodrigosiqueiramelo@gmail.com>,
 Simon Ser <contact@emersion.fr>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 nd <nd@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 12:06:18PM +0200, Maxime Ripard wrote:
> On Wed, Apr 15, 2020 at 09:49:46AM +0000, Simon Ser wrote:
> > > > +   igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR, (uint64_t)out_fence_ptr);
> > >
> > > On ARM (32bits), this cast creates a compilation error since the
> > > pointer size isn't an uint64_t.
> >
> > Does casting to uintptr_t before uint64_t fix it?
> 
> It does yep. Casting to uintptr_t alone also works


to_user_pointer(out_fence_ptr)

-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
