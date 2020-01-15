Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F1213BB4B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 09:40:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D3C89AA2;
	Wed, 15 Jan 2020 08:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABEE889AA2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 08:40:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19884598-1500050 for multiple; Wed, 15 Jan 2020 08:40:07 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
Message-ID: <157907760539.5559.7281364125701103353@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 15 Jan 2020 08:40:05 +0000
Subject: Re: [Intel-gfx] [PATCH 0/7] Commit early to GuC
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

Quoting Daniele Ceraolo Spurio (2020-01-15 01:31:36)
> We currently wait until we attempt to load the GuC to confirm if we're
> in GuC mode or not, at which point a lot of the engine setup has already
> happened and needs to be updated for GuC submission. To allow us to get
> the setup done directly into GuC mode, we need to commit to using GuC
> as soon as possible.

I think this is the wrong direction; as I thought the goal was to allow
delayed loading of firmware, even going as far as allowing the system to
run a browser for the user to get the firmware first. I may be
completely wrong about that, but imho I never want to have to build
firmware images into the kernel.

The transition from execlists to guc could be just set-wedged; delete
old engines, build guc engines. [This should also work for guc -> guc.]
Throwing away context state is ugly, but simple enough.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
