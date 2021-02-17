Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4F431D77B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 11:24:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F84D6E063;
	Wed, 17 Feb 2021 10:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 399DF6E063
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 10:24:51 +0000 (UTC)
IronPort-SDR: ZZn2dROS2ltyA2K8N8E0Hxl4UcUqFd+mPmsKhV17HjRKuSfO+0oVCW7IwdWFRX9pBLDjXDXFQy
 DUuLWI+5lybw==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="162291955"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="162291955"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 02:24:49 -0800
IronPort-SDR: aNbyo0nPcjIL0X2NodtcN/Q5Q/SxyzTAhirY6ziNADYTF/1A59PxkFS1hitlcApwhJzIadSgBm
 B4TWhvDCRvPg==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="399903650"
Received: from jmyrcha-mobl.ger.corp.intel.com (HELO [10.252.41.48])
 ([10.252.41.48])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 02:24:48 -0800
To: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <161285475934.28238.17153316113364596984@emeril.freedesktop.org>
 <SA2PR11MB496989392E7289731DC748AF9D8E9@SA2PR11MB4969.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bd172f7b-7adb-5841-e983-039f42dacf3e@linux.intel.com>
Date: Wed, 17 Feb 2021 10:24:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <SA2PR11MB496989392E7289731DC748AF9D8E9@SA2PR11MB4969.namprd11.prod.outlook.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Enable_WaProgramMgsrForCorrectSliceSpecificMmioReads_f?=
 =?utf-8?q?or_Gen9_=28rev2=29?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

On 09/02/2021 11:37, Chiou, Cooper wrote:
>  From this CI warning log, there are all known warning message in i915 
> driver and is not caused by my patch.
> 
> Warning 1:
> 
> <3> [69.081809] [drm:wa_verify [i915]] *ERROR* engine workaround lost on 
> application! (reg[b004]=0x0, relevant bits were 0x0 vs expected 0x80)
> 
> Warning 2:
> 
> <3> [619.188270] i915/intel_lrc_live_selftests: live_lrc_isolation 
> failed with error -22
> 
> Warning 3:
> 
> <3> [282.248111] i915 0000:00:02.0: [drm] *ERROR* CPU pipe A FIFO underrun

This one:

igt@i915_pm_rpm@module-reload:

     fi-cfl-8109u: PASS -> DMESG-WARN +35 similar issues

<3> [198.221812] [drm:wa_verify [i915]] *ERROR* engine workaround lost on application! (reg[b004]=0x0, relevant bits were 0x0 vs expected 0x80)
<3> [198.222751] [drm:wa_verify [i915]] *ERROR* engine workaround lost on application! (reg[b118]=0x0, relevant bits were 0x0 vs expected 0x200000)
<3> [198.223076] [drm:wa_verify [i915]] *ERROR* engine workaround lost on application! (reg[b11c]=0x0, relevant bits were 0x0 vs expected 0x4)

?

CI does not think they are old warnings and registers are the MCR affected range. So more digging would be needed to be sure. You are saying those happen in our CI without the patch?

Then with regards to the reported perf drop - something to check would be if the CML system you tested on has the same slice/subslice config as the one from which the original report originated. Might be hard if the test farm has been re-configured. But essentially running the benchmark on a few Gen9 machine with fused ss would be needed I think.

And finally I couldn't find the WA entry in bspec, but maybe I just don't know where to look. Someone better versed to finding WA. Maybe Matt you would have time for a quick check if WaProgramMgsrForCorrectSliceSpecificMmioReads is documented as applicable to Gen9?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
