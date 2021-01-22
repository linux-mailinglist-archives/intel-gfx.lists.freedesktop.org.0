Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A413001C7
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 12:41:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238D989DEC;
	Fri, 22 Jan 2021 11:41:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A5D589D4F;
 Fri, 22 Jan 2021 11:41:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23670200-1500050 for multiple; Fri, 22 Jan 2021 11:41:36 +0000
MIME-Version: 1.0
In-Reply-To: <92e11d23-a4f8-da09-5f90-6a0b0ca6614f@linux.intel.com>
References: <20210121181005.762333-1-tvrtko.ursulin@linux.intel.com>
 <161126484631.3166.17704076104258866952@build.alporthouse.com>
 <92e11d23-a4f8-da09-5f90-6a0b0ca6614f@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Fri, 22 Jan 2021 11:41:36 +0000
Message-ID: <161131569685.3166.11550714189799969920@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel-gpu-top: Support for client
 stats
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-01-22 11:36:48)
> 
> On 21/01/2021 21:34, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2021-01-21 18:10:05)
> >> +static struct clients *init_clients(const char *drm_card)
> >> +{
> >> +       struct clients *clients = malloc(sizeof(*clients));
> >> +       const char *slash;
> >> +       ssize_t ret;
> >> +
> >> +       memset(clients, 0, sizeof(*clients));
> >> +
> >> +       if (drm_card) {
> >> +               slash = rindex(drm_card, '/');
> >> +               assert(slash);
> >> +       } else {
> >> +               slash = "card0";
> >> +       }
> >> +
> >> +       ret = snprintf(clients->sysfs_root, sizeof(clients->sysfs_root),
> >> +                      "/sys/class/drm/%s/clients/", slash);
> >> +       assert(ret > 0 && ret < sizeof(clients->sysfs_root));
> > 
> > Afaict, igt_device_card_match_pci et al are not guaranteed to fill in
> > dev->drm_card and may leave it blank instead of finding the
> > corresponding /dev/dri/cardN.
> 
> I did the rest but this is giving me trouble - can't see locally that it 
> doesn't populate it. Do you know how to trigger that?

Maybe it doesn't, I was just looking at the udev population of the card
struct and surmised that if I could tell it to open a render device,
dev->drm_card will not be found.

This is all speculation on my part, I've just been burnt enough times
trying to set engine properties on the render sysfs :(
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
