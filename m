Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E036714EFA0
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 16:34:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1EBC6FB80;
	Fri, 31 Jan 2020 15:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52B6F6FB80
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 15:34:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20074563-1500050 for multiple; Fri, 31 Jan 2020 15:33:57 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200131145834.77756-1-michal.wajdeczko@intel.com>
References: <20200131145834.77756-1-michal.wajdeczko@intel.com>
Message-ID: <158048483501.2430.4544818151209295353@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 Jan 2020 15:33:55 +0000
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Michal Wajdeczko (2020-01-31 14:58:34)
> While we are always using CT "send" buffer to send request messages
> to GuC, we usually don't ask GuC to use CT "receive" buffer to send
> back response messages, since almost all returned data can fit into
> reserved bits in status dword inside CT descriptor. However, relying
> on data modifications inside CT descriptor requires use of mutex to
> allow only single CT request in flight, until we read back that status
> dword from the CT descriptor.

Q. do we need the same lock for ct_read() and ct_write()?

Could ct_read() use a lock-free ringbuffer, and then if I've read it
right, you wouldn't have any overlapping spinlock between the interrupt
handler and the rest (thus avoiding the interrupt-off).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
