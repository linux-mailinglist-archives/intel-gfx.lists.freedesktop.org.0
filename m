Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8160D3F023B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 13:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6B86E530;
	Wed, 18 Aug 2021 11:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B443B6E530
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 11:06:40 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id r7so2962362wrs.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 04:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=NPOr3Gsm++Jn+YbgaVuAdXWQs+lGHRq4aVwKxZvTaSw=;
 b=Gb+bX/DMqPhU/Gs13lF8AY1wqU95YsbV5W+CDvEpOSq0hnHYwwvnW6d/lNA9UADnZX
 09wq+/BL4admOxeXXY4T1RPPuMJyOhLwUN6623S+X/BbKTRUPVQ4UIq69HbzA1KcPZ+B
 Hjsq2uYLK6ZiY0UjkL8U9aT8QL0lkk0TXVXCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=NPOr3Gsm++Jn+YbgaVuAdXWQs+lGHRq4aVwKxZvTaSw=;
 b=R4WnARS9IxkiCaIcEq5/9yj5dX+i48DNlA/ynwwCaV5A++ibTTz0tm5qdUWGtEW1NK
 xZ3eu1XmKyYBm5G6BW9w5AEBEF3UT9ipZmIMO+O0MQu8BlX2Lf4Kerr3qPm8fiKkVNED
 +7PHKa9KN8I+XVnHMC5nWGNLWdeo/D0QfsUgRY4uOLq3li9dZ7OMBqLXfPz8cOOEVDlm
 of0Bdh7y0inItpBM+qRQnAOgGTo33XSXXe6cZMmpV++tGpHtnu+UycaBZCDit0tcsQJU
 yPE9p6e6nHFs7zMmputsUDZRs3bgjuGgjvrVjQ0rAV6oeyJE07XyK+iFOzY1rXC6jMSO
 Q3bw==
X-Gm-Message-State: AOAM5330d9MPph8Y0HayKS31nKFVUHrfvhgoHGTkEcKn3YILGXPIKr++
 kYaURhrx0v5pMMexoq964K5yGw==
X-Google-Smtp-Source: ABdhPJy3direa3AYQ9AORP/zJ+ru6FCIsPvkYBAl/d0IdWCjpdrItlf4YzM0hadmH90C6qm9MQnNjg==
X-Received: by 2002:adf:f282:: with SMTP id k2mr9819865wro.255.1629284799276; 
 Wed, 18 Aug 2021 04:06:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d8sm5575127wrx.12.2021.08.18.04.06.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 04:06:38 -0700 (PDT)
Date: Wed, 18 Aug 2021 13:06:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, daniel@ffwll.ch,
 sumit.semwal@linaro.org, christian.koenig@amd.com, axboe@kernel.dk,
 oleg@redhat.com, tglx@linutronix.de, dvyukov@google.com,
 walter-zh.wu@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 skhan@linuxfoundation.org, gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 kernel test robot <lkp@intel.com>
Message-ID: <YRzpvHBQuq0kFtzH@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, sumit.semwal@linaro.org,
 christian.koenig@amd.com, axboe@kernel.dk, oleg@redhat.com,
 tglx@linutronix.de, dvyukov@google.com, walter-zh.wu@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org,
 gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org,
 kernel test robot <lkp@intel.com>
References: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
 <20210818073824.1560124-9-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210818073824.1560124-9-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 8/9] kernel: export task_work_add
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

On Wed, Aug 18, 2021 at 03:38:23PM +0800, Desmond Cheong Zhi Xi wrote:
> The task_work_add function is needed to prevent userspace races with
> DRM modesetting rights.
> 
> Some DRM ioctls can change modesetting permissions while other
> concurrent users are performing modesetting. To prevent races with
> userspace, such functions should flush readers of old permissions
> before returning to user mode. As the function that changes
> permissions might itself be a reader of the old permissions, we intend
> to schedule this flush using task_work_add.
> 
> However, when DRM is compiled as a loadable kernel module without
> exporting task_work_add, we get the following compilation error:
> 
> ERROR: modpost: "task_work_add" [drivers/gpu/drm/drm.ko] undefined!
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>

Just realized another benefit of pushing the dev->master_rwsem write
locks down into ioctls that need them: We wouldn't need this function here
exported for use in drm. But also I'm not sure that works any better than
the design in your current patch set ...
-Daniel

> ---
>  kernel/task_work.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/kernel/task_work.c b/kernel/task_work.c
> index 1698fbe6f0e1..90000404af2b 100644
> --- a/kernel/task_work.c
> +++ b/kernel/task_work.c
> @@ -60,6 +60,7 @@ int task_work_add(struct task_struct *task, struct callback_head *work,
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL(task_work_add);
>  
>  /**
>   * task_work_cancel_match - cancel a pending work added by task_work_add()
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
