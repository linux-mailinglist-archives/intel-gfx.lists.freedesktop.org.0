Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57018377F9E
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:41:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 361376E457;
	Mon, 10 May 2021 09:41:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 312 seconds by postgrey-1.36 at gabe;
 Fri, 07 May 2021 23:58:28 UTC
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A02F6E5AB
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 May 2021 23:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1620431906;
 bh=3gfW/8ohOIhO1pIaqHv982kf6ULtuf4dQF3icTYs1cA=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=PPfTZmyk5Ky4OpJNNHMBKeut2PlGqq6b4e1fhHNEBhxfZGAomGclGrEEzyCHrce7M
 oxZtjV1q6wrAniNgcXBkUy4VX7J9NCo2m4AiF7sQVoryD4UZFBIFdgmcdg6yIOpWil
 3W71us3kvb2tjGpX7jgHfWcw2usVoax30ew8kdGY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from hos.fritz.box ([91.39.128.24]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MGyxX-1ljr6w2y9b-00E1qF; Sat, 08
 May 2021 01:52:57 +0200
Received: from afrie by hos.fritz.box with local (Exim 4.92)
 (envelope-from <afrie@gmx.net>)
 id 1lfAH8-0000U6-CR; Sat, 08 May 2021 01:52:54 +0200
Date: Sat, 8 May 2021 01:52:54 +0200
From: Andreas Friedrich <afrie@gmx.net>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20210507235254.GA1590@hos.afrie.home.de>
References: <20210429181450.GA25385@hos.afrie.home.de>
 <20210429235828.GZ1551@zhen-hp.sh.intel.com>
 <161977150734.8550.2371200514024347460@jlahtine-mobl.ger.corp.intel.com>
 <20210430103635.GA16501@hos.afrie.home.de>
 <162002960518.3526.10925040263559391423@jlahtine-mobl.ger.corp.intel.com>
 <20210503120050.GA16864@hos.afrie.home.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210503120050.GA16864@hos.afrie.home.de>
X-Provags-ID: V03:K1:dCpsxsdcz2zSDShRvbqiYWPVrGhMaqh0AbtjWDe+u+0+94Ozg5N
 0cBz042JMSz6e06CyKc8dIu55Jds3ikDuPDJPUNKquEB1onN1FkoRDaQgkvzAktkwgU+iqa
 PirIapAcskY6f2xiF3g7Vfd0eYvTO4ix8jUiJDVXcFSCjJu86tPAUgXmDBGSQUPQfnGjlSl
 mWAcMm7tsnnHIoR9+wdNw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lVXCjEYGBPw=:kP6nZ2kJmPYpfE0CRYT3vS
 BkIy7khHgcRLv+C0h4vGXvTEErhP9OKFBHQlrt8y818AW9CTr5/Ldhe6Pr6uc2ewgsbn5pyin
 NcmM/JZ2qnIl4JufIDJsJ93IVM8JK1/qHJO3w6V4NguxJR5xYGsB9wCoFZgyw0jaLtWMiEQOf
 O3RmjEPDLwrcXM0eY0QflnUIbGk45XTW1EnpiyyfNA6Then2hV6X/2T9Z5zCCm0sUSlLQdzI4
 U+3Q9NwZzrhT73AyDx00W5ybX91JBR2Atbb+N1iG6qhh+5DFptvRdEaFHdpSDtGpiWGGCUU8X
 1va0vtrI4r1HxvBXSGtiN+ox7vpdFeTl8B/OLr4G2PMHPn5xL6+l9lmCELU4hotg8DTy7L/xf
 V7s508kxv4EkO+LhVo4Rq3MBSv9vKfd8LJCwKkBKHlPQG9LDx4TYXsOveA5V7515zCHVtoNa9
 BQ4RZswzajrbX1pXXD6v3jkRmrde5rQr+R0ux9GTa+SOPyCfcjYsU9b9I/VrAqXcj3zTRUlqQ
 FNnDTCjhdYZNm3eZtasg+/T+/CEP7l5ruDio+DwW/5w9TAudP+1nxbGcuWESvcXJx6ZQ31U5p
 HgLjObU/tjPbhV8KBLqkjOCoaqGMABU/U65P0bu2jiZimQPlP802H6XuFrxe1cU2IjBaJGYAW
 8dn0uo0M8SNB1wRhB9Cs1X69ml4aXSB+Sjcdr05hN/P/quRPOV0w3qIpZNfhllUK+vELR4LLY
 V5Ag5lxitzR2o1+DyWPyWKi4SGDxImhWOUxFfTYGpE9wzODW3XhiFgDCpG7a189h/BFoxise8
 A6NoUNrwf2FCZO7DwLipJljZBZ7kKlIu2s417t0l7x1xC+lecYHSkgB5dlcJB/Rx+d1BlQDih
 vuV1cUc9z1mCB86qnWRjGAufn0Kbc4cSEmVfEOj7EHt3zX3K+9xSf9RgqErfR+Q39EkwKHicU
 6B467XGbErWlyeNGoJR29S2IxZF/7twGUuFWXNTgbEryK7oIqxfIc6fxiWqyyWcTAtKDsgbgW
 cl/qKgfcb+Aa6GdDqMoHXJvcaoVEYwQYVrXvUh6k4wfK+G8w2ujmOBtd2B3M+oW95D3HlKHhz
 KO/Dq3IUYvDnyhWOOCbL7WiTAkCwNbm9pRn/0PvThB94BlnH68+SLed8xh8ZYzHLMos1diVmy
 5psKcv6KndQPpibcszNUgTT+K/RDFbDqujPh1tM8r196Mk/nEtgLuTduUL4ngDl3RreU4=
X-Mailman-Approved-At: Mon, 10 May 2021 09:41:14 +0000
Subject: Re: [Intel-gfx] REGRESSION with 5.12: Suspend not working on
 Toshiba notebook - FIXED
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 03, 2021 at 02:00:50PM +0200, Andreas Friedrich wrote:

Hello Joonas,
> ...
> > It's very possible that it can be i915 bug. What you can try is to
> > blacklist i915 module and operate the system with SSH and see if the
> > latest kernel still freezes?
> This is a good idea. I have disabled i915 in my kernel configuration:
>   grep I915 .config
>   # CONFIG_DRM_I915 is not set
> This time the suspend works fine! So I think it is definitely an i915
> DRM bug.
> >
> > Also, please try drm-tip kernel and see if it fixed there.
> I have tried:
>   uname -r
>   5.12.0-rc8+
> but no changes. The system freezes after the first try.
> ...
> > Please do file a bug on the issue tracker as requested:
> >
> > https://gitlab.freedesktop.org/drm/intel/issues/
> Done.

Fixed with 5.12.2
  drm/i915: Disable runtime power management during shutdown,
  commit 7962893ecb853aa7c8925ce237ab6c4274cfc1c7 upstream.

Best regards
Andreas Friedrich
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
