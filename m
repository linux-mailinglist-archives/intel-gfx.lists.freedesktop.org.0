Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE7C394685
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 19:33:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 285596E0A2;
	Fri, 28 May 2021 17:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 456 seconds by postgrey-1.36 at gabe;
 Fri, 28 May 2021 17:33:20 UTC
Received: from fieldses.org (fieldses.org [IPv6:2600:3c00:e000:2f7::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1B336E0A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 May 2021 17:33:20 +0000 (UTC)
Received: by fieldses.org (Postfix, from userid 2815)
 id 7FB7D3F5; Fri, 28 May 2021 13:25:43 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 fieldses.org 7FB7D3F5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fieldses.org;
 s=default; t=1622222743;
 bh=15sDvS/uIYzm1ZydlTobsnF61zSz2mBEgMIsoAOQwl8=;
 h=Date:To:Cc:Subject:From:From;
 b=yBNeskCDmqwscVafs55ra79+yJgRrCMJUr0zSjtvn41aavEcBfYY82sye1HcOeKy1
 ubikQ3wRW00yRiD0cujTjLVSMuM6W1IN7fXc7pFkt5/zcsl0We9HYyLnlImv5KiniE
 4OWAVRi8rerqlrKh7MQ5i0mtZRXZ5gJKOcceUhwo=
Date: Fri, 28 May 2021 13:25:43 -0400
To: stable@vger.kernel.org
Message-ID: <20210528172543.GA7385@fieldses.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
From: bfields@fieldses.org (J. Bruce Fields)
Subject: [Intel-gfx] [CI] drm/i915: Disable atomics in L3 for gen9
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Would it be possible to apply

	58586680ffad "drm/i915: Disable atomics in L3 for gen9"

to stable kernels?

I'm finding it quite easy to crash my Thinkpad X1 Carbon 6th gen with
Blender on Fedora 34 (which is using the 5.11.y kernels).  It applies
cleanly, and I've been running 5.11.16 with the patch applied and seeing
no obvious ill effects.

--b.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
