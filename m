Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17BF46DF96E
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 17:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1677610E86B;
	Wed, 12 Apr 2023 15:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2FD810E860;
 Wed, 12 Apr 2023 15:12:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681312371; x=1712848371;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=x10ivT5rZHjB7u+rJn5L2DzCTA6oazecYo3P5OVb5Gg=;
 b=HglPaBlKTDVIUY6P0NhCXstq2c1xYz3Z+H9HArf0zGltEv+oI+ioqhsS
 KTDh1MW0kiVkenmuUFO060IvvxcLAyL+6jkmoWFQdoquAku9lzw/zvn40
 jLcQe3N9jKwHjDggyO5zlmGrjB4Gx8x+M/IhYbGpMoEdCVeKsA8fcDN5a
 zsABNaYeru/OiPkng+/JfiebsHUNvStnmu+DiPdL4al6pwxnH0in22xUP
 xnnZpOmAviBL2ag8YXfcKOGKm7SwNwFFlHulkLlAIMzzwSfhb7pkaNyYB
 vCQ0ePH9EBtY8JHxtbj3fJpkTrd+LdVAwF6KZsfSFF5dmfe6HUgoNPtwz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="341419777"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="341419777"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 08:12:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="682501720"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="682501720"
Received: from amurkovx-mobl.ger.corp.intel.com (HELO [10.213.229.123])
 ([10.213.229.123])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 08:12:43 -0700
Message-ID: <625477ba-2f98-4137-7c96-dc54990c6963@linux.intel.com>
Date: Wed, 12 Apr 2023 16:12:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Christopher Healy <healych@amazon.com>,
 Emil Velikov <emil.l.velikov@gmail.com>, Rob Clark <robdclark@chromium.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>
References: <20230411225725.2032862-1-robdclark@gmail.com>
 <20230411225725.2032862-5-robdclark@gmail.com>
 <292d10fe-3163-d282-6497-18c1d8621d72@linux.intel.com>
 <ZDa3U/k9orudzwL2@phenom.ffwll.local>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZDa3U/k9orudzwL2@phenom.ffwll.local>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 4/7] drm/i915: Switch to fdinfo helper
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


