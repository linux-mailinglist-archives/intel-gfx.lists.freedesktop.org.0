Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F4B2B9072
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 11:56:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00A606E50B;
	Thu, 19 Nov 2020 10:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BB826E50B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 10:56:15 +0000 (UTC)
IronPort-SDR: Ez2Fa52bwVNCCe2gAZBBX2thXJYWciSQchTrT2QQqRRfE9lkwDYPx/pfMFH18zjhJrXc34BiQx
 22oNQfNXQOIA==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="235419328"
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="235419328"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 02:56:13 -0800
IronPort-SDR: t5YHJZiBrFbTDyg/GFzCpaiZlf+XeA6torU9IX0/lT7DQjBQo/PwHGvBEYZP1rLs9lkfsJCgGY
 Y2OXvjqvSb9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; d="scan'208";a="357345995"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 19 Nov 2020 02:56:13 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 02:56:12 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 19 Nov 2020 02:56:12 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.55) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 19 Nov 2020 02:56:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BmDNEFSZ5kS9272qpAawNmaeZggpJ3HFguRLbw5Zu84l/oKccT35cNPey9IF00ZsjmzVHLTpQBnU7pKcjGV9hSmgV3vHVUGLlBQyPvEqG1eA8poRu9eYQmbLZZKp/JbFQdPPvmVg05xmkNznwfUSLw5ufNRQ0gChpACBICiPQ4PwZJtvOQO67l66DMrOSyJRko4lDSVVLb0TA/Mypn0+6fF4sPy27CFAWTziAey8PLkdyNb0rClrCaxUe3JjgbWhA4fRoOse+6NtqfcHovngH4MpF3rM9LhGOIyAkGYtJNHVexlXa+hml4BmFfMabXHX6SxeehpgrWFC3yCFZdPdVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rWLy3Y+IE6RRaCiIK+svU64RZJnhpukpDjyi1dC2Ktg=;
 b=kgDCBgmGVbhBPSFj191k8tJIP/uOWzXfG1Jup1dcYQTjujvChLcX9bmi6qdZOysHRdgArPt2w8v0+WQACBrV9kaUoKy5RV4sYNtJWIvLsnndqMQ2b7Z7swY0dCdMiqWB/W0huwgsC9j4Ca+vfNGP47229Hi/w6AiFEDtIKp86eij/l/VkuLsRyxa53NErOFo9hU4qEeJUtIE09O63ngbcLV3e2uw80uhp8QM+x1RNTL6uuizJjRPdhEpCrqZ2vU1Q7p8Oq7+X2XHpEIcn8FkTgKtFbTWVooc2yFbfAf5AS3DeLNUCB5cwVfIQqrad7rFb4awiYTvH0aPxZadvbzBXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rWLy3Y+IE6RRaCiIK+svU64RZJnhpukpDjyi1dC2Ktg=;
 b=mbcfukaZfMF1zXJlCgcu+4M6UPXHupPWAo08jbC90zk8Hia6CEL9GS1j3llj9udAPxCTyYXuxB2dFmYkuzkc6s1RqHfq8JWuaqmSHNUlzcPSDjmjK0MxD6fzYwz5BNwoioFFgORSQ+eQR4V+QR3PNWpSMAwehe/rn/GX9hE2xws=
Received: from BL0PR11MB3108.namprd11.prod.outlook.com (2603:10b6:208:7e::14)
 by MN2PR11MB4429.namprd11.prod.outlook.com (2603:10b6:208:18b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Thu, 19 Nov
 2020 10:56:09 +0000
Received: from BL0PR11MB3108.namprd11.prod.outlook.com
 ([fe80::f13a:1333:e1d9:2fcb]) by BL0PR11MB3108.namprd11.prod.outlook.com
 ([fe80::f13a:1333:e1d9:2fcb%7]) with mapi id 15.20.3564.028; Thu, 19 Nov 2020
 10:56:09 +0000
From: "Maciejewski, Piotr" <piotr.maciejewski@intel.com>
To: "Landwerlin, Lionel G" <lionel.g.landwerlin@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Nerlige
 Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 8/8] drm/i915/perf: Map OA buffer to user
 space for gen12 performance query
