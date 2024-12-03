Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCEF9E5D9C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 18:47:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2C810EF51;
	Thu,  5 Dec 2024 17:47:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=wanadoo.fr header.i=@wanadoo.fr header.b="nEvKIz15";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 538 seconds by postgrey-1.36 at gabe;
 Tue, 03 Dec 2024 11:41:47 UTC
Received: from out.smtpout.orange.fr (out-14.smtpout.orange.fr [193.252.22.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2875910E1A0
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 11:41:47 +0000 (UTC)
Received: from localhost.localdomain ([124.33.176.97])
 by smtp.orange.fr with ESMTPA
 id IR8ttkZ74dwuOIR92te4sm; Tue, 03 Dec 2024 12:32:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
 s=t20230301; t=1733225567;
 bh=Dj1p7e8kB7p97w73blghpaZTEKWNn+qBBYUUgF4zwb8=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=nEvKIz156e4S7ID2yC+/Y/Oc1G7rat+mYSNeEV/2EH89cxRvbyK7TJgR2Zxz+fN6x
 RZsd/cV/CBefswZ6/SM/p7fBX/1FzjpepmVftqBTRCMm9W+buVNwKWuex/PJRug7zU
 cLI+kO/ZPX7LbR8cdzX7Ffgud40T0n1k982MhEheHsT7vPr4dXkWonNCxFIwkpIPc3
 /MNr6e5Ak1DMjLKi2EYAwQydgNUTnnWCmzdLVQYnifzm0eRFAadOqOTg0X1QV8LPq6
 5j1dhkaFuDCeZNSLEVA05ZYuctGLyRlr7y6Q1VVd2KQl/PEBMPpNzwFtGgiu2eHlKb
 izRhj+9i1FUBg==
X-ME-Helo: localhost.localdomain
X-ME-Auth: bWFpbGhvbC52aW5jZW50QHdhbmFkb28uZnI=
X-ME-Date: Tue, 03 Dec 2024 12:32:47 +0100
X-ME-IP: 124.33.176.97
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Andy Whitcroft <apw@canonical.com>,
	Joe Perches <joe@perches.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, intel-gfx@lists.freedesktop.org,
 patchwork@emeril.freedesktop.org
Subject: Re: Fi.CI.CHECKPATCH: warning for compiler.h: refactor
 __is_constexpr() into is_const{, _true, _false}()
Date: Tue,  3 Dec 2024 20:32:28 +0900
Message-ID: <20241203113231.728535-2-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <173322117407.1968577.8230174613912894876@b555e5b46a47>
References: <20241203-is_constexpr-refactor-v1-0-4e4cbaecc216@wanadoo.fr>
 <173322117407.1968577.8230174613912894876@b555e5b46a47>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3000;
 i=mailhol.vincent@wanadoo.fr; h=from:subject;
 bh=3FOU1tKOI0CbVe65mzjG9c/bxGQ6uniX3atIK1gj4Ho=;
 b=owGbwMvMwCV2McXO4Xp97WbG02pJDOl+b/zdp90NyK2brtgsJCLFd0mugW+Giq5W+MzcH9G/V
 vvvNEvuKGVhEONikBVTZFlWzsmt0FHoHXboryXMHFYmkCEMXJwCMJEvyxkZ1peGXyi7JexwoqFt
 Ap/+g+09xyx2PL/y9aqaStmr2u9mRxj+Wd9sDbL7YC3MLMgadeloal+Q1OqTDSESKvlR+319+9Z
 yAQA=
X-Developer-Key: i=mailhol.vincent@wanadoo.fr; a=openpgp;
 fpr=ED8F700574E67F20E574E8E2AB5FEB886DBB99C2
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 05 Dec 2024 17:47:40 +0000
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

Hi checkpatch maintainers,

On Tue, 03 Dec 2024 at 10:19:34, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: compiler.h: refactor __is_constexpr() into is_const{,_true,_false}()
> URL   : https://patchwork.freedesktop.org/series/142040/
> State : warning
>
> == Summary ==
>
> Error: dim checkpatch failed
> 65c5a73cbdd2 compiler.h: add statically_false()
> 25d8e6973c58 compiler.h: add is_const() as a replacement of __is_constexpr()
> -:75: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
> #75: FILE: include/linux/compiler.h:349:
> +	_Generic(0 ? (void *)(long)(x) : (char *)0, char *: 1, void *: 0)
>  	                                                 ^
>
> -:75: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
> #75: FILE: include/linux/compiler.h:349:
> +	_Generic(0 ? (void *)(long)(x) : (char *)0, char *: 1, void *: 0)
>  	                                                  ^
>
> -:75: CHECK:SPACING: spaces preferred around that '*' (ctx:WxO)
> #75: FILE: include/linux/compiler.h:349:
> +	_Generic(0 ? (void *)(long)(x) : (char *)0, char *: 1, void *: 0)
>  	                                                            ^
>
> -:75: ERROR:SPACING: spaces required around that ':' (ctx:OxW)
> #75: FILE: include/linux/compiler.h:349:
> +	_Generic(0 ? (void *)(long)(x) : (char *)0, char *: 1, void *: 0)
>  	                                                             ^
>
> -:75: CHECK:CAMELCASE: Avoid CamelCase: <_Generic>
> #75: FILE: include/linux/compiler.h:349:
> +	_Generic(0 ? (void *)(long)(x) : (char *)0, char *: 1, void *: 0)

I submitted a patch which contained a _Generic() selection [1] and got
above checkpatch warnings and errors.

Before blindly fixing those, I wanted to discuss this with you because
it looks like a false positive to me.

I think that the _Generic() selection should follow the switch case or
the goto label style, that is to say, no space before the colon.

For example:

  _Generic(foo,
	   char: 0,
	   short: 1,
	   char *: 2,
	   short *: 3,
	   default: 4);

instead of:

  _Generic(foo,
	   char : 0,
	   short : 1,
	   char * : 2,
	   short * : 3,
	   default : 4);

The fact is that the introduction of _Generic in the kernel is fairly
recent (can be used since July 2020 following the bump to GCC 4.9 in [2]).
So I guess that it is just that the _Generic()s where never considered
in checkpatch.pl.

I would have liked to send a fix, but I am not fluent in perl, so the
best I have to offer is this report.

Let me know if it is acceptable to ignore those checkpatch errors :)

[1] compiler.h: add is_const() as a replacement of __is_constexpr()
Link: https://lore.kernel.org/intel-gfx/20241203-is_constexpr-refactor-v1-2-4e4cbaecc216@wanadoo.fr/

[2] commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
Link: https://git.kernel.org/torvalds/c/6ec4476ac825


Yours sincerely,
Vincent Mailhol
