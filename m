Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00138682F3C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 15:28:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF40F10E351;
	Tue, 31 Jan 2023 14:28:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
 [148.163.156.1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D8310E34E;
 Tue, 31 Jan 2023 14:28:01 +0000 (UTC)
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 30VDhjLQ024672; Tue, 31 Jan 2023 14:28:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=ozFySGGVA6rJOoLJ2OEKhNK/VirTHinOBCsxBe0QIhE=;
 b=VtpvfRVAeishEOn/dwb5p3Xh8FFDd6tlFprSKISHYlI/q+QRahcOUeveqoWefL8z4Tz8
 a6PyvSOrFMg6QZ36lxvuciFawWPVVbVNXhlx82GmjCS+nFmLIvoadC3kKyEoMr+JDBot
 AE8hWBU+3M9bhXQU+E/AX3KQX4AK44iWQxQc4tN0zbYRPERKZUmL/VvxuVQAzuo0gHL8
 4D8JAMoWEl801P9Xo3G3dhxj2TFYhsYWxY49tFWQ4vU8rxXGJPkYtuZcT48x+NLu83lj
 Ts64KWnPHAINcX7RRVHUtKuu44GHyXyaheE3UzWXP9SYhtotrlNXzq86ZaM890ezZ6+t sg== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3nf05g7fbs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 31 Jan 2023 14:27:59 +0000
Received: from m0098410.ppops.net (m0098410.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 30VDtQ7f007961;
 Tue, 31 Jan 2023 14:27:59 GMT
Received: from ppma04dal.us.ibm.com (7a.29.35a9.ip4.static.sl-reverse.com
 [169.53.41.122])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3nf05g7fbd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 31 Jan 2023 14:27:59 +0000
Received: from pps.filterd (ppma04dal.us.ibm.com [127.0.0.1])
 by ppma04dal.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 30VDdrqf008520;
 Tue, 31 Jan 2023 14:27:58 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([9.208.130.100])
 by ppma04dal.us.ibm.com (PPS) with ESMTPS id 3ncvw2mh3m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 31 Jan 2023 14:27:58 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com
 [10.241.53.103])
 by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 30VERuAY7471808
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Jan 2023 14:27:56 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id A992158052;
 Tue, 31 Jan 2023 14:27:56 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DE5C658056;
 Tue, 31 Jan 2023 14:27:54 +0000 (GMT)
Received: from [9.160.68.138] (unknown [9.160.68.138])
 by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 31 Jan 2023 14:27:54 +0000 (GMT)
Message-ID: <67ec09bf-cb24-34e3-6ec4-1ae87b0738bd@linux.ibm.com>
Date: Tue, 31 Jan 2023 09:27:54 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Yi Liu <yi.l.liu@intel.com>, alex.williamson@redhat.com,
 pbonzini@redhat.com, mjrosato@linux.ibm.com
References: <20230120150528.471752-1-yi.l.liu@intel.com>
From: Anthony Krowiak <akrowiak@linux.ibm.com>
In-Reply-To: <20230120150528.471752-1-yi.l.liu@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: Mk7kXAXbBCgwh7F6bfurhUQET_8XaaiW
X-Proofpoint-GUID: iFJAPq_Cx2MDCYrX48L24SPiMmlVWDYB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-31_08,2023-01-31_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1011
 phishscore=0 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 mlxscore=0 malwarescore=0 lowpriorityscore=0 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301310126
Subject: Re: [Intel-gfx] [PATCH] kvm/vfio: Fix potential deadlock on vfio
 group_lock
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
Cc: jjherne@linux.ibm.com, linux-s390@vger.kernel.org, imbrenda@linux.ibm.com,
 frankja@linux.ibm.com, pmorel@linux.ibm.com, david@redhat.com,
 seanjc@google.com, intel-gfx@lists.freedesktop.org, cohuck@redhat.com,
 farman@linux.ibm.com, linux-kernel@vger.kernel.org, pasic@linux.ibm.com,
 jgg@nvidia.com, kvm@vger.kernel.org, borntraeger@linux.ibm.com,
 intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I encountered a lockdep splat while running some regression tests today 
(see below). I suspected it might be this patch so I reverted it, 
rebuilt the kernel and ran the regression tests again; this time, the 
test ran cleanly. It looks like this patch may not have fixed the 
problem for which it was intended. Here is the relevant dmesg output:

[  579.471402] hades[1099]: Start test run
[  579.473486] hades[1099]: Start 
'tests.test_vfio_ap.VfioAPAssignMdevToGuestTest.runTest' test
[  579.505804] vfio_ap matrix: MDEV: Registered
[  579.604024] vfio_ap_mdev 529654a9-bea4-461a-b64d-9d9c63df0deb: Adding 
to iommu group 0

[  585.043898] ======================================================
[  585.043900] WARNING: possible circular locking dependency detected
[  585.043902] 6.2.0-rc6-00057-g41c03ba9beea-dirty #18 Not tainted
[  585.043904] ------------------------------------------------------
[  585.043905] CPU 0/KVM/1173 is trying to acquire lock:
[  585.043907] 000000008cfb24b0 (&group->group_lock){+.+.}-{3:3}, at: 
vfio_file_set_kvm+0x50/0x68 [vfio]
[  585.043919]
                but task is already holding lock:
[  585.043920] 00000000b2960ba0 (&kvm->lock){+.+.}-{3:3}, at: 
kvm_device_release+0x4a/0xb8 [kvm]
[  585.043960]
                which lock already depends on the new lock.

[  585.043962]
                the existing dependency chain (in reverse order) is:
[  585.043963]
                -> #3 (&kvm->lock){+.+.}-{3:3}:
[  585.043967]        __lock_acquire+0x3e2/0x750
[  585.043974]        lock_acquire.part.0+0xe2/0x250
[  585.043977]        lock_acquire+0xac/0x1d0
[  585.043980]        __mutex_lock+0x9e/0x868
[  585.043985]        mutex_lock_nested+0x32/0x40
[  585.043988]        vfio_ap_mdev_open_device+0x9a/0x198 [vfio_ap]
[  585.043991]        vfio_device_open+0x122/0x168 [vfio]
[  585.043995]        vfio_device_open_file+0x64/0x120 [vfio]
[  585.043999]        vfio_group_fops_unl_ioctl+0xd4/0x1e0 [vfio]
[  585.044002]        __s390x_sys_ioctl+0xc0/0x100
[  585.044007]        do_syscall+0xee/0x118
[  585.044032]        __do_syscall+0xd2/0x120
[  585.044035]        system_call+0x82/0xb0
[  585.044037]
                -> #2 (&matrix_dev->guests_lock){+.+.}-{3:3}:
[  585.044041]        __lock_acquire+0x3e2/0x750
[  585.044044]        lock_acquire.part.0+0xe2/0x250
[  585.044047]        lock_acquire+0xac/0x1d0
[  585.044049]        __mutex_lock+0x9e/0x868
[  585.044052]        mutex_lock_nested+0x32/0x40
[  585.044054]        vfio_ap_mdev_open_device+0x8c/0x198 [vfio_ap]
[  585.044057]        vfio_device_open+0x122/0x168 [vfio]
[  585.044060]        vfio_device_open_file+0x64/0x120 [vfio]
[  585.044064]        vfio_group_fops_unl_ioctl+0xd4/0x1e0 [vfio]
[  585.044068]        __s390x_sys_ioctl+0xc0/0x100
[  585.044070]        do_syscall+0xee/0x118
[  585.044072]        __do_syscall+0xd2/0x120
[  585.044074]        system_call+0x82/0xb0
[  585.044076]
                -> #1 (&new_dev_set->lock){+.+.}-{3:3}:
[  585.044080]        __lock_acquire+0x3e2/0x750
[  585.044082]        lock_acquire.part.0+0xe2/0x250
[  585.044085]        lock_acquire+0xac/0x1d0
[  585.044088]        __mutex_lock+0x9e/0x868
[  585.044090]        mutex_lock_nested+0x32/0x40
[  585.044093]        vfio_device_open+0x3e/0x168 [vfio]
[  585.044096]        vfio_device_open_file+0x64/0x120 [vfio]
[  585.044100]        vfio_group_fops_unl_ioctl+0xd4/0x1e0 [vfio]
[  585.044104]        __s390x_sys_ioctl+0xc0/0x100
[  585.044106]        do_syscall+0xee/0x118
[  585.044108]        __do_syscall+0xd2/0x120
[  585.044110]        system_call+0x82/0xb0
[  585.044112]
                -> #0 (&group->group_lock){+.+.}-{3:3}:
[  585.044115]        check_prev_add+0xd4/0xf10
[  585.044118]        validate_chain+0x698/0x8e8
[  585.044120]        __lock_acquire+0x3e2/0x750
[  585.044123]        lock_acquire.part.0+0xe2/0x250
[  585.044125]        lock_acquire+0xac/0x1d0
[  585.044128]        __mutex_lock+0x9e/0x868
[  585.044130]        mutex_lock_nested+0x32/0x40
[  585.044133]        vfio_file_set_kvm+0x50/0x68 [vfio]
[  585.044137]        kvm_vfio_release+0x5e/0xf8 [kvm]
[  585.044156]        kvm_device_release+0x90/0xb8 [kvm]
[  585.044175]        __fput+0xaa/0x2a0
[  585.044180]        task_work_run+0x76/0xd0
[  585.044183]        do_exit+0x248/0x538
[  585.044186]        do_group_exit+0x40/0xb0
[  585.044188]        get_signal+0x614/0x698
[  585.044192]        arch_do_signal_or_restart+0x58/0x370
[  585.044195]        exit_to_user_mode_loop+0xe8/0x1b8
[  585.044200]        exit_to_user_mode_prepare+0x164/0x190
[  585.044203]        __do_syscall+0xd2/0x120
[  585.044205]        system_call+0x82/0xb0
[  585.044207]
                other info that might help us debug this:

[  585.044209] Chain exists of:
                  &group->group_lock --> &matrix_dev->guests_lock --> 
&kvm->lock

[  585.044213]  Possible unsafe locking scenario:

[  585.044214]        CPU0                    CPU1
[  585.044216]        ----                    ----
[  585.044217]   lock(&kvm->lock);
[  585.044219] lock(&matrix_dev->guests_lock);
[  585.044221] lock(&kvm->lock);
[  585.044223]   lock(&group->group_lock);
[  585.044225]
                 *** DEADLOCK ***

[  585.044227] 1 lock held by CPU 0/KVM/1173:
[  585.044228]  #0: 00000000b2960ba0 (&kvm->lock){+.+.}-{3:3}, at: 
kvm_device_release+0x4a/0xb8 [kvm]
[  585.044251]
                stack backtrace:
[  585.044253] CPU: 3 PID: 1173 Comm: CPU 0/KVM Not tainted 
6.2.0-rc6-00057-g41c03ba9beea-dirty #18
[  585.044256] Hardware name: IBM 8561 T01 772 (LPAR)
[  585.044257] Call Trace:
[  585.044258]  [<000000011a818936>] dump_stack_lvl+0x8e/0xc8
[  585.044261]  [<0000000119aca3f2>] check_noncircular+0x132/0x158
[  585.044264]  [<0000000119acba44>] check_prev_add+0xd4/0xf10
[  585.044267]  [<0000000119accf18>] validate_chain+0x698/0x8e8
[  585.044270]  [<0000000119ace70a>] __lock_acquire+0x3e2/0x750
[  585.044273]  [<0000000119acf682>] lock_acquire.part.0+0xe2/0x250
[  585.044276]  [<0000000119acf89c>] lock_acquire+0xac/0x1d0
[  585.044279]  [<000000011a823c66>] __mutex_lock+0x9e/0x868
[  585.044282]  [<000000011a824462>] mutex_lock_nested+0x32/0x40
[  585.044285]  [<000003ff7fbcd6a0>] vfio_file_set_kvm+0x50/0x68 [vfio]
[  585.044289]  [<000003ff7feacab6>] kvm_vfio_release+0x5e/0xf8 [kvm]
[  585.044308]  [<000003ff7fea6d58>] kvm_device_release+0x90/0xb8 [kvm]
[  585.044328]  [<0000000119dbb83a>] __fput+0xaa/0x2a0
[  585.044331]  [<0000000119a67c66>] task_work_run+0x76/0xd0
[  585.044333]  [<0000000119a3ec18>] do_exit+0x248/0x538
[  585.044335]  [<0000000119a3f0c8>] do_group_exit+0x40/0xb0
[  585.044338]  [<0000000119a50dec>] get_signal+0x614/0x698
[  585.044340]  [<00000001199ea030>] arch_do_signal_or_restart+0x58/0x370
[  585.044343]  [<0000000119b0bb50>] exit_to_user_mode_loop+0xe8/0x1b8
[  585.044346]  [<0000000119b0bd84>] exit_to_user_mode_prepare+0x164/0x190
[  585.044349]  [<000000011a818d2a>] __do_syscall+0xd2/0x120
[  585.044351]  [<000000011a82c462>] system_call+0x82/0xb0
[  585.044354] INFO: lockdep is turned off.
[  610.595528] vfio_ap_mdev 529654a9-bea4-461a-b64d-9d9c63df0deb: 
Removing from iommu group 0
[  610.604408] vfio_ap matrix: MDEV: Unregistering
[  610.826074] hades[1099]: Stop 
'tests.test_vfio_ap.VfioAPAssignMdevToGuestTest.runTest'

On 1/20/23 10:05 AM, Yi Liu wrote:
> Currently it is possible that the final put of a KVM reference comes from
> vfio during its device close operation.  This occurs while the vfio group
> lock is held; however, if the vfio device is still in the kvm device list,
> then the following call chain could result in a deadlock:
>
> VFIO holds group->group_lock/group_rwsem
>    -> kvm_put_kvm
>     -> kvm_destroy_vm
>      -> kvm_destroy_devices
>       -> kvm_vfio_destroy
>        -> kvm_vfio_file_set_kvm
>         -> vfio_file_set_kvm
>          -> try to hold group->group_lock/group_rwsem
>
> The key function is the kvm_destroy_devices() which triggers destroy cb
> of kvm_device_ops. It calls back to vfio and try to hold group_lock. So
> if this path doesn't call back to vfio, this dead lock would be fixed.
> Actually, there is a way for it. KVM provides another point to free the
> kvm-vfio device which is the point when the device file descriptor is
> closed. This can be achieved by providing the release cb instead of the
> destroy cb. Also rename kvm_vfio_destroy() to be kvm_vfio_release().
>
> 	/*
> 	 * Destroy is responsible for freeing dev.
> 	 *
> 	 * Destroy may be called before or after destructors are called
> 	 * on emulated I/O regions, depending on whether a reference is
> 	 * held by a vcpu or other kvm component that gets destroyed
> 	 * after the emulated I/O.
> 	 */
> 	void (*destroy)(struct kvm_device *dev);
>
> 	/*
> 	 * Release is an alternative method to free the device. It is
> 	 * called when the device file descriptor is closed. Once
> 	 * release is called, the destroy method will not be called
> 	 * anymore as the device is removed from the device list of
> 	 * the VM. kvm->lock is held.
> 	 */
> 	void (*release)(struct kvm_device *dev);
>
> Fixes: 421cfe6596f6 ("vfio: remove VFIO_GROUP_NOTIFY_SET_KVM")
> Reported-by: Alex Williamson <alex.williamson@redhat.com>
> Suggested-by: Kevin Tian <kevin.tian@intel.com>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>   virt/kvm/vfio.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/virt/kvm/vfio.c b/virt/kvm/vfio.c
> index 495ceabffe88..e94f3ea718e5 100644
> --- a/virt/kvm/vfio.c
> +++ b/virt/kvm/vfio.c
> @@ -336,7 +336,7 @@ static int kvm_vfio_has_attr(struct kvm_device *dev,
>   	return -ENXIO;
>   }
>   
> -static void kvm_vfio_destroy(struct kvm_device *dev)
> +static void kvm_vfio_release(struct kvm_device *dev)
>   {
>   	struct kvm_vfio *kv = dev->private;
>   	struct kvm_vfio_group *kvg, *tmp;
> @@ -363,7 +363,7 @@ static int kvm_vfio_create(struct kvm_device *dev, u32 type);
>   static struct kvm_device_ops kvm_vfio_ops = {
>   	.name = "kvm-vfio",
>   	.create = kvm_vfio_create,
> -	.destroy = kvm_vfio_destroy,
> +	.release = kvm_vfio_release,
>   	.set_attr = kvm_vfio_set_attr,
>   	.has_attr = kvm_vfio_has_attr,
>   };
