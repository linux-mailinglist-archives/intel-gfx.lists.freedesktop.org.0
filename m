Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D69714FA1D
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Feb 2020 20:10:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6416E27F;
	Sat,  1 Feb 2020 19:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F9A96E26C
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Feb 2020 19:10:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20085150-1500050 for multiple; Sat, 01 Feb 2020 19:09:50 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87zhe25vs1.fsf@intel.com>
References: <20200201094641.3572295-1-chris@chris-wilson.co.uk>
 <87zhe25vs1.fsf@intel.com>
Message-ID: <158058418804.15137.11874631524443965282@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 01 Feb 2020 19:09:48 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: Skip the cdclk modeset if
 no pipes attached
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
Cc: "Vehmanen, Kai" <kai.vehmanen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-02-01 12:36:46)
> On Sat, 01 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > If the display is not driving any pipes, we cannot change the bclk and
> > doing so risks chasing NULL pointers:
> 
> Does this mean we can't probe hda if there are no displays attached at
> boot on GLK?

We do, but the question is should we. If we say there are no pipes, then
how can there be a HDMI/other audio link?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
