Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C819439D9A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Oct 2021 19:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD97789F2D;
	Mon, 25 Oct 2021 17:29:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3C0189F2D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Oct 2021 17:29:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id 6C2A21F432E7
Message-ID: <1b8cc48a-1819-b996-e882-738c6f2a181b@collabora.com>
Date: Mon, 25 Oct 2021 18:31:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: intel-gfx@lists.freedesktop.org
References: <20211021142627.31058-1-ramalingam.c@intel.com>
Content-Language: en-US
From: Robert Beckett <bob.beckett@collabora.com>
Cc: ramalingam.c@intel.com
In-Reply-To: <20211021142627.31058-1-ramalingam.c@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 00/17] drm/i915/dg2: Enabling 64k page
 size and flat ccs
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

(apologies for not quoting, I wasn't subscribed before now)


some quick thoughts:

- Can we split these patches in to two series, one for each topic. They 
don't seem specifically related.

- to simplify 64K page support, could we just set minimum allocation 
size to 64K and round up for allocation requests?
Placement then becomes much simpler, no need to align the va to 2MB, 
just fit it in wherever it fits and always use 64K PTEs in GTT

This would simplify the code a lot and would benefit performance due up 
to 16x fewer page walks.
If we did this, we would not have to consider 2MB boundaries at all, we 
could drop all the colour handling etc.

The only down side might be some waste of allocation if there are lots 
of very small buffers.
However, I think most gfx related use cases would not be badly affected 
by this (even a cursor plane is 64k, usually).

Are there any usecases that you are aware of that would be impacted 
badly by this idea? (maybe some compute workload?)


- flat ccs modifiers: there seems to be some confusion over whether 
there should be a separate modifier for this.
As it dictates a new layout it seems like it should be a new modifier.
Was there any internal discussions about this that you could elaborate 
on here?

