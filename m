Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B2C6BBB86
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 18:58:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6C0910E2C9;
	Wed, 15 Mar 2023 17:58:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from new4-smtp.messagingengine.com (new4-smtp.messagingengine.com
 [66.111.4.230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFC3110E059
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 17:58:01 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 82BDF582166;
 Wed, 15 Mar 2023 13:57:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Wed, 15 Mar 2023 13:57:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm2; t=
 1678903078; x=1678910278; bh=sr5VBwSlqkYKlrOEPGOlyRiFVAY5hrqp8Fq
 xt+ATTUw=; b=sOsASEdO+ZXgxCTqzuntK95Lm+6jLimXxV3hy0lCHZqFivl1QlG
 FlwO1oSPzp9Kr9+qhk3ZZ5/TSqqAjuhVlYK7MW2tKz/EH40CRYPDaFpmm3Hk66eT
 zXdrn/YwylprLX7YpDWcYG92IXcVMLhIsB37B4FUiqUpyVnvHoYWTyKAYght+QPQ
 olfEyplMIoHBP8Ak7XWEF8J+j/jCHP61vdVCZJxBp8X2aGiAwJebqZ9HH3zMSH3g
 5zy6amoSPfXlYSXXIcotKn2uzlhl8D7nOgf22p9EVSQmnZCKxAkyiKolT1D/6eyM
 bcRzH6W9kcMEUEbb3pAZV8315QX5bJU2Akw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1678903078; x=1678910278; bh=sr5VBwSlqkYKlrOEPGOlyRiFVAY5hrqp8Fq
 xt+ATTUw=; b=lt2NdHkQ84eidOxHihp18H6i9ZZribXpCsykNYUZqXmraIp0HTf
 1DDK+pfy8asT9QBY6Bupy8m9Z/S+ONmcFCDVTh1K3FZfYMcVgODUHMRGkXUNhgFL
 n7HKH12dWg5t/iSU7aqMHoQdGvruOxamZNoHI/w7A0HnCuxSjro4IVvJ7NvKfXzB
 lanaEChtvOj/p0H/pOCosIkgHo0PHOD0twQCZWcOaRYDTZs7Ip9wxPQ3+S8K5O3R
 sGX27MnK49126p2JCPoOwVq7q12F5CyxNycIJ0/zbwSyedYwHdt1Taz0WrCH3xSB
 MsyE6xIJr2MRZ93NMd7K9Ttk7LVcBAyyEkA==
X-ME-Sender: <xms:JQcSZGOkkdUG7-SpqOBtu4-VABj3s2OlAXRCydvu6MZJFay7zeRzFg>
 <xme:JQcSZE8M7nWVtmihUpXj5E1beZBqHjIjZmCCTOjXDU2rJt7BD4H1Ycd7WoTDn2Sed
 BQdwPe5PUY12A>
X-ME-Received: <xmr:JQcSZNSPnueiYL92hmwV_sea6RWoANBxCSJriBeur-dLskV4WeLwr5vx_XrANegTOJ9iPfwwTiBJw1T18RNdkTTFpEyuMnNZEjj7Qg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvddvkedguddtiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvvefukfhfgggtugfgjgesthekredttddtudenucfhrhhomhepifhr
 vghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuggftrfgrthhtvghrnhepge
 evleehjedtgfethfetveetheejtdeugeekgeevleetkeehvefghfdtueegteeknecuffho
 mhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:JgcSZGshD8gmxxzJS-5VeH0SLcI9zmNx6kXhdtrfYWb1SOu0jcEj3A>
 <xmx:JgcSZOcgX5tOai488cVg3SuTtdbHL43N2mQdD0YyMMwmUDZaI3GeJg>
 <xmx:JgcSZK0o68Z3UCdHJ3OZfb9FhGHlYphP_FapKR9CsAefCA7iUY8qlg>
 <xmx:JgcSZM_KoRld3MoO6Yk-eG9Ajzx8Ya9yF_jffPPrXcwLjJxt33ygyg>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 15 Mar 2023 13:57:57 -0400 (EDT)
Date: Wed, 15 Mar 2023 18:57:56 +0100
From: Greg KH <greg@kroah.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <ZBIHJD5FkxiammjB@kroah.com>
References: <167820543971229@kroah.com>
 <20230314022211.1393031-1-John.C.Harrison@Intel.com>
 <ZBF48kVhFmXIsR+K@kroah.com>
 <a5cf5572-4160-3efb-4f80-aaf53aa06efe@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a5cf5572-4160-3efb-4f80-aaf53aa06efe@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5.4.y] drm/i915: Don't use BAR mappings for
 ring buffers with LLC
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, stable@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 15, 2023 at 10:07:53AM -0700, John Harrison wrote:
> On 3/15/2023 00:51, Greg KH wrote:
> > On Mon, Mar 13, 2023 at 07:22:11PM -0700, John.C.Harrison@Intel.com wrote:
> > > From: John Harrison <John.C.Harrison@Intel.com>
> > > 
> > > Direction from hardware is that ring buffers should never be mapped
> > > via the BAR on systems with LLC. There are too many caching pitfalls
> > > due to the way BAR accesses are routed. So it is safest to just not
> > > use it.
> > > 
> > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > Fixes: 9d80841ea4c9 ("drm/i915: Allow ringbuffers to be bound anywhere")
> > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Cc: <stable@vger.kernel.org> # v4.9+
> > > Tested-by: Jouni Högander <jouni.hogander@intel.com>
> > > Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > Link: https://patchwork.freedesktop.org/patch/msgid/20230216011101.1909009-3-John.C.Harrison@Intel.com
> > > (cherry picked from commit 65c08339db1ada87afd6cfe7db8e60bb4851d919)
> > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > > (cherry picked from commit 85636167e3206c3fbd52254fc432991cc4e90194)
> > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_ringbuffer.c | 4 ++--
> > >   1 file changed, 2 insertions(+), 2 deletions(-)
> > Also queued up for 5.10.y, you forgot that one :)
> I'm still working through the backlog of them.
> 
> Note that these patches must all be applied as a pair. The 'don't use
> stolen' can be applied in isolation but won't totally fix the problem.
> However, applying 'don't use BAR mappings' without applying the stolen patch
> first will results in problems such as the failure to boot that was recently
> reported and resulted in a revert in one of the trees.

I do not understand, you only submitted 1 patch here, what is the
"pair"?
