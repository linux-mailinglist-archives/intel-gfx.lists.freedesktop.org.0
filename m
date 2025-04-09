Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591CAA828B0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC60F10E916;
	Wed,  9 Apr 2025 14:51:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=metux.net header.i=lkml@metux.net header.b="dnJKp5Kr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 308 seconds by postgrey-1.36 at gabe;
 Wed, 09 Apr 2025 14:51:12 UTC
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0875210E916
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Apr 2025 14:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=metux.net;
 s=s1-ionos; t=1744210270; x=1744815070; i=lkml@metux.net;
 bh=s2wLn1c9XAp0AirAmPFlFH7YhhaAOnW7jlOWlor9N2c=;
 h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
 References:From:In-Reply-To:Content-Type:
 Content-Transfer-Encoding:cc:content-transfer-encoding:
 content-type:date:from:message-id:mime-version:reply-to:subject:
 to;
 b=dnJKp5Krp1ZkDIRg4LtuGOXK3AXi/diqdG+BL8enUVCkQFDjKdWIr7w4CdJdrRwQ
 gpsHwuECl9+KE3Uqt6Qur9V0TOPcbsbmur4KocpQXtrSRlHF+WPaAU8XUNM9rPHv+
 5IBa4BJyDstCLXyehTfX+vkK9xsV+JDlJ2ydtrheDEl5d4Xl9UuwXP1agBvXpzKLl
 0ruImPE7OH7WeLEA5iC19eBFPqVPKQQnWv0MWHPwQL/+4tOA+Z6VFx8otMhrEw0HD
 2vvZaPwrEzWkRvQBL+OoQa4K65yif8ac+WKGXy+OHJKC1r/iDdT+2rMsH8Ggw/vBV
 JqaKXazrCrSF1v1ObQ==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [192.168.1.132] ([77.2.135.41]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MS3zP-1te9Oz2J91-00VmZ9; Wed, 09 Apr 2025 16:46:02 +0200
Message-ID: <306f0187-bd88-411a-a8de-3871e14c3d93@metux.net>
Date: Wed, 9 Apr 2025 16:48:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/16] sna: use GCPtr instead of GC *
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-6-info@metux.net> <Z93iq-zXg30blvVT@intel.com>
Content-Language: tl
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
In-Reply-To: <Z93iq-zXg30blvVT@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:kwnt45FIAkk93KM6mCCpScoJ277tkQrjL+YLD43doGwH4DMW5Kg
 ajJHfOnvRu5drBb+QQxdPTIDGFhYtyHl0Jl9Btx8uUWLoVr676nrncY7HpkX08jcjki78Ln
 Ps71kIuZVjqK6gbi5hJlmxnFCtGsrkscLpXg9oIAZNNQoEYCC1DFPMO+4dxW9BSAMMumGTL
 Sh0YXMe4w5BqjPbNvOeHg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:O2rkdnHJdnE=;RMpLIRdfcqIOj5u/GW/zJMAppdI
 EW4/edhsHosuTWbKneMa/mqMITFdr2heEF3d/HfQh0MqTaUYdq81ydMFzLGSqWIdhSyCXrUWN
 UiceRvfC54dImSxD9RPkMEBVymfuIjl/Owi2JaF27t/+sNmDJLf+UaBEz1piglCPDopEYpZBZ
 YbFOaZHSk3JH9nLxo7BK4Qjd7zENeB502eeGcVHQkAEe5Tj6XCpxRGTn54UdJUeY9uAdxmb+m
 o5F+C1pRfTCzdect8Dra4qA5wnfCj1PLf8mcq7B2DFSdt5WBo1BUeh/kqcy1xegwVrXLRWjib
 RiveRvr+xd32X3Wt340BNpBzmIuaVhk/yPfEndSSNgh7H/Z62D+uiyQwfE9csaPoU8CtSy4k3
 zw4Yrw5c39zPRE3YjeFQOFNGyFSYiy+zQwKyrQZA2xuxeToz/gt75lT3AvhMYhmzszRsJpXa4
 e118onKuSqdTpSbMfr5wNgZnaNelLYASdTqQ4WyL14GSHU9FZJQvDHcIqur6xzyuCNXWMiJ1B
 fru2prHFIN+gYBFaTyG8OPdsGh1t65JgwTi5g2oprp0wQAvp0HpplveUNhojYmiIF5Ymom2H+
 lR0Hwip5FNdsIkCM+SwFqSNlR1fOAfqSWAcQGc0wKrRtnZbBEB/lBNJx5dVBoy/WruD+vell5
 kEtNGNR2O3jrV3CMLzSTGSNslojr8FS0+7v0/UMsqXhI4RVxvHQxKCL652/GEcDINdgALSdNc
 ECEf+LnDo5E7AxZT44aGZFGhFLjEjJZdcrvvkWpPiNSRsbVr1dcPkqB3/bEzhrQeDG1b7ueTr
 dTKplBn6jr2nXEEhgd6NQw0CDTboa0vkaqWZEgKn24OKqo2bBEIrvQtxTRNAGSQMFMbSoiq63
 Deiu+drFS0bF9GEN04hwpVj9wbfcWTGyzacA0TD4uxCbl6nLFBZt4hIfpAppdOdKL5j5f6+/f
 hr8UEs1wFhQPY9FzrgZ87GtYr4RXH6AdwhNNZXmoJAhnrze6S4eDYXGV8fo4eEEnGky66Jdoj
 Ea7XR5qdi0zFe7wtRjniY6VAoyKQiB9sskSbI5qaV96pg4FKaYyxtR+9rAb+1gITMDyZKziW/
 qlHUGOBYaghMtWqMjnSDuR6brLLJIxHBG4+Fk8+R9AhWp11bEjklfVyMmOg+k12m00P0/zPyX
 LQfGZQNyOO1o2pZryt+SdRIH6uwyu9bq53wk/zZ+K2zrtHIHRku/I4HYsPxb0i1xnApvBgDGN
 /wq0TTgJFOpZTW9CtIQjeI4IsqslLkNmHRFmUCkMppsXJeXOLhzcuF4JsWhUFgNE/M8e/QJtp
 IqfYcoavuQEKR8jA2aDf037t7YuTkzOI/33JbpZAra8uEmsKxugr9sxkHboYvM3nlbPaaWYXF
 AfEkz/gX/+/WLvAK6qVcrAguENPwA3300a/Ec=
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

