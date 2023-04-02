Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C3E6D3A4F
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Apr 2023 22:43:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FD8910E058;
	Sun,  2 Apr 2023 20:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AAA810E058
 for <intel-gfx@lists.freedesktop.org>; Sun,  2 Apr 2023 20:43:16 +0000 (UTC)
Received: from linux-libre.fsfla.org ([209.51.188.54] helo=free.home)
 by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.90_1) (envelope-from <oliva@gnu.org>)
 id 1pj4Xd-0005vk-5z; Sun, 02 Apr 2023 16:43:09 -0400
Received: from livre (livre.home [172.31.160.2])
 by free.home (8.15.2/8.15.2) with ESMTPS id 332Kgstx1652492
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
 Sun, 2 Apr 2023 17:42:55 -0300
From: Alexandre Oliva <oliva@gnu.org>
To: John Harrison <john.c.harrison@intel.com>
Organization: Free thinker, not speaking for the GNU Project
References: <orjzzlhhg8.fsf@lxoliva.fsfla.org>
 <b9a2746f-bace-3a1e-eb82-8e8eecddb6ae@intel.com>
 <or1qlbvo9b.fsf@lxoliva.fsfla.org>
 <ba2e49ea-d1a4-bf77-dde5-f92c6600cb4f@intel.com>
Date: Sun, 02 Apr 2023 17:42:54 -0300
In-Reply-To: <ba2e49ea-d1a4-bf77-dde5-f92c6600cb4f@intel.com> (John Harrison's
 message of "Fri, 31 Mar 2023 12:14:47 -0700")
Message-ID: <orjzyu10dt.fsf@lxoliva.fsfla.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.84
Subject: Re: [Intel-gfx] [PATCH] [i915] avoid infinite retries in GuC/HuC
 loading
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mar 31, 2023, John Harrison <john.c.harrison@intel.com> wrote:

>>> I'm not sure that is really a valid use case that the driver code
>>> should be expected to support.

>> It's most certainly not.  As I wrote, I'd be happy to keep on carrying
>> the patch that adjusts the code to cope with our changes.  I just
>> thought the same issue could come up by, say, mistakenly applying a
>> patch twice to add support for a new card, a circumstance in which one
>> might not have the card readily available to try it out.

> Not following this argument.

I was talking about downstream backporting, e.g. random users or
small-distro maintainers attempting to backport support for certain
cards without realizing it's already there.

>> Oh, no, the driver loads just fine even without those blobs, and that's
>> much nicer of you than other drivers for hardware that doesn't really
>> require blobs, but that insist on bailing out if the firmware can't be
>> loaded.  i915 hasn't been hostile like that.
> That situation won't last...

:-(

> I would consider that a bug that should never make it past either
> pre-merge CI or code review.

Agreed.

> And if you really do need to remove the firmware files from the
> compiled binary completely, then replacing them with unique names
> would also work - '/*(DEBLOBBED_1)*/', '/*(DEBLOBBED_2)*/', etc.

That is not doable with our current deblob-check implementation,
unfortunately.  There are long-term plans to switch to a different
approach, but we're not there yet.  So I guess we'll have to use custom
code to disable blob loading on i915, while that's still possible, when
the stricter table checking hits.

>>> Also, is this string unification thing a part of the current gcc
>>> toolchain?
>> Yeah, compilers and linkers have been unifying (read-only) string
>> literals for a very long time.
> That's what I would have assumed. Which is why I was confused that you
> were saying 'if you use a toolchain that does this'. It seemed that
> you were implying that most don't and this was a special situation.

Oh, no, sorry, it's just that compilers can't be dependent on for string
literal unification.  It's an optimization, not a language-imposed
requirement.


Thanks for considering the patch, and for the heads up about darker days
coming for users of Intel video cards! :-(


-- 
Alexandre Oliva, happy hacker                https://FSFLA.org/blogs/lxo/
   Free Software Activist                       GNU Toolchain Engineer
Disinformation flourishes because many people care deeply about injustice
but very few check the facts.  Ask me about <https://stallmansupport.org>
