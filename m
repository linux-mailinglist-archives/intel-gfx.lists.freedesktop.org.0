Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB50267EC47
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 18:18:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34BE910E186;
	Fri, 27 Jan 2023 17:18:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 585CE10E11A;
 Fri, 27 Jan 2023 17:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674839898; x=1706375898;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FO6osXzRh18QqIhAmlDZu2t566YKZD6RsioSMr0dpyw=;
 b=jkPBtRCkShaBd2Q6xJG6kKawMAU3eFnNQZzNtYaS6tL98Es0fn+AwEt4
 x0NTHRz4mdh/KrTaeIO7G0jdHHx87unKV9Xm0T2Pvlix/zzN/CqW6dHNq
 2CfTUEquttf9oo/P/h5IZP6upGgzDcUxhjVY8rU7gZ+EtorvCO250ByDT
 Q8rgFLB/VSJlJG8lsPiaQArcJ1ujQX8B+16kKbXozW3WhekuZ2sFdaItl
 gSNdaLbYEuWKhBeQacc4BBBpJnmndsEI3QuiBlmLe5clqOX4jA3uEMi+z
 b8RqWZ+P4jBijBfVaa37RHzCAXy4Hq71/KPHK5/KJkloFdk/UCfgeX8e1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="391687167"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="391687167"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 09:18:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="656672936"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="656672936"
Received: from kwierzbi-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.2.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 09:17:59 -0800
Date: Fri, 27 Jan 2023 18:18:00 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Message-ID: <20230127171800.booy57ammztuhy2l@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
 <20230127111241.3624629-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230127111241.3624629-2-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/6] intel_gpu_top: Fix man page
 formatting
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

Hi Tvrtko,

On 2023-01-27 at 11:12:36 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> New lines are not respected when rst2man generates the page so try to work
> around that by followin advice from the Internet.
> 
> v2:
>  * Improve some wording.
>  * Tidy -o option description.
>  * Update dates.
>  * Convert the filter list to table.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com> # v1
--------------------------------------------------------------- ^^^^^
Remove this addition at end,
s/ # v1//

Man page looks much better so you can keep my r-b,
thank you for your effort,

Regards,
Kamil

> ---
>  man/intel_gpu_top.rst | 55 ++++++++++++++++++++-----------------------
>  1 file changed, 25 insertions(+), 30 deletions(-)
> 
> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> index 748c7740c800..4417bcff0d5b 100644
> --- a/man/intel_gpu_top.rst
> +++ b/man/intel_gpu_top.rst
> @@ -7,9 +7,9 @@ Display a top-like summary of Intel GPU usage
>  ---------------------------------------------
>  .. include:: defs.rst
>  :Author: IGT Developers <igt-dev@lists.freedesktop.org>
> -:Date: 2020-03-18
> +:Date: 2023-01-27
>  :Version: |PACKAGE_STRING|
> -:Copyright: 2009,2011,2012,2016,2018,2019,2020 Intel Corporation
> +:Copyright: 2009,2011,2012,2016,2018,2019,2020,2023 Intel Corporation
>  :Manual section: |MANUAL_SECTION|
>  :Manual group: |MANUAL_GROUP|
>  
> @@ -23,7 +23,7 @@ DESCRIPTION
>  
>  **intel_gpu_top** is a tool to display usage information on Intel GPU's.
>  
> -The tool gathers data using perf performance counters (PMU) exposed by i915 and other platform drivers like RAPL (power) and Uncore IMC (memory bandwidth).
> +The tool presents data collected from performance counters (PMU), exposed by i915 and other platform drivers like RAPL (power) and Uncore IMC (memory bandwidth).
>  
>  OPTIONS
>  =======
> @@ -37,49 +37,44 @@ OPTIONS
>  -l
>      List plain text data.
>  
> --o <file path | ->
> -    Output to the specified file instead of standard output.
> -    '-' can also be specified to explicitly select standard output.
> +-o <file>, or -o -
> +    Output to the specified file instead of standard output. '-' can also be specified to explicitly select standard output.
>  
>  -s <ms>
>      Refresh period in milliseconds.
> +
>  -L
> -    List available GPUs on the platform.
> +    List available GPUs on the system.
> +
>  -d
> -    Select a specific GPU using supported filter.
> +    Select a specific GPU using one of the supported filters.
>  
>  RUNTIME CONTROL
>  ===============
>  
>  Supported keys:
>  
> -    'q'    Exit from the tool.
> -    'h'    Show interactive help.
> -    '1'    Toggle between aggregated engine class and physical engine mode.
> -    'n'    Toggle display of numeric client busyness overlay.
> -    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
> -    'i'    Toggle display of clients which used no GPU time.
> -    'H'    Toggle between per PID aggregation and individual clients.
> +|
> +|    'q'    Exit from the tool.
> +|    'h'    Show interactive help.
> +|    '1'    Toggle between aggregated by engine class and physical engine mode.
> +|    'n'    Toggle display of numeric client busyness overlay.
> +|    's'    Toggle between sort modes (runtime, total runtime, pid, client id).
> +|    'i'    Toggle display of clients which used no GPU time.
> +|    'H'    Toggle between per PID aggregation and individual clients.
>  
>  DEVICE SELECTION
>  ================
>  
> -User can select specific GPU for performance monitoring on platform where multiple GPUs are available.
> -A GPU can be selected by sysfs path, drm node or using various PCI sub filters.
> -
> -Filter types: ::
> -
> -    ---
> -    filter   syntax
> -    ---
> -    sys      sys:/sys/devices/pci0000:00/0000:00:02.0
> -             find device by its sysfs path
> -
> -    drm      drm:/dev/dri/* path
> -             find drm device by /dev/dri/* node
> +On systems where multiple GPUs are present it is possible to select a specific GPU to be monitored. A GPU can be selected by sysfs path, drm device node or using various PCI sub filters.
>  
> -    pci      pci:[vendor=%04x/name][,device=%04x][,card=%d]
> -             vendor is hex number or vendor name
> +==========  ====================================================== ======================
> +**Filter**  **Syntax**                                             **GPU selection criteria**
> +==========  ====================================================== ======================
> +sys          | ``sys:/sys/devices/pci0000:00/0000:00:02.0``        Select using the sysfs path.
> +drm          | ``drm:/dev/dri/<node>``                             Select using the /dev/dri/\* device node.
> +pci          | ``pci:[vendor=%04x/name][,device=%04x][,card=%d]``  Select using the PCI addrress. Vendor is hexadecinal number or vendor name.
> +==========  ====================================================== ======================
>  
>  JSON OUTPUT
>  ===========
> -- 
> 2.34.1
> 
