Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C28411F53E5
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 13:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64496E550;
	Wed, 10 Jun 2020 11:54:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A44626E54C;
 Wed, 10 Jun 2020 11:54:40 +0000 (UTC)
IronPort-SDR: WCDy2rVoFisnRvKomyHdvtjKs2fOsmBl4y0fUTUTZl8jOSEoaIxsfRI0pRCSkABLz/BUvAZQ1Y
 yR3LcM0k9zjQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 04:54:39 -0700
IronPort-SDR: eujbGGjUvEK+OG9icJk8rb0nYxZTbfgTnDh6vpJrPCrNc8twtIVUVp+GHTSoO4zjykoHRG3kUV
 hduoBlw+5nNw==
X-IronPort-AV: E=Sophos;i="5.73,495,1583222400"; d="scan'208";a="447475792"
Received: from ksagi-mobl.amr.corp.intel.com (HELO localhost) ([10.249.33.22])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2020 04:54:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: David Howells <dhowells@redhat.com>
In-Reply-To: <2715545.1591635126@warthog.procyon.org.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <87ftb6x7em.fsf@intel.com>
 <2136072.1591491984@warthog.procyon.org.uk> <87o8puxak1.fsf@intel.com>
 <4ff2445aff8d44c5961a6d194a8f4663@intel.com>
 <2715545.1591635126@warthog.procyon.org.uk>
Date: Wed, 10 Jun 2020 14:54:32 +0300
Message-ID: <87pna7w2yv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] A panic and a hang in the i915 drm driver
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 dhowells@redhat.com, "airlied@redhat.com" <airlied@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 08 Jun 2020, David Howells <dhowells@redhat.com> wrote:
> Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
>> David, please try [1].
>
> Assuming you mean this:
>
>     https://patchwork.freedesktop.org/patch/366958/?series=77635&rev=1
>
> yes, that works.
>
> Tested-by: David Howells <dhowells@redhat.com>

Many thanks,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
