Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C621636C8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 00:03:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB046E41F;
	Tue, 18 Feb 2020 23:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from namei.org (namei.org [65.99.196.166])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D196E3B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 19:22:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by namei.org (8.14.4/8.14.4) with ESMTP id 01IJLesW013028;
 Tue, 18 Feb 2020 19:21:40 GMT
Date: Wed, 19 Feb 2020 06:21:40 +1100 (AEDT)
From: James Morris <jmorris@namei.org>
To: Alexey Budankov <alexey.budankov@linux.intel.com>
In-Reply-To: <f56fbb5c-1477-44d5-7346-85a1ca0869dc@linux.intel.com>
Message-ID: <alpine.LRH.2.21.2002190621180.10165@namei.org>
References: <c8de937a-0b3a-7147-f5ef-69f467e87a13@linux.intel.com>
 <f56fbb5c-1477-44d5-7346-85a1ca0869dc@linux.intel.com>
User-Agent: Alpine 2.21 (LRH 202 2017-01-01)
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Feb 2020 23:03:31 +0000
Subject: Re: [Intel-gfx] [PATCH v7 01/12] capabilities: introduce
 CAP_PERFMON to kernel and user space
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
Cc: linux-man@vger.kernel.org,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Andi Kleen <ak@linux.intel.com>, Will Deacon <will@kernel.org>,
 Helge Deller <deller@gmx.de>, Igor Lubashev <ilubashe@akamai.com>,
 oprofile-list@lists.sf.net, Stephen Smalley <sds@tycho.nsa.gov>,
 Serge Hallyn <serge@hallyn.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 17 Feb 2020, Alexey Budankov wrote:

> 
> Introduce CAP_PERFMON capability designed to secure system performance
> monitoring and observability operations so that CAP_PERFMON would assist
> CAP_SYS_ADMIN capability in its governing role for performance
> monitoring and observability subsystems.


Acked-by: James Morris <jamorris@linux.microsoft.com>


-- 
James Morris
<jmorris@namei.org>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
