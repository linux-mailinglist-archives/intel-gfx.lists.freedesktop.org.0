Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDC8397390
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 14:51:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 813EC6EA4E;
	Tue,  1 Jun 2021 12:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from granite.fifsource.com (granite.fifsource.com [173.255.216.206])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BE876E0AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 18:21:47 +0000 (UTC)
Received: from ceramic.fifi.org (107-142-44-66.lightspeed.sntcca.sbcglobal.net
 [107.142.44.66]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 by granite.fifsource.com (Postfix) with ESMTPSA id A5D9C4060;
 Mon, 31 May 2021 11:21:46 -0700 (PDT)
Message-ID: <24bfdd74524752b21922350e4a3650ff446175da.camel@fifi.org>
From: Philippe Troin <phil@fifi.org>
To: Matthew Auld <matthew.william.auld@gmail.com>, Hillf Danton
 <hdanton@sina.com>
Date: Mon, 31 May 2021 11:21:46 -0700
In-Reply-To: <CAM0jSHOWwgPRWkSN22r6T_rkiVcdhYwN34vkzp0q_icgDqT52Q@mail.gmail.com>
References: <4d84b06ee9e8dad88ff101de5e7b78b9b09cfee3.camel@fifi.org>
 <20210524075121.1949-1-hdanton@sina.com>
 <CAM0jSHOWwgPRWkSN22r6T_rkiVcdhYwN34vkzp0q_icgDqT52Q@mail.gmail.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 01 Jun 2021 12:51:14 +0000
Subject: Re: [Intel-gfx] Bug: 5.12.5 - list_add double add at
 __i915_gem_object_make_shrinkable+0xa6/0xe0
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 kernel list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2021-05-24 at 14:38 +0100, Matthew Auld wrote:
> On Mon, 24 May 2021 at 13:05, Hillf Danton <hdanton@sina.com> wrote:
> > 
> > On Sun, 23 May 2021 12:47:34 -0700 Philippe Troin wrote:
> > > Found the following bug on a FUJITSU LIFEBOOK S6520.
> > > 
> > > The kernel crash happens when selecting a user from the gdm login
> > > screen right after boot.
> > > The same hardware has no problems with 5.11.21.
> 
> The trace looks similar to something that was fixed in 8777d17b68dc
> ("drm/i915/gem: Pin the L-shape quirked object as unshrinkable") which
> should now be in drm-tip. Could you try that? Otherwise could you
> please file a new bug report at
> https://gitlab.freedesktop.org/drm/intel/?

I verified that drm-tip is working as of
d6d3a2a996af7a82e567e96a19410ac9d7246794.
This issue was tracked in the Fedora bugzilla at
https://bugzilla.redhat.com/show_bug.cgi?id=1963782

Thanks.
Phil.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
