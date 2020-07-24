Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BF422C49A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 13:56:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54A326E963;
	Fri, 24 Jul 2020 11:56:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B1A16E957
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 11:56:10 +0000 (UTC)
IronPort-SDR: pbg8TZHa2+yn/2f5Xtg3WF2QZ5KVlK5PlYgbt5xo7fRINRMzA2e0vLV7V9XkItqNrEDpwDNsjo
 p/jHKAppxRaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9691"; a="215281100"
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="215281100"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 04:56:09 -0700
IronPort-SDR: 5cR1ncTT32iRwPUdvGxPk7qiuG/pFN6t9JCqd13HbOAC7qzXgjRzNYZVLtgiHxN2zm8mWCfmyA
 fM0UbwBsmbqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,390,1589266800"; d="scan'208";a="489183348"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jul 2020 04:56:08 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1FB035C0D00; Fri, 24 Jul 2020 14:55:39 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <159552931718.21069.13813749151778428706@build.alporthouse.com>
References: <20200723183348.4037-1-chris@chris-wilson.co.uk>
 <159552931718.21069.13813749151778428706@build.alporthouse.com>
Date: Fri, 24 Jul 2020 14:55:39 +0300
Message-ID: <87tuxx1610.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Delay tracking the GEM
 context until it is registered
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Chris Wilson (2020-07-23 19:33:48)
>> Avoid exposing a partially constructed context by deferring the
>> list_add() from the initial construction to the end of registration.
>> Otherwise, if we peek into the list of contexts from inside debugfs, we
>> may see the partially constructed context and change down some dangling
>
> s/change/chase/

that.

Are you sure about the fixes as it is not the commit that
actually introduces the registration into context.list?

For me it looks like it is a4e7ccdac38e.
-Mika

>
>> incomplete pointers.
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
