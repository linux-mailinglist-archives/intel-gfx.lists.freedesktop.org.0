Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 401B3CF0102
	for <lists+intel-gfx@lfdr.de>; Sat, 03 Jan 2026 15:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1B410E318;
	Sat,  3 Jan 2026 14:23:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="DRYq2viL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com
 [74.125.224.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848AC10E345
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Jan 2026 14:23:02 +0000 (UTC)
Received: by mail-yx1-f44.google.com with SMTP id
 956f58d0204a3-6446c2bbfe3so10100739d50.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 03 Jan 2026 06:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767450181; x=1768054981; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=KWO8OL17OBUAj+kZREKMHrCa17fZaSRz1SGAoiZKS+E=;
 b=DRYq2viLwS3vUWJQ7mh7ih8Ypgaes6zjtZSrnfK3SYN/fPnjaMmVc9EyhqEwZyEFTA
 e+T8xYS+15mG1c7frNtQCzU2mbVNOGH5/7m+jOtxt9c5DqLJFilNxpEz92zpUJLEy5da
 tzFw1TTCvvhKQo/VGjLPlJdAMjZwPSfJLWFTII/LT+RHT4fGPaiEnTORB/to8fETV79h
 F/BZk0Ngz3v4Cgf9jnmXobFDLgscdo5Rd3+1jSHggrsxBaeBn7zcBD/dN4hR6jgmWyyl
 zofS280JSCufn9Ger1COcE2gjjPlPboM4L21d5oPhpUd7MWnwHfPV6Zl4t1arzY1zkG4
 Yqvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767450181; x=1768054981;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KWO8OL17OBUAj+kZREKMHrCa17fZaSRz1SGAoiZKS+E=;
 b=IcADYb7wE7mcD4LVo6wLjD/NPhu1enWmjfsx0BZMpOFeq5VtUMjme0apsTO9M9YvpR
 BLih28ban6vpJgnyq9UojBxLS/YbjoFcNaPYqrUYtjcuf7PmyUCtekoVOOa4Wa1ufClk
 +Xc4JP41vCFdxiYQmCd3OkRP6svQ76zzRn6W8rUzRjsW29V/Bfbx0sCwCXC869agGxnH
 HSBGLct4WAhb9zskeQy9ShXa57reqxmDY/ckz61V8kLyraCj/3Fr6EvQofMqkBzaZSzZ
 pOG26EQeNRPvJ7aeJdCJmFZPX7Y1Q/XfRYuNFl0Vs5RONlmOKDT/pIdya8Ti25pDVrtT
 xziQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxVRawV6xk7yByEJ+c2bgYdrLgoxFhjlCxr7rrlEMwzgNVkPbct2LguHTTQNedMh4nhfxueNTlNtI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx3gyxYOzcqDi2qalrn7JNy3Kz2x1XF4qC3Jkgbw1DSA1wfeFPl
 bQcdkRS0sHLvr8kRcS+29DQBCrgrJg5GKeTCjeEqpvg+eBvGLHPR+7RY
X-Gm-Gg: AY/fxX5xU7sGhNm5Xiiw9KPPZ0up9teBtvguspeXnYYjZ0EENHWAqIt+d3Ziuw2rqbC
 1SLqWSRMEGtPvBreJbcnTX8VPt6mY0H0fOmjHv2QSCDcuAA5Icf13usDPtE9O9i2XlKJtlkcCsC
 4AZBl4PhNbM8TRxCnDS9iEmjNjnrABFUN4X9msbBwUrB0cbmgBGR1pMhwTA6VbLOTRryINFIUgS
 ONO9gYZZi42snx0tPSj00on2+gnSa7SjRwgZUHLG/FMo8Q9uIEoofiuUKLOvcSzEqZtfZ9LDJBm
 fIkxUPypE46o6NgdnUQ/FlW7Cr2GTvMXm4jz2jSgJ5e+Uv6hx3qKqavfr7giQeVjmjlxZRnc9Wf
 7BMH3IvyRYegwJ1sR5tqN3bRHI2Bg1AbsXAVP/hFM+CsJWWgy98AhOrKcxUS3r2Mzvh28u6tIZf
 AfObHo6h4=
X-Google-Smtp-Source: AGHT+IEdPmL19UdV/nj838Gi9cF7n++Nt3CuB8F8HM0/Ed6ihGLC5se2e1S4EasbnPz0/pKisPSC0g==
X-Received: by 2002:a53:cb03:0:b0:63f:a909:d0c6 with SMTP id
 956f58d0204a3-6466a8b6552mr25947887d50.68.1767450181408; 
 Sat, 03 Jan 2026 06:23:01 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:3bbb:b821:6713:e729])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-6466a8bcee0sm21277519d50.6.2026.01.03.06.23.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Jan 2026 06:23:01 -0800 (PST)
Date: Sat, 3 Jan 2026 09:22:59 -0500
From: Yury Norov <yury.norov@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Joel Fernandes <joelagnelf@nvidia.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Christophe Leroy <chleroy@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Laight <david.laight@runbox.com>, Petr Pavlu <petr.pavlu@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Subject: Re: [PATCH v4 7/7] kernel.h: drop trace_printk.h
Message-ID: <aVkmQ4EGIQgAddZQ@yury>
References: <20251225170930.1151781-1-yury.norov@gmail.com>
 <20251225170930.1151781-8-yury.norov@gmail.com>
 <20251226115848.298465d4@gandalf.local.home>
 <20251228133150.1d5731d04bc1b685b0fe81c1@linux-foundation.org>
 <20251229111748.3ba66311@gandalf.local.home>
 <20260103005059.GA11015@joelbox2>
 <aVkSVk2L6VH9MYGz@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aVkSVk2L6VH9MYGz@smile.fi.intel.com>
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

On Sat, Jan 03, 2026 at 02:57:58PM +0200, Andy Shevchenko wrote:
> On Fri, Jan 02, 2026 at 07:50:59PM -0500, Joel Fernandes wrote:
> > On Mon, Dec 29, 2025 at 11:17:48AM -0500, Steven Rostedt wrote:
> 
> ...
> 
> > I use trace_printk() all the time for kernel, particularly RCU development.
> > One of the key usecases I have is dumping traces on panic (with panic on warn
> > and stop tracing on warn enabled). This is extremely useful since I can add
> > custom tracing and dump traces when rare conditions occur. I fixed several
> > bugs with this technique.
> > 
> > I also recommend keeping it convenient to use.
> 
> Okay, you know C, please share your opinion what header is the best to hold the
> trace_printk.h to be included.

What if we include it on Makefile level, similarly to how W=1 works?

        make D=1 // trace_printk() is available
        make D=0 // trace_printk() is not available
        make     // trace_printk() is not available

Where D stands for debugging.

D=1 may be a default setting if you prefer, but the most important is
that every compilation unit will have an access to debugging without
polluting core headers.
