Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6159914F0CC
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 17:44:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4C189D44;
	Fri, 31 Jan 2020 16:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7FF789CD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 16:44:41 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 08:44:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="324277531"
Received: from unknown (HELO sdutt-xeon) ([10.165.21.200])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jan 2020 08:44:41 -0800
Date: Fri, 31 Jan 2020 08:40:12 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200131164011.GA41457@sdutt-xeon>
References: <20200131145834.77756-1-michal.wajdeczko@intel.com>
 <158048483501.2430.4544818151209295353@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158048483501.2430.4544818151209295353@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Stop using mutex while
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 31, 2020 at 03:33:55PM +0000, Chris Wilson wrote:
>Quoting Michal Wajdeczko (2020-01-31 14:58:34)
>> While we are always using CT "send" buffer to send request messages
>> to GuC, we usually don't ask GuC to use CT "receive" buffer to send
>> back response messages, since almost all returned data can fit into
>> reserved bits in status dword inside CT descriptor. However, relying
>> on data modifications inside CT descriptor requires use of mutex to
>> allow only single CT request in flight, until we read back that status
>> dword from the CT descriptor.
>
>Q. do we need the same lock for ct_read() and ct_write()?
>
>Could ct_read() use a lock-free ringbuffer, and then if I've read it
>right, you wouldn't have any overlapping spinlock between the interrupt
>handler and the rest (thus avoiding the interrupt-off).
>-Chris

Agree with Chris, it would nice if ct_read() didn't need a lock. At a minimum I
think it needs a different lock than the write path.

Matt 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
