Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCED4A23389
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 19:04:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A762A10E033;
	Thu, 30 Jan 2025 18:04:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B6eGebnw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7222010E033
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2025 18:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738260261; x=1769796261;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=EGb0hNrywnzEQHOGNd2lVzWCNXoENFHrVaDwysGiv5Q=;
 b=B6eGebnwXlvi9ZY5/CtbhyPkzUJlr7DpAdjG99jrL06oJB8XgDpMBHsx
 XlAS8v6rgoO77kdc/KtbiShlZzYd9fX50OrYy0SasyJtPTRGXjNZWbfID
 Viy8WZwRXWoxE9PReAFn5T+b0U9sanA176exALoqg8tb+k3QYv86S12KY
 JByTFRQToCTvTFZ8obD9gFASO88bKNhtLlTsW5mkSHNM/nn9labmf+opT
 6CAKgXuxcHocU1QjGKjurt2/NXRkWNLcpxu5Yho4KNznLNw2rFd92BiRB
 hTLX8X7jv2zGIl8i49EMj8/O7nXROltngTL+YmkyNcsGDEp22HhPzppyn g==;
X-CSE-ConnectionGUID: CxMLSxocSt21diXPwZV8cQ==
X-CSE-MsgGUID: Y2L/75NbTDKKBkJFN6IvYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="61291211"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="61291211"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 10:04:20 -0800
X-CSE-ConnectionGUID: wrcHr1KvTCS37xr/7oPRWg==
X-CSE-MsgGUID: l3zVZ6LrTzaof+NuKYL60g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="114405281"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 30 Jan 2025 10:04:18 -0800
Received: from [10.245.96.215] (mwajdecz-MOBL.ger.corp.intel.com
 [10.245.96.215])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 64B492FC65;
 Thu, 30 Jan 2025 18:04:15 +0000 (GMT)
Message-ID: <538c4c54-de0f-4d5a-ae8e-3fc5d812be7b@intel.com>
Date: Thu, 30 Jan 2025 19:04:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: TLB Invalidation time out on i915 SR-IOV passthrough
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 MARDI Youness <youness.mardi@cs-soprasteria.com>,
 "Nikkanen, Kimmo" <kimmo.nikkanen@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 CHEVRIE Thomas <thomas.chevrie@cs-soprasteria.com>
References: <DB9PR07MB1000353F67A27FEC494902005DAEF2@DB9PR07MB10003.eurprd07.prod.outlook.com>
 <Z5o2jcJB0FaUaVdZ@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <Z5o2jcJB0FaUaVdZ@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hi,

On 29.01.2025 15:09, Rodrigo Vivi wrote:
> On Tue, Jan 28, 2025 at 08:54:10AM +0000, MARDI Youness wrote:
>>    Hello,                                                                       
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    Could you help us on this issue:                                             
>>    [1]https://github.com/intel/linux-intel-lts/issues/54                        

Once you enabled all VFs, try to capture and attach to [1] all SRIOV
provisioning details, you may use something like:

 $ grep . -r /sys/class/drm/card0/iov

Also attach full dmesg and GuC log right after the failure.

For larger GuC log buffer please select CONFIG_DRM_I915_DEBUG_GUC and
use modparam i915.guc_log_level=4

You can also try with (once VFs are enabled, but before starting VMs):
- set explicit "execution_quantum_ms" for PF and all VFs to 20
- set explicit "preemption_timeout_us" for PF and all VFs to 20000
- enable "engine_reset" policy

 $ echo 20 > /sys/class/drm/card0/iov/pf/gt0/execution_quantum_ms
 $ echo 20 > /sys/class/drm/card0/iov/vf1/gt0/execution_quantum_ms
 ...
 $ echo 1 > /sys/class/drm/card0/iov/pf/gt0/policies/engine_reset

