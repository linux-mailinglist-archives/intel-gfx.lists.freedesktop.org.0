Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C4088FDA8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:01:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1654F10E1A6;
	Thu, 28 Mar 2024 11:01:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=arndb.de header.i=@arndb.de header.b="BLt9jvNz";
	dkim=pass (2048-bit key; unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.b="XS2xnBUC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 509 seconds by postgrey-1.36 at gabe;
 Thu, 28 Mar 2024 11:01:23 UTC
Received: from fhigh2-smtp.messagingengine.com
 (fhigh2-smtp.messagingengine.com [103.168.172.153])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD1910E1A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 11:01:23 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 1323D11400DB;
 Thu, 28 Mar 2024 06:52:53 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
 by compute5.internal (MEProxy); Thu, 28 Mar 2024 06:52:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:subject
 :subject:to:to; s=fm1; t=1711623173; x=1711709573; bh=pYSP327WQF
 DVmZr6n7v2NiEuO6ZV1nPOeivuxd5HieM=; b=BLt9jvNz5hthy4N8+5JykzYgPC
 RyR2Kt4srpR8FZvhqE9UwZolwjy9UkgDiU8jmpvrn+guG9q4ww72iOw1B3KSthtf
 nHLqJyI3829+aCC5BHGqFU05vCbXClHgFHJuBZa9QPacaLx7CpO0BSMx87Ap1YHw
 GUIjOQnl/3TMwsb4/O7Q60lBBRSUAayuhVbsDCb2HwaT66g8vqv+IJkHViaogjIi
 cEfTAg7S7n4LBhtI3Ija9tGw6Imk2IwfOdDb9pJc6dNYJheSz71+5/t1B3G9HreX
 B94kzTGzEnVXQJngAzZWGiKCPoRN8nvKMIjeufHCLPoJv8gpDMateEzqOKeg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711623173; x=1711709573; bh=pYSP327WQFDVmZr6n7v2NiEuO6ZV
 1nPOeivuxd5HieM=; b=XS2xnBUCepnAJHRLgcsCubXP1XsFjy6OOTVNxv+0P+76
 ukUTzYGCbiDEDEM95MyJo21HL+0HhJiI4w5E+ccfhieJv0qbjNALiKdFHBD4G7I5
 mJCV/A7ejDpfSuhJvrDJSv4HiLX1I54FhMJyZ6XSpYnL29cEpa+vJ5vvXx/6wPJ0
 ZytjPwl5YQ2BGV2eIY6w9kcT9W/Shd2neMba8WyGisC3x1ccHPy2pCKOZ9Z+RaF4
 7aakQtP8pfvSAq278waGWLjzOWYZDYRPXzOf7dOJ+roAEM+wIDP8Hfie57wCVLH0
 sPjUcZ+22H6wJJuzPf+SdV/QsfC7aHr0Qg/d4EK52w==
X-ME-Sender: <xms:BEwFZv9jxM0BDAz1baL4uM02Ml6RNROftPOkbjKzAqU8JxG53jRXMA>
 <xme:BEwFZrvJf6eNq4Y937lpeVHM2fyOpxeisx18g0oB2lDodHVcZOnseBNwc9yUXgVAI
 Z2WWdejKsEkShPh45A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudduledgudelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedftehr
 nhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrth
 htvghrnhepffehueegteeihfegtefhjefgtdeugfegjeelheejueethfefgeeghfektdek
 teffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprg
 hrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:BEwFZtA-azog78eutfczfFlihiGGHZlKj4ml-8hUktdPSQKtpJXI5w>
 <xmx:BEwFZrcKvMZHlR92jcI9_-6Asa6d5N2MmPl1LJ-7YbTE7qwLGqMv3Q>
 <xmx:BEwFZkO-qF7k5HExohyO9gtcNMEOIIQhD3f48VZRWJdcE8XpMgpZkA>
 <xmx:BEwFZtnQc-ll8LflCyOKn3qR-ocduIe3YWUqZTYSvjeXiKKyJsAyJA>
 <xmx:BUwFZhp1EmcC3sdwiY9YA3Ysuv6PgfrPv1h0cwBUw9K0OxyMcdPZ8w>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id C68DDB6008D; Thu, 28 Mar 2024 06:52:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.11.0-alpha0-333-gbfea15422e-fm-20240327.001-gbfea1542
MIME-Version: 1.0
Message-Id: <84c264bb-0316-42eb-85d2-ddd8f8dbf1d4@app.fastmail.com>
In-Reply-To: <87o7ayfxbh.fsf@intel.com>
References: <20240328102455.944131-1-jani.nikula@intel.com>
 <b9138bc4-61e4-476a-9aa5-8842235bce2e@app.fastmail.com>
 <87o7ayfxbh.fsf@intel.com>
Date: Thu, 28 Mar 2024 11:52:32 +0100
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

On Thu, Mar 28, 2024, at 11:46, Jani Nikula wrote:
> On Thu, 28 Mar 2024, "Arnd Bergmann" <arnd@arndb.de> wrote:
>> On Thu, Mar 28, 2024, at 11:24, Jani Nikula wrote:
>>> Use localized __diag_push(), __diag_ignore_all() with rationale, and
>>> __diag_pop() for specific initializations instead of blanket disabling
>>> of -Woverride-init across several files.
>>>
>>> Note that we've tried this before with commit 88e9664434c9 ("drm/i915:
>>> use localized __diag_ignore_all() instead of per file") and reverted in
>>> commit 290d16104575 ("Revert "drm/i915: use localized
>>> __diag_ignore_all() instead of per file""). The issue turned out to be
>>> in __diag_ignore_all() and it was fixed by commit 689b097a06ba
>>> ("compiler-gcc: Suppress -Wmissing-prototypes warning for all supported
>>> GCC"). So we should be able to pull this off now.
>>>
>>> Cc: "Arnd Bergmann" <arnd@arndb.de>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>> Looks good to me,
>>
>> Acked-by: Arnd Bergmann <arnd@arndb.de>
>
> Thanks! I'll take this via drm-intel-next for v6.10. Up to you what to
> do with your patch [1], either drop the i915 and xe changes, or we can
> handle the trivial conflict too if keeping the changes helps you
> somehow.

I'll just drop all of the parts for drivers/gpu and send another
patch for the amdgpu driver to do the same as your patch.

     Arnd
