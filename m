Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B411376A00
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 20:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 040816E235;
	Fri,  7 May 2021 18:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-m176238.qiye.163.com (mail-m176238.qiye.163.com
 [59.111.176.238])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 270716EDC7;
 Fri,  7 May 2021 07:35:41 +0000 (UTC)
Received: from vivo.com (localhost [127.0.0.1])
 by mail-m176238.qiye.163.com (Hmail) with ESMTP id 45985F60165;
 Fri,  7 May 2021 15:35:06 +0800 (CST)
Message-ID: <AL2APQB8DsrABpe7MxMMyqq4.3.1620372906272.Hmail.bernard@vivo.com>
To: Daniel Vetter <daniel@ffwll.ch>
X-Priority: 3
X-Mailer: HMail Webmail Server V2.0 Copyright (c) 2016-163.com
X-Originating-IP: 36.152.145.181
In-Reply-To: <YIxBfNnwA/7nEenj@phenom.ffwll.local>
MIME-Version: 1.0
Received: from bernard@vivo.com( [36.152.145.181) ] by ajax-webmail (
 [127.0.0.1] ) ; Fri, 7 May 2021 15:35:06 +0800 (GMT+08:00)
From: Bernard <bernard@vivo.com>
Date: Fri, 7 May 2021 15:35:06 +0800 (GMT+08:00)
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZS1VLWVdZKFlBSE83V1ktWUFJV1kPCR
 oVCBIfWUFZGUodGVZCTkxIHUgYSExLTk5VEwETFhoSFyQUDg9ZV1kWGg8SFR0UWUFZT0tIVUpKS0
 hKQ1VLWQY+
X-HM-Sender-Digest: e1kJHlYWEh9ZQU1ISU1MTk9MSk5NN1dZDB4ZWUEPCQ4eV1kSHx4VD1lB
 WUc6N0k6Kyo5Qz8ICTo5Cx5MNgM2NgIKCk9VSFVKTUlLSExJQktNTkNKVTMWGhIXVRkeCRUaCR87
 DRINFFUYFBZFWVdZEgtZQVlITVVKTklVSk9OVUpDSllXWQgBWUFDTkhMNwY+
X-HM-Tid: 0a7945c06134d9b0kuws45985f60165
X-Mailman-Approved-At: Fri, 07 May 2021 18:27:02 +0000
Subject: Re: [Intel-gfx] 
 =?utf-8?q?=5BPATCH=5D_drm/i915=3A_Use_might=5Falloc?=
 =?utf-8?b?KCk=?=
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
Cc: kbuild-all@lists.01.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


From: Daniel Vetter <daniel@ffwll.ch>
Date: 2021-05-01 01:42:20
To:  kernel test robot <lkp@intel.com>
Cc:  Bernard Zhao <bernard@vivo.com>,Jani Nikula <jani.nikula@linux.intel.com>,Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,Rodrigo Vivi <rodrigo.vivi@intel.com>,David Airlie <airlied@linux.ie>,Daniel Vetter <daniel@ffwll.ch>,intel-gfx@lists.freedesktop.org,dri-devel@lists.freedesktop.org,linux-kernel@vger.kernel.org,kbuild-all@lists.01.org
Subject: Re: [PATCH] drm/i915: Use might_alloc()>On Fri, Apr 30, 2021 at 12:31:27AM +0800, kernel test robot wrote:
>> Hi Bernard,
>> 
>> Thank you for the patch! Yet something to improve:
>> 
>> [auto build test ERROR on drm-intel/for-linux-next]
>> [also build test ERROR on v5.12 next-20210429]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>> 
>> url:    https://github.com/0day-ci/linux/commits/Bernard-Zhao/drm-i915-Use-might_alloc/20210429-104516
>> base:   git://anongit.freedesktop.org/drm-intel for-linux-next
>> config: x86_64-rhel-8.3-kselftests (attached as .config)
>> compiler: gcc-9 (Debian 9.3.0-22) 9.3.0
>> reproduce (this is a W=1 build):
>>         # https://github.com/0day-ci/linux/commit/9fbd0c1741ce06241105d753ff3432ab55f3e94a
>>         git remote add linux-review https://github.com/0day-ci/linux
>>         git fetch --no-tags linux-review Bernard-Zhao/drm-i915-Use-might_alloc/20210429-104516
>>         git checkout 9fbd0c1741ce06241105d753ff3432ab55f3e94a
>>         # save the attached .config to linux build tree
>>         make W=1 W=1 ARCH=x86_64 
>> 
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>> 
>> All errors (new ones prefixed by >>):
>> 
>>    drivers/gpu/drm/i915/i915_sw_fence.c: In function '__i915_sw_fence_await_sw_fence':
>> >> drivers/gpu/drm/i915/i915_sw_fence.c:344:2: error: implicit declaration of function 'might_alloc'; did you mean 'might_lock'? [-Werror=implicit-function-declaration]
>>      344 |  might_alloc(gfp);
>>          |  ^~~~~~~~~~~
>>          |  might_lock
>>    cc1: some warnings being treated as errors
>
>I think you're missing an include or something. The other patch you've
>done seems good, I queued that up in drm-intel-gt-next for 5.14.
>
>Thanks, Daniel

