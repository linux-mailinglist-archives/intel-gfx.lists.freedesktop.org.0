Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 726A978F4B3
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 23:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE87A10E599;
	Thu, 31 Aug 2023 21:34:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C84310E59C
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 19:47:57 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-4fe15bfb1adso360406e87.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 12:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693424875; x=1694029675; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:subject:from:content-language
 :references:cc:to:user-agent:mime-version:date:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RQcM6QzSDrdw05zBYqyUQ1YoaP9zqQVZwczUVAgTjDI=;
 b=eZVJpy31od5fkofiTKzHFSRAxIrxiuefVNWC0SoZZ+GKvcngauMatipJMI6MOKYEOL
 0+u469LN9O0EftSMCqaIMwpPhqTEph51D62m3zQL3wbbWcrYq8ab8b5x25Nr7u7cg1a2
 Qmmgm97fdPqHeCj+ULLh8BHCAzjbCSR9qqyFuOYpIs9mNOmt23O6vCbKfcmUvj1Ok4+b
 b8Nf7Z3GVYy8uq8m82z+o4p0rF5DQH/RUSutav8GLpkn8AxrL1RRI/8MIcrimja1NAIy
 OIF9TINVvAljQisYIBdktojKPQeEdn+Pi0kNFXfSAE52dCbJw0xK2Ms71g+oGuTyiQEh
 K/tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693424875; x=1694029675;
 h=content-transfer-encoding:in-reply-to:subject:from:content-language
 :references:cc:to:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RQcM6QzSDrdw05zBYqyUQ1YoaP9zqQVZwczUVAgTjDI=;
 b=Yze8POv3HxVQpn9H//1qL8q+Uco5g6ZQJ82ZbG8mpf9AJ5YUM44DvhAqrMi6mB9g0K
 BJ6vetpNRVoMVj1Igg2OYoZtt/9l1aL2StlSO+jmSCg9Y7osWLq2lrqPBKpreB42CWAZ
 /VhRo8KalYOS6mbkUKY9dhQeWlUNPKLlMTAugvwymD2J4f1KW31gVZ9DTg4XzXoQQeGt
 CpO4d6fuL7kkUirzaQFvCwDzCZPZRmqtN+8W+PiGrCUAPguz8kT/4sMvcdho2BcbJwJw
 ZIT22EV1ogqwBGnGOzlFHijhBROunHxZc26PKHTwKEVuyja3eielUaEE7ybSOyXbFeMi
 bD9A==
X-Gm-Message-State: AOJu0YzerJ4b/nap9CekG+XBbBfKxHEx/S8dQ76QAqjgtSYpCq9aEFWX
 /H8yUqDjhyWYt3rgHa/9F7g1pre57Ec=
X-Google-Smtp-Source: AGHT+IEKTx5QIs7BavwcZ95zC6a1N2eVgZo+TpMoQFooW8DueLhLak8FN677a7iQrMuiBcy49cc70g==
X-Received: by 2002:a19:2d45:0:b0:500:96fc:129d with SMTP id
 t5-20020a192d45000000b0050096fc129dmr2048436lft.14.1693424874737; 
 Wed, 30 Aug 2023 12:47:54 -0700 (PDT)
Received: from ?IPV6:2a01:c23:b8a0:2d00:e558:bad6:b660:31e3?
 (dynamic-2a01-0c23-b8a0-2d00-e558-bad6-b660-31e3.c23.pool.telefonica.de.
 [2a01:c23:b8a0:2d00:e558:bad6:b660:31e3])
 by smtp.googlemail.com with ESMTPSA id
 e1-20020a1709062c0100b0099df2ddfc37sm7454502ejh.165.2023.08.30.12.47.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Aug 2023 12:47:54 -0700 (PDT)
Message-ID: <af18507c-8d22-f33d-a5b2-c59f6cf5058b@gmail.com>
Date: Wed, 30 Aug 2023 21:47:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: imre.deak@intel.com, Tejun Heo <tj@kernel.org>
References: <f7e21caa-e98d-e5b5-932a-fe12d27fde9b@gmail.com>
 <ZO-BkaGuVCgdr3wc@slm.duckdns.org> <ZO+Q0Oaw/1GkDx6T@ideak-desk.fi.intel.com>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <ZO+Q0Oaw/1GkDx6T@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 31 Aug 2023 21:33:53 +0000