Thread-Index: AQHWvNEOvYsXYOMnXE+HxIT0usUEnanNxcQAgAAEdYCAAX/CMA==
Date: Thu, 19 Nov 2020 10:56:08 +0000
Message-ID: <BL0PR11MB31082CEC21F322E833116D64FBE00@BL0PR11MB3108.namprd11.prod.outlook.com>
References: <20201117110132.22267-1-chris@chris-wilson.co.uk>
 <20201117110132.22267-8-chris@chris-wilson.co.uk>
 <160569966633.4294.16743669061444949073@jlahtine-mobl.ger.corp.intel.com>
 <44f34e4d-3922-04a1-1209-3c2548a219ed@intel.com>
In-Reply-To: <44f34e4d-3922-04a1-1209-3c2548a219ed@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [178.235.186.182]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 07e4cb5c-f26e-4cee-2a26-08d88c79b8f6
x-ms-traffictypediagnostic: MN2PR11MB4429:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4429D7EEE2E2FF3CC0755F76FBE00@MN2PR11MB4429.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6XeTEdDQ2GBOd5E+uClIG/Dd66Lm7A48qy+xHBA2M+g5IFO0BgwB7G4QedRzQ539YE9xTBrmpAUzQa8n0qAErdP4UqKhLLIaCb2aIBhdWIHS9O8KWZ1s9Xh77SwZBc6icmdjpQG8kcrNPzaNGxZKEJr4N44lz/7L065cRsan/IEK3J4h2tPlclz4uKZMkT4W4+qAiu2QH0TFL4uPh9F37V6d0SONz45obOITOiy5utumRJFpI+1AeK3DIEPHgb+OYXShEuADts1D+wpu5W81riKLzPMWZy8u+ZzF+J/KY0WLbawi5SfLznFYMbZ1BALtljJ79HQyTLq5VVfrkpv73OyesTX0CD82O0pnY4c+eJWfQs6ufIczJm/TlmW1XuEo1hBVBqUIxgLKAYyXsP/a4Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3108.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(136003)(376002)(366004)(39860400002)(53546011)(52536014)(6636002)(966005)(9686003)(478600001)(2906002)(86362001)(30864003)(55016002)(4001150100001)(5660300002)(71200400001)(83380400001)(8676002)(76116006)(6506007)(8936002)(110136005)(33656002)(186003)(66946007)(316002)(26005)(66476007)(7696005)(64756008)(66446008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Af73H7a737BmISKDe8bY/PT0fW7ixbxptCpl0nsJZPDgJ3f5JbxFY0iMG62pHMrGmPMGQEcwjLKrq9nsf+f73VAMu+9PvDnbFkEmh9ZJm25QEGG1dP5qsI7Yf2XfGUWjnlR5gmZHsscFSLzaNFRL/dy+rTTUHu16NskIlDcR5X7jQ10/5xuz8By/t3yB2QP6I6Rdr2Mtg2ZIij2WpRb2GLTslh4Czvq+nd/ypS/oVYcUNzeU9Xc1bfJ/UcXQCmRA6QmLCR330wZ+Yrghks6bSe8vRgAMfbf1fNCRxAlZzYQicg3yZBR2Vm04liEI2MiEFj3+6HsUMbiGWJCTXlh7DjmURKHVlaQsnlBx0yL+flK+mTLS6gmUNlxSxxRp+W0eIsE/0gCmUccE+2qyGI4OE/s2n5v13WxtO96N3M9hDKWBXz1KqyoLotGGfsF6K7ix8G4jfaBsdKv8Ml4w5bjsRu37OejaxkH3ScAJoG6H7GHba42kekMsbFDlJe9ZG/eS8FCjzK5lcqxE2irmdUlbtbKyaM/XvpxJHppzact8dZVaVZUCpMfPJqYD0O+46SFdvrk5JgYGJitcwhT1F7Mr8kc3yC8l/2GCVBYI2rHG0O8CZAZ4W/M+KzJTzf+q9iUDLl4vuKkLTw4sA565yJk32titZt6g9RaiJFF2oZEhUHSdDHrtAuP1SufWKUUShDKZfFognjRVMzXmt/ZCH3RC1RmcoVspwu1qptNqO7ylZ6pJEfywzRbVnbJyAVk4Nu3tqiYruliV0MUdR4r3uWU+OBs+05GF9C59pwQ5k60vJG+hXM+V3IrvazAPl7MVimw3eF1Iv3Rncxo9x0fLlUXCXpLPF9YAteuLdbi25Jig+Y6Fv/BKowO8oXSHWljntUkgAJiuYfR3efLQMHx2aBY9Mg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3108.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07e4cb5c-f26e-4cee-2a26-08d88c79b8f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2020 10:56:09.4027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iv5CMkoc3s471Ld1Uc9YW61vxVFjaQdVQT1FWYbnCJVf0Vwwabq61kJOgMXpHx8qKwjaxT+/plDtS0fYVCgjRtaoSfEUFiONzM9z+T8QrGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4429
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/perf: Map OA buffer to user
 space for gen12 performance query
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

Indeed, we use i915 perf changes introduced by Umesh within Metrics Library (a common library used to obtain performance counters from various operating systems and graphics api).

Metrics Library repo: https://github.com/intel/metrics-library  
Io controls usage: https://github.com/intel/metrics-library/blob/master/instrumentation/metrics_library/traits/kernel_interface/linux/ml_io_control.h 
Tbs usage: https://github.com/intel/metrics-library/blob/master/instrumentation/metrics_library/traits/kernel_interface/linux/ml_tbs_interface.h 

Piotr

-----Original Message-----
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com> 
Sent: Wednesday, November 18, 2020 12:57 PM
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>; Chris Wilson <chris@chris-wilson.co.uk>; intel-gfx@lists.freedesktop.org; Nerlige Ramappa, Umesh <umesh.nerlige.ramappa@intel.com>
Cc: Maciejewski, Piotr <piotr.maciejewski@intel.com>
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/perf: Map OA buffer to user space for gen12 performance query

Tests are on the IGT ml : 
https://patchwork.freedesktop.org/series/82352/
<https://patchwork.freedesktop.org/series/82352/>

This feature was requested by the metrics-discovery team.
Pretty sure this was tested with it, maybe a branch can be shared by Piotr?

Cheers,

-Lionel

On 18/11/2020 13:41, Joonas Lahtinen wrote:
> + Umesh, Lionel
>
> Do we have a link to the userspace changes and IGT tests? Those are 
> absolutely needed before we can do a final review and merge.
>
> We should really test and review the kernel and userspace changes 
> together to make sure that we're coming up with a solid uAPI.
>
> Regards, Joonas
>
> Quoting Chris Wilson (2020-11-17 13:01:32)
>> From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>
>> i915 used to support time based sampling mode which is good for 
>> overall system monitoring, but is not enough for query mode used to 
>> measure a single draw call or dispatch. Gen9-Gen11 are using current 
>> i915 perf implementation for query, but Gen12+ requires a new 
>> approach for query based on triggered reports within oa buffer.
>>
>> Triggering reports into the OA buffer is achieved by writing into a a 
>> trigger register. Optionally an unused counter/register is set with a 
>> marker value such that a triggered report can be identified in the OA 
>> buffer. Reports are usually triggered at the start and end of work 
>> that is measured.
>>
>> Since OA buffer is large and queries can be frequent, an efficient 
>> way to look for triggered reports is required. By knowing the current 
>> head and tail offsets into the OA buffer, it is easier to determine 
>> the locality of the reports of interest.
>>
>> Current perf OA interface does not expose head/tail information to 
>> the user and it filters out invalid reports before sending data to user.
>> Also considering limited size of user buffer used during a query, 
>> creating a 1:1 copy of the OA buffer at the user space added 
>> undesired complexity.
>>
>> The solution was to map the OA buffer to user space provided
>>
>> (1) that it is accessed from a privileged user.
>> (2) OA report filtering is not used.
>>
>> These 2 conditions would satisfy the safety criteria that the current 
>> perf interface addresses.
>>
>> To enable the query:
>> - Add an ioctl to expose head and tail to the user
>> - Add an ioctl to return size and offset of the OA buffer
>> - Map the OA buffer to the user space
>>
>> v2:
>> - Improve commit message (Chris)
>> - Do not mmap based on gem object filp. Instead, use perf_fd and support
>>    mmap syscall (Chris)
>> - Pass non-zero offset in mmap to enforce the right object is
>>    mapped (Chris)
>> - Do not expose gpu_address (Chris)
>> - Verify start and length of vma for page alignment (Lionel)
>> - Move SQNTL config out (Lionel)
>>
>> v3: (Chris)
>> - Omit redundant checks
>> - Return VM_FAULT_SIGBUS is old stream is closed
>> - Maintain reference counts to stream in vm_open and vm_close
>> - Use switch to identify object to be mapped
>>
>> v4: Call kref_put on closing perf fd (Chris)
>> v5:
>> - Strip access to OA buffer from unprivileged child of a privileged
>>    parent. Use VM_DONTCOPY
>> - Enforce MAP_PRIVATE by checking for VM_MAYSHARE
>>
>> v6:
>> (Chris)
>> - Use len of -1 in unmap_mapping_range
>> - Don't use stream->oa_buffer.vma->obj in vm_fault_oa
>> - Use kernel block comment style
>> - do_mmap gets a reference to the file and puts it in do_munmap, so
>>    no need to maintain a reference to i915_perf_stream. Hence, remove
>>    vm_open/vm_close and stream->closed hooks/checks.
>> (Umesh)
>> - Do not allow mmap if SAMPLE_OA_REPORT is not set during
>>    i915_perf_open_ioctl.
>> - Drop ioctl returning head/tail since this information is already
>>    whitelisted. Remove hooks to read head register.
>>
>> v7: (Chris)
>> - unmap before destroy
>> - change ioctl argument struct
>>
>> v8: Documentation and more checks (Chris)
>>
>> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa 
>> <umesh.nerlige.ramappa@intel.com>
>> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_mman.c |   2 +-
>>   drivers/gpu/drm/i915/gem/i915_gem_mman.h |   2 +
>>   drivers/gpu/drm/i915/i915_perf.c         | 126 ++++++++++++++++++++++-
>>   include/uapi/drm/i915_drm.h              |  33 ++++++
>>   4 files changed, 161 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> index 3d69e51f3e4d..2ab08b152b9d 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>> @@ -204,7 +204,7 @@ compute_partial_view(const struct drm_i915_gem_object *obj,
>>          return view;
>>   }
>>   
>> -static vm_fault_t i915_error_to_vmf_fault(int err)
>> +vm_fault_t i915_error_to_vmf_fault(int err)
>>   {
>>          switch (err) {
>>          default:
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h 
>> b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>> index efee9e0d2508..1190a3a228ea 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>> @@ -29,4 +29,6 @@ void i915_gem_object_release_mmap_gtt(struct 
>> drm_i915_gem_object *obj);
>>   
>>   void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object 
>> *obj);
>>   
>> +vm_fault_t i915_error_to_vmf_fault(int err);
>> +
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c 
>> b/drivers/gpu/drm/i915/i915_perf.c
>> index c91f2da84189..6fd669b520d8 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -192,10 +192,12 @@
>>    */
>>   
>>   #include <linux/anon_inodes.h>
>> +#include <linux/mman.h>
>>   #include <linux/sizes.h>
>>   #include <linux/uuid.h>
>>   
>>   #include "gem/i915_gem_context.h"
>> +#include "gem/i915_gem_mman.h"
>>   #include "gt/intel_engine_pm.h"
>>   #include "gt/intel_engine_user.h"
>>   #include "gt/intel_gt.h"
>> @@ -3291,6 +3293,44 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
>>          return ret;
>>   }
>>   
>> +#define I915_PERF_OA_BUFFER_MMAP_OFFSET 1
>> +
>> +/**
>> + * i915_perf_oa_buffer_info_locked - size and offset of the OA 
>> +buffer
>> + * @stream: i915 perf stream
>> + * @cmd: ioctl command
>> + * @arg: pointer to oa buffer info filled by this function.
>> + */
>> +static int i915_perf_oa_buffer_info_locked(struct i915_perf_stream *stream,
>> +                                          unsigned int cmd,
>> +                                          unsigned long arg) {
>> +       struct drm_i915_perf_oa_buffer_info info;
>> +       void __user *output = (void __user *)arg;
>> +
>> +       if (i915_perf_stream_paranoid && !perfmon_capable()) {
>> +               DRM_DEBUG("Insufficient privileges to access OA buffer info\n");
>> +               return -EACCES;
>> +       }
>> +
>> +       if (_IOC_SIZE(cmd) != sizeof(info))
>> +               return -EINVAL;
>> +
>> +       if (copy_from_user(&info, output, sizeof(info)))
>> +               return -EFAULT;
>> +
>> +       if (info.type || info.flags || info.rsvd)
>> +               return -EINVAL;
>> +
>> +       info.size = stream->oa_buffer.vma->size;
>> +       info.offset = I915_PERF_OA_BUFFER_MMAP_OFFSET * PAGE_SIZE;
>> +
>> +       if (copy_to_user(output, &info, sizeof(info)))
>> +               return -EFAULT;
>> +
>> +       return 0;
>> +}
>> +
>>   /**
>>    * i915_perf_ioctl_locked - support ioctl() usage with i915 perf stream FDs
>>    * @stream: An i915 perf stream
>> @@ -3316,6 +3356,8 @@ static long i915_perf_ioctl_locked(struct i915_perf_stream *stream,
>>                  return 0;
>>          case I915_PERF_IOCTL_CONFIG:
>>                  return i915_perf_config_locked(stream, arg);
>> +       case I915_PERF_IOCTL_GET_OA_BUFFER_INFO:
>> +               return i915_perf_oa_buffer_info_locked(stream, cmd, 
>> + arg);
>>          }
>>   
>>          return -EINVAL;
>> @@ -3387,6 +3429,14 @@ static int i915_perf_release(struct inode *inode, struct file *file)
>>          struct i915_perf_stream *stream = file->private_data;
>>          struct i915_perf *perf = stream->perf;
>>   
>> +       /*
>> +        * User could have multiple vmas from multiple mmaps. We want to zap
>> +        * them all here. Note that a fresh fault cannot occur as the mmap holds
>> +        * a reference to the stream via the vma->vm_file, so before user's
>> +        * munmap, the stream cannot be destroyed.
>> +        */
>> +       unmap_mapping_range(file->f_mapping, 0, -1, 1);
>> +
>>          mutex_lock(&perf->lock);
>>          i915_perf_destroy_locked(stream);
>>          mutex_unlock(&perf->lock);
>> @@ -3397,6 +3447,75 @@ static int i915_perf_release(struct inode *inode, struct file *file)
>>          return 0;
>>   }
>>   
>> +static vm_fault_t vm_fault_oa(struct vm_fault *vmf) {
>> +       struct vm_area_struct *vma = vmf->vma;
>> +       struct i915_perf_stream *stream = vma->vm_private_data;
>> +       int err;
>> +
>> +       err = remap_io_sg(vma,
>> +                         vma->vm_start, vma->vm_end - vma->vm_start,
>> +                         stream->oa_buffer.vma->pages->sgl, -1);
>> +
>> +       return i915_error_to_vmf_fault(err); }
>> +
>> +static const struct vm_operations_struct vm_ops_oa = {
>> +       .fault = vm_fault_oa,
>> +};
>> +
>> +static int i915_perf_mmap(struct file *file, struct vm_area_struct 
>> +*vma) {
>> +       struct i915_perf_stream *stream = file->private_data;
>> +
>> +       /* mmap-ing OA buffer to user space MUST absolutely be privileged */
>> +       if (i915_perf_stream_paranoid && !perfmon_capable()) {
>> +               DRM_DEBUG("Insufficient privileges to map OA buffer\n");
>> +               return -EACCES;
>> +       }
>> +
>> +       switch (vma->vm_pgoff) {
>> +       /*
>> +        * A non-zero offset ensures that we are mapping the right object. Also
>> +        * leaves room for future objects added to this implementation.
>> +        */
>> +       case I915_PERF_OA_BUFFER_MMAP_OFFSET:
>> +               if (!(stream->sample_flags & SAMPLE_OA_REPORT))
>> +                       return -EINVAL;
>> +
>> +               if (vma->vm_end - vma->vm_start > OA_BUFFER_SIZE)
>> +                       return -EINVAL;
>> +
>> +               /*
>> +                * Only support VM_READ. Enforce MAP_PRIVATE by checking for
>> +                * VM_MAYSHARE.
>> +                */
>> +               if (vma->vm_flags & (VM_WRITE | VM_EXEC |
>> +                                    VM_SHARED | VM_MAYSHARE))
>> +                       return -EINVAL;
>> +
>> +               vma->vm_flags &= ~(VM_MAYWRITE | VM_MAYEXEC);
>> +
>> +               /*
>> +                * If the privileged parent forks and child drops root
>> +                * privilege, we do not want the child to retain access to the
>> +                * mapped OA buffer. Explicitly set VM_DONTCOPY to avoid such
>> +                * cases.
>> +                */
>> +               vma->vm_flags |= VM_PFNMAP | VM_DONTEXPAND |
>> +                                VM_DONTDUMP | VM_DONTCOPY;
>> +               break;
>> +
>> +       default:
>> +               return -EINVAL;
>> +       }
>> +
>> +       vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
>> +       vma->vm_private_data = stream;
>> +       vma->vm_ops = &vm_ops_oa;
>> +
>> +       return 0;
>> +}
>>   
>>   static const struct file_operations fops = {
>>          .owner          = THIS_MODULE,
>> @@ -3409,6 +3528,7 @@ static const struct file_operations fops = {
>>           * to handle 32bits compatibility.
>>           */
>>          .compat_ioctl   = i915_perf_ioctl,
>> +       .mmap           = i915_perf_mmap,
>>   };
>>   
>>   
>> @@ -4559,8 +4679,12 @@ int i915_perf_ioctl_version(void)
>>           *
>>           *    - OA buffer head/tail/status/buffer registers for read only
>>           *    - OA counters A18, A19, A20 for read/write
>> +        *
>> +        * 8: Added an option to map oa buffer at umd driver level and trigger
>> +        *    oa reports within oa buffer from command buffer. See
>> +        *    I915_PERF_IOCTL_GET_OA_BUFFER_INFO.
>>           */
>> -       return 7;
>> +       return 8;
>>   }
>>   
>>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>> diff --git a/include/uapi/drm/i915_drm.h 
>> b/include/uapi/drm/i915_drm.h index fa1f3d62f9a6..cc1702ddc859 100644
>> --- a/include/uapi/drm/i915_drm.h
>> +++ b/include/uapi/drm/i915_drm.h
>> @@ -2101,6 +2101,39 @@ struct drm_i915_perf_open_param {
>>    */
>>   #define I915_PERF_IOCTL_CONFIG _IO('i', 0x2)
>>   
>> +/**
>> + * Returns OA buffer properties to be used with mmap.
>> + *
>> + * This ioctl is available in perf revision 8.
>> + */
>> +#define I915_PERF_IOCTL_GET_OA_BUFFER_INFO _IOWR('i', 0x3, struct 
>> +drm_i915_perf_oa_buffer_info)
>> +
>> +/**
>> + * OA buffer size and offset.
>> + *
>> + * OA output buffer
>> + *   type: 0
>> + *   flags: mbz
>> + *
>> + *   After querying the info, pass (size,offset) to mmap(),
>> + *
>> + *   mmap(0, info.size, PROT_READ, MAP_PRIVATE, perf_fd, info.offset).
>> + *
>> + *   Note that only a private (not shared between processes, or across fork())
>> + *   read-only mmapping is allowed.
>> + *
>> + *   Userspace must treat the incoming data as tainted, but it conforms to the OA
>> + *   format as specified by user config. The buffer provides reports that have
>> + *   OA counters - A, B and C.
>> + */
>> +struct drm_i915_perf_oa_buffer_info {
>> +       __u32 type;   /* in */
>> +       __u32 flags;  /* in */
>> +       __u64 size;   /* out */
>> +       __u64 offset; /* out */
>> +       __u64 rsvd;   /* mbz */
>> +};
>> +
>>   /**
>>    * Common to all i915 perf records
>>    */
>> --
>> 2.20.1
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx


---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
