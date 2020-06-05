Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8251EFCE2
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 17:46:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D776E940;
	Fri,  5 Jun 2020 15:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4C16E940
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 15:45:58 +0000 (UTC)
IronPort-SDR: f5gXQIcVcOY/RCa2QCysTx21mvzEYg+W5bb2fUxnIS/LAaZv9qxSJ3xM3R5jlfFuGZqLjqIpFZ
 oGtgDuD5bH1A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 08:45:58 -0700
IronPort-SDR: g7evTiMEYfKQBJ4zJ5SdnCSVQrdWx9BurOV5jn/ZMfhV7kaJCfqxEFe35rrUL86xw3t85IxQVu
 zrgFPqrtD/9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="305098173"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 05 Jun 2020 08:45:57 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 579965C2C59; Fri,  5 Jun 2020 18:43:26 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <159137161429.22562.587818863316529518@build.alporthouse.com>
References: <20200605122334.2798-1-chris@chris-wilson.co.uk>
 <20200605122334.2798-4-chris@chris-wilson.co.uk>
 <87o8pxa5og.fsf@gaia.fi.intel.com>
 <159137161429.22562.587818863316529518@build.alporthouse.com>
Date: Fri, 05 Jun 2020 18:43:26 +0300
Message-ID: <87img5a57l.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915/gt: Couple tasklet
 scheduling for all CS interrupts
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

> Quoting Mika Kuoppala (2020-06-05 16:33:19)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > If any engine asks for the tasklet to be kicked from the CS interrupt,
>> > do so.
>> 
>> The why part is a bit thin. The plan is to use execlist tasklet
>> for move stuff from virtual rings to real ones?
>
> Yes. I thought that part was self explanatory, since we're coupling up a
> call to engine->execlists.tasklet if the engine opts into receiving the

Reading further into series it is obvious, but you can carry the plot
further in here already!

"Aim is to mimic execlist port type submission and hopefully gain
opportunities for code sharing"...

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> interrupt.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
