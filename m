Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD19156576
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 17:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 150246E370;
	Sat,  8 Feb 2020 16:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 335456E370
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 16:26:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20159315-1500050 for multiple; Sat, 08 Feb 2020 16:26:20 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200208122759.30833-1-andi@etezian.org>
References: <20200208122759.30833-1-andi@etezian.org>
Message-ID: <158117917844.18291.12433280872368810807@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 08 Feb 2020 16:26:18 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: make a gt sysfs group and move
 power management files
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

Quoting Andi Shyti (2020-02-08 12:27:59)
> From: Andi Shyti <andi.shyti@intel.com>
> 
> The GT has its own properties and in sysfs they should be grouped
> in the 'gt/' directory.
> 
> Create the 'gt/' directory in sysfs and move the power management
> related files.

As shown by BAT, we have a conundrum; do we have to preserve the old
names forevermore? Or do we just userspace that they have to adapt?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
