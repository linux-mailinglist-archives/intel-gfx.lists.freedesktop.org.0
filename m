Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0514314C2B4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 23:14:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A4276E142;
	Tue, 28 Jan 2020 22:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from namei.org (namei.org [65.99.196.166])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8DA088A36
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 22:11:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id 00SLIGx1004605;
 Tue, 28 Jan 2020 21:18:16 GMT
Date: Wed, 29 Jan 2020 08:18:16 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
In-Reply-To: <eff5e211-7114-f854-f53f-08491f9dcc26@linux.intel.com>
Message-ID: <alpine.LRH.2.21.2001290818090.2204@namei.org>
References: <74d524ab-ac11-a7b8-1052-eba10f117e09@linux.intel.com>
 <eff5e211-7114-f854-f53f-08491f9dcc26@linux.intel.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 28 Jan 2020 22:14:12 +0000
Subject: Re: [Intel-gfx] [PATCH v6 10/10] drivers/oprofile: open access for
 CAP_PERFMON privileged process
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 "benh@kernel.crashing.org" <benh@kernel.crashing.org>,
 Alexei Starovoitov <ast@kernel.org>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Will Deacon <will@kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Stephane Eranian <eranian@google.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Jan 2020, Alexey Budankov wrote:

> 
> Open access to monitoring for CAP_PERFMON privileged process. Providing
> the access under CAP_PERFMON capability singly, without the rest of
> CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials and
> makes operation more secure.
> 
> CAP_PERFMON implements the principal of least privilege for performance
> monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39 principle
> of least privilege: A security design principle that states that a process
> or program be granted only those privileges (e.g., capabilities) necessary
> to accomplish its legitimate function, and only for the time that such
> privileges are actually required)
> 
> For backward compatibility reasons access to the monitoring remains open
> for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for secure
> monitoring is discouraged with respect to CAP_PERFMON capability.
> 
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
> ---
>  drivers/oprofile/event_buffer.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)


Acked-by: James Morris <jamorris@linux.microsoft.com>

> 
> diff --git a/drivers/oprofile/event_buffer.c b/drivers/oprofile/event_buffer.c
> index 12ea4a4ad607..6c9edc8bbc95 100644
> --- a/drivers/oprofile/event_buffer.c
> +++ b/drivers/oprofile/event_buffer.c
> @@ -113,7 +113,7 @@ static int event_buffer_open(struct inode *inode, struct file *file)
>  {
>  	int err = -EPERM;
>  
> -	if (!capable(CAP_SYS_ADMIN))
> +	if (!perfmon_capable())
>  		return -EPERM;
>  
>  	if (test_and_set_bit_lock(0, &buffer_opened))
> 

-- 
James Morris
<jmorris@namei.org>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
