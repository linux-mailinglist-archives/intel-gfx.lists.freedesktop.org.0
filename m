Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E501397B1
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 18:31:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E2626E116;
	Mon, 13 Jan 2020 17:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com
 [IPv6:2607:f8b0:4864:20::f43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28A676E1E9
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jan 2020 00:35:01 +0000 (UTC)
Received: by mail-qv1-xf43.google.com with SMTP id dp13so1637666qvb.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 16:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:from:date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc;
 bh=6ZxdMaOqxAtsCLY7Lzkx2L/EBnUsDnrBslrx0A7xKC4=;
 b=YvNIeLoxxUS8MiKp2Ri8iAcXzrJxtE44cmCaAzEOlIiO3zdIjAdic6y/7gp05iDy+4
 Psa6obfkZ/2miGQ5CBZOM2hPQw13LKvkvkvxdObU65wzP3ra2LNlPLoI/PvksYjlJJGl
 iSS8P5cVN9p61Gb6Nps3ktzRFCv0Ing6Li0w3f+VU2FaDbtR+UbZqnBI7f57XL6zxiwV
 8zc0GQwvgUDLz68MUfzUHbkOWN6RgoAeVP6n6Ni+2wDy9pXZ/Y5jKoEYEgnhpY8BItXX
 +vICW1PeMxcX+zNfgGRTBkMaN4NCrNgM0PyEOAUoMMz1lYO2qTltSh4Ch14nfdS6Qmzl
 zsBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:date:user-agent:in-reply-to
 :references:mime-version:content-transfer-encoding:subject:to:cc;
 bh=6ZxdMaOqxAtsCLY7Lzkx2L/EBnUsDnrBslrx0A7xKC4=;
 b=uFDRQVyIz5Eg4ArEYwrmMMXO2rBid7WSF++FVtotivoBlr+5XxKutY6PfRXOVJiYjx
 /iFAErjU9JX9v2QaRcCt77EpROeOVtf92JLYPmZthuKwNsx2CXeGrD78b7d8dBX5Q5N4
 ikL/p0UcJEhpPxWI+IWzLi+I3eqiD29DNHx6cVjfuiZT9GJBIphMFCEyuygXQAjXgHPi
 aqSpqQETK3X9Rdnctvj5PI3EaHSvxDtrFhO4CL8ruoqqFz11buOSuaRgJtfCyWpY8zQw
 aj0CLcbOcHzG+Shcjn8+d+yF5IAMkkfBQAqYpTqaG6kUP/hlRfrHRDWFesFMkq8ZMmBA
 Jv2Q==
X-Gm-Message-State: APjAAAWzqfJliITY8A8lOVRJF3ToVqu9Sv6mlkISKjBlkD35r7FBh0WM
 h4yDGEGytRX/l5AoUEzEXlI=
X-Google-Smtp-Source: APXvYqxPyWA8KpmKGMVMME8gPN1B98zu6uMFW1TJ+TYPsRSpYEPZl4k9D7BDYVrpcTXTD8zwqLuGjQ==
X-Received: by 2002:a0c:f7c3:: with SMTP id f3mr1362344qvo.52.1578702900264;
 Fri, 10 Jan 2020 16:35:00 -0800 (PST)
Received: from [192.168.86.249] ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id z141sm1638958qkb.63.2020.01.10.16.34.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Jan 2020 16:34:59 -0800 (PST)
Message-ID: <5e191833.1c69fb81.8bc25.a88c@mx.google.com>
From: arnaldo.melo@gmail.com
Date: Fri, 10 Jan 2020 21:35:12 -0300
User-Agent: K-9 Mail for Android
In-Reply-To: <2B79131A-3F76-47F5-AAB4-08BCA820473F@fb.com>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
 <20200111005213.6dfd98fb36ace098004bde0e@kernel.org>
 <20200110164531.GA2598@kernel.org>
 <20200111084735.0ff01c758bfbfd0ae2e1f24e@kernel.org>
 <2B79131A-3F76-47F5-AAB4-08BCA820473F@fb.com>
MIME-Version: 1.0
To: Song Liu <songliubraving@fb.com>,Masami Hiramatsu <mhiramat@kernel.org>
X-Mailman-Approved-At: Mon, 13 Jan 2020 17:31:20 +0000
Subject: Re: [Intel-gfx] [PATCH v4 2/9] perf/core: open access for
 CAP_SYS_PERFMON privileged process
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
Cc: Mark Rutland <mark.rutland@arm.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Will Deacon <will.deacon@arm.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Stephane Eranian <eranian@google.com>,
	"james.bottomley@hansenpartnership.com" <james.bottomley@hansenpartnership.com>,
	Paul Mackerras <paulus@samba.org>, Jiri Olsa <jolsa@redhat.com>,
	Andi Kleen <ak@linux.intel.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Igor Lubashev <ilubashe@akamai.com>,
	James Morris <jmorris@namei.org>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Ingo Molnar <mingo@redhat.com>, Serge Hallyn <serge@hallyn.com>,
	Robert Richter <rric@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
	Kees@freedesktop.org, Casey Schaufler <casey@schaufler-ca.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

<keescook@chromium.org>,Jann Horn <jannh@google.com>,Thomas Gleixner <tglx@linutronix.de>,Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,Lionel Landwerlin <lionel.g.landwerlin@intel.com>,linux-kernel <linux-kernel@vger.kernel.org>,"linux-security-module@vger.kernel.org" <linux-security-module@vger.kernel.org>,"selinux@vger.kernel.org" <selinux@vger.kernel.org>,"intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,"bpf@vger.kernel.org" <bpf@vger.kernel.org>,"linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,"linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,"linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,"oprofile-list@lists.sf.net" <oprofile-list@lists.sf.net>
From: Arnaldo Carvalho de Melo <acme@kernel.org>
Message-ID: <A7F0BF73-9189-44BA-9264-C88F2F51CBF3@kernel.org>

On January 10, 2020 9:23:27 PM GMT-03:00, Song Liu <songliubraving@fb.com> wrote:
>
>
>> On Jan 10, 2020, at 3:47 PM, Masami Hiramatsu <mhiramat@kernel.org>
>wrote:
>> 
>> On Fri, 10 Jan 2020 13:45:31 -0300
>> Arnaldo Carvalho de Melo <acme@kernel.org> wrote:
>> 
>>> Em Sat, Jan 11, 2020 at 12:52:13AM +0900, Masami Hiramatsu escreveu:
>>>> On Fri, 10 Jan 2020 15:02:34 +0100 Peter Zijlstra
><peterz@infradead.org> wrote:
>>>>> Again, this only allows attaching to previously created kprobes,
>it does
>>>>> not allow creating kprobes, right?
>>> 
>>>>> That is; I don't think CAP_SYS_PERFMON should be allowed to create
>>>>> kprobes.
>>> 
>>>>> As might be clear; I don't actually know what the user-ABI is for
>>>>> creating kprobes.
>>> 
>>>> There are 2 ABIs nowadays, ftrace and ebpf. perf-probe uses ftrace
>interface to
>>>> define new kprobe events, and those events are treated as
>completely same as
>>>> tracepoint events. On the other hand, ebpf tries to define new
>probe event
>>>> via perf_event interface. Above one is that interface. IOW, it
>creates new kprobe.
>>> 
>>> Masami, any plans to make 'perf probe' use the perf_event_open()
>>> interface for creating kprobes/uprobes?
>> 
>> Would you mean perf probe to switch to perf_event_open()?
>> No, perf probe is for setting up the ftrace probe events. I think we
>can add an
>> option to use perf_event_open(). But current kprobe creation from
>perf_event_open()
>> is separated from ftrace by design.
>
>I guess we can extend event parser to understand kprobe directly.
>Instead of
>
>	perf probe kernel_func
>	perf stat/record -e probe:kernel_func ...
>
>We can just do 
>
>	perf stat/record -e kprobe:kernel_func ...


You took the words from my mouth, exactly, that is a perfect use case, an alternative to the 'perf probe' one of making a disabled event that then gets activated via record/stat/trace, in many cases it's better, removes the explicit probe setup case.

Regards, 

- Arnaldo

>
>Thanks,
>Song

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
