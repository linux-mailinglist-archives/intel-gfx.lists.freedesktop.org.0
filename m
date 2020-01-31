Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D6714EC1C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 12:56:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B910F6FB1E;
	Fri, 31 Jan 2020 11:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 588926FB1D;
 Fri, 31 Jan 2020 11:56:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20071523-1500050 for multiple; Fri, 31 Jan 2020 11:56:06 +0000
MIME-Version: 1.0
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <158046199846.13121.6712050596003348465@emeril.freedesktop.org>
References: <20200131075716.2212299-1-chris@chris-wilson.co.uk>
 <158046199846.13121.6712050596003348465@emeril.freedesktop.org>
Message-ID: <158047176457.2430.10237976597527825306@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 Jan 2020 11:56:04 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Skip_rmw_for_ma?=
 =?utf-8?q?sked_registers?=
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

Quoting Patchwork (2020-01-31 09:13:18)
> Participating hosts (43 -> 45)
> ------------------------------
> 
>   Additional (7): fi-hsw-peppy fi-skl-6770hq fi-snb-2520m fi-ivb-3770 fi-elk-e7500 fi-bsw-kefka fi-skl-6700k2 
>   Missing    (5): fi-icl-1065g7 fi-hsw-4200u fi-byt-squawks fi-bwr-2160 fi-bdw-samus 

The vital one, fi-bwr-2160, was absent. So we need to retest -- which I
will do later to avoid delaying others.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
