Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC4A73FE30
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 16:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68F610E305;
	Tue, 27 Jun 2023 14:38:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA74610E632
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 12:50:51 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id
 d2e1a72fcca58-66c2d4e507aso73142b3a.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 05:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance.com; s=google; t=1687524651; x=1690116651;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3J6qedKH7rACUI+d8+QjoI1iru+7/a5M9lap7RdXq+s=;
 b=Q524DUGT6itGV4gw01qJj/zWbJLa4vy2WCXqnWOngK0C3q+dq5EKhIS0CVZv0oxxho
 LJ6tY9YfoIHNM/tflF8trZPv/Spx8OYgEAYGDhp6iajWSx+dfQpGCxtVSU4j+uchKR2K
 6jjaYk2avrTfJwxxTgNPxH+prD4PA2RYda//8FNhgDDbtNG8gCEmPUtJ+VXKPa4DXVej
 a5KLbc1PmFNVMjg9t+MjU8GHA1HEy3OLaOZU0A/n71b/fjkikDpbyETS6JPqwOfw6qlc
 81KayU6/lII4/pSrE7vPjFTNx81tmGljnxk2j498q4g7qxCoplXlCdPQ4N13nBnNs8tt
 8JpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687524651; x=1690116651;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3J6qedKH7rACUI+d8+QjoI1iru+7/a5M9lap7RdXq+s=;
 b=PMm4G2OjIf9f+tZ0FdfOnP1eFIijtsFubGV2IGcfLh1o5HY8wmJAlZz5orGmQM5NzQ
 xuJdX7UDbJzrtOUtdoZMfhg1u3LgOgBuK0Pzf0s9PPmEm16LJSpFyjS2Qc4HbKElmZaR
 J7+Xtfe6f+hCihJNxG/xictyftvsqB6DpTjml8sNNUHnJzeONjm52pAwHNJon+16WtCn
 a3x0Oc8KhzLdSAsVWn77TBHwo5GQ9LqDF5fyPjhP907D0TU1Ww+D4wvajLOAXGLJ83oE
 6i5GhpoNaAJYSFVjsLQMBY38H1vvx35HH0CZTu1bST1K3n3cJoD6xhn7D4L2R+htLzBn
 IG+Q==
X-Gm-Message-State: AC+VfDy5wHEa2rI7/ucf1VhVDGyfv9mwjOVpncZnuZ4TidS9uadmo/lg
 6/4nMdIzCTud2fLDcbq2epNvyhv1KKhN2bZ3wQE=
X-Google-Smtp-Source: ACHHUZ6Fjrszr4MOiG7PTx+CVGVeY59XJZwzJifNOvY5NLzJaatECslqahuGwHQe8HJSyn0Dmf/QQQ==
X-Received: by 2002:a05:6a00:3186:b0:668:7fe6:c220 with SMTP id
 bj6-20020a056a00318600b006687fe6c220mr14325912pfb.3.1687524651198; 
 Fri, 23 Jun 2023 05:50:51 -0700 (PDT)
Received: from [10.4.168.167] ([139.177.225.254])
 by smtp.gmail.com with ESMTPSA id
 x21-20020aa79195000000b0063a04905379sm6063171pfa.137.2023.06.23.05.50.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Jun 2023 05:50:50 -0700 (PDT)
Message-ID: <31d3f685-3017-25d8-5b0b-2795ed7049bc@bytedance.com>
Date: Fri, 23 Jun 2023 20:50:41 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.12.0
Content-Language: en-US
To: Vlastimil Babka <vbabka@suse.cz>, akpm@linux-foundation.org,
 david@fromorbit.com, tkhai@ya.ru, roman.gushchin@linux.dev,
 djwong@kernel.org, brauner@kernel.org, paulmck@kernel.org, tytso@mit.edu
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
 <20230622085335.77010-2-zhengqi.arch@bytedance.com>
 <b04a0191-fa27-f8dc-440c-ec363d9c0636@suse.cz>
From: Qi Zheng <zhengqi.arch@bytedance.com>
In-Reply-To: <b04a0191-fa27-f8dc-440c-ec363d9c0636@suse.cz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 27 Jun 2023 14:38:30 +0000
Subject: Re: [Intel-gfx] [External] Re: [PATCH 01/29] mm: shrinker: add
 shrinker::private_data field
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
Cc: linux-bcache@vger.kernel.org, linux-xfs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-raid@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 linux-fsdevel@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-btrfs@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Vlastimil,

On 2023/6/22 22:47, Vlastimil Babka wrote:
> On 6/22/23 10:53, Qi Zheng wrote:
>> To prepare for the dynamic allocation of shrinker instances
>> embedded in other structures, add a private_data field to
>> struct shrinker, so that we can use shrinker::private_data
>> to record and get the original embedded structure.
>>
>> Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
> 
> I would fold this to 02/29, less churn.

OK, I will fold this to 02/29 in the v2.

Thanks,
Qi

> 
>> ---
>>   include/linux/shrinker.h | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/include/linux/shrinker.h b/include/linux/shrinker.h
>> index 224293b2dd06..43e6fcabbf51 100644
>> --- a/include/linux/shrinker.h
>> +++ b/include/linux/shrinker.h
>> @@ -70,6 +70,8 @@ struct shrinker {
>>   	int seeks;	/* seeks to recreate an obj */
>>   	unsigned flags;
>>   
>> +	void *private_data;
>> +
>>   	/* These are for internal use */
>>   	struct list_head list;
>>   #ifdef CONFIG_MEMCG
> 
