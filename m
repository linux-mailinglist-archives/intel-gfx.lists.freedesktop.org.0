Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C4A6BAA45
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 09:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3CA210E958;
	Wed, 15 Mar 2023 08:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 569 seconds by postgrey-1.36 at gabe;
 Wed, 15 Mar 2023 08:00:50 UTC
Received: from new3-smtp.messagingengine.com (new3-smtp.messagingengine.com
 [66.111.4.229])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF43910E958
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 08:00:50 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailnew.nyi.internal (Postfix) with ESMTP id B77E8581D4B;
 Wed, 15 Mar 2023 03:51:17 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Wed, 15 Mar 2023 03:51:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to; s=fm2; t=
 1678866677; x=1678873877; bh=aNNQwQzVCna7Ns3n6BIaF6xnV4h5OB3sXJx
 Eet6WtvI=; b=AoX0YRtx60/GyCP5Pl5C/3NEAIrDfj6bVizZsn+iolVqge4yWWq
 3ly8MZ1OepeqQpI1D11wYodztO4Pk/bukfJuj72xH5loKvfG6GM9kR2QN6tnBVem
 UYv5uo4eABD+teMpY6x6ZRLw+V1aCZToFAbGndPQE9aDnwqJm3vAp8IXPfx0wrUP
 TrKsH2fLXCtzbURBMsf2+ffnv00YBDm2unZJ92Kq2Ov5p2ZOJWdocrOzyaQNipmf
 CSjH+i56xnuT3wV2CcjaDdJ0+TeF2bplcQTACgi2Uv+y7UpqQ2UE0YBI8lSynK5g
 GanOwJSFGIZahM9Jx1KxTkwnu9Rj785Qe7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
 1678866677; x=1678873877; bh=aNNQwQzVCna7Ns3n6BIaF6xnV4h5OB3sXJx
 Eet6WtvI=; b=e4+sFXbrYfNrq6Md3CAaUb2PMMRL1BkxB/dBHXE8GvzTfOngDQZ
 MjQXj2w+xhNaypZh4CxSi2SOFxw0XsmcVXrBq/0PRihnGnsJ9MoPvoadfmYl3LVj
 KrvogBkdfg+o3cCE/lthP8+Xb4ryXUAOU7qq65cb3RUM9PN06ofNPPcZI6cNalXg
 syiYce7tdSduPq66/2uOwp1kJBxLGeeA9jU75XBh2BRv7sZuGz1jSKncvgq5cOej
 7Caad7oS+1ZExNu9o6Do+4Mx/RcmBQNNWgJ3qkuF/DjLiH3hB1mMw43rns58NtPJ
 hbtQlV0omJtvEn7z3rr01cbSIgVA30LLDcg==
X-ME-Sender: <xms:9XgRZMKtJ-4oUMtaqFIgifUHkyjJAOKRPPpEQrQVIAnBq00LAThz-g>
 <xme:9XgRZMJjz7_SH7I0Oe0R0lK2VrelxMH5EltcHhIGvG5WaPFJ9N9rDpIoTmXy9TlUk
 MrKoHpDo2SYZg>
X-ME-Received: <xmr:9XgRZMsdJinBK9ycCAMqAoynT1Abt707Vz7mzpALRqtU5Fg_XAvtBCX11_4vtILANiFErgEFF1LBL94f3Ir0KAXWQdwbG1hySdGyVg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvddvjedguddutdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvvefukfhfgggtugfgjgesthekredttddtudenucfhrhhomhepifhr
 vghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecuggftrfgrthhtvghrnhepge
 evleehjedtgfethfetveetheejtdeugeekgeevleetkeehvefghfdtueegteeknecuffho
 mhgrihhnpehfrhgvvgguvghskhhtohhprdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
 enucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:9XgRZJZ9BoqNsCIyjg5o3OsRmy3UhDDy173YN7pwk9V9AmhGN-971A>
 <xmx:9XgRZDYBJLCuvpZhgh1I5iXmjKkcNiKpcPsW8_jr0D9_6lV2tqRQcg>
 <xmx:9XgRZFCkGcu8y2N9E-OFeKSpSsox9fC2LnQhw0JwIZJdpOuKKEcaXQ>
 <xmx:9XgRZNZGkAhjP33C3wk_SE8g33GP8FQpz0b2ieWDTqt2MNAz8QIqnQ>
Feedback-ID: i787e41f1:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 15 Mar 2023 03:51:16 -0400 (EDT)
Date: Wed, 15 Mar 2023 08:51:14 +0100
From: Greg KH <greg@kroah.com>
To: John.C.Harrison@intel.com
Message-ID: <ZBF48kVhFmXIsR+K@kroah.com>
References: <167820543971229@kroah.com>
 <20230314022211.1393031-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230314022211.1393031-1-John.C.Harrison@Intel.com>
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

On Mon, Mar 13, 2023 at 07:22:11PM -0700, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> Direction from hardware is that ring buffers should never be mapped
> via the BAR on systems with LLC. There are too many caching pitfalls
> due to the way BAR accesses are routed. So it is safest to just not
> use it.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Fixes: 9d80841ea4c9 ("drm/i915: Allow ringbuffers to be bound anywhere")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Cc: <stable@vger.kernel.org> # v4.9+
> Tested-by: Jouni Högander <jouni.hogander@intel.com>
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20230216011101.1909009-3-John.C.Harrison@Intel.com
> (cherry picked from commit 65c08339db1ada87afd6cfe7db8e60bb4851d919)
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> (cherry picked from commit 85636167e3206c3fbd52254fc432991cc4e90194)
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_ringbuffer.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Also queued up for 5.10.y, you forgot that one :)

thanks,

greg k-h