On 21.03.25 23:05, Ville Syrj=C3=A4l=C3=A4 wrote:

>>   				       struct kgem_bo *bo,
>>   				       uint32_t br00, uint32_t br13,
>> -				       const GC *gc,
>> +				       const GCPtr gc,
>
> These two are not the same. One is a non-const pointer to a
> const GC, the other is a const pointer to a non-const GC.

Feel free to change it as you wish - we just need to change to GCPtr in
order to rename GC to GCRec, in order to get rid of some really ugly
hacks in Xnest (because Xlib also an entirely different type named "GC")

https://gitlab.freedesktop.org/xorg/xserver/-/merge_requests/1393




>
>>   				       const BoxRec *box,
>>   				       const DDXPointRec *origin)
>>   {
>> @@ -14412,7 +14412,7 @@ sna_poly_fill_rect_stippled_n_box(struct sna *s=
na,
>>   				  struct kgem_bo *bo,
>>   				  struct kgem_bo **tile,
>>   				  uint32_t br00, uint32_t br13,
>> -				  const GC *gc,
>> +				  const GCPtr gc,
>>   				  const BoxRec *box,
>>   				  const DDXPointRec *origin)
>>   {
>> --
>> 2.39.5
>

=2D-
=2D--
All racism is bad. All lives matter.
=2D--
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