On 12/04/2023 14:51, Daniel Vetter wrote:
> On Wed, Apr 12, 2023 at 01:32:43PM +0100, Tvrtko Ursulin wrote:
>>
>> On 11/04/2023 23:56, Rob Clark wrote:
>>> From: Rob Clark <robdclark@chromium.org>
>>>
>>> Signed-off-by: Rob Clark <robdclark@chromium.org>
>>> ---
>>>    drivers/gpu/drm/i915/i915_driver.c     |  3 ++-
>>>    drivers/gpu/drm/i915/i915_drm_client.c | 18 +++++-------------
>>>    drivers/gpu/drm/i915/i915_drm_client.h |  2 +-
>>>    3 files changed, 8 insertions(+), 15 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>>> index db7a86def7e2..37eacaa3064b 100644
>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>> @@ -1696,7 +1696,7 @@ static const struct file_operations i915_driver_fops = {
>>>    	.compat_ioctl = i915_ioc32_compat_ioctl,
>>>    	.llseek = noop_llseek,
>>>    #ifdef CONFIG_PROC_FS
>>> -	.show_fdinfo = i915_drm_client_fdinfo,
>>> +	.show_fdinfo = drm_fop_show_fdinfo,
>>>    #endif
>>>    };
>>> @@ -1796,6 +1796,7 @@ static const struct drm_driver i915_drm_driver = {
>>>    	.open = i915_driver_open,
>>>    	.lastclose = i915_driver_lastclose,
>>>    	.postclose = i915_driver_postclose,
>>> +	.show_fdinfo = i915_drm_client_fdinfo,
>>>    	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
>>>    	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
>>> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
>>> index b09d1d386574..4a77e5e47f79 100644
>>> --- a/drivers/gpu/drm/i915/i915_drm_client.c
>>> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
>>> @@ -101,7 +101,7 @@ static u64 busy_add(struct i915_gem_context *ctx, unsigned int class)
>>>    }
>>>    static void
>>> -show_client_class(struct seq_file *m,
>>> +show_client_class(struct drm_printer *p,
>>>    		  struct i915_drm_client *client,
>>>    		  unsigned int class)
>>>    {
>>> @@ -117,22 +117,20 @@ show_client_class(struct seq_file *m,
>>>    	rcu_read_unlock();
>>>    	if (capacity)
>>> -		seq_printf(m, "drm-engine-%s:\t%llu ns\n",
>>> +		drm_printf(p, "drm-engine-%s:\t%llu ns\n",
>>>    			   uabi_class_names[class], total);
>>>    	if (capacity > 1)
>>> -		seq_printf(m, "drm-engine-capacity-%s:\t%u\n",
>>> +		drm_printf(p, "drm-engine-capacity-%s:\t%u\n",
>>>    			   uabi_class_names[class],
>>>    			   capacity);
>>>    }
>>> -void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
>>> +void i915_drm_client_fdinfo(struct drm_printer *p, struct drm_file *file)
>>>    {
>>> -	struct drm_file *file = f->private_data;
>>>    	struct drm_i915_file_private *file_priv = file->driver_priv;
>>>    	struct drm_i915_private *i915 = file_priv->dev_priv;
>>>    	struct i915_drm_client *client = file_priv->client;
>>> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>>>    	unsigned int i;
>>>    	/*
>>> @@ -141,12 +139,6 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
>>>    	 * ******************************************************************
>>>    	 */
>>> -	seq_printf(m, "drm-driver:\t%s\n", i915->drm.driver->name);
>>> -	seq_printf(m, "drm-pdev:\t%04x:%02x:%02x.%d\n",
>>> -		   pci_domain_nr(pdev->bus), pdev->bus->number,
>>> -		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
>>> -	seq_printf(m, "drm-client-id:\t%u\n", client->id);
>>
>> As mentioned in my reply to the cover letter, I think the i915
>> implementation is the right one. At least the semantics of it.
>>
>> Granted it is a super set of the minimum required as documented by
>> drm-usage-stats.rst - not only 1:1 to current instances of struct file, but
>> also avoids immediate id recycling.
>>
>> Former could perhaps be achieved with a simple pointer hash, but latter
>> helps userspace detect when a client has exited and id re-allocated to a new
>> client within a single scanning period.
>>
>> Without this I don't think userspace can implement a fail safe method of
>> detecting which clients are new ones and so wouldn't be able to track
>> history correctly.
>>
>> I think we should rather extend the documented contract to include the
>> cyclical property than settle for a weaker common implementation.
> 
> atomic64_t never wraps, so you don't have any recycling issues?

Okay yes, with 64 bits there aren't any practical recycling issues.

> The other piece and imo much more important is that I really don't want
> the i915_drm_client design to spread, it conceptually makes no sense.
> drm_file is the uapi object, once that's gone userspace will never be able
> to look at anything, having a separate free-standing object that's
> essentially always dead is backwards.
> 
> I went a bit more in-depth in a different thread on scheduler fd_info
> stats, but essentially fd_info needs to pull stats, you should never push
> stats towards the drm_file (or i915_drm_client). That avoids all the
> refcounting issues and rcu needs and everything else like that.
> 
> Maybe you want to jump into that thread:
> https://lore.kernel.org/dri-devel/CAKMK7uE=m3sSTQrLCeDg0vG8viODOecUsYDK1oC++f5pQi0e8Q@mail.gmail.com/
> 
> So retiring i915_drm_client infrastructure is the right direction I think.

Hmmm.. it is a _mostly_ pull model that we have in i915 ie. data is 
pulled on fdinfo queries.

_Mostly_ because it cannot be fully pull based when you look at some 
internal flows. We have to save some data at runtime at times not driven 
by the fdinfo queries.

For instance context close needs to record the GPU utilisation against 
the client so that it is not lost. Also in the execlists backend we must 
transfer the hardware tracked runtime into the software state when hw 
contexts are switched out.

The fact i915_drm_client is detached from file_priv is a consequence of 
the fact i915 GEM contexts can outlive drm_file, and that when such 
contexts are closed, we need a to record their runtimes.

So I think there are three options: how it is now, fully krefed 
drm_file, or prohibit persistent contexts. Last one don't think we can 
do due ABI and 2nd felt heavy handed so I choose a lightweight 
i915_drm_client option.

Maybe there is a fourth option of somehow detecting during context 
destruction that drm_file is gone and skip the runtime recording, but 
avoiding races and all did not make me want to entertain it much. Is 
this actually what you are proposing?

Regards,

Tvrtko
