Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF8A173C95
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 17:10:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31D776F466;
	Fri, 28 Feb 2020 16:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B40236F466
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 16:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582906250;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TJIuVNRW5GZyI5ESRQqaE219pUI93KEK2zERenrB4AE=;
 b=C2y4pH0+x8nVIq5OLrZ+SXf469zwTIE/xeLFmfMjNURbScA/J73IkrwJKZ3B+aoTGBvIzF
 NP5gMgp6pto7PtLv+22yZdy9oCyPjnZ/5hMOuwaqX2mFOLH7iZxlWaRw9Y4GyAhXu9TnUe
 h2EIjSh4dl90+nvmCNNGIgRUv+Yle6E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-W0Pkfu7KMp2rwgHvaJxNmQ-1; Fri, 28 Feb 2020 11:10:46 -0500
X-MC-Unique: W0Pkfu7KMp2rwgHvaJxNmQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A884C100550E;
 Fri, 28 Feb 2020 16:10:44 +0000 (UTC)
Received: from treble (ovpn-121-128.rdu2.redhat.com [10.10.121.128])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D20735DA2C;
 Fri, 28 Feb 2020 16:10:43 +0000 (UTC)
Date: Fri, 28 Feb 2020 10:10:41 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200228161041.ov7d5ox7myrnr4gi@treble>
References: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
 <158284236096.19174.6917853940060252533@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158284236096.19174.6917853940060252533@skylake-alporthouse-com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Minimize uaccess exposure in
 i915_gem_execbuffer2_ioctl()
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
Cc: Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 10:26:00PM +0000, Chris Wilson wrote:
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -2947,6 +2947,13 @@ i915_gem_execbuffer2_ioctl(struct drm_device *dev, void *data,
> >                         u64_to_user_ptr(args->buffers_ptr);
> >                 unsigned int i;
> >  
> > +               /*
> > +                * Do the call to gen8_canonical_addr() outside the
> > +                * uaccess-enabled region to minimize uaccess exposure.
> > +                */
> > +               for (i = 0; i < args->buffer_count; i++)
> > +                       exec2_list[i].offset = gen8_canonical_addr(exec2_list[i].offset);
> 
> 
> Another loop over all the objects, where we intentionally try and skip
> unmodified entries? To save 2 instructions from inside the second loop?
> 
> Colour me skeptical.

So are you're saying these arrays can be large and that you have
performance concerns?

-- 
Josh

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
