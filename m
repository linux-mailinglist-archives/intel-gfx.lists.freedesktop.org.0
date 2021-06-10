Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D425B3A2AE1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 13:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD7F6ED08;
	Thu, 10 Jun 2021 11:56:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137216ED07;
 Thu, 10 Jun 2021 11:56:01 +0000 (UTC)
IronPort-SDR: 1kr396TygGqFyzxizX3fkOOlUfWSwH5aQP6pXEDEBZ+40sRk46QYaLVZYtNf5K+WRANYfM3kzt
 LAG7du8AsCPA==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="184971928"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="184971928"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 04:56:00 -0700
IronPort-SDR: 4HvAtng04rI4EJIc41e55QWKIaW7jQqGvhjYUtLTF0hdMxIBFL6IQ5+7pimANgYAGLEbf4SHuB
 XVJpwNFOA9Qw==
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="402663181"
Received: from jwalsh5-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.28.33])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 04:55:57 -0700
MIME-Version: 1.0
In-Reply-To: <548dd463-3942-00a1-85c3-232897dea1a3@canonical.com>
References: <548dd463-3942-00a1-85c3-232897dea1a3@canonical.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: "Hans de Goede" <hdegoede@redhat.com>,
 Colin Ian King <colin.king@canonical.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Mark Gross <mgross@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jesse Barnes <jsbarnes@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <162332615476.15946.17135355064135638083@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 10 Jun 2021 14:55:54 +0300
Subject: Re: [Intel-gfx] Computation of return value being discarded in
 get_cpu_power() in drivers/platform/x86/intel_ips.c
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
Cc: intel-gfx@lists.freedesktop.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

(Address for Hans was corrupt in previous message, which confused my mail
client. Sorry for duplicate message, the other is without From: field).

+ Jesse

Quoting Colin Ian King (2021-06-09 14:50:07)
> Hi,
> 
> I was reviewing some old unassigned variable warnings from static
> analysis by Coverity and found an issue introduced with the following
> commit:
> 
> commit aa7ffc01d254c91a36bf854d57a14049c6134c72
> Author: Jesse Barnes <jbarnes@virtuousgeek.org>
> Date:   Fri May 14 15:41:14 2010 -0700
> 
>     x86 platform driver: intelligent power sharing driver
> 
> The analysis is as follows:
> 
> drivers/platform/x86/intel_ips.c
> 
>  871 static u32 get_cpu_power(struct ips_driver *ips, u32 *last, int period)
>  872 {
>  873        u32 val;
>  874        u32 ret;
>  875
>  876        /*
>  877         * CEC is in joules/65535.  Take difference over time to
>  878         * get watts.
>  879         */
>  880        val = thm_readl(THM_CEC);
>  881
>  882        /* period is in ms and we want mW */
>  883        ret = (((val - *last) * 1000) / period);
> 
> Unused value (UNUSED_VALUE)
> assigned_value:  Assigning value from ret * 1000U / 65535U to ret here,
> but that stored value is not used.
> 
>  884        ret = (ret * 1000) / 65535;
>  885        *last = val;
>  886
>  887        return 0;
>  888 }
> 
> I'm really not sure why ret is being calculated on lines 883,884 and not
> being used. Should that be *last = ret on line 885? Looks suspect anyhow.

According to git blame code seems to have been disabled intentionally by the
following commit:
  
commit 96f3823f537088c13735cfdfbf284436c802352a
Author: Jesse Barnes <jbarnes@virtuousgeek.org>
Date:   Tue Oct 5 14:50:59 2010 -0400
  
    [PATCH 2/2] IPS driver: disable CPU turbo
  
    The undocumented interface we're using for reading CPU power seems to be
    overreporting power.  Until we figure out how to correct it, disable CPU
    turbo and power reporting to be safe.  This will keep the CPU within default
    limits and still allow us to increase GPU frequency as needed.
  
Maybe wrap the code after thm_readl() in #if 0 in case somebody ends up
wanting to fix it? Or eliminate completely.
  
In theory the thm_readl() may affect the system behavior so would not
remove that for extra paranoia.
  
Regards, Joonas

> Colin
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
