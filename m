Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EC31DF18D
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2020 00:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE2D6E12A;
	Fri, 22 May 2020 22:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81F2B6E12A
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 22:00:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21265851-1500050 for multiple; Fri, 22 May 2020 23:00:10 +0100
MIME-Version: 1.0
In-Reply-To: <7805def3c6354f17bf7d57c416f000aa@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>,
 <159004412790.4443.16666170953617018239@emeril.freedesktop.org>
 <7805def3c6354f17bf7d57c416f000aa@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx]  ✗ Fi.CI.IGT: failure for Consider DBuf bandwidth when calculating CDCLK (rev18)
Message-ID: <159018481048.32320.7761007190791714467@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 22 May 2020 23:00:10 +0100
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

Quoting Lisovskiy, Stanislav (2020-05-21 10:35:42)
> Seems to be unrelated issue. There seems to be some list corruption happening in drm fb manipulation code.
> if those patches would be causing that (like some severe mem corruption)- it would happen much more broadly than single test and single platform. Moreover there is no direct  connection to the changes.

The fi-glk-dsi failure in module reload is a result of this series.
Somehow you have angered the i915 pm around snd_hda_intel.
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17733/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
