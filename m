Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7061504E6
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 12:07:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 942C96EBCF;
	Mon,  3 Feb 2020 11:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1389A6E2FF
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 11:07:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 03:07:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="336731528"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 03 Feb 2020 03:07:26 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.138])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 013B7Ouh030329; Mon, 3 Feb 2020 11:07:24 GMT
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20200203095413.45084-1-michal.wajdeczko@intel.com>
 <20200203105816.104544-1-michal.wajdeczko@intel.com>
 <158072767986.20090.689300096596597771@skylake-alporthouse-com>
Date: Mon, 03 Feb 2020 12:07:24 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0ferumxwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <158072767986.20090.689300096596597771@skylake-alporthouse-com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/guc: Stop using mutex while
 sending CTB messages
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


>> +               /* CTB_RECV lock will be used with irq disabled */
>
> ...will be used inside the interrupt handler
>
> I think is a more descriptive comment.

Well, we usually call intel_guc_ct_event_handler() from irq handler,
but we are also calling it from guc_enable_communication(), that's
outside irq handler (but with irq disabled)

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