Hi
It looks like I did not include the header file <linux/sched/mm.h>
I will resubmit one patch, thanks!
BR//Bernard

>> 
>> 
>> vim +344 drivers/gpu/drm/i915/i915_sw_fence.c
>> 
>>    335	
>>    336	static int __i915_sw_fence_await_sw_fence(struct i915_sw_fence *fence,
>>    337						  struct i915_sw_fence *signaler,
>>    338						  wait_queue_entry_t *wq, gfp_t gfp)
>>    339	{
>>    340		unsigned int pending;
>>    341		unsigned long flags;
>>    342	
>>    343		debug_fence_assert(fence);
>>  > 344		might_alloc(gfp);
>>    345	
>>    346		if (i915_sw_fence_done(signaler)) {
>>    347			i915_sw_fence_set_error_once(fence, signaler->error);
>>    348			return 0;
>>    349		}
>>    350	
>>    351		debug_fence_assert(signaler);
>>    352	
>>    353		/* The dependency graph must be acyclic. */
>>    354		if (unlikely(i915_sw_fence_check_if_after(fence, signaler)))
>>    355			return -EINVAL;
>>    356	
>>    357		pending = I915_SW_FENCE_FLAG_FENCE;
>>    358		if (!wq) {
>>    359			wq = kmalloc(sizeof(*wq), gfp);
>>    360			if (!wq) {
>>    361				if (!gfpflags_allow_blocking(gfp))
>>    362					return -ENOMEM;
>>    363	
>>    364				i915_sw_fence_wait(signaler);
>>    365				i915_sw_fence_set_error_once(fence, signaler->error);
>>    366				return 0;
>>    367			}
>>    368	
>>    369			pending |= I915_SW_FENCE_FLAG_ALLOC;
>>    370		}
>>    371	
>>    372		INIT_LIST_HEAD(&wq->entry);
>>    373		wq->flags = pending;
>>    374		wq->func = i915_sw_fence_wake;
>>    375		wq->private = fence;
>>    376	
>>    377		i915_sw_fence_await(fence);
>>    378	
>>    379		spin_lock_irqsave(&signaler->wait.lock, flags);
>>    380		if (likely(!i915_sw_fence_done(signaler))) {
>>    381			__add_wait_queue_entry_tail(&signaler->wait, wq);
>>    382			pending = 1;
>>    383		} else {
>>    384			i915_sw_fence_wake(wq, 0, signaler->error, NULL);
>>    385			pending = 0;
>>    386		}
>>    387		spin_unlock_irqrestore(&signaler->wait.lock, flags);
>>    388	
>>    389		return pending;
>>    390	}
>>    391	
>> 
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
>
>-- 
>Daniel Vetter
>Software Engineer, Intel Corporation
>http://blog.ffwll.ch


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
