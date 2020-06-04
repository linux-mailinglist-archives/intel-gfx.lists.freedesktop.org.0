Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EC21EE4F8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 15:07:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB8C16E372;
	Thu,  4 Jun 2020 13:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45D9F6E2B8;
 Thu,  4 Jun 2020 08:45:32 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9FA35AB0C11E63B23BD3;
 Thu,  4 Jun 2020 16:45:27 +0800 (CST)
Received: from [127.0.0.1] (10.67.102.197) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Thu, 4 Jun 2020
 16:45:21 +0800
To: Luis Chamberlain <mcgrof@kernel.org>, <keescook@chromium.org>,
 <yzaikin@google.com>, <ebiederm@xmission.com>, <axboe@kernel.dk>,
 <clemens@ladisch.de>, <arnd@arndb.de>, <gregkh@linuxfoundation.org>,
 <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <airlied@linux.ie>, <daniel@ffwll.ch>,
 <benh@kernel.crashing.org>, <rdna@fb.com>, <viro@zeniv.linux.org.uk>,
 <mark@fasheh.com>, <jlbec@evilplan.org>, <joseph.qi@linux.alibaba.com>,
 <vbabka@suse.cz>, <sfr@canb.auug.org.au>, <jack@suse.cz>,
 <amir73il@gmail.com>, <rafael@kernel.org>, <tytso@mit.edu>
References: <20200529074108.16928-1-mcgrof@kernel.org>
 <20200529074108.16928-14-mcgrof@kernel.org>
From: Xiaoming Ni <nixiaoming@huawei.com>
Message-ID: <6cbba430-a768-72db-bd45-bcbba0376219@huawei.com>
Date: Thu, 4 Jun 2020 16:45:20 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200529074108.16928-14-mcgrof@kernel.org>
X-Originating-IP: [10.67.102.197]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 04 Jun 2020 13:06:51 +0000
Subject: Re: [Intel-gfx] [PATCH 13/13] fs: move binfmt_misc sysctl to its
 own file
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
Cc: wangle6@huawei.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 julia.lawall@lip6.fr, alex.huangjianhui@huawei.com, laiyuanyuan.lai@huawei.com,
 akpm@linux-foundation.org, linuxppc-dev@lists.ozlabs.org,
 ocfs2-devel@oss.oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020/5/29 15:41, Luis Chamberlain wrote:
> This moves the binfmt_misc sysctl to its own file to help remove
> clutter from kernel/sysctl.c.
> 
> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>   fs/binfmt_misc.c | 1 +
>   kernel/sysctl.c  | 7 -------
>   2 files changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/fs/binfmt_misc.c b/fs/binfmt_misc.c
> index f69a043f562b..656b3f5f3bbf 100644
> --- a/fs/binfmt_misc.c
> +++ b/fs/binfmt_misc.c
> @@ -821,6 +821,7 @@ static int __init init_misc_binfmt(void)
>   	int err = register_filesystem(&bm_fs_type);
>   	if (!err)
>   		insert_binfmt(&misc_format);
> +	register_sysctl_empty_subdir("fs", "binfmt_misc");
>   	return err;
>   }
build error when CONFIG_BINFMT_MISC=m

ERROR: modpost: "register_sysctl_empty_subdir" [fs/binfmt_misc.ko] 
undefined!

diff --git a/kernel/sysctl.c b/kernel/sysctl.c
index 27f0c9ea..4129dfb 100644
--- a/kernel/sysctl.c
+++ b/kernel/sysctl.c
@@ -2853,6 +2853,7 @@ void register_sysctl_empty_subdir(const char *base,
  {
         register_sysctl_subdir(base, subdir, sysctl_mount_point);
  }
+EXPORT_SYMBOL_GPL(register_sysctl_empty_subdir);
  #endif /* CONFIG_SYSCTL */


Thanks
Xiaoming Ni


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
