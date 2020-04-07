Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE021A124C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 18:58:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B40CE6E125;
	Tue,  7 Apr 2020 16:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com
 [IPv6:2607:f8b0:4864:20::741])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F47A6E0B9
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 14:35:55 +0000 (UTC)
Received: by mail-qk1-x741.google.com with SMTP id 123so1815411qkm.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 07:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=f/EAzeoB610Oj5d/VUk9L0zsAWvphNQPe8+Su9+KStA=;
 b=hXYnTdb5Tc1HFfd65aj7th2iEeVuJUs7F04W/T6aL2Nbo9ZT295OMiLKJ2DY22WAVW
 1d5jVdaDz6TTlRkFfo7bF0ok/Dd4Et/xp3vxs3u9GsmaugOB2hdSMjp2l9fsSSCqU0X5
 eT7TDHCKsYCoFd5d0y9GMmYiPYWG2s+Q2GijGkqDvNYO1t9DFWM7UaAFdE7SLhxjDir0
 1FVb2df4QCGfD6WCUkHwY7KmuKoLoXsIUf9rM+MC3g9mFyFb75fQTIv+8C9msfZ8Nt7V
 7ZXDvx0uvqZ8szNCp/hJceVeDLIcXvpxJCTGDfj1TbIzo7DXiTPZijzVlJpxesaHseh3
 kzFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=f/EAzeoB610Oj5d/VUk9L0zsAWvphNQPe8+Su9+KStA=;
 b=Mp5m0I/ww2cy+EocgA3qHZssmeGugPLXyIgLmi4MFG/nsjggopZllfqrtFNem7X15T
 G1nhkUPaaecmDQrEql6glogpYJwq5Fdg+azbDiE+/Iab7IIIs2OMqQ05ubLuoSFVW8hW
 pAnkJM+CCPAPmhqQUu2WE3r/owi10Y/DbvIU5FQuYz9GFCF/Fl1alziEfr84cCKtmrJC
 pEQF6ESWcPbYjTwZyhNO4lJ8G6oN95yZzQ18GswiVZORwpF2K5TPointoti95e+nK+kg
 iG7h+Aqj1dyMO1nhvfPU91nRvTFiFoLuTHjQuI8dfJgjyBIBn13uQrkGgkhBozbJ10TP
 8vGQ==
X-Gm-Message-State: AGi0PuYl1Qa0CJ8qYphoE9iFP5Nnc3BHwl/UPIoymE+7txXk0LrtwR99
 mi6uA9ulbNvG/tLYBHvLmEk=
X-Google-Smtp-Source: APiQypKN/wCh5Y0oRNAUu4qvqoRkmbwJqo6zfj+JHzbv3MFGWDMxpAH+FrYP30uO7fgCgdwMDwIJew==
X-Received: by 2002:a37:8044:: with SMTP id b65mr2523229qkd.238.1586270154328; 
 Tue, 07 Apr 2020 07:35:54 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
 by smtp.gmail.com with ESMTPSA id i20sm15917175qkl.135.2020.04.07.07.35.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 07:35:53 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-Google-Original-From: Arnaldo Carvalho de Melo <acme@kernel.org>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id C3583409A3; Tue,  7 Apr 2020 11:35:51 -0300 (-03)
Date: Tue, 7 Apr 2020 11:35:51 -0300
To: Alexey Budankov <alexey.budankov@linux.intel.com>
Message-ID: <20200407143551.GF11186@kernel.org>
References: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
 <20200407143014.GD11186@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407143014.GD11186@kernel.org>
X-Url: http://acmel.wordpress.com
X-Mailman-Approved-At: Tue, 07 Apr 2020 16:58:43 +0000
Subject: Re: [Intel-gfx] [PATCH v8 00/12] Introduce CAP_PERFMON to secure
 system performance monitoring and observability
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
 Stephane Eranian <eranian@google.com>, James Morris <jmorris@namei.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, Serge Hallyn <serge@hallyn.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Em Tue, Apr 07, 2020 at 11:30:14AM -0300, Arnaldo Carvalho de Melo escreveu:
> [perf@five ~]$ type perf
> perf is hashed (/home/perf/bin/perf)
> [perf@five ~]$ getcap /home/perf/bin/perf
> /home/perf/bin/perf = cap_sys_ptrace,cap_syslog,38+ep
> [perf@five ~]$ groups
> perf perf_users
> [perf@five ~]$ id
> uid=1002(perf) gid=1002(perf) groups=1002(perf),1003(perf_users) context=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
> [perf@five ~]$ perf top --stdio
> Error:
> Failed to mmap with 1 (Operation not permitted)
> [perf@five ~]$ perf record -a
> ^C[ perf record: Woken up 1 times to write data ]
> [ perf record: Captured and wrote 1.177 MB perf.data (1552 samples) ]
> 
> [perf@five ~]$ perf evlist
> cycles:u
> [perf@five ~]$

Humm, perf record falls back to cycles:u after initially trying cycles
(i.e. kernel and userspace), lemme see trying 'perf top -e cycles:u',
lemme test, humm not really:

[perf@five ~]$ perf top --stdio -e cycles:u
Error:
Failed to mmap with 1 (Operation not permitted)
[perf@five ~]$ perf record -e cycles:u -a sleep 1
[ perf record: Woken up 1 times to write data ]
[ perf record: Captured and wrote 1.123 MB perf.data (132 samples) ]
[perf@five ~]$

Back to debugging this.

- Arnaldo
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
