Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A49A155BE0
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:34:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BA666FD24;
	Fri,  7 Feb 2020 16:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 478C16FD1B
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:34:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20151068-1500050 for multiple; Fri, 07 Feb 2020 16:34:46 +0000
MIME-Version: 1.0
To: youling257 <youling257@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200207163125.15903-1-youling257@gmail.com>
References: <20191219124353.8607-2-chris@chris-wilson.co.uk>
 <20200207163125.15903-1-youling257@gmail.com>
Message-ID: <158109328469.16098.11014223815188039767@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 07 Feb 2020 16:34:44 +0000
Subject: Re: [Intel-gfx] [CI 2/2] drm/i915/gt: Track engine round-trip times
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
Cc: intel-gfx@lists.freedesktop.org, youling257 <youling257@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting youling257 (2020-02-07 16:31:25)
> This patch cause GPU hang on my Bay trail z3735f.
> https://gitlab.freedesktop.org/drm/intel/issues/1144

No it didn't. The cause for that is unfortunately well known.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
