Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB207C86C0
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 15:25:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C70A10E0AA;
	Fri, 13 Oct 2023 13:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 571 seconds by postgrey-1.36 at gabe;
 Fri, 13 Oct 2023 13:25:08 UTC
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA01D10E0AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 13:25:08 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1697202933;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SkFG+3LyiNgprdYnBxxoNAJ5LTWjyrCvcaBrBUygRPY=;
 b=k8QvJEVPLl3+Wnza5ucCf/q5ANPBsfsS5q2DsJazrbN/aQ8GVelHKbK4ljsXFsEaww8Js+
 Gx7b2Hn1SweS9x4S8glDkXjTavztLwL96TRRLXUuJ9rsSfDwkSOM2RdBa6698Y829n8qnK
 AiXQhF6e2HmfsUhzqkdpNhUImJQLZ2i4ouS2jqhEbzPN4qfA2gaqwd0/KziCTuD/++NdG4
 JgGEuZjk60LgGg59Wcy4m680dMYCJRJX4RM26uaBpcAqnR+GC2r9E71oFe0Cjiz3uM9oEI
 JJCa29KRCm1VIfzjEgfggasJ+Pc6Y3IvA21xFg+gMlIzq2agfq7gaIZ45n3U/Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1697202933;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SkFG+3LyiNgprdYnBxxoNAJ5LTWjyrCvcaBrBUygRPY=;
 b=nQ8Tz2nlT9mL2M40ty37s55aeQyrJjiWyBvPdOrgzP9V4Ph06yuoCq3iOEqG6Fd1nmHWN9
 bBa7RwJVhYSJapAQ==
To: Andrzej Hajda <andrzej.hajda@intel.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-mm@kvack.org
In-Reply-To: <20230925131359.2948827-1-andrzej.hajda@intel.com>
References: <20230925131359.2948827-1-andrzej.hajda@intel.com>
Date: Fri, 13 Oct 2023 15:15:33 +0200
Message-ID: <87v8bak6iy.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] debugobjects: stop accessing objects
 after releasing spinlock
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 25 2023 at 15:13, Andrzej Hajda wrote:
> After spinlock release object can be modified/freed by concurrent thread.
> Using it in such case is error prone, even for printing object state.

It cannot be freed. If that happens then the calling code will have an
UAF problem on the tracked item too.

If there is a concurrent modification then again, the calling code is
lacking serialization on the tracked object.

debugobject fundamentally relies on the call site being consistent
simply because it _cannot_ invoke the fixup callbacks with the hash
bucket lock held.

What's the actualy problem you are trying to solve here. The changelog
does not explain anything except of handwaving about modified/freed.

Thanks,

        tglx
