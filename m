Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 546BA125D53
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 10:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E4A6EAE2;
	Thu, 19 Dec 2019 09:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 537026EAE2
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 09:10:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 01:10:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="212954494"
Received: from bbartede-mobl2.ger.corp.intel.com (HELO [10.252.33.233])
 ([10.252.33.233])
 by fmsmga007.fm.intel.com with ESMTP; 19 Dec 2019 01:10:30 -0800
To: Alexey Budankov <alexey.budankov@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Serge Hallyn <serge@hallyn.com>,
 James Morris <jmorris@namei.org>, Will Deacon <will.deacon@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Casey Schaufler
 <casey@schaufler-ca.com>, Robert Richter <rric@kernel.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <ea050255-a125-8831-ce91-ee23bd6ad08b@linux.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d5f908f3-b545-7953-8c72-ceb7177609d3@intel.com>
Date: Thu, 19 Dec 2019 11:10:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <ea050255-a125-8831-ce91-ee23bd6ad08b@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 4/9] drm/i915/perf: open access for
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
Cc: Song Liu <songliubraving@fb.com>, Andi Kleen <ak@linux.intel.com>,
 Kees Cook <keescook@chromium.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Jann Horn <jannh@google.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Igor Lubashev <ilubashe@akamai.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>, oprofile-list@lists.sf.net,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 18/12/2019 11:27, Alexey Budankov wrote:
> Open access to i915_perf monitoring for CAP_SYS_PERFMON privileged
> processes. For backward compatibility reasons access to i915_perf
> subsystem remains open for CAP_SYS_ADMIN privileged processes but
> CAP_SYS_ADMIN usage for secure i915_perf monitoring is discouraged
> with respect to CAP_SYS_PERFMON capability.
>
> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>

Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>

> ---
>   drivers/gpu/drm/i915/i915_perf.c | 13 ++++++-------
>   1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index e42b86827d6b..e2697f8d04de 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2748,10 +2748,10 @@ i915_perf_open_ioctl_locked(struct drm_i915_private *dev_priv,
>   	/* Similar to perf's kernel.perf_paranoid_cpu sysctl option
>   	 * we check a dev.i915.perf_stream_paranoid sysctl option
>   	 * to determine if it's ok to access system wide OA counters
> -	 * without CAP_SYS_ADMIN privileges.
> +	 * without CAP_SYS_PERFMON or CAP_SYS_ADMIN privileges.
>   	 */
>   	if (privileged_op &&
> -	    i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
> +	    i915_perf_stream_paranoid && !perfmon_capable()) {
>   		DRM_DEBUG("Insufficient privileges to open system-wide i915 perf stream\n");
>   		ret = -EACCES;
>   		goto err_ctx;
> @@ -2939,9 +2939,8 @@ static int read_properties_unlocked(struct drm_i915_private *dev_priv,
>   			} else
>   				oa_freq_hz = 0;
>   
> -			if (oa_freq_hz > i915_oa_max_sample_rate &&
> -			    !capable(CAP_SYS_ADMIN)) {
> -				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without root privileges\n",
> +			if (oa_freq_hz > i915_oa_max_sample_rate && !perfmon_capable()) {
> +				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without CAP_SYS_PERFMON or CAP_SYS_ADMIN privileges\n",
>   					  i915_oa_max_sample_rate);
>   				return -EACCES;
>   			}
> @@ -3328,7 +3327,7 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
>   		return -EINVAL;
>   	}
>   
> -	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
> +	if (i915_perf_stream_paranoid && !perfmon_capable()) {
>   		DRM_DEBUG("Insufficient privileges to add i915 OA config\n");
>   		return -EACCES;
>   	}
> @@ -3474,7 +3473,7 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
>   		return -ENOTSUPP;
>   	}
>   
> -	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
> +	if (i915_perf_stream_paranoid && !perfmon_capable()) {
>   		DRM_DEBUG("Insufficient privileges to remove i915 OA config\n");
>   		return -EACCES;
>   	}


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
