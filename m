Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A03762B5CBC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 11:19:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E9696E17D;
	Tue, 17 Nov 2020 10:19:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45646E040
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 10:19:08 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 7AEF75C01AE;
 Tue, 17 Nov 2020 05:19:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 17 Nov 2020 05:19:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=lrBqZxutbQQC0r7tQ5EGoI5qW4I
 F9ABXIiHc5BSaioQ=; b=qTl85RhIqC+SA3u/pSEo+hSR7DriCwSbHf9YLMih4QM
 KSYGzSkE7Z1ndvfRneNhh20qU6zFk75luqgVzs655SQ2Lmd6JSxVooon2YJFG/bp
 iUbNvk9FEa/Yvi4z5FBMtwVwqQdZdu7MM1v5R+Zl7bbemRtZC92EIu6q1kEhzDAO
 0TU0z57yr1ijmJL2EqzROLA5CGEU6fdP9fQKPwxGXm2bPx8c0vN5vXiByHXTHO05
 tILT/eustv/VTuzrhfw2TumFCVDO5KmuayWjOev3rLK0SFAeWpurAZ81N0a9RBfK
 jO4XO2u3J8D40byo9r47V+zDTXYSxTRycpjM6wDTYZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=lrBqZx
 utbQQC0r7tQ5EGoI5qW4IF9ABXIiHc5BSaioQ=; b=LgRnk9qsQi+TKjcXyHbEWp
 OYI/IqY622PoHx8RsJ8MRGrvVFjKa5h6sXbcPNpyjFhBKQ1q89elu81jVUWuOegS
 bIY9/tGE6TWn6W7pvrIMrGszScUZCm4eRqaR26ygbwNqQasY0f9Bhz5gYyE8cJmk
 2FbHYREFUbFJC1+EbNBmKuN45tQxLnLc0NYEzRJTMVqQ0C5xc7WTA6QWPTSqFgFy
 9SrBcHuZx1FI5NZKUG/cvrB7hMXU6AcO++JJZwjqFJZoInePrJaMPKAC3ODbvLlN
 lswHZz//25YNwjGlYx6NKNW5AJv/gl+7pqCBDfuceYariL7CS09ZSmr09HUGxWVA
 ==
X-ME-Sender: <xms:maOzXyj-2Gv5zM9NwAD1If4iMdLK6l4F8xbRh4LT_WS1p38jlx3QGg>
 <xme:maOzXzBDkiQs_R21M19UWyS-NixpPJqAW86ysJzYqcBnRb2m7k5I1UOW7tAvw1NM-
 48LTXihm_wqvg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudeffedgudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
 mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeevueehje
 fgfffgiedvudekvdektdelleelgefhleejieeugeegveeuuddukedvteenucfkphepkeef
 rdekiedrjeegrdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:maOzX6ETRIKkCQXP6HLzn1-N5JASE9S6dol5XQHlqlsXCZ3OI97oqw>
 <xmx:maOzX7Rt7ptZroZhr4oUOYq_FqwSlyY3vWaqxauaPHC-F7bAfhpvyA>
 <xmx:maOzX_wxSBGiDSSB4s65qwtv4FrPhf-VMqFm74BgNCOwE0wq6FYzzg>
 <xmx:maOzX6qwvOrCNhY3LYVwDZUdVxqeL-tukBrvC1KsEwkuC2HGAmW9UQ>
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 by mail.messagingengine.com (Postfix) with ESMTPA id CA8373064AB7;
 Tue, 17 Nov 2020 05:19:04 -0500 (EST)
Date: Tue, 17 Nov 2020 11:19:52 +0100
From: Greg KH <greg@kroah.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <X7OjyFVyzNESwPfT@kroah.com>
References: <20201117000326.3138-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117000326.3138-1-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH stable-5.4] drm/i915: Correctly set SFC
 capability for video engines
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

On Mon, Nov 16, 2020 at 04:03:26PM -0800, Daniele Ceraolo Spurio wrote:
> From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> 
> Commit 5ce6861d36ed5207aff9e5eead4c7cc38a986586 upstream.
> 
> This backport targets stable version 5.4, since the original patch fails
> to apply there, due to a variable having moved from one struct to another.
> The only change required for the patch to apply to 5.4 is to use the
> correct structure:

Now queued up, thanks.

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
