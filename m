Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAEB19E25A
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 04:18:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 988586ECD8;
	Sat,  4 Apr 2020 02:18:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83B4E6ECD8
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Apr 2020 02:18:13 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id a25so10775526wrd.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 19:18:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=njNMvkZSwli/XJkxlAL53ySvEgIh59jJQ3Da06ltvek=;
 b=USc3vLGB2kmVcBIjkl7kURKh8bgjJNJRlXAj5Qt1JzGlNA8b+b4x6SYyk/2/K2XBVZ
 7x/DkcBzUDY7tWM+35UOjDFfKqDMhYz2agMUbFMvZqqsKYUlT+8cNrV5LYu4ZYX9T0Ns
 YRrVSpONw4ZfHC2Uk3fRqS7Iiu+PDtDIRmByFcEPa99b2ck1QZzhTZG2T8l9YHDyRYz+
 mHCmcF90Y/IPSNbQd47qIwneCBCNC4ZxTsLAEVolKAmYZg2Ime6T6VAYQrXGXbnuwMey
 bFSOv5dp+Ke1zwilN4oyCROorKWQR6BJpXmof4W+MudLxiprurRbhZHQTfldTCNSQEiS
 ohUg==
X-Gm-Message-State: AGi0PubroYxm3zRq6pEMhEMe2x4FfcGX071H+0xsUhR4zA1ct1rYljJb
 xtaqFaT4sBjckpDh3CKfULHOVB27butK1qcClow=
X-Google-Smtp-Source: APiQypITt+t9SHGiW3VBj3kiVR4I11z137wBPJZ4Q7W9GsJPRGwRvzLCZ0lCixu8k2odpcKExmR8YBOh7LpnxfMyanc=
X-Received: by 2002:a5d:474b:: with SMTP id o11mr11926654wrs.391.1585966692198; 
 Fri, 03 Apr 2020 19:18:12 -0700 (PDT)
MIME-Version: 1.0
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <a66d5648-2b8e-577e-e1f2-1d56c017ab5e@linux.intel.com>
In-Reply-To: <a66d5648-2b8e-577e-e1f2-1d56c017ab5e@linux.intel.com>
From: Namhyung Kim <namhyung@kernel.org>
Date: Sat, 4 Apr 2020 11:18:01 +0900
Message-ID: <CAM9d7cgRczLcyUi1y96a=87Hh3BhFgRUS8Kw=DBg4C0hVYj2HQ@mail.gmail.com>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v8 04/12] perf tool: extend Perf tool with
 CAP_PERFMON capability support
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
Cc: linux-man@vger.kernel.org, Song Liu <songliubraving@fb.com>,
 Andi Kleen <ak@linux.intel.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>, Alexei Starovoitov <ast@kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, James Morris <jmorris@namei.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Stephane Eranian <eranian@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

On Thu, Apr 2, 2020 at 5:47 PM Alexey Budankov
<alexey.budankov@linux.intel.com> wrote:
>
>
> Extend error messages to mention CAP_PERFMON capability as an option
> to substitute CAP_SYS_ADMIN capability for secure system performance
> monitoring and observability operations. Make perf_event_paranoid_check()
> and __cmd_ftrace() to be aware of CAP_PERFMON capability.
>
> CAP_PERFMON implements the principal of least privilege for performance
> monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
> principle of least privilege: A security design principle that states
> that a process or program be granted only those privileges (e.g.,
> capabilities) necessary to accomplish its legitimate function, and only
> for the time that such privileges are actually required)
>
> For backward compatibility reasons access to perf_events subsystem remains
> open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
> secure perf_events monitoring is discouraged with respect to CAP_PERFMON
> capability.
>
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> Reviewed-by: James Morris <jamorris@linux.microsoft.com>

Acked-by: Namhyung Kim <namhyung@kernel.org>

Thanks
Namhyung
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
