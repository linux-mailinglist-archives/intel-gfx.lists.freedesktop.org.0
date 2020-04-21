Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BC71B2378
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 11:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4F5E6E8FD;
	Tue, 21 Apr 2020 09:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A01926E8FD
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 09:59:19 +0000 (UTC)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 03L9x6Ov001698
 (version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 21 Apr 2020 02:59:06 -0700 (PDT)
Received: from [128.224.162.157] (128.224.162.157) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0;
 Tue, 21 Apr 2020 02:59:05 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, <intel-gfx@lists.freedesktop.org>
References: <20200421084128.36839-1-liwei.song@windriver.com>
 <158746135414.19285.11110388744126468886@build.alporthouse.com>
From: Liwei Song <liwei.song@windriver.com>
Message-ID: <c151481d-ac3f-4bd5-af8c-201dc6123f49@windriver.com>
Date: Tue, 21 Apr 2020 17:59:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:76.0) Gecko/20100101
 Thunderbird/76.0
MIME-Version: 1.0
In-Reply-To: <158746135414.19285.11110388744126468886@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel v4] Sync i915_pciids upto
 8717c6b7414f
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



On 4/21/20 17:29, Chris Wilson wrote:
> Quoting Liwei Song (2020-04-21 09:41:28)
>> +static const struct intel_device_info intel_cannonlake_info = {
>> +       .gen = 0115,
> .gen = 0120 /* 10 */
> 
>> +};
>> +
>> +static const struct intel_device_info intel_icelake_info = {
>> +       .gen = 0116,
> .gen = 0130 /* 11 */
> 
>> +};
>> +
>> +static const struct intel_device_info intel_elkhartlake_info = {
>> +       .gen = 0117,
> .gen = 0131
> 
>> +};
>> +
>> +static const struct intel_device_info intel_tigerlake_info = {
>> +       .gen = 0120,
> .gen = 0140 /* 12 */
> 
> You definitely do not want to feed them through the gen9 assembler.

Thanks, will modify it in v5, but could you explain more here how we
decide the gen number, I really do not have too much knowledge here,
I use to think it is an increasing number like some other definition.

Thanks,
Liwei.


> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
