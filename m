Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F7C1D466A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 08:56:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 038296EBDC;
	Fri, 15 May 2020 06:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1FF6EBDC
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 06:56:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21199716-1500050 for multiple; Fri, 15 May 2020 07:56:27 +0100
MIME-Version: 1.0
In-Reply-To: <20200515061029.5008-1-anshuman.gupta@intel.com>
References: <20200515061029.5008-1-anshuman.gupta@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158952578529.12786.16589644460445428866@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 15 May 2020 07:56:25 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Update CP as per the
 kernel internal state
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

Quoting Anshuman Gupta (2020-05-15 07:10:29)
> Somewhere in the line, state machine to set content protection to
> DESIRED from kernel was broken and IGT coverage was missing for it.
> This patch fixes it.

It's strange that you mention IGT, since what tests being run by CI
never pass and have not been fixed for several months. As well as the
sporadic HDCP failures affecting unrelated tests, which have not
appeared to have received any attention either.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
