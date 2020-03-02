Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E699E17600B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 17:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE2D6E5A4;
	Mon,  2 Mar 2020 16:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DED706E5A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 16:35:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 08:35:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="412358169"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 02 Mar 2020 08:35:32 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4BAA75C1DA2; Mon,  2 Mar 2020 18:34:17 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158316623470.3453.9545260080333756525@skylake-alporthouse-com>
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
 <20200302085812.4172450-8-chris@chris-wilson.co.uk>
 <87lfoi7ms7.fsf@gaia.fi.intel.com>
 <158316623470.3453.9545260080333756525@skylake-alporthouse-com>
Date: Mon, 02 Mar 2020 18:34:17 +0200
Message-ID: <87imjm7m2e.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/22] drm/i915: Wrap i915_active in a
 simple kreffed struct
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

> Quoting Mika Kuoppala (2020-03-02 16:18:48)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > For conveniences of callers that just want to use an i915_active to
>> > track a wide array of concurrent timelines, wrap the base i915_active
>> > struct inside a kref. This i915_active will self-destruct after use.
>> >
>> 
>> I looks ok and I would buy this. However I didn't manage to
>> find user.
>
> Did you look at the next patch?

I did! I even searched through it.

I will take a second look.
-Mika

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
