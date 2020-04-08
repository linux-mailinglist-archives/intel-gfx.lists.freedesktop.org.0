Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3022E1A1C56
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 09:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40CA6E96E;
	Wed,  8 Apr 2020 07:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F5AE6E96E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 07:10:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20835058-1500050 for multiple; Wed, 08 Apr 2020 08:09:57 +0100
MIME-Version: 1.0
In-Reply-To: <20200408030921.6436-1-apodtele@gmail.com>
References: <20200408030921.6436-1-apodtele@gmail.com>
To: Alexei Podtelezhnikov <apodtele@gmail.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158632979672.26322.1457844000492581204@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 08 Apr 2020 08:09:56 +0100
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel] sna: Fix double-free
 crashes.
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

Quoting Alexei Podtelezhnikov (2020-04-08 04:09:21)
> Fix double-free crashes.
> See https://bugzilla.redhat.com/show_bug.cgi?id=1808767

It should be impossible to get here, so this is just papering over a
bug.

Send the full debug log.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
