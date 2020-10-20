Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2E4293919
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 12:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 914136EC45;
	Tue, 20 Oct 2020 10:25:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 178936EC45
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 10:25:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22765413-1500050 for multiple; Tue, 20 Oct 2020 11:25:27 +0100
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2010191506390.5579@manul.sfritsch.de>
References: <20201019101230.29860-1-chris@chris-wilson.co.uk>
 <20201019101523.4145-1-chris@chris-wilson.co.uk>
 <alpine.DEB.2.21.2010191506390.5579@manul.sfritsch.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Stefan Fritsch <sf@sfritsch.de>
Date: Tue, 20 Oct 2020 11:25:27 +0100
Message-ID: <160318952720.14137.17333330864672781597@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Force VT'd workarounds when
 running as a guest OS
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Stefan Fritsch (2020-10-19 14:08:17)
> Works for me and makes the fault messages disappear. Thanks.
> 
> Tested-by: Stefan Fritsch <sf@sfritsch.de>

Thanks for the report and testing. In hindsight, this should have been
obvious.

Pushed,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
