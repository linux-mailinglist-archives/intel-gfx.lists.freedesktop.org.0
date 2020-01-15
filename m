Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD7C13BD09
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 11:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 356CB6E0C4;
	Wed, 15 Jan 2020 10:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 575BD6E0C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 10:05:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19885711-1500050 for multiple; Wed, 15 Jan 2020 10:05:43 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <c945ac7b08e0eb0827cf647609885f4abdb84f1d.1575560168.git.jani.nikula@intel.com>
References: <cover.1575560168.git.jani.nikula@intel.com>
 <c945ac7b08e0eb0827cf647609885f4abdb84f1d.1575560168.git.jani.nikula@intel.com>
Message-ID: <157908274063.5559.15963460642386204528@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 15 Jan 2020 10:05:40 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/params: support bool values
 for int and uint params
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2019-12-05 15:43:41)
> It's not uncommon for us to switch param types between bools and ints,
> often having otherwise bool semantics but -1 value for platform
> default. Allow bool values (such as YyNn) for ints.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

But play nice with checkpatch, no point fighting with it over a line of
whitespace.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