Subject: Re: [Intel-gfx] WQ_UNBOUND warning since recent workqueue
 refactoring
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
Cc: intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 30.08.2023 20:56, Imre Deak wrote:
> On Wed, Aug 30, 2023 at 07:51:13AM -1000, Tejun Heo wrote:
> Hi,
> 
>> Hello,
>>
>> (cc'ing i915 folks)
>>
>> On Wed, Aug 30, 2023 at 04:57:42PM +0200, Heiner Kallweit wrote:
>>> Recently I started to see the following warning on linux-next and presumably
>>> this may be related to the refactoring of the workqueue core code.
>>>
>>> [   56.900223] workqueue: output_poll_execute [drm_kms_helper] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
>>> [   56.923226] workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 4 times, consider switching to WQ_UNBOUND
>>> [   97.860430] workqueue: output_poll_execute [drm_kms_helper] hogged CPU for >10000us 8 times, consider switching to WQ_UNBOUND
>>> [   97.884453] workqueue: i915_hpd_poll_init_work [i915] hogged CPU for >10000us 8 times, consider switching to WQ_UNBOUND
>>>
>>> Adding WQ_UNBOUND to these queues didn't change the behavior.
>>
>> That should have made them go away as the code path isn't active at all for
>> WQ_UNBOUND workqueues. Can you please double check?
>>

I tried the patch given below and double-checked. No change in behavior.

>>> Maybe relevant: I run the affected system headless.
>>
>> i915 folks, workqueue recently added debug warnings which trigger when a
>> per-cpu work item hogs the CPU for too long - 10ms in this case. This is
>> problematic because such work item can stall other per-cpu work items.
>>
>> * Is it expected for the above two work functions to occupy the CPU for over
>>   10ms repeatedly?
> 
> No, this shouldn't happen.
> 
> I assume it happens in
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> 
> after cfd48ad8c4a9 ("drm/i915: Fix HPD polling, reenabling the output poll work as needed")
> 
> which could result in the above problem.
> 
> Could you give a try to
> https://lore.kernel.org/all/20230809104307.1218058-1-imre.deak@intel.com/
> 
Didn't help

> and if that doesn't help provide more information/logs, by opening a
> ticket at:
> https://gitlab.freedesktop.org/drm/intel/-/issues/new
> 
> Thanks,
> Imre
> 
>> * If so, can we make them use an unbound workqueue instead?
>>
>> Thanks.
>>
>> -- 
>> tejun



diff --git a/drivers/gpu/drm/drm_probe_helper.c b/drivers/gpu/drm/drm_probe_helper.c
index 3f479483d..ac28b8d0f 100644
--- a/drivers/gpu/drm/drm_probe_helper.c
+++ b/drivers/gpu/drm/drm_probe_helper.c
@@ -279,7 +279,7 @@ static void reschedule_output_poll_work(struct drm_device *dev)
 		 */
 		delay = HZ;
 
-	schedule_delayed_work(&dev->mode_config.output_poll_work, delay);
+	queue_delayed_work(system_unbound_wq, &dev->mode_config.output_poll_work, delay);
 }
 
 /**
@@ -614,7 +614,7 @@ int drm_helper_probe_single_connector_modes(struct drm_connector *connector,
 		 */
 		dev->mode_config.delayed_event = true;
 		if (dev->mode_config.poll_enabled)
-			mod_delayed_work(system_wq,
+			mod_delayed_work(system_unbound_wq,
 					 &dev->mode_config.output_poll_work,
 					 0);
 	}
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ec4d26b3c..c0592b77b 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -138,7 +138,7 @@ static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 	 * to be scheduled on the system_wq before moving to a driver
 	 * instance due deprecation of flush_scheduled_work().
 	 */
-	dev_priv->unordered_wq = alloc_workqueue("i915-unordered", 0, 0);
+	dev_priv->unordered_wq = alloc_workqueue("i915-unordered", WQ_UNBOUND, 0);
 	if (dev_priv->unordered_wq == NULL)
 		goto out_free_dp_wq;
 
-- 
2.42.0


