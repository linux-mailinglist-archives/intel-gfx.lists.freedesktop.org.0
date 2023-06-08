Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5247281DB
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 15:54:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F7010E196;
	Thu,  8 Jun 2023 13:54:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 523FD10E196
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 13:54:12 +0000 (UTC)
Received: from fsav111.sakura.ne.jp (fsav111.sakura.ne.jp [27.133.134.238])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 358Ds0Ua068246;
 Thu, 8 Jun 2023 22:54:00 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav111.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav111.sakura.ne.jp);
 Thu, 08 Jun 2023 22:54:00 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav111.sakura.ne.jp)
Received: from [192.168.1.6] (M106072142033.v4.enabler.ne.jp [106.72.142.33])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 358DrxqM068243
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 8 Jun 2023 22:53:59 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Message-ID: <25ec2d8e-0e5f-d092-aa1c-41970ee2b93a@I-love.SAKURA.ne.jp>
Date: Thu, 8 Jun 2023 22:54:01 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1686231190.git.jani.nikula@intel.com>
 <313f4a713053c2b4896ced5b0e9ff456eb85fe57.1686231190.git.jani.nikula@intel.com>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
In-Reply-To: <313f4a713053c2b4896ced5b0e9ff456eb85fe57.1686231190.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915/selftests: add local
 workqueue for SW fence selftest
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
Cc: luciano.coelho@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023/06/08 22:35, Jani Nikula wrote:
> From: Luca Coelho <luciano.coelho@intel.com>
> 
> Instead of using a global workqueue for the SW fence selftest,
> allocate a separate one temporarily only while running the test.
> 
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

This patch will conflict with 
https://patchwork.freedesktop.org/patch/538384/?series=114608&rev=6 .

What should we do?

> @@ -540,7 +547,7 @@ static int test_ipc(void *arg)
>  
>  	ipc.value = 0;
>  	INIT_WORK_ONSTACK(&ipc.work, task_ipc);
> -	schedule_work(&ipc.work);
> +	queue_work(wq, &ipc.work);
>  
>  	wait_for_completion(&ipc.started);
>  

