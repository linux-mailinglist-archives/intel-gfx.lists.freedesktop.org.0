Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC321C5114
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 10:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B61893CB;
	Tue,  5 May 2020 08:48:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8394F893CB
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 08:48:00 +0000 (UTC)
IronPort-SDR: 8mdjUSeSCV12L+Yr2qOF8kO0H0hFVWubRv2mtzjGRkyL+az5PYbrmGlKdcEtn0e4Fstv7P/gX1
 QwpucsAc369A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2020 01:47:59 -0700
IronPort-SDR: pZ1ohflhqSSFux/2NSSfzy++NcHkzKtO8rNRxjbKpTnbTuB3i3wFdqZgmc3RFT1D5R0HcVoeQw
 5P3hZrnzjCUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; d="scan'208";a="369348029"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga001.fm.intel.com with ESMTP; 05 May 2020 01:47:59 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 996085C1DC1; Tue,  5 May 2020 11:45:53 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158854115006.15829.6995186050996321030@build.alporthouse.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
 <20200430154735.22434-4-mika.kuoppala@linux.intel.com>
 <158854115006.15829.6995186050996321030@build.alporthouse.com>
Date: Tue, 05 May 2020 11:45:53 +0300
Message-ID: <87r1vyojlq.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/gen12: Flush L3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2020-04-30 16:47:30)
>> Flush TDL and L3.
>> 
>> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>
> That's very misnamed bit!
>
> There's a comment that this must be paired with the corresponding pc in
> the same HW dispatch.

Not for gen12.
-Mika
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
