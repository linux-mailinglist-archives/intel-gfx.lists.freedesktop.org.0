Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E76B118B23D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 12:20:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37AC56E9FD;
	Thu, 19 Mar 2020 11:20:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BCD06E9FD
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 11:20:32 +0000 (UTC)
Received: from 185.80.35.16 (185.80.35.16) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.341)
 id 3e01ef312d312676; Thu, 19 Mar 2020 12:20:30 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Francisco Jerez <currojerez@riseup.net>
Date: Thu, 19 Mar 2020 12:20:30 +0100
Message-ID: <20857636.Vd3SBqG6yQ@kreacher>
In-Reply-To: <20200310214203.26459-9-currojerez@riseup.net>
References: <20200310214203.26459-1-currojerez@riseup.net>
 <20200310214203.26459-9-currojerez@riseup.net>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/10] cpufreq: intel_pstate: Enable VLP
 controller based on ACPI FADT profile and CPUID.
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
Cc: Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com>,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tuesday, March 10, 2020 10:42:01 PM CET Francisco Jerez wrote:
> For the moment the VLP controller is only enabled on ICL platforms
> other than server FADT profiles in order to reduce the validation
> effort of the initial submission.  It should work on any other
> processors that support HWP though (and soon enough on non-HWP too):
> In order to override the default behavior (e.g. to test on other
> platforms) the VLP controller can be forcefully enabled or disabled by
> passing "intel_pstate=vlp" or "intel_pstate=no_vlp" respectively in
> the kernel command line.
> 
> v2: Handle HWP VLP controller.
> 
> Signed-off-by: Francisco Jerez <currojerez@riseup.net>
> ---
>  .../admin-guide/kernel-parameters.txt         |  5 ++++
>  Documentation/admin-guide/pm/intel_pstate.rst |  7 ++++++
>  drivers/cpufreq/intel_pstate.c                | 25 +++++++++++++++++--
>  3 files changed, 35 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 0c9894247015..9bc55fc2752e 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -1828,6 +1828,11 @@
>  			per_cpu_perf_limits
>  			  Allow per-logical-CPU P-State performance control limits using
>  			  cpufreq sysfs interface
> +			vlp
> +			  Force use of VLP P-state controller.  Overrides selection
> +			  derived from ACPI FADT profile.
> +			no_vlp
> +			  Prevent use of VLP P-state controller (see "vlp" parameter).
>  
>  	intremap=	[X86-64, Intel-IOMMU]
>  			on	enable Interrupt Remapping (default)
> diff --git a/Documentation/admin-guide/pm/intel_pstate.rst b/Documentation/admin-guide/pm/intel_pstate.rst
> index 67e414e34f37..da6b64812848 100644
> --- a/Documentation/admin-guide/pm/intel_pstate.rst
> +++ b/Documentation/admin-guide/pm/intel_pstate.rst
> @@ -669,6 +669,13 @@ of them have to be prepended with the ``intel_pstate=`` prefix.
>  	Use per-logical-CPU P-State limits (see `Coordination of P-state
>  	Limits`_ for details).
>  
> +``vlp``
> +	Force use of VLP P-state controller.  Overrides selection derived
> +	from ACPI FADT profile.
> +
> +``no_vlp``
> +	Prevent use of VLP P-state controller (see "vlp" parameter).
> +
>  
>  Diagnostics and Tuning
>  ======================
> diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
> index a01eed40d897..050cc8f03c26 100644
> --- a/drivers/cpufreq/intel_pstate.c
> +++ b/drivers/cpufreq/intel_pstate.c
> @@ -3029,6 +3029,7 @@ static int intel_pstate_update_status(const char *buf, size_t size)
>  
>  static int no_load __initdata;
>  static int no_hwp __initdata;
> +static int vlp __initdata = -1;
>  static int hwp_only __initdata;
>  static unsigned int force_load __initdata;
>  
> @@ -3193,6 +3194,7 @@ static inline void intel_pstate_request_control_from_smm(void) {}
>  #endif /* CONFIG_ACPI */
>  
>  #define INTEL_PSTATE_HWP_BROADWELL	0x01
> +#define INTEL_PSTATE_HWP_VLP		0x02
>  
>  #define ICPU_HWP(model, hwp_mode) \
>  	{ X86_VENDOR_INTEL, 6, model, X86_FEATURE_HWP, hwp_mode }
> @@ -3200,12 +3202,15 @@ static inline void intel_pstate_request_control_from_smm(void) {}
>  static const struct x86_cpu_id hwp_support_ids[] __initconst = {
>  	ICPU_HWP(INTEL_FAM6_BROADWELL_X, INTEL_PSTATE_HWP_BROADWELL),
>  	ICPU_HWP(INTEL_FAM6_BROADWELL_D, INTEL_PSTATE_HWP_BROADWELL),
> +	ICPU_HWP(INTEL_FAM6_ICELAKE, INTEL_PSTATE_HWP_VLP),
> +	ICPU_HWP(INTEL_FAM6_ICELAKE_L, INTEL_PSTATE_HWP_VLP),
>  	ICPU_HWP(X86_MODEL_ANY, 0),
>  	{}
>  };
>  
>  static int __init intel_pstate_init(void)
>  {
> +	bool use_vlp = vlp == 1;
>  	const struct x86_cpu_id *id;
>  	int rc;
>  
> @@ -3222,8 +3227,19 @@ static int __init intel_pstate_init(void)
>  			pstate_funcs.update_util = intel_pstate_update_util;
>  		} else {
>  			hwp_active++;
> -			pstate_funcs.update_util = intel_pstate_update_util_hwp;
> -			hwp_mode_bdw = id->driver_data;
> +
> +			if (vlp < 0 && !intel_pstate_acpi_pm_profile_server() &&
> +			    (id->driver_data & INTEL_PSTATE_HWP_VLP)) {
> +				/* Enable VLP controller by default. */
> +				use_vlp = true;
> +			}
> +
> +			pstate_funcs.update_util = use_vlp ?
> +				intel_pstate_update_util_hwp_vlp :
> +				intel_pstate_update_util_hwp;

This basically is only good in a prototype in my view.

There is an interface for selecting scaling algorithms in cpufreq already and
in order to avoid confusion, that one needs to be extended instead of adding
extra driver parameters for that.

I'm also a bit concerned about running all of the heavy computations in
the scheduler context.

> +
> +			hwp_mode_bdw = (id->driver_data &
> +					INTEL_PSTATE_HWP_BROADWELL);
>  			intel_pstate.attr = hwp_cpufreq_attrs;
>  			goto hwp_cpu_matched;
>  		}
> @@ -3301,6 +3317,11 @@ static int __init intel_pstate_setup(char *str)
>  	if (!strcmp(str, "per_cpu_perf_limits"))
>  		per_cpu_limits = true;
>  
> +	if (!strcmp(str, "vlp"))
> +		vlp = 1;
> +	if (!strcmp(str, "no_vlp"))
> +		vlp = 0;
> +
>  #ifdef CONFIG_ACPI
>  	if (!strcmp(str, "support_acpi_ppc"))
>  		acpi_ppc = true;
> 




_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
