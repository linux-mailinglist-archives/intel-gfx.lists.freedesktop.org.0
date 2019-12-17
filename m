Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A3B1227DC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 10:45:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC9326E968;
	Tue, 17 Dec 2019 09:45:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B646E0CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 09:45:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 01:45:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,325,1571727600"; d="scan'208";a="217719255"
Received: from gorris-mobl2.ger.corp.intel.com (HELO [10.249.34.224])
 ([10.249.34.224])
 by orsmga003.jf.intel.com with ESMTP; 17 Dec 2019 01:45:20 -0800
To: Alexey Budankov <alexey.budankov@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Serge Hallyn <serge@hallyn.com>, James Morris <jmorris@namei.org>,
 Casey Schaufler <casey@schaufler-ca.com>
References: <b175f283-d256-e37e-f447-6ba4ab4f3d3a@linux.intel.com>
 <bc5b2a0d-a185-91b6-5deb-a4b6e1dc3d3e@linux.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <503ad40c-d94e-df1d-1541-730c002ad3b7@intel.com>
Date: Tue, 17 Dec 2019 11:45:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <bc5b2a0d-a185-91b6-5deb-a4b6e1dc3d3e@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 4/7] drm/i915/perf: open access for
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
Cc: songliubraving@fb.com, Andi Kleen <ak@linux.intel.com>,
 Kees Cook <keescook@chromium.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Jann Horn <jannh@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, intel-gfx@lists.freedesktop.org,
 Igor Lubashev <ilubashe@akamai.com>, linux-kernel@vger.kernel.org,
 Stephane Eranian <eranian@google.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Brendan Gregg <bgregg@netflix.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 16/12/2019 22:03, Alexey Budankov wrote:
> Open access to i915_perf monitoring for CAP_SYS_PERFMON privileged processes.
> For backward compatibility reasons access to i915_perf subsystem remains open
> for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for secure
> i915_perf monitoring is discouraged with respect to CAP_SYS_PERFMON capability.
>
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>


Assuming people are fine with this new cap, I like this idea of a 
lighter privilege for i915-perf.


-Lionel


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
