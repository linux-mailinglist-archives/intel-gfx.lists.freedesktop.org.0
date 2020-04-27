Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C721BA6C8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 16:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86A1A6E2EC;
	Mon, 27 Apr 2020 14:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5436B6E2EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 14:45:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21036318-1500050 for multiple; Mon, 27 Apr 2020 15:45:19 +0100
MIME-Version: 1.0
In-Reply-To: <CAJU=AjVj6BPrqXgWbooTd2VSs_ZxoSbJR0LguxXWim2qu7Giug@mail.gmail.com>
References: <20200427032232.4307-1-apodtele@gmail.com>
 <20200427140248.GG6112@intel.com>
 <158799689628.17035.14733867368309109586@build.alporthouse.com>
 <CAJU=AjVj6BPrqXgWbooTd2VSs_ZxoSbJR0LguxXWim2qu7Giug@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Alexei Podtelezhnikov <apodtele@gmail.com>
Message-ID: <158799871806.17035.9616562654177490399@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 27 Apr 2020 15:45:18 +0100
Subject: Re: [Intel-gfx] [patch] PCI ID review
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

Quoting Alexei Podtelezhnikov (2020-04-27 15:40:42)
> >
> > These do not exist. They are fake PCI-ID for Windows95 multi monitor.
> > The single device appears twice on the bus as a second function. We
> > never had that restriction and could do multiple monitors on the single
> > device.
> 
> Windows 10 drivers list them, they do show up on lspci and I'll quote
> from Atom datasheet.
> "This register is unique in Function 1 (the Function 0 DID is
> separate). This difference in Device ID is necessary for allowing
> distinct Plug and Play enumeration of function 1 when both function 0
> and function 1 have the same class code."
> Whatever this means.

It means it's a hack for the Window's driver. There is no HW behind it.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
