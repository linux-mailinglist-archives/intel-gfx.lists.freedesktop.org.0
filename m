Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A567D3BE2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 18:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1D910E21B;
	Mon, 23 Oct 2023 16:11:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92D0910E10E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 16:11:40 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1698077496;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=bO2BXye1lMp4h+BXWFd2ZCWFmLCstWT9fiAOX+cFNvc=;
 b=Jkk1MIduHCB1MF5WJx4RWCSZ8fW9+U+ytu9yAvC3tDHutUzhDqvVluOFridpUxx1XGgHDe
 WtnQfGfWAttalqAmdInYz36TOlO0Ll2TFLn5ToLMU5k2bVzRfVUxtYhQPi1bPBgCDwe80e
 cwoclFaSLruuDzHSDHSTyZvRQjv6b6wJFO9qbTedGGJFNhKrWBvw/Vn3ejgcLcvyLcYNUl
 jP4+vtixe/mZITuy3GoFdjigXrjl93Nv+4nxTznlItgkpjkemItdzn6AlZW88H8EfQtZLH
 dhP2XgE0NM2o47ND1nPLwqfZkkO50DCqWpQl3PjxZoMHCOX3ABDFL8tUJah7kw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1698077496;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=bO2BXye1lMp4h+BXWFd2ZCWFmLCstWT9fiAOX+cFNvc=;
 b=lWLEqAuyKfuaLlXO6AMm4ZKc2+rIWXy1PzymO7xE1YLVZgaQdbJop3PJvcnEPSWd8Yzaxb
 oiKD8Ywq/zWbA3DQ==
To: Andrzej Hajda <andrzej.hajda@intel.com>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-mm@kvack.org
In-Reply-To: <62e16250-63f4-4fbb-b00e-db808b600664@intel.com>
References: <20230925131359.2948827-1-andrzej.hajda@intel.com>
 <87v8bak6iy.ffs@tglx> <62e16250-63f4-4fbb-b00e-db808b600664@intel.com>
Date: Mon, 23 Oct 2023 18:11:35 +0200
Message-ID: <87r0llco94.ffs@tglx>
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 19 2023 at 12:31, Andrzej Hajda wrote:
> On 13.10.2023 15:15, Thomas Gleixner wrote:
>> It cannot be freed. If that happens then the calling code will have an
>> UAF problem on the tracked item too.
>
> Yes, and I have assumed that debugobjects are created also for detecting 
> UAFs.

Kinda.

> They should be able to handle/detect 'issues due to incorrectly 
> serialized concurrent accesses' scenarios as well, at least some of 
> them. And even if it cannot recover it should at least provide reliable 
> reporting.

Fair enough.

> Now we can have scenario:
> 1. Thread tries to deactivate destroyed object, debugobjects detects it, 
> spin lock is released, thread is preempted.
> 2. Other thread frees debugobject, then allocates new one on the same 
> memory location, ie 'obj' variable from 1st thread point to it - it is 
> possible because there is no locking.
> 3. Then preemption occurs, and 1st thread reports error for wrong object.
>
> This seems the most drastic for me, but also with lowest chances to 
> happen due to delayed freeing, but there are also other more probable 
> scenarios when we print the same object but in state different from the 
> one when debugobject detected issue, due to modification by concurrent 
> thread.

Now I understand what you mean. This information should be in the
changelog, no?

Let me stare at the patch once more.
