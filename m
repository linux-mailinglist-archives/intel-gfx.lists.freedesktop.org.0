Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B55288FD54
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 11:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AED3B10EFE1;
	Thu, 28 Mar 2024 10:46:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=arndb.de header.i=@arndb.de header.b="LrQtPVWj";
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.b="fcLofhU7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 462 seconds by postgrey-1.36 at gabe;
 Thu, 28 Mar 2024 10:46:21 UTC
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA25610E53D;
 Thu, 28 Mar 2024 10:46:21 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id AFD985C0092;
 Thu, 28 Mar 2024 06:38:37 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Thu, 28 Mar 2024 06:38:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1711622317; x=1711708717; bh=POiuY4+IOa
 UzA6zzjdjrxOZWsGRx/nGRra+m6+6JEOc=; b=LrQtPVWjQsmfOMfYRML/H16Z+Y
 fVYJYh+No7W6iqEss0bjGqtg/FoXG1tsiUvBxhbs+B7ru8R1n5Cdcw3TRlyBN25h
 w8uGSrFD2/Wtj5mUqOpwLmn3E7cnEw7se+m+oQ+6zSUVfuI7snm6gqUHGSTbeawM
 nh/+6s3mwfGdNBWdwJUb5LAMw5TlSwNVYNRE2w+3RcsMuw+aRPJmi7+8w6EAEgag
 BgRy5UQz+YPHKm//8CrSz9sYbuuei6HM5N20xeDIT6TO6KP5hP6HcoohqiA5hyaf
 IUQO8FUXMHA04M0NK5fzVwx6KdLjAJR6BaEo1wc0BNk+Yb4t5DrMH723r5iA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711622317; x=1711708717; bh=POiuY4+IOaUzA6zzjdjrxOZWsGRx
 /nGRra+m6+6JEOc=; b=fcLofhU7KYfYoaKEnvkc6Cxzkwds4CMHfB1hUUu5Jfcc
 TE6EHp+dxudfLNx+AdZEtihPQmvaPxcixA53Wti2hsacBMWK6JiU7IEyPA+tIi/b
 29yU89xAoAurT3zjf1k1g79LC4Jv0ghnrGEbrx8YlIBrVA4vy1OUIYnUYy3TcdZO
 dLCoXIcfADKnkc/HViQ2NNFp+sdBvAlDDgybfd/PKcznMJIdJYrheT+e4PNwhp3K
 3eFDzpzKXX3PAe5zITEMM5MQ/e7DgZOO89FIM6XDgYpoNeusSd5KZT1EINPkOJnL
 121aSCTXDGLVfeFd6SDRvCSi7Hja5JGU74eikiNpMA==
X-ME-Sender: <xms:rUgFZuYuVrfpcWycQEvXS2fpXZUlmJGSPvSCfF_afE_h2S1t7K0o7A>
 <xme:rUgFZha40nVeL2RAYwmdcRwOx7kGqknSjZISo5SgwlFb5nexH19KEVELmeYAdoiL6
 X15Ev6XsYohdT1fd9Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudduledgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
 nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
 htvghrnhepffehueegteeihfegtefhjefgtdeugfegjeelheejueethfefgeeghfektdek
 teffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
 hrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:rUgFZo99xDswZFTfgH8vfyeJmmCrg66h4rvt-Yx2uNlgB5RA1LvpAQ>
 <xmx:rUgFZgpcLwJH91Md_YvkCnshMBrKHn9Sg62YigqhW0tPvgHx1puRrw>
 <xmx:rUgFZprwVjxMHJ1nP53PVvPhflcGONmcYanw40SWMusgcebkTc0RIw>
 <xmx:rUgFZuRpDaivIzcWcX5PM5A2h9D-Bena38knyFgzFfYbEsYXwJkCMA>
 <xmx:rUgFZgWoG86W6lVAEZFZ9Yf4PGw0NexXCVtAuKSIHklTcHKXaP9Tdg>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 2F983B6008D; Thu, 28 Mar 2024 06:38:37 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-333-gbfea15422e-fm-20240327.001-gbfea1542
MIME-Version: 1.0
Message-Id: <b9138bc4-61e4-476a-9aa5-8842235bce2e@app.fastmail.com>
In-Reply-To: <20240328102455.944131-1-jani.nikula@intel.com>
References: <20240328102455.944131-1-jani.nikula@intel.com>
Date: Thu, 28 Mar 2024 11:38:16 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Jani Nikula" <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: "Lucas De Marchi" <lucas.demarchi@intel.com>
Subject: Re: [PATCH] drm/i915: use fine grained -Woverride-init disable
Content-Type: text/plain
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

On Thu, Mar 28, 2024, at 11:24, Jani Nikula wrote:
> Use localized __diag_push(), __diag_ignore_all() with rationale, and
> __diag_pop() for specific initializations instead of blanket disabling
> of -Woverride-init across several files.
>
> Note that we've tried this before with commit 88e9664434c9 ("drm/i915:
> use localized __diag_ignore_all() instead of per file") and reverted in
> commit 290d16104575 ("Revert "drm/i915: use localized
> __diag_ignore_all() instead of per file""). The issue turned out to be
> in __diag_ignore_all() and it was fixed by commit 689b097a06ba
> ("compiler-gcc: Suppress -Wmissing-prototypes warning for all supported
> GCC"). So we should be able to pull this off now.
>
> Cc: "Arnd Bergmann" <arnd@arndb.de>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks good to me,

Acked-by: Arnd Bergmann <arnd@arndb.de>
