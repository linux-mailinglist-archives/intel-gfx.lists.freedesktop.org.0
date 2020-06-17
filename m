Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6315E1FCB37
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 12:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C0AD6E889;
	Wed, 17 Jun 2020 10:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E796E6E889
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 10:46:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21523346-1500050 for multiple; Wed, 17 Jun 2020 11:46:17 +0100
MIME-Version: 1.0
In-Reply-To: <20200617101714.GM14085@intel.com>
References: <20200617095001.19220-1-anshuman.gupta@intel.com>
 <159238873248.19488.1166033909635410870@build.alporthouse.com>
 <20200617101714.GM14085@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <159239077681.19488.15781759768532189029@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 17 Jun 2020 11:46:16 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: POWER_DOMAIN_AUDIO ref-count
 debug logs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Anshuman Gupta (2020-06-17 11:17:15)
> On 2020-06-17 at 11:12:12 +0100, Chris Wilson wrote:
> > Quoting Anshuman Gupta (2020-06-17 10:50:01)
> > > Debug print for power domain audio get/put.
> > > This will help to deubg the CI s2idle incomplete
> > > failures.
> > 
> > Do we not already print the mismatching pm, and who we are unable to
> > find a corresponding release for?
> Thanks Chris for review comment,
> Yes it is there, but POWER_DOMAIN_AUDIO get/put request initiated by
> snd_audio along with i915. So in order to confirm if it is a bug from
> snd_audio module we would require to track the get/put resuest from
> snd_audio.

But we are, see the cookie.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
