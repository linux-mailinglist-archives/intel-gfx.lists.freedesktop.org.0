Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE499F9A8E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 20:33:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 843CD10F046;
	Fri, 20 Dec 2024 19:32:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ijut/Mkx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 893A610E3DA;
 Fri, 20 Dec 2024 19:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734723178; x=1766259178;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=W0nfl+OjEeXrXqKF7E8befojJxU/oC2PiQWkSfQIG6o=;
 b=Ijut/MkxwCT2cXRTE2F1xFlhn2Ru3KBJCS10m0wiVhDChky8uTJrW3gA
 4g2Fs99cCwi9Z7xDU/IHgvwM/pGQj181e5PAlrc69hLDOnq73Oxi1ZbT5
 C9pbDm+Jssqp4wEduFGtYH+pgVfcg3zVMnFYweAFOXygIspwYteQmPEIU
 GWPG/ZzDGK60ULqeLN8v1BW0Sm+aw45vSY+Ui6eCQ/mOkPBFrv0Q5bqCV
 7vipVQlQrjPuKJ3pkqEMwbdthUjycVLPd9FxxTI+RAVqown8AVQIsV1C+
 p+e+LqtoLUI7tkjlCGicnbogEkfYtSdii6wWDuX7nfTEhB/VyrtfpgNtb w==;
X-CSE-ConnectionGUID: hXyr3D8QQmW+elLKdZLaeA==
X-CSE-MsgGUID: qQ7W6y+JQsmG57WFbGD9Sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="45773715"
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="45773715"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 11:32:58 -0800
X-CSE-ConnectionGUID: pkPQClgCSEi2VsstwSEt4A==
X-CSE-MsgGUID: FK/eBd7nTuiyoBXmIJ71eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,251,1728975600"; d="scan'208";a="103568919"
Received: from ldmartin-desk2.corp.intel.com (HELO ldmartin-desk2)
 ([10.125.108.128])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 11:32:56 -0800
Date: Fri, 20 Dec 2024 13:32:51 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>, 
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>, 
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org, 
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: Re: [PATCH i-g-t v2 0/4] tools/gputop: Add PMU stats
Message-ID: <vpa2hxt64wyt3og363grrorkdebintntwrtsv5uvgxput3m3oj@t7yldrdsv7ca>
References: <20241220003734.69174-1-vinay.belgaumkar@intel.com>
 <7d77e830-54c1-42c0-9402-16937697d2bb@ursulin.net>
 <Z2XB1jhvfreb3kME@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <Z2XB1jhvfreb3kME@intel.com>
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

On Fri, Dec 20, 2024 at 02:13:26PM -0500, Rodrigo Vivi wrote:
>On Fri, Dec 20, 2024 at 10:15:04AM +0000, Tvrtko Ursulin wrote:
>>
>> On 20/12/2024 00:37, Vinay Belgaumkar wrote:
>> > Use the PMU support being added in
>> > https://patchwork.freedesktop.org/series/139121/ to add freq/c6 stats.
>>
>> Brace yourself for the customary "why". So yes, why?
>>
>> Gputop so far was a reference showcase for DRM fdinfo, nothing more. Why add
>> a _subset_ of PMU stats to it? Any other drivers could be wired up? How far
>> do people intend to grow it, considering alternatives with nicer UI and more
>> featureful exist?
>
>Well, currently intel_gpu_top doesn't support Xe and we really don't
>have any intention to add xe support there.
>
>We don't believe it is a better UI and more features.
>
>Hopefully someday we can get qmassa [1] part of the distros and make that to
>be our default to use the uapis that we add in Xe.
>
>But for now we were in the hope that we could use gputop for that which is
>the current tool that supports Xe metrics. But well, I just noticed that
>at least in Fedora it is not packaged :/
>
>$ rpm -ql igt-gpu-tools-1.27.1-0.4.20230215git45da871.fc40.x86_64 | grep top
>/usr/bin/intel_gpu_top
>/usr/share/man/man1/intel_gpu_top.1.gz
>
>[1] - https://github.com/ulissesf/qmassa
>
>So, our options are:
>
>1. Add all the Xe support in intel_gpu_top
>2. Convince distros to build and package gputop along with intel_gpu_top in igt
>3. Convince distros to adopt qmaasa


I think we should handle gputop as a reference implementation for a
"top-like implementation for GPU".  I think end users have tools with
better UIs like qmassa, or nvtop, or htop or other graphical
applications and we shouldn't try to block that - doing something
beautiful in gputop would be a lot of effort for little benefit if end
users are already served by other tools.  Letting gputop as a reference
impl for these tools to borrow code or consult, would be ideal IMO.


As Tvrtko said, currently gputop is a reference showcase for DRM fdinfo.
I think it can grow some capabilities and be a reference
implementation for top-like application. If that means adding pmu, then
be it.  However the pmu support needs to be added in a proper way so
the tool always continue to be vendor-agnostic and that it's easy to
add support for events from other vendors. That probably means that
adding pmu-related things in the fdinfo or drm-client libs are probably
not the way to go as a) it's crossing unrelated abstraction and b)
breaking the vendor-agnostic nature of the tool.

>
>Meanwhile our PMU are blocked...

I don't think they should be blocked. The kernel impl was blocked for a
long time in other things, not having PMU included somewhere like
gputop.  If you want to read pmu, the #1 application is perf

I think we can add pmu in gputop as a reference. If someone can grow
gputop to have all the intel_gpu_top capabilities, but doing it in a
proper vendor-agnostic way, awesome. At that time we may then retire
intel_gpu_top and only use gputop as reference.

Lucas De Marchi

>
>Lucas, Thomas, thoughts?
>
>>
>> Or in case the conclusion ends up being "yes", then lets at least share some
>> more code between intel_gpu_top and this work. Ie. make it in a way gputop
>> completely subsumes and replaces intel_gpu_top might be an idea.
>
>with this I agree as well.
>
>>
>> Regards,
>>
>> Tvrtko
>>
>> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> > Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>> > Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> >
>> > Vinay Belgaumkar (4):
>> >    tools/gputop: Define data structs for PMU stats
>> >    lib/igt_drm_clients: Add pdev and driver info
>> >    lib/igt_perf: Add utils to extract PMU event info
>> >    tools/gputop: Add GT freq and c6 stats
>> >
>> >   lib/igt_drm_clients.c |   6 ++
>> >   lib/igt_drm_clients.h |   4 +
>> >   lib/igt_perf.c        |  68 +++++++++++++
>> >   lib/igt_perf.h        |   2 +
>> >   tools/gputop.c        | 225 ++++++++++++++++++++++++++++++++++++++++++
>> >   tools/meson.build     |   2 +-
>> >   6 files changed, 306 insertions(+), 1 deletion(-)
>> >
