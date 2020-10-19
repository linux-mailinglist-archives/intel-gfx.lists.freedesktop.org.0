Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8BA292D67
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 20:18:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C4B96EA29;
	Mon, 19 Oct 2020 18:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E966EA29
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 18:18:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22760153-1500050 for multiple; Mon, 19 Oct 2020 19:18:33 +0100
MIME-Version: 1.0
In-Reply-To: <20201019175310.GH2616619@intel.com>
References: <20201019175310.GH2616619@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Ville Syrjälä <ville.syrjala@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 19 Oct 2020 19:18:32 +0100
Message-ID: <160313151290.4425.4599710652649306435@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] Fixes that failed cherry-pick to 5.10
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

Quoting Rodrigo Vivi (2020-10-19 18:53:10)
> Hi Chris and Ville,
> 
> Failed to cherry-pick:
> 233c1ae3c83f ("drm/i915/gt: Wait for CSB entries on Tigerlake")

See https://cgit.freedesktop.org/~ickle/linux-2.6/log/?h=dif for the
dependencies.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
