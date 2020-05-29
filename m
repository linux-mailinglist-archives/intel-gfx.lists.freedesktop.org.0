Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB8B1E7F88
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 16:03:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5616E90A;
	Fri, 29 May 2020 14:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FF9A6E5B2;
 Fri, 29 May 2020 12:09:09 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E74388EB0A5E1AEFF5D3;
 Fri, 29 May 2020 20:09:04 +0800 (CST)
Received: from [127.0.0.1] (10.67.102.197) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Fri, 29 May 2020
 20:09:02 +0800
To: Greg KH <gregkh@linuxfoundation.org>, Luis Chamberlain <mcgrof@kernel.org>
References: <20200529074108.16928-1-mcgrof@kernel.org>
 <20200529074108.16928-12-mcgrof@kernel.org>
 <20200529102644.GB1345939@kroah.com>
From: Xiaoming Ni <nixiaoming@huawei.com>
Message-ID: <289b2d65-bf28-1246-7f4f-2411e3f27e16@huawei.com>
Date: Fri, 29 May 2020 20:09:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200529102644.GB1345939@kroah.com>
X-Originating-IP: [10.67.102.197]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 29 May 2020 14:03:34 +0000
Subject: Re: [Intel-gfx] [PATCH 11/13] random: simplify sysctl declaration
 with register_sysctl_subdir()
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
Cc: jack@suse.cz, rafael@kernel.org, airlied@linux.ie, benh@kernel.crashing.org,
 amir73il@gmail.com, clemens@ladisch.de, dri-devel@lists.freedesktop.org,
 joseph.qi@linux.alibaba.com, sfr@canb.auug.org.au, mark@fasheh.com,
 rdna@fb.com, yzaikin@google.com, keescook@chromium.org, arnd@arndb.de,
 intel-gfx@lists.freedesktop.org, julia.lawall@lip6.fr, jlbec@evilplan.org,
 vbabka@suse.cz, axboe@kernel.dk, tytso@mit.edu, linux-kernel@vger.kernel.org,
 ebiederm@xmission.com, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, ocfs2-devel@oss.oracle.com,
 viro@zeniv.linux.org.uk
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020/5/29 18:26, Greg KH wrote:
> On Fri, May 29, 2020 at 07:41:06AM +0000, Luis Chamberlain wrote:
>> From: Xiaoming Ni <nixiaoming@huawei.com>
>>
>> Move random_table sysctl from kernel/sysctl.c to drivers/char/random.c
>> and use register_sysctl_subdir() to help remove the clutter out of
>> kernel/sysctl.c.
>>
>> Signed-off-by: Xiaoming Ni <nixiaoming@huawei.com>
>> Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
>> ---
>>   drivers/char/random.c  | 14 ++++++++++++--
>>   include/linux/sysctl.h |  1 -
>>   kernel/sysctl.c        |  5 -----
>>   3 files changed, 12 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/char/random.c b/drivers/char/random.c
>> index a7cf6aa65908..73fd4b6e9c18 100644
>> --- a/drivers/char/random.c
>> +++ b/drivers/char/random.c
>> @@ -2101,8 +2101,7 @@ static int proc_do_entropy(struct ctl_table *table, int write,
>>   }
>>   
>>   static int sysctl_poolsize = INPUT_POOL_WORDS * 32;
>> -extern struct ctl_table random_table[];
>> -struct ctl_table random_table[] = {
>> +static struct ctl_table random_table[] = {
>>   	{
>>   		.procname	= "poolsize",
>>   		.data		= &sysctl_poolsize,
>> @@ -2164,6 +2163,17 @@ struct ctl_table random_table[] = {
>>   #endif
>>   	{ }
>>   };
>> +
>> +/*
>> + * rand_initialize() is called before sysctl_init(),
>> + * so we cannot call register_sysctl_init() in rand_initialize()
>> + */
>> +static int __init random_sysctls_init(void)
>> +{
>> +	register_sysctl_subdir("kernel", "random", random_table);
> 
> No error checking?
> 
> :(
It was my mistake, I forgot to add a comment here.
Same as the comment of register_sysctl_init(),
There is almost no failure here during the system initialization phase,
and failure in time does not affect the main function.

Thanks
Xiaoming Ni



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
