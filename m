Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD5E292898
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 15:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9AE6E9A0;
	Mon, 19 Oct 2020 13:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from manul.sfritsch.de (manul.sfritsch.de
 [IPv6:2a01:4f8:172:195f:112::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFD876E8DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 07:03:11 +0000 (UTC)
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Zhenyu Wang <zhenyuw@linux.intel.com>,
 Zhi Wang <zhi.a.wang@intel.com>
References: <20201016152340.15906-1-sf@sfritsch.de>
 <160308979457.4267.13628612734509793218@jlahtine-mobl.ger.corp.intel.com>
From: Stefan Fritsch <sf@sfritsch.de>
Message-ID: <6402f498-ed07-6b0c-eeed-df9db086b14c@sfritsch.de>
Date: Mon, 19 Oct 2020 09:03:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <160308979457.4267.13628612734509793218@jlahtine-mobl.ger.corp.intel.com>
Content-Language: de-DE
X-Mailman-Approved-At: Mon, 19 Oct 2020 13:50:27 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Rate limit 'Fault errors' message
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I think we should do both. Any log message that can be triggered 50 
times per second in practice should be rate limited. Also, the rate 
limiting is probably a candidate for backporting to stable kernels while 
the real fix may be not.

PS: See also my other mail about "drm/i915: Detecting Vt-d when running 
as guest os"

On 19.10.20 08:43, Joonas Lahtinen wrote:
> + Zhenyu & Zhi,
> 
> Should not we instead fix the reason why the errors happen instead of
> rate-limiting them?
> 
> Regards, Joonas
> 
> Quoting Stefan Fritsch (2020-10-16 18:23:40)
>> If linux is running as a guest and the host is doing igd pass-through
>> with VT-d enabled, this message is logged dozens of times per second.
>>
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Stefan Fritsch <sf@sfritsch.de>
>> ---
>>
>> The i915 driver should also detect VT-d in this case, but that is a
>> different issue.  I have sent a separate mail with subject 'Detecting
>> Vt-d when running as guest os'.
>>
>>
>>   drivers/gpu/drm/i915/i915_irq.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> index 759f523c6a6b..29096634e697 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -2337,7 +2337,7 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>>   
>>                  fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
>>                  if (fault_errors)
>> -                       drm_err(&dev_priv->drm,
>> +                       drm_err_ratelimited(&dev_priv->drm,
>>                                  "Fault errors on pipe %c: 0x%08x\n",
>>                                  pipe_name(pipe),
>>                                  fault_errors);
>> -- 
>> 2.28.0
>>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