>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    Host environment                                                             
>>                                                                                 
>>    Operating system: Gentoo Base System release 2.14                            
>>    OS/kernel version:                                                           
>>    [2]https://github.com/intel/linux-intel-lts/tree/lts-v6.6.34-linux-240626T131354Z
> 
> https://github.com/intel/linux-intel-lts/blob/lts-v6.6.34-linux-240626T131354Z/drivers/gpu/drm/i915/README.sriov
> 
> Michal, could you please help here?
> 
> Thanks,
> Rodrigo.
> 
>>    Architecture: x86_64                                                         
>>    QEMU flavor: qemu-system-x86_64                                              
>>    QEMU version: latest qemu (master branch)                                    
>>    CPU: 12th Gen Intel(R) Core(TM) i7-1270P                                     
>>    igpu: Alder Lake-P                                                           
>>    firmware:                                                                    
>>    [3]https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/linux-firmware-20241110.tar.gz
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    Emulated/Virtualized environment                                             
>>                                                                                 
>>    Operating system: Windows 10 21H1                                            
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    Description of problem                                                       
>>                                                                                 
>>    After setting up SR-IOV (kernel compilation, kernel cmdline, vfio-pci        
>>    driver attribution to the new pci..)                                         
>>    I've got my two new pci.                                                     
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    00:02.0 VGA compatible controller: Intel Corporation Alder Lake-P            
>>    Integrated Graphics Controller (rev 0c)                                      
>>                                                                                 
>>    DeviceName: Onboard IGD                                                      
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Graphics          
>>    Controller                                                                   
>>                                                                                 
>>    Kernel driver in use: i915                                                   
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    00:02.1 VGA compatible controller: Intel Corporation Alder Lake-P            
>>    Integrated Graphics Controller (rev 0c)                                      
>>                                                                                 
>>    Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Graphics          
>>    Controller                                                                   
>>                                                                                 
>>    Kernel driver in use: vfio-pci                                               
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    00:02.2 VGA compatible controller: Intel Corporation Alder Lake-P            
>>    Integrated Graphics Controller (rev 0c)                                      
>>                                                                                 
>>    Subsystem: Hewlett-Packard Company Alder Lake-P Integrated Graphics          
>>    Controller                                                                   
>>                                                                                 
>>    Kernel driver in use: vfio-pci                                               
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    I gave one of those pci to my VM with this qemu cmdline:                     
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    -cpu                                                                         
>>    host,migratable=on,hv-time,hv-relaxed,hv-vapic,hv-spinlocks=0x1fff,hv-passthrough,hv-vendor-id=IrisXE
>>                                                                                 
>>    ...                                                                          
>>                                                                                 
>>    -device                                                                      
>>    vfio-pci-nohotplug,host=0000:00:02.1,id=hostdev0,bus=pci.4,addr=0x0          
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    Sometimes it working properly when I start the qemu cmdline but most of      
>>    the time I've got those kernel errors and a GPU hang:                        
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>        kernel [ 2252.208134] i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB       
>>    invalidation response timed out for seqno 9679                               
>>                                                                                 
>>        kernel [ 2252.208134] i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB       
>>    invalidation response timed out for seqno 9679                               
>>                                                                                 
>>        kernel i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB invalidation         
>>    response timed out for seqno 9679                                            
>>                                                                                 
>>        kernel i915 0000:00:02.0: [drm] ERROR GT0: GUC: TLB invalidation         
>>    response timed out for seqno 9679                                            
>>                                                                                 
>>        ....                                                                     
>>                                                                                 
>>        kernel Fence expiration time out                                         
>>    i915-0000:00:02.0:renderThread22381:6e0!                                     
>>                                                                                 
>>        kernel i915 0000:00:02.0: [drm] GT0: GuC firmware i915/adlp_guc_70.bin   
>>    version 70.13.1                                                              
>>                                                                                 
>>        kernel i915 0000:00:02.0: [drm] GT0: HuC firmware i915/tgl_huc.bin       
>>    version 7.9.3                                                                
>>                                                                                 
>>        kernel i915 0000:00:02.0: [drm] GT0: HuC: authenticated for all          
>>    workloads                                                                    
>>                                                                                 
>>        kernel i915 0000:00:02.0: [drm] GT0: GUC: submission enabled             
>>                                                                                 
>>        kernel i915 0000:00:02.0: [drm] GT0: GUC: SLPC enabled                   
>>                                                                                 
>>        kernel [ 2730.991019] i915 0000:00:02.0: [drm] GPU HANG: ecode           
>>    12:1:85dfbfff, in renderThread [22381]                                       
>>                                                                                 
>>        kernel [ 2730.991084] i915 0000:00:02.0: [drm] renderThread22381         
>>    context reset due to GPU hang                                                
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    It mostly appears when Qemu is starting..                                    
>>    Any help would be appreciated, thanks a lot                                  
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    Best Regards,                                                                
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    Youness MARDI                                                                
>>                                                                                 
>>                                                                                 
>>                                                                                 
>>    C2 – Usage restreint                                                         
>>
>> References
>>
>>    Visible links
>>    1. https://github.com/intel/linux-intel-lts/issues/54
>>    2. https://github.com/intel/linux-intel-lts/tree/lts-v6.6.34-linux-240626T131354Z
>>    3. https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/snapshot/linux-firmware-20241110.tar.gz

