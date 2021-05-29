Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF80394E41
	for <lists+intel-gfx@lfdr.de>; Sat, 29 May 2021 23:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F2706E7FE;
	Sat, 29 May 2021 21:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fieldses.org (fieldses.org [IPv6:2600:3c00:e000:2f7::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA80C6E7FE
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 May 2021 21:19:41 +0000 (UTC)
Received: by fieldses.org (Postfix, from userid 2815)
 id 203A26851; Sat, 29 May 2021 17:19:40 -0400 (EDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 fieldses.org 203A26851
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fieldses.org;
 s=default; t=1622323180;
 bh=+jfpZ9rYcWGiXVGrOCJynqBeee5HUS7B/P70KivDr58=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OPO7GYMWfXTGsEtAV+ZqzyjvM8QDmsS9M2wBZ6tqmZY7vQTfT7DA6SXU5Fr0uhEWC
 NcoA/bRDU3KTSIWhaTD3QLNSZG6JXPKE2i/+zdoT2rmp1DkmbAk9xau5mXGWTBzU6B
 kykBPr9Vsz7elZewEdfHMiX21aCEHsIgWckcQ1V4=
Date: Sat, 29 May 2021 17:19:40 -0400
From: "J. Bruce Fields" <bfields@fieldses.org>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20210529211940.GA6698@fieldses.org>
References: <20210528172543.GA7385@fieldses.org> <YLHRKI+RZ0nvIe/P@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YLHRKI+RZ0nvIe/P@kroah.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [Intel-gfx] [CI] drm/i915: Disable atomics in L3 for gen9
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, May 29, 2021 at 07:29:12AM +0200, Greg KH wrote:
> On Fri, May 28, 2021 at 01:25:43PM -0400, J. Bruce Fields wrote:
> > Would it be possible to apply
> > 
> > 	58586680ffad "drm/i915: Disable atomics in L3 for gen9"
> > 
> > to stable kernels?
> > 
> > I'm finding it quite easy to crash my Thinkpad X1 Carbon 6th gen with
> > Blender on Fedora 34 (which is using the 5.11.y kernels).  It applies
> > cleanly, and I've been running 5.11.16 with the patch applied and seeing
> > no obvious ill effects.
> 
> As 5.11.y is now end-of-life, and has been for a week or so, what
> kernel(s) would you want this applied to given that 5.12.y is the latest
> stable kernel tree?

Oh, apologies, I hadn't realized.  That's fine, then.

--b.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
