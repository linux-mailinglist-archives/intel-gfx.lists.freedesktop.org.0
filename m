Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 029961E0864
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52A6C6E02A;
	Mon, 25 May 2020 08:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F31536E02A
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 08:03:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21284325-1500050 for multiple; Mon, 25 May 2020 09:03:35 +0100
MIME-Version: 1.0
In-Reply-To: <d391e915b930423ea02677a0b0afed3e@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>,
 <159004412790.4443.16666170953617018239@emeril.freedesktop.org>
 <7805def3c6354f17bf7d57c416f000aa@intel.com>
 <159018481048.32320.7761007190791714467@build.alporthouse.com>,
 <159018952416.11139.8295799937981887072@build.alporthouse.com>
 <d391e915b930423ea02677a0b0afed3e@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [Intel-gfx]  ✗ Fi.CI.IGT: failure for Consider DBuf bandwidth when calculating CDCLK (rev18)
Message-ID: <159039381690.30979.6896983521245965877@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 25 May 2020 09:03:36 +0100
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

Quoting Lisovskiy, Stanislav (2020-05-25 09:00:33)
> I have seen those failures in other patches as well, i.e before my patches landed.

Look again. CI is very clear, as is the bisect and revert.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
